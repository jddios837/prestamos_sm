import 'package:flutter/material.dart';
import 'package:prestamos_sm/src/pages/client_list_page.dart';

import 'package:prestamos_sm/src/pages/home_page.dart';
import 'package:prestamos_sm/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Prestamo SM'),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(
              Icons.pages,
              color: Colors.blue,
            ),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.face,
              color: Colors.blue,
            ),
            title: Text('Clientes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, ClientListPage.routeName);
            },
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.party_mode,
          //     color: Colors.blue,
          //   ),
          //   title: Text('Party'),
          //   onTap: () {},
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.people,
          //     color: Colors.blue,
          //   ),
          //   title: Text('People'),
          //   onTap: () {},
          // ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            title: Text('Settings'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, SettingsPage.routeName);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          )
        ],
      ),
    );
  }
}
