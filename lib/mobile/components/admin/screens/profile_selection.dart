import 'package:flutter/material.dart';
import 'package:studify/mobile/components/admin/screens/student_profiles.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class ProfileSelectionAdminScreen extends StatefulWidget {
  const ProfileSelectionAdminScreen({super.key});

  @override
  State<ProfileSelectionAdminScreen> createState() =>
      _ProfileSelectionAdminScreenState();
}

class _ProfileSelectionAdminScreenState
    extends State<ProfileSelectionAdminScreen> {
  void _navToStudentsData() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ProfilesAdmin(),
      ),
    );
  }

  void _navToTeachersData() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ProfilesAdmin(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Profiles',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
        child: Column(
          children: [
            CustomizableCard(
              passedFunction: _navToStudentsData,
              leftIconPath: 'assets/images/hat_G.svg',
              isStyleTwo: true,
              isGradient: false,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              borderRadius: BorderRadius.circular(10),
              padding: 15,
              padding2: screenWidth < 380 ? 17 : 22,
              isDoublePadding: true,
              leftIconSize: 50,
              padding3: 10,
              centerText1: 'View Students Data',
              centerTextStyle1: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 16,
                fontWeight: FontWeight.w500,
              ),
              rightIcon1: Icons.arrow_forward_ios_outlined,
              rightIconSize: screenWidth < 380 ? 13 : 16,
            ),
            SizedBox(
              height: screenWidth < 380 ? 8 : 10,
            ),
            CustomizableCard(
              passedFunction: _navToTeachersData,
              leftIconPath: 'assets/images/hat_G.svg',
              isStyleTwo: true,
              isGradient: false,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              borderRadius: BorderRadius.circular(10),
              padding: 15,
              padding2: screenWidth < 380 ? 17 : 22,
              isDoublePadding: true,
              leftIconSize: 50,
              padding3: 10,
              centerText1: 'View Teachers Data',
              centerTextStyle1: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 16,
                fontWeight: FontWeight.w500,
              ),
              rightIcon1: Icons.arrow_forward_ios_outlined,
              rightIconSize: screenWidth < 380 ? 13 : 16,
            ),
            SizedBox(
              height: screenWidth < 380 ? 8 : 10,
            ),
          ],
        ),
      ),
    );
  }
}
