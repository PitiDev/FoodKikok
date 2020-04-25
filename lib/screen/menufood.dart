import 'package:flutter/material.dart';

class Menufood extends StatefulWidget {
  @override
  _MenufoodState createState() => _MenufoodState();
}

class _MenufoodState extends State<Menufood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Food'),
        backgroundColor: Color(0XFFEF6E00),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.zero,
              child: Card(
                child: Container(
                  constraints: BoxConstraints.expand(height: 200),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/res.jpg'), fit: BoxFit.cover)),
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10, top: 5),
                                    child: Text(
                                      'ຮ້ານອາຫານຕາມສະບາຍ',
                                      style: TextStyle(color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          '4KM',
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _widgetMenu(),
          _widgetMenu(),
          _widgetMenu()
        ],
      ),
    );
  }

  Widget _widgetMenu() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/image/res.jpg'),
          ),
          title: Text(
            'ກະເພົາໄກ່',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('ລາຄາ: 15.000 Kip'),
          trailing: Column(
            children: <Widget>[
              MaterialButton(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                   Navigator.pushNamed(context, '/order');
                  },
                color: Color(0XFFE86600),
                child: Text('Add', style: TextStyle(color: Colors.white),),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
