import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// This is the HomePage class which is a [StatelessWidget] that displays a home page.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}

/// This is the LoginPage class which is a [StatelessWidget] that displays a login page.
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            radius: 50,
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Go to Registration'),
            onPressed: () {
              Navigator.pushNamed(context, registrationPageRoute);
            },
          ),
        ],
      ),
    );
  }
}

/// This is the RegistrationPage class which is a [StatelessWidget] that displays a registration page.
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back to First'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

const String loginPageRoute = '/login';
const String registrationPageRoute = '/registration';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Set the HomePage as the home page.
      routes: {
        loginPageRoute: (context) => LoginPage(),
        registrationPageRoute: (context) => RegistrationPage(),
      },
    ),
  );
}
