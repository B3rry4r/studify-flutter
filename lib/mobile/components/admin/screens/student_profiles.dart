import 'package:flutter/material.dart';
import 'package:studify/mobile/components/teachers/utils/student_records_data.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class ProfilesAdmin extends StatefulWidget {
  const ProfilesAdmin({super.key});

  @override
  State<ProfilesAdmin> createState() => _ProfilesAdminState();
}

class _ProfilesAdminState extends State<ProfilesAdmin> {
  int _selectedFilterIndex = 0;

  final List<String> _filters = ['All', 'Uploaded', 'Pending', 'Classes'];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Student Profiles',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
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
        ),
      ),
    );
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
