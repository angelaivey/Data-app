import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'locator.dart';

class RegisterScreen extends StatelessWidget {

  // static const String idScreen = "register";
  //
  // TextEditingController nameTextEditingController = TextEditingController();
  // TextEditingController phoneTextEditingController = TextEditingController();
  // TextEditingController emailTextEditingController = TextEditingController();
  // TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "REGISTER",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 36
              ),
              textAlign: TextAlign.left,
            ),
          ),

          SizedBox(height: size.height * 0.03),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              //controller: nameTextEditingController,
              decoration: InputDecoration(
                  labelText: "Name"
              ),
            ),
          ),

          SizedBox(height: size.height * 0.03),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              //controller: phoneTextEditingController,
              decoration: InputDecoration(
                  labelText: "Mobile Number"
              ),
            ),
          ),

          SizedBox(height: size.height * 0.03),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              //controller: emailTextEditingController,
              decoration: InputDecoration(
                  labelText: "email"
              ),
              // validator: (value){
              //   if (value.isEmpty){
              //     Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              //     RegExp regex = new RegExp(pattern);
              //     if (! regex.hasMatch(value)) {
              //       return 'Please make sure your email is valid';
              //     }else{
              //       return null;
              //     }
              //   }else{
              //     return null;
              //   }
              // },
            ),
          ),

          SizedBox(height: size.height * 0.03),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              //controller: passwordTextEditingController,
              decoration: InputDecoration(
                  labelText: "Password"
              ),
              obscureText: true,
            ),
          ),

          SizedBox(height: size.height * 0.05),

          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: RaisedButton(
              onPressed: () {
                //registerNewUser(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Locator()));
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: size.width * 0.5,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ]
                    )
                ),
                padding: const EdgeInsets.all(0),
                child: Text(
                  "SIGN UP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
              },
              child: Text(
                "Already Have an Account? Sign in",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //
  // void registerNewUser(BuildContext context) async {
  //   final firebaseUser = (
  //     await _firebaseAuth.createUserWithEmailAndPassword(
  //         email: emailTextEditingController.text,
  //         password: passwordTextEditingController.text
  //     )).user;
  //   if(firebaseUser != null){
  //     // save user info
  //   }else{
  //     //error occurred
  //     //displayToastMessage('New user has not been created.', context);
  //   }
  // }
}

