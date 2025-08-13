
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = false; // For show and hide password//
  //text editing controller to control the text we enter into it//
  final username = TextEditingController();
  final password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple.withOpacity(.3),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon:  Icon(Icons.person),
                      hintText: "Username",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                

        
                Container(
                  margin:EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple.withOpacity(.3),
                  ),
                  child: TextFormField(
                    obscureText: isVisible,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          //in there we will create a click to show and hide the password a toggle button//
                          setState(() {
                            //toggle button//
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(
                          isVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                //here is the login one//
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple,
                  ),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                // Signup navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
        
                      },
                      child: const Text("SIGN UP"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
