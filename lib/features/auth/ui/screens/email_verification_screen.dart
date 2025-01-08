import 'package:ecommerce/features/auth/ui/widgets/AppLogoWidget.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = '/email_verification';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              AppLogoWidget(),
              SizedBox(
                height: 24,
              ),
              Text('Welcome Back',style: Theme.of(context).textTheme.titleLarge,),
              Text('Please Enter Your Email Address'),
              SizedBox(height: 8,),
              TextFormField(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
