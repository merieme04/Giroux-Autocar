import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class FormSignup extends StatefulWidget {
  const FormSignup({super.key});

  @override
  State<FormSignup> createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passenable = true;

  late bool? cheked;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Name is wrong, please check again';
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Name',
            ),
          ),
          TextFormField(
            validator: (String? value) {
              bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value!);
              if ((value == null || value.isEmpty)) {
                return 'Email is wrong, please check again';
              } else if (!emailValid)
                return 'Email is not correct, please check again';
              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          SizedBox(
            height: 80,
            child: TextFormField(
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
          ),
          CheckboxListTile(
            activeColor: Colors.black54,
            checkColor: Colors.white,
            title: const Text(
              'I agree with our Terms and Conditions',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            value: timeDilation != 1.0,
            onChanged: (bool? value) {
              setState(() {
                timeDilation = value! ? 2.0 : 1.0;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(5),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
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
                  'Sign Up',
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
