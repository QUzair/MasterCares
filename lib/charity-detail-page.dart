import 'package:charitree/donations.dart';
import 'package:flutter/material.dart';
import 'package:charitree/recommendedScroller.dart';
import 'package:charitree/models.dart';
import 'package:charitree/charitydetailheader.dart';
import 'package:charitree/photoscroller.dart';
import 'package:charitree/charitystory.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage(this.charity);
  final Charity charity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MasterCares',
          style: TextStyle(color: Colors.black26),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieDetailHeader(charity),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Storyline(charity.storyline),
            ),
            PhotoScroller(charity.photoUrls),
            SizedBox(height: 20.0),
            CharitiesScroller(charity.campaigns),
            SizedBox(height: 50.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _onDonationButtonPressed(context),
        icon: Icon(Icons.monetization_on),
        label: Text("Donate"),
        elevation: 4.0,
      ),
    );
  }

  void _onDonationButtonPressed(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Donate to Conern Worldwide'),
              ),
              CircularPercentIndicator(
                      radius: (MediaQuery.of(context).size.width)*0.45,
                      lineWidth: 4.0,
                      percent: 0.90,
                      center: new Text("£10.00",style: TextStyle(fontSize: 15, color: Colors.black26)),
                      progressColor: Colors.green,
                    ),
                    SizedBox(height: 20.0,),
              GestureDetector(
                child: Image.asset('images/masterpass.png'),
                onDoubleTap: () {
                  Navigator.push(
          context, MaterialPageRoute(builder: (context) => DonationsList()));
                },
              )
              
            ],
          );
        });
  }
}
