import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:login_screen_2/screens/homeScreen.dart';
import '../utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const inputBorder = BorderRadius.all(Radius.circular(12.0));

    return FlutterLogin(
      title: '',
      onLogin: (_) async => null,
      onSignup: (_) async => null,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      onRecoverPassword: (_) async => null,
      theme: LoginTheme(
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.primaryColor,
        errorColor: AppColors.zambeziColor,
        titleStyle: const TextStyle(
          color: AppColors.whiteColor,
          fontFamily: 'Roboto',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
        bodyStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.zambeziColor,
        ),
        textFieldStyle: const TextStyle(
          color: AppColors.blackColor,
        ),
        buttonStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor,
        ),
        cardTheme: CardTheme(
          color: AppColors.whiteColor,
          elevation: 8,
          shadowColor: AppColors.darkGreyColor.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.textFieldColor.withOpacity(0.3),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          labelStyle: const TextStyle(
            fontSize: 14,
            color: AppColors.zambeziColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: inputBorder,
            borderSide:
                const BorderSide(color: AppColors.zambeziColor, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: inputBorder,
            borderSide:
                const BorderSide(color: AppColors.primaryColor, width: 2.0),
          ),
        ),
        buttonTheme: LoginButtonTheme(
          splashColor: AppColors.primaryColor.withOpacity(0.5),
          highlightColor: AppColors.primaryColor.withOpacity(0.3),
          backgroundColor: AppColors.primaryColor, // Button background color
          elevation: 6.0,
          highlightElevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        pageColorLight: AppColors.primaryColor.withOpacity(0.2),
        pageColorDark: AppColors.primaryColor.withOpacity(0.5),
      ),
    );
  }
}
