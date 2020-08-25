import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;
  Location({this.latitude, this.longitude}) {
    latitude = this.latitude;
    longitude = this.longitude;
  }
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (Exception) {
      print(Exception);
    }
  }
}
