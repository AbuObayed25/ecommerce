import 'dart:async';

import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/auth/ui/widgets/AppLogoWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';
//otp page

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  static const String name = '/otp_verification';

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final RxInt _remainingTime = 120.obs;

  @override
  void initState() {
    super.initState();
    _startResendCodeTimer();
  }

  void _startResendCodeTimer() {
    Timer.periodic(
      const Duration(seconds: 1),
      (t) {
        _remainingTime.value = _remainingTime.value - t.tick;
      },
    );
  }

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
                    'Enter OTP Code',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'A 6 digit OTP code has been sent ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    animationDuration: const Duration(milliseconds: 300),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      activeColor: AppColors.themecolor,
                      inactiveFillColor: AppColors.themecolor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    keyboardType: TextInputType.number,
                    appContext: context,
                    controller: _otpController,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Next'),
                  ),
                  const SizedBox(height: 20),

                  //do with set state,GetX
                  Obx(
                    () => RichText(
                      text: TextSpan(
                        text: 'This code will be expired in ',
                        style: const TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                              text: '${_remainingTime}s',
                              style:
                                  const TextStyle(color: AppColors.themecolor))
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Code',
                      style: TextStyle(
                        color: AppColors.themecolor,
                      ),
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
}
