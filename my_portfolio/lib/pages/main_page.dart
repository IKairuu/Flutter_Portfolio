import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/builds/repo_builder.dart';
import 'package:my_portfolio/builds/technology_builder.dart';
import 'package:my_portfolio/designs/button_design.dart';
import 'package:my_portfolio/designs/container_design.dart';
import 'package:my_portfolio/designs/font_styles.dart';
import 'package:my_portfolio/notifiers.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  ScrollController mainScroll = ScrollController();
  ScrollController occupationScroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: FadingEdgeScrollView.fromSingleChildScrollView(
        child: SingleChildScrollView(
          controller: mainScroll,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              spacing: 10,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 280,
                  width: double.infinity,
                  decoration: ContainerDesign.mainContainer,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Color(0xFF248cdb),
                          child: CircleAvatar(
                            radius: 57,
                            backgroundImage: AssetImage("assets/profile.jpg"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I am",
                              style: TextStyle(
                                color: Color(0xFFaab0bc),
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Kyle Allen M.",
                                  style: GoogleFonts.oswald(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  " Abandia",
                                  style: GoogleFonts.oswald(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF2484f8),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                height: 35,
                                child: FadingEdgeScrollView.fromScrollView(
                                  child: ListView(
                                    controller: occupationScroll,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration:
                                              ContainerDesign.occupation,
                                          child: Text(
                                            "Computer Science Student",
                                            style: FontStyles.occupation,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Container(
                                          height: 50,
                                          padding: EdgeInsets.all(10),
                                          decoration:
                                              ContainerDesign.occupation,
                                          child: Text(
                                            "Software Engineering",
                                            style: FontStyles.occupation,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        padding: EdgeInsets.all(10),
                                        decoration: ContainerDesign.occupation,
                                        child: Text(
                                          "Full Stack Developer",
                                          style: FontStyles.occupation,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                "I build mobile, desktop applications and discord bots with clean, efficient and scalable code. Deeply focused on developing impactful applications",
                                style: FontStyles.longDetails,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: IconButton.filled(
                                        style: ButtonDesign.contacts,
                                        onPressed: () {},
                                        icon: FaIcon(
                                          FontAwesomeIcons.github,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: IconButton.filled(
                                      style: ButtonDesign.contacts,
                                      onPressed: () {},
                                      icon: FaIcon(
                                        FontAwesomeIcons.facebook,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: ContainerDesign.mainContainer,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: ContainerDesign.iconInfo,
                          child: Icon(Icons.person, color: Color(0xFF4ba3ec)),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About Me", style: FontStyles.titleSections),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "I am an aspiring Full Stack Developer with experience in building applications using Flutter and backend solutions using Node.js with Express.js. I constantly learn new technologies to develop an application and solve real-world problems.",
                                style: FontStyles.longDetails,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: ContainerDesign.mainContainer,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: ContainerDesign.iconInfo,
                          child: Icon(
                            Icons.terminal_outlined,
                            color: Color(0xFF4ba3ec),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Skills / Technical Competencies",
                            style: FontStyles.titleSections,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "LANGUAGES",
                              style: FontStyles.techTitles,
                            ),
                          ),
                          ValueListenableBuilder(
                            valueListenable: languages,
                            builder: (context, langs, child) {
                              return TechnologyBuilder(techs: langs);
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "TECHNOLOGIES",
                              style: FontStyles.techTitles,
                            ),
                          ),
                          ValueListenableBuilder(
                            valueListenable: technologies,
                            builder: (context, tech, child) {
                              return TechnologyBuilder(techs: tech);
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("TOOLS", style: FontStyles.techTitles),
                          ),
                          ValueListenableBuilder(
                            valueListenable: tools,
                            builder: (context, tool, child) {
                              return TechnologyBuilder(techs: tool);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: ContainerDesign.mainContainer,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: ContainerDesign.iconInfo,
                              child: Icon(
                                Icons.folder_open_rounded,
                                color: Color(0xFF4ba3ec),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Projects",
                              style: FontStyles.titleSections,
                            ),
                          ),
                          TextButton(
                            onPressed: () =>
                                _launchUrl("https://github.com/IKairuu"),
                            child: Row(
                              children: [
                                Text(
                                  "View Profile",
                                  style: FontStyles.occupation,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  color: Color(0xFF4ba3ec),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ValueListenableBuilder(
                        valueListenable: repositories,
                        builder: (context, repo, child) {
                          return SizedBox(
                            height: 300,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 10),
                              scrollDirection: Axis.vertical,
                              itemCount: repo.length,
                              itemBuilder: (context, index) =>
                                  RepoBuilder(repo: repo[index]),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: ContainerDesign.mainContainer,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: ContainerDesign.iconInfo,
                              child: Icon(
                                Icons.cases_outlined,
                                color: Color(0xFF4ba3ec),
                              ),
                            ),
                          ),
                          Text("Experience", style: FontStyles.titleSections),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 40),
                                    child: Text(
                                      experience.value[index].date,
                                      style: FontStyles.experienceDate,
                                    ),
                                  ),
                                  Text(
                                    experience.value[index].details,
                                    style: FontStyles.experienceDetails,
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                VerticalDivider(color: Colors.white),
                            itemCount: experience.value.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: ContainerDesign.mainContainer,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: ContainerDesign.iconInfo,
                                child: Icon(
                                  Icons.phone,
                                  color: Color(0xFF4ba3ec),
                                ),
                              ),
                            ),
                            Text(
                              "Contact Information",
                              style: FontStyles.titleSections,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            height: 50,
                            decoration: ContainerDesign.contactInfos,
                            child: Row(
                              children: [
                                Icon(Icons.mail, color: Colors.blue),
                                SizedBox(width: 5),
                                MarkdownBody(
                                  selectable: true,
                                  data: "abandiakyle2112@gmail.com",
                                  styleSheet: MarkdownStyleSheet(
                                    p: FontStyles.contact,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            height: 50,
                            decoration: ContainerDesign.contactInfos,
                            child: Row(
                              children: [
                                Icon(Icons.phone, color: Colors.blue),
                                SizedBox(width: 5),
                                MarkdownBody(
                                  selectable: true,
                                  data: "+63 999 108 3321",
                                  styleSheet: MarkdownStyleSheet(
                                    p: FontStyles.contact,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            height: 50,
                            decoration: ContainerDesign.contactInfos,
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.discord,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 5),
                                MarkdownBody(
                                  selectable: true,
                                  data: "2kairuii_1_74073",
                                  styleSheet: MarkdownStyleSheet(
                                    p: FontStyles.contact,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
