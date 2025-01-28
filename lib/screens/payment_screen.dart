import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Order Summary
            ListTile(
              title: Text('Order'),
              trailing: Text('\$16.48'),
            ),
            ListTile(
              title: Text('Taxes'),
              trailing: Text('\$0.30'),
            ),
            ListTile(
              title: Text('Delivery fees'),
              trailing: Text('\$1.50'),
            ),
            Divider(),
            ListTile(
              title: Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Text('\$18.19', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            // Payment Methods
            Text('Payment Methods', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            RadioListTile(
              title: Text('Credit Card'),
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text('Debit Card'),
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pushNamed(context, '/success');
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
