import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/cbt_notifier.dart';
import 'package:studify/desktop/components/admin/screens/cbt_management/create_cbt_stage_2.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/role_selection.dart';

class CreateCBTExamAdminScreen extends StatefulWidget {
  final VoidCallback onBack;

  const CreateCBTExamAdminScreen({super.key, required this.onBack});

  @override
  State<CreateCBTExamAdminScreen> createState() =>
      _CreateCBTExamAdminScreenState();
}

class _CreateCBTExamAdminScreenState extends State<CreateCBTExamAdminScreen> {
  String? selectedResultType;
  String? selectedCbtType;
  String? selectedTerm;
  String? selectedStudentsClass;
  String? selectedSubject;
  String? selectedNumberOfQuestions;
  final List<String> resultType = ['Test', 'Exam'];
  final List<String> cbtType = ['Objective', 'T/F'];
  final List<String> term = ['1st', '2nd', '3rd'];
  final List<String> numberOfQuestions = ['Objective', 'T/F'];

  String _currentView = 'default';

  void _createCBTStageTwo() {
    setState(() {
      _currentView = 'createCBT';
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

  Widget _buildCurrentView() {
    switch (_currentView) {
      case 'createCBT':
        return CreateCBTStageTwoAdminScreen(
          numberOfQuestions: 40,
          onBack: _goBack,
        );
      default:
        return _buildDefaultView();
    }
  }

  Widget _buildDefaultView() {
    return Consumer<CBTNotifier>(
      builder: (context, cbtNotifier, child) {
        if (cbtNotifier.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        final classList = cbtNotifier.classList;
        final studentsClass =
            classList.map((classData) => classData.title).toList();
        final List<String> subject = selectedStudentsClass != null
            ? classList
                .firstWhere(
                    (classData) => classData.title == selectedStudentsClass)
                .courses
                .map((course) => course.title)
                .toList()
            : [];

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
                    'Create CBT Q&A',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomDropdown(
                    value: selectedResultType,
                    isBlackFontColor: true,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    items: resultType,
                    hint: 'Select Result Type',
                    onChanged: (value) {
                      setState(() {
                        selectedResultType = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: CustomDropdown(
                    value: selectedCbtType,
                    isBlackFontColor: true,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    items: cbtType,
                    hint: 'Select CBT Type',
                    onChanged: (value) {
                      setState(() {
                        selectedCbtType = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: CustomDropdown(
                    value: selectedTerm,
                    isBlackFontColor: true,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    items: term,
                    hint: 'Select Term/Session',
                    onChanged: (value) {
                      setState(() {
                        selectedTerm = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomDropdown(
                    value: selectedStudentsClass,
                    isBlackFontColor: true,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    items: studentsClass,
                    hint: 'Select Class',
                    onChanged: (value) {
                      setState(() {
                        selectedStudentsClass = value;
                        selectedSubject = null; // Clear the selected subject
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: CustomDropdown(
                    value: selectedSubject,
                    isBlackFontColor: true,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    items: subject,
                    hint: 'Select Subject',
                    onChanged: (value) {
                      setState(() {
                        selectedSubject = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: CustomDropdown(
                    value: selectedNumberOfQuestions,
                    isBlackFontColor: true,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    items: numberOfQuestions,
                    hint: 'Select Number Of Questions',
                    onChanged: (value) {
                      setState(() {
                        selectedNumberOfQuestions = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Write CBT Primary Instructions...',
              maxlines: 5,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 0.7,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              hintTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: _createCBTStageTwo,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: CustomText(
                    'Proceed',
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
