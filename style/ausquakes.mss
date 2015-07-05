#Oz_event_set {
  /* don't draw outlines around the marker dots */
  marker-line-width: 0;

  /* just draw all markers, even if overlapping */
  marker-ignore-placement: true;
  marker-allow-overlap: true;

  /* use Mw for marker width */
  marker-width: [Mw]*3;
  //marker-width: [depth];

  marker-opacity: 0.2;
  
  marker-fill: #d90000;
  
/*
  [zoom >= 15] { marker-width: 3.16228; }
  [zoom >= 16] { marker-width: 5; }
  [zoom >= 17] { marker-width: 7.90569; }
  [zoom >= 18] { marker-width: 12.5; }
  [zoom >= 19] { marker-width: 19.7642; }
  [zoom >= 20] { marker-width: 31.25; }
  [zoom >= 21] { marker-width: 49.4106; }
  [zoom >= 22] { marker-width: 78.125; }
  
*/
}
