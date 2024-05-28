import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studify/mobile/components/parents/screens/parents_home.dart';
import 'package:studify/mobile/components/parents/screens/payments.dart';
import 'package:studify/mobile/components/parents/screens/student_management.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class ParentsMobileScreen extends StatefulWidget {
  const ParentsMobileScreen({super.key});

  @override
  State<ParentsMobileScreen> createState() => _ParentsMobileScreenState();
}

class _ParentsMobileScreenState extends State<ParentsMobileScreen> {
  int _currentPage = 0;

  final List<Widget> _pages = const [
    HomeParents(),
    StudentManagementScreen(),
    PaymentScreen(),
    HomeParents(),
    HomeParents(),
  ];

  void _navToNotifications() {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => const TeachersNotificationScreen(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Positioned.fill(
            top: 60.0, // Height of the custom AppBar
            child: SafeArea(
              child: IndexedStack(
                index: _currentPage,
                children: _pages,
              ),
            ),
          ),
          // Custom AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Material(
              elevation: 2.0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(18.0, 10.0, 5.0, 8.0),
                color: Colors.white,
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Good Day',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          CustomText(
                            'Mr James',
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ],
                      ),
                      // Gradient-wrapped icon
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            'assets/images/notification_G.svg',
                            height: 17,
                          ),
                          onPressed: _navToNotifications,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: _currentPage,
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentPage == 0
                ? SvgPicture.asset(
                    'assets/images/home_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/home.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 1
                ? SvgPicture.asset(
                    'assets/images/attendance_G.svg',
                    height: 14,
                  )
                : SvgPicture.asset(
                    'assets/images/attendance.svg',
                    height: 14,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 2
                ? SvgPicture.asset(
                    'assets/images/s_management_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/s_management.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 3
                ? SvgPicture.asset(
                    'assets/images/profile_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/profile.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 4
                ? SvgPicture.asset(
                    'assets/images/more_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/more.svg',
                    height: 17,
                  ),
            label: '',
          ),
        ],
      ),
    );
  }
}
