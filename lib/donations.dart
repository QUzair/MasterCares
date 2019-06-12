import 'package:flutter/material.dart';


class DonationsList extends StatefulWidget {
  @override
  _DonationsListState createState() => _DonationsListState();
}

class _DonationsListState extends State<DonationsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text('Concern Worldwide £10.00')
          ],
        ),
      ),
    )
  }
}