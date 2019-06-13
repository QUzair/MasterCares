import 'package:charitree/models.dart';

final List<Donation> sampleDoantion = [
  Donation(amount: '5.00', charity: 'Concern Worldwide', date: '5 May 2019 14:35'),
  Donation(amount: '6.00', charity: 'Human Appeal', date: '24 March 2019 13:25'),
  Donation( amount: '1.00', charity: 'Concern Worldwide', date: '24 March 2019 12:46'),
  Donation(amount: '3.00', charity: 'Irish Cancer Society', date: '6 Feb 2019 19:21'),
  Donation(amount: '13.00', charity: 'Trinity College Dublin', date: '5 Feb 2019 18:12'),
  Donation(amount: '34.00', charity: 'Lapps Charity', date: '1 Feb 2019 10:34'),
  Donation(amount: '12.00', charity: 'Amnesty Ireland', date: '29 Jan 2019 9:12'),
  Donation(amount: '12.00', charity: 'St. Josephs Charity', date: '16 Jan 2019 9:34'),
  Donation(amount: '2.00', charity: 'John Tates Charity', date: '5 Jan 2019 12:56'),
  Donation(amount: '32.00', charity: 'Human Appeal', date: '1 Jan 2019 16:32'),
  
];

final Charity testMovie = Charity(
  bannerUrl: 'images/banner.png',
  posterUrl: 'images/poster.png',
  title: 'Concern Educate',
  rating: 4563,
  starRating: 4,
  categories: ['Education', 'Feedback'],
  storyline:
      'All children require a safe space to learn and develop. Unfortunately, both physical and psychological '
      '  aggression and gender biases are prevalent'
      '   in far too many schools. Concern is working to address school-related gender-based violence (SRGBV) in education'
      '  programmes across Liberia, Sierra Leone, Niger, Somalia and Malawi. We aim to reduce violence and improve methods for '
      '    responding to violence, as well as addressing attitudes and influences both within and outside of school, from local to'
      '  national level.',
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
