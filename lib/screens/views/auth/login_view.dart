import 'package:flutter/material.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/auth/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primary, body: const LoginViewBody());
  }
}
