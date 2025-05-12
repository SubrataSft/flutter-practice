import 'package:first_apps/ui/screens/auth/email_verification_screen.dart';
import 'package:first_apps/ui/screens/auth/sign_up_screen.dart';
import 'package:first_apps/ui/screens/main_bottom_nav_screen.dart';
import 'package:first_apps/ui/utility/app_colors.dart';
import 'package:first_apps/ui/widgets/background_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Form(
          key: _formState,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 90),
                  Text(
                    "Get Started With",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 24),

                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: "Email"),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Write your email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    decoration: InputDecoration(hintText: "Password"),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Write your email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: _onTapNextButton,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  SizedBox(height: 40),
                  TextButton(
                    onPressed: _onTapForgotButton,
                    child: Text("Forgot Password"),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                      ),
                      text: "Don't have a account?",
                      children: [
                        TextSpan(
                          text: " Sign In",
                          style: TextStyle(color: AppColors.themColor),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = _onTapSingInButton,
                        ),
                      ],
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
  void _onTapNextButton() {
    Navigator.pushReplacement(
      context,
      (MaterialPageRoute(builder: (context) => MainBottomNavScreen())),
    );
  }

  void _onTapSingInButton() {
    Navigator.push(
      context,
      (MaterialPageRoute(builder: (context) => SignUpScreen())),
    );
  }

  void _onTapForgotButton() {
    Navigator.push(
      context,
      (MaterialPageRoute(builder: (context) => EmailVerificationScreen())),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
