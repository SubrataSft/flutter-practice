import 'package:first_apps/ui/screens/auth/pin_verification_screen.dart';
import 'package:first_apps/ui/utility/app_colors.dart';
import 'package:first_apps/ui/widgets/background_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
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
                    "Your Email Address",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "A 6 digit verification pin that will be sent your email address",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 24),

                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: "Email"),
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
                    child: const Icon(Icons.arrow_circle_right_outlined),
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
    Navigator.pop(context);
  }
  void _onTapConfirmButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PinVerificationScreen(),),);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
