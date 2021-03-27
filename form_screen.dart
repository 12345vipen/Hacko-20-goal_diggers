import 'package:flutter/material.dart';
import 'package:womenprotection/screens/display.dart';

import 'package:womenprotection/main.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController textNameController = TextEditingController();
  TextEditingController textAddressController = TextEditingController();
  TextEditingController textPhoneController = TextEditingController();
  TextEditingController textBalanceController = TextEditingController();
  String _name;
  String _address;
  String _phoneNo;
  String _balance;

  // for formkey refernce
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      controller: textNameController,
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildAddressField() {
    return TextFormField(
      controller: textAddressController,
      decoration: InputDecoration(labelText: 'Address'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is required';
        }
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }

  Widget _buildPhoneNoField() {
    return TextFormField(
      controller: textPhoneController,
      decoration: InputDecoration(labelText: 'Phone no'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone no is required';
        }
      },
      onSaved: (String value) {
        _phoneNo = value;
      },
    );
  }

  Widget _buildBalanceField() {
    return TextFormField(
      controller: textBalanceController,
      decoration: InputDecoration(labelText: 'Current Balance'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Add Current balace if its 0 then ADD zero';
        }
      },
      onSaved: (String value) {
        _balance = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Khata'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNameField(),
                _buildAddressField(),
                _buildPhoneNoField(),
                _buildBalanceField(),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();
                    print(_name);
                    print(_address);
                    print(_phoneNo);
                    print(_balance);
                    // Navigator.of(context).pop(); // pop this screen
                    _sendDataToSecondScreen(context);
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  elevation: 5.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _sendDataToSecondScreen(context) {
    String names = textNameController.text;
    // String addressSend = textAddressController.text;
    String phoneSend = textPhoneController.text;
    String balanceSend = textBalanceController.text;
    print(names);
    print(phoneSend);
    print(balanceSend);
    Navigator.of(context).pop();

    print('Entered');
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) =>Display(
            name: names,
            phoneNo: phoneSend,
            balance: balanceSend,
          ),));
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => Display(
    //         name: names,
    //         phoneNo: phoneSend,
    //         balance: balanceSend,
    //       ),
    //     ));
  }
}
// /Home(name: names,phoneNo: phoneSend,balance: balanceSend,)
