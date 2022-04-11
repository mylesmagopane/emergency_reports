class User {
  static List<User> getUsers() => [
        User(
            " ",
            " ",
            "Stone Cold ",
            " www",
            "theft ",
            "../assets/Steve_Austin_2.jpeg",
            "12-10-2021",
            "56 Ave, NewYork, USA",
            "Rocky Stone", []),
        User(
            " ",
            " ",
            "under taker ",
            " www",
            "voodoo ",
            "../assets/undertaker2.jpg",
            "15-02-2020",
            "2259 BroadwayStreet, Califonia, USA",
            "Benson Awesome", []),
        User(
            "",
            " ",
            "slade wilson ",
            " www",
            "Violence ",
            "../assets/slade2.jpeg",
            "28-08-2008",
            "29 SixthAvenue, Sanfransico, USA",
            "Avarage Joe", []),
        User(
            "",
            " ",
            "Skizo ",
            " www",
            "goto ",
            "../assets/slade2.jpeg",
            "28-08-2008",
            "29 SixthAvenue, Sanfransico, USA",
            "Avarage Joe", []),
      ];

  String reportNum;
  String reportDescription;
  String name;
  String address;
  String cases;
  String profilePic;
  String date;
  String location;
  String witness;
  List<String> images;

  bool markAsRead = false;

  User(
      this.reportNum,
      this.reportDescription,
      this.name,
      this.address,
      this.cases,
      this.profilePic,
      this.date,
      this.location,
      this.witness,
      this.images);
}
