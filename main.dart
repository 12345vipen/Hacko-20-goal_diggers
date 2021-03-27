import 'package:flutter/material.dart';
import 'package:womenprotection/screens/form_screen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  final String name;
  final String balance;
  final String phoneNo;
  Home({this.name, this.phoneNo, this.balance});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop_calculator"),
          // backgroundColor: Colors.red,
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormScreen()));
              print(widget.name);
            }),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        // body: Display(name: widget.name,phoneNo: widget.phoneNo,balance: widget.balance),
        body: Container(
          child: Text(widget.name ?? 's'),
        ));
  }
}

void main() {
  runApp(
    new MyApp(),
  );
}

/*
child: Column(
            children: [
              Flexible(
                  child: ListView.builder(
                itemCount: dynamicData.length,
                itemBuilder: (_, index) => dynamicData[index],
              )),
            ],
          ),
          List<Display> dynamicData = [];
  addDynamic()  {
    dynamicData.add(Display(
        name: widget.name, phoneNo: widget.phoneNo, balance: widget.balance));
    setState(() {});
    //
  }
Scaffold(
      appBar: AppBar(
        title: Text("Shop_calculator"),
        backgroundColor: Colors.red,
        // for adding button use actions
        actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          child: Icon(Icons.add),
          backgroundColor: new Color(0xFFE57373),
          onPressed: () {
            addDynamic();
          }),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
              itemCount: dynamicData.length,
              itemBuilder: (_, index) => dynamicData[index],
            )),
          ],
        ),
      ),
    );
    */

// crud operations

// import 'package:flutter/material.dart';

// import 'package:firebase_database/firebase_database.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized(); // very important
//   // await Firebase.intializedApp();
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final DBRef = FirebaseDatabase.instance.reference();

//   var retrievedName = "";

//   String name = "";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Women Safety',
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: showDialog,
//           child: Icon(Icons.add),
//         ),
//         appBar: AppBar(
//           title: Text("Women Protection"),
//         ),
//         body: Column(
//           children: [
//             RaisedButton(
//               child: Text("Write Data"),
//               onPressed: () {
//                 writeData();
//               },
//             ),
//             RaisedButton(
//               child: Text("Read Data"),
//               onPressed: () {
//                 readData();
//               },
//             ),
//             RaisedButton(
//               child: Text("Update Data"),
//               onPressed: () {
//                 updateData();
//               },
//             ),
//             RaisedButton(
//               child: Text("Delete Data"),
//               onPressed: () {
//                 deleteData();
//               },
//             ),
//             RaisedButton(
//               child: Text("chk Data"),
//               onPressed: () {
//                 DBRef.child("save_lady").once().then((DataSnapshot data) {
//                   setState(() {
//                     retrievedName = data.value.toString();
//                   });
//                 });
//               },
//             ),
//             Text(retrievedName),
//           ],
//         ),
//       ),
//     );
//   }

//   int chkData() {
//     int ans = 0;
//     DBRef.once().then((DataSnapshot dataSnapShot) {
//       ans = dataSnapShot.value['save_lady'];
//     });
//     print("ans $ans");
//     return ans;
//   }

//   void writeData() {
//     DBRef.child("1").set({'id': 'vipen', 'data': 'This is the vipen data'});
//   }

//   void readData() {
//     DBRef.once().then((DataSnapshot dataSnapShot) {
//       print(dataSnapShot.value);
//     });
//   }

//   void updateData() {
//     DBRef.child("1").update({
//       'data': 'this is the balo data',
//     });
//   }

//   void deleteData() {
//     DBRef.child("1").remove();
//   }
// }
