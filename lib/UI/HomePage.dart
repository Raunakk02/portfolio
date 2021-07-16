import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Model/Method.dart';
import 'package:portfolio/UI/About.dart';
import 'package:portfolio/UI/FeatureProject.dart';
import 'package:portfolio/UI/Work.dart';
import 'package:portfolio/Widget/AppBarTitle.dart';
import 'package:portfolio/Widget/CustomText.dart';
import 'package:portfolio/Widget/MainTiitle.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();
  AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void setState(fn) {
    if (this.mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(listenerFunc);
    super.initState();
  }

  void listenerFunc() {
    if (_isAppBarExpanded) {
      isExpaned == true
          ? setState(
              () {
                isExpaned = false;
                print('setState is called');
              },
            )
          : setState(() {
              print('setState is called');
              isExpaned = true;
            });
    }
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({int index, Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  void dispose() {
    _autoScrollController.removeListener(listenerFunc);
    _autoScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Mavigation Bar
            Container(
              height: size.height * 0.14,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.adjust_rounded,
                          size: 32.0,
                          color: Color(0xff64FFDA),
                        ),
                        onPressed: () {}),
                    Spacer(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DefaultTabController(
                          length: 4,
                          child: TabBar(
                            indicatorColor: Colors.transparent,
                            onTap: (index) async {
                              _scrollToIndex(index);
                            },
                            tabs: [
                              Tab(
                                child: AppBarTitle(
                                  text: 'About',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Experience',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Projects',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Get In Touch',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Card(
                        elevation: 4.0,
                        color: Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(0.85),
                          height: size.height * 0.07,
                          width: size.height * 0.20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: FlatButton(
                            hoverColor: Color(0xff0A192F),
                            onPressed: () {
                              method.launchURL(
                                  "https://drive.google.com/file/d/1ud4eSUOFhJajHgzupaOwBqzzdzHdYztq/view?usp=sharing");
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                "Resume",
                                style: TextStyle(
                                  color: Color(0xff64FFDA),
                                ),
                              ),
                            ),
                            // style: TextButton.styleFrom(
                            //   onSurface: Color(0xFF3E0449),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                //Social Icon
                Container(
                  width: size.width * 0.09,
                  height: size.height - 82,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          color: Color(0xffffA8B2D1),
                          iconSize: 16.0,
                          onPressed: () {
                            method.launchURL("https://github.com/Raunakk02");
                          }),
                      // IconButton(
                      //     icon: FaIcon(FontAwesomeIcons.twitter),
                      //     color: Color(0xffffA8B2D1),
                      //     iconSize: 16.0,
                      //     onPressed: () {
                      //       method.launchURL("https://twitter.com/");
                      //     }),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.linkedin),
                        color: Color(0xffffA8B2D1),
                        onPressed: () {
                          method.launchURL(
                              "https://www.linkedin.com/in/raunak-kumar-8a4397194/");
                        },
                        iconSize: 16.0,
                      ),
                      // IconButton(
                      //     icon: Icon(Icons.call),
                      //     color: Color(0xffffA8B2D1),
                      //     iconSize: 16.0,
                      //     onPressed: () {
                      //       method.launchCaller();
                      //     }),
                      IconButton(
                          icon: Icon(Icons.mail),
                          color: Color(0xffffA8B2D1),
                          iconSize: 16.0,
                          onPressed: () {
                            method.launchEmail();
                          }),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: size.height * 0.20,
                          width: 2,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: size.height - 82,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: RawScrollbar(
                        controller: _autoScrollController,
                        isAlwaysShown: true,
                        thickness: 10,
                        radius: Radius.circular(8),
                        child: CustomScrollView(
                          controller: _autoScrollController,
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * .06,
                                  ),
                                  CustomText(
                                    text: "Hi, my name is",
                                    textsize: 16.0,
                                    color: Color(0xff41FBDA),
                                    letterSpacing: 3.0,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  CustomText(
                                    text: "Raunak Kumar.",
                                    textsize: 68.0,
                                    color: Color(0xffCCD6F6),
                                    fontWeight: FontWeight.w900,
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  CustomText(
                                    text:
                                        "I build awesome applications for Android, iOS and the Web.",
                                    textsize: 56.0,
                                    color: Color(0xffCCD6F6).withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    height: size.height * .04,
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        "I'm a developer based in Odisha, IN specializing in developing highly scalable as well as easily maintainable applications.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.0,
                                          letterSpacing: 2.75,
                                          wordSpacing: 0.75,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * .12,
                                  ),

                                  //get in tuch text
                                  InkWell(
                                    onTap: () {
                                      method.launchEmail();
                                    },
                                    hoverColor:
                                        Color(0xff64FFDA).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(4.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: size.height * 0.09,
                                      width: size.width * 0.14,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xff64FFDA),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
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

                                  SizedBox(
                                    height: size.height * 0.20,
                                  ),
                                ],
                              ),

                              //About Me
                              _wrapScrollTag(
                                index: 0,
                                child: About(),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),

                              //Where I've Worked
                              _wrapScrollTag(index: 1, child: Work()),
                              SizedBox(
                                height: size.height * 0.10,
                              ),

                              //Some Things I've Built Main Project
                              _wrapScrollTag(
                                  index: 2,
                                  child: Column(
                                    children: [
                                      MainTiitle(
                                        number: "03.",
                                        text: "Projects I have worked on",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.04,
                                      ),

                                      FeatureProject(
                                        imagePath: "images/pic10.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/maser");
                                        },
                                        projectDesc:
                                            "MASER stands for Mentoring Application with Sentiments and Emotion Recognition. It allows users to share their motivational stories and get guidance/mentorship from other users. It supports one-to-one chats and also includes the feature of sentiment analysis.",
                                        projectTitle:
                                            "Food Delivery application",
                                        tech1: "Flutter",
                                        tech2: "TensorFlow Lite",
                                        tech3: "TDD",
                                      ),

                                      FeatureProject(
                                        imagePath: "images/pic2.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/FoodDeliveryApp");
                                        },
                                        projectDesc:
                                            "A Food Delivery application using Flutter, MobX for state management, use of MVVM architecture, and Hive for offline database.",
                                        projectTitle:
                                            "Food Delivery application",
                                        tech1: "Flutter",
                                        tech2: "Mobx",
                                        tech3: "Hive",
                                      ),
                                      FeatureProject(
                                        imagePath: "images/pic9.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/whatsapp-UI-clone-static");
                                        },
                                        projectDesc:
                                            "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                                        projectTitle: "WhatsApp UI Clone",
                                        tech1: "Flutter",
                                        tech2: "Dart",
                                        tech3: "Flutter UI",
                                      ),

                                      FeatureProject(
                                        imagePath: "images/pic4.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/shop-app");
                                        },
                                        projectDesc:
                                            "An online shop app made using flutter frame work and firebase real-time database as backend. It has user authentication, advanced animations and also auto sign in feature. It works both on android and iOS.",
                                        projectTitle: "Online Shop App",
                                        tech1: "Authentication",
                                        tech2: "Flutter",
                                        tech3: "Firebase",
                                      ),
                                      FeatureProject(
                                        imagePath: "images/pic3.jpg",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/Othello-flutter");
                                        },
                                        projectDesc:
                                            "A custom made Othello game supported on web, android and iOS featuring room creation and online chats.",
                                        projectTitle: "Othello League",
                                        tech1: "Flutter",
                                        tech2: "Hive",
                                        tech3: "Firebase",
                                      ),

                                      //ff
                                      FeatureProject(
                                        imagePath: "images/pic5.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/time_table");
                                        },
                                        projectDesc:
                                            "This app can be used to schedule timed events such as lectures, meetups, etc. It packs within it features like android alarm manager and flutter notifications to trigger periodic notifications based on the scheduled event.",
                                        projectTitle: "Time Scheduling App",
                                        tech1: "Notifications",
                                        tech2: "Flutter",
                                        tech3: "Native Device Features",
                                      ),

                                      FeatureProject(
                                        imagePath: "images/pic6.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/meals-app");
                                        },
                                        projectDesc:
                                            "Basic flutter application implementing features like navigations, tabs and animations in flutter",
                                        projectTitle: "Meals App",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Navigation",
                                      ),

                                      FeatureProject(
                                        imagePath: "images/pic7.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/Personal-Expenses-App");
                                        },
                                        projectDesc:
                                            "A handy application for storing and monitoring weekly expenses making use of ModalBottomSheet and Object Models in Flutter",
                                        projectTitle: "Personal Expenses App",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                      ),

                                      FeatureProject(
                                        imagePath: "images/pic8.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/Raunakk02/Flutter-Quiz-App");
                                        },
                                        projectDesc:
                                            "This is a basic personality quiz app made using flutter and dart. The app has been developed only for practice purposes but it does implements most basic dart and flutter features.",
                                        projectTitle: "Personality Quiz",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Refactoring",
                                      ),
                                    ],
                                  )),

                              SizedBox(
                                height: 6.0,
                              ),

                              //Get In Touch
                              _wrapScrollTag(
                                index: 3,
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.68,
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      // color: Colors.orange,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            height: 16.0,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                "My inbox is always open, whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  letterSpacing: 0.75,
                                                  fontSize: 17.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 32.0,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              method.launchEmail();
                                            },
                                            child: Card(
                                              elevation: 4.0,
                                              color: Color(0xff64FFDA),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: Container(
                                                margin: EdgeInsets.all(0.85),
                                                height: size.height * 0.09,
                                                width: size.width * 0.10,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff0A192F),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
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

                                    //Footer
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              6,
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      //color: Colors.white,
                                      child: Text(
                                        "Designed & Built by Raunak 💙 Flutter",
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
                            ])),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.height - 82,
                  //color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 45,
                        child: Text(
                          "raunakk728@gmail.com",
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: 100,
                          width: 2,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
