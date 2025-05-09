import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Conditions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
Welcome to our app!

By using this application, you agree to the following terms and conditions:

1. You will use the app responsibly.
2. You will not attempt to reverse-engineer or exploit the app.
3. We are not responsible for any data loss or misuse.
4. These terms may be updated at any time without notice.

If you have questions, contact our support.

Thank you for using our service!
''',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
