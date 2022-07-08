import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (
          BoxDecoration(
              border:  Border.all(),
              borderRadius: BorderRadius.circular(20)
          )
      ),
      child: (Scaffold
        (
        backgroundColor: const Color(0xFF52C0A5),
        body: Stack(
          children: [
            Center(
              child: Column(children: [
                //Hello Again
                const SizedBox(height: 100,),
                const Text('WELCOME',
                  style: TextStyle(fontWeight:FontWeight.bold ,
                      fontSize: 30,
                      color: Colors.white),
                ),
                const SizedBox(height: 10,),
                const Text('to online reading monitor' ,
                  style: TextStyle(fontSize: 20,
                      color: Colors.white),
                ),
                const SizedBox(height: 10,),
                //Email txt field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        //border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)
                    ) ,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 20.0),
                      child:  TextField
                        (decoration: InputDecoration(
                        border: InputBorder.none ,
                        hintText: 'Email',
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //pass text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        // border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)
                    ) ,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 20.0),
                      child:
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none ,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //pass text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF716259)
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //Register Now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text("Already have an account ? "),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: const Text('Login',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),



                //Register Now
              ]
              ),
            ),
          ],
        ),
      )
      ),
    );
  }
}
