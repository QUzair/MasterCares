import 'package:flutter/material.dart';
import 'package:charitree/models.dart';

class CharitiesScroller extends StatelessWidget {
  CharitiesScroller(this.campaigns);
  final List<Campaign> campaigns;

  Widget _buildCharity(BuildContext ctx, int index) {
    var charity = campaigns[index];

    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(charity.avatarUrl),
            radius: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(charity.name),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Related Campaigns',
            style: textTheme.subhead.copyWith(fontSize: 18.0),
          ),
        ),
        SizedBox.fromSize(
          size: const Size.fromHeight(120.0),
          child: ListView.builder(
            itemCount: campaigns.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 12.0, left: 20.0),
            itemBuilder: _buildCharity,
          ),
        ),
      ],
    );
  }
}