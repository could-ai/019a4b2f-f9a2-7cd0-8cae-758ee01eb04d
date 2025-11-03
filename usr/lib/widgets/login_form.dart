import 'package:couldai_user_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("البريد الإلكتروني أو رقم الهاتف", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: "أدخل بريدك الإلكتروني أو رقم هاتفك",
            ),
          ),
          const SizedBox(height: 20),
          const Text("كلمة المرور", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: true,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: "أدخل كلمة المرور",
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
            child: const Text("تسجيل الدخول"),
          ),
        ],
      ),
    );
  }
}
