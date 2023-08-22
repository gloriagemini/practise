import 'package:flutter/material.dart';
import 'package:practise/pages/components/my_button.dart';
import 'package:practise/pages/components/my_textfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final usernameController = TextEditingController();
  final passwordContoller = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('images/netflixx.png'),
              const SizedBox(height: 10),
              const Icon(
                Icons.lock,
                size: 5,
              ),
              const SizedBox(height: 25),
              MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false),
              SizedBox(height: 10),
              MyTextField(
                controller: passwordContoller,
                hintText: 'Password',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
