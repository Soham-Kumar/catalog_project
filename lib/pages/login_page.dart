import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/secure_login.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 4.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Username",
                            labelText: "Enter Username",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.man_sharp)
                          ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: _secureText,
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Enter Password",
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                              icon: Icon(_secureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
                              onPressed: () {
                                setState((){
                                  _secureText = !_secureText;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/homeRoute');
                          },
                        child: Container(
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )

                      // ElevatedButton(
                      //     onPressed: (){
                      //
                      //     },
                      //     style: TextButton.styleFrom(),
                      //     child: Text("Login"))
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
