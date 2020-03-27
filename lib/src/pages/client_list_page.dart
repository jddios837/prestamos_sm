import 'package:flutter/material.dart';

import 'package:prestamos_sm/src/widgets/menu_widget.dart';

class ClientListPage extends StatelessWidget {

  static final String routeName = 'clientList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes')
      ),
      drawer: MenuWidget(),
      body: Column(),
      floatingActionButton: _crearBoton(context),
    );
  }

  Widget _crearBoton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => Navigator.pushNamed(context, 'clientForm'),
      backgroundColor: Colors.deepPurple,
    );
  }
}