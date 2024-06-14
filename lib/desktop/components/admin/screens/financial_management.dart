import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/screens/financial%20management/all_components.dart';
import 'package:studify/desktop/components/admin/screens/financial%20management/defaulters_and_pending.dart';
import 'package:studify/desktop/components/admin/screens/financial%20management/payers_receipt_list.dart';
import 'package:studify/desktop/components/admin/screens/financial%20management/new_component.dart';
import 'package:studify/desktop/components/admin/screens/financial%20management/payers_receipt.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/desktop/widgets/custom_container.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/desktop/widgets/responsive_grid.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class FinancialManagementDesktopAdminScreen extends StatelessWidget {
  const FinancialManagementDesktopAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appViewModel = Provider.of<AppViewModel>(context);

    Widget content;

    if (appViewModel.financialMGMView == 'default') {
      content = _buildDefaultView(context);
    } else if (appViewModel.financialMGMView ==
        'defaultersAndPendingPayments') {
      content = _buildDefaultersAndPendingPaymentsView();
    } else if (appViewModel.financialMGMView == 'payersReciepts') {
      content = _buildPayersRecieptsView();
    } else if (appViewModel.financialMGMView == 'addNewComponent') {
      content = _buildNewComponentView();
    } else if (appViewModel.financialMGMView == 'allComponents') {
      content = _buildAllComponentView();
    } else if (appViewModel.financialMGMView == 'payersList') {
      content = _buildPayersReceiptListView();
    } else {
      content = _buildDefaultView(context);
    }

    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(20),
      child: content,
    );
  }

  Widget _buildDefaultersAndPendingPaymentsView() {
    return const DefaultersAndPendingPaymentsDesktopScreen();
  }

  Widget _buildPayersRecieptsView() {
    return const PayersReciptDesktopScreen();
  }

  Widget _buildNewComponentView() {
    return const NewComponentScreen();
  }

  Widget _buildAllComponentView() {
    return const AllComponentScreen();
  }

  Widget _buildPayersReceiptListView() {
    return const PayersReceiptList();
  }

  Widget _buildDefaultView(BuildContext context) {
    var appViewModel = Provider.of<AppViewModel>(context, listen: false);
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
        padding: const EdgeInsets.all(0),
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
                passedFunction: appViewModel.viewDefaultersAndPendingPayments,
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
                passedFunction: appViewModel.viewPayersList,
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
                centerText1: 'View Reciepts',
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
                passedFunction: appViewModel.viewAddNewComponent,
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
              height: 40,
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
            //Logs
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const CustomText(
                    '3h4df354hfg0a9ea34',
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
                  const Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        'Recieved',
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const CustomText(
                    '3h4df354hfg0a9ea34',
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
                  const Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        'Recieved',
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
