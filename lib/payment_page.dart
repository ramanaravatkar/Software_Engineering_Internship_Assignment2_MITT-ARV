import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: Image.asset('assets/images/gpay.png', width: 50, height: 50),
            title: Text('Google Pay'),
            onTap: () {
              // Payment logic here
            },
          ),
          ListTile(
            leading: Image.asset('assets/images/phonepe.png', width: 50, height: 50),
            title: Text('PhonePe'),
            onTap: () {
              // Payment logic here
            },
          ),
          ListTile(
            leading: Image.asset('assets/images/paytm.png', width: 50, height: 50),
            title: Text('Paytm'),
            onTap: () {
              // Payment logic here
            },
          ),
        ],
      ),
    );
  }
}
