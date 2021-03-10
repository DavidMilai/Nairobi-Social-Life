import 'package:flutter/material.dart';

Future<bool> showAlert(context,
    {okButtonText = "OK", title = "", body = ""}) async {
  return await showDialog<bool>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: body != null
                  ? SingleChildScrollView(
                      child: Text(body),
                    )
                  : null,
              contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
              actions: <Widget>[
                FlatButton(
                  child: Text("${okButtonText ?? "OK"}"),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            );
          }) ??
      true;
}
