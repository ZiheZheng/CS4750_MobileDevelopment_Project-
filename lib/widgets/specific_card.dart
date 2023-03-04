import 'package:car_app/utils/utils.dart';
import 'package:flutter/material.dart';

class SpecificsCard extends StatelessWidget {
  final double price;
  final String name;
  final String name2;

  SpecificsCard({required this.price, required this.name, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(name, style: BasicHeading),
          SizedBox(
            height: 5,
          ),
          price == null
              ? Text(
                  name2,
                  style: SubHeading,
                )
              : Text(
                  (price).toString(),
                  style: SubHeading,
                ),
          SizedBox(
            height: 5,
          ),
          Text(name2),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
