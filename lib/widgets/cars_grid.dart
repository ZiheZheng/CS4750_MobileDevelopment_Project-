import 'package:car_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:car_app/models/car.dart';
import 'package:car_app/screens/car_detail.dart';

class CarsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder:
                (ctx)=>carDetail(title: allCars.cars[i].title,
                    price: allCars.cars[i].price,
                    color: allCars.cars[i].color,
                    gearbox: allCars.cars[i].gearbox,
                    fuel: allCars.cars[i].fuel,
                    brand: allCars.cars[i].brand,
                    path: allCars.cars[i].path)));
          },
          child: Container(
            margin: EdgeInsets.only(top: i.isEven?0: 20,
            bottom: i.isEven? 20: 0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 1)]
            ),
            child: Column(
              children: [
                Hero(
                    tag: allCars.cars[i].title,
                    child: Image.asset(allCars.cars[i].path)),
                Text(allCars.cars[i].title, style: BasicHeading,),
                Text((allCars.cars[i].price).toString(), style: SubHeading,),
                Text('per month')
              ],
            ),
          ),
        ),
      ),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
