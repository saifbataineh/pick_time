import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pick_time/core/widgets/custom_button.dart';
import 'package:pick_time/core/widgets/custom_spacer.dart';
import 'package:pick_time/core/widgets/custom_text_field.dart';
import 'package:pick_time/features/auth/controllers/auth_cubit.dart';
import 'package:pick_time/features/home_navigation/tab_bar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/app_style.dart';
import '../../../../../core/app_utils.dart';
import '../../signup/views/signup_screen.dart';
import '../../verification/views/verification_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  Future<void> _loadSavedData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      rememberMe = prefs.getBool('remember_me') ?? false;
      if (rememberMe) {
        phoneCtrl.text = prefs.getString('phone') ?? '';
        passCtrl.text = prefs.getString('password') ?? '';
      }
    });
  }

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    if (rememberMe) {
      await prefs.setBool('remember_me', true);
      await prefs.setString('phone', phoneCtrl.text);
      await prefs.setString('password', passCtrl.text);
    } else {
      await prefs.remove('remember_me');
      await prefs.remove('phone');
      await prefs.remove('password');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) async {
              if (state is AuthSuccess) {
                await _saveData();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const VerificationScreen()),
                );
              } else if (state is AuthError) {
                AppUtils.showSnackBar(context, state.message);
              }
            },
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Welcome", style: AppStyle.titleStyle),
                  const CustomSpacer(height: 16),
                  CustomTextField(
                    hint: "Jordanian Phone Number",
                    controller: phoneCtrl,
                    width: width,
                    keyboardType: TextInputType.phone,
                  ),
                  const CustomSpacer(height: 12),
                  CustomTextField(
                    hint: "Password",
                    controller: passCtrl,
                    width: width,
                    isPaeeword: true,
                  ),
                  const CustomSpacer(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: rememberMe,
                        activeColor: AppStyle.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value ?? false;
                          });
                        },
                      ),
                      const Text("Remember Me"),
                    ],
                  ),
                  const CustomSpacer(height: 16),
                  CustomButton(
                    text: "Log In",
                    width: width,
                    onPressed: () {
                      context.read<AuthCubit>().login(
                        phoneCtrl.text,
                        passCtrl.text,
                      );
                      //TODO: ADD BLOC LISTENER
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MyBottomTabBarApp(),
                        ),
                      );
                    },
                  ),
                  const CustomSpacer(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()),
                      );
                    },
                    child: const Text("Don't have an account? Sign Up"),
                  ),
                  const CustomSpacer(height: 20),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
