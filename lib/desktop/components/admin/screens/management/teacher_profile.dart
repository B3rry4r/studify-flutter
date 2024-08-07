import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/screens/management/single_profile_view.dart';
import 'package:studify/desktop/components/admin/utils/management_notifier.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class TeacherProfilesView extends StatefulWidget {
  final VoidCallback onBack;

  const TeacherProfilesView({required this.onBack, super.key});

  @override
  _TeacherProfilesViewState createState() => _TeacherProfilesViewState();
}

class _TeacherProfilesViewState extends State<TeacherProfilesView> {
  String _currentView = 'default';
  String _selectedTeacherName = '';
  Map<String, dynamic> userData = {};

  void _viewTeacherProfile(
      String teacherName, Map<String, dynamic> teacherData) {
    setState(() {
      _currentView = 'singleProfile';
      _selectedTeacherName = teacherName;
      userData = teacherData; // Update userData here
    });
  }

  void _goBack() {
    setState(() {
      _currentView = 'default';
      _selectedTeacherName = '';
      userData = {}; // Clear userData when going back
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildCurrentView();
  }

  Widget _buildCurrentView() {
    switch (_currentView) {
      case 'singleProfile':
        return SingleTeacherProfileView(
          onBack: _goBack,
          teacherName: _selectedTeacherName,
          userData: userData,
        );
      default:
        return _buildDefaultView();
    }
  }

  Widget _buildDefaultView() {
    double screenHeight = MediaQuery.of(context).size.height;

    return Consumer<ManagementNotifier>(
      builder: (context, managementNotifier, child) {
        if (managementNotifier.isLoading) {
          return Container(
            width: double.infinity,
            height: screenHeight - 60,
            color: Colors.grey.shade100,
            padding: const EdgeInsets.all(40),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final teachersList = managementNotifier.teachersProfileList;

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
                      'Teacher Profiles',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Column(
                      children: teachersList.map<Widget>((teacher) {
                        Map user = teacher['user'];
                        return Column(
                          children: [
                            CustomizableCard(
                              passedFunction: () => _viewTeacherProfile(
                                '${user['firstName']} ${user['lastName']}',
                                teacher,
                              ),
                              leftIconPath: 'assets/images/hat_G.svg',
                              isStyleTwo: true,
                              isGradient: false,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              padding: 10,
                              leftIconSize: 30,
                              padding3: 7,
                              centerText1:
                                  '${user['firstName']} ${user['lastName']}',
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
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
