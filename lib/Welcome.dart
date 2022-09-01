import 'package:flutter/material.dart';
import 'package:shoes_shop_ui/pages/myhomepage.dart';

class SignIn extends StatelessWidget {
  GlobalKey<FormState> formState =
  GlobalKey<FormState>(); //valid existing input
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //instead of using SingleChildScrollView in body
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          //centerTitle: true
          child: Text('Shoes App'),
        ),
      ),
      body: Form(
        key: formState,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          //column + scroll for children unlike SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Shoes App!',
                style: TextStyle(
                  //style: widget, TextStyle: class in Framework
                  fontSize: 30,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 20,
                ),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'User Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.lightGreen,
                  ),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'User Name is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.lightGreen,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  }),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  )),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const MyHomePage();
                          },
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Row(
                //cross works for column and main works for row
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUp();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  GlobalKey<FormState> formState =
  GlobalKey<FormState>(); //valid existing input
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Sign up'),
        centerTitle: true,
      ),
      body: Form(
        key: formState,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          //column + scroll for children unlike SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Shoes App!',
                style: TextStyle(
                  //style: widget, TextStyle: class in Framework
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 20,
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'User Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.lightGreen,
                  ),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'User Name is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.lightGreen,
                  ),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Password is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 25,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.lightGreen,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyHomePage();
                          },
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}