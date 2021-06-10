import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Model/Method.dart';
import 'package:portfolio/Widget/CustomText.dart';
import 'package:portfolio/Widget/MobileProject.dart';
import 'package:portfolio/Widget/MobileWork.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff0A192F),
                ),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),
                accountName: Text("Raunak Kumar"),
                accountEmail: Text("raunakk728@gmail.com"),
              ),
              // ListTile(
              //   title: Text("Share"),
              //   leading: Icon(Icons.share),
              // ),
              // ListTile(
              //   leading: Icon(Icons.group),
              //   title: Text("About"),
              // ),
              Expanded(
                child: Text("Version 1.0.1"),
              )
            ],
          )),
      appBar: AppBar(
        backgroundColor: Color(0xff0A192F),
        elevation: 0.0,
        title: IconButton(
          icon: Icon(
            Icons.adjust_rounded,
            size: 32.0,
            color: Color(0xff64FFDA),
          ),
          onPressed: () {},
        ),
      ),
      body: RawScrollbar(
        isAlwaysShown: true,
        thickness: 10,
        radius: Radius.circular(8),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomText(
                  text: "Hi, my name is",
                  textsize: 16.0,
                  color: Color(0xff41FBDA),
                  letterSpacing: 3.0,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomText(
                  text: "Raunak Kumar.",
                  textsize: 52.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                CustomText(
                  text: "I build awesome applications for Android, iOS and the Web.",
                  textsize: 42.0,
                  color: Color(0xffCCD6F6).withOpacity(0.6),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                    children: [
                      Text(
                        "I'm a developer based in Odisha, IN specializing in developing highly scalable as well as easily maintainable applications.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          letterSpacing: 2.75,
                          wordSpacing: 0.75,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  color: Color(0xff64FFDA),
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(0.75),
                    height: 56.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Color(0xff0A192F),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        method.launchEmail();
                      },
                      hoverColor: Colors.green,
                      child: Text(
                        "Get In Touch",
                        style: TextStyle(
                          color: Color(0xff64FFDA),
                          letterSpacing: 2.75,
                          wordSpacing: 1.0,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),

                //About me
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    width: size.width,
                    //color: Colors.purple,
                    child: Column(
                      children: [
                        //About me title
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "01.",
                              textsize: 20.0,
                              color: Color(0xff61F9D5),
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            CustomText(
                              text: "About Me",
                              textsize: 26.0,
                              color: Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Container(
                              width: size.width / 4,
                              height: 1.10,
                              color: Color(0xff303C55),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.07,
                        ),

                        //About me desc
                        Wrap(
                          children: [
                            CustomText(
                              text:
                                  "Hello! I'm Raunak, a developer and an enthusiast who loves to explore new tools and technologies as much as possible.\nI enjoy creating real world applications which are pixel-perfect and highly performant.\n",
                              textsize: 16.0,
                              color: Color(0xff828DAA),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                            CustomText(
                              text:
                                  "Currently, I am pursuing my Bachelor's degree in Computer Science and Engineering at Atal Bihari Vajpayee Indian Institute of Information Technology and Management, Gwalior, as well as developing interesting and meaningful projects on a regular basis.\n",
                              textsize: 16.0,
                              color: Color(0xff828DAA),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                            CustomText(
                              text:
                                  "Here are a few technologies I've been working with recently:\n\n",
                              textsize: 16.0,
                              color: Color(0xff828DAA),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.06,
                        ),
                        Container(
                          width: size.width,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  technology(context, "Dart"),
                                  technology(context, "Flutter"),
                                  technology(context, "Firebase"),
                                  technology(context, "Git"),
                                  technology(context, "Github"),
                                  technology(context, "C/C++"),
                                  technology(context, "HTML"),
                                  technology(context, "CSS"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  technology(context, "MYSQL"),
                                  technology(context, "NoSQL"),
                                  technology(context, "JavaScript"),
                                  technology(context, "Google Colaboratory"),
                                  technology(context, "After Effects"),
                                  technology(context, "Photoshop"),
                                  technology(context, "Premiere Pro"),
                                  technology(context, "Python"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.08,
                ),

                //Image
                Center(
                  child: Container(
                    height: size.height * 0.8,
                    width: size.width * 0.6,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          child: Card(
                            color: Color(0xff61F9D5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(size.width * 0.8),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(2.75),
                              height: size.height * 0.52,
                              width: size.width * 0.52,
                              decoration: BoxDecoration(
                                color: Color(0xff0A192F),
                                borderRadius: BorderRadius.circular(size.width * 0.8),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.5,
                          width: size.width * 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(size.width * 0.8),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage("images/pic1.jpg"),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size.width * 0.8),
                          ),
                        ),
                        Container(
                          height: size.height * 0.5,
                          width: size.width * 0.5,
                          decoration: BoxDecoration(
                            color: Color(0xff61F9D5).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(size.width * 0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Where I've Worked title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "02.",
                      textsize: 20.0,
                      color: Color(0xff61F9D5),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CustomText(
                      text: "Where I've Worked",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width * 0.08,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                MobileWork(),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //Some Things I've Built title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "03.",
                      textsize: 20.0,
                      color: Color(0xff61F9D5),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CustomText(
                      text: "Projects I have worked on",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width * 0.04,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic9.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic2.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic4.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic3.jpg",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic5.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic6.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic7.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {},
                  image: "images/pic8.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    //height: size.aspectRatio,
                    width: size.width,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "04. What's Next?",
                          textsize: 16.0,
                          color: Color(0xff41FBDA),
                          letterSpacing: 3.0,
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        CustomText(
                          text: "Get In Touch",
                          textsize: 42.0,
                          color: Colors.white,
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Text(
                              "My inbox is always open, whether you have a question or just want to say hi, I'll try my best to get back to you!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.4),
                                letterSpacing: 0.75,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        InkWell(
                          onTap: () {
                            method.launchEmail();
                          },
                          child: Card(
                            elevation: 4.0,
                            color: Color(0xff64FFDA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(0.85),
                              height: size.height * 0.09,
                              width: size.width * 0.10,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff0A192F),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "Say Hello",
                                  style: TextStyle(
                                    color: Color(0xff64FFDA),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/Raunakk02");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://www.linkedin.com/in/raunak-kumar-8a4397194/");
                      },
                    ),
                    // IconButton(
                    //   icon: Icon(
                    //     FontAwesomeIcons.twitter,
                    //     color: Colors.white,
                    //     size: 15.0,
                    //   ),
                    //   onPressed: () {
                    //     method.launchURL("https://twitter.com/");
                    //   },
                    // ),
                    IconButton(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onPressed: () {
                        method.launchEmail();
                      },
                    )
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //Footer
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.white,
                  child: Text(
                    "Designed & Built by Raunak 💙 Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
