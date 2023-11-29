import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text('IIT Bombay Hospital'),
        actions: [
          IconButton(
          onPressed: null,
          icon: Icon(Icons.book, color: Colors.white, size: 30,)),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.menu, color: Colors.white, size: 30,) ),

        ],

      ),
      body: Center(
        child: StudentImage(),
      ),

    );
  }
}

class StudentImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Stack(
        children: [
          Positioned(

              top: 40,
              left: 40,
              child: Column(
                children:[
                 Container(
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 120,
                          decoration: const BoxDecoration(
                            image: DecorationImage(

                                image: AssetImage('assets/iitb logo.jpg'), fit: BoxFit.cover

                            ),
                          )

                      ),
                      SizedBox(
                        width: 30,
                      ),

                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Roll No.: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Department: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,

                            ),
                          ),
                        ],
                      )

                    ],
                  ),

                  ),
                  SizedBox(
                    height: 50,
                  ),
                  



                  ]
              ),

              ),

          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       'Hi there',
          //       style: TextStyle(
          //         fontSize: 40,
          //         fontWeight: FontWeight.w700,
          //         color: Colors.blue,
          //       ),
          //     )
          //   ],
          // )

        ]


      );
  }
  
}
