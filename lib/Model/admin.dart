class Admin {
  static List<Admin> getAdmin() => [
        Admin(
          "Stone Cold ",
          " www",
          "../assets/Steve_Austin_2.jpeg",
        ),
        Admin(
          "under taker ",
          " www",
          "../assets/undertaker2.jpg",
        ),
        Admin(
          "Jake Jackson ",
          " www",
          "../assets/slade2.jpeg",
        )
      ];

  String name;
  String email;
  String profilePic;

  bool markAsRead = false;

  Admin(this.name, this.email, this.profilePic);
}
