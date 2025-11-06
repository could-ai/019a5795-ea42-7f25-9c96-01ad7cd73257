import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/tabs/edit_tab.dart';
import 'package:couldai_user_app/screens/tabs/effects_tab.dart';
import 'package:couldai_user_app/screens/tabs/save_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AI Photo Editor Pro'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.edit), text: 'Edit'),
              Tab(icon: Icon(Icons.auto_awesome), text: 'Efek'),
              Tab(icon: Icon(Icons.save), text: 'Simpan'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            EditTab(),
            EffectsTab(),
            SaveTab(),
          ],
        ),
      ),
    );
  }
}
