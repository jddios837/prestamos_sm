import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              document['name'], 
              style: Theme.of(context).textTheme.headline,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: StreamBuilder(
          stream: Firestore.instance.collection('clients').snapshots(),
          builder: (BuildContext context, snapshot) {
            if(snapshot.hasData) {
              return ListView.builder(
                itemExtent: 80.0,
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) => 
                  _buildListItem(context, snapshot.data.documents[index])

              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )
      ),
    );
  }
}