import 'package:flutterstrat/week4/model/ride/locations.dart';

class LocationService {
  final LocationsRepository repository;

  LocationService({required this.repository});

  Future<List<Location>> fetchLocations() {
    return repository.getLocations();
  }
}

abstract class LocationsRepository {
  Future<List<Location>> getLocations();
}