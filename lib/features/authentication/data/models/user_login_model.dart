//


class UserLoginModel{
  String? userid;
  String? token;
  bool? status;

  UserLoginModel({required this.userid,required this.token,required this.status});

  factory UserLoginModel.fromJson(Map<String,dynamic>json){
    return UserLoginModel(
        userid:json["status"]==true? json["user"]:null,
        token:json["status"]==true? json["token"]:null,
        status: json["status"],
    );
  }



}

// class UserLoginModel{
//   String? token;
//   Data? data;
//
//   UserLoginModel({required this.token,required this.data});
//   factory UserLoginModel.fromJson(Map<String,dynamic>json){
//     return UserLoginModel(token: json["token"], data: Data.fromJson(json["data"]));
//   }
// }
// class Data {
//   /*{
//     "data": {
//         "_id": "644ff4a799de5432e6716496",
//         "firstName": "joe",
//         "lastName": "hassan",
//         "userName": "joe11111",
//         "password": "$2b$10$oUyxgUHCin2vQJkVRVQVu.XQmHik43mV0F4V3RfYAlllTC533OqH.",
//         "email": "joe@mail.com",
//         "phone": "012031465454",
//         "balance": 0,
//         "history": [],
//         "createdAt": "2023-05-01T17:19:35.328Z",
//         "updatedAt": "2023-05-01T17:19:35.328Z",
//         "cardNumber": "5272631538848388",
//         "__v": 0
//     },
//     "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NDRmZjRhNzk5ZGU1NDMyZTY3MTY0OTYiLCJpYXQiOjE2ODI5Nzk5NTIsImV4cCI6MTY4Mjk3OTk1N30.ST9gUJ9IIi3HWMIRU_d4hScgV6hk2tgB71x_fKqWfdM"
// }*/
//   String id;
//   String firstName;
//   String lastName;
//   String userName;
//   String password;
//   String phone;
//   String email;
//   dynamic balance;
//   String createdAt;
//   String updatedAt;
//
//
//   Data(
//       {required this.id, required this.firstName, required this.lastName, required this.userName, required this.password,
//         required this.phone, required this.email, required this.balance, required this.createdAt, required this.updatedAt});
//
//   factory Data.fromJson(Map<String, dynamic>json)
//   {
//     return Data(
//         id: json["_id"],
//         firstName: json["firstName"],
//         lastName: json["lastName"],
//         userName: json["userName"],
//         password: json["password"],
//         phone: json["phone"],
//         email: json["email"],
//         balance: json["balance"],
//         createdAt: json["createdAt"],
//         updatedAt: json["updatedAt"]);
//   }
//
// }