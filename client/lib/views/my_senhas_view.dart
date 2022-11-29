import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/my_senhas_title.dart';

class MySenhasView extends StatefulWidget {
  const MySenhasView({super.key});

  @override
  State<MySenhasView> createState() => _MySenhasViewState();
}

class _MySenhasViewState extends State<MySenhasView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[100],
      child: Column(
        children: const [
          MysenhasTitle(),
          Divider(
            color: Colors.blueGrey,
            height: 10,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
