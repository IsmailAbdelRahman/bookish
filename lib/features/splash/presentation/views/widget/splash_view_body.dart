import 'package:bookly/constent.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/assetes_const.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import "package:get/get.dart" as getN;

//? animated
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late Animation<Offset> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    initAnimtedCode();
    navigaterByDelayandGet();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(CImageData.logo),
        const SizedBox(
          height: 4,
        ),
        AnimatedBuilder(
          animation: animation,
          builder: (context, widget) {
            return SlideTransition(
              position: animation,
              child: const Text(
                "Rad Books Free",
                textAlign: TextAlign.center,
              ),
            );
          },
        )
      ],
    );
  }

// todo :  initAnimtedCode
  void initAnimtedCode() {
    // اول شى اظبط الكنترول علشان ابصيه لل الانميشن
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController); // خلصت من الكنترولر وبصيتو لل الانيشن
    // ابدا تحت بقا اشتغل بالاساسى ال هو الانمشن

    animationController.forward();

    // animation.addListener(() {
    //   setState(() {});
    // });
  }

// todo :navigaterByDelayandGet

  void navigaterByDelayandGet() {
    Future.delayed(
        const Duration(seconds: 4), // duration
//git
/*
      () => getN.Get.to(const HomeView(),
          duration:
              durationSplachtoHome, // الدكرشن دى خاصه بتطويل وقت شكل التنقل
          transition: getN.Transition.leftToRightWithFade), /* شكل الانتقال */
  
  
  
  */
        //router

        () => GoRouter.of(context).push(AppRouter.homeview)

        // context.go()

// normul

        // () => Navigator.push(context,
        //     MaterialPageRoute(builder: ((context) => const HomeView())))

        );
  }
}
