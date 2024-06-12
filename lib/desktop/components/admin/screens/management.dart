import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/management/account_management.dart';
import 'package:studify/desktop/components/admin/screens/management/teacher_profile.dart';
import 'package:studify/desktop/components/admin/screens/management/student_profile.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class ManagementAdminScreen extends StatefulWidget {
  const ManagementAdminScreen({super.key});

  @override
  ManagementAdminScreenState createState() => ManagementAdminScreenState();
}

class ManagementAdminScreenState extends State<ManagementAdminScreen> {
  // This variable holds the current view state
  String _currentView = 'default';

  void _viewTeacherProfiles() {
    setState(() {
      _currentView = 'teacherProfiles';
    });
  }

  void _viewStudentProfiles() {
    setState(() {
      _currentView = 'studentProfiles';
    });
  }

  void _viewAccountManagement() {
    setState(() {
      _currentView = 'accountManagement';
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
      case 'teacherProfiles':
        return TeacherProfilesView(onBack: _goBack);
      case 'studentProfiles':
        return StudentProfilesView(onBack: _goBack);
      case 'accountManagement':
        return AccountManagement(onBack: _goBack);
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
            passedFunction: _viewTeacherProfiles,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'View Teacher Profiles',
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
            passedFunction: _viewStudentProfiles,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'View Student Profiles',
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
            passedFunction: _viewAccountManagement,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'Account Management',
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
