import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:apifm/apifm.dart' as Apifm;
import 'package:flutter_qq/flutter_qq.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String username;
  String password;
  String passwordagain;
  GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void getHttp() async {
      var formData = FormData.fromMap({
        "username": "$username",
        "password": '$password',
      });
      Response response =
          await Dio().post('http://localhost:82/sqlcon.php', data: formData);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("注册"),
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_sharp),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Form(
          key: formGlobalKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "用户名",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                      ),
                    ),
                    onSaved: (value) {
                      this.username = value;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "密码",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                      ),
                    ),
                    onSaved: (value) {
                      this.passwordagain = value;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "确认密码",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                      ),
                    ),
                    onSaved: (value) {
                      this.password = value;
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("注册"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
