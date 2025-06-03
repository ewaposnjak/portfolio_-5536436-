import 'package:flutter/material.dart';

class ProfileFormPage extends StatefulWidget {
  const ProfileFormPage({Key? key}) : super(key: key);

  @override
  State<ProfileFormPage> createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _about = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE4EC), // hellrosa Hintergrund
      appBar: AppBar(
        title: const Text('Profil bearbeiten'),
        backgroundColor: const Color(0xFFFF1493), // knalliges Pink
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Name
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: const TextStyle(color: Color(0xFFFF1493)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xFFFF1493)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xFFFF69B4), width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                style: const TextStyle(color: Color(0xFFFF1493)),
                onSaved: (value) => _name = value ?? '',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte Name eingeben';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // E-Mail
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-Mail-Adresse',
                  labelStyle: const TextStyle(color: Color(0xFFFF1493)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xFFFF1493)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xFFFF69B4), width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                style: const TextStyle(color: Color(0xFFFF1493)),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => _email = value ?? '',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte E-Mail eingeben';
                  }
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegex.hasMatch(value)) {
                    return 'Bitte eine gültige E-Mail-Adresse eingeben';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Über mich (mehrzeilig)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Über mich',
                  labelStyle: const TextStyle(color: Color(0xFFFF1493)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xFFFF1493)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xFFFF69B4), width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  alignLabelWithHint: true,
                ),
                style: const TextStyle(color: Color(0xFFFF1493)),
                maxLines: 5,
                onSaved: (value) => _about = value ?? '',
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF1493),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    final snackBar = SnackBar(
                      content: Text(
                        'Name: $_name\nE-Mail: $_email\nÜber mich: $_about',
                      ),
                      duration: const Duration(seconds: 4),
                      backgroundColor: const Color(0xFFFF1493),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text(
                  'Speichern',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

