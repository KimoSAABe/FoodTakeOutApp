import 'package:flutter/foundation.dart';

class OrderMenu {
  const OrderMenu({
    @required this.image,
    @required this.title,
    @required this.quantity,
    @required this.price,
    @required this.item,
  });

  final String image;
  final String title;
  final int quantity;
  final int price;
  final String item;


  static List<OrderMenu> getCartItems() {
    return const [
      OrderMenu(
        image: 'assets/images/food1.jpg',
        title: 'Breakfast Expresss',
        quantity: 3,
        price: 140,
        item: 'Aloo Paratha and Pickle',
      ),
      OrderMenu(
        image: 'assets/images/food2.jpg',
        title: 'Pizza Corner',
        quantity: 1,
        price: 160,
        item: 'Choco Lava Cake',
      ),
      OrderMenu(
        image: 'assets/images/food3.jpg',
        title: 'BBQ King',
        quantity: 2,
        price: 230,
        item: 'Fried BBQ Ribs',
      ),
      OrderMenu(
        image: 'assets/images/food4.jpg',
        title: 'Sea Emperor',
        quantity: 6,
        price: 30,
        item: 'Fish Cutlet and Chutney',
      ),
      OrderMenu(
        image: 'assets/images/food5.jpg',
        title: 'Chai Truck',
        quantity: 4,
        price: 10,
        item: 'Chai Biskoot',
      ),
      OrderMenu(
        image: 'assets/images/food8.jpg',
        title: 'Thalappakatti',
        quantity: 1,
        price: 130,
        item: 'Veg. Dum Biryani and Salad',
      ),
      OrderMenu(
        image: 'assets/images/food9.jpg',
        title: 'Eat & Meet',
        quantity: 6,
        price: 200,
        item: 'Palak Paneer',
      ),
      OrderMenu(
        image: 'assets/images/food6.jpg',
        title: 'Anjapar Restaurant',
        quantity: 4,
        price: 190,
        item: 'Tandoori Roti and Omellete',
      ),
    ];
  }
}
