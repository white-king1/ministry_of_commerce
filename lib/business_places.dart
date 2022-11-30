// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/paragraph_ltd.dart';
import 'package:ministry_of_commerce/widget/big_text.dart';
import 'package:ministry_of_commerce/widget/colors.dart';

class BusinessPlaces extends StatefulWidget {
  const BusinessPlaces({Key? key}) : super(key: key);

  @override
  _BusinessPlacesState createState() => _BusinessPlacesState();
}

class _BusinessPlacesState extends State<BusinessPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR STARTS HERE
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
      // APPBAR ENDS HERE

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
                    'BUSINESSES',
                    style:
                        TextStyle(color: AppColors.greyColor, fontSize: 10.0),
                  ),
                  BigText(
                    text: 'ALL businesses',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ],
              ),
              trailing: SizedBox(
                width: 150,
                height: 50,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Row(
                      children: [
                        BigText(
                          text: "All businesses",
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          size: 12,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
              Material(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
              ),
            
            SizedBox(
              height: 20,
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>ParagraphLtd()
                    )
                  );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                height: 50,
                width: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Paragraph Ltd',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 0.1,
              endIndent: 0.1,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
