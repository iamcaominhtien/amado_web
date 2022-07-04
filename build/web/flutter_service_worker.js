'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
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
"index.html": "ad3f8741a2276cbf00c6154a9d67b081",
"/": "ad3f8741a2276cbf00c6154a9d67b081",
"main.dart.js": "7a0fcb338c6b264fa544eb723db47252",
"manifest.json": "c17fd5f0f2a86f512a84dc7fe6f2f5b2",
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
