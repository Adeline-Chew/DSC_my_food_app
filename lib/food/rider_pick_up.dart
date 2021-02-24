import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RiderPickUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.black87,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          middle: Text("Fill In Your Details"),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              child: RegisterForm(),
            ),
          ],
        ));
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Full Name'),
            // ignore: missing_return
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Full Name is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Contact Number'),
            // ignore: missing_return
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Contact Number is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration:
                const InputDecoration(labelText: 'Food Item Description'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: _agreedToTOS,
                  onChanged: _setAgreedToTOS,
                ),
                GestureDetector(
                  onTap: () => _setAgreedToTOS(!_agreedToTOS),
                  child: const Text(
                    'I agree to the Terms of Services and Privacy Policy',
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              const Spacer(),
              OutlineButton(
                highlightedBorderColor: Colors.black,
                onPressed: _submittable() ? _submit : null,
                child: const Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  bool _submittable() {
    return _agreedToTOS;
  }

  void _submit() {
    if (_formKey.currentState.validate()) {
      const SnackBar snackBar = SnackBar(content: Text('Form submitted'));

      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}
