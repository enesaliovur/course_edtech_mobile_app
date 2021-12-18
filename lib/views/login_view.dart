import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final double dynamicWidth = MediaQuery.of(context).size.width;
    final double dynamicHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(dynamicWidth * 0.05),
        child: Column(
          children: [
            // Spacer(),
            SizedBox(
              height: dynamicHeight * 0.1,
            ),
            illustration(dynamicHeight),
            SizedBox(
              height: dynamicHeight * 0.02,
            ),
            textContent(context, dynamicHeight),

            SizedBox(
              height: dynamicHeight * 0.03,
            ),
            form(dynamicHeight, dynamicWidth),
            smallButton(),
          ],
        ),
      )),
    );
  }

  SizedBox illustration(double dynamicHeight) {
    return SizedBox(
              height: dynamicHeight * 0.3,
              child: Image.asset("assets/images/login_image.png"));
  }

  TextButton smallButton() => TextButton(onPressed: () {}, child: Text("Sign up"));

   Form form(double dynamicHeight, double dynamicWidth) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              isDense: true,
              hintText:"Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        ),
        SizedBox(
          height: dynamicHeight * 0.03,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText:"Password",
              isDense: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        ),
        TextButton(onPressed: () {}, child: Text("Forget Password?")),
        SizedBox(
            height: dynamicHeight * 0.07,
            width: dynamicWidth,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Log in"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)))))
      ],
    ));
  }

  Container textContent(BuildContext context, double dynamicHeight) {
    return Container(
            child: Column(
              children: [
                Text("Log in",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: dynamicHeight * 0.03,
                ),
                Text("Login with social networks",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: dynamicHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, size: 30, color: Colors.blue),
                    Icon(Icons.facebook, size: 30, color: Colors.blue),
                    Icon(Icons.facebook, size: 30, color: Colors.blue),
                  ],
                ),
              ],
            ),
          );
  }
}
