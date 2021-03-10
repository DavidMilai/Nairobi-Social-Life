import 'package:flutter/material.dart';

Future<bool> showConfirm(
  context, {
  title = "",
  body,
  cancelButtonText = "CANCEL",
  okButtonText = "OK",
}) async {
  return (await showDialog<bool>(
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
              actions: <Widget>[
                FlatButton(
                  child: Text(cancelButtonText ?? "CANCEL"),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                FlatButton(
                    child: Text(okButtonText ?? "OK"),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    }),
              ],
            );
          })) ??
      false;
}
