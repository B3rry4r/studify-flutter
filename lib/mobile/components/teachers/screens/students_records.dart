import 'package:flutter/material.dart';
import 'package:studify/mobile/components/teachers/utils/student_records_data.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class StudentsRecordsScreen extends StatefulWidget {
  const StudentsRecordsScreen({super.key});

  @override
  State<StudentsRecordsScreen> createState() => _StudentsRecordsScreenState();
}

class _StudentsRecordsScreenState extends State<StudentsRecordsScreen> {
  int _selectedFilterIndex = 0;

  final List<String> _filters = ['All', 'Uploaded', 'Pending', 'Classes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: const CustomText(
          'Student Records',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
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
                          fontWeight: _selectedFilterIndex == index
                              ? FontWeight.bold
                              : FontWeight.normal,
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
    return Column(
        children: columnItems.map(
      (column) {
        return Column(
          children: [
            column,
            const SizedBox(
              height: 20,
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
