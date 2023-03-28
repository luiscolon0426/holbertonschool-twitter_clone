import 'package:flutter/material.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  @override
  // ignore: overridden_fields
  final Key? key;
  const ForgetPassword({this.key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Forget Password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Enter your email address below to receive password reset instruction',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            CustomEntryField(
              controller: _emailController,
              hint: 'Email',
              isPassword: false,
            ),
            const SizedBox(height: 16.0),
            Center(
                child: CustomFlatButton(
              onPressed: () {
                // Perform sign in logic here
              },
              label: 'Submit',
            )),
          ],
        ),
      ),
    );
  }
}
