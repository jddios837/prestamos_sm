import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:prestamos_sm/src/pages/client_list_page.dart';
import 'package:prestamos_sm/src/pages/client_form_page.dart';
import 'package:prestamos_sm/src/pages/home_page.dart';
import 'package:prestamos_sm/src/pages/settings_page.dart';
import 'package:prestamos_sm/src/share_prefs/preferencias_usuario.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new PreferenciasUsuarios();
  await prefs.initPrefs();
 
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuarios();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prestamos SM',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName      : (BuildContext context) => HomePage(),
        ClientListPage.routeName  : (BuildContext context) => ClientListPage(),
        ClientFormPage.routeName  : (BuildContext context) => ClientFormPage(),
        SettingsPage.routeName  : (BuildContext context) => SettingsPage()
      },
    );
    // return MaterialApp(
    //   title: 'Prestamos SM',
    //   initialRoute: 'clientList',
    //   routes: {
    //       HomePage.routeName      : (BuildContext context) => HomePage(),
    //       ClientListPage.routeName  : (BuildContext context) => ClientListPage(),
    //       ClientFormPage.routeName  : (BuildContext context) => ClientFormPage(),
    //       SettingsPage.routeName  : (BuildContext context) => SettingsPage()
    //   },
    //   theme: ThemeData(
    //     primaryColor: Colors.deepPurple
    //   )
    // );
  }
}

// void main() => runApp(MyApp());
 
// class MyApp extends StatelessWidget {

//   Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
//     return ListTile(
//       title: Row(
//         children: <Widget>[
//           Expanded(
//             child: Text(
//               document['name'], 
//               style: Theme.of(context).textTheme.headline,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Material App Bar'),
//         ),
//         body: StreamBuilder(
//           stream: Firestore.instance.collection('clients').snapshots(),
//           builder: (BuildContext context, snapshot) {
//             if(snapshot.hasData) {
//               return ListView.builder(
//                 itemExtent: 80.0,
//                 itemCount: snapshot.data.documents.length,
//                 itemBuilder: (context, index) => 
//                   _buildListItem(context, snapshot.data.documents[index])

//               );
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         )
//       ),
//     );
//   }
// }