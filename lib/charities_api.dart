import 'package:charitree/models.dart';


final Charity testMovie = Charity(
  bannerUrl: 'images/banner.png',
  posterUrl: 'images/poster.png',
  title: 'Concern Educate',
  rating: 4563,
  starRating: 4,
  categories: ['Education', 'Feedback'],
  storyline: 'All children require a safe space to learn and develop. Unfortunately, both physical and psychological '
'  aggression and gender biases are prevalent'
'   in far too many schools. Concern is working to address school-related gender-based violence (SRGBV) in education'
  '  programmes across Liberia, Sierra Leone, Niger, Somalia and Malawi. We aim to reduce violence and improve methods for '
'    responding to violence, as well as addressing attitudes and influences both within and outside of school, from local to'
   '  national level.' ,
  photoUrls: [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
  ],
  campaigns: [
    Campaign(
      name: 'Louis C.K.',
      avatarUrl: 'images/campaign1.png',
    ),
    Campaign(
      name: 'Eric Stonestreet',
      avatarUrl: 'images/campaign2.png',
    ),
    Campaign(
      name: 'Kevin Hart',
      avatarUrl: 'images/campaign3.png',
    ),
    Campaign(
      name: 'Jenny Slate',
      avatarUrl: 'images/campaign4.png',
    ),
     Campaign(
      name: 'Ellie Kemper',
      avatarUrl: 'images/campaign5.png',
    ),
  ],
);