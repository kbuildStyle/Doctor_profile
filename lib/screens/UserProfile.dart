import 'package:flutter/material.dart';

// final List<Doctor> doctors = [
//   Doctor(name: "Dr. Smith", speciality: "Pediatrics", contact: "555-555-5555"),
//   Doctor(name: "Dr. Johnson", speciality: "Surgery", contact: "555-555-5556"),
//   Doctor(name: "Dr. Williams", speciality: "OB-GYN", contact: "555-555-5557"),
// ];

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_rounded,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.network(
                  "https://raw.githubusercontent.com/AminullahTajMuhammad/doctor_appointment_ui/master/assets/profile_img.png"),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(38),
              topRight: Radius.circular(38),
            )),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Hi, Olivia",
                  style: TextStyle(
                    color: Color(0xff363636),
                    fontSize: 25,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Color(0xff363636),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                //width: size.width,
                //height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          style: TextStyle(
                            color: Color(0xff107163),
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff107163),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: Text(
                        'Category',
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 1),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Color(0xff5e5d5d),
                            fontSize: 19,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ListView(
                    children: [
                      demoTopRatedDr(
                        "assets/dr_2.jpg",
                      "Dr Fred Mask",
                      "Heart Surgoen",
                      "4.1"
                      ),

                      demoTopRatedDr(
                      "images/dr_1.png",
                      "Dr Kothari",
                      "Mental Health Specialist",
                      "4.3"
                      ),

                      demoTopRatedDr(
                      "images/dr_1.png",
                      "Dr Zac Wolff",
                      "Psychiatrist",
                      "4.5"
                      ),
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }

  Widget demoTopRatedDr(
      String image, String name, String speciality, String rating) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 98,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 98,
              width: 50,
              child: Image.asset(image),
              
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            speciality,
                            style: TextStyle(
                              color: Color(0xffababab),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 3, left: size.width*0.25),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Rating",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
