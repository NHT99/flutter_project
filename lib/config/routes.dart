import 'package:ecommerce/config/route_path.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/intro_page.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: RoutePath.introPage,
  routes: [
    GoRoute(
      path: RoutePath.introPage,
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      path: RoutePath.shopPage,
      builder: (context, state) => const ShopPage(),
    ),
    GoRoute(
      path: RoutePath.cartPage,
      builder: (context, state) => const CartPage(),
    ),
  ],
);
