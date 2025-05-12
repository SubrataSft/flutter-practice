import 'package:first_apps/ui/widgets/background_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _fastNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(context, true),
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 48),
                  Text(
                    "Update profile",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 16),
                  _buildPhotoPickerWidget(),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _emailTEController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _fastNameTEController,
                    decoration: InputDecoration(
                      hintText: "First name",
                      labelText: "First name",
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameTEController,
                    decoration: InputDecoration(
                      hintText: "Last naem",
                      labelText: "Last naem",
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _mobileTEController,
                    decoration: InputDecoration(
                      hintText: "Mobile",
                      labelText: "Mobile",
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoPickerWidget() {
    return Container(
      width: double.maxFinite,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
      child: Container(
        width: 100,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          color: Colors.grey,
        ),
        alignment: Alignment.center,
        child: Text(
          "Photo",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
