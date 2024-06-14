import 'package:flutter/material.dart';
import 'package:studify/desktop/widgets/custom_container.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/desktop/widgets/responsive_grid.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class FinancialManagementDesktopAdminScreen extends StatelessWidget {
  const FinancialManagementDesktopAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> containers = [
      const CustomContainer(
        firstText: '10,000,000',
        secondText: 'Expected Fee Collection',
      ),
      const CustomContainer(
        firstText: '6,000,000',
        secondText: 'Total Fee\'s Collected',
      ),
      const CustomContainer(
        firstText: '3,240,400',
        secondText: 'Pending Payments',
      ),
      const CustomContainer(
        firstText: '326',
        secondText: 'Defaulters',
      ),
    ];

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.grey.shade100,
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: const CustomText(
                'School Fees Overview',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ResponsiveGrid(items: containers),
            const SizedBox(
              height: 30,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomizableCard(
                leftIconPath: 'assets/images/hat_G.svg',
                isStyleTwo: false,
                isGradient: false,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                borderRadius: BorderRadius.circular(10),
                padding: 10,
                leftIconSize: 30,
                padding3: 7,
                centerText1: 'View Defaulters And Pending Payments',
                centerTextStyle1: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                rightIcon1: Icons.arrow_forward_ios_outlined,
                rightIconSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomizableCard(
                leftIconPath: 'assets/images/hat_G.svg',
                isStyleTwo: false,
                isGradient: false,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                borderRadius: BorderRadius.circular(10),
                padding: 10,
                leftIconSize: 30,
                padding3: 7,
                centerText1: 'View Payers Reciept',
                centerTextStyle1: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                rightIcon1: Icons.arrow_forward_ios_outlined,
                rightIconSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomizableCard(
                leftIconPath: 'assets/images/hat_G.svg',
                isStyleTwo: false,
                isGradient: false,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                borderRadius: BorderRadius.circular(10),
                padding: 10,
                leftIconSize: 30,
                padding3: 7,
                centerText1: 'Add New Component',
                centerTextStyle1: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                rightIcon1: Icons.arrow_forward_ios_outlined,
                rightIconSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: const CustomText(
                'Payment Logs',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
