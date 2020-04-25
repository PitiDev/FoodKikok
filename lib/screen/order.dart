import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
        backgroundColor: Color(0XFFEF6E00),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Center(
            child: Text('ລາຍການສັ່ງອາຫານ', style: TextStyle(fontSize: 17),),
          ),
          Container(
            height: 300,
            child: _widgetOrder(),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('ລາຄາ: 15.000 Kip'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('ລວມລາຄາທີ່ຕ້ອງຈ່າຍ: 15.000 Kip'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                    onPressed: (){},
                  color: Color(0XFFEBEBEB),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(4),
                        child: Image.asset('assets/image/visa.png', width: 40,),
                      ),
                      Text('ຈ່າຍເງີນຜ່ານ Visa')
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: (){},
                  color: Color(0XFFEBEBEB),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Image.asset('assets/image/bilke.png', width: 40,),
                      ),
                      Text('ຈ່າຍເງີນປາຍທາງ')
                    ],
                  ),
                )
              ],
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
              Navigator.pushNamed(context, '/map');
            },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add_shopping_cart,color: Colors.white,),
                Text('ສັ່ງອາຫານ',style: TextStyle(color: Colors.white),)
              ],
            ),
          )
        ),
      ),
    );
  }

  Widget _widgetOrder(){
    return ListView(
      children: <Widget>[
        Container(
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
              trailing: Text('ຈໍານວນ: 1',style: TextStyle(color: Color(0XFFEF6E00)),)
            ),
          ),
        )
      ],
    );
  }
}
