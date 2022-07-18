'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "50e5fcb1409c8423a7746c14dea6ad51",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/images/airplane.png": "60d4ea42df95d6e673976274081b9a84",
"assets/images/bar_chart_img.png": "56300a992634663a3fb3c67d661b36c2",
"assets/images/log-out.png": "4c402961557c0bc0aa02340dbd476e7e",
"assets/images/login_image.png": "bc7a226858aa2993b9bfc0dfc6b7ea71",
"assets/images/main_bottom.png": "322c8b4cda43fe21e0d78a1f30f387ce",
"assets/images/main_top.png": "cd3220e276bb9dee0a1c7d18126aad72",
"assets/images/Splash_screen.png": "7ce122b75d5b7f01f6578060f14450fd",
"assets/img/balloning.png": "6746e49804159d23df9d26de99a4d182",
"assets/img/booking-image.jpg": "416052d93c5d3b775e7f3d8d7d62a141",
"assets/img/button-one.png": "616242784017d71a8782510f851d5aed",
"assets/img/emotion/emotion-1.jpg": "a7b00826ed3f989d1ee79878d172ad8c",
"assets/img/emotion/emotion-10.jpg": "4d56166bf1150fb886b36a27af6e6142",
"assets/img/emotion/emotion-2.jpg": "a653af9a6df61419a432839ef669ac94",
"assets/img/emotion/emotion-3.jpg": "cf811e426b6214debd28f367481ea937",
"assets/img/emotion/emotion-4.jpg": "11524d055c413245613a52971ccb672e",
"assets/img/emotion/emotion-5.jpg": "fcbd9669e752ac151b4e214117ede862",
"assets/img/emotion/emotion-6.jpg": "5ece3bddb3a39f13977bcd537dc1f219",
"assets/img/emotion/emotion-7.jpg": "551797c77b13437a214c80de4c0e12ea",
"assets/img/emotion/emotion-8.jpg": "1b30fe0cadfd8e626bfae7ee248c5e18",
"assets/img/emotion/emotion-9.jpg": "2dd0be310af8058888a4a2dc90e55065",
"assets/img/emotion/trip-1.jpg": "ad12d5893f0746715a36c078bbd27405",
"assets/img/future.png": "8554294d50bed99f55a294aef9e1188b",
"assets/img/hiking.png": "adfbed5e077f55d12db41e7e9f127e11",
"assets/img/home-icon.jpg": "b8bcb57422c0de51868244e591b741c6",
"assets/img/home_icon.png": "5d11224f2ba214db7a5ad6b971dac622",
"assets/img/insp_images/insp-1.png": "4115473ee255fb836db333b8c408f973",
"assets/img/insp_images/insp-2.jpg": "a281394952aa2ecc519d7e45e4010334",
"assets/img/insp_images/insp-3.jpg": "84faffc504e60a2b69b189fb66e9b60a",
"assets/img/insp_images/insp-4.jpg": "f89d5e8412fe5fd92153b0b940ab042f",
"assets/img/insp_images/insp-5.png": "b7b993bccc8464b3f88815169724006b",
"assets/img/insp_images/insp-6.jpg": "b408303d7104f49298ad3782b9c18788",
"assets/img/insp_images/insp-7.jpg": "2f86cbb7daac0e9d4de1eeb2c65089c9",
"assets/img/kayaking.png": "8ba458a42add0997f777a846f0943d5e",
"assets/img/mountain.jpeg": "e95546993902d8ca8958e85721c11d47",
"assets/img/snorkling.png": "359cad2a9eebf0eccb48aa1e4ca69e09",
"assets/img/welcome-one.png": "faa7052c4df252645f64877c48e60642",
"assets/img/welcome-three.jpg": "2bd0506020a0a337b210943f6a573ce2",
"assets/img/welcome-two.jpg": "27029c492fd6e8dd64cf0bb95ddd75cd",
"assets/NOTICES": "f3d98cd02a2a1c3b0b36a9f085e1309c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e233a797c343da973593139ac54564ed",
"/": "e233a797c343da973593139ac54564ed",
"main.dart.js": "b0149015767bb2a4dc68b7f9c96c240e",
"manifest.json": "a78d14d3cd6d2fbdd9a6a8062fc9ef0f",
"splash/img/dark-1x.png": "3925274d5110508f18770084c0497d34",
"splash/img/dark-2x.png": "a83a91103c72c89da7c152413becbab3",
"splash/img/dark-3x.png": "fa65b6dc656fd8ab56e34d381dd7d04c",
"splash/img/dark-4x.png": "f6da997044ec17eb867ebd0cbed3fb19",
"splash/img/light-1x.png": "3925274d5110508f18770084c0497d34",
"splash/img/light-2x.png": "a83a91103c72c89da7c152413becbab3",
"splash/img/light-3x.png": "fa65b6dc656fd8ab56e34d381dd7d04c",
"splash/img/light-4x.png": "f6da997044ec17eb867ebd0cbed3fb19",
"splash/splash.js": "f6ee10f0a11f96089a97623ece9a1367",
"splash/style.css": "3f16d13af68cf91832b806598fad7837",
"version.json": "f5c0c1a6689a2927de376b0895f4a733"
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
