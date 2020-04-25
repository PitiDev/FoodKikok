import 'package:flutter/material.dart';
import 'package:foood_kikok/screen/listres.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Kikok',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0XFFEF6E00),
      ),

      body: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "ຄົ້ນຫາຮ້ານອາຫານ",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Color(0XFF91A6A6),)
                    ),
                  ),
                ),
              ),
            ),
          ),

          Container(
            height: 700,
            child: ListRes(),
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/image/profile.png',width: 100,),
                    SizedBox(height: 10,),
                    Text('PitiDev')
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0XFFBEBEBE)
              ),
            ),

            ListTile(
              title: Text('Profile',style: TextStyle(fontSize: 20),),
              onTap: (){

              },
            ),
            Divider(),
            ListTile(
              title: Text('Setting',style: TextStyle(fontSize: 20),),
              onTap: (){

              },
            ),
            Divider(),
            ListTile(
              title: Text('Logout',style: TextStyle(fontSize: 20),),
              onTap: (){
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
