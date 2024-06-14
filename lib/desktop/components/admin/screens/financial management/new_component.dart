import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';

class NewComponentScreen extends StatelessWidget {
  const NewComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appViewModel = Provider.of<AppViewModel>(context, listen: false);

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
                onPressed: appViewModel.viewDefaultFinancialMGM,
              ),
              const SizedBox(
                width: 20,
              ),
              const CustomText(
                'New Component',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Flexible(
                child: CustomTextField(
                  hintText: 'Enter Title',
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
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
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: CustomTextField(
                  hintText: 'Enter Sub Title',
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
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
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: CustomTextField(
                  hintText: 'Enter Amount In Naira',
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
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
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: const Center(
              child: CustomText(
                'Create Account',
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
