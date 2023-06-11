/*
       const restaurants = [
    {
      'name': 'Pizza Mario',
      'cusine': 'Italian',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Chez Anne ',
      'cusine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Biryani',
      'cusine': 'Indian',
      'ratings': [5.0, 4.5, 4.0],
    }
  ];

  write a program that calculates the averagre rating score for each restaurant
  and adds it to an average rating 'avgRating': value,
  key-value pair for the restaurant


 */

void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Biryani',
      'cuisine': 'Indian',
      'ratings': [5.0, 4.5, 4.0],
    }
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var total = 0.0;
    for (var rating in ratings) {
      total += rating;
    }
    final avgRating = total / ratings.length;
    restaurant['avgRating'] = avgRating;
    print(restaurant);
  }
}
