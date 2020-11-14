class OssToken {
  String tempAk;
  String tempSk;
  String securityToken;
  String expiration;

  OssToken({this.tempAk, this.tempSk, this.securityToken, this.expiration});


  OssToken.fromJson(Map<String, dynamic> json) {
    tempAk = json['AccessKeyId'];
    tempSk = json['AccessKeySecret'];
    securityToken = json['SecurityToken'];
    expiration = json['Expiration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AccessKeyId'] = this.tempAk;
    data['AccessKeySecret'] = this.tempSk;
    data['SecurityToken'] = this.securityToken;
    data['Expiration'] = this.expiration;
    return data;
  }
}