local utils = require("flutter-tools.utils")
local ui = require("flutter-tools.ui")
local executable = require("flutter-tools.executable")
---@type Job
local Job = require("plenary.job")

local M = {}
local fn = vim.fn

---@type Job?
local job = nil

---@type number?
local devtools_pid = nil

---@type string?
local devtools_url = nil

---@type string?
local profiler_url = nil

--- Url containing the app url and the devtools server url
---@type string?
local devtools_profiler_url = nil

local activate_cmd = { "pub", "global", "activate", "devtools" }

-- Android when flutter run starts a new devtools process
-- Flutter DevTools, a Flutter debugger and profiler, on sdk gphone x86 arm is available at: http://127.0.0.1:9102?uri=http%3A%2F%2F127.0.0.1%3A46051%2FNvCev-HjyX4%3D%2F
local function try_get_tools_flutter(data)
  return data:match("Flutter DevTools, a Flutter debugger and profiler, on .+ is available at:%s(https?://127%.0%.0%.1:%d+%?uri=.+)$")
end

--- Debug service listening on ws://127.0.0.1:44293/heXbxLM_lhM=/ws
--- An Observatory debugger and profiler on sdk gphone x86 arm is available at: http://127.0.0.1:46051/NvCev-HjyX4=/
---@param data string
---@return string?
local function try_get_profiler_url(data)
  return data:match("An Observatory debugger and profiler on .+ is available at:%s(https?://127%.0%.0%.1:%d+/.+/)$")
    or data:match("Debug service listening on (ws%:%/%/127%.0%.0%.1%:%d+/.+/ws)$")
end

function M.handle_log(data)
  if devtools_profiler_url or (profiler_url and devtools_url) then
    return
  end

  devtools_profiler_url = try_get_tools_flutter(data)

  if devtools_profiler_url then
    ui.notify({ "Detected devtools url", "Execute FlutterCopyProfilerUrl to copy it" })
    return
  end

  if profiler_url then
    return
  end

  profiler_url = try_get_profiler_url(data)

  if profiler_url then
    local autostart = require("flutter-tools.config").get("dev_tools").autostart
    if autostart then
      M.start()
    end
  end
end

--[[ {
    event = "server.started",
    method = "server.started",
    params = {
        host = "127.0.0.1",
        pid = 3407971,
        port = 9100,
        protocolVersion = "1.1.0"
    }
}]]
---Open dev tools
---@param _ number
---@param data string
---@param __ Job
local function handle_start(_, data, __)
  if #data > 0 then
    local json = fn.json_decode(data)
    if json and json.params then
      devtools_pid = json.params.pid
      devtools_url = string.format("http://%s:%s", json.params.host, json.params.port)
      local msg = string.format("Serving DevTools at %s", devtools_url)
      ui.notify({ msg }, 20000)
    end
  end
end

---Handler errors whilst opening dev tools
---@param _ number
---@param data string
---@param __ Job
local function handle_error(_, data, __)
  for _, str in ipairs(data) do
    if str:match("No active package devtools") then
      executable.flutter(function(cmd)
        ui.notify({
          "Flutter pub global devtools has not been activated.",
          "Run " .. cmd .. table.concat(activate_cmd, " ") .. " to activate it.",
        })
      end)
    else
      ui.notify({ "Sorry! devtools couldn't be opened", unpack(data) })
    end
  end
end

--- @return boolean
local function can_start()
  return not job and not devtools_url and not devtools_profiler_url
end

function M.start()
  if can_start() then
    ui.notify({ "Starting dev tools..." })
    executable.flutter(function(cmd)
      job = Job:new({
        command = cmd,
        args = {
          "pub",
          "global",
          "run",
          "devtools",
          "--machine",
          "--try-ports",
          "10",
        },
        on_stdout = vim.schedule_wrap(handle_start),
        on_stderr = vim.schedule_wrap(handle_error),
        on_exit = vim.schedule_wrap(function()
          job = nil
          ui.notify({ "Dev tools closed" })
        end),
      })

      job:start()
    end)
  else
    utils.echomsg("DevTools are already running!")
  end
end

function M.stop()
  if devtools_pid then
    local uv = vim.loop
    uv.kill(devtools_pid, uv.constants.SIGTERM)
    devtools_pid = nil
    devtools_url = nil
  end
end

---@return string devtools_url @see devtools_url
function M.get_url()
  return devtools_url
end

---@return boolean
function M.is_running()
  return devtools_profiler_url ~= nil or devtools_url ~= nil
end

---@return string? devtools_profiler_url the url including the devtools url and the app url. Follows the format `devtools_url/?uri=app_url`
---@return boolean? server_running true if there is a `devtools_url` available but couldn't build the url
function M.get_profiler_url()
  if devtools_profiler_url then
    return devtools_profiler_url
  elseif devtools_url and profiler_url then
    return string.format("%s/?uri=%s", devtools_url, profiler_url)
  else
    return nil, devtools_url ~= nil
  end
end

function M.on_flutter_shutdown()
  profiler_url = nil
  devtools_profiler_url = nil
end

return M
