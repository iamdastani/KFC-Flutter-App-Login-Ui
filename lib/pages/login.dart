import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: Center(
              child: Image(
                  image: NetworkImage(
                      'https://1000logos.net/wp-content/uploads/2017/03/Kfc_logo-768x432.png')),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              width: 350,
              height: 100,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    label: Text('Enter Email'), prefixIcon: Icon(Icons.mail)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            width: 350,
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text("Enter Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
          ),
          Text("Forget Password?"),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // background color
              onPrimary: Colors.white, // text color
              minimumSize: Size(200, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ), // set minimum size
            ),
            onPressed: () {
              // do something when the button is pressed
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
