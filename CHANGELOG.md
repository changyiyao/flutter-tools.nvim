# Changelog

## [2.0.0](https://github.com/changyiyao/flutter-tools.nvim/compare/v1.3.0...v2.0.0) (2023-08-08)


### ⚠ BREAKING CHANGES

* **lsp:** remove deprecated lsp start method
* rename setup file to minimal_init.lua
* **ui:** replace (some) custom ui with `vim.ui.*` ([#221](https://github.com/changyiyao/flutter-tools.nvim/issues/221))
* **ui:** change vim.notify function signature ([#210](https://github.com/changyiyao/flutter-tools.nvim/issues/210))
* **setup:** refactor autocommands
* **setup:** convert commands to use 0.7 apis

### Features

* add (statusline) decorations ([#76](https://github.com/changyiyao/flutter-tools.nvim/issues/76)) ([692846c](https://github.com/changyiyao/flutter-tools.nvim/commit/692846c228347dd7c5cab20941bcc6510ac13db5))
* add [WIP] outline guides ([da85225](https://github.com/changyiyao/flutter-tools.nvim/commit/da85225b77412df27bfea512d15baa2026b7fefc))
* add ability to disable/enable ([d37e1c7](https://github.com/changyiyao/flutter-tools.nvim/commit/d37e1c7d2b8dccf05ea97d593fde6f0253b0de63))
* add command to clear dev log ([ba13479](https://github.com/changyiyao/flutter-tools.nvim/commit/ba134799e7d43360598dff8b830a77429f6a7503))
* add commandline args for run command ([#71](https://github.com/changyiyao/flutter-tools.nvim/issues/71)) ([214016b](https://github.com/changyiyao/flutter-tools.nvim/commit/214016bdfc0d97ed6f9ab443746af1ee9c08a853))
* add dart icon to notifications ([79caafb](https://github.com/changyiyao/flutter-tools.nvim/commit/79caafbefab82fc139f9ac9d2983efb3fd04c066))
* add error handling for dev tools ([f73098e](https://github.com/changyiyao/flutter-tools.nvim/commit/f73098ece60c93fcac07eaed6253f184c07091ee))
* add flutter detach command ([#113](https://github.com/changyiyao/flutter-tools.nvim/issues/113)) ([20518be](https://github.com/changyiyao/flutter-tools.nvim/commit/20518beb244c59214b58cfde3358d0124f554671))
* add flutter pub get command ([9ecdc96](https://github.com/changyiyao/flutter-tools.nvim/commit/9ecdc965b24d6d9e3e22f0f899362ef5cf9d5c53))
* add FlutterRename command ([#234](https://github.com/changyiyao/flutter-tools.nvim/issues/234)) ([4d9391b](https://github.com/changyiyao/flutter-tools.nvim/commit/4d9391b5c217003666d4ffb4db665ad30362a959))
* add handler for textDocument/documentColor ([#125](https://github.com/changyiyao/flutter-tools.nvim/issues/125)) ([3283a31](https://github.com/changyiyao/flutter-tools.nvim/commit/3283a31c004a27f2290f95a85555e168141eada7))
* add highlight configurability ([8ca1772](https://github.com/changyiyao/flutter-tools.nvim/commit/8ca17725ba4df8b1bdcb9a3aff20e6eb81a5ccc2))
* add highlight groups for popup windows ([6a599fa](https://github.com/changyiyao/flutter-tools.nvim/commit/6a599fa4308d252be97a542f510f7e7f5e966682)), closes [#66](https://github.com/changyiyao/flutter-tools.nvim/issues/66)
* add notification when command executed ([b2ec03b](https://github.com/changyiyao/flutter-tools.nvim/commit/b2ec03b1d537df7d68f622ca1ce8410ee2861131))
* Add outline CodeActions support ([#31](https://github.com/changyiyao/flutter-tools.nvim/issues/31)) ([415604b](https://github.com/changyiyao/flutter-tools.nvim/commit/415604bd9aba1bb149cedc9a6831ff9af2019383))
* add telescope picker for commands ([95318db](https://github.com/changyiyao/flutter-tools.nvim/commit/95318db56418c728a7930d49f6ea5b124585d142))
* add type annotations to job class ([884a310](https://github.com/changyiyao/flutter-tools.nvim/commit/884a31006e3d62940f3077a619d9d130708e51b9))
* allow completely custom lsp command ([791b57e](https://github.com/changyiyao/flutter-tools.nvim/commit/791b57ee7e1b881d2d58e966b1250de5c601978a))
* allow specifying border styles ([6d5a770](https://github.com/changyiyao/flutter-tools.nvim/commit/6d5a770a5f08ebf243494bfb03b0bb8c176228ba))
* allow specifying lsp setting as a function ([b374c70](https://github.com/changyiyao/flutter-tools.nvim/commit/b374c707f1c3143099e6ef3c751885bf5bbba9e1))
* autoscroll the dev log when it changes ([ceffdc8](https://github.com/changyiyao/flutter-tools.nvim/commit/ceffdc810b93247cabc25387593509f67a69215b))
* capture markers per line ([34ca0e0](https://github.com/changyiyao/flutter-tools.nvim/commit/34ca0e08758d3bcbebf679ac2e39af7ff6dadcad))
* **closing tags:** add option to disable ([058443d](https://github.com/changyiyao/flutter-tools.nvim/commit/058443dd21e92e73c9244cee408b708274ae17eb)), closes [#36](https://github.com/changyiyao/flutter-tools.nvim/issues/36)
* **code_actions:** fix telescope picker ([beb3f20](https://github.com/changyiyao/flutter-tools.nvim/commit/beb3f2094a3b9ac5db8c58298ec3eead17bdbafe)), closes [#225](https://github.com/changyiyao/flutter-tools.nvim/issues/225)
* **commands:** add FlutterSuper and FlutterReanalyze ([#170](https://github.com/changyiyao/flutter-tools.nvim/issues/170)) ([15d78dc](https://github.com/changyiyao/flutter-tools.nvim/commit/15d78dc088802d83e216da828d05c74af75f6aea))
* **commands:** add option to silence flutter errors ([#246](https://github.com/changyiyao/flutter-tools.nvim/issues/246)) ([bafdc2c](https://github.com/changyiyao/flutter-tools.nvim/commit/bafdc2c931bad4495835f51b819df842c615ae52))
* **commands:** add widget inspector and construction lines ([#136](https://github.com/changyiyao/flutter-tools.nvim/issues/136)) ([ffe36b4](https://github.com/changyiyao/flutter-tools.nvim/commit/ffe36b437e7a47352ecf8301a2f2ba6dee2094e7))
* **commands:** open dev tools ([#156](https://github.com/changyiyao/flutter-tools.nvim/issues/156)) ([89854b9](https://github.com/changyiyao/flutter-tools.nvim/commit/89854b9b29a35589ee40d61fef1e6f2dd6b2cea2))
* **config:** add args support ([31fca8e](https://github.com/changyiyao/flutter-tools.nvim/commit/31fca8e64b0a84847ae980b3ebf06065c90ceedd))
* **config:** add project configuration ([#232](https://github.com/changyiyao/flutter-tools.nvim/issues/232)) ([f898ac2](https://github.com/changyiyao/flutter-tools.nvim/commit/f898ac2340b4ff1950e82f7181a92d0b9134e78b))
* **config:** add user config via setup fn ([90db314](https://github.com/changyiyao/flutter-tools.nvim/commit/90db314c4603004202c8fb41b734bb9afdec2641))
* convert pub get to jobs class ([bfd12a9](https://github.com/changyiyao/flutter-tools.nvim/commit/bfd12a926f8d6a5ac8487d0e450b2da48d69bc7a))
* create overridable notification highlights ([#64](https://github.com/changyiyao/flutter-tools.nvim/issues/64)) ([95e5f29](https://github.com/changyiyao/flutter-tools.nvim/commit/95e5f2993252dc6ef541db169d1a41bcaec74f08))
* custom ([f7f3fd3](https://github.com/changyiyao/flutter-tools.nvim/commit/f7f3fd318f5a3f7e4196118a73ac266fb4afc5c4))
* **debugger:** add ability to attach to app ([1903539](https://github.com/changyiyao/flutter-tools.nvim/commit/19035394b471d9a5f4da3fcf7a6e3dad1e027827))
* **debugger:** add options to specify exception breakpoints ([0eab3b1](https://github.com/changyiyao/flutter-tools.nvim/commit/0eab3b11a740c2674f4bc8e4e5ca1d17d07a4ab0))
* **decorations:** view selected project config in statusline ([#241](https://github.com/changyiyao/flutter-tools.nvim/issues/241)) ([5967d65](https://github.com/changyiyao/flutter-tools.nvim/commit/5967d65f993427f7fd33bd4d7d9ca85a384db9f4))
* derive executable path async ([b9e707a](https://github.com/changyiyao/flutter-tools.nvim/commit/b9e707afa1d1ab1d035affb847c7efb3b13bc946))
* Execute flutter commands in lsp project root ([#95](https://github.com/changyiyao/flutter-tools.nvim/issues/95)) ([4c084b1](https://github.com/changyiyao/flutter-tools.nvim/commit/4c084b1afb8a7755a4f80eea31d0813b2e0dc3f8))
* improve default sizes for log and outline ([d1cafba](https://github.com/changyiyao/flutter-tools.nvim/commit/d1cafbae355b77d1556dddf5485ab873bee2a2af))
* improve dev tools setup ([#204](https://github.com/changyiyao/flutter-tools.nvim/issues/204)) ([d67caa7](https://github.com/changyiyao/flutter-tools.nvim/commit/d67caa7dd17eccb89bfda1c0657d0723e339ef60))
* improve widget guides, fixes [#5](https://github.com/changyiyao/flutter-tools.nvim/issues/5) ([34ca0e0](https://github.com/changyiyao/flutter-tools.nvim/commit/34ca0e08758d3bcbebf679ac2e39af7ff6dadcad))
* initial support for pub get on save ([8be02d2](https://github.com/changyiyao/flutter-tools.nvim/commit/8be02d2d60500683998ef29f60607912ea2c6f62))
* Introduce dap-based runner ([#108](https://github.com/changyiyao/flutter-tools.nvim/issues/108)) ([6acf7d2](https://github.com/changyiyao/flutter-tools.nvim/commit/6acf7d2ed2aeebf932808e99e64a4f71fe508606))
* **labels:** Update to use extmarks ([#96](https://github.com/changyiyao/flutter-tools.nvim/issues/96)) ([85fbff6](https://github.com/changyiyao/flutter-tools.nvim/commit/85fbff673687f38d5763c3e4b76883294e14cfd8))
* **lsp:** add restart command ([bf1611f](https://github.com/changyiyao/flutter-tools.nvim/commit/bf1611fd7063d0a5aead960d968a8d57706c1c84))
* **lsp:** register workspace/willRenameFiles handler ([40ace6f](https://github.com/changyiyao/flutter-tools.nvim/commit/40ace6fe3a59899fbe41b807358d3687db1cc962))
* **notify:** key notification by source ([20f90d2](https://github.com/changyiyao/flutter-tools.nvim/commit/20f90d2e25f4492db153074389f0cf622be71c2b))
* only print guides error if debug is true ([7679f10](https://github.com/changyiyao/flutter-tools.nvim/commit/7679f100b35e493cbb57cb2ce060e981a2439990))
* **outline:** add auto-open and toggle ([af637b9](https://github.com/changyiyao/flutter-tools.nvim/commit/af637b9b726ea33fb441465131ae8c8a9b5e25be))
* **outline:** match and highlight strings ([3e87282](https://github.com/changyiyao/flutter-tools.nvim/commit/3e87282bf57ed5106b654e59d584b2b026867bd9))
* **popup:** add "q" mapping to close window ([16646d8](https://github.com/changyiyao/flutter-tools.nvim/commit/16646d8753beba406fb93fe7d226d3b3450c8773))
* prevent writes to files in pub cache and FVM folder ([#173](https://github.com/changyiyao/flutter-tools.nvim/issues/173)) ([3dfe94c](https://github.com/changyiyao/flutter-tools.nvim/commit/3dfe94cec788e274178bbd0e872d2ab660bf9e59))
* **project_config:** add extra arguments ([#258](https://github.com/changyiyao/flutter-tools.nvim/issues/258)) ([5fbd2a1](https://github.com/changyiyao/flutter-tools.nvim/commit/5fbd2a146bfebcbcff1aec832f7e9d1263737db2))
* prompt for name before performing refactors ([#104](https://github.com/changyiyao/flutter-tools.nvim/issues/104)) ([8c7af76](https://github.com/changyiyao/flutter-tools.nvim/commit/8c7af76c4f4422a079e43718c1ac1160c5a00df2))
* **pub get:** increase error notification timeout ([6e92ced](https://github.com/changyiyao/flutter-tools.nvim/commit/6e92ced927a1d56030110d6e864c71486f3d9e24))
* re-apply dev log settings if file persists ([1f49ba9](https://github.com/changyiyao/flutter-tools.nvim/commit/1f49ba99524d54019ddba644a5315ed7a328f15b))
* render flutter outlines using libuv async ([34a00c6](https://github.com/changyiyao/flutter-tools.nvim/commit/34a00c66732579425c15b98604088170f55a2ac9))
* set dart comments options ([#172](https://github.com/changyiyao/flutter-tools.nvim/issues/172)) ([19c16dd](https://github.com/changyiyao/flutter-tools.nvim/commit/19c16ddf70dc64b1fe4019fb3562a54d6254b624))
* **setup:** add pubspec.yaml as another start point ([#167](https://github.com/changyiyao/flutter-tools.nvim/issues/167)) ([c4a7a53](https://github.com/changyiyao/flutter-tools.nvim/commit/c4a7a532bbf865d48b111f42f3b2956d12a65559))
* show options popup if run quits early ([2205ea3](https://github.com/changyiyao/flutter-tools.nvim/commit/2205ea31c7b4f4d6ec3d041251eda112ef680f41))
* stack notification windows if multiple open ([bea5f17](https://github.com/changyiyao/flutter-tools.nvim/commit/bea5f17d0554ce5a922273ac04012b28c82944a3))
* support for fvm ([#99](https://github.com/changyiyao/flutter-tools.nvim/issues/99)) ([10b3bb0](https://github.com/changyiyao/flutter-tools.nvim/commit/10b3bb0b674dd4f2cd992a7649430380eb53e397))
* **syntax:** include improved dart syntax file ([0417d4c](https://github.com/changyiyao/flutter-tools.nvim/commit/0417d4c45e732b5c96f4a42dbb562e5be0af81c1))
* **ui:** change vim.notify function signature ([#210](https://github.com/changyiyao/flutter-tools.nvim/issues/210)) ([c6e68b3](https://github.com/changyiyao/flutter-tools.nvim/commit/c6e68b3ea365431f91834bf969691b9f4fa76608))
* **ui:** place cursor on the first actionable line ([8b1b33c](https://github.com/changyiyao/flutter-tools.nvim/commit/8b1b33cfebb06e4b330db24958f2438fbb3d4e50))
* update lsp completion capabilities ([a9863e1](https://github.com/changyiyao/flutter-tools.nvim/commit/a9863e16b1bb8bd37de9460b2190e967dd6d9a50))
* **WIP:** add devtools command ([80f92a0](https://github.com/changyiyao/flutter-tools.nvim/commit/80f92a05f7bfc8916d0aacdd816243be4bae5d00))
* wrap lsp setup for simplicity ([572e193](https://github.com/changyiyao/flutter-tools.nvim/commit/572e1937eb02b4ad6cd4d7dba55a1d877b0a48c3))


### Bug Fixes

* (WIP) invalid window on autoscroll of dev log ([ee2ad6e](https://github.com/changyiyao/flutter-tools.nvim/commit/ee2ad6e12adbb97278351fb4f69b66d1d3b14db2))
* add handler for emulator launch error ([65330c1](https://github.com/changyiyao/flutter-tools.nvim/commit/65330c1b937813f397e91e3e1a278bbb7bf8d3e5))
* add max width to notifications ([464a919](https://github.com/changyiyao/flutter-tools.nvim/commit/464a9193d8639fffb2d65b418fb9bc2a314b1a90))
* add offset encoding to outline code action ([8020b6f](https://github.com/changyiyao/flutter-tools.nvim/commit/8020b6fab44b8421302ec7fb55c5948df16a431d)), closes [#130](https://github.com/changyiyao/flutter-tools.nvim/issues/130)
* allow flutter run to take cli arguments ([#119](https://github.com/changyiyao/flutter-tools.nvim/issues/119)) ([9458303](https://github.com/changyiyao/flutter-tools.nvim/commit/9458303fcaa5cc35e0b1915edb8509886ed986d7))
* attach LSP to buffer only once ([#163](https://github.com/changyiyao/flutter-tools.nvim/issues/163)) ([8b0d82f](https://github.com/changyiyao/flutter-tools.nvim/commit/8b0d82f1aa6d09cad74489d35d9fecfdc7fa45ec))
* autoscroll log buffer ([eec0d42](https://github.com/changyiyao/flutter-tools.nvim/commit/eec0d42162003e6a137751178abd8c10cdce86b4))
* call notify function from correct place ([#153](https://github.com/changyiyao/flutter-tools.nvim/issues/153)) ([63bec8e](https://github.com/changyiyao/flutter-tools.nvim/commit/63bec8e4741e5a163108cd397943b16d4cd88e01))
* callback name for plenary job execution ([#114](https://github.com/changyiyao/flutter-tools.nvim/issues/114)) ([11513c9](https://github.com/changyiyao/flutter-tools.nvim/commit/11513c97ad8736b63b90851f7f9355d387315db1))
* check colorProvider capability before sending a request ([#151](https://github.com/changyiyao/flutter-tools.nvim/issues/151)) ([5e88b96](https://github.com/changyiyao/flutter-tools.nvim/commit/5e88b963b360c3b6941a19ab5fc82c70c6818a3a))
* check document colour is supported ([a664e92](https://github.com/changyiyao/flutter-tools.nvim/commit/a664e929f5c53cda3dabc80b33b2ab201dec3270))
* check if highlight exists before executing ([5aa3f6b](https://github.com/changyiyao/flutter-tools.nvim/commit/5aa3f6b406576e72da6d5eccc1fa86d5f5b01614))
* check if the window is valid before closing ([6655d1a](https://github.com/changyiyao/flutter-tools.nvim/commit/6655d1a2b739db096d7bc950a41ee1bd5ce8acdb))
* **closing tags:** add space before closing tag ([66fb51f](https://github.com/changyiyao/flutter-tools.nvim/commit/66fb51fbdea0a5e57022cf90aba0b97005fb585e))
* closing window with &lt;esc&gt; not working ([bbacec8](https://github.com/changyiyao/flutter-tools.nvim/commit/bbacec854c3ba33492ae26b8c081c11b3c8fab0a))
* **color:** ensure values exist when setting colors ([bdd6365](https://github.com/changyiyao/flutter-tools.nvim/commit/bdd6365b92e42ceb6404d493c0f1fef76fa42b90))
* **colors:** check the return value of vim.fn.has ([c0909a0](https://github.com/changyiyao/flutter-tools.nvim/commit/c0909a073348db3dbc5bdcbeddd49cc6f04ebeb1)), closes [#135](https://github.com/changyiyao/flutter-tools.nvim/issues/135)
* **color:** use correct require path ([f12b1f4](https://github.com/changyiyao/flutter-tools.nvim/commit/f12b1f43c8d4617cc6454bfd066e72175c117755))
* **colour:** increase priority of highlights ([055c082](https://github.com/changyiyao/flutter-tools.nvim/commit/055c0823d295aa3449d59c85397e35ef2c138bd9)), closes [#129](https://github.com/changyiyao/flutter-tools.nvim/issues/129)
* **commands:** use utils.map for selecting device ([9c3fc97](https://github.com/changyiyao/flutter-tools.nvim/commit/9c3fc97ba33717f26fcf328725590720a5f9abca))
* completely incorrect guides data structure ([9a1da1f](https://github.com/changyiyao/flutter-tools.nvim/commit/9a1da1f64bc98346791f696a5947dfaa106540b2)), closes [#17](https://github.com/changyiyao/flutter-tools.nvim/issues/17)
* **config:** use correct require path ([7db39ef](https://github.com/changyiyao/flutter-tools.nvim/commit/7db39ef83d22656e19bc65dd58234fd33dcc2d1e))
* correct function reference for choosing device ([0666eae](https://github.com/changyiyao/flutter-tools.nvim/commit/0666eaea0f65a6590bd64006392d9cc8940cb1db))
* **dap:** custom events ([10f3abb](https://github.com/changyiyao/flutter-tools.nvim/commit/10f3abb806f97b981be4a9463843e22ca6ca7caf))
* **dap:** pass correct flutter sdk path the dap ([1f165d2](https://github.com/changyiyao/flutter-tools.nvim/commit/1f165d22927903e9231b49d9a75da5ec4e52a7be))
* **dap:** read vmServiceUri for profiler_url ([#198](https://github.com/changyiyao/flutter-tools.nvim/issues/198)) ([ae0be3c](https://github.com/changyiyao/flutter-tools.nvim/commit/ae0be3cef35c0cb41d6c7f814a19b3402d50fd7a))
* **daprunner:** Check for nil in dap events ([#110](https://github.com/changyiyao/flutter-tools.nvim/issues/110)) ([9c76482](https://github.com/changyiyao/flutter-tools.nvim/commit/9c7648234e382101e0a9d6b0f031869b52154833))
* **dap:** use full path to flutter executable when running via DAP ([#216](https://github.com/changyiyao/flutter-tools.nvim/issues/216)) ([31f75ae](https://github.com/changyiyao/flutter-tools.nvim/commit/31f75ae70780cb593bbd3b5179203a9e2b05cefa))
* default closing tags prefix should have space ([5c23e30](https://github.com/changyiyao/flutter-tools.nvim/commit/5c23e3049ce8a1861aef4a2e4b38e39002ed3032))
* derive flutter sdk path for normal executables ([4b51ee5](https://github.com/changyiyao/flutter-tools.nvim/commit/4b51ee5ff55a88db0e059269bfa38c1df7a931af))
* derive flutter sdk path from flutter_path ([#33](https://github.com/changyiyao/flutter-tools.nvim/issues/33)) ([8d77d16](https://github.com/changyiyao/flutter-tools.nvim/commit/8d77d1693894da78febc078bfd64e73cd5f6d58d))
* **dev_tools:** don't buffer devtools stdout ([0f4294e](https://github.com/changyiyao/flutter-tools.nvim/commit/0f4294e90c3ecbbd5f259388159308c66a5be3ea))
* **dev_tools:** notify user if data is not valid ([69fe6c8](https://github.com/changyiyao/flutter-tools.nvim/commit/69fe6c8d1acbb16b14cbc43f83b214d9e4d06405)), closes [#139](https://github.com/changyiyao/flutter-tools.nvim/issues/139)
* **devices:** don't render empty platform strings ([5039d23](https://github.com/changyiyao/flutter-tools.nvim/commit/5039d238200db5063652622afa299ff62c07e604))
* **devices:** update mapping to use new helper ([e7c61ce](https://github.com/changyiyao/flutter-tools.nvim/commit/e7c61ce1561821319730575104430b269b8d5429))
* **devtools:** use new dart devtools command ([#214](https://github.com/changyiyao/flutter-tools.nvim/issues/214)) ([4c3c440](https://github.com/changyiyao/flutter-tools.nvim/commit/4c3c440f1a87aa8db7020d7393ae9924b168953e))
* do not attach LSP to buffer with diffview file URI ([#191](https://github.com/changyiyao/flutter-tools.nvim/issues/191)) ([b666a05](https://github.com/changyiyao/flutter-tools.nvim/commit/b666a057108c7655882cbc64217222228aad68da))
* **documentChanges:** allow document renames ([a090c8e](https://github.com/changyiyao/flutter-tools.nvim/commit/a090c8e5a69fd91b93d750f46554faf07f026820))
* don't allow stopping a job that has stopped ([617a6a7](https://github.com/changyiyao/flutter-tools.nvim/commit/617a6a7ba03ce0326fb3ad6f778d6cc722651146))
* don't analyse flutter sdk packages ([#58](https://github.com/changyiyao/flutter-tools.nvim/issues/58)) ([cac78e7](https://github.com/changyiyao/flutter-tools.nvim/commit/cac78e7b578c38c0c40dd619d7779833b0c96f59))
* don't attempt to render nil guides ([c6db645](https://github.com/changyiyao/flutter-tools.nvim/commit/c6db6455aaac5642fac1b0fff1353ba6ddc0975d))
* don't scroll dev log if focused ([68d8637](https://github.com/changyiyao/flutter-tools.nvim/commit/68d863741e743af18c6892b1306cb9b2f271b371))
* don't show widget guides in preview windows ([fdfa48d](https://github.com/changyiyao/flutter-tools.nvim/commit/fdfa48d33de5d8fe51104d064aea4bc7e879c2c7))
* ensure job's self id before closing ([6189733](https://github.com/changyiyao/flutter-tools.nvim/commit/6189733c40b378693bcb730a232b567e26591a9c))
* **executable:** don't presume snap installation ([080144c](https://github.com/changyiyao/flutter-tools.nvim/commit/080144ce1a2670664da1499b3d3a9b0cc2a70b8a))
* **executable:** resolve links for flutter_path ([#102](https://github.com/changyiyao/flutter-tools.nvim/issues/102)) ([5dc88c2](https://github.com/changyiyao/flutter-tools.nvim/commit/5dc88c2521004b9bb62cc8e0b5fb5ae76da96b12))
* **executable:** use exepath to flutter not snap ([db31c79](https://github.com/changyiyao/flutter-tools.nvim/commit/db31c79035e30c8ec65fbe9d2499d7e56c7ef685))
* **flutter_outline:** don't error on new lines ([d84a166](https://github.com/changyiyao/flutter-tools.nvim/commit/d84a166f744d388f03fa1f58d4cbfa4b5fbcd0f4))
* **guides:** do not draw guides over text ([#143](https://github.com/changyiyao/flutter-tools.nvim/issues/143)) ([e9471a9](https://github.com/changyiyao/flutter-tools.nvim/commit/e9471a942900d18f4cf2376400a36f8592321d52))
* **guides:** don't pass a list to utils.notify ([e6408b5](https://github.com/changyiyao/flutter-tools.nvim/commit/e6408b507ced052e04bae377279dbb366429391c))
* **guides:** improve error message rendering ([f8612bd](https://github.com/changyiyao/flutter-tools.nvim/commit/f8612bda65109e7fdecb1cd42980920475180bf8))
* **guides:** show guides for first child and adjust start index ([#134](https://github.com/changyiyao/flutter-tools.nvim/issues/134)) ([12d229a](https://github.com/changyiyao/flutter-tools.nvim/commit/12d229aaff45e562e341142bd841c3061ea22727))
* handle empty buffer outline response ([0496341](https://github.com/changyiyao/flutter-tools.nvim/commit/0496341da49a03b4cbeed1d1183643ac9d268500))
* handle too many notification windows opening ([04afe19](https://github.com/changyiyao/flutter-tools.nvim/commit/04afe194f4de046437feab17a045519e51ff1b44))
* **highlights:** refresh on colorscheme change ([17484bb](https://github.com/changyiyao/flutter-tools.nvim/commit/17484bb2baa9bfdf3362d1269f67e2c68d6ced52))
* ignore empty lines in notification ([67b2627](https://github.com/changyiyao/flutter-tools.nvim/commit/67b26277b466433f5bace3ee92ad55394f5bcc13))
* ignore invalid end indicices ([#32](https://github.com/changyiyao/flutter-tools.nvim/issues/32)) ([845656d](https://github.com/changyiyao/flutter-tools.nvim/commit/845656df90262ba65a1fd65b84c094dd0923fc29))
* improve autoscroll and print message if error ([c08b91b](https://github.com/changyiyao/flutter-tools.nvim/commit/c08b91ba7aa631c4571f2ddd2915d81ca2f700df))
* indent size calculation ([c8fc784](https://github.com/changyiyao/flutter-tools.nvim/commit/c8fc7842e090e0166eb486861f9108e9cef3da4e))
* kill emulator job on stopping the server ([efd85e9](https://github.com/changyiyao/flutter-tools.nvim/commit/efd85e9c5599abcaca892efcfa655d74f08d1721))
* **labels:** add error handling to setting extmarks ([cb4f8d9](https://github.com/changyiyao/flutter-tools.nvim/commit/cb4f8d908279bc76c47faf3a79580ec11f27c0b3)), closes [#132](https://github.com/changyiyao/flutter-tools.nvim/issues/132)
* **lazy:** do not lazy require plenary modules ([469270a](https://github.com/changyiyao/flutter-tools.nvim/commit/469270a3d52c81699849d0b6f73a3a72c4c89368))
* **log:** prevent cursor autoscroll spam ([1891476](https://github.com/changyiyao/flutter-tools.nvim/commit/1891476b463d49a8d2fb3c8fc766ee2a8e8de772)), closes [#252](https://github.com/changyiyao/flutter-tools.nvim/issues/252) [#253](https://github.com/changyiyao/flutter-tools.nvim/issues/253)
* **lsp:** allow client to re-attach multiple times ([0bd2397](https://github.com/changyiyao/flutter-tools.nvim/commit/0bd239706f3a512b4619118a0f1e736976ff4f46))
* **lsp:** avoid using private lsp client methods ([3ec80d3](https://github.com/changyiyao/flutter-tools.nvim/commit/3ec80d3a1d800b80d64b50145764f053b6a385f4)), closes [#256](https://github.com/changyiyao/flutter-tools.nvim/issues/256)
* **lsp:** exclude pub-cache from analysis ([a936613](https://github.com/changyiyao/flutter-tools.nvim/commit/a936613f596ac0919d8a013ce343f1214e4e2af5)), closes [#57](https://github.com/changyiyao/flutter-tools.nvim/issues/57)
* **lsp:** prefer re-using existing servers cwd ([b649892](https://github.com/changyiyao/flutter-tools.nvim/commit/b6498925bc7ee9b8fa3c8dbf47cded7b77da4c82))
* make cursor position 0 based ([a2c8248](https://github.com/changyiyao/flutter-tools.nvim/commit/a2c82480507d12f9a650570950552641b79393d2))
* make setup debugger installation silent ([91fdc63](https://github.com/changyiyao/flutter-tools.nvim/commit/91fdc6316e94c7fe4c9b9b5843916ecc6e2e15f7))
* maybe fix type error using utils.echomsg ([b297950](https://github.com/changyiyao/flutter-tools.nvim/commit/b29795065e7d11277c858c7b1cdad6e1a17704b0))
* **outline:** ensure window is valid ([ecd25ea](https://github.com/changyiyao/flutter-tools.nvim/commit/ecd25eac6ae13f6fccd1aba4b7091ebf6db9a502))
* **outline:** position cursor correctly on select ([8f301cd](https://github.com/changyiyao/flutter-tools.nvim/commit/8f301cd297b6f446e91ebf66253ff7552009457c))
* **outline:** remove duplicate prefix in hl names ([e17c2f5](https://github.com/changyiyao/flutter-tools.nvim/commit/e17c2f53a058a59a913291e47f612349dab4b956))
* pass dev log config to UI module ([b5e1ef7](https://github.com/changyiyao/flutter-tools.nvim/commit/b5e1ef7ea3bceb253ec98d2207dc3a440899f627))
* prefer root-sdk binary over path ([#100](https://github.com/changyiyao/flutter-tools.nvim/issues/100)) ([a26797f](https://github.com/changyiyao/flutter-tools.nvim/commit/a26797f2b9613dafe7ce47e54d6adbd85b757c3c))
* prevent lsp colour configuration error ([9742a06](https://github.com/changyiyao/flutter-tools.nvim/commit/9742a06f4468bfa0c0cb414eb757d2a3b8bbf782))
* prevent negative indent sizes ([df086e4](https://github.com/changyiyao/flutter-tools.nvim/commit/df086e4f591576273f9aa07552921133be1fac7d))
* **pub get:** show error messages if command fails ([ccfb761](https://github.com/changyiyao/flutter-tools.nvim/commit/ccfb761c99579fa91e8c5916c011b44d0d89ca11))
* **quit:** remove attempt to close emulator job ([59682a0](https://github.com/changyiyao/flutter-tools.nvim/commit/59682a056c37310f07825c2322f526e6ac0a3bd1))
* **README:** typo in 'Full Configuration' snippet ([#94](https://github.com/changyiyao/flutter-tools.nvim/issues/94)) ([d3c3d6d](https://github.com/changyiyao/flutter-tools.nvim/commit/d3c3d6d44334b1967f1069754d9044ea46cbf248))
* remove newline from guides error msg ([d9697b9](https://github.com/changyiyao/flutter-tools.nvim/commit/d9697b913a7e199e48b09403755774bed7063a90))
* search plain strings in file path ([#174](https://github.com/changyiyao/flutter-tools.nvim/issues/174)) ([89a4727](https://github.com/changyiyao/flutter-tools.nvim/commit/89a47278d9d27537735ae4e5e97acfc58ceebf2b))
* select only dart language server when requesting color info ([#157](https://github.com/changyiyao/flutter-tools.nvim/issues/157)) ([6b13345](https://github.com/changyiyao/flutter-tools.nvim/commit/6b13345dd7ffe3b0a08536b8fadfa288af137616))
* skip over empty lines when drawing guides ([44a0c46](https://github.com/changyiyao/flutter-tools.nvim/commit/44a0c46d0fd9bde0218f661fc93c27fd45e38ef1))
* **start:** call lsp setup on start up ([a6e8b7d](https://github.com/changyiyao/flutter-tools.nvim/commit/a6e8b7de3d447fc2c69c6a0ceba6c6fd277f43cc))
* **telescope:** guard against nil opts in Run command from telescope ([d9c3bf9](https://github.com/changyiyao/flutter-tools.nvim/commit/d9c3bf9dcb256544782b4c99d9182a02708730a2))
* **telescope:** use dropdown theme for command picker ([b1f971a](https://github.com/changyiyao/flutter-tools.nvim/commit/b1f971acb3df4ac1364c05f3fbc9e818cc6542c0))
* **ui:** add correct default case for notify level ([15b770d](https://github.com/changyiyao/flutter-tools.nvim/commit/15b770dcdca7ad2dab11cdf0dfdca34f04739471))
* **ui:** do not show empty notifications ([#192](https://github.com/changyiyao/flutter-tools.nvim/issues/192)) ([fc336d9](https://github.com/changyiyao/flutter-tools.nvim/commit/fc336d95ca00ae9c2a7c4fad57f131494fc825dd))
* **ui:** replace newlines ([#175](https://github.com/changyiyao/flutter-tools.nvim/issues/175)) ([bca467f](https://github.com/changyiyao/flutter-tools.nvim/commit/bca467f43d40b1a8ab15341b7c3d9d76bb3c88fb))
* **ui:** use correct mapping helper function ([cb49ca7](https://github.com/changyiyao/flutter-tools.nvim/commit/cb49ca75cff20c9d444f2cdfbcabc1b750ab5995))
* use buf number matching outline uri ([771ac9b](https://github.com/changyiyao/flutter-tools.nvim/commit/771ac9bf48eef8224ca98650081dd9fc464884cd))
* use default sorter for telescope picker ([bc0e026](https://github.com/changyiyao/flutter-tools.nvim/commit/bc0e026c796d7c1cc5d42206a5b65d333bb0542c))
* use same content check for notifications ([6742c25](https://github.com/changyiyao/flutter-tools.nvim/commit/6742c2511419e0b02b4669f9d2632756796e0c11))
* use user config with defaults as metatable ([13cc9cc](https://github.com/changyiyao/flutter-tools.nvim/commit/13cc9cc96681d3ad6615ac765f3e76315f19a9ff))
* **utils:** use correct name for group key ([37482ee](https://github.com/changyiyao/flutter-tools.nvim/commit/37482ee4120e1ba5df434bf815881880d7fef78e)), closes [#160](https://github.com/changyiyao/flutter-tools.nvim/issues/160)
* **widget_guides:** handle invalid start indices ([0d2fe47](https://github.com/changyiyao/flutter-tools.nvim/commit/0d2fe479c54204c4b3e1fa675fd3ac86a5c01a2e))
* **widget-outline:** clear extmarks per event ([021e6c9](https://github.com/changyiyao/flutter-tools.nvim/commit/021e6c948e2d0f3fd3b4ffbeef15e0794bc6faa6))
* wrap setting extmark in pcall ([ea85379](https://github.com/changyiyao/flutter-tools.nvim/commit/ea8537902a6ec8bc097396e303040ec8593cd8c8))


### Code Refactoring

* **lsp:** remove deprecated lsp start method ([ac07b75](https://github.com/changyiyao/flutter-tools.nvim/commit/ac07b754977d6a99997aa41ba7903109143d7c28))
* **setup:** convert commands to use 0.7 apis ([68e246f](https://github.com/changyiyao/flutter-tools.nvim/commit/68e246fb49ad56627be7307cd719d5580cc23e7c))
* **setup:** refactor autocommands ([276b477](https://github.com/changyiyao/flutter-tools.nvim/commit/276b477e806c2d1799938d1930505ca9f9960e12))
* **ui:** replace (some) custom ui with `vim.ui.*` ([#221](https://github.com/changyiyao/flutter-tools.nvim/issues/221)) ([467847f](https://github.com/changyiyao/flutter-tools.nvim/commit/467847f694beb2e6496c83e56631d7dfae901a9d))


### Tests

* rename setup file to minimal_init.lua ([2707077](https://github.com/changyiyao/flutter-tools.nvim/commit/2707077fed4e01add9fb468347be59775e7ee829))

## [1.3.0](https://github.com/akinsho/flutter-tools.nvim/compare/v1.2.1...v1.3.0) (2023-05-10)


### Features

* **project_config:** add extra arguments ([#258](https://github.com/akinsho/flutter-tools.nvim/issues/258)) ([5fbd2a1](https://github.com/akinsho/flutter-tools.nvim/commit/5fbd2a146bfebcbcff1aec832f7e9d1263737db2))


### Bug Fixes

* **lsp:** avoid using private lsp client methods ([3ec80d3](https://github.com/akinsho/flutter-tools.nvim/commit/3ec80d3a1d800b80d64b50145764f053b6a385f4)), closes [#256](https://github.com/akinsho/flutter-tools.nvim/issues/256)

## [1.2.1](https://github.com/akinsho/flutter-tools.nvim/compare/v1.2.0...v1.2.1) (2023-05-04)


### Bug Fixes

* **log:** prevent cursor autoscroll spam ([1891476](https://github.com/akinsho/flutter-tools.nvim/commit/1891476b463d49a8d2fb3c8fc766ee2a8e8de772)), closes [#252](https://github.com/akinsho/flutter-tools.nvim/issues/252) [#253](https://github.com/akinsho/flutter-tools.nvim/issues/253)

## [1.2.0](https://github.com/akinsho/flutter-tools.nvim/compare/v1.1.0...v1.2.0) (2023-04-20)


### Features

* **commands:** add option to silence flutter errors ([#246](https://github.com/akinsho/flutter-tools.nvim/issues/246)) ([bafdc2c](https://github.com/akinsho/flutter-tools.nvim/commit/bafdc2c931bad4495835f51b819df842c615ae52))

## [1.1.0](https://github.com/akinsho/flutter-tools.nvim/compare/v1.0.2...v1.1.0) (2023-04-18)


### Features

* add FlutterRename command ([#234](https://github.com/akinsho/flutter-tools.nvim/issues/234)) ([4d9391b](https://github.com/akinsho/flutter-tools.nvim/commit/4d9391b5c217003666d4ffb4db665ad30362a959))
* **config:** add project configuration ([#232](https://github.com/akinsho/flutter-tools.nvim/issues/232)) ([f898ac2](https://github.com/akinsho/flutter-tools.nvim/commit/f898ac2340b4ff1950e82f7181a92d0b9134e78b))
* **decorations:** view selected project config in statusline ([#241](https://github.com/akinsho/flutter-tools.nvim/issues/241)) ([5967d65](https://github.com/akinsho/flutter-tools.nvim/commit/5967d65f993427f7fd33bd4d7d9ca85a384db9f4))

## [1.0.2](https://github.com/akinsho/flutter-tools.nvim/compare/v1.0.1...v1.0.2) (2023-03-31)


### Bug Fixes

* **color:** ensure values exist when setting colors ([bdd6365](https://github.com/akinsho/flutter-tools.nvim/commit/bdd6365b92e42ceb6404d493c0f1fef76fa42b90))

## [1.0.1](https://github.com/akinsho/flutter-tools.nvim/compare/v1.0.0...v1.0.1) (2023-03-31)


### Bug Fixes

* **color:** use correct require path ([f12b1f4](https://github.com/akinsho/flutter-tools.nvim/commit/f12b1f43c8d4617cc6454bfd066e72175c117755))
* **config:** use correct require path ([7db39ef](https://github.com/akinsho/flutter-tools.nvim/commit/7db39ef83d22656e19bc65dd58234fd33dcc2d1e))
