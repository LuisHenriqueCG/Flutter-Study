import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.blue),
      home: WidgetLogin(),
    );
  }
}

class WidgetLogin extends StatefulWidget {
  @override
  State<WidgetLogin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WidgetLogin> {
  TextStyle style = new TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red)),
              ),
              fixedSize: MaterialStateProperty.all(Size(450.0, 50.0))),
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ));

    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
              child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
              child: Image.network(
                  "http://cdn.onlinewebfonts.com/svg/img_311846.png",
                  fit: BoxFit.contain),
            ),
            SizedBox(
              height: 40.0,
            ),
            emailField,
            SizedBox(
              height: 20.0,
            ),
            passwordField,
            SizedBox(
              height: 30.0,
            ),
            buttonLogin,
          ],
        ),
      ))),
    );
  }
}
