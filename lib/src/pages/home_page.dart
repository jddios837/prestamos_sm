import 'package:flutter/material.dart';
import 'package:prestamos_sm/src/share_prefs/preferencias_usuario.dart';

import 'package:prestamos_sm/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'home';
  
  final prefs = new PreferenciasUsuarios();

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${ prefs.colorSecundario }'),
          Divider(),
          Text('Genero: ${ prefs.genero }'),
          Divider(),
          Text('Nombre de usuario: ${ prefs.nombre }'),
          Divider(),
        ],
      ),
    );
  }

  // Widget _crearMenu(BuildContext context) {
  //     return Drawer(
  //       child: ListView(
  //         padding: EdgeInsets.zero,
  //         children: <Widget>[
  //           DrawerHeader(
  //             child: Text('Mi Menú'),
  //             decoration: BoxDecoration(
  //               image: DecorationImage(
  //                 image: AssetImage('assets/menu-img.jpg'),
  //                 fit: BoxFit.cover
  //               )
  //             ),
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.pages, color: Colors.blue,),
  //             title: Text('Pages'),
  //             onTap: (){
  //               Navigator.pushReplacementNamed(context, HomePage.routeName);
  //             },
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.party_mode, color: Colors.blue,),
  //             title: Text('Party'),
  //             onTap: (){},
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.people, color: Colors.blue,),
  //             title: Text('People'),
  //             onTap: (){},
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.settings, color: Colors.blue,),
  //             title: Text('Settings'),
  //             onTap: (){
  //               // Navigator.pop(context);
  //               // Navigator.pushNamed(context, SettingsPage.routeName);
  //               Navigator.pushReplacementNamed(context, SettingsPage.routeName);
  //             },
  //           )
  //         ],
  //       ),
  //     );
  //   }
}