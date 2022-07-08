import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
bool isChecked = false;
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
      Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.red;
    }
    return Scaffold
        (
          backgroundColor: Colors.white,
          body: Stack(
          children: [
            Container(              
              width: MediaQuery.of(context).size.width,
              height: h/4,
               color: const Color(0xFF52C0A5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width/7),
                    child: const Text('WELCOME' ,
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),

                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/5),
                  const Text('to online reading Monitor',
                    style: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                            ClipRRect(
                              child:
                              Image.asset('assets/images/Correct.png',
                                  height: 15,
                                  width: 15),
                                       ),
                                 const Text('Demo Text',
                                style: TextStyle(
                                    fontSize: 12,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            SizedBox(width: MediaQuery.of(context).size.width/3,
                            height: MediaQuery.of(context).size.height*0.01,),
                            ClipRRect(
                              child:
                              Image.asset('assets/images/Correct.png',
                                height: 15,
                                width: 15),
                ),
                              const Text('Demo Text',
                              style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                  ),
                ),
              ],
          ),

                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child:
                          Image.asset('assets/images/Correct.png',
                              height: 15,
                              width: 15),
                        ),
                        const Text('Demo Text',
                          style: TextStyle(
                              fontSize: 12,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child : Container(                
              padding: EdgeInsets.only(
                  top: h /3.5 ,
                  right: w/10 ,
                  left: w/10),
              child: Column(
                children:  [
                  Container(
                    padding: EdgeInsets.only(bottom: h/10),
                    child: ClipRRect(
                      child:
                      Image.asset('assets/images/Rmlogo.png',
                          height: h/10,
                          width: w),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: const Text('Email' ,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                  ),
                 TextField(
                   decoration: InputDecoration(
                     hintText: 'Enter Your Email',
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                     ),
                   ),
                 ),
                 const SizedBox(height: 10,),
                 Container(
                   alignment: Alignment.topLeft,
                     child: const Text('Password',
                       style: TextStyle(
                           fontSize: 16,
                       ),
                     )
                 ),
                 TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: '***************',
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                     ),
                   ),
                 ),

                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          }
                          );
                        },
                        ),
                      const Text('Remember Me'),
                      SizedBox(width: w/6,),
                      const Text('Forgot Password ?'),
                    ],
                  ),

                  const SizedBox(height: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'Transition');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(307.17,40.42),
                            primary: const Color(0xFF716259),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                          ),
                          child: const Text('Sign In',
                            style: TextStyle(
                              fontSize: 16,
                                color: Colors.white),
                          ),
                          ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            OutlinedButton(
                              onPressed: () { },
                              style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(307.17,41.42),
                                  primary: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                  )
                              ),
                              child:
                               Row(
                                 children: [
                                   ClipRRect(
                                     borderRadius: BorderRadius.circular(40.0),
                                     child:
                                     Image.asset('assets/images/GoogleIcon.png',
                                         height: 28,
                                         width: 28),
                                   ),
                                   const SizedBox(width: 10,),
                                   const Text('Sign In With Google',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black),
                              ),

                                 ],
                               ),
                            ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
            )
          ],
          ),
    );
  }
}
