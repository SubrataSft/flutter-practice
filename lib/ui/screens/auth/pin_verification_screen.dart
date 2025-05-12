import 'package:first_apps/ui/screens/auth/reset_password_screen.dart';
import 'package:first_apps/ui/screens/auth/sign_in_screen.dart';
import 'package:first_apps/ui/utility/app_colors.dart';
import 'package:first_apps/ui/widgets/background_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  final TextEditingController _pinTEController = TextEditingController();
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
                    "Pin Verification",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "A 6 digit verification pin that will have been sent your email address",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 24),

                  _buildPinCodeTextField(),
                  const SizedBox(height: 12),
                  ElevatedButton(onPressed:_onTapVerifyButton, child: Text("Verify")),
                  const SizedBox(height: 40),
                  _buildSignInSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return RichText(
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
            recognizer: TapGestureRecognizer()..onTap = _onTapSingInButton,
          ),
        ],
      ),
    );
  }

  Widget _buildPinCodeTextField() {
    return PinCodeTextField(
      length: 6,
      obscureText: false,

      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        selectedColor: AppColors.themColor,
        activeColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      appContext: context,
      controller: _pinTEController,
    );
  }

  void _onTapSingInButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
      (route) => false,
    );
  }
  void _onTapVerifyButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResetPasswordScreen()));

  }

  @override
  void dispose() {
    _pinTEController.dispose();
    super.dispose();
  }
}
