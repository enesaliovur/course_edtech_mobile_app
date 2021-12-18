import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final double dynamicWidth = MediaQuery.of(context).size.width;
    final double dynamicHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(dynamicWidth * 0.05),
          child: Column(
            children: [
              // Spacer(),

              illustration(dynamicHeight),
              SizedBox(
                height: dynamicHeight * 0.02,
              ),
              textContent(context, dynamicHeight),

              SizedBox(
                height: dynamicHeight * 0.02,
              ),
              form(dynamicHeight, dynamicWidth),
              SizedBox(
                height: dynamicHeight * 0.02,
              ),
              smallButton(),
            ],
          ),
        )),
      ),
    );
  }

  SizedBox illustration(double dynamicHeight) {
    return SizedBox(
        height: dynamicHeight * 0.25,
        child: Image.asset("assets/images/login_image.png"));
  }

  TextButton smallButton() =>
      TextButton(onPressed: () {}, child: Text("Log in"));

  Form form(double dynamicHeight, double dynamicWidth) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              isDense: true,
              hintText: "Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        ),
        SizedBox(
          height: dynamicHeight * 0.02,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: "Email",
              isDense: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        ),
        SizedBox(
          height: dynamicHeight * 0.02,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: "Password",
              isDense: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        ),
        SizedBox(
          height: dynamicHeight * 0.03,
        ),
        SizedBox(
            height: dynamicHeight * 0.07,
            width: dynamicWidth,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Sign up"),
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
          Text("Sign up",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold)),
          SizedBox(
            height: dynamicHeight * 0.02,
          ),
          Text("Create your account",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
