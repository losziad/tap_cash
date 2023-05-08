class UserRegisterModel{
  String? userid; // called data in json response file
  String? token;
  bool? status;

  UserRegisterModel({required this.userid,required this.token,required this.status});

  factory UserRegisterModel.fromJson(Map<String,dynamic>json)
  {
    return UserRegisterModel(
      userid:json["status"]==true? json["data"]:null,
      token:json["status"]==true? json["token"]:null,
      status: json["status"],
    );
  }



}