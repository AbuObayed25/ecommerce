import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/auth/ui/controllers/email_verification_controller.dart';
import 'package:ecommerce/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/features/auth/ui/widgets/AppLogoWidget.dart';
import 'package:ecommerce/features/common/ui/widgets/centered_circular_progress_indicator.dart';
import 'package:ecommerce/features/common/ui/widgets/snack_bar_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = '/email_verification';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final EmailVerificationController _emailVerificationController =
      Get.find<EmailVerificationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formkey,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const AppLogoWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome Back',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Please Enter Your Email Address',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                      controller: _emailTEController,
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration:
                          const InputDecoration(hintText: 'Email Address'),
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter your email';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 8,
                  ),
                  GetBuilder<EmailVerificationController>(
                      builder: (controller) {
                    if (controller.inProgress) {
                      return const CenteredCircularProgressIndicator();
                    }
                    return ElevatedButton(
                      onPressed: _onTapNextButton,
                      child: const Text('Next'),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapNextButton() async {
    if (_formkey.currentState!.validate()) {
      bool isSuccess = await _emailVerificationController
          .verifyEmail(_emailTEController.text.trim());
      if (isSuccess) {
        if (mounted) {
          Navigator.pushNamed(context, OtpVerificationScreen.name);
        }
      } else {
        if (mounted) {
          ShowSnakBarMessage(
              context, _emailVerificationController.errorMessage!);
        }
      }
    }
  }
}
