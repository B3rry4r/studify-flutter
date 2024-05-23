import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _formKey = GlobalKey<FormState>();
  List<String> feedbackOptions = [
    "Everything Is Working Fine",
    "Trouble viewing Records",
    "Can't view my profile",
    "Can't see my tasks"
  ];
  String selectedOption = "";
  bool isOtherSelected = false;
  TextEditingController otherFeedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Feedback & Support',
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
        elevation: 2.0,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: CustomText(
                'Share Your Feedback With Us',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            ...feedbackOptions.map(
              (option) {
                return RadioListTile(
                  title: CustomText(option),
                  activeColor: Colors.blue,
                  value: option,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(
                      () {
                        selectedOption = value.toString();
                        isOtherSelected = false;
                      },
                    );
                  },
                );
              },
            ),
            RadioListTile(
              title: const CustomText('Other'),
              value: 'Other',
              activeColor: Colors.blue,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value.toString();
                  isOtherSelected = true;
                });
              },
            ),
            if (isOtherSelected)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: otherFeedbackController,
                  decoration: InputDecoration(
                    hintText: 'Enter your feedback here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  validator: (value) {
                    if (isOtherSelected && value!.isEmpty) {
                      return 'Please enter your feedback';
                    }
                    return null;
                  },
                ),
              ),
            const SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    String feedback = isOtherSelected
                        ? otherFeedbackController.text
                        : selectedOption;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Feedback sent: $feedback')),
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 13.0, horizontal: 22.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                        const Color(0xFF0000FF).withOpacity(0.7), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const CustomText(
                    'Send Your Feedback',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    'Contact Our Support Team',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 10),
                  CustomText(
                    'business@studio.ng',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    otherFeedbackController.dispose();
    super.dispose();
  }
}
