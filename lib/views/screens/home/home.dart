import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hllive/core/constant/assests_constant.dart';
import 'package:hllive/core/constant/styles.dart';
import 'package:hllive/views/widgets/button_widget.dart';

import '../../../core/constant/colors.dart';
import '../SignUpScreen/SignUpScreen.dart';

class HomeScreen extends StatefulWidget {
  double width;
  HomeScreen({
    required this.width,
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height + 300,
      // width: context.width*0.9,
      constraints: const BoxConstraints(
        maxWidth: 1000,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: const BoxConstraints(
                maxWidth: 980,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: primaryColor,
              ),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 296,
                        width: widget.width,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    AppAssets.imgRonaldo,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 242,
                                    ),
                                    width: 242,
                                    child: Text(
                                      'SIGN UP AND GET',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 242,
                                    ),
                                    width: 242,
                                    child: Text(
                                      '100% BONUS',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 33,
                                        color: const Color(0xffF4973F),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 242,
                                    ),
                                    width: 242,
                                    child: Text(
                                      'Ronaldinho',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 436,
                                    ),
                                    width: 436,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'start',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                            color: const Color(0xffDD234B),
                                          ),
                                        ),
                                        Text(
                                          '  the game with you',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                            color: const Color(0xffF4973F),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 436,
                                    ),
                                    width: 436,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            const SizedBox(
                                              height: 90,
                                              width: 210,
                                            ),
                                            Positioned(
                                              top: 4,
                                              child: ElevatedButtonWidget(
                                                onTap: () {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Center(
                                                        child: Container(
                                                          margin: EdgeInsets
                                                              .all(context
                                                                      .height *
                                                                  0.12),
                                                          child: const Card(
                                                            child:
                                                                SignUpScreen(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                width: 200,
                                                height: 45,
                                                buttonText: 'Create an account',
                                                borderColor: Color(0xffC0102C),
                                                buttonColor: Color(0xffC0102C),
                                              ),
                                            ),
                                            Positioned(
                                              right: 22,
                                              top: 0,
                                              child: Container(
                                                height: 23,
                                                width: 23,
                                                margin:
                                                    EdgeInsets.only(bottom: 12),
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.amber,
                                                ),
                                                child: Center(
                                                  child: const Icon(
                                                    Icons
                                                        .card_giftcard_outlined,
                                                    color: Colors.white,
                                                    size: 17,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 26.0),
                                          child: ElevatedButtonWidget(
                                            onTap: () {},
                                            width: 171,
                                            height: 45,
                                            buttonText: 'To know more',
                                            borderColor:
                                                const Color(0xff161F2C),
                                            buttonColor:
                                                const Color(0xff161F2C),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          child: Row(
                            children: [
                              Image.asset(
                                AppAssets.imgPromo,
                                fit: BoxFit.fill,
                                height: 137,
                                width: 230,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AppAssets.imgGanhar,
                                fit: BoxFit.fill,
                                height: 137,
                                width: 230,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AppAssets.imgPromo,
                                fit: BoxFit.fill,
                                height: 137,
                                width: 230,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AppAssets.imgGanhar,
                                fit: BoxFit.fill,
                                height: 137,
                                width: 230,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AppAssets.imgPromo,
                                fit: BoxFit.fill,
                                height: 137,
                                width: 230,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AppAssets.imgGanhar,
                                fit: BoxFit.fill,
                                height: 137,
                                width: 230,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/trophy.png',
                            width: 23,
                            height: 24,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "24H TOP Bonus",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: context.height * 0.18,
                          width: context.width,
                          child: ListView.builder(
                              itemCount: 7,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          const SizedBox(
                                            height: 168.7,
                                            width: 122.49,
                                          ),
                                          Positioned(
                                            top: 5,
                                            child: Container(
                                              height: 145.7,
                                              width: 122.49,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  5,
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 122.49,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Color(0xffF4973F),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          5,
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          5,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0),
                                                        child: Text(
                                                          "BIGWIN",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 12,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Image.asset(
                                                      AppAssets.imgPromo,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 122.49,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Color(0xffDD234B),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                          5,
                                                        ),
                                                        bottomRight:
                                                            Radius.circular(
                                                          5,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "\$ 897.9",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            left: 6,
                                            child: Container(
                                              height: 25,
                                              width: 25,
                                              decoration: const BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/images/person.png',
                                                  height: 25,
                                                  width: 25,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              })),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: context.width,
                        height: 53,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          color: Color(0xff1F2A39),
                        ),
                        child: TabBar(
                          controller: _tabController,
                          dividerColor: Colors.transparent,
                          indicatorColor: Colors.transparent,
                          indicator: BoxDecoration(
                            color: const Color(0xff2283F6),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorPadding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                          tabs: [
                            TabItem(
                              imageName: 'hall.png',
                              title: 'Hall',
                            ),
                            TabItem(
                              imageName: 'internal.png',
                              title: 'Internal',
                            ),
                            TabItem(
                              imageName: 'providers.png',
                              title: 'Providers',
                            ),
                            TabItem(
                              imageName: 'slots.png',
                              title: 'Slots',
                            ),
                            TabItem(
                              imageName: 'casino.png',
                              title: 'Live Casino',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: context.width,
                        height: 2500,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            _view(),
                            _view(),
                            _view(),
                            _view(),
                            _view(),
                          ],
                        ),
                      ),

                      ///--- footer.
                      Container(
                        width: context.width,
                        height: 780,
                        color: secondaryColor,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: context.width,
                              height: 505,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _title('Games'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ..._col1.map(
                                        (e) => _itemTitle(e),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _title('Events'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ..._col2.map(
                                        (e) => _itemTitle(e),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _title('Help'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ..._col3.map(
                                        (e) => _itemTitle(e),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/logos/image 75.png',
                                            height: 45,
                                            width: 45,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset(
                                            'assets/logos/image 6.png',
                                            height: 47,
                                            width: 129,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 300,
                                        child: Text(
                                          _footerText,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.justify,
                                          maxLines: 20,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff99ABD0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 1,
                              width: context.width,
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 4,
                              ),
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                runSpacing: 5,
                                children: [
                                  ...List.generate(
                                    7,
                                        (index) => Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: ProviderLogo1(imageName: 'image ${index}'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                          ],
                        ),
                      ),
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

  final ScrollController _internalCon = ScrollController();
  final ScrollController _providersCon = ScrollController();
  final ScrollController _slotsCon = ScrollController();
  final ScrollController _casinoCon = ScrollController();
  _view() => Column(
        children: [
          const SizedBox(
            height: 20,
          ),

          ///---internal
          _arrowBar('internal.png', 'Internal', _internalCon),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _internalCon,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          ///----- main
          Row(
            children: [
              TabItem(imageName: 'rocket.png', title: 'Main'),
              const SizedBox(
                width: 12,
              ),
              Container(
                height: 38,
                width: 74,
                decoration: const BoxDecoration(
                  color: Color(0xff1F2A39),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ALL  ',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff474EF2),
                      ),
                    ),
                    Text(
                      '12',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff7779B8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          ///----warm
          Row(
            children: [
              TabItem(imageName: 'fire.png', title: 'Warm'),
              const SizedBox(
                width: 12,
              ),
              Container(
                height: 38,
                width: 74,
                decoration: const BoxDecoration(
                  color: Color(0xff1F2A39),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ALL  ',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff474EF2),
                      ),
                    ),
                    Text(
                      '12',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff7779B8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          ///---providers.....
          _arrowBar('providers.png', 'Providers', _providersCon),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _providersCon,
            child: Row(
              children: [
                ...List.generate(
                  20,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ProviderLogo(imageName: 'image ${index}'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          ///--- pgsoft

          Row(
            children: [
              TabItem(imageName: 'providers.png', title: 'PG soft'),
              const SizedBox(
                width: 12,
              ),
              Container(
                height: 38,
                width: 74,
                decoration: const BoxDecoration(
                  color: Color(0xff1F2A39),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ALL  ',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff474EF2),
                      ),
                    ),
                    Text(
                      '12',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff7779B8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 51,
                width: 130,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'All Games',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          ///--- slots
          _arrowBar('slots.png', 'Slots', _slotsCon),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _internalCon,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          ///--- casinos
          _arrowBar('casino.png', 'Casinos', _casinoCon),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _internalCon,
            child: Row(
              children: const [
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
                SizedBox(
                  width: 8,
                ),
                GamePlayWidget(
                  imageName: 'imgGameDice',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );

  final List _col1 = [
    "Dice",
    "Plinko",
    "crash",
    "Limbo",
    'Fierybot',
    'keno',
    'ring',
    'mines'
  ];
  final List _col2 = ["roulette", "CoinFlip", "Stairs"];
  final List _col3 = [
    "KYC Policy",
    "Privacy Policy",
    "Responsible Gaming",
    "Terms and conditions",
    "Equitable",
    "FAQ",
    "Betfiery Leagl Notice"
  ];

  final _footerText =
      "https://betfiery.com/ is owned and operated by JOGADA DO FUTURO, a company registered and established under the laws of Curaçao. JOGADA DO FUTURO registration number is 162576 and its registered address is Zuikertuintjeweg Z/N (Zuikertuin Tower), Curaçao and is licensed and authorized by the Government of Curacao and operates under the Master License of Gaming Services Provider, NV #365/JAZ License Number: GLH-OCCHKTW0703172023. .Gambling can be addictive. Please play responsibly. betfiery. com only accepts customers over 18 years ofage.";

  _arrowBar(String imageName, String title, ScrollController con) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TabItem(imageName: imageName, title: title),
              const SizedBox(
                width: 12,
              ),
              Container(
                height: 38,
                width: 74,
                decoration: const BoxDecoration(
                  color: Color(0xff1F2A39),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ALL  ',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff474EF2),
                      ),
                    ),
                    Text(
                      '12',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff7779B8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  con.animateTo(con.position.minScrollExtent,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xff1F2A39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  con.animateTo(
                    con.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xff1F2A39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  _title(String s) {
    return Text(
      s,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }

  _itemTitle(String s) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        s,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: const Color(0xff99ABD0),
        ),
      ),
    );
  }
}

class ProviderLogo extends StatelessWidget {
  const ProviderLogo({Key? key, required this.imageName}) : super(key: key);
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 130,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Image.asset('assets/logos/$imageName.png'),
    );
  }
}
class ProviderLogo1 extends StatelessWidget {
  const ProviderLogo1({Key? key, required this.imageName}) : super(key: key);
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      width: 100,

      child: Image.asset('assets/logos/$imageName.png'),
    );
  }
}
class GamePlayWidget extends StatefulWidget {
  final String imageName;

  const GamePlayWidget({Key? key, required this.imageName}) : super(key: key);

  @override
  State<GamePlayWidget> createState() => _GamePlayWidgetState();
}

class _GamePlayWidgetState extends State<GamePlayWidget> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isShow = !isShow;
        });
      },
      onExit: (_) {
        setState(() {
          isShow = false;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
          ),
          height: 190,
          width: 150,
          child: isShow
              ? BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black12.withOpacity(
                          0.2), // Replace with the desired color and opacity
                      BlendMode.difference,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PLAY IT',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/play.png',
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                )
              : Image.asset(
                  'assets/images/${widget.imageName}.png',
                  height: 190,
                  width: 150,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  TabItem({Key? key, required this.imageName, required this.title})
      : super(key: key);
  final String imageName;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          'assets/images/$imageName',
          height: 19.34,
          width: 19.34,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 9,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
