class UserDataModel {
  int id;
  String Name;
  String Date;
  // String imgUrl;
  UserDataModel(
    this.id,
    this.Name,
    this.Date,
  );
}

List<UserDataModel> userdata = [
  UserDataModel(1, "Nick", "23 Mar 2021"),
  UserDataModel(2, "Mick", "18 May 2021"),
  UserDataModel(3, "Anjali", "23 Jun 2021"),
  UserDataModel(4, "Nasi", "21 Aug 2021"),
  UserDataModel(5, "jules", "7 Nov 2021"),
  UserDataModel(6, "Maya", "4 Dec 2021"),
];
