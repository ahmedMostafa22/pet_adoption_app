import 'package:flutter/material.dart';
import 'package:hello_world/presentation/pages/pets_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameC = TextEditingController(),
      emailC = TextEditingController(),
      passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                  controller: nameC,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (v) =>
                      v == null || v.isEmpty ? 'Name is required' : null),
              const SizedBox(height: 16),
              TextFormField(
                  controller: emailC,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (v) =>
                      v == null || !v.contains('@') || !v.endsWith('.com')
                          ? 'Valid email is required'
                          : null),
              const SizedBox(height: 16),
              TextFormField(
                  controller: passwordC,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: (v) => v == null || v.length < 6
                      ? 'Password must be at least 6 characters'
                      : null),
              const Spacer(),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        bool formIsValid = formKey.currentState!.validate();
                        if (formIsValid) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PetsPage(
                                      username: nameC.text,
                                      email: emailC.text,
                                      password: passwordC.text)));
                        }
                      },
                      child: const Text('Sign Up')))
            ],
          ),
        ),
      ),
    );
  }
}
