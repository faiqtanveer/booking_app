import 'package:booking_app/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Bookings';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ("Home"),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: ("dashboard"),
              backgroundColor: Colors.white60,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: ("chat"),
              backgroundColor: Colors.white60,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account_sharp),
              label: ("Account"),
              backgroundColor: Colors.white60,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xff053F5E),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Container(
                  margin: EdgeInsets.only(left: 30, bottom: 30),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1622925492162-98c3760a7080?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGdpcmwlMjBpbiUyMGhvb2RpZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Dr. Fred Mask',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Heart surgen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                'Total Price: 145.46',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'April 2020',
                  style: TextStyle(
                    color: Color(0xff363636),
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    demoDates("Mon", "21", true),
                    demoDates("Tue", "22", false),
                    demoDates("Wed", "23", false),
                    demoDates("Thur", "24", false),
                    demoDates("Fri", "25", false),
                    demoDates("Sat", "26", false),
                    demoDates("Sun", "27", false),
                    demoDates("Mon", "28", false),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'Morning',
                  style: TextStyle(
                    color: Color(0xff363636),
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 2.7,
                  children: [
                    doctorTimingsData("08:30 AM", true),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 30),
                child: Text(
                  'Evening',
                  style: TextStyle(
                    color: Color(0xff363636),
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 2.6,
                  children: [
                    doctorTimingsData("08:30 AM", true),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                    doctorTimingsData("08:30 AM", false),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 54,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xff107163),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x17000000),
                      offset: Offset(0, 15),
                      blurRadius: 15,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Text(
                  'Make An Appointment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

Widget demoDates(String day, String date, bool isSelected) {
  return isSelected
      ? Container(
          width: 70,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Color(0xff107163),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  day,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(7),
                child: Text(
                  date,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      : Container(
          width: 70,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  day,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(7),
                child: Text(
                  date,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
}

Widget doctorTimingsData(String time, bool isSelected) {
  return isSelected
      ? Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          decoration: BoxDecoration(
            color: Color(0xff107163),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.access_time,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2),
                child: Text(
                  '08:30 AM',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        )
      : Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          decoration: BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.access_time,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2),
                child: Text(
                  '08:30 AM',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        );
}
