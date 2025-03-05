import '../model/ride/ride.dart';
import '../service/rides_service.dart';

abstract class RidesRepository {
  List<Ride> getRides(RidesFilter? filter);
}