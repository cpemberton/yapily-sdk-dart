import 'package:flutter/material.dart';
import 'package:yapily/api.dart';
import 'package:yapily_demo_flutter/institution_service.dart';
import 'package:yapily_demo_flutter/main.dart';

class InstitutionDetails extends Scaffold {

  InstitutionDetails({Key key, ConsentInstitution consentInstitution}) : super(
    key: key,
    appBar: new AppBar(
      title: new Text("Transactions"),
    ),
    body: new FutureBuilder<List<Transaction>>(
      future: getConsentTransactions(consentInstitution),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return new Text("${snapshot.error}");
        }
        else if (snapshot.hasData) {
          List<Widget> transactionWidgets = [];
          transactionWidgets.add(
            new ListTile(
              title: new Text(
                "DATE             AMOUNT",
                style: biggerFont,
              )
            )
          );
          transactionWidgets.add(new Divider(height: 0.0));
          snapshot.data.forEach((transaction) {
            transactionWidgets.add(_buildRow(transaction));
            transactionWidgets.add(new Divider(height: 0.0));
          });
          return _buildTransactions(transactionWidgets);
        }

        // By default, show a loading spinner
        return new Center(
          child: new CircularProgressIndicator(),
        );
      },
    ),
  );
}

Widget _buildRow(Transaction transaction) {
  Widget listItem =
  new ListTile(
    title: new Text(
      //transaction.amount.toString(),
      "${transaction.date.day}/${transaction.date.month}/${transaction.date.year} "
          "     ${transaction.amount.toString()} ${transaction.currency}",
      style: biggerFont,
    ),
  );
  return listItem;
}

Widget _buildTransactions(List<Widget> transactionWidgets) {
  return new ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      children: transactionWidgets
  );
}
