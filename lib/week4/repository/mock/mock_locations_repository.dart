
import 'package:flutterstrat/week4/model/ride/locations.dart';
import 'package:flutterstrat/week4/service/location_service.dart';
class MockLocationsRepository implements LocationsRepository {
  @override
  Future<List<Location>> getLocations() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      Location(name: "Phnom Penh", country: Country.cambodia),
      Location(name: "Siem Reap", country: Country.cambodia),
      Location(name: "Battambang", country: Country.cambodia),
      Location(name: "Sihanoukville", country: Country.cambodia),
      Location(name: "Kampot", country: Country.cambodia),
    ];
  }
}