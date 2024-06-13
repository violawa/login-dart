import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginWidget extends StatelessWidget {
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset(
              "images/bee.jpg",
              width: 100,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: t1,
                maxLength: 30,
                decoration: InputDecoration(
                  labelText: "Email",
                  counterText: "",
                  hintText: "Email Address",
                  helperText: "Enter your valid email",
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: t2,
                maxLength: 8,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  counterText: "",
                  hintText: "Password",
                  helperText: "Enter your valid Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (_) {}),
                  Text("Remember Me"),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var isiEmail = t1.text;

                  if (isiEmail.isEmpty) {
                    print("Please input email");
                    Fluttertoast.showToast(
                        msg: "Please input email",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  } else if (isiEmail.contains("@") == false) {
                    print("Invalid email format");
                  }

                  //validasi password
                  var isiPassword = t2.text;

                  if (isiPassword.isEmpty) {
                    print("Please input password");
                  } else if (isiPassword.length < 5) {
                    print("Password min 5 characters");
                  }
                  //1. harus diisi
                  //2.minimal 5 karakter
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
