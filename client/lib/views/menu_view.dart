import 'dart:math';

import 'package:client/widgets/date_picker.dart';
import 'package:client/widgets/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  var data1;
  late DateTime _selectedValue;

  void changeDate(DateTime date) {
    setState(() {
      _selectedValue = date;
      fetchData(_selectedValue);
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedValue = DateTime.now();
    fetchData(_selectedValue);
  }

  fetchData(DateTime selectedValue) async {
    var res = await http.get(Uri.parse(url));
    var rand2 = Random().nextInt(1000);
    var rand = Random().nextInt(6) + rand2;
    print(rand);
    print(rand2);
    setState(() {
      data1 = jsonDecode(res.body);
      var pos = selectedValue.day - 1;
      data = data1.sublist(rand2, rand);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDatePicker(_selectedValue, changeDate),
        Text(DateFormat('dd MMM yyyy').format(_selectedValue)),
        MenuList(data: data),
      ],
    );
  }
}
