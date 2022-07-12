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
  List text1 = [
    "No matter what kind of trip you take, you often go through a myriad of emotions before, during and after your adventure.",
    "That little seed of wanderlust grew and grew until you decided to take the plunge and finally buy the airplane ticket. There’s no turning back now; your dates are set, and you eagerly await the arrival of the big day.",
    "Anticipation can be both a good thing and a bad thing. While you often find yourself daydreaming about all the great things that will happen to you while you’re away, you sometimes begin to feel the onset of nerves, too. Lying in bed at night, unable to sleep, you start to list all the things you need to do before your trip: find a good pair of hiking boots, get all your immunisations, exchange money, pack, and so much more.",
    "You left all of those worries behind, because you just arrived at your destination. Maybe it’s a bustling city, maybe it’s a tranquil lake, maybe you’re about to get lost in the mountains for a few months.",
    "You chose this place for a reason. Something about it drew you here: the culture, the food, the architecture, the nature, the people. Maybe you’re seeing it for the first time, maybe for the tenth time; either way, it brings you immense happiness to be here.",
    "Maybe you’ve been here for a few days, maybe you’ve already stayed for a few months. You quickly found your groove in this place, though, discovered your favourite café, the best art museum, or the most serene spot to sit and think.",
    "Even the calmest traveller sometimes reaches her boiling point. Everything has been going smoothly, but one bad day can really play with your mind. You got mugged, or you got lost, or nobody would help you at the train station. It’s easy to get frustrated when you’re tired, hungry, sick, or lonely.",
    "That bad day is behind you, and you fall in love again. Maybe it was a visit to a new restaurant that did it, or a smile from a stranger. Not every trip will go perfectly, of course, and you accept that whatever happened was probably not the fault of the country itself, but the acceptance that life, no matter where on the planet you’re living it, has its ups and downs.",
    "It seems like only yesterday that you were worried about starting your trip, and now you’re absolutely dreading going home. Whether you only had a few days or have been gone for years, it feels that your time abroad went far too quickly.",
    "You’re home now, and have unpacked. The souvenirs you bought on your trip are already sitting on your shelves, and you look at them every chance you get. Maybe you post an album on Facebook of the highlights of your time away. And even though you had an amazing time, you can’t help but feel the post-holiday blues.",
    "Your initial sadness of being at home again has waned, and you are starting to think about your trip with a clearer mind. Obviously, you’d love to go back, but now you can fully appreciate how fortunate you are to have experienced that time abroad.",
  ];
  List text2 = [
    "Whether it’s a week-long beach holiday or a round-the-world trip, here are a few feelings you may experience. I’ve certainly experienced all of them; no matter how many times I travel, I inevitably go through these ten emotions.",
    "You book your accommodation, you start to do research on travel blogs and in guidebooks, and the list of things you want to do and see while you’re gone fills up pages in your notebook. Needless to say, you’re excited. Even with all that planning, you still don’t know what’s going to happen when you arrive, and that’s often the best feeling in the world. I live for this excitement.",
    "And what about everything you’re leaving at home: work, family, friends, your flat? Will everything be okay? No matter how excited I am, I spend the night before every big trip fretting about all the little things I wouldn’t be able to remedy by then anyway. I don’t think I slept a wink in the week before I left on a year’s trip around Central and South America.",
    "Wherever you are, you are probably blown away by how incredible it is, whether it’s incredibly beautiful or incredibly different or incredibly overwhelming. You are taken aback by everything you see in front of you, and you can’t believe you’re finally here. I firmly believe that if I ever lose this sense of amazement, that if I ever become so jaded that a new place doesn’t take my breath away, that I should consider hanging up my backpack for good.",
    "You’re full of joy for having the opportunity to see this part of the world. You worked hard to be here, and you’re living each day to the fullest. For me, joy comes in speaking to new people and making new friends. If that’s done on a beautiful beach with a plate of fresh fruit in front of me, all the better.",
    "The guy at the local shop nods and waves when you pass by. Maybe you could live here. Maybe this sense of belonging could last forever. I always know I’ve reached this point when the vendors at the local market know what I’m going to order before I’ve even ordered it.",
    "Sometimes, without meaning to, you take out your frustration on the place you’re in, whether it deserves it or not. I was once ready to blame Bangkok for my terrible mood, but it wasn’t the city at all; I had a lung infection, my room’s fan didn’t work, and my credit card had been frozen. I’ve since been back many times (with healthy lungs, air conditioning, and a working credit card) and I love it.",
    "I’ve had great days all of the world. I’ve also had terrible days all over the world. I’m human.",
    "As nice as it will be to see your friends and family and sleep in your own bed, you just don’t want to leave. Without fail, at the end of every trip, I’ve always thought to myself, “But I just got here.”",
    "All of that build-up led to one of the best times of your life, and now it’s over. “Don’t cry because it’s over, smile because it happened,” they say, but right now all you’d rather do is be back in that museum with the groundbreaking art, or laughing with your travel friends over a few beers, or feeling your adrenaline soar as you climb the final steps of a hike. When I returned home after nearly two solid years of backpacking, it took me months to get over my post-travelling blues. Sometimes I wonder if I’ll ever get over them.",
    "You share memories with your friends and laugh at all the amazing stories you accumulated. You look at your photos and get the biggest grin on your face. You reflect on how much the trip taught you and even how much it shaped who you are today. And then, you start to get another little seed of wanderlust, and you do it all again. Have I told you about my trip to Albania this summer yet?",
  ];
  List emotiontext = [
    "The 10 inevitable emotions you experience on every trip",
    "1. Excitement",
    "2. Anticipation",
    "3. Amazement",
    "4. Joy",
    "5. Belonging",
    "6.  Frustration",
    "7. Acceptance",
    "8. Dread",
    "9. Sadness",
    "10. Appreciation",
  ];
  List emotion = [
    "trip-1.jpg",
    "emotion-1.jpg",
    "emotion-2.jpg",
    "emotion-3.jpg",
    "emotion-4.jpg",
    "emotion-5.jpg",
    "emotion-6.jpg",
    "emotion-7.jpg",
    "emotion-8.jpg",
    "emotion-9.jpg",
    "emotion-10.jpg",
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
                      ListView.builder(
                        itemCount: emotiontext.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            width: 400,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                ApplargeText(
                                  text: emotiontext[index],
                                  size: 20,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AppText(
                                  text: text1[index],
                                  color: AppColors.textColor2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 320,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "img/emotion/" + emotion[index],
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AppText(
                                  text: text2[index],
                                  color: AppColors.textColor2,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
