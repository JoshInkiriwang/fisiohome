import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key, required this.submitAuthFormFn}) : super(key: key);

  final Function(
      {required String email,
      required String fullName,
      required String password,
      required bool isLogin}) submitAuthFormFn;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isLogin = true;

  TextEditingController dateCtrl = TextEditingController();

  String _email = '';
  String _fullName = '';
  String _password = '';

  void submitForm() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        widget.submitAuthFormFn(
          email: _email,
          fullName: _fullName,
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
            key: Key('email'),
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
          SizedBox(
            height: 20,
          ),
          if (!_isLogin)
            TextFormField(
              key: Key('fullName'),
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty)
                  return 'Masukan nama lengkap sesuai identitas anda';

                return null;
              },
              onSaved: (value) {
                _fullName = value.toString();
              },
            ),
          if (!_isLogin)
            SizedBox(
              height: 20,
            ),
          TextFormField(
            key: Key('password'),
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
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size(350, 58),
              primary: Color.fromRGBO(95, 37, 224, 100),
              textStyle: TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
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
            child: Text(
              _isLogin ? 'Daftar akun baru' : 'Sudah punya akun',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Raleway',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
