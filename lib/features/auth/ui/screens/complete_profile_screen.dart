import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/features/auth/ui/widgets/AppLogoWidget.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  static const String name = '/complete_profile';

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _shippingAddressTEController =
      TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                AppLogoWidget(
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Complete Profile',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Get started with us with your details',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                SizedBox(
                  height: 8,
                ),
                _buildForm(),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, OtpVerificationScreen.name);
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _firstNameTEController,
              decoration: const InputDecoration(hintText: 'First Name'),
              keyboardType: TextInputType.text,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter your first name';
                }
                return null;
              }),
          const SizedBox(height: 8),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _lastNameTEController,
              decoration: const InputDecoration(hintText: 'Last Name'),
              keyboardType: TextInputType.text,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter your last name';
                }
                return null;
              }),
          const SizedBox(height: 8),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _mobileTEController,
              decoration: const InputDecoration(hintText: 'Mobile'),
              keyboardType: TextInputType.phone,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter your mobile number';
                }
                if (RegExp(r'^01[3-9]\d{8}$').hasMatch(value!) == false) {
                  return 'Enter valid mobile number';
                }
                return null;
              }),
          const SizedBox(height: 8),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _cityTEController,
              decoration: const InputDecoration(hintText: 'City'),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter valid city name';
                }
                return null;
              }),
          const SizedBox(height: 8),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _shippingAddressTEController,
              decoration: const InputDecoration(hintText: 'Shipping Address'),
              maxLines: 4,
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter your valid Shipping Address';
                }
                return null;
              }),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _cityTEController.dispose();
    _shippingAddressTEController.dispose();
    super.dispose();
  }
}
