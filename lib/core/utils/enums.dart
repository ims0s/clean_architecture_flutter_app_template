// ignore_for_file: constant_identifier_names

//otp entity type
const String User = "users";
const String Post = "posts";
enum OtpEntityType {
  POST,USER
}

extension OtpEntityTypeExtension on OtpEntityType{
  String getValue (){
    switch(this){
      case OtpEntityType.POST:
        return Post;
      case OtpEntityType.USER:
        return User;
    }
  }

  OtpEntityType getEnum(String string){
    switch (string){
      case User:
        return OtpEntityType.USER;
      case Post:
        return OtpEntityType.POST;
      default: 
      return OtpEntityType.USER;
    }
  }
}