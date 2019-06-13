import 'package:flutter/material.dart';
import 'package:charitree/charities_api.dart';

class DonationsList extends StatefulWidget {
  @override
  _DonationsListState createState() => _DonationsListState();
}

class _DonationsListState extends State<DonationsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 55,
            ),
            Image.asset(
              'images/mastercareslogo.png',
              height: 45,
              width: 45,
            ),
            Text(
              'Donation History',
              style: TextStyle(color: Colors.black38, fontSize: 45.0),
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: sampleDoantion.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            date(index),
                            payment(index),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget date(index) => Expanded(
        child: Column(
          // align the text to the left instead of centered
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              sampleDoantion[index].charity,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              sampleDoantion[index].date,
              style: TextStyle(fontSize: 7),
            ),
          ],
        ),
      );

  Widget payment(index) => Expanded(
        child: Column(
          // align the text to the left instead of centered
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '£ '+sampleDoantion[index].amount,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '+ £'+(double.parse(sampleDoantion[index].amount)*0.28).toStringAsFixed(2),
              style: TextStyle(fontSize: 7),
            ),
          ],
        ),
      );
}
