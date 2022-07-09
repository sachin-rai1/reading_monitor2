import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Navigation/navigationDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: (
        BoxDecoration(
        image: const DecorationImage(
        repeat: ImageRepeat.repeat,
        image: AssetImage('assets/images/Bg3.png'),
    fit: BoxFit.cover,
        ),
            border:  Border.all(),
            borderRadius: BorderRadius.circular(20)
        )
        ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:
               ClipRRect(
                 child:Image.asset('assets/images/Rmlogo.png',
                height: 33,
                width: 124,
              )
              ,
            ),
          titleSpacing: 00.0,
          centerTitle: true,

          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              iconSize: 41.19,
              icon: const Icon(Icons.filter_list),
              color: Colors.green,
              onPressed: () {
                Scaffold.of(context).openDrawer();
                },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );

          }
          ),

        ),
        body: Stack (
          children : [
            Container(
            )
        ],
    ),
    ),
    );

  }
}
