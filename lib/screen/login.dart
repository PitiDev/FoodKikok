import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Image.asset('assets/image/logo.png',width: 200,),
            ),
            Card(
              margin: EdgeInsets.only(left: 20,right: 20,top: 30),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 25,right: 25,top: 60,bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0XFFF8F8F8),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.person_outline,size: 30,color: Color(0XFF91A6A6),),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 15)
                      ),
                      style: TextStyle(fontSize: 17),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 25,right: 25,bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0XFFF8F8F8),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.vpn_key,size: 30,color: Color(0XFF91A6A6),),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 15)
                      ),
                      style: TextStyle(fontSize: 17),
                    ),
                  ),

                  Container(
                  margin: EdgeInsets.only(bottom: 60),
                    child: MaterialButton(
                      minWidth: 318,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      color: Color(0XFFEF6E00),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Text('LOGIN',style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Center(
                child: Text('Register With'),
              ),
            ),

            SizedBox(height: 30,),

            Container(
              margin: EdgeInsets.only(bottom: 10,left: 50,right: 50),
              child: MaterialButton(
                minWidth: 318,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Color(0XFF006ECC),
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Text('Facebook',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onPressed: (){

                },
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 60,left: 50,right: 50),
              child: MaterialButton(
                minWidth: 318,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Color(0XFFD83D04),
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Text('Google Gmail',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                onPressed: (){

                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
