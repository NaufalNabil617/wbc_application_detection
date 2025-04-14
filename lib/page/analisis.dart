import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'home_page.dart'; // Ganti dengan halaman tujuan setelah splash

class AnalysisResultPage extends StatelessWidget {
  final Uint8List imageBytes;

  const AnalysisResultPage({super.key, required this.imageBytes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.grey[300],
                    child: Image.memory(
                      imageBytes,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Wereng",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Rekomendasi tindakan:\nSemprot dengan insektisida",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: const Text(
    "Selesai",
    style: TextStyle(color: Colors.white, fontSize: 16),
  ),
),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
