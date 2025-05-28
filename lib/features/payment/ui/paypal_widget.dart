import 'package:flutter/material.dart';

class PayPalPaymentWidget extends StatelessWidget {
  const PayPalPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // PayPal logo
            Image.network(
              'https://www.paypalobjects.com/webstatic/icon/pp258.png',
              height: 50,
            ),
            const SizedBox(height: 24),

            // Product info
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.shopping_cart, color: Colors.grey),
              title: const Text('Premium Subscription'),
              subtitle: const Text('1 Month Access'),
              trailing: const Text('\$9.99'),
            ),
            const SizedBox(height: 24),

            // Email
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),

            // Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 24),

            // Pay button
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Mock payment submitted!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                minimumSize: const Size.fromHeight(50),
              ),
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Continue with PayPal', style: TextStyle(color: Colors.white, )
              ),
            ),
            const SizedBox(height: 8),

            // Cancel
            TextButton(
              onPressed: () {},
              child: const Text('Cancel and return'),
            ),
          ],
        ),
      ),
    );
  }
}
