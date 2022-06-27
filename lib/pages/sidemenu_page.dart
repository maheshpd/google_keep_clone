import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_keep_clone/json/sidemenu_icon_json.dart';
import 'package:google_keep_clone/pages/home_page.dart';
import 'package:google_keep_clone/pages/side_menu_page_details.dart';
import 'package:google_keep_clone/theme/colors.dart';

class SideMenuPage extends StatefulWidget {
  const SideMenuPage({Key? key}) : super(key: key);

  @override
  State<SideMenuPage> createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(color: cardColor),
        child: ListView(
          children: [
            header(), sectionOne(), sectionTwo(), sectionThree(),sectionFour()
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: white.withOpacity(0.1)))),
      child: const DrawerHeader(
        padding: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 30),
          child: Text(
            "Google Keep",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: white),
          ),
        ),
      ),
    );
  }

  Widget sectionOne() {
    return Column(
      children: [
        Column(
          children: List.generate(2, (index) {
            return FlatButton(
                onPressed: () {
                  if(index == 0) {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const HomePage()));
                  } else {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SideMenuPageDetails(
                      title: sideMenuItem[index]['text'],
                    )));
                  }
                },
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25),
                  child: Row(
                    children: [
                      Icon(
                        sideMenuItem[index]['icon'],
                        color: white.withOpacity(0.7),
                        size: 22,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        sideMenuItem[index]['text'],
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: white.withOpacity(0.7)),
                      )
                    ],
                  ),
                ));
          }),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Divider(
            thickness: 1,
            color: white.withOpacity(0.1),
          ),
        )
      ],
    );
  }

  Widget sectionTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Text(
            "LABELS",
            style: TextStyle(fontSize: 12, color: white.withOpacity(0.7)),
          ),
        ),
        Column(
          children: List.generate(5, (index) {
            return FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SideMenuPageDetails(
                    title: sideMenuItem[index + 2]['text'],
                  )));
                },
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25),
                  child: Row(
                    children: [
                      Icon(
                        sideMenuItem[index + 2]['icon'],
                        color: white.withOpacity(0.7),
                        size: 22,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        sideMenuItem[index + 2]['text'],
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: white.withOpacity(0.7)),
                      )
                    ],
                  ),
                ));
          }),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          thickness: 1,
          color: white.withOpacity(0.1),
        )
      ],
    );
  }

  Widget sectionThree(){
    return Column(
      children: [
        Column(
          children: List.generate(2, (index) {
            return FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SideMenuPageDetails(
                    title: sideMenuItem[index + 7]['text'],
                  )));
                },
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25),
                  child: Row(
                    children: [
                      Icon(
                        sideMenuItem[index + 7]['icon'],
                        color: white.withOpacity(0.7),
                        size: 22,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        sideMenuItem[index + 7]['text'],
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: white.withOpacity(0.7)),
                      )
                    ],
                  ),
                ));
          }),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          thickness: 1,
          color: white.withOpacity(0.1),
        )
      ],
    );
  }

  Widget sectionFour(){
    return Column(
      children: [
        Column(
          children: List.generate(3, (index) {
            return FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SideMenuPageDetails(
                    title: sideMenuItem[index + 9]['text'],
                  )));
                },
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25),
                  child: Row(
                    children: [
                      Icon(
                        sideMenuItem[index + 9]['icon'],
                        color: white.withOpacity(0.7),
                        size: 22,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        sideMenuItem[index + 9]['text'],
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: white.withOpacity(0.7)),
                      )
                    ],
                  ),
                ));
          }),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          thickness: 1,
          color: white.withOpacity(0.1),
        )
      ],
    );
  }
}
