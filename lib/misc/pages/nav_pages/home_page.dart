import 'package:Trip_app/misc/pages/nav_pages/insp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubit/app_cubit.dart';
import '../../../cubit/app_cubit_states.dart';
import '../../../model/insp_index.dart';
import '../../colors.dart';
import '../../widgets/app_large_text.dart';
import '../../widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "balloning.png": "Ballooning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkeling"
  };
  List images1 = [
    "insp-1.png",
    "insp-2.jpg",
    "insp-3.jpg",
    "insp-4.jpg",
    "insp-5.png",
    "insp-6.jpg",
    "insp-7.jpg",
  ];

  static List<String> images2 = [
    "img/insp_images/insp-1.png",
    "img/insp_images/insp-2.jpg",
    "img/insp_images/insp-3.jpg",
    "img/insp_images/insp-4.jpg",
    "img/insp_images/insp-5.png",
    "img/insp_images/insp-6.jpg",
    "img/insp_images/insp-7.jpg",
  ];
  final List<IndexModel> imagedata =
      List.generate(images2.length, (index) => IndexModel(images2[index]));
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is LoadedState) {
            var info = state.places;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Menu Text
                Container(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.black54,
                      ),
                      Expanded(child: Container()),
                      Container(
                        margin: const EdgeInsets.only(right: 50),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                "img/home-icon.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //Discover Text
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: ApplargeText(text: "Discover"),
                ),
                SizedBox(
                  height: 25,
                ),
                //Tab Bar
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      labelPadding: const EdgeInsets.only(left: 20, right: 20),
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: CircleTabIndicator(
                          color: AppColors.mainColor, radius: 4),
                      tabs: [
                        Tab(text: "Places"),
                        Tab(text: "Inspiration"),
                        Tab(text: "Emotions"),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 300,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                        itemCount: info.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppCubits>(context)
                                  .detailPage(info[index]);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15, top: 10),
                              width: 200,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(info[index].img),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          );
                        },
                      ),

                      ListView.builder(
                        itemCount: images1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => InspirationPage(
                                      imagemodel: imagedata[index])));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15, top: 10),
                              width: 200,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                      "img/insp_images/" + images1[index],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          );
                        },
                      ),
                      // Text("There"),
                      Text("Bye"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ApplargeText(
                        text: "Explore more",
                        size: 22,
                      ),
                      AppText(
                        text: "See All",
                        color: AppColors.textColor1,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: Column(
                              children: [
                                Container(
                                  // margin: const EdgeInsets.only(
                                  //   right: 50,
                                  // ),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "img/${images.keys.elementAt(index)}"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: AppText(
                                      text: images.values.elementAt(index),
                                      color: AppColors.textColor2,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
