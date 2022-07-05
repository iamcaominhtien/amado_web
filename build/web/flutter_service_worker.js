'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "01eb2c11c2685e04a0e3b0556549b914",
".git/config": "db59e6a8d6f32de5f09b79498b95c9d1",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "01986f815532ac480aa13f47daace7e9",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "3efcc27522e5e52e5d8918f544b0b8f3",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "77423aaf83ed0af8cbc28c840f6be92f",
".git/logs/refs/heads/master": "77423aaf83ed0af8cbc28c840f6be92f",
".git/logs/refs/remotes/origin/master": "888e755af474a62de7e96422919853db",
".git/objects/00/3c02b017a5ff2fdba1e470b445b90493f41ace": "4b022ad6bcfb1a903eaac01e52674573",
".git/objects/02/0f5e56a927a04113ecb38d06238b0c2998ee52": "b74ec5f14b7d6eaa207cddb2b632edf0",
".git/objects/02/bb649b1bc1346bb423cb3aa144af0907780c1d": "06a05d9ba243c48576fced5eb99bdf89",
".git/objects/08/25a5cf952a82320880c96a8adcf920fcd20bfa": "9e10e0717e056efa51f77b090bc50eca",
".git/objects/08/f537024a4b74786e83b7f6377e83f4099e1038": "879dc48808541b64505fea67301f8a5c",
".git/objects/09/1603cfdf9d4d65b2e240738b8f16cf1ebf424a": "498a092378f682fcd0f5ae2d12f44249",
".git/objects/0b/79ce3a89aab4583adc51959ed365a4e832fa19": "a2a7d659ef6c755974db515f78928567",
".git/objects/0c/5d5406fa2c9c6608c21e36fd27a41460b8d60b": "0a1773933b2be01bc255779c29c764ff",
".git/objects/0c/8394936ab65989bc259bbe06d66c2552531ea1": "ef1ca0cac4374ab6128e0190e3be81d5",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/0e/c0eacc6316b4a3dff348e8bc0207aebe25c776": "37e48036261164338b03cc6333026366",
".git/objects/14/1588c8be5e64b89237a4b21c725db7a5204548": "1a1163e70a8d1c3d6a0bb254eb723dd2",
".git/objects/14/bc85c15c0ee10f529aa510bab77a36d3e99f9a": "2a89d0cda19481521277dbf75ca753a7",
".git/objects/16/7694cddf527577810b8c7abe61681efe7a9517": "def46f3b54fecc0a665abe9d589b9646",
".git/objects/16/97288b87a342f5b45578fd15a40db9227aaf9d": "36f2c59236d8434f0c0053f96b150336",
".git/objects/17/ef8cff9bb98075aaf348147b3d8caca0a1a3c3": "6d3244da00e5a4e9d1f035c07c7a11e7",
".git/objects/1a/0ab2b6fe2370c71f54ddfc2044c1211fdf46c2": "3f586e69e01cc3c70879ada9a6238207",
".git/objects/1d/cd06a5def58e92366d2c8ad6610da67fb1e75f": "b775af3014d7a0aa7cb55ee5d43de0d8",
".git/objects/1e/52cab48f482c2281f46afd788b3b57aedfeb3a": "a26dd934237d469d197106d92687447d",
".git/objects/1f/9dea86d49da71f095111707d03b9140eb69733": "0bd4fa0f40267bf0e6d88529e788d60b",
".git/objects/22/53a08588df5775900737536f5a792062221acd": "e3d5230f485ebe968ab4858dc6bc3d7d",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/24/978386af75013a569149c11b6ce5a5e22af9a0": "ba4a817a0020c7d843447f3419fea7d7",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/25/ff4bb8e13dbca18873abc8dc12d5e5c3edebe8": "585c9c42a0267a30e5f89427e9bf4e73",
".git/objects/27/db0c8a79056af61555e16062fefa243362511b": "330d14934717d7b4d7547a162b4a9d26",
".git/objects/29/00d2ee8860cec1242e0a4a8aedae48699edcf1": "81629d856af9a743a4f2ae869da74772",
".git/objects/29/fa4512f21b61564761df5585a11be1cc985476": "decc5e942c917e8ed7ad81ac82d3f283",
".git/objects/2c/132cd777821cba4e5996175ff7a4972e401bbb": "fd8b8eaaccce31deb2c3d0f9bc3b5ae3",
".git/objects/2c/937a0081f97a5364b40d7459ed24b2a46f4063": "75f2b90fadaf9d0ad2e63f82e4274595",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/30/32cca33a839038ce67093e74acd094f36b4935": "0a8a02feedf63ced953f16c5241ffd9e",
".git/objects/32/da2a2351cd115a08751b8c68149d64fa28083b": "870601761d6b63b83e2af7c3078678b3",
".git/objects/34/f5c59af47d0aa23ea90bc5feecf357b03baa9f": "86d361da32b1a1466a38755a9258a1b7",
".git/objects/38/aa8b1853c9ba4b82ae3b2f3aa879aeea0c2254": "d812f5214f0f8fa36b0b57230fc233dc",
".git/objects/38/abdb6a46681b57b17d53d5f7a6385768476d22": "70d188fd52c75a013c0bcfa74af14749",
".git/objects/3a/dc098e66303ac02399ce16e440fdae4d03ae11": "5df3787f2399f62ae94d9711bedc6796",
".git/objects/3c/3abf71c451355f070d61eb1f304db08beaec72": "128da6889d1eaef2680e2c0a447f5ffc",
".git/objects/41/3f32ba126dfe778391c4448d0803fa8c5fcc65": "eeac0e717307ffa5541c71489e616913",
".git/objects/44/1bef4ffdf197e2733f4c822626c7cff49038d4": "230907ac20a8bb1534eb9dd30cc78c13",
".git/objects/45/ee73c2603044e1076722de552ea5edd2f9dbe6": "f3870bac8d1e1d0846833c135bf32867",
".git/objects/48/4eaf690ce5cbe24254b8a65b1339a89ee802c9": "b15d009c497a82654db42eaf14c7e557",
".git/objects/49/25bc3e2286a0214fe1e68ee92fd42bd7b0105e": "3aea0d2f697cba6d739bab7b4a794df0",
".git/objects/4b/8d9d9f0aa2a41159d775fdd0118078b22c7ae3": "7db61158cddf8c51fa600edbee5c79f2",
".git/objects/4c/dbba3ba0e33c7622b96c9c62338195a39471b7": "a3b75dd25b0fd5a3c6e6bd60005981d3",
".git/objects/4e/5e9a3dd7b07b23b041a48dd3a157f0cd2061eb": "da28906c0bb02c523e78851b4d4297e9",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/53/223a966a509d53658b322b98366745ac9b167b": "10e3523e06e09c595d19128e6d0a76e2",
".git/objects/54/180768d374102bd8d2319e485a7facee7c7aaa": "eb7291cfc1517b1282ce95be642f38ae",
".git/objects/55/b301f870b90068a6a5cf14bbfd386175a88d32": "7d099e6b03c8ba147fc4118f5c0b78dc",
".git/objects/56/f9e9e61b314c412254f297905d34f4d2e83721": "f615986877db881dda6804dfe20444cc",
".git/objects/58/2cb94d4ad83cfe0985b26fd47f163e3fdc450b": "6084c9724b081bc2cfcc68cff029e436",
".git/objects/58/4838f6cc098a9dd42fbbd2fdc2b9e2f05efa67": "57480cb8900ecfcbbf8deb9b7ca76874",
".git/objects/58/f3d3edcb1060afd499cab5088e5936f62b818f": "04e730743f8693c3ffa94791b1b4adc8",
".git/objects/59/c1aa2ce0294b8d69cf99606615213e188cac25": "4fc69aea814ee92bbdc34a4201c9be11",
".git/objects/59/fdc2ab530789cbdcd12abec0eef353e73ce544": "c8cf58c09143910f5b6cbd270605f81d",
".git/objects/5b/73fd170365792b1e33ab9f767bae470e1e2619": "a3b2223ed82ef19b8b5c03864b9258b3",
".git/objects/5f/f3d6c9ae8c8e800ba3ab5b71b480b1e3c38de2": "ef3ab4f7f096a1f332953f1cff45bc25",
".git/objects/61/9346535f187fdbb84985f97daabc429561ade6": "de1fcee88be2a44f48682091141f78f3",
".git/objects/61/eb8ed185cf64ae0e61b01d2d74cfc22ee6c2ec": "0d1698d424b49dde67e55c06341d2157",
".git/objects/66/4d5595ee6fcfcee6daf207748dc3ba8971403c": "8a2e0721001f4e7b2e072682c81f7bf9",
".git/objects/68/95729787f873a41baac28a87d3b211f797ffb0": "530f76629034d0b2196538c11ed00232",
".git/objects/6a/0a86b56dc46dce52eb79d76d12c8ff366d0b0b": "dd7bf9d97f90abf35512e06cb61191a2",
".git/objects/6a/217acb7133ebe2ef244d1a8f52a891d797df89": "8705044980a8e25e3a5def963729ad11",
".git/objects/6d/1972893cb5c003f2b3e2f7739f7f8d55e2db2f": "7eeb54facec372db62414da520a5a971",
".git/objects/6d/88e08eda2b8258dfcea6281180cd51748a1afc": "7616a8e40bfc42e772ffa1d1887b94e6",
".git/objects/6e/f357a3547eb2a78a02ecfb20a31cebbf4588a7": "2f5eac14e40802c3625e131561edb590",
".git/objects/72/803ca94cd065eea872e53cc11e9b0a59304218": "87c8d318a4aef78d80341f432b8511df",
".git/objects/74/638f6fd98a447176c2e622ee0342ebdbfeec8d": "6fd182e2a23d6e0bb5ad1d6a2c5f600e",
".git/objects/75/c3a11dae5dd3e0ec92e181d5a9b322f78df308": "e8033c2d8f5cf7695bade4f4a43e22d3",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/78/bfc5bbb3f56c70c36e14396ef98e37ea95457b": "16c19b1551c754b77d306a7ce0364feb",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7d/9fa03f913ae0b4397e7952987e3e1966bdea7e": "5bba057a14f8f011e4ebe8c54c6f396c",
".git/objects/80/304257ce72576f3694af7e01e7276d7c1f85eb": "74fbc6914bc1d5359968f5c108fd8926",
".git/objects/82/3199447ffd4e91a352c3a7752d8204d63b71ef": "2f0f2a2eef4a4c2539cc3cc1c5a9a230",
".git/objects/82/a59666ed671b91db3327e9ee641f49d21fbc13": "40344d6335a47cc0e0503b4ca9bdadd3",
".git/objects/83/22543e382d416124dbd8199730ff0e4a33d267": "9cdc0df44821299848f383303362aa87",
".git/objects/83/eec37b63d980b9cc4c254919c6a979cbdb82b9": "9b643ec2ca980b41a6ffdf2b6ce4a4ec",
".git/objects/88/5ea406f31f95c350b12dea89258dc0fd42573f": "9e93bbf65c80a920245f9af8d548e47f",
".git/objects/88/a5796c795b9c62be2e1eac970c0a2d64de3c70": "03ae40777fa5a91486fcd87bee9f75be",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/27f3078b88f4e55fba58c5d6136008f4fa34bf": "37a093cddb4e7b768f3c0afa45d938fc",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/fafde6a649662e31637d54d02d0834a615e7dc": "7bf0843ee42b9cc5d9c6f63909892fec",
".git/objects/8b/1bf4f1976e40ae0a631291fbf1dfdd4ec57d06": "bb2dd65af24db04552a59114a0bbe741",
".git/objects/8e/00ff0f2144d4e6e36ebc5fc94d2452a6b899b0": "13279668a0e83a6fd38db1d4c8994f34",
".git/objects/91/0a0a2a0232e6446c241aaba9520e178bd2e6dd": "8024b8d40ddb0331beb3ba23bb2eab52",
".git/objects/91/d4342791fc3c39f5385e9307c3ff066100450f": "3afaeb60bb2435bd9812ee55b5044fc2",
".git/objects/92/2cea6212a61a8e503c371affed75a40bcf604b": "5e45c6a41f06a61dac3fdf2f48bfb35e",
".git/objects/94/2ccbf36615f16c44b69ca5652cedd15247079c": "8365802523da1300172a935e5a7c587d",
".git/objects/96/a3701de301a7c68677e310bec61815e64be437": "86a53dea0cdcadc1e2df29d096e0540c",
".git/objects/97/501aa1351e9023096308a116e7775eeb0db2db": "c080f7987772515655c3822331af4dc4",
".git/objects/9d/6adab154a76fa51a8cdfcf2d3f642ddeecb7c9": "a3cbd8e3302097d7f94e37d759bbb8e0",
".git/objects/9f/1f072c0acc4cfda4498c1a2a77ad7cfef098ee": "5695c2bbde5d11e8026e82c722324bb0",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/d467cd155d86e6a2011fded423833d6adfde6d": "0c36cea25a9827a9ebc74157573b0afb",
".git/objects/a2/727e14830094adf65d2071e7e44f9b4887a656": "7a019ed8825eb0cd5fda016d4bb84779",
".git/objects/a7/c7161c8e8c0c72415ed3b719d45cae4c3aa7ea": "88645e4b55bf8662bb01e2c0d716385b",
".git/objects/a9/b3174575895fcfe8592f3b8847f21d4908455d": "4ea1f7df2fbbca1d7b4cb4bcdc8a02b6",
".git/objects/ac/f5f2492edee6e3403964924eb310e2f8185dbc": "35a2bdbad96d56ef685feac3f1456801",
".git/objects/b1/01602fcba63d5065409a78e769b05a1cd8f13d": "47daf0465b125a57e041bcb4d5e26709",
".git/objects/b1/8c5bd5cd46b4fd23dd518cf751b40382b3477e": "05fc1e92963622a2e372c0ceb0b982e2",
".git/objects/b2/65a2fe9fbbf993e3e08f6605c52bd48bd1c88e": "9842a8a293c167a87f434e9427645f92",
".git/objects/b4/743a4310d97fff5c49b6e102adc1cd5913dc7a": "d4de0a579b356bea4daff1d31f4eb3e5",
".git/objects/b6/f11acda48acff39527b6f9e880f7d1f9abf350": "d05bbb96e9efe9ee49efbb469dd7e71a",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/64e777acad4947dae3fbe5922f054109fb321a": "7d85abe91c4302267c1edcd9542035ea",
".git/objects/bb/707dc09232c04aba791144f4e03c6c4ee5fb34": "7369169b049204f666aaa4898ff8a275",
".git/objects/bd/d85d0fd8092c342ed6bb09b959b774f47d5d19": "3cfb71b47bbf2abef4b3821942096daa",
".git/objects/c0/8a481b2f64658f24139dc61394d05a0b2199a8": "2aae8902b9f886f37c5e89fe4f8ef1a2",
".git/objects/c1/421719b8bc3df2aa71747e80d1d42431b44e8f": "ff769ae7c6fe7eacf747f994bb733cb5",
".git/objects/c1/6493e122f77eefd86cc6fe9fb32dff2c275d40": "d5a07cbcbe037b3550095bb7333df1e2",
".git/objects/c2/42281db99c719f9c5b424cab3548765fa4ef90": "71e394032fb358690c61e91f1a895f1a",
".git/objects/c5/24588bef27e7ed99a7d3c2b42c8422e4b1ae44": "1f2fb364118499c719e3bf31c60b5c8b",
".git/objects/c5/65ee0413e0c61810410258820d494476d731b7": "7059b3da093395e186c1656f17a65e71",
".git/objects/ca/a64a353b0b81cadee20d26bccf4a2e00b1ab16": "5c4d80d8ff3bc535f47130046e2d5550",
".git/objects/ca/f1cb1b19db6fdbe74309f9a8deafbfff2b1029": "e0457a5245e1946ad200f5730400f6ff",
".git/objects/cb/acba064fe086d97555f54994ee90f99ea9483c": "f4d996eedf5ad0ae9a591451ceb1d9a4",
".git/objects/cd/109de747c32a38067c64055ce445320b7cdc0a": "b6e9266eac296a1cd723ef7430fb0fae",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/ce/0b45735b200f3dabc8835c6818a36e4406edb5": "5db90fa82b845e71990b73dad171a599",
".git/objects/d0/03a53106e1ade6309cf2760ecc84a8366cd26b": "474300794b39665fadd6d307c29e5463",
".git/objects/d2/1aba8cb1d91b1d75c3717d32ea619149f0250e": "5780ed8ab2f07aaeec87e199e3d085db",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/0f909a9b1358ffa0ee9e29b7196c2ed33c16d1": "1499d17f704edc14561479240975f503",
".git/objects/d8/c8489e8ed7b594745cf96759a4e957711252e7": "8309000328d4d1c1206695df0d4e03bf",
".git/objects/db/f31b83ef83e1bb6bfc7ba380c4326dc3b0f203": "4e5380d51110a6d8f13280f54a6463c9",
".git/objects/dc/3a66730dc7596c0d033cd17ae925cca4119037": "614ea338442ee0db728ccc980cac882d",
".git/objects/dd/39efae1dbea34f982f99b64f3b4c9c5a2b9fe4": "b227ad05a877cd2ac1e7cb410461799b",
".git/objects/dd/d13a393a56e52b73ae74a5738a4b2449290d97": "20785a6e279d7c726cb808296ed4eecc",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/e1/a16a9ef7bdd8603d6e876550b83a47552d7e53": "456d29cc7f860a4811e073be707aa0fb",
".git/objects/e1/cec13d01180d7566468a98ae228406c9aebdbd": "efc7ed5fa57e6fc291c84fa47e7baeb4",
".git/objects/e2/420414d3bc3296960a989b5b910f042be60aef": "32860bc764f8c9a99faccf19fc79cb95",
".git/objects/e2/45540bb582f799feb0838fe0c240ab1c84bb66": "466cbf9a2dc1e30f58dda89c02c40655",
".git/objects/e3/ba844945729a8be333d892ff6d9986d105c8d5": "2df65c5e89923c48d6c962b1e7671beb",
".git/objects/e5/8e2c5e0a506dc6ba30635ae0c470ad5c3234e5": "42b9e3343d37c5093f651305d62d8a7b",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/43ab43933e2584e1a8c96e9a9aa9bc36b47e92": "09b1b0385f39954a02aa02a4f909f6b7",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/eb/c6a79672f895d4936d14b1541461dc1e2b44a3": "5730d0fea627835bd5cb0a7d6d8535de",
".git/objects/f0/f20a63627d15d36affadb4f9c05a11798df041": "5bca51c765446e5d302e554c30bae228",
".git/objects/f1/48f759c108d0b9f722add4c3f2bf1b9598bbb5": "a85603ecd603999fb556f886bd4aa3e3",
".git/objects/f4/2db3b1a2343622ccb5ee160fc5a3c89071fa20": "368f36f7f534f44669ab3973b5720664",
".git/objects/f4/8552c557c9941fd4014175d968897980ad29b9": "ab69f334387e06ede9ea3c30a0d0a731",
".git/objects/f6/7776f36fe25472f4e414deb462425c17057b53": "1f12af8c43fcdfde5897d5efaa92abb7",
".git/objects/f6/c6c69820d59288d42654e57c715398ed76f00a": "325acfad644c6b3ff0b6a6a5916bcdf3",
".git/objects/f6/ee335e431a851a25579595fc8d1cd93d8ec83a": "0461162be82788fef74edccd889fce34",
".git/objects/f6/f4c90dae9b94b04c0b4f62cfc86c6de695e9d5": "749c639f04f9f3d3137f18df2fec0943",
".git/objects/f7/39967d8cdba2f9e1c1dbe4e8241b8571008d60": "26fce74fbfab2a735c0f6d3acc4e5d25",
".git/objects/fa/7a9a7019ed8f284b38a8d572e5e3a2f8af6ada": "ea204ab018a198e4f10b53fa2e2a3e2a",
".git/objects/fd/0d7ab20641aa9de5ea834fdd22251811ca82bf": "fd2c362707d6cbe512869840bed9aa55",
".git/objects/fe/8969480ce6e1fd7c40f4bc30c2ccf80c34e030": "3d8ff853cb0de23b3337bf6d3570912e",
".git/objects/ff/30f8dc3039805b9ebf77288e9d8eec6521673f": "a1c5c76d585b0d0acac853b475284f02",
".git/ORIG_HEAD": "def62c7bf40b653f9a46b5eec6d3f72c",
".git/refs/heads/master": "f5ff52ba745aa7ea0c42b7f499ecfb5f",
".git/refs/remotes/origin/master": "f5ff52ba745aa7ea0c42b7f499ecfb5f",
"assets/AssetManifest.json": "b3c8f9dc982413a8bd383405b434c1e2",
"assets/assets/bg_img/1.jpg": "0d127b97c4475ff3dc70c7ce5060d73f",
"assets/assets/bg_img/2.jpg": "f2f15d8b063d927129e3d1e3a8aa9078",
"assets/assets/bg_img/3.jpg": "2609ff30cea715f0b298db7b7a74208f",
"assets/assets/bg_img/4.jpg": "65b279ca522032cf8607872f442de44d",
"assets/assets/bg_img/5.jpg": "f56d468787b87119691985b6ec67451f",
"assets/assets/bg_img/6.jpg": "1bb707f5d22577a7ad09d9a45a18d238",
"assets/assets/bg_img/7.jpg": "eaf067915d2aa42603e1c05491c285ce",
"assets/assets/bg_img/8.jpg": "2dcb8ba684bdf0fca8a67930c8cf5e25",
"assets/assets/bg_img/9.jpg": "2b779d29cbf402ac08f37bd8fbccd68b",
"assets/assets/bg_img/cart1.jpg": "57c5e9436cd1ab8705d9e761d8cd8a58",
"assets/assets/bg_img/cart2.jpg": "a0399de7aaccad4ca80d615a0aa4b95f",
"assets/assets/bg_img/cart3.jpg": "06ec6871b5880bec7cb9038ebe6e3740",
"assets/assets/core_img/cart.png": "ec671ecf4dabc6a6c884df53900eaf85",
"assets/assets/core_img/favicon.ico": "f732b9bf02f87844395c3a78b6180a7e",
"assets/assets/core_img/favorites.png": "27a9d0006b18afbe5d32a9ff4d3a368f",
"assets/assets/core_img/logo.png": "a76f74e6b033cc3d61db3b09cf654414",
"assets/assets/core_img/logo2.png": "ab550f7ccc1f5df1a2a9a2fc5cf0c432",
"assets/assets/core_img/paypal.png": "f98bdfb4ac0896070044e890ac7eb986",
"assets/assets/core_img/search.png": "460c636741e32cd53250ea087865b7da",
"assets/assets/icon/four_square.png": "2bfa5c5e5af3993e3ba126ca4ea3e43e",
"assets/assets/product_img/pro-big-1.jpg": "dbffe2bf4bc0eabb6a05b7a9c2ba0807",
"assets/assets/product_img/pro-big-2.jpg": "4c1f54df81a3295fdb65541e7f7309e0",
"assets/assets/product_img/pro-big-3.jpg": "b0a32507d30aad5a6014c53d5adc24d7",
"assets/assets/product_img/pro-big-4.jpg": "1ea8966c43cc2f1091c2216b19c71c54",
"assets/assets/product_img/product1.jpg": "afade9e9018c63ab9cb310131c223397",
"assets/assets/product_img/product2.jpg": "3d22fdc62ec7c6e529580bd26789cb8d",
"assets/assets/product_img/product3.jpg": "2675550aa31a5b9bc68f7047fb620b9b",
"assets/assets/product_img/product4.jpg": "04a578c83fe2adb704b4e9e4b60af1b6",
"assets/assets/product_img/product5.jpg": "0f13ffdbaa9a75209b4660f43ac4bf8a",
"assets/assets/product_img/product6.jpg": "0a4f96042e0abdc4382b981bc9d69ef6",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "50526ce19eca1e9c8516ac97d40d6fc8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1722d5cf2c7855862f68edb85e31f88",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "613e4cc1af0eb5148b8ce409ad35446d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dd3c4233029270506ecc994d67785a37",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "8651b2d11268602217a3e040f0dff403",
"/": "8651b2d11268602217a3e040f0dff403",
"main.dart.js": "56c7b9ef738d6832f31e77c792fbcab3",
"manifest.json": "c17fd5f0f2a86f512a84dc7fe6f2f5b2",
"README.md": "6824b5ad5e5b09740de0b64d2e23e425",
"version.json": "a8c9258abd34875dd1c1bbc216a3d916"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
