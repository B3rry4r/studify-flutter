import 'package:flutter/material.dart';

class Toggler extends StatefulWidget {
  const Toggler({super.key});

  @override
  State<Toggler> createState() => _TogglerState();
}

class _TogglerState extends State<Toggler> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSwitched = !_isSwitched;
        });
      },
      child: Container(
        width: 40,
        height: 20,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _isSwitched ? Colors.black : Colors.white,
            border: Border.all(
              width: 0.7,
              color: Colors.black,
            )),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: _isSwitched ? 20 : 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: 14.5,
                height: 14.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _isSwitched ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
