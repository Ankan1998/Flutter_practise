import 'package:birderapp/models/birdlist_changenotifier.dart';
import 'package:birderapp/models/birdmodel.dart';
import 'package:birderapp/services/birds_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewBird extends StatefulWidget {
  @override
  _AddNewBirdState createState() => _AddNewBirdState();
}

class _AddNewBirdState extends State<AddNewBird> {
  String _txtName = '';
  String _txtScientificName = '';
  String _txtImageUrl = '';
  String _txtId = '';
  String _txtInfo = '';
  late BirdModel _newbird;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildBirdId() {
    return TextFormField(
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Id Required !";
        }
        return null;
      },
      decoration: InputDecoration(labelText: 'Id:'),
      onSaved: (value) {
        _txtId = value!;
      },
    );
  }

  Widget _buildBirdName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name:'),
      validator: (value) {
        if (value!.isEmpty) {
          return "Name Required !";
        }
        return null;
      },
      onSaved: (value) {
        _txtName = value!;
      },
    );
  }

  Widget _buildBirdScientificName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Scientific Name:'),
      validator: (value) {
        if (value!.isEmpty) {
          return "Scientific Name Required !";
        }
        return null;
      },
      onSaved: (value) {
        _txtScientificName = value!;
      },
    );
  }

  Widget _buildBirdInfo() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Description:'),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      validator: (value) {
        if (value!.isEmpty) {
          return "Info Required !";
        }
        return null;
      },
      onSaved: (value) {
        _txtInfo = value!;
      },
    );
  }

  Widget _buildBirdImageUrl() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Image Url:'),
      validator: (value) {
        if (value!.isEmpty) {
          return "Image Url Required !";
        }
        return null;
      },
      onSaved: (value) {
        _txtImageUrl = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Bird'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                _buildBirdId(),
                _buildBirdName(),
                _buildBirdScientificName(),
                _buildBirdImageUrl(),
                _buildBirdInfo(),
                ElevatedButton(
                  onPressed: () {
                    if (!_formkey.currentState!.validate()) {
                      return;
                    }

                    // save the bird

                    _formkey.currentState!.save();
                    _newbird = BirdModel(
                      id: int.parse(_txtId),
                      name: _txtName,
                      scientificName: _txtScientificName,
                      imageUrl: _txtImageUrl,
                      info: _txtInfo,
                      likes: 0,
                      isFavorite: false,
                    );
                    // Access list of birds from ChangeNotifier
                    // print(_newbird.name);
                    // Provider.of<BirdListChangeNotifier>(
                    //   context,
                    //   listen: false,
                    // ).addNewBirdToList(_newbird);
                    // Navigator.pop(context);
                    BirdsService _srvObj = BirdsService();
                    _srvObj.addABirdtoFirebaseDB(this._newbird);
                  },
                  child: Text('Add new bird'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
