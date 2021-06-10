import 'package:flutter/material.dart';
import 'package:portfolio/Widget/work_custom_data.dart';

class MobileWorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title:
              "Atal Bihari Vajpayee Indian Institute of Information Technology and Management, Gwalior",
          subTitle:
              "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Atal Bihari Vajpayee Indian Institute of Information Technology and Management, Gwalior",
          duration: "2019 - Present",
        ),
        WorkCustomData(
          title: "Open-source contributor at The Palisadoes Foundation",
          subTitle:
              "One of the top contributors at the Talawa repository of The Palisadoes Foundation which is a community-based mobile application providing management solutions for small to large scale organizations. Created more than 16 PRs which got merged successfully changing a total of 5k+ lines on the repository.",
          duration: "March 2021 - Present",
        ),
        WorkCustomData(
          title: "Technical Head at UTHAAN, IIITM",
          subTitle:
              "Working as an executive of the journalism and recreational club which conducts year round debates, quizzes, webinars and competitions in almost every sector. Mentoring the members on areas like graphics and video editing.",
          duration: "November 2020 - Present",
        ),
        WorkCustomData(
          title: "Mobile Application Developer at SHOPOCUS, IN",
          subTitle:
              "Worked on building real-world large scale e-commerce applications, using Fluxstore framework based on Flutter, exploring Wordpress API, working with payment gateways, handling workflows, proper testing and deployment. ",
          duration: " July 2020 - August 2020",
        ),
      ],
    );
  }
}
