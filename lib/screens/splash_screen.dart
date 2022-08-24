import '../presentation/theme.dart';
import '../screens/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SafeArea(
              child: Row(
                children: [
                  _buildSplashLogo(),
                  Expanded(
                      child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSplashText(),
                        const SizedBox(height: 20),
                        _buildSplashButton(),
                      ],
                    ),
                  )),
                ],
              ),
            )
          : SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildSplashLogo(),
                  Expanded(
                    child: Column(
                      children: [
                        Spacer(),
                        _buildSplashText(),
                        Spacer(),
                        _buildSplashButton(),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }

  Widget _buildSplashLogo() => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Theme.of(context).brightness == Brightness.light
                  ? SvgPicture.asset(
                      "assets/imgs/undraw_modern_design_re_dlp8.svg")
                  : SvgPicture.asset("assets/imgs/undraw_joyride_re_968t.svg"),
            )),
          ],
        ),
      );

  Widget _buildSplashButton() => Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        style: elevatedButtonTheme,
        onPressed: () =>
            Navigator.pushReplacementNamed(context, HomeScreen.routeName),
        child: const Text('Let\'s get started'),
      ));

  Widget _buildSplashText() => SafeArea(
        child: Column(
          children: [
            Text(
              'Looking for a dream',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Never give up on dreams just because you can\'t see them. You have to see them before you can do anything with them.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
}
