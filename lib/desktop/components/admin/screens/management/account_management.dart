import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/management/create_new_admin.dart';
import 'package:studify/desktop/components/admin/screens/management/create_new_parents.dart';
import 'package:studify/desktop/components/admin/screens/management/create_new_students.dart';
import 'package:studify/desktop/components/admin/screens/management/create_new_teacher_profile.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class AccountManagement extends StatefulWidget {
  final VoidCallback onBack;

  const AccountManagement({required this.onBack, super.key});

  @override
  _AccountManagementState createState() => _AccountManagementState();
}

class _AccountManagementState extends State<AccountManagement> {
  // This variable holds the current view state
  String _currentView = 'default';

  void _createNewTeacherProfile() {
    setState(() {
      _currentView = 'createTeacherProfile';
    });
  }

  void _createNewStudentProfile() {
    setState(() {
      _currentView = 'createStudentProfile';
    });
  }

  void _createNewAdminProfile() {
    setState(() {
      _currentView = 'createAdminProfile';
    });
  }

  void _createNewParentProfile() {
    setState(() {
      _currentView = 'createParentProfile';
    });
  }

  void _goBack() {
    setState(() {
      _currentView = 'default';
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildCurrentView();
  }

  // This function builds the current view based on the state
  Widget _buildCurrentView() {
    switch (_currentView) {
      case 'createTeacherProfile':
        return CreateTeacherProfile(onBack: _goBack);
      case 'createStudentProfile':
        return CreateStudentProfile(onBack: _goBack);
      case 'createAdminProfile':
        return CreateAdminProfile(onBack: _goBack);
      case 'createParentProfile':
        return CreateParentProfile(onBack: _goBack);
      default:
        return _buildDefaultView();
    }
  }

  // Default view with the CustomizableCards
  Widget _buildDefaultView() {
    return Column(
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
                onPressed: widget.onBack,
              ),
              const SizedBox(
                width: 20,
              ),
              const CustomText(
                'Manage Account',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomizableCard(
            passedFunction: _createNewTeacherProfile,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'Create Teacher Profiles',
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
            passedFunction: _createNewStudentProfile,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'Create Student Profiles',
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
            passedFunction: _createNewAdminProfile,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'Create Admin Profiles',
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
            passedFunction: _createNewParentProfile,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: false,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 10,
            leftIconSize: 30,
            padding3: 7,
            centerText1: 'Create Parent Profiles',
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
