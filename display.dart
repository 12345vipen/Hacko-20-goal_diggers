import 'package:flutter/material.dart';
import 'form_screen.dart';
// class Display extends StatefulWidget {
//   final String name;
//   final String balance;
//   final String phoneNo;
//   Display({this.name, this.phoneNo, this.balance});
//   @override
//   _DisplayState createState() => _DisplayState();
// }

// class _DisplayState extends State<Display> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//         ListTile(
//           leading: Text(widget.name ?? 'safe'),
//           title: Text(widget.balance ?? 'safe'),
//           trailing: Icon(Icons.phone),
//           // trailing: Text('fedc'),
//         ),
//       ]),
//     );
//   }
// }


class Display extends StatelessWidget {
  final String name;
  final String balance;
  final String phoneNo;
  Display({this.name, this.phoneNo, this.balance});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormScreen()));
              print(name);
            }),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
          body: Card(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: Text(name ?? 'safe'),
            title: Text(balance ?? 'safe'),
            trailing: Icon(Icons.phone),
            // trailing: Text('fedc'),
          ),
        ]),
      ),
    );
  }
}