import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  void _redirect() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // final userNotirier = ref.read(storeUserProvider.notifier);
      // final token = await userNotirier.getTokenFromSharedPreferences();
      // await Future.delayed(Duration(seconds: 2));
      // if (token.isNotEmpty) {
      //   router.go(ScreenPaths.home);
      // } else {
      //   router.go(ScreenPaths.signin);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset(
            //   'assets/icons/common/pear.svg',
            //   width: 96,
            //   height: 96,
            //   colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            // ),
            Text(
              'SoldNet',
            ),
          ],
        ),
      ),
    );
  }
}
