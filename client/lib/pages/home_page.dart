import 'package:client/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:client/bottomNav.dart';
import 'package:client/views/menu_view.dart';
import 'package:client/views/senhas_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _viewIndex = 0;
  late String _title;

  List<Widget> views = [
    const MenuView(),
    const Senhasview(),
  ];

  void setView(int viewIndex) {
    setState(() {
      _viewIndex = viewIndex;
      _title = getViewTitle(_viewIndex);
    });
  }

  String getViewTitle(int viewIndex) {
    String title = "";

    switch (viewIndex) {
      case 0:
        {
          title = 'Menus';
        }
        break;
      case 1:
        {
          title = 'Senhas';
        }
        break;
    }
    return title;
  }

  @override
  void initState() {
    super.initState();
    _title = getViewTitle(_viewIndex);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_viewIndex],
      bottomNavigationBar: BottomNav(setView, _viewIndex),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(_title),
      ),
      drawer: const MyDrawer(),
    );
  }
}
