import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Registration'),
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: FadeInImage.assetNetwork(
                  placeholder: 'assets/logo_placeholder.png',// <-- placeholder image
                  image: 'C:\Users\oana_\Downloads\logo-ip.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Color(0xFF101C2B),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: RegistrationPage(),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Institutions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              label: 'Contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Account',
            ),
          ],
        ),
      ),
    );
  }
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
        appBar: AppBar(
        title: Text('Registration'),
    ),
    body: SingleChildScrollView(
    child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    TextFormField(
    controller: _usernameController,
    decoration: InputDecoration(labelText: 'Username'),
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
    decoration: InputDecoration(labelText: 'Password'),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Please enter a password';
    }
    return null;
    },
    ),
    TextFormField(
    controller: _emailController,
    decoration: InputDecoration(labelText: 'Email'),
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
    decoration: InputDecoration(labelText: 'Phone Number'),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Please enter a phone number';
    }
    return null;
    },
    ),
    TextFormField(
    controller: _addressController,
    decoration: InputDecoration(labelText: 'Address'),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Please enter an address';
    }
    return null;
    },
    ),
    TextFormField(
    controller: _nameController,
    decoration: InputDecoration(labelText: 'Name'),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Please enter your name';
    }
    return null;
    },
    ),
    TextFormField(
    controller: _surnameController,
    decoration: InputDecoration(labelText: 'Surname'),
    validator: (value) {
    if (value!.isEmpty) {
                      return 'Please enter your surname';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                myElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //register
                    }
                  },
                  child: Text('Register'),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

  ElevatedButton myElevatedButton({required VoidCallback onPressed, required Widget child}) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }


  Widget myTextFormField({required TextEditingController controller, required String labelText, required String Function(String?)? validator}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: labelText),
      validator: validator,
    );
  }
