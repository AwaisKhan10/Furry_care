// ignore_for_file: prefer_typing_uninitialized_variables

class CustomAuthResult {
  bool? status;
  String? errorMessage;
  var user;

  CustomAuthResult({this.status, this.errorMessage, this.user});
}
