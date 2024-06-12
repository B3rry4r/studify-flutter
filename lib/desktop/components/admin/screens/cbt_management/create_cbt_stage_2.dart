import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/role_selection.dart';

class CreateCBTStageTwoAdminScreen extends StatefulWidget {
  final VoidCallback onBack;
  final int numberOfQuestions;

  const CreateCBTStageTwoAdminScreen({
    super.key,
    required this.onBack,
    required this.numberOfQuestions,
  });

  @override
  State<CreateCBTStageTwoAdminScreen> createState() =>
      _CreateCBTStageTwoAdminScreenState();
}

class _CreateCBTStageTwoAdminScreenState
    extends State<CreateCBTStageTwoAdminScreen> {
  int currentQuestionIndex = 0;
  String? selectedNoOfAnswers = '4'; // Default number of answers
  final List<String> noOfAnswers = ['2', '3', '4', '5'];
  List<TextEditingController> answerControllers = [];
  String? correctAnswer;
  TextEditingController questionController = TextEditingController();
  TextEditingController instructionsController = TextEditingController();

  List<int> availableQuestions = [];

  String? selectedOccurrenceFrom;
  String? selectedOccurrenceTo;

  List<RangeValues> instructionRanges = [];

  @override
  void initState() {
    super.initState();
    answerControllers = List.generate(4, (_) => TextEditingController());
    availableQuestions =
        List.generate(widget.numberOfQuestions, (index) => index + 1);
  }

  bool isRangeAvailable(int from, int to) {
    for (RangeValues range in instructionRanges) {
      if ((from >= range.start && from <= range.end) ||
          (to >= range.start && to <= range.end) ||
          (from <= range.start && to >= range.end)) {
        return false;
      }
    }
    return true;
  }

  void addInstructionRange(int from, int to) {
    instructionRanges.add(RangeValues(from.toDouble(), to.toDouble()));
    setState(() {});
  }

  void _nextQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  void _previousQuestion() {
    setState(() {
      currentQuestionIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                CustomText(
                  'Create CBT Q&A ${currentQuestionIndex + 1} of ${widget.numberOfQuestions}',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    CustomizableCard(
                      leftText: 'Question',
                      isTextLeft: true,
                      leftTextStyle: const TextStyle(
                        fontSize: 12,
                      ),
                      padding: 11,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintText: 'Type Question ${currentQuestionIndex + 1}...',
                      maxlines: 7,
                      controller: questionController,
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
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Column(
                  children: [
                    CustomDropdown(
                      value: selectedNoOfAnswers,
                      isBlackFontColor: true,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                          width: 0.7,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      items: noOfAnswers,
                      hint: 'Number of Answers',
                      onChanged: (value) {
                        setState(() {
                          selectedNoOfAnswers = value;
                          if (value != null) {
                            answerControllers = List.generate(
                              int.parse(value),
                              (_) => TextEditingController(),
                            );
                          }
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: List.generate(
                        selectedNoOfAnswers != null
                            ? int.parse(selectedNoOfAnswers!)
                            : 0,
                        (index) => SizedBox(
                          child: Column(
                            children: [
                              CustomTextField(
                                hintText: 'Enter Answer ${index + 1}',
                                controller: answerControllers[index],
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
                                  fontSize: 12,
                                ),
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CustomDropdown(
            value: correctAnswer,
            isBlackFontColor: true,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 0.7,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            items: List.generate(
                selectedNoOfAnswers != null
                    ? int.parse(selectedNoOfAnswers!)
                    : 0,
                (index) => (index + 1).toString()),
            hint: 'Select Correct Answer',
            onChanged: (value) {
              setState(() {
                correctAnswer = value;
              });
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintText: 'Type CBT Section Instructions...',
            maxlines: 4,
            controller: instructionsController,
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
            height: 15,
          ),
          Row(
            children: [
              Flexible(
                child: CustomDropdown(
                  value: selectedOccurrenceFrom,
                  isBlackFontColor: true,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.7,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  items: availableQuestions
                      .where((q) =>
                          selectedOccurrenceTo == null ||
                          q <= int.parse(selectedOccurrenceTo!))
                      .map((q) => q.toString())
                      .toList(),
                  hint: 'Occurrence From',
                  onChanged: (value) {
                    setState(() {
                      selectedOccurrenceFrom = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: CustomDropdown(
                  value: selectedOccurrenceTo,
                  isBlackFontColor: true,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.7,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  items: availableQuestions
                      .where((q) =>
                          selectedOccurrenceFrom == null ||
                          q >= int.parse(selectedOccurrenceFrom!))
                      .map((q) => q.toString())
                      .toList(),
                  hint: 'Occurrence To',
                  onChanged: (value) {
                    setState(() {
                      selectedOccurrenceTo = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          if (selectedOccurrenceFrom != null &&
              selectedOccurrenceTo != null &&
              isRangeAvailable(int.parse(selectedOccurrenceFrom!),
                  int.parse(selectedOccurrenceTo!)))
            Center(
              child: InkWell(
                onTap: () {
                  addInstructionRange(
                    int.parse(selectedOccurrenceFrom!),
                    int.parse(selectedOccurrenceTo!),
                  );
                  print(instructionRanges);
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 0.7,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: CustomText(
                      'Set Instructions Range',
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: SizedBox(
              width: 410,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (currentQuestionIndex > 0) {
                        _previousQuestion();
                      }
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 0.7,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: CustomText(
                          'Previous Question',
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(),
                  ),
                  InkWell(
                    onTap: () {
                      if (currentQuestionIndex < widget.numberOfQuestions - 1) {
                        _nextQuestion();
                      }
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: CustomText(
                          'Next Question',
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
