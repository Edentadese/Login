import 'package:flutter/material.dart';
import 'package:flutter_application_5/Form.dart';
import 'package:flutter_application_5/login.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            CustomTextField(label: 'Name'),
            const SizedBox(height: 20),
            CustomTextField(label: 'Email'),
            const SizedBox(height: 20),
            CustomTextField(label: 'Password', obscureText: true),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  // Handle registration logic
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      const Color.fromARGB(255, 254, 97, 89), // Text color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Round corners
                  ),

                  elevation: 5, // Shadow effect
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
                    // Navigate to the login page or perform an action
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 87, 4, 123),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
