import 'package:flutter/material.dart';
import 'package:project1/DashGPT.dart';
import 'package:project1/Dashboard.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/W.png'), fit: BoxFit.cover
        )
      ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 250),
                child: const Text(
                  ' ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                    fontFamily: 'PTSerif',
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.4, left: 40, right: 40),
                child:  Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        // isCollapsed: true,
                        // contentPadding: EdgeInsets.only(top:5, bottom: 5, left: 5),
                        filled: true,
                        fillColor: Colors.blue.shade50,
                        hintText: 'Roll Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue.shade50,
                          hintText: 'LDAP Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)
                          )
                      ),
                    ),
                    const SizedBox(
                      height:20,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700,
                          ),
                        ),
                        CircleAvatar(

                          radius: 30,
                          backgroundColor: Colors.blue,
                          child: IconButton(
                              color: Colors.white,
                              onPressed:() {
                                // Navigate to the second page when the circle avatar is pressed.
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MyDash()));
                              },
                              
                              icon: Icon(Icons.arrow_forward)),

                        )
                      ],
                    )
                  ],

                ),


              ),
            )
          ],
        ),



      ),
    );
  }
}
