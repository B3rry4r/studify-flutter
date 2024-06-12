import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/cbt_management/result_list.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/role_selection.dart';

class CBTResultsAdminScreen extends StatefulWidget {
  final VoidCallback onBack;

  const CBTResultsAdminScreen({super.key, required this.onBack});

  @override
  State<CBTResultsAdminScreen> createState() => _CBTResultsAdminScreenState();
}

class _CBTResultsAdminScreenState extends State<CBTResultsAdminScreen> {
  String? selectedRole;
  final List<String> roles = ['Parent', 'Teacher', 'Admin'];

  //
  String _currentView = 'default';

  void _viewCBTResults() {
    setState(() {
      _currentView = 'viewResults';
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
      case 'viewResults':
        return ResultListAdminScreen(
          onBack: _goBack,
        );
      default:
        return _buildDefaultView();
    }
  }

  Widget _buildDefaultView() {
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
                'View Results',
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
                value: selectedRole,
                isBlackFontColor: true,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 0.7,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                items: roles,
                hint: 'Select Test Type',
                onChanged: (value) {
                  setState(() {
                    selectedRole = value;
                  });
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: CustomDropdown(
                value: selectedRole,
                isBlackFontColor: true,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 0.7,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                items: roles,
                hint: 'Select Class',
                onChanged: (value) {
                  setState(() {
                    selectedRole = value;
                  });
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: CustomDropdown(
                value: selectedRole,
                isBlackFontColor: true,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 0.7,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                items: roles,
                hint: 'Select Subject',
                onChanged: (value) {
                  setState(() {
                    selectedRole = value;
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: _viewCBTResults,
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
  }
}
