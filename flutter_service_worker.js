'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/NOTICES": "9f998668091cd2761637911463e556e7",
"assets/assets/images/dungeon.png": "ef05b7352dc3f7001ed2cd711ab3dd13",
"assets/assets/images/items/table.png": "5e22fb237c60943f46ba18d5e176c10c",
"assets/assets/images/items/barrel.png": "dc4d5a9e456b6f1c6ec6fdcc66af7727",
"assets/assets/images/items/bookshelf.png": "ce2fc17cb8251da9966a3e91bb0b2272",
"assets/assets/images/items/chest_spritesheet.png": "bcc8785d27d816e23eca114dd4e708ed",
"assets/assets/images/items/potion_life.png": "825b71a3532854e849d512683dba06b0",
"assets/assets/images/Enemy/demon_cyclop_idle.png": "00b3596100ab996066b0d3c39adb4c8f",
"assets/assets/images/Enemy/demon.tsj": "ddb23d6308737219b9ef252523fba983",
"assets/assets/images/Enemy/demon_cyclop_walk.png": "46960b161fbb02eabacd7a6b8623152f",
"assets/assets/images/Enemy/Boss.png": "ad699c038419e64e0370c2cde2e0bb5c",
"assets/assets/images/Enemy/Dark_Ninja_tiled.tsj": "c7e9f08e99e85963883e2797eca5418f",
"assets/assets/images/Enemy/dark_ninja.png": "f19ba8bb27823dac96816bb91e83fe56",
"assets/assets/images/Road1.json": "1ccb24ba4a0da9594cb938b08720474c",
"assets/assets/images/Player/Picktorch/knight_idle_Light.png": "1d15cc79b05492e91592594bf128f262",
"assets/assets/images/Player/Picktorch/knight_idle_Light_left.png": "ebfda3c8cc9164adbab05bf8482f4a4e",
"assets/assets/images/Player/Joystick/sword.png": "285b24143396ec3fc33eff58a510cb68",
"assets/assets/images/Player/Joystick/shuriken_single.png": "ddb8b0fc05046946bb2f9c7ee4afe9c6",
"assets/assets/images/Player/MainMovement/knight_run.png": "95ba8d0ea29505a5d398fc3b1fbb4d53",
"assets/assets/images/Player/MainMovement/knight_idle_left.png": "0acef6efb596513d9c9c8d9ea8c87c29",
"assets/assets/images/Player/MainMovement/knight_idle.png": "a80c12acc3ae7beeddfa6ca40b8eafb8",
"assets/assets/images/Player/MainMovement/knight_run_left.png": "3ade22dc8c3f544d3d26fdce72b8b74c",
"assets/assets/images/image_Interface/Coffee_in_rain.gif": "e90514458349a0beb2e75873ccac1ea9",
"assets/assets/images/image_Interface/Pause.png": "6e3fac1e2a8cbaf14d31efc5afbf1827",
"assets/assets/images/image_Interface/BG.gif": "08cdfe92d4f2ca99ed854b51a0c3b007",
"assets/assets/images/6.jpg": "b88f1877b93800ebda2e0413d153a742",
"assets/assets/images/NPC/wizard_idle.png": "b05bbd5361ae3eac51138a70c8278efc",
"assets/assets/images/NPC/Wizard_oldMan.tsj": "0db095b7f9bae416810f565a3ea6db8e",
"assets/assets/images/DashGame.json": "6ae2830e3c3dc74bcb1002ab3ad18001",
"assets/assets/images/0x72_DungeonTilesetII_v1.3.png": "99ee27544da829bed54efd1f22e5a588",
"assets/assets/images/0x72_DungeonTilesetII_v1.json": "5037c4977d6e032fb4f9802c4f21e8ad",
"assets/assets/images/Interface/torch.tsj": "a9030d8afe3d77a497d8e1ca4335be4f",
"assets/assets/images/Interface/torch_spritesheet.png": "858f57abd642f0303de50d719532f198",
"assets/assets/images/Interface/Plants/Terran.png": "c868df8fc234166f41abe7e1a7d704d9",
"assets/assets/images/Interface/Plants/earth.tsj": "216224788045de62d5dbdfe9730f00ed",
"assets/assets/images/Interface/Plants/Baren.png": "6080d87a1bcd4be6e0409c45c7a69316",
"assets/assets/images/Interface/Plants/Lava.png": "eb4cc9622801c2bea4b059f43546b768",
"assets/assets/images/Interface/Plants/Ice.tsj": "d171d2d50b80dd74fe2e5cafb43c7c79",
"assets/assets/images/Interface/Plants/Ice.png": "0674371de75384ebbbb4162aad8ad6cb",
"assets/assets/images/Interface/Plants/Lava.tsj": "1da2e9907d8b388f58ec2f2bf18212c6",
"assets/assets/images/Interface/Plants/Baren.tsj": "707f14456308b2c2ad88ceec83bf212f",
"assets/assets/images/Interface/player_Interface/health_ui.png": "1a34671c43b31f89555040cc2fe51027",
"assets/assets/images/Effects/shuriken.png": "4738d8e83d70448d3efd5ee31d73b762",
"assets/assets/images/Effects/circular_slash.png": "aaa8e5d680cea5a3dc096090c1a5133a",
"assets/assets/images/Effects/cut.png": "71ae514db32c258bb46cbbf9dcb22de3",
"assets/assets/images/Effects/big_energy_ball.png": "d131b0a7f58e78f7afeb63c85807c032",
"assets/assets/images/Effects/smoke.png": "88fb92e93a7f5e83e5d183289b22e1f3",
"assets/assets/Fonts/Playfair-VariableFont_opsz,wdth,wght.ttf": "e97442db1d760dac177957237c05b549",
"assets/assets/audio/power_up.wav": "ff3889e3b80d9455a2ebf1415d3e7f5c",
"assets/assets/audio/SpaceSound.wav": "d60caa4a1ec1b25635505c530a11fd61",
"assets/assets/audio/Rain_Noise.wav": "b18aa6bb1aa583c086cd573ff4eb52d3",
"assets/AssetManifest.json": "a5deb7494fe422614e576adcec399c6d",
"assets/FontManifest.json": "7e3c3a4d127cbe9757d4e62b9860dbb7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"index.html": "3a31b6ad468e332fdd7a372fea0b135f",
"/": "3a31b6ad468e332fdd7a372fea0b135f",
"main.dart.js": "f3dfb41cb4f2049a88a454365c3f5dd2",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"version.json": "297d1b44aaac0fb2bc1a1f280fb86569",
"manifest.json": "de3697febc1c895f1ea4734e0e2655f9",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
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
