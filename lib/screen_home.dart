import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/widgets/home_card.dart';
import 'package:freelance/widgets/image_text.dart';
import 'package:freelance/widgets/location.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120.h,
              width: double.infinity,
              color: const Color(0xff46B749),
              child: Padding(
                padding: EdgeInsets.all(8.h),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "CFRESH",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Location()
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search items",
                            fillColor: Colors.white,
                            filled: true)),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.h),
              child: SizedBox(
                height: 150.h,
                width: 500.w,
                child: ImageSlideshow(
                  width: double.infinity,
                  height: 160.h,
                  initialPage: 0,
                  indicatorColor: Colors.white,
                  indicatorBackgroundColor:
                      const Color.fromARGB(255, 164, 164, 164),

                  /// Called whenever the page in the center of the viewport changes.
                  onPageChanged: (value) {
                    log('Page changed: $value');
                  },

                  /// Auto scroll interval.
                  /// Do not auto scroll with null or 0.
                  autoPlayInterval: 3000,

                  /// Loops back to first slide.
                  isLoop: false,

                  children: [
                    Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(image[2]),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)))),
                    Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(image[1]),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)))),
                    Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(image[0]),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageText(
                          image:
                              'https://media.istockphoto.com/photos/fresh-salmon-steak-with-a-variety-of-seafood-and-herbs-picture-id1156027693?k=20&m=1156027693&s=612x612&w=0&h=u865Gm8DnU-SYO6gTQ74zVmw0krfWG78pNZ0QbSkDkQ=',
                          text: "Fresh Fish"),
                      ImageText(
                          image:
                              'https://cdn.pixabay.com/photo/2013/07/19/00/18/seafood-165220__340.jpg',
                          text: "Marinated"),
                      ImageText(
                          image:
                              'https://cdn.pixabay.com/photo/2013/07/19/00/18/seafood-165220__340.jpg',
                          text: "Meet"),
                      ImageText(
                          image:
                              'https://cdn.pixabay.com/photo/2013/07/19/00/18/seafood-165220__340.jpg',
                          text: "Food"),
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Flash sale",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 20.h,
                            width: 84.w,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                              "03h 17m 46s",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text("View All"),
                          SizedBox(
                            width: 10.w,
                          ),
                          CircleAvatar(
                              backgroundColor: const Color(0xff46B749),
                              radius: 14.h,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15.h,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [HomeCard(), HomeCard(), HomeCard()],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [HomeCard(), HomeCard(), HomeCard()],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Today's Deal",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.26,
              width: MediaQuery.of(context).size.width * 1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return HomeCard();
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.grabon.in/gograbon/images/web-images/uploads/1618575517942/food-coupons.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Text(
              "Why CFRESH ?",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      )),
    );
  }

  final image = [
    'https://media.istockphoto.com/photos/seafood-on-ice-picture-id520490716?k=20&m=520490716&s=612x612&w=0&h=w9GcZoTDCrrFSxNb-DJop_O4TMxMAcKOE2GG2-EItmQ=',
    'https://media.istockphoto.com/photos/seafood-on-ice-picture-id478663945?k=20&m=478663945&s=612x612&w=0&h=WGkdNhFec1fYpSGYB2jFvYRqLryQL4VwVdpq4VhtYqc=',
    'https://media.istockphoto.com/photos/seafood-on-ice-picture-id478663945?k=20&m=478663945&s=612x612&w=0&h=WGkdNhFec1fYpSGYB2jFvYRqLryQL4VwVdpq4VhtYqc='
  ];
}
