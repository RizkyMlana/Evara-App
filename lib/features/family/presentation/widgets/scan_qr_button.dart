import 'package:flutter/material.dart';

class ScanQrButton extends StatelessWidget{
  const ScanQrButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton.icon(
        onPressed: () {}, 
        icon: const Icon(Icons.qr_code_scanner),
        label: const Text("Scan QR Code"),
      ),
    );
  }
}