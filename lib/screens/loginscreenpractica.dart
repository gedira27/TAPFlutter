import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:topicos/utilities/constants.dart';

class LoginScreenPractica extends StatefulWidget {
  const LoginScreenPractica({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenPractica> {
  bool _rememberMe = false;

Widget _buildEmailTF() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: kLabelStyle,
      ),
      const SizedBox(height: 8.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle.copyWith(
          color: Colors.red,
          borderRadius: BorderRadius.zero
        ),
        height: 60.0,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10.0),
            prefixIcon: const Icon(
              Icons.email,
              color: Colors.black,
            ),
            hintText: 'Enter your Email',
            hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
  );
}

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: kLabelStyle,
        ),
        const SizedBox(height: 8.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle.copyWith(
            color: Colors.red,
            borderRadius: BorderRadius.zero
          ),
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 10.0),
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

Widget _buildForgotPasswordBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () => print('Forgot Password Button Pressed'),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(right: 0.0),
      ),
      child: Text(
        'Forgot Password?',
        style: kLabelStyle,
      ),
    ),
  );
  }

  Widget _buildRememberMeCheckbox() {
    return SizedBox(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.black,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 25.0),
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5.0,
        padding: const EdgeInsets.all(15.0),
        backgroundColor: Colors.red,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: () => print('Login Button Pressed'),
      child: const Text(
        'Enter',
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.5,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
      ),
    ),
  );
  }

  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        const Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }

   Widget _buildSocialBtn(VoidCallback onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            const AssetImage(
              'assets/logos/facebook.jpg'
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            const AssetImage(
              'assets/logos/google.jpg',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(146, 0, 0, 0),
                    Color.fromARGB(74, 0, 0, 0),
                    Color.fromARGB(255, 0, 0, 0)
                  ],
                  stops: [0.1, 1.0, 0.0, 0.0],
                  ),
                ),
              ),
              SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      _buildEmailTF(),
                      const SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      _buildRememberMeCheckbox(),
                      _buildLoginBtn(),
                      _buildSignInWithText(),
                      _buildSocialBtnRow(),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}