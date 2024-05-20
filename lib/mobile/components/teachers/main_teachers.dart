import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studify/mobile/components/teachers/screens/home.dart';

class TeachersMobileScreen extends StatefulWidget {
  const TeachersMobileScreen({super.key});

  @override
  State<TeachersMobileScreen> createState() => _TeachersMobileScreenState();
}

class _TeachersMobileScreenState extends State<TeachersMobileScreen> {
  int _currentPage = 0;

  final List<Widget> _pages = const [
    Home(),
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Positioned.fill(
            top: 15.0, // Height of the custom AppBar
            child: IndexedStack(
              index: _currentPage,
              children: _pages,
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
                padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0, 8.0),
                color: Colors.white,
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SVG with increased size
                      SvgPicture.asset(
                        '../../../../assets/studify_text_G.svg',
                        height: 24, // Adjust the size as needed
                      ),
                      // Gradient-wrapped icon
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            '../../../../assets/notification_G.svg',
                            height: 17,
                          ),
                          onPressed: () {
                            // Handle notification icon press
                          },
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
                    '../../../../assets/home_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    '../../../../assets/home.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 1
                ? SvgPicture.asset(
                    '../../../../assets/attendance_G.svg',
                    height: 14,
                  )
                : SvgPicture.asset(
                    '../../../../assets/attendance.svg',
                    height: 14,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 2
                ? SvgPicture.asset(
                    '../../../../assets/s_management_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    '../../../../assets/s_management.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 3
                ? SvgPicture.asset(
                    '../../../../assets/profile_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    '../../../../assets/profile.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 4
                ? SvgPicture.asset(
                    '../../../../assets/more_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    '../../../../assets/more.svg',
                    height: 17,
                  ),
            label: '',
          ),
        ],
      ),
    );
  }
}
