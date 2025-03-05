///
/// This model describes a  BlaBlaCar user.
///
class User {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String profilePicture;

  final bool verifiedProfile;

  User(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.profilePicture,
      required this.verifiedProfile});

// return the full name of the user
String get fullName => "$firstName $lastName";

  @override
  String toString() {
    return 'User: $fullName, Email: $email, Phone: $phone, Verified: $verifiedProfile';
  }
}