import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Order'),
        backgroundColor: Color(0XFFEF6E00),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text('ສະຖານະການສັ່ງອາຫານ'),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 100,
              child: Center(
                child: Text(
                  '15 ນາທີ',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/status.png'),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 65,left: 70),
                      child: Text('ຮັບອໍເດີແລ້ວ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 40,left: 70),
                      child: Text('ກໍາລັງກຽມອາຫານ',style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 50,left: 70),
                      child: Text('ກໍາລັງໄປສົ່ງອາຫານ',style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 40,left: 70),
                      child: Text('ຈັດສົ່ງອາຫານສໍາເລັດ',style: TextStyle(color: Colors.grey),),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),

      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20,right: 20,bottom: 30),
        child: MaterialButton(
            color: Color(0XFFEF6E00),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: (){
              Navigator.pushNamed(context, '/home');
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('ສັ່ງອາຫານເພີ່ມ',style: TextStyle(color: Colors.white),)
                ],
              ),
            )
        ),
      ),

    );
  }
}
