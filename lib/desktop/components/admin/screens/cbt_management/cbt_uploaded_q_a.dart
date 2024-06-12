import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class CBTUploadedQAAdminScreen extends StatelessWidget {
  final VoidCallback onBack;

  const CBTUploadedQAAdminScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  onPressed: onBack,
                ),
                const SizedBox(
                  width: 20,
                ),
                const CustomText(
                  'View Uploaded CBT Q&A',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
