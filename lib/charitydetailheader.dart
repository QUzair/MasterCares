import 'package:flutter/material.dart';
import 'package:charitree/arcimage.dart';
import 'package:charitree/models.dart';
import 'package:charitree/charityposter.dart';
import 'package:charitree/goalinfo.dart';

class MovieDetailHeader extends StatelessWidget {
  MovieDetailHeader(this.charity);
  final Charity charity;

  List<Widget> _buildCategoryChips(TextTheme textTheme) {
    return charity.categories.map((category) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Text(category),
          labelStyle: textTheme.caption,
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var movieInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            Text(
              charity.title,
              style: textTheme.title,
            ),
            Image.asset('images/mastercareslogo.png',
            height: 30.0, width: 30.0,)
          ],
        ),
        SizedBox(height: 8.0),
        RatingInformation(charity),
        SizedBox(height: 12.0),
        Row(children: _buildCategoryChips(textTheme)),
      ],
    );

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImage(charity.bannerUrl),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Poster(
                charity.posterUrl,
                height: 180.0,
              ),
              SizedBox(width: 16.0),
              Expanded(child: movieInformation),
            ],
          ),
        ),
      ],
    );
  }
}