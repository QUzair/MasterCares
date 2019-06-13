class Charity {
  Charity({
    this.bannerUrl,
    this.posterUrl,
    this.title,
    this.rating,
    this.starRating,
    this.categories,
    this.storyline,
    this.photoUrls,
    this.campaigns,
  });

  final String bannerUrl;
  final String posterUrl;
  final String title;
  final double rating;
  final int starRating;
  final List<String> categories;
  final String storyline;
  final List<String> photoUrls;
  final List<Campaign> campaigns;
}


class Campaign {
  Campaign({
    this.name,
    this.avatarUrl,
  });

  final String name;
  final String avatarUrl;
}

class Donation {
  Donation({
    this.amount,
    this.date,
    this.charity,
  });

  final String charity;
  final String date;
  final String amount;

}