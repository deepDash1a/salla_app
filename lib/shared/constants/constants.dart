import 'package:flutter/material.dart';
import 'package:salla_app/modules/login_screen/Login_screen.dart';
import 'package:salla_app/shared/components/components.dart';
import 'package:salla_app/shared/network/local/shared_preferences/cache_helper.dart';

const defultApplicationColor = Colors.teal;
String? token;

void signOut(context) {
  CacheHelper.removeData(key: 'token').then((value) {
    navigateAndFinish(context, LoginScreen());
  });
}
