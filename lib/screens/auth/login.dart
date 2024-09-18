import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:thaimerit/providers/auth.dart';
import 'package:thaimerit/screens/fullapp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FullAppScreen(),
                      type: PageTransitionType.bottomToTop));
            },
            icon: Icon(
              Icons.close,
              color: Color(0XFF4D4D4D),
            )),
        centerTitle: true,
        title: const Text("ลงทะเบียนเข้าใช้งาน",
            style: TextStyle(color: Color(0XFF4D4D4D))),
        toolbarHeight: 80,
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            padding: EdgeInsets.all(15),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 37),
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain,
                  width: 70,
                  height: 150,
                ),
              ),
              TextFormField(
                // obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกอีเมล';
                  }
                  return null;
                },
                // onSaved: (val) => _email = val,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  labelStyle: TextStyle(color: Color(0xFF808080), fontSize: 15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0XFFDADADA), width: 1.5),
                    // borderRadius: BorderRadius.circular(25.0),
                  ),
                  label: Text("อีเมลของคุณ"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () async {
                  await Provider.of<Auth>(context, listen: false).login();
                  Navigator.push(
                      context,
                      PageTransition(
                          child: FullAppScreen(),
                          type: PageTransitionType.bottomToTop));
                },
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).accentColor
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Container(
                    constraints: BoxConstraints(
                        maxWidth: double.infinity, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "ถัดไป",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: const <Widget>[
                Expanded(
                    child: Divider(
                  indent: 10,
                  thickness: 1.2,
                  endIndent: 10,
                  color: Color(0xFFDADADA),
                )),
                Text(
                  "หรือ",
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                    child: Divider(
                  thickness: 1.2,
                  indent: 10,
                  endIndent: 10,
                  color: Color(0xFFDADADA),
                )),
              ]),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Container(
                    constraints: BoxConstraints(
                        maxWidth: double.infinity, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "เข้าสู่ระบบด้วยเฟชบุ๊ก",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              "assets/icon-facebook.png",
                              width: 25,
                              height: 25,
                            )),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Container(
                    constraints: BoxConstraints(
                        maxWidth: double.infinity, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.only(right: 13),
                                child: Text(
                                  "เข้าสู่ระบบด้วยกูเกิล",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              "assets/icon-google.png",
                              width: 25,
                              height: 25,
                            )),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
