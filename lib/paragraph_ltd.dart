// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, avoid_unnecessary_containers, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, duplicate_ignore, sized_box_for_whitespace, non_constant_identifier_names, unnecessary_string_escapes, unnecessary_string_interpolations, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/models/products_response.dart';
import 'package:ministry_of_commerce/widget/big_text.dart';
import 'package:ministry_of_commerce/widget/colors.dart';

class ParagraphLtd extends StatefulWidget {
  Products product;
  ParagraphLtd({Key? key, required this.product}) : super(key: key);

  @override
  _ParagraphLtdState createState() => _ParagraphLtdState();
}

class _ParagraphLtdState extends State<ParagraphLtd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.greyColor),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image(image: AssetImage('assets/rvsga.png')),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 70,
                  height: 19,
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: ElevatedButton(
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Agent",
                        color: AppColors.brownColor,
                        fontWeight: FontWeight.normal,
                        size: 13,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.pinkColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Icon(
                  Icons.menu,
                  color: AppColors.greyColor,
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 50, right: 10, left: 40),
              margin: EdgeInsets.only(bottom: 0),
              width: 450,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.moneyColor,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      right: 10,
                      left: 10,
                      bottom: 10,
                    ),
                    margin: EdgeInsets.only(bottom: 0),
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: AppColors.newColor,
                    ),
                    child: Icon(
                      Icons.home_filled,
                      color: AppColors.infosecColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "${widget.product.title}",
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        size: 24,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 150,
                        height: 20,
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: ElevatedButton(
                            onPressed: () {},
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Informal Sector",
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 12,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.infosecColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "ID:${widget.product.id}: MCI-23-02-00001",
                        style: TextStyle(
                          color: AppColors.infosecColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 10, left: 10),
              margin: EdgeInsets.only(bottom: 0),
              width: 450,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color.fromARGB(183, 255, 255, 255),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "General Information",
                      fontWeight: FontWeight.bold,
                      size: 12,
                      color: Colors.blue,
                    ),

                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, //change background color of button
                      // onPrimary: Colors.yellow, //change text color of button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: AppColors.greyColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "Applications",
                      fontWeight: FontWeight.bold,
                      size: 12,
                      color: AppColors.blackColor,
                    ),

                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, //change background color of button
                      // onPrimary: Colors.yellow, //change text color of button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: AppColors.greyColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.network(('${widget.product.thumbnail}')),
            Container(
              padding: EdgeInsets.only(top: 20, right: 10, left: 10),
              margin: EdgeInsets.only(bottom: 0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color.fromARGB(183, 255, 255, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description: ${widget.product.description}',
                    style: TextStyle(fontSize: 16, color: AppColors.greyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  BigText(
                    text: 'Price: \$${widget.product.price}',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    size: 16,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'DiscountPercentage: \%${widget.product.discountPercentage}',
                    style: TextStyle(fontSize: 16, color: AppColors.greyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  BigText(
                    text: 'Rating: ${widget.product.rating}',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    size: 16,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Stock: ${widget.product.stock}',
                    style: TextStyle(fontSize: 16, color: AppColors.greyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  BigText(
                    text: 'Brand: ${widget.product.brand}',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    size: 16,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Category: ${widget.product.category}',
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.network(('${widget.product.images![0]}')),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
