
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: const TabBarView(
            children: [
              UserProfilePage(),
              ProductPage(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Theme.of(context).colorScheme.surface,
            child: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Perfil'),
                Tab(icon: Icon(Icons.inventory), text: 'Productos'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}