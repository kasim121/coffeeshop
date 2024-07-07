class CoffeeModel {
  final String image;
  final String name;
  final String type;
  final double rate;
  final int review;
  final String description;
  final double price;
  CoffeeModel({
    required this.image,
    required this.name,
    required this.type,
    required this.rate,
    required this.review,
    required this.description,
    required this.price,
  });
}

final listGridCoffee = [
  CoffeeModel(
    image: 'assets/coffee4.png',
    name: 'Caffee Mocha',
    type: 'Ice/Hot',
    rate: 4.8,
    review: 230,
    description:
    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 5.53,
  ),

  CoffeeModel(
    image: 'assets/coffee3.png',
    name: 'Flat White',
    type: 'Ice/Hot',
    rate: 4.8,
    review: 230,
    description:
    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 7.53,
  ),
  CoffeeModel(
    image: 'assets/coffee1.png',

    name: 'Caffe Penna',

    type: 'Espresso',
    rate: 4.8,
    review: 230,
    description:
    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 3.53,
  ),
  CoffeeModel(
    image: 'assets/coffee2.png',
    name: 'Flat White',

    type: 'Deep Foam',
    rate: 4.8,
    review: 230,
    description:
    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 4.53,
  ),



];
