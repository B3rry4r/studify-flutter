import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class SingleTeacherProfileView extends StatelessWidget {
  final VoidCallback onBack;
  final String teacherName;

  const SingleTeacherProfileView({
    required this.onBack,
    required this.teacherName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  onPressed: onBack,
                ),
                const SizedBox(
                  width: 20,
                ),
                CustomText(
                  teacherName,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Add your detailed teacher profile information here
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(12),
                          topEnd: Radius.circular(12))),
                  child: Row(
                    children: [
                      CustomText(
                        teacherName,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const CustomText(
                        'Currently In School',
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.green,
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      const Icon(
                        Icons.edit,
                        color: Colors.teal,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        width: 210,
                        height: 210,
                        'assets/images/signin.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 0.7,
                      height: 100,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          CustomizableCard(
                            isTextLeft: true,
                            isStyleTwo: true,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            leftText: 'Name',
                            leftTextStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            rightText1: teacherName,
                            rightTextStyle1: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomizableCard(
                            isTextLeft: true,
                            isStyleTwo: true,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            leftText: 'Position',
                            leftTextStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            rightText1: 'Teacher',
                            rightTextStyle1: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomizableCard(
                            isTextLeft: true,
                            isStyleTwo: true,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            leftText: 'Number Of Classes',
                            leftTextStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            rightText1: '7',
                            rightTextStyle1: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
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
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const CustomTextRow(
                        leftText: 'List Of Classes & Subjects',
                        isLeftText: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomizableCard(
                        isTextLeft: true,
                        leftText: 'Senior Secondary School 1',
                        leftTextStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        rightText1: 'English',
                        rightTextStyle1: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomizableCard(
                        isTextLeft: true,
                        leftText: 'Senior Secondary School 1',
                        leftTextStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        rightText1: 'English',
                        rightTextStyle1: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const CustomTextRow(
                        leftText: 'Attendance Summary',
                        isLeftText: true,
                      ),
                      CustomizableCard(
                        isTextLeft: true,
                        leftText: 'This Week',
                        leftTextStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        rightText1: '70%',
                        rightTextStyle1: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomizableCard(
                        isTextLeft: true,
                        leftText: 'This Month',
                        leftTextStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        rightText1: '82%',
                        rightTextStyle1: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
