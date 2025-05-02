enum Gender { male, female, other }

class UserRegistration {
  final String email;
  final String name;
  final DateTime birthDate;
  final Gender gender;

  UserRegistration({
    required this.email,
    required this.name,
    required this.birthDate,
    required this.gender,
  });
}
