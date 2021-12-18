import 'package:course_edtech_mobile_app/views/home_view.dart';
import 'package:course_edtech_mobile_app/views/login_view.dart';
import 'package:course_edtech_mobile_app/views/product_detail_view.dart';
import 'package:course_edtech_mobile_app/views/profile_view.dart';
import 'package:course_edtech_mobile_app/views/settings_view.dart';
import 'package:course_edtech_mobile_app/views/signup_view.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:SignUpView(),
    );
  }
}