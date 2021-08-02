import 'package:easpos/Utiles/shared_helper.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class MapHelper {
  Future<Position> getLocation() async {
    Position currentLocation;
    //  LocationPermission permission;
    // bool serviceEnabled ;
    //
    // // Test if location services are enabled.
    // serviceEnabled = await Geolocator.isLocationServiceEnabled();
    // if (!serviceEnabled) {
    //   return Future.error('Location services are disabled.');
    // }
    //
    // permission = await Geolocator.checkPermission();
    try {
      print("getting location.........");
      currentLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

      preference.writeData(CachingKey.LAT, currentLocation.latitude);
      preference.writeData(CachingKey.LONG, currentLocation.longitude);
      final coordinates = new Coordinates(currentLocation.latitude, currentLocation.longitude);
      var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
      var first = addresses.first;
      print(">>>>>>>>>>>>>>${first.featureName} : >>>>>>>>>>>>>>>${first.thoroughfare} ${first.subAdminArea}  ");
      preference.writeData(CachingKey.ADDRESS, "${first.featureName} ${first.thoroughfare} ${first.subAdminArea}"  );

    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }
}
