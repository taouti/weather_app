import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  static void getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
    } catch (e) {
      print(e);
    }
  }
}
