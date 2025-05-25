import 'package:first_apps/data/models/network_response.dart';
import 'package:first_apps/data/network_caller/network_caller.dart';
import 'package:first_apps/data/utilitis/urls.dart';
import 'package:first_apps/ui/screens/auth/email_verification_screen.dart';
import 'package:first_apps/ui/screens/auth/sign_up_screen.dart';
import 'package:first_apps/ui/screens/main_bottom_nav_screen.dart';
import 'package:first_apps/ui/utility/app_colors.dart';
import 'package:first_apps/ui/widgets/background_widget.dart';
import 'package:first_apps/ui/widgets/snack_bar_message.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../utility/app_constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _signInApiInProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formState,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 90),
                  Text(
                    "Get Started With",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 24),

                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: "Email"),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return "Write your email address";
                      }
                      if (AppConstants.emailRexExp.hasMatch(value!) == false) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: _showPassword == false,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          _showPassword = !_showPassword;
                          if (mounted) {
                            setState(() {});
                          }
                        },
                        icon: Icon(
                          _showPassword
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return "Write your password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  Visibility(
                    visible: _signInApiInProgress == false,
                    replacement: const Center(
                      child: CircularProgressIndicator(),
                    ),
                    child: ElevatedButton(
                      onPressed: _onTapNextButton,
                      child: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextButton(
                    onPressed: _onTapForgotButton,
                    child: const Text("Forgot Password"),
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                      ),
                      text: "Don't have a account?",
                      children: [
                        TextSpan(
                          text: " Sign In",
                          style: const TextStyle(color: AppColors.themColor),
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
    if (_formState.currentState!.validate()) {
      _signUp();
    }
  }

  Future<void> _signUp() async {
    _signInApiInProgress = true;
    if (mounted) {
      setState(() {});
    }
    Map<String, dynamic> requestData = {
      "email":_emailTEController.text.trim(),
      "password":_passwordTEController.text
    };
    final NetworkResponse response = await NetworkCaller.postRequest(
      Urls.login,
    );
    _signInApiInProgress = false;
    if (mounted) {
      setState(() {});
    }
    if (response.isSuccess) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainBottomNavScreen()),
      );
    } else {
      showSnackBarMessage(context, response.errorMessage?? "Email/Password is not correct!, Try again");
    }
  }

  void _onTapSingInButton() {
    Navigator.push(
      context,
      (MaterialPageRoute(builder: (context) => const SignUpScreen())),
    );
  }

  void _onTapForgotButton() {
    Navigator.push(
      context,
      (MaterialPageRoute(
        builder: (context) => const EmailVerificationScreen(),
      )),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
