import 'package:flutterstrat/week4/model/ride_pref/ride_pref.dart';
import 'package:flutterstrat/week4/repository/ride_respository.dart';
import '../model/ride/ride.dart';

////
///   This service handles:
///   - The list of available rides
///
class RidesService {
  static final RidesService _instance = RidesService._internal();
  late RidesRepository _repository;
  RidesService._internal();

  factory RidesService() {
    return _instance;
  }

  void initialize(RidesRepository repository) {
    _repository = repository;
  }

  List<Ride> getRides(RidesFilter? filter) {
    return _repository.getRides(filter);
  }

  static List<Ride> getRidesFor(RidePreference currentPreference) {
    return [];
  }
}
// class to filter

class RidesFilter {
  final bool acceptPets;

  RidesFilter({required this.acceptPets});
}
