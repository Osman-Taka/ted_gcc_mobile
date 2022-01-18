import 'package:flutter/material.dart';
import 'package:ted_gcc_mobile_app/styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: const Text(""), accountEmail: const Text(""),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const NetworkImage("https://tedsakaryagcc3.xyz/img/app.png"),
              )
            )
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text("Articles", style: Styles.textDefault),
            onTap: () => null, //TODO Implement this
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("About Us", style: Styles.textDefault),
            onTap: () => null, //TODO Implement this
          ),
        ],
      ),
    );
  }
}
