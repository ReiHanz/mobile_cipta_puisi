part of "../onboarding.dart";

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Poems By People",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontFamily: "Caveat",
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Selamat datang di mobile cipta puisi",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontFamily: "Caveat",
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: size.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/login", (route) => false);
                  },
                  child: const Text("Explore Poems"),
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          )),
    );
  }
}
