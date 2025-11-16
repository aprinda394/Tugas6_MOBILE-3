import 'package:flutter/material.dart';
import '../Widgets/listview.dart';
import '../Widgets/gridview.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Katalog Buku'),
          backgroundColor: Colors.amber,
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'List View'),
              Tab(icon: Icon(Icons.grid_on), text: 'Grid View'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildListView(),
            buildGridView(),
          ],
        ),
      ),
    );
  }
}