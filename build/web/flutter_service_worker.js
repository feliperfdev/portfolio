'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "97e0addbf7eb11e725d417667e295c34",
"assets/AssetManifest.bin.json": "7fd95b8e8f0c13b1866cc3b19a5e0da5",
"assets/AssetManifest.json": "6530ca030a7205157ec298efa1bb363a",
"assets/assets/fonts/Gantari/Gantari-VariableFont_wght.ttf": "8412eece32efad90fd4f72afe30e54bd",
"assets/assets/fonts/Gasoek_One/GasoekOne-Regular.ttf": "6631b2c7aa072a2c87e5f532a3b77b79",
"assets/assets/images/aibum.png": "be88ad49e530dfbf0bd56c83f2d2a369",
"assets/assets/images/financetracker.jpg": "2016e78f68f24e0b63f38eab01a2126b",
"assets/assets/images/keeplinked.png": "45d70754cd5b402300f95e8887e5fa14",
"assets/assets/images/logo.png": "8f2e1d128acf6eadb4563c2932814153",
"assets/assets/images/profile.jpg": "763fa2c4808edc958d0e75efdd9ef653",
"assets/assets/images/setlift.png": "89b3f764196b9d85c64174e698c629dd",
"assets/assets/images/tech/android_studio.png": "cdf1bc156d59eb54c30f0263191d93f8",
"assets/assets/images/tech/c.png": "623f8181c81323e831a831bd69b76d95",
"assets/assets/images/tech/cognito.svg": "4d81ae16d5ed9a129679622c9e5b128c",
"assets/assets/images/tech/cpp.png": "58393424b2ab7ba7027f214660b11677",
"assets/assets/images/tech/dart-logo.png": "c979b430b2da155059ebc0a22b0a26ac",
"assets/assets/images/tech/dynamodb.png": "8dda7e4d43922206c6a3ec52ba5db10c",
"assets/assets/images/tech/figma.png": "0fcafffa83589b10af37e916216e89f1",
"assets/assets/images/tech/firebase.png": "0271d2c6e35916cc9399994986eb5a64",
"assets/assets/images/tech/flutter-logo.png": "8a30d8878042508cfd4333b30357f8e8",
"assets/assets/images/tech/git.png": "728ff5a8e44d74cd0f2359ef0a9ec88a",
"assets/assets/images/tech/github.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/images/tech/gitlab.png": "54b1ba407fc5aab1729180b6b176b012",
"assets/assets/images/tech/java.png": "4eb1819dc863ef386e09d86e9f482a9f",
"assets/assets/images/tech/jupyter.png": "3ec9ead17c7e1902dc1d2186441a13b3",
"assets/assets/images/tech/kotlin.png": "3f3182e761cf45dcd05a2e745f917ce4",
"assets/assets/images/tech/lambda.svg": "ed1dbb7bdb7c3e3e2d390250da190150",
"assets/assets/images/tech/mysql.png": "6cba3fbc8e0227111ab52479e661ac31",
"assets/assets/images/tech/nestjs.svg": "ee9877354330a7431fb7d4faeb1cc35b",
"assets/assets/images/tech/nodejs.png": "4b549a73e713846a29f336031b64d296",
"assets/assets/images/tech/python.png": "9ae7d0c2a37c4626d2ea58f615906814",
"assets/assets/images/tech/react.png": "9adb954c74cc29b0fb13d35063deeda8",
"assets/assets/images/tech/sqlite.png": "7600ca438cdc3a6b685ab91089f28ff2",
"assets/assets/images/tech/supabase.png": "430c538c8420695788d0f2fe0b092614",
"assets/assets/images/tech/typescript.png": "542c1c5d282c9bf322470a47c7279b39",
"assets/assets/images/tech/vite.png": "599f9d11d0df11fc12d5c4f063e46513",
"assets/FontManifest.json": "35617af1a703464f71aaa7342c53dc84",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "f3267803e081c5a1a43d08b313802aa6",
"assets/packages/akar_icons_flutter/fonts/AkarIcons.ttf": "0c08e71b41fa414afb376b6fcbd2046d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "4fc035a8e9749c63bfaa704bd46242a6",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "80e3214771c0f343c4c6fcb3d5adbd95",
"/": "80e3214771c0f343c4c6fcb3d5adbd95",
"main.dart.js": "6a0b716e96e12e676417d948174d93d4",
"manifest.json": "0ee1afe4408cf3f13e6196014e564d95",
"version.json": "f0ac1bc5d46250799b4c3a0689fa55f1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
