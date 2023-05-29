import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  var _myFormKey = GlobalKey<FormState>();
  var _password = TextEditingController();
  var _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 194, 197, 199),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 83, 190),
        title: Text("My Form"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        child: Form(
            key: _myFormKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (String? msg) {
                      if (msg!.isEmpty) {
                        return "Please enter name";
                      }
                      if (msg.length < 3) {
                        return "name is less then 3 char";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter the name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    validator: (String? msg) {
                      if (msg!.isEmpty) {
                        return "Please enter phone number";
                      }
                      if (msg.length < 10) {
                        return "phone num is less then 10 number";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Mobile",
                        hintText: "Enter the mobile number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _password,
                    // keyboardType: TextInputType.phone,
                    validator: (String? msg) {
                      if (msg!.isEmpty) {
                        return "Please enter password";
                      }
                      if (msg.length < 6) {
                        return "password is less then 6 char";
                      }

                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter the password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _confirmPassword,
                    // keyboardType: TextInputType.phone,
                    validator: (String? msg) {
                      if (msg!.isEmpty) {
                        return "Please enter confirm password";
                      }
                      if (msg != _password.value.text) {
                        return "Your password are not match";
                      }

                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        hintText: "Enter the confirm password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0))),
                  ),
                )
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          _myFormKey.currentState!.validate();
        },
      ),
    );
  }
}
