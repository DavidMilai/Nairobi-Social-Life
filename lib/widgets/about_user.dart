import 'package:flutter/material.dart';

class AboutUser extends StatelessWidget {
  const AboutUser({this.department, this.name, this.role, this.socials});
  final String department, name, role;
  final List<Widget> socials;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          department,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 40,
              child: Image.asset(
                'images/user.png',
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                SizedBox(width: 5),
                Text(
                  role,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 30,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: socials),
        )
      ],
    );
  }
}
