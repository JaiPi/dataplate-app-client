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
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text(data[index]["title"]),
                            subtitle: Text("ID: ${data[index]["id"]}"),
                            leading: Image.network(data[index]["url"]),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_shopping_cart_sharp),
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
