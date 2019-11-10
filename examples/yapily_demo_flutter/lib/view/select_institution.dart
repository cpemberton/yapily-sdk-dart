import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:yapily/api.dart';
import 'package:yapily_demo_flutter/institution_service.dart';
import 'package:yapily_demo_flutter/main.dart';

class SelectInstitution {

  Function setState;
  BuildContext context;
  FlutterWebviewPlugin flutterWebviewPlugin;
  bool isOnWebView;

  SelectInstitution(bool isOnWebView, FlutterWebviewPlugin flutterWebviewPlugin, Function setState) {
    this.isOnWebView = isOnWebView;
    this.setState = setState;
    this.flutterWebviewPlugin = flutterWebviewPlugin;

    flutterWebviewPlugin.onUrlChanged.listen((String url) {
      if(url.contains(callbackUrl)) {
        String consentLookupString = 'consent=';
        if (url.contains(consentLookupString)) {
          int indexOfConsent = url.indexOf(consentLookupString);
          String consent = url.substring(
              indexOfConsent + consentLookupString.length, url.length);
          flutterWebviewPlugin.close();
          flutterWebviewPlugin.dispose();
          this.isOnWebView = false;
          setState();
          Navigator.pop(context);
        }
      }
    });
  }

  Scaffold build() {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add Institution Consent"),
      ),
      body: new FutureBuilder<List<Institution>>(
        future: new InstitutionsApi().getInstitutionsUsingGET(),
        builder: (context, snapshot) {
          this.context = context;
          if(isOnWebView == true) {
            this.flutterWebviewPlugin.close();
            this.flutterWebviewPlugin.dispose();
            isOnWebView = false;
          }
          if (snapshot.hasError) {
            return new Text("${snapshot.error}");
          }
          else if (snapshot.hasData) {
            List<Widget> institutionWidgets = [];
            snapshot.data.forEach((institution) {
              Widget listItem;
              listItem = _buildRow(institution);
              institutionWidgets.add(listItem);
              institutionWidgets.add(new Divider(height: 0.0));
            });
            return _buildInstitutions(institutionWidgets);
          }

          // By default, show a loading spinner
          return new Center(
            child: new CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget _buildRow(Institution institution) {
    Widget listItem =
    new ListTile(
      title: new Text(
        institution.fullName,
        style: biggerFont,
      ),
      leading:  _getInstitutionLogo(institution),
      onTap: () {
        _launchURL(institution);
      },
    );
    return listItem;
  }

  Widget _buildInstitutions(List<Widget> institutionWidgets) {
    return new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: institutionWidgets
    );
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

  _launchURL(Institution institution) {
    String url = getAuthUrl(institution);

    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (credentialsContext) {
              return new Scaffold(appBar:
              new AppBar(
                leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed:(){
                  flutterWebviewPlugin.close();
                  flutterWebviewPlugin.dispose();
                  setState();
                  isOnWebView = false;
                  Navigator.pop(credentialsContext);
                }),
                centerTitle: true,
                title: new Text('Enter Credentials'),

              ),
              );
            }
        )
    );
    isOnWebView = true;
    flutterWebviewPlugin.launch(url,
        rect: new Rect.fromLTWH(
            0.0,
            80.0,
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height));
  }
}


