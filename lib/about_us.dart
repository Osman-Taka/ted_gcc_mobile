import 'package:flutter/material.dart';
import 'package:ted_gcc_mobile_app/navbar.dart';
import 'package:ted_gcc_mobile_app/styles.dart';
import 'package:ted_gcc_mobile_app/article_detail.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us", style: Styles.appbarStyle)
      ),
      drawer: const NavBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              constraints: BoxConstraints.tightFor(height: 200),
              child: Image.network("https://gitlab.com/manyet1k/2022-gcc-website/-/raw/master/img/markus-spiske-r1BS0pzlr1M-unsplash.jpg", fit: BoxFit.fitWidth)
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Text(
                "We are the TED Sakarya High School Global Citizenship Club members. Over the past couple of years, we have been researching the global conflicts that citizens and our planet are face to face with. Our aim is to improve the awareness for citizenship conflicts, gender diversity and issues in our neighborhood.\n\nAs the Citizenship Theories group, this year we have developed a website and mobile application for global awareness. You can access the website from the link below:",
                style: Styles.textDefault,
              )
            )
          ]
      )
    );
  }
}
