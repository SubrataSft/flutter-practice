import 'package:first_apps/ui/screens/auth/sign_in_screen.dart';
import 'package:first_apps/ui/utility/asset_paths.dart';
import 'package:first_apps/ui/widgets/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }
  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    if(mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Center(
          child: SvgPicture.asset(AssetPaths.appLogoSvg, width: 140),
        ),
      ),
    );
  }
}
