import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/management/single_profile_view.dart';
import 'package:studify/desktop/components/admin/utils/management_notifier.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:provider/provider.dart';

class StudentProfilesView extends StatefulWidget {
  final VoidCallback onBack;

  const StudentProfilesView({required this.onBack, super.key});

  @override
  _StudentProfilesViewState createState() => _StudentProfilesViewState();
}

class _StudentProfilesViewState extends State<StudentProfilesView> {
  String _currentView = 'default';
  String _selectedStudentName = '';
  Map<String, dynamic> studentData = {};

  void _viewStudentProfile(String studentName, Map<String, dynamic> data) {
    setState(() {
      _currentView = 'singleProfile';
      _selectedStudentName = studentName;
      studentData = data;
    });
  }

  void _goBack() {
    setState(() {
      _currentView = 'default';
      _selectedStudentName = '';
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
          teacherName: _selectedStudentName,
          userData: studentData,
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

        final studentsList = managementNotifier.studentsProfileList ?? [];

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
                      'Student Profiles',
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
                  children: studentsList.isNotEmpty
                      ? studentsList.map<Widget>((student) {
                          Map user = student['user'];
                          return Column(
                            children: [
                              CustomizableCard(
                                passedFunction: () => _viewStudentProfile(
                                  '${user['firstName']} ${user['lastName']}',
                                  student,
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
                        }).toList()
                      : [
                          const Center(
                            child: CustomText(
                              'No students found',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
