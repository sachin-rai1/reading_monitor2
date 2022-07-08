import 'package:flutter/material.dart';

class Transition extends StatefulWidget {
  const Transition({Key? key}) : super(key: key);

  @override
  State<Transition> createState() => _TransitionState();
}

class _TransitionState extends State<Transition> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Container(
        decoration: (
            BoxDecoration(
                image: const DecorationImage(
                  repeat: ImageRepeat.repeat,
                  image: AssetImage('assets/images/Bg2.png'),
                  fit: BoxFit.cover,
                ),
                border:  Border.all(),
                borderRadius: BorderRadius.circular(20)
            )
        ),
            child:  Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                actions:<Widget> [
                  GestureDetector(
                    onTap: () { },
                    child:   ClipRRect(
                      child:Image.asset('assets/images/user1.png',
                      height: 41.19,
                      width: 41.19,
                      )
                      ,
                    ),
                  ),
                ],
                elevation: 0,
                leading: IconButton(
                  iconSize: 41.19,
                  icon: const Icon(Icons.menu_outlined),
                  color: Colors.green,
                  tooltip: 'Menu Icon',
                  onPressed: () {},
                ),
              ),
              body: Stack (
             children : [
              Container(
                  alignment: Alignment.center,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'HomePage');
                    },
                    child:   ClipRRect(
                        child:Image.asset('assets/images/Rmlogo.png',
                        height: 64,
                        width: 302,
                        )
                          ,
                      ),
                    ),

              ),

             ]
              ),

            )
    );
  }
}
