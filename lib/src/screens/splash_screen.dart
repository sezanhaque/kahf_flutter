import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kahf_flutter/src/core/constants/assets_constants.dart';
import 'package:kahf_flutter/src/core/utils/ui_utils.dart';

import '../features/home/presentation/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1500), () {
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const HomeScreen()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double logoSize = MediaQuery.sizeOf(context).width * 0.4;
    final double logoHeight = logoSize * 0.6;

    return Scaffold(
      backgroundColor: UIUtils.appBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SVG logo with scale + fade animation
            SvgPicture.asset(
                  AssetsConstants.kahfLogo,
                  width: logoSize,
                  height: logoHeight,
                )
                .animate(autoPlay: true)
                .fadeIn(duration: 800.ms)
                .scale(duration: 1000.ms, curve: Curves.easeOutBack),
            // const SizedBox(height: 8),
            // Text with slide-up + fade animation
            Text(
                  'For You, For Future!',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                )
                .animate()
                .slideY(
                  begin: -0.5,
                  end: 0.8,
                  duration: 600.ms,
                  curve: Curves.easeOut,
                  delay: 600.ms,
                )
                .fadeIn(duration: 600.ms, delay: 600.ms),
          ],
        ),
      ),
    );
  }
}
