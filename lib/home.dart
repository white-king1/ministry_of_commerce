// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, avoid_unnecessary_containers, library_private_types_in_public_api, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/business_places.dart';
import 'package:ministry_of_commerce/paragraph_ltd.dart';
import 'package:ministry_of_commerce/view_model/products_vm.dart';
import 'package:ministry_of_commerce/widget/big_text.dart';
import 'package:ministry_of_commerce/widget/colors.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';
import 'models/products_response.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dashboard',
                    style:
                        TextStyle(color: AppColors.greyColor, fontSize: 14.0),
                  ),
                  BigText(
                    text: 'Overview',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ],
              ),
              trailing: SizedBox(
                width: 200,
                height: 80,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => BusinessPlaces()),
                      );
                    },
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "+ Business Place",
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.blueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 10, left: 10),
              margin: EdgeInsets.only(bottom: 0),
              width: 450,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.cardColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      BigText(
                        text: 'Revenue',
                        fontWeight: FontWeight.bold,
                        size: 16,
                        color: AppColors.blueColor,
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      SizedBox(
                        width: 100,
                        height: 30,
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: ElevatedButton(
                            onPressed: () {},
                            // ignore: sort_child_properties_last
                            child: Row(
                              children: [
                                BigText(
                                  text: "Today",
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  size: 13,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                )
                              ],
                            ),

                            style: ElevatedButton.styleFrom(
                              primary: AppColors.blueColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "₦4,000,000.oo",
                        color: AppColors.moneyColor,
                        fontWeight: FontWeight.normal,
                        size: 28,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'REVENUE COLLECTED',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    margin: EdgeInsets.only(bottom: 0),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.notebColor,
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ],
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ListTile(
                          leading: Container(
                              padding:
                                  EdgeInsets.only(top: 5, right: 5, left: 5),
                              margin: EdgeInsets.only(bottom: 0),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: AppColors.noteaColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.notebColor,
                                      blurRadius: 10,
                                      offset: Offset(0, 4))
                                ],
                              ),
                              child: Icon(
                                Icons.description,
                                color: AppColors.notebColor,
                              )),
                          title: BigText(
                            text: '1',
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                            size: 18,
                          ),
                          subtitle: Text(
                            'Applications',
                            style: TextStyle(
                                fontSize: 14, color: AppColors.greyColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    margin: EdgeInsets.only(bottom: 0),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.listviewColor,
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ],
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ListTile(
                          leading: Container(
                              padding:
                                  EdgeInsets.only(top: 5, right: 5, left: 5),
                              margin: EdgeInsets.only(bottom: 0),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: AppColors.listviewColor,
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.listviewColor,
                                      blurRadius: 10,
                                      offset: Offset(0, 4))
                                ],
                              ),
                              child: Icon(
                                Icons.home,
                                color: AppColors.blackColor,
                              )),
                          title: BigText(
                            text: '50,675',
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                            size: 18,
                          ),
                          subtitle: Text(
                            'My Businesses',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.greyColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    margin: EdgeInsets.only(bottom: 0),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.greenColor,
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ],
                      // ignore: prefer_const_literals_to_create_immutables
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ListTile(
                          leading: Container(
                              padding:
                                  EdgeInsets.only(top: 5, right: 5, left: 5),
                              margin: EdgeInsets.only(bottom: 0),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: AppColors.greenColor,
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.greenColor,
                                      blurRadius: 10,
                                      offset: Offset(0, 4))
                                ],
                              ),
                              child: Icon(
                                Icons.group,
                                color: AppColors.blackColor,
                              )),
                          title: BigText(
                            text: '12',
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                            size: 18,
                          ),
                          subtitle: Text(
                            'Sub-Agents',
                            style: TextStyle(
                                fontSize: 14, color: AppColors.greyColor),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BigText(
              text: 'MY BUSINESSES',
              fontWeight: FontWeight.bold,
              size: 16,
              color: AppColors.blackColor,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 10, left: 10),
              height: 50,
              width: 450,
              decoration: BoxDecoration(color: Colors.grey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'NAME',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            FutureBuilder(
              future: Provider.of<ProductsVm>(context, listen: false)
                  .getProducts(context),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.hasData) {
                  ProductsResponse res = snapshot.data;
                  List<Products>? products = res.products;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: products?.length,
                    itemBuilder: (BuildContext context, int index) {
                      Products product = products![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ParagraphLtd(product: product)));
                        },
                        child: ListTile(
                          title: BigText(
                            text: '${product.title}',
                            fontWeight: FontWeight.bold,
                            size: 16,
                            color: Colors.black,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.greyColor,
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Text('Something went wrong');
                }
              },
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
