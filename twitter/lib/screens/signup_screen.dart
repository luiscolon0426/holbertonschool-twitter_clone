import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  @override
  // ignore: overridden_fields
  final Key? key;
  const SignUp({this.key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordControllerC = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomEntryField(
              controller: _nameController,
              hint: 'Enter Name',
              isPassword: false,
            ),
            CustomEntryField(
              controller: _emailController,
              hint: 'Enter Email',
              isPassword: false,
            ),
            CustomEntryField(
              controller: _passwordController,
              hint: 'Enter Password',
              isPassword: true,
            ),
            CustomEntryField(
              controller: _passwordControllerC,
              hint: 'Confirm Password',
              isPassword: true,
            ),
            const SizedBox(height: 16.0),
            Center(
                child: CustomFlatButton(
              onPressed: () {
                // Perform sign in logic here
              },
              label: 'Sign Up',
            )),
          ],
        ),
      ),
    );
  }
}
