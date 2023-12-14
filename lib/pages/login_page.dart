import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double containerHeight = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003755),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Image.asset(
                'assets/images/bank2.png',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.white,
                  child: const Column(
                    children: [
                      TabBar.secondary(tabs: [
                        Tab(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]),
                      Expanded(
                        child: TabBarView(
                          children: [
                            LoginForm(),
                            RegisterForm(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Login ID',
              style: TextStyle(
                  color: Color(0xFF002c4f), fontWeight: FontWeight.bold),
            ),
            const TextField(
                decoration: InputDecoration(hintText: 'Enter login ID')),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Password',
              style: TextStyle(
                  color: Color(0xFF002c4f), fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter password',
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              //height: 50,
              width: double.infinity,
              //height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF002c4f),
                    shape: const RoundedRectangleBorder()),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot login ID or Password?',
                  style: TextStyle(color: Color(0xFF002c4f)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Debit Card Number',
              style: TextStyle(
                  color: Color(0xFF002c4f), fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration:
                  InputDecoration(hintText: 'Input 16 digit PIN number'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('ATM ',
                style: TextStyle(
                    color: Color(0xFF002c4f), fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(hintText: 'Enter ATM PIN'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('CNIC/Passport Number',
                style: TextStyle(
                    color: Color(0xFF002c4f), fontWeight: FontWeight.bold)),
            const TextField(
                decoration:
                    InputDecoration(hintText: 'Enter CNIC or passport number')),
            const SizedBox(
              height: 30,
            ),
            const Text('Account Number',
                style: TextStyle(
                    color: Color(0xFF002c4f), fontWeight: FontWeight.bold)),
            const TextField(
              decoration:
                  InputDecoration(hintText: 'Enter 14 digit debit card number'),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF002c4f),
                      shape: const RoundedRectangleBorder()),
                  child: const Text('Register',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                )),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text('Vew Terms and Conditions',
                        style: TextStyle(color: Color(0xFF002c4f)))))
          ],
        ),
      ),
    );
  }
}
