import 'package:flutter/material.dart';
import 'package:jobber/utils/sizeconfig.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    TextStyle style = TextStyle(
      fontFamily: 'Poppins',
      fontSize: SizeConfig.safeBlockVertical * 3,
    );

    final registerTitle = Text(
      'Register',
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: SizeConfig.safeBlockVertical * 4,
        fontWeight: FontWeight.bold,
        color: Color(0xff01A0C7),
      ),
    );

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical * 2,
              horizontal: SizeConfig.blockSizeHorizontal * 3),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical * 2,
              horizontal: SizeConfig.blockSizeHorizontal * 3),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final confirmPasswordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical * 2,
              horizontal: SizeConfig.blockSizeHorizontal * 3),
          hintText: " Confirm Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final registerButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.blockSizeVertical * 2,
            horizontal: SizeConfig.blockSizeHorizontal * 3),
        onPressed: () {},
        child: Text("Register",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final loginLink = InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already registered ? ',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: SizeConfig.safeBlockVertical * 2.2,
              color: Colors.black,
            ),
          ),
          Text(
            'login',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: SizeConfig.safeBlockVertical * 2.2,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockSizeVertical * 5.0,
                horizontal: SizeConfig.blockSizeHorizontal * 7.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  registerTitle,
                  SizedBox(height: SizeConfig.blockSizeVertical * 5.0),
                  emailField,
                  SizedBox(height: SizeConfig.blockSizeVertical * 3.0),
                  passwordField,
                  SizedBox(height: SizeConfig.blockSizeVertical * 3.0),
                  confirmPasswordField,
                  SizedBox(height: SizeConfig.blockSizeVertical * 5.0),
                  registerButon,
                  SizedBox(height: SizeConfig.blockSizeVertical * 2.0),
                  loginLink,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
