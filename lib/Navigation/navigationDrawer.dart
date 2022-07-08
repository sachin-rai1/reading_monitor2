import 'package:flutter/material.dart';
import 'createDrawerBodyItem.dart';
import 'createDrawerHeader.dart';


class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.account_circle,text: 'Profile', onTap: () {  }),

          createDrawerBodyItem(
              icon: Icons.event_note,text: 'Events', onTap: () {  }),
          const Divider(),
          createDrawerBodyItem(
              icon: Icons.notifications_active,text: 'Notifications', onTap: () {  }),
          createDrawerBodyItem(
              icon: Icons.contact_phone,text: 'Contact Info', onTap: () {  }),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}