import 'package:couldai_user_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField(label: "الاسم الكامل", hint: "أدخل اسمك الكامل"),
          _buildTextField(label: "البريد الإلكتروني", hint: "أدخل بريدك الإلكتروني", keyboardType: TextInputType.emailAddress),
          _buildTextField(label: "رقم الهاتف", hint: "أدخل رقم هاتفك", keyboardType: TextInputType.phone),
          _buildTextField(label: "كلمة المرور", hint: "أنشئ كلمة مرور قوية", obscureText: true),
          _buildTextField(label: "تأكيد كلمة المرور", hint: "أعد إدخال كلمة المرور", obscureText: true),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
               Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
            child: const Text("إنشاء حساب"),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: obscureText,
            keyboardType: keyboardType,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(hintText: hint),
          ),
        ],
      ),
    );
  }
}
