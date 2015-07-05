/*
 * This file is licenced CC0 http://creativecommons.org/publicdomain/zero/1.0/
 *
 */

/* create the leaflet map */
var map = L.map('map');

/* remove Leaflet attribution */
map.attributionControl.setPrefix('');

map.fitBounds([
        [-45, 108],
        [-7, 165]
]);


/* use OSM as the base map */
var access_token = 'pk.eyJ1IjoiYW5kcmV3aGFydmV5NCIsImEiOiI5ZjY4N2YzNzI1N2U2ZGY5NWI1MzdjODk2ZmQzZDcxNyJ9.nQ4BtbCVanXNYImI29T4kQ';

/* use OSM as the base map */
L.tileLayer('https://api.tiles.mapbox.com/v4/mapbox.light,alantgeo-presales.650e55dc/{z}/{x}/{y}@2x.png?access_token=' + access_token, {
        maxZoom: 18,
        attribution: 'Base map <a href="https://www.mapbox.com/about/maps/" target="_blank">&copy; Mapbox</a> <a href="http://www.openstreetmap.org/about/" target="_blank">&copy; OpenStreetMap</a>; Overlay based on Australian Natural Hazards Data Archive &copy; Geoscience Australia CC BY 4.0'
        }).addTo(map);

