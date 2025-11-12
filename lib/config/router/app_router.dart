
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:bayteq_flutter_challenge/features/home/home.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/products/:id',
      builder: (context, state) {
        final productId = state.pathParameters['id']!;
        return ProductDetailScreen(productId: productId);
      },
    ),
    GoRoute(
      path: '/products',
      builder: (context, state) => const ProductDetailScreen(),
    ),
  ]
);