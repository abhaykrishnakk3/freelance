import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                  height: 210.h,
                  width: 114.w,
                  child: Card(
                    elevation: 6,
                    child: Column(children: [
                      Image.network(
                        'https://cdn.pixabay.com/photo/2013/07/19/00/18/seafood-165220__340.jpg',
                        fit: BoxFit.cover,
                        height: 100.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'Tuna',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const Text(
                              '1.0 g',
                              style: TextStyle(fontSize: 8),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              height: 25.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                  color: Color(0xff46B749),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(child: Text("? 430")),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            const Text(
                              '? 430',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                );
  }
}