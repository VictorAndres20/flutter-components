import 'package:componentsTemplateFlutter/src/containers/Alerts/reounded_alert.dart';
import 'package:componentsTemplateFlutter/src/containers/Alerts/simple_alert.dart';
import 'package:componentsTemplateFlutter/src/containers/AppBars/TransparentAppBar.dart';
import 'package:flutter/material.dart';

class ALertsModule extends StatelessWidget {
  final String title = "Alerts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TransparentAppBar(
          titleAppBar: title,
        ).build(context),
        body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => this._showDialog(context),
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text("Display Alert"),
                  elevation: 10.0,
                  textColor: Colors.white,
                ),
                RaisedButton(
                  onPressed: () => this._showRoundedDialog(context),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text("Display rounded Alert"),
                  elevation: 10.0,
                  textColor: Colors.white,
                )
              ],
        )));
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return buildSimpleAlert(context, () {
            print("OK Pressed");
          });
        });
  }

  void _showRoundedDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return buildRoundedAlert(context, () {
            print("OK Pressed");
          });
        });
  }
}
