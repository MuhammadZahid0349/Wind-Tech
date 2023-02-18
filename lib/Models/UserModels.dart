class UserModel {
  String? uid;
  String? userEmail;
  String? userPassword;
  String? userName;
  String? userAge;
  String? userBirthday;
  String? userLanguage;
  String? userGender;
  String? userPicture;
  List? selectedTopic;
  bool? iscompleted = false;

  UserModel(
      {this.iscompleted,
      this.uid,
      this.userEmail,
      this.userPassword,
      this.userName,
      this.userAge,
      this.userBirthday,
      this.userLanguage,
      this.userGender,
      this.userPicture,
      this.selectedTopic});

  UserModel.fromMap(map) {
    selectedTopic = map["selectedTopic"];
    iscompleted = map["iscompleted"];
    userGender = map["userGender"];
    userEmail = map["userEmail"];
    uid = map["uid"];
    userPassword = map["userPassword"];
    userName = map["userName"];
    userAge = map["userAge"];
    userBirthday = map["userBirthday"];
    userLanguage = map["userLanguage"];
    userPicture = map["userPicture"];
  }
  Map<String, dynamic> toMap() {
    return {
      "selectedTopic": selectedTopic,
      "iscompleted": false,
      "uid": uid,
      "userName": userName,
      "userEmail": userEmail,
      "userPassword": userPassword,
      "userAge": userAge,
      "userBirthday": userBirthday,
      "userLanguage": userLanguage,
      "userPicture": userPicture,
      "userGender": userGender,
    };
  }
}
