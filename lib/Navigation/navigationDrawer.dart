import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'createDrawerBodyItem.dart';
import 'createDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  DateTime now = DateTime.now();
  var  formattedDate = DateFormat('dd-MM-yyyy').format(now);
    return Drawer(
      backgroundColor: const Color(0xFF6EB7A1),
      child: SingleChildScrollView(
      child: Column(
        //padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
              icon: Icons.list_alt,text: "Today's Report" , onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.calendar_month_outlined,text: (formattedDate), onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.file_download,text: 'Download Sheet', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.upload,text: 'Upload Report', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.auto_awesome_mosaic,text: 'Machine Comparison', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.bar_chart,text: 'Charts', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.list_alt_outlined,text: 'Machine List', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.person,text: 'Manage Users', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.speed_sharp,text: 'Master Reading', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.format_list_numbered,text: 'To Do List', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.account_circle_outlined,text: 'Profile', onTap: () {  }),

        ],
      ),
      )
    );
  }
}

