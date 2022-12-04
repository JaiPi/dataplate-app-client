import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  MenuList({
    Key? key,
    required this.data,
  }) : super(key: key);

  var data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  //color: Colors.amber,
                  child: SizedBox(
                    width: 200,
                    height: 150,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text(data[index]["title"].substring(0, 10)),
                            subtitle: Text("ID: ${data[index]["id"]}"),
                            leading: Image.network(data[index]["url"]),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Comprar"),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: data.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
