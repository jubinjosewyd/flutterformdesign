import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}
bool? isChecked = false;
bool? isChecked2 = false;

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Form(
        key: _formKey,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [Color(0xFF7B1FA2), Color(0xFF80DEEA)],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 520,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Material(
                                    color: Colors.deepPurple[900],
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Registration Form",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: SizedBox(
                              height: 50,
                              child: TextFormField(
                                controller: firstController,
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(color: Colors.grey[350]),
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                    return "Enter correct name";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: SizedBox(
                              height: 50,
                              child: TextFormField(
                                controller: lastController,
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(color: Colors.grey[350]),
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                    return "Enter correct name";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: SizedBox(
                              height: 50,
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.grey[350]),
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+')
                                          .hasMatch(value)) {
                                    return "Enter correct Email";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: SizedBox(
                              height: 50,
                              child: TextFormField(
                                controller: passwordController,
                                decoration: InputDecoration(


                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey[350]),

                                  border: OutlineInputBorder(),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 8) {
                                    return "Password should be at least 8 characters long";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),

                          Container(
                            width: double.infinity, // Make sure the container takes up the full width
                            child: Align(
                              alignment: Alignment.centerRight, // Align to the right
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked,
                                      activeColor: Colors.white,
                                      checkColor: Colors.grey[300],
                                      fillColor: MaterialStateProperty.all(Colors.white),
                                      //tristate: true,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isChecked = newBool;
                                        });
                                      },
                                    ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Lorem ipsum dolor sit ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity, // Make sure the container takes up the full width
                            child: Align(
                              alignment: Alignment.centerRight,
                              // Align to the right
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked2,
                                      activeColor: Colors.white,
                                      checkColor: Colors.grey[300],
                                      fillColor: MaterialStateProperty.all(Colors.white),
                                      //tristate: true,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isChecked2 = newBool;
                                        });
                                      },
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Sed ut perspiciatis unde omnis ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 40),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      // Handle registration logic here if the form is valid.
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


