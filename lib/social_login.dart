library social_login;

import 'package:flutter/cupertino.dart';
import 'package:social_login/login_page.dart';

class SocialLogin {
  /// Returns [LoginPage].
  Widget auth(Widget nextPage){
    return LoginPage(nextPage);
  }
}
