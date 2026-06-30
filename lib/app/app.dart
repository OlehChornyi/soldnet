import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/theme/app_theme.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_outlined.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      builder: (context, child) {
        return child!;
      },
    );
  }
}

class RedirectionPage extends ConsumerStatefulWidget {
  const RedirectionPage({super.key});

  @override
  ConsumerState<RedirectionPage> createState() => _RedirectionPageState();
}

class _RedirectionPageState extends ConsumerState<RedirectionPage> {
  bool _isAppNameShown = false;
  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playAnimation();
  }

  void _playAnimation() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() => _isAppNameShown = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _isAppNameShown ? 1 : 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Image.asset('assets/images/redirection_page/logo.png'),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AnimatedSize(
                    duration: Duration(seconds: 1),
                    child: SizedBox(
                      width: _isAppNameShown ? 0 : screenWidth,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                          width: screenWidth,
                          child: Image.asset(
                              'assets/images/redirection_page/khaki.png')),
                      Transform.rotate(
                        angle: -85,
                        child: Text(
                          'SoldNet',
                          style: AppTextStyles.s32w700(color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: _isAppNameShown ? 1 : 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppButtonOutlined(
                    text: 'Go Go Go',
                    onTap: () async {
                      // await _player
                      //     .play(AssetSource('sounds/guns/revolver.wav'));

                      router.go(ScreenPaths.home);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
