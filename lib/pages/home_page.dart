import 'package:covid_app2/core/consts.dart';
import 'package:covid_app2/core/flutter_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(25)),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: Stack(
                children: [
                  Image.asset('assets/images/virus2.png'),
                  _buildHeader(),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      text: TextSpan(
                        text: 'Symtoms of ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black87,
                        ),
                        children: [
                          TextSpan(
                            text: 'COVID 19',
                            style: TextStyle(color: AppColor.mainColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16),
                      physics: BouncingScrollPhysics(),
                      children: [
                        _buildSymtomsItem('assets/images/1.png', 'Fever'),
                        _buildSymtomsItem('assets/images/2.png', 'Dry Cough'),
                        _buildSymtomsItem('assets/images/3.png', 'Headache'),
                        _buildSymtomsItem('assets/images/4.png', 'Breathless'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Prevention',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16),
                      physics: BouncingScrollPhysics(),
                      children: [
                        _buildPreventionItem(
                          'assets/images/a10.png',
                          'WASH',
                          'hands often',
                        ),
                        _buildPreventionItem(
                          'assets/images/a4.png',
                          'COVER',
                          'your cough',
                        ),
                        _buildPreventionItem(
                          'assets/images/a6.png',
                          'ALWAYS',
                          'clean',
                        ),
                        _buildPreventionItem(
                          'assets/images/a9.png',
                          'USE',
                          'mask',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/map.png'),
                        SizedBox(
                          width: 25,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "CASES\n",
                            style: TextStyle(
                              color: AppColor.mainColor,
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: 'Overview Worldwide\n',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: '211.288.271 confirmed',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSymtomsItem(String path, String text) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.purple.withOpacity(0.0001),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ],
          ),
          padding: EdgeInsets.only(top: 15),
          margin: EdgeInsets.only(right: 20),
          child: Image.asset(path),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget _buildPreventionItem(String path, String text1, String text2) {
    return Column(
      children: [
        Container(
          width: 180,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ],
          ),
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(path),
              SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  text: "$text1\n",
                  style: TextStyle(
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: text2,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal))
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7,
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'COVID',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Coronavirus Relief Fund',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'to this fund will help to stop the virus\'s spread and give\ncomminitieson the font lines.',
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  child: Text(
                    'DONATE NOW',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    primary: Colors.red,
                  ),
                  child: Text(
                    'EMERGENCY',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(FlutterIcons.menu),
          color: Colors.white,
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'))),
        )
      ],
    );
  }
}
