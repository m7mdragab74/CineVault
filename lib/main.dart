import 'package:cine_vault/config/routes/router.dart';
import 'package:cine_vault/config/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/config/.env");
  runApp(const CineVault());
}

class CineVault extends StatelessWidget {
  const CineVault({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      fontSizeResolver: (fontSize, screenUtil) {
        return fontSize * screenUtil.scaleWidth.clamp(0.8, 1.2);
      },
      builder: (context, child) {
        return SafeArea(
          child: MaterialApp.router(
            theme: AppThemes.darkTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
          ),
        );
      },
    );
  }
}
