import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/core/constant/assests_constant.dart';
import 'package:hllive/core/constant/styles.dart';
import 'package:hllive/views/widgets/button_widget.dart';

import '../../../core/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  double width;
   HomeScreen({
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: context.height,
      // width: context.width*0.9,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: context.height * 0.8,
              width: width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: primaryColor),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.height * 0.27,
                        width: width,
                        child: Stack(
                          children: [
                            Container(
                              height: context.height * 0.2,
                              width: width,
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        AppAssets.imgRonaldo,
                                      ),
                                      fit: BoxFit.fill)),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: SizedBox(
                                height: context.height * 0.16,
                                width: width * 0.75,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Image.asset(
                                      AppAssets.imgPromo,
                                      fit: BoxFit.fill,
                                    )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Image.asset(
                                      AppAssets.imgGanhar,
                                      fit: BoxFit.fill,
                                    )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Image.asset(
                                      AppAssets.imgPromo,
                                      fit: BoxFit.fill,
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "24 Top Bonus",
                        style: TextStyles.h1?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: context.height * 0.18,
                          width: width * 0.75,
                          child: ListView.builder(
                              itemCount: 7,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: context.height * 0.18,
                                        width: width * 0.087,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 30,
                                                width: width * 0.087,
                                                decoration: const BoxDecoration(
                                                    color: buttonColor,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(14), topRight: Radius.circular(14),)
                                                   ),
                                                child: const Center(child: Text("BIGWIN"))),
                                            Expanded(
                                                child: Image.asset(
                                                  AppAssets.imgPromo,
                                                  fit: BoxFit.fill,
                                                )),

                                            Container(
                                                height: 30,
                                                width: width * 0.087,
                                                decoration: const BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(14), bottomRight: Radius.circular(14),)
                                                ),
                                                child: const Center(child: Text("R897.9"))),
                                          ],
                                        ),

                                      ),
                                      index == 6
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18.0),
                                              child: Container(
                                                height: context.height * 0.18,
                                                width: width * 0.06,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14)),
                                                child: const Center(
                                                    child: Text('See All')),
                                              ),
                                            )
                                          : const SizedBox(),
                                    ],
                                  ),
                                );
                              })),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: context.height * 0.18,
                          width: width * 0.75,
                          child: ListView.builder(
                              itemCount: 7,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: context.height * 0.18,
                                        width: width * 0.087,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                      ),
                                      index == 6
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18.0),
                                              child: Container(
                                                height: context.height * 0.18,
                                                width: width * 0.06,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14)),
                                                child: const Center(
                                                    child: Text('See All')),
                                              ),
                                            )
                                          : const SizedBox(),
                                    ],
                                  ),
                                );
                              })),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
