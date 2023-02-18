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

  UserModel({
    this.uid,
    this.userEmail,
    this.userPassword,
    this.userName,
    this.userAge,
    this.userBirthday,
    this.userLanguage,
    this.userGender,
    this.userPicture,
  });

  UserModel.fromMap(map) {
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
