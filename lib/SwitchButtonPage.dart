/// Metehan DER

import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class DarkmodeSwitchButtonExample extends StatefulWidget {
  const DarkmodeSwitchButtonExample({super.key});

  @override
  State<DarkmodeSwitchButtonExample> createState() =>
      _DarkmodeSwitchButtonExampleState();
}

class _DarkmodeSwitchButtonExampleState
    extends State<DarkmodeSwitchButtonExample> {
  final _controller15 = ValueNotifier<bool>(false);

  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();

    _controller15.addListener(() {
      setState(() {
        if (_controller15.value) {
          isDarkMode = true;
        } else {
          isDarkMode = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: isDarkMode
              ? LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : LinearGradient(
                  colors: [Colors.blueGrey, Colors.black87],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isDarkMode
                  ? Icon(
                      Icons.wb_sunny_rounded,
                      size: 60,
                      color: Colors.blue,
                    )
                  : Transform.flip(
                      flipX: true,
                      child: Icon(
                        Icons.nightlight_round,
                        size: 60,
                        color: Colors.yellow,
                      ),
                    ),
              SizedBox(height: 20),
              AdvancedSwitch(
                activeImage: AssetImage("assets/dayLight.png"),
                inactiveImage: AssetImage("assets/night.png"),
                activeColor: Colors.yellowAccent,
                width: 80,
                controller: _controller15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
