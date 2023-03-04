import 'package:flutter/material.dart';
import 'package:car_app/utils/utils.dart';
import 'package:car_app/widgets/specific_card.dart';

class carDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  carDetail(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, actions: [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.bookmark,
              size: 30, color: Theme.of(context).colorScheme.secondary),
        ),
        IconButton(onPressed: null, icon: Icon(Icons.share, size: 30)),
      ]),
      body: Column(
        children: [
          Text(title, style: MainHeading),
          Text(brand, style: BasicHeading),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                price: price * 12,
                name: '12 Month',
                name2: 'USD',
              ),
              SpecificsCard(
                price: price * 6,
                name: '6 Month',
                name2: 'USD',
              ),
              SpecificsCard(
                price: price * 1,
                name: '1 Month',
                name2: 'USD',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                price: price * 12,
                name: 'Color',
                name2: color,
              ),
              SpecificsCard(
                price: price * 6,
                name: 'Gearbox',
                name2: gearbox,
              ),
              SpecificsCard(
                price: price * 1,
                name: 'Fuel',
                name2: fuel,
              )
            ],
          ),
        ],
      ),
    );
  }
}
