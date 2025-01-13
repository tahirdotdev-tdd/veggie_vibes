import 'package:flutter/material.dart';
import 'package:veggie_vibes/pages/const.dart';
import 'package:veggie_vibes/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isPasswordVisible = false;
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/logo.png', // Add your logo image in the assets folder
                height: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Center-aligns the content vertically
                  crossAxisAlignment: CrossAxisAlignment
                      .center, // Center-aligns the content horizontally
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // 60% of the screen width
                      child: TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(labelText: 'Name'),
                      ),
                    ),
                    const SizedBox(
                        height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // 60% of the screen width
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                      ),
                    ),
                    const SizedBox(
                        height: 20), // Add spacing between the TextFields
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // 60% of the screen width
                      child: TextField(
                        controller: _passwordController,
                        obscureText:
                        !_isPasswordVisible, // Controls text visibility
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signupUser,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60, vertical: 20), // Increases button size
                  textStyle:
                  const TextStyle(fontSize: 20), // Makes the text larger
                  minimumSize:
                  const Size(150, 50), // Sets a minimum size for the button
                ),
                child: const Text('Sign Up'),
              ),

              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // This method is kept, but it doesn't perform any actual sign-up actions now.
  void _signupUser() async {
    // Add your custom signup logic here.
    print('Signup logic goes here');
  }
}
