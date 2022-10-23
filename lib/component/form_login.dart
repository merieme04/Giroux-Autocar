import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          TextFormField(
            obscureText: passenable,
            decoration: InputDecoration(
              hintText: "Password",
              suffix: IconButton(
                onPressed: () {
                  setState(() {
                    if (passenable) {
                      passenable = false;
                    } else
                      passenable = true;
                  });
                },
                icon: Icon((passenable == false)
                    ? Icons.password
                    : Icons.remove_red_eye),
              ),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Email or password is wrong, please check again';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 30),
            child: SizedBox(
              width: 400,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(8),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xffF7A538),
                  ),
                ),
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: Text(
                  'Sign In',
                  style: GoogleFonts.inter(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
