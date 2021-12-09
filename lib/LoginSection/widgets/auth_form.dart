import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key, required this.submitAuthFormFn}) : super(key: key);

  final Function(
      {required String email,
      required String username,
      required String password,
      required bool isLogin}) submitAuthFormFn;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isLogin = true;

  String _email = '';
  String _username = '';
  String _password = '';

  void submitForm() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        widget.submitAuthFormFn(
          email: _email,
          username: _username,
          password: _password,
          isLogin: _isLogin,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => EmailValidator.validate(value!)
                ? null
                : 'Mohon masukan format email yang benar',
            onSaved: (value) {
              _email = value.toString();
            },
          ),
          SizedBox(height: 15),
          if (!_isLogin)
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 5)
                  return 'Username minimal memiliki 5 karakter';

                return null;
              },
              onSaved: (value) {
                _username = value.toString();
              },
            ),
          if (!_isLogin)
            SizedBox(
              height: 15,
            ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8)
                return 'Password minimal memiliki 8 karakter';

              return null;
            },
            onSaved: (value) {
              _password = value.toString();
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: submitForm,
            child: Text(_isLogin ? 'Masuk' : 'Daftar'),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _isLogin = !_isLogin;
              });
            },
            child: Text(_isLogin ? 'Daftar akun baru' : 'Sudah punya akun'),
          ),
        ],
      ),
    );
  }
}
