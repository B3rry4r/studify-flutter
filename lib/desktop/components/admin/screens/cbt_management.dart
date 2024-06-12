import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/cbt_management/cbt_results.dart';
import 'package:studify/desktop/components/admin/screens/cbt_management/cbt_uploaded_q_a.dart';
import 'package:studify/desktop/components/admin/screens/cbt_management/create_cbt_q_a.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class CBTAdminManagementScreen extends StatefulWidget {
  const CBTAdminManagementScreen({super.key});

  @override
  CBTAdminManagementScreenState createState() =>
      CBTAdminManagementScreenState();
}

class CBTAdminManagementScreenState extends State<CBTAdminManagementScreen> {
  // This variable holds the current view state
  String _currentView = 'default';

  void _createCBTQA() {
    setState(() {
      _currentView = 'createCBTQA';
    });
  }

  void _viewCBTResults() {
    setState(() {
      _currentView = 'CBTResults';
    });
  }

  void _viewCBTUploadedQA() {
    setState(() {
      _currentView = 'CBTUploadedQA';
    });
  }

  void _goBack() {
    setState(() {
      _currentView = 'default';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(40),
      child: _buildCurrentView(),
    );
  }

  // This function builds the current view based on the state
  Widget _buildCurrentView() {
    switch (_currentView) {
      case 'createCBTQA':
        return CreateCBTExamAdminScreen(onBack: _goBack);
      case 'CBTResults':
        return CBTResultsAdminScreen(onBack: _goBack);
      case 'CBTUploadedQA':
        return CBTUploadedQAAdminScreen(onBack: _goBack);
      default:
        return _buildDefaultView();
    }
  }

  // Default view with the CustomizableCards
  Widget _buildDefaultView() {
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomizableCard(
            passedFunction: _createCBTQA,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'Create CBT Q&A',
            centerTextStyle1: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            rightIcon1: Icons.arrow_forward_ios_outlined,
            rightIconSize: 14,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomizableCard(
            passedFunction: _viewCBTResults,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'View CBT Results',
            centerTextStyle1: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            rightIcon1: Icons.arrow_forward_ios_outlined,
            rightIconSize: 14,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomizableCard(
            passedFunction: _viewCBTUploadedQA,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'Review CBT Uploaded Q&A',
            centerTextStyle1: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            rightIcon1: Icons.arrow_forward_ios_outlined,
            rightIconSize: 14,
          ),
        ),
      ],
    );
  }
}
