import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/single_update.dart';
import 'package:studify/desktop/widgets/responsive_grid.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';

class UpdatesAdminDesktopScreen extends StatelessWidget {
  const UpdatesAdminDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var updateViewModel = Provider.of<AppViewModel>(context);

    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(40),
      child: updateViewModel.updateView == 'default'
          ? _buildDefaultView(context)
          : _buildSingleNotificationView(),
    );
  }

  Widget _buildDefaultView(BuildContext context) {
    var updateViewModel = Provider.of<AppViewModel>(context, listen: false);

    final List<Widget> updates = [
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: updateViewModel.viewSingleUpdate,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/updatesImg.png'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                      const Color(0xFF0000FF).withOpacity(0.25), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              top: 150,
              left: 35,
              child: CustomText(
                'News From The School',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ResponsiveGrid(
              items: updates,
              isType3: true,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSingleNotificationView() {
    return const SingleUpdateAdminDesktopScreen();
  }
}
