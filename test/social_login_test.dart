import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:social_login/social_login.dart';

void main() {
  test('return widget', () {
    Widget firstPage = Text(
      'Hello, world!'
    );
    final loginPage = SocialLogin().auth(firstPage);
    expect(loginPage is Widget, true);
  });
}
