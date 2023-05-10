class CreditCardModel {
  String? message;
  String? cardNumber;

  CreditCardModel({this.message, this.cardNumber});

  CreditCardModel.fromJson(Map<String, dynamic> json) {
    message = json['message']==null?"": json['message'];
    cardNumber = json['cardNumber']==null?"": json['cardNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['cardNumber'] = this.cardNumber;
    return data;
  }
}