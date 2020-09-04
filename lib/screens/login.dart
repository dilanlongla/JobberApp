import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobber/utils/sizeconfig.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    TextStyle style = TextStyle(
      fontFamily: 'Poppins',
      fontSize: SizeConfig.safeBlockVertical * 3,
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
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.blockSizeVertical * 2,
            horizontal: SizeConfig.blockSizeHorizontal * 3),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final registerLink = InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/register');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not yet registered ? ',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: SizeConfig.safeBlockVertical * 2.2,
              color: Colors.black,
            ),
          ),
          Text(
            'register',
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
      appBar: AppBar(
        title: Text('Login'),
      ),
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
                  SizedBox(height: SizeConfig.blockSizeVertical * 10.0),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 25.0,
                    child: SvgPicture.asset(
                      "assets/images/undraw_podcast_audience_ddap.svg",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 5.0),
                  emailField,
                  SizedBox(height: SizeConfig.blockSizeVertical * 3.0),
                  passwordField,
                  SizedBox(height: SizeConfig.blockSizeVertical * 5.0),
                  loginButon,
                  SizedBox(height: SizeConfig.blockSizeVertical * 2.0),
                  registerLink,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
