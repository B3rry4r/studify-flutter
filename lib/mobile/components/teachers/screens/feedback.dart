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
    double screenWidth = MediaQuery.of(context).size.width;

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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: CustomText(
                'Share Your Feedback With Us',
                fontSize: screenWidth < 380 ? 15 : 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            ...feedbackOptions.map(
              (option) {
                return RadioListTile(
                  title: CustomText(
                    option,
                    fontSize: screenWidth < 380 ? 13 : 15,
                  ),
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
              title: CustomText(
                'Other',
                fontSize: screenWidth < 380 ? 13 : 15,
              ),
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
                  style: TextStyle(
                    fontSize: screenWidth < 380 ? 13 : 15,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your feedback here',
                    hintStyle: TextStyle(
                      fontSize: screenWidth < 380 ? 13 : 15,
                    ),
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
                  child: CustomText(
                    'Send Your Feedback',
                    fontSize: screenWidth < 380 ? 13 : 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenWidth < 380 ? 25 : 40,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    'Contact Our Support Team',
                    fontSize: screenWidth < 380 ? 13 : 15,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(height: 10),
                  CustomText(
                    'business@studio.ng',
                    fontSize: screenWidth < 380 ? 13 : 15,
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
