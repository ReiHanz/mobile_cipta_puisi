part of "../splash.dart";

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, "/onboarding", (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: gradientBoxDecoration,
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/logo_app.png",
              width: size.width * 0.5,
            ),
            const Spacer(),
            Text(
              "versi 1.0.0",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Theme.of(context).colorScheme.background),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
