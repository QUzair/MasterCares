import 'package:flutter/material.dart';
import 'package:charitree/models.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RatingInformation extends StatelessWidget {
  RatingInformation(this.charity);
  final Charity charity;

  Widget _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = i <= charity.starRating ? theme.accentColor : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var ratingCaptionStyle = textTheme.caption.copyWith(color: Colors.black45);

    var numericRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '£6,567',
          style: textTheme.title.copyWith(
            fontWeight: FontWeight.w400,
            color: theme.accentColor,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          '/£8,000',
          style: ratingCaptionStyle,
        ),
      ],
    );

    var starRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LinearPercentIndicator(
                    width: 150.0,
                    lineHeight: 10.0,
                    percent: 0.75,
                    progressColor: Colors.orange,
                  ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 4.0),
          child: Text(
            'Amount Raised',
            style: ratingCaptionStyle,
          ),
        ),
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        numericRating,
        SizedBox(width: 16.0),
        starRating,
      ],
    );
  }
}