import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class PayersReceiptList extends StatelessWidget {
  const PayersReceiptList({super.key});

  @override
  Widget build(BuildContext context) {
    var appViewModel = Provider.of<AppViewModel>(context, listen: false);

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
                  onPressed: appViewModel.viewDefaultFinancialMGM,
                ),
                const SizedBox(
                  width: 20,
                ),
                const CustomText(
                  'Payment Reciept',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: appViewModel.viewPayersReciepts,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const CustomText(
                      'Micheal James',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      'Jun 19, 2024',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    const CustomText(
                      '320,000',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
