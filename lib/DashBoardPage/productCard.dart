import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);
  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      height: 160,
      //color: Colors.blueAccent,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 136,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.blueGrey),
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    const BoxShadow(color: kSecondaryColor, blurRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(22)),
            ),
          ),
          //image
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 160,
                width: 200,
                child: Image.asset(
                  "images/gas.png",
                  fit: BoxFit.cover,
                ),
              )),
          //title and price etc
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Gas Avalability",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kPrimaryColor),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: const BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        )),
                    child: const Text(
                      "Available",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {}
