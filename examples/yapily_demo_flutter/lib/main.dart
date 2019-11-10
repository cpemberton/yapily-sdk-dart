import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:yapily/api.dart';
import 'package:yapily_demo_flutter/institution_service.dart';
import 'package:yapily_demo_flutter/view/institution_details.dart';
import 'package:yapily_demo_flutter/view/select_institution.dart';

void main() => runApp(new MyApp());

final biggerFont = const TextStyle(fontSize: 18.0);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      title: 'Yapily Demo',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'TPP Simulator Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<List<ConsentInstitution>> consentsInstitutions = getConnectedInstitutions();
  FlutterWebviewPlugin flutterWebviewPlugin = new FlutterWebviewPlugin();
  bool isOnWebview = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar:
      new AppBar(
        centerTitle: true,
        title: new Text('TPP Simulator'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                consentsInstitutions = getConnectedInstitutions();
              });
            },
          ),
        ],
      ),
      body: FutureBuilder<List<ConsentInstitution>>(
        future: consentsInstitutions,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return new Text("${snapshot.error}");
          }
          else if (snapshot.hasData) {
            List<Widget> institutionWidgets = [];
            snapshot.data.forEach((institution) {
              Widget listItem;
              listItem = _buildRow(institution, context);
              institutionWidgets.add(listItem);
              institutionWidgets.add(new Divider(height: 0.0));
            });
            return _buildInstitutions(institutionWidgets);
          }
          return new Center(
            child: new CircularProgressIndicator(),
          );
        }
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Increment',
        child: new Icon(Icons.add), onPressed: () {
          Navigator.of(context).push(
            new MaterialPageRoute(
                builder: (context) {
                  return SelectInstitution(isOnWebview, flutterWebviewPlugin, () {
                    setState(() {
                      consentsInstitutions = getConnectedInstitutions();
                    });
                  }).build();
                }
            ),
          );
        },
      ),
    );
  }

  Widget _buildInstitutions(List<Widget> institutionWidgets) {
    return new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: institutionWidgets
    );
  }

  Widget _buildRow(ConsentInstitution consent, BuildContext context) {
    Widget listItem =
     new ListTile(
      title: new Text(
        consent.institution.fullName,
        style: biggerFont,
      ),
      leading:  _getInstitutionLogo(consent.institution),
      onTap: () {
        _institutionDetails(context, consent);
      },
      trailing: new IconButton(
        icon: new Icon(
          Icons.block,
          color: Colors.redAccent,
        ),
        onPressed: () {
          var alert = new AlertDialog(
            title: new Text("Delete Consent"),
            content: new Text("Are you sure you want to delete your consent?"),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              new FlatButton(
                child: new Text('Delete'),
                onPressed: () {
                  deleteInstitutionConsents(consent.consent).then((_) {
                    setState(() {
                      consentsInstitutions = getConnectedInstitutions();
                    });
                    Navigator.of(context).pop();
                  });
                },
              )
            ],
          );
          showDialog(context: context, child: alert);
        },
      ),
    );
    return listItem;
  }

  Widget _getInstitutionLogo(Institution institution) {
    Image image;
    institution.media.forEach((media) {
      if(media.type == "icon") {
        image = new Image.network(media.source.replaceAll("size=0", "size=80"), width: 80.0);
      }
    });
    if(image == null) {
      return new Icon(
        Icons.account_balance,
        color: Colors.black38,
      );
    } else {
      return image;
    }
  }

  void _institutionDetails(BuildContext context, ConsentInstitution consent) {
    Navigator.of(context).push(
      new MaterialPageRoute(
          builder: (context) {
            return new InstitutionDetails(consentInstitution: consent,);
          }
      ),
    );
  }
}
