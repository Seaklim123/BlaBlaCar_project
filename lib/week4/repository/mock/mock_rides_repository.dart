import 'package:flutterstrat/week4/repository/ride_respository.dart';
import '../../model/ride/ride.dart';
import '../../service/rides_service.dart';
import '../../model/ride/locations.dart';
import '../../model/user/user.dart';

class MockRidesRepository implements RidesRepository {
  final List<Ride> _rides = [
    Ride(
      departureLocation: Location(name: "Battambang", country: Country.cambodia),
      departureDate: DateTime.now(),
      arrivalLocation: Location(name: "Siem Reap", country: Country.cambodia),
      arrivalDateTime: DateTime.now().add(Duration(hours: 2)),
      driver: User(
        firstName: "Kannika",
        lastName: "Sok",
        email: "kannika@example.com",
        phone: "012345678",
        profilePicture: "path/to/image.jpg",
        verifiedProfile: true,
        ),
      availableSeats: 2,
      pricePerSeat: 5.0,
      acceptPets: false,
    ),
    Ride(
      departureLocation: Location(name: "Battambang", country: Country.cambodia),
      departureDate: DateTime.now(),
      arrivalLocation: Location(name: "Siem Reap", country: Country.cambodia),
      arrivalDateTime: DateTime.now().add(Duration(hours: 2)),
      driver: User(
        firstName: "Limhao",
        lastName: "Chen",
        email: "limhao@example.com",
        phone: "098765432",
        profilePicture: "path/to/image.jpg",
        verifiedProfile: true,
        ),
      availableSeats: 2,
      pricePerSeat: 5.0,
      acceptPets: true,
    ),
  ];

  @override
  List<Ride> getRides(RidesFilter? filter) {
    if (filter == null) return _rides;
    return _rides.where((ride) => ride.acceptPets == filter.acceptPets).toList();
  }
}
