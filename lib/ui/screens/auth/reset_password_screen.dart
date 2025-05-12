import 'package:first_apps/ui/screens/auth/sign_in_screen.dart';
import 'package:first_apps/ui/utility/app_colors.dart';
import 'package:first_apps/ui/widgets/background_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController = TextEditingController();
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
                  const SizedBox(height: 90),
                  Text(
                    "Set Password",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "Minimum length of password should be more then 6 letters and combination number with",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 24),

                  TextFormField(
                    controller: _passwordTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: "password"),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Write your email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _confirmPasswordTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: "Confirm password"),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Write your email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: _onTapConfirmButton,
                    child: const Text("Confirm"),
                  ),
                  const SizedBox(height: 40),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                      ),
                      text: "have a account?",
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

  void _onTapSingInButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
          (route) => false,
    );
  }
  void _onTapConfirmButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
          (route) => false,
    );  }

  @override
  void dispose() {
    _passwordTEController.dispose();
    _confirmPasswordTEController.dispose();
    super.dispose();
  }
}
