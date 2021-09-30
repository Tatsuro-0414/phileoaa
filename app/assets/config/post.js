let map
let geocoder
let centerp = {lat: 33.60639, lng: 130.41806}

function initMap(){
  geocoder = new google.maps.Geocoder()

  map = new google.maps.Map(document.getElementById('target'), {
    center: centerp,
    zoom: 12,
  });
  var shopimage = document.getElementById('shopimage');
  var src = shopimage.getAttribute('src');
  v
  
}

