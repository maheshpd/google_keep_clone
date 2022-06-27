import 'package:flutter/material.dart';
import 'package:google_keep_clone/theme/colors.dart';

class SideMenuPageDetails extends StatefulWidget {
  final String title;

  const SideMenuPageDetails({Key? key, required this.title}) : super(key: key);

  @override
  State<SideMenuPageDetails> createState() => _SideMenuPageDetailsState();
}

class _SideMenuPageDetailsState extends State<SideMenuPageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: cardColor,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios, size: 22, color: white.withOpacity(0.7),)),
    );
  }

  Widget getBody() {
    return Center(
      child: Text(widget.title, style: TextStyle(
          fontSize: 18,
          color: white.withOpacity(0.7)
      ),),
    );
  }
}
