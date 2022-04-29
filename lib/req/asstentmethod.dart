import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:uberr/models/adress.dart';
import 'package:uberr/providers/walkthrough_provider.dart';
import 'package:uberr/req/requestass.dart';

class Assistentmethod {
  static Future<String> searchcordinateadress(
      Position position, context) async {
    String placeadress = "";
    String st1, st2, st3, st4;
    var url = 'maps.googleapis.com';
    var uri = 'maps/api/geocode/json?';
    Map<String, dynamic> q = {
      'latlng': '${position.latitude},${position.longitude}',
      'key': 'AIzaSyB9VKBcBFkdYt2_lAM0zEkfto6AJvyMn0c'
    };

    var respose = await Requestassis.getrequest(url, uri, q);

    if (respose != "failed") {
      st1 = respose["results"][0]["address_components"][3]["long_name"];
      st2 = respose["results"][0]["address_components"][4]["long_name"];
      st3 = respose["results"][0]["address_components"][5]["long_name"];
      st4 = respose["results"][0]["address_components"][6]["long_name"];
      placeadress = st1 + " " + st2 + " " + st3 + " " + st4;
      Adress userpickupadress = Adress(
          latitude: 0.0,
          longitude: 0.0,
          placeformatedadress: '',
          placeid: '',
          placename: '');
      userpickupadress.latitude = position.latitude;
      userpickupadress.longitude = position.longitude;
      userpickupadress.placename = placeadress;

      Provider.of<WalkthroughProvider>(context, listen: false)
          .updatepikuplocationadress(userpickupadress);
    }
    return placeadress;
  }
}
