import 'package:flutter/material.dart';
import 'package:news_app/services/fetch_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initStet() {
    super.initState();
    TopNewsRepo().fetchTopNews();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home view'),
      ),
    );
  }
}
