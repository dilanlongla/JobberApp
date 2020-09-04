import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobber/utils/sizeconfig.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue[900] : Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: SizeConfig.safeBlockVertical * 3,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              Container(
                height: SizeConfig.safeBlockVertical * 77,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.blockSizeVertical * 10,
                          horizontal: SizeConfig.blockSizeHorizontal * 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: SvgPicture.asset(
                              "assets/images/undraw_podcast_audience_ddap.svg",
                              fit: BoxFit.contain,
                              height: SizeConfig.safeBlockVertical * 37,
                            ),
                          ),
                          SizedBox(height: SizeConfig.safeBlockVertical * 6),
                          Center(
                            child: Text(
                              'Find your dream Job \n in an instant',
                              style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 7,
                                fontFamily: "Poppins",
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.blockSizeVertical * 10,
                          horizontal: SizeConfig.blockSizeHorizontal * 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: SvgPicture.asset(
                              "assets/images/undraw_podcast_audience_ddap.svg",
                              fit: BoxFit.contain,
                              height: SizeConfig.safeBlockVertical * 37,
                            ),
                          ),
                          SizedBox(height: SizeConfig.safeBlockVertical * 6),
                          Center(
                            child: Text(
                              'Find your dream Job \n in an instant',
                              style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 7,
                                fontFamily: "Poppins",
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.blockSizeVertical * 10,
                          horizontal: SizeConfig.blockSizeHorizontal * 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: SvgPicture.asset(
                              "assets/images/undraw_podcast_audience_ddap.svg",
                              fit: BoxFit.contain,
                              height: SizeConfig.safeBlockVertical * 37,
                            ),
                          ),
                          SizedBox(height: SizeConfig.safeBlockVertical * 6),
                          Center(
                            child: Text(
                              'Find your dream Job \n in an instant',
                              style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 7,
                                fontFamily: "Poppins",
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1
                  ? Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: FlatButton(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: SizeConfig.safeBlockVertical * 4,
                                ),
                              ),
                              SizedBox(
                                  width: SizeConfig.safeBlockVertical * 2.0),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                                size: SizeConfig.safeBlockVertical * 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: SizeConfig.safeBlockVertical * 10,
              width: double.infinity,
              color: Colors.blue,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: SizeConfig.safeBlockVertical * 1),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
