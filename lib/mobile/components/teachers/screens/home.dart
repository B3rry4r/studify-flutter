import 'package:flutter/material.dart';
import 'package:studify/mobile/components/teachers/screens/students_records.dart';
import 'package:studify/mobile/components/teachers/screens/updates.dart';
import 'package:studify/mobile/components/teachers/utils/student_records_data.dart';
import 'package:studify/mobile/components/teachers/utils/teacher_data.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _selectedFilterIndex = 0;

  final List<String> _filters = ['All', 'Uploaded', 'Pending', 'Classes'];

  void openUpdates() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const UpdatesScreen(),
    ));
  }

  void _navToStudentsRecords() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const StudentsRecordsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextRow(
                    leftText: 'Updates',
                    passedFunction: openUpdates,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage('assets/images/updatesImg.png'),
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFF00FF)
                                    .withOpacity(0.25), // Magenta
                                const Color(0xFF0000FF)
                                    .withOpacity(0.25), // Blue
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      const Positioned.fill(
                        top: 150,
                        left: 35,
                        child: CustomText(
                          'News From The School',
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextRow(
                    leftText: 'Quick Stats',
                    isLeftText: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomizableCard(
                    leftIconSize: screenWidth < 380 ? 37.0 : 50.0,
                    padding3: screenWidth < 380 ? 10 : 15,
                    padding: screenWidth < 380 ? 15 : 20,
                    leftIconPath: 'assets/images/hat_G.svg',
                    // padding: 20,
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                        const Color(0xFF0000FF).withOpacity(0.7), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    centerText1: 'Number Of Classes Taught',
                    centerTextStyle1: TextStyle(
                      fontSize: screenWidth < 380 ? 12 : 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    centerText2: '2 Courses/Subjects',
                    centerTextStyle2: TextStyle(
                      fontSize: screenWidth < 380 ? 10 : 12,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                    rightText1: '5',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 380 ? 14 : 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    rightIcon2: Icons.keyboard_arrow_down_outlined,
                    rightIconColor2: Colors.white,
                    expandedContent: CustomizableContentCard(
                      rows: rows1,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomizableCard(
                    leftIconSize: screenWidth < 380 ? 37.0 : 50.0,
                    padding3: screenWidth < 380 ? 10 : 15,
                    padding: screenWidth < 380 ? 15 : 20,
                    leftIconPath: 'assets/images/events_G.svg',
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                        const Color(0xFF0000FF).withOpacity(0.7), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    centerText2: 'Upcoming Events/Meetings',
                    centerTextStyle2: TextStyle(
                      fontSize: screenWidth < 380 ? 12 : 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    rightText1: '2',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 380 ? 14 : 17,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                    rightIcon2: Icons.keyboard_arrow_down_outlined,
                    rightIconColor2: Colors.white,
                    expandedContent: CustomizableContentCard(
                      rows: rows2,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomizableCard(
                    leftIconSize: screenWidth < 380 ? 37.0 : 50.0,
                    padding3: screenWidth < 380 ? 10 : 15,
                    padding: screenWidth < 380 ? 15 : 20,
                    leftIconPath: 'assets/images/tasks_G.svg',
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                        const Color(0xFF0000FF).withOpacity(0.7), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    centerText2: 'Tasks and Deadlines',
                    centerTextStyle2: TextStyle(
                      fontSize: screenWidth < 380 ? 12 : 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    rightText1: '2',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 380 ? 14 : 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    rightIcon2: Icons.keyboard_arrow_down_outlined,
                    rightIconColor2: Colors.white,
                    expandedContent: CustomizableContentCard(
                      rows: rows3,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextRow(
                    leftText: 'Students Records',
                    passedFunction: _navToStudentsRecords,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Tab selectors for filtering content

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(_filters.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedFilterIndex = index;
                          });
                        },
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              gradient: _selectedFilterIndex == index
                                  ? const LinearGradient(colors: [
                                      Color(0xFFFF00FF), // Magenta
                                      Color(0xFF0000FF),
                                    ])
                                  : null,
                              color: _selectedFilterIndex == index
                                  ? null
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              border: _selectedFilterIndex == index
                                  ? null
                                  : Border.all(color: Colors.blue),
                            ),
                            child: Text(
                              _filters[index],
                              style: TextStyle(
                                color: _selectedFilterIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: screenWidth < 380 ? 10 : 12,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildFilteredContent(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget _buildFilteredContent() {
    switch (_selectedFilterIndex) {
      case 1:
        return _buildThisWeekContent();
      case 2:
        return _buildThisMonthContent();
      case 3:
        return _buildThisYearContent();
      default:
        return _buildAllContent();
    }
  }

  Widget _buildAllContent() {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
        children: columnItems.map(
      (column) {
        return Column(
          children: [
            column,
            SizedBox(
              height: screenWidth < 380 ? 15 : 20,
            )
          ],
        );
      },
    ).toList());
  }

  Widget _buildThisWeekContent() {
    return const Text('All Content');
  }

  Widget _buildThisMonthContent() {
    return const Text('All Content');
  }

  Widget _buildThisYearContent() {
    return const Text('All Content');
  }
}
