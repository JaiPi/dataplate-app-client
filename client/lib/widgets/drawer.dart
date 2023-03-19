import 'package:client/pages/AuthController.dart';
import 'package:flutter/material.dart';

// https://www.youtube.com/watch?v=N1cXyRJL62I

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    AuthController.instance.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          const UserAccountsDrawerHeader(
              accountName: Text("Pawan Kumar"),
              accountEmail: Text("mtechviral@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
              )),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Pawan Kumar"),
            subtitle: const Text("Developer"),
            trailing: const Icon(Icons.edit),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("mtechviral@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
              onPressed: logout,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Logout"),
            ),
          )
        ],
      ),
    );
  }
}
