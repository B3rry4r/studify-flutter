class User {
  final String id;
  final String name;
  final String email;
  final String token;
  final String role;

  User(this.name, this.email, this.token,
      {required this.id, required this.role});
}
