import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:http/http.dart' as http;

void main() {

  runApp(const Register(
  ));
}

class Register extends StatelessWidget {
  static var primaryColor = primaryblue;

  static var borderColor = burntgold;

  const Register({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bureaucracy Hax',
      theme: ThemeData(
        primarySwatch: primaryblue,
        fontFamily: 'InriaSerif',
      ),
      home: const MyHomePage(title: 'Register Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  double appBarHeight = kToolbarHeight + 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {},
              style: MyButtonStyle.flatButtonStyle,
              child: const Text('Home'),
            ),
            TextButton(
              onPressed: () {},
              style: MyButtonStyle.flatButtonStyle,
              child: const Text('Institution',),
            ),
            TextButton(
              onPressed: () {},
              style: MyButtonStyle.flatButtonStyle,
              child: const Text('Contact'),
            ),
            TextButton(
              onPressed: () {},
              style: MyButtonStyle.flatButtonStyle,
              child: const Text('My Account'),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(3.0),
              child: Container(
                height: 3.0,
                color: burntgold.shade700,
              )
          )
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_buildings.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: kToolbarHeight),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Center(
                  child: Container(

                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height / 1.5,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: primaryblue.shade500,
                      border: Border.all(
                        color: burntgold.shade700,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: RegistrationPage(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyButtonStyle {
  static final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      foregroundColor: burntgold.shade200,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      textStyle: const TextStyle(
        fontFamily: 'InriaSerif',
        fontWeight: FontWeight.normal,
        fontSize: 17,
      )
  );
}

class RegistrationPage extends StatefulWidget {

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _addressController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  String _feedbackText = '';


  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
    _nameController.dispose();
    _surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: burntgold.shade700,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TextFormField(
                              controller: _usernameController,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    bottom: 16.0, left: 10),
                                border: InputBorder.none,
                                hintText: 'Username',
                                hintStyle: TextStyle(color: burntgold.shade300),
                              ),
                            ),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          labelText: 'Username'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a username';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: burntgold.shade700,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TextFormField(
                              controller: _passwordController,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    bottom: 16.0, left: 10),
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: burntgold.shade300),
                              ),
                            ),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          labelText: 'Password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: burntgold.shade700,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TextFormField(
                              controller: _emailController,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    bottom: 16.0, left: 10),
                                border: InputBorder.none,
                                hintText: 'E-mail',
                                hintStyle: TextStyle(color: burntgold.shade300),
                              ),
                            ),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          labelText: 'Email'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter an email address';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: burntgold.shade700,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TextFormField(
                              controller: _phoneNumberController,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    bottom: 16.0, left: 10),
                                border: InputBorder.none,
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(color: burntgold.shade300),
                              ),
                            ),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          labelText: 'Phone Number'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a phone number';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _addressController,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: burntgold.shade700,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TextFormField(
                              controller: _addressController,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    bottom: 16.0, left: 10),
                                border: InputBorder.none,
                                hintText: 'Address',
                                hintStyle: TextStyle(color: burntgold.shade300),
                              ),
                            ),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          labelText: 'Address'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter an address';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: burntgold.shade700,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TextFormField(
                              controller: _nameController,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                    bottom: 16.0, left: 10),
                                border: InputBorder.none,
                                hintText: 'Name',
                                hintStyle: TextStyle(color: burntgold.shade300),
                              ),
                            ),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          labelText: 'Name'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _surnameController,
                      decoration: InputDecoration(
                        suffixIcon: Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: burntgold.shade700,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: TextFormField(
                            controller: _surnameController,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  bottom: 16.0, left: 10),
                              border: InputBorder.none,
                              hintText: 'Surname',
                              hintStyle: TextStyle(color: burntgold.shade300),
                            ),
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        labelText: 'Surname',
                        labelStyle: const TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your surname';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () async {
                        String backendUrl = "http://127.0.0.1:6969/api/auth/register";
                        final response = await http.post(
                            Uri.parse(backendUrl), body: {
                          'username': _usernameController.text,
                          'password': _passwordController.text,
                          'name': _nameController.text,
                          'surname': _surnameController.text,
                          'email': _emailController.text,
                          'phone_number': _phoneNumberController.text,
                          'city': _addressController.text,
                        });

                        if (response.statusCode == 200) {
                          // Registration successful
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Registration Successful'),
                                content: Text(
                                    'You have successfully registered.'),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('OK'),
                                    onPressed: () {
                                      Navigator.pushNamed(context,'C:\\Users\\win32\\Desktop\\front-end-team2\\lib\\login.dart');
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                          setState(() {
                            _feedbackText =
                            'Registration successful. Welcome, ${_usernameController
                                .text}!';
                            _usernameController.clear();
                            _passwordController.clear();
                            _emailController.clear();
                            _phoneNumberController.clear();
                            _addressController.clear();
                            _nameController.clear();
                            _surnameController.clear();
                          });
                        } else {
                          // Registration failed
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Registration Failed'),
                                content: Text(
                                    'Registration failed. Please try again.'),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: Text('Register'),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      _feedbackText,
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
