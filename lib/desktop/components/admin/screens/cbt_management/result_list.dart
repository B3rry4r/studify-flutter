import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/management/single_profile_view.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class ResultListAdminScreen extends StatefulWidget {
  final VoidCallback onBack;

  const ResultListAdminScreen({super.key, required this.onBack});

  @override
  State<ResultListAdminScreen> createState() => _ResultListAdminScreenState();
}

class _ResultListAdminScreenState extends State<ResultListAdminScreen> {
  // This variable holds the current view state
  String _currentView = 'default';
  String _selectedTeacherName = '';

  void _viewTeacherProfile(String teacherName) {
    setState(() {
      _currentView = 'singleProfile';
      _selectedTeacherName = teacherName;
    });
  }

  void _goBack() {
    setState(() {
      _currentView = 'default';
      _selectedTeacherName = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildCurrentView();
  }

  // This function builds the current view based on the state
  Widget _buildCurrentView() {
    switch (_currentView) {
      case 'singleProfile':
        return SingleTeacherProfileView(
          onBack: _goBack,
          teacherName: _selectedTeacherName,
        );
      default:
        return _buildDefaultView();
    }
  }

  // Default view with the list of teacher profiles
  Widget _buildDefaultView() {
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
                  onPressed: widget.onBack,
                ),
                const SizedBox(
                  width: 20,
                ),
                const CustomText(
                  'View Results',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Chidi Nwosu'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Chidi Nwosu',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Ngozi Okeke'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Ngozi Okeke',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Adebayo Ogunleye'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Adebayo Ogunleye',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Amara Obi'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Amara Obi',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Funmi Akinola'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Funmi Akinola',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Bola Balogun'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Bola Balogun',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Chimamanda Uzoma'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Chimamanda Uzoma',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () =>
                      _viewTeacherProfile('Damilola Adesanya'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Damilola Adesanya',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomizableCard(
                  passedFunction: () => _viewTeacherProfile('Eze Nnamdi'),
                  leftIconPath: 'assets/images/hat_G.svg',
                  isStyleTwo: true,
                  isGradient: false,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                  padding: 10,
                  leftIconSize: 30,
                  padding3: 7,
                  centerText1: 'Eze Nnamdi',
                  centerTextStyle1: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.arrow_forward_ios_outlined,
                  rightIconSize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
