import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ted_gcc_mobile_app/styles.dart';
import 'package:ted_gcc_mobile_app/main.dart';
import 'package:ted_gcc_mobile_app/about_us.dart';
int currentPageIndex = 0;
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  void pageLoader(BuildContext context, int pageIndex){
    switch(pageIndex){
      case 0:
        if(currentPageIndex == 1){
          currentPageIndex = 0;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyApp())
          );
        } else {
          Navigator.pop(context);
        }
        break;
      case 1:
        if(currentPageIndex == 0){
          currentPageIndex = 1;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AboutUs())
          );
        } else {
          Navigator.pop(context);
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(accountName: Text(""), accountEmail: Text(""),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/navbar.png'),
              )
            )
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: Text("Articles", style: (SchedulerBinding.instance!.window.platformBrightness == Brightness.light ? Styles.textDefault : DarkStyles.textDefault)),
            onTap: () => pageLoader(context, 0)
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: Text("About Us", style: (SchedulerBinding.instance!.window.platformBrightness == Brightness.light ? Styles.textDefault : DarkStyles.textDefault)),
            onTap: () => pageLoader(context, 1)
          ),
        ],
      ),
    );
  }
}
