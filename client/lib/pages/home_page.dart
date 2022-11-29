import 'package:client/drawer.dart';
import 'package:flutter/material.dart';
import 'package:client/bottomNav.dart';
import 'package:client/views/menu_view.dart';
import 'package:client/views/senhas_view.dart';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  List<Widget> pages = [
    const Homeview(),
    const Senhasview(),
  ];

  void changePage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_pageIndex],
      bottomNavigationBar: BottomNav(changePage, _pageIndex),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("DataPlate"),
      ),
      // body: data != null
      //     ? ListView.builder(
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text(data[index]["title"]),
      //             subtitle: Text("ID: ${data[index]["id"]}"),
      //             leading: Image.network(data[index]["url"]),
      //           );
      //         },
      //         itemCount: data.length,
      //       )
      //     : const Center(
      //         child: CircularProgressIndicator(),
      //       ),
      drawer: MyDrawer(),
    );
  }
}
