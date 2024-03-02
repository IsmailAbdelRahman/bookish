import 'package:bookly/features/home/presentation/views/book_detils_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeview = "/homeview";
  static const bookDetailsView = "/bookDetailsView";
  static const serchview = "/serchview";

  static GoRouter goRouter = GoRouter(routes: [
    GoRoute(
        path: "/",
        builder: (BuildContext context, state) => const SplashView()),
    GoRoute(
        path: homeview,
        builder: (BuildContext context, state) => const HomeView()),
    GoRoute(
        //  path: bookDetailsView,
        path: bookDetailsView,
        builder: ((context, state) => const BookDetailsView())),
    GoRoute(path: serchview, builder: ((context, state) => const SearchView()))
  ]);

//   static  GoRouter goRouter = GoRouter(
//   routes: [

//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) {
//         return const SplashView();
//       },

//       routes: <RouteBase>[
//         GoRoute(
//           path: 'details',
//           builder: (BuildContext context, GoRouterState state) {
//             return const HomeView();
//           },
//         ),
//       ],

//     ),
//   ],
// );
}
