import 'package:flutter/material.dart';
import 'package:hotels/core/constants/resources/color_manger.dart';
import 'package:hotels/screens/widgets/auth/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: RegisterViewBody(),
      ),
    );
  }
}
