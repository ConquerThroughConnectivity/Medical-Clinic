'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "119b4d467b01ec77c8639429c4637b3c",
"assets/AssetManifest.bin.json": "dd3d7fdbc5462ec351abbf63bd9cc129",
"assets/AssetManifest.json": "e4e5f4977ee58db5e3b67f151344e0fd",
"assets/FontManifest.json": "b1516803c3ad4852a94ca702ef3ecaff",
"assets/fonts/MaterialIcons-Regular.otf": "13bafa2fa5c2d8e2c00d86b66527d5ce",
"assets/lib/Assets/appointments.png": "7560b40a637335eca970e62f2dd30d53",
"assets/lib/Assets/background.png": "5d97f07260514eca00cafeebf78c1aea",
"assets/lib/Assets/background1.jpg": "57d39a29225d570403e56ed1bced7f7a",
"assets/lib/Assets/background2.jpg": "08148e240055410aa551318fb1853ca8",
"assets/lib/Assets/background3.jpg": "2d83f565894ec19b23b684d991bfeeee",
"assets/lib/Assets/background4.jpg": "7e55ec3ec3d812ecb52e264bec8b89d4",
"assets/lib/Assets/dashboard.png": "43c56863e388f0ce3f668b830795d0d2",
"assets/lib/Assets/diagnose.png": "3c28a8cfb956fdb184ca6387e8992e17",
"assets/lib/Assets/doctors_background.png": "a793a0232a7622d4beb95ded7c79922b",
"assets/lib/Assets/google.png": "937c87b4439809d5b17b82728df09639",
"assets/lib/Assets/medical-history.png": "dd26e952188aff0b4a3cf84e7fabbb9c",
"assets/lib/Assets/medical-records.png": "8efd141b00bd3c6fdfff8b40b9f5ec12",
"assets/lib/Assets/medications.png": "485b59029ebe59591b824f8ecf3f7141",
"assets/lib/Assets/message.png": "9e3d60ed11d4533d6a301c714e56b112",
"assets/lib/Assets/messages.png": "66ef5cec62855960d3e61fdfbde45bf3",
"assets/lib/Assets/notification.png": "c07febcc046a0268811b671c5ebf7822",
"assets/lib/Assets/patients.png": "d68408342b9ee1424b3a83bc8e57843a",
"assets/lib/Assets/prescription.png": "668831a8e0aedd0119a3830bff6a0db5",
"assets/lib/Assets/total_appointments.png": "4916fff04023c053751beaa947bf9b10",
"assets/lib/Assets/total_counselling.png": "0d22771bf8e7a69eefa2aab08a041c50",
"assets/lib/Assets/total_patients.png": "255ca9afae6e45c78455d7b7260e2220",
"assets/lib/Assets/total_today.png": "5ecd8211846a14e7aa279842cccee3a6",
"assets/lib/Assets/total_walkin.png": "e059ffd8806ffd0a7763a623186abf0c",
"assets/lib/Assets/treatment.png": "13652fa6db0c48932a1332de45350fe2",
"assets/lib/Assets/vertical_menu.png": "0c324c2a3ac73374165a5040396741d2",
"assets/NOTICES": "9f343c86552f7ab3cd20019ae48ad579",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/eva_icons_flutter/lib/fonts/Eva-Icons.ttf": "b3cfd6832181cbaa3c98988c49d34641",
"assets/packages/hugeicons/lib/fonts/hgi-stroke-rounded.ttf": "e229171793d302e94bf35bb33b312b3a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "481905a48c38b93ea686ae972e1fb7fe",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "16940691ce760f039b1680313bfe242c",
"/": "16940691ce760f039b1680313bfe242c",
"main.dart.js": "fbde2c1e53de3a39fc1932ed3723779a",
"manifest.json": "ce5fcee63c1c326bcdfddeeb5d7c02d2",
"version.json": "56aa8aa9d79e14c55cf3cf8cd63dc6e1"};
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
