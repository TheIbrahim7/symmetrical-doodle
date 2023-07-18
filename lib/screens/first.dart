import "package:dodofoodie/utils/recomendations.dart";
import "package:dodofoodie/widgets/banner.dart";
import "package:dodofoodie/widgets/bar.dart";
import "package:dodofoodie/widgets/foodcard.dart";
import "package:dodofoodie/widgets/head.dart";
import "package:dodofoodie/widgets/searchbar.dart";
import "package:flutter/material.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

import "../utils/shops.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      backgroundColor: const Color.fromARGB(255, 197, 214, 228),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: const [
              SizedBox(
                width: double.infinity,
                height: 435,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Introduction(),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                right: 20,
                child: SizedBox(
                  width: double.infinity,
                  child: SearchBox(),
                ),
              ),
            ],
          ),
          //The rest of the body
          const SizedBox(
            height: 30,
          ),
          //The head of the next section (Recommended)
          const SectionHeader(
            "Specially for you!",
            cta: "See all",
          ),
          const SizedBox(
            height: 12,
          ),
          //The cards Row
          FoodCard(recommendedMeals, _controller),
          const SizedBox(
            height: 15,
          ),
          //I want to put indicators
          SmoothPageIndicator(
            controller: _controller,
            count: recommendedMeals.length,
            effect: const WormEffect(activeDotColor: Colors.green),
          ),
          //Another Section head
          const SizedBox(
            height: 30,
          ),
          const SectionHeader("Dodo places near you"),
          //List tiles
          SizedBox(
            height: 200,
            child: Column(
              children: [
                ...availableShops
                    .map(
                      (shop) => Card(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),

                        // clipBehavior: Clip.hardEdge,
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 2,
                          ),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            leading:
                                Image.asset("assets/images/blueplatebg.jpg"),
                            title: Text(
                              shop["name"] as String,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            tileColor: Colors.white,
                            // textColor: Colors.white,
                            subtitle: Text(shop["location"] as String),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                                weight: 600,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList()
              ],
            ),
          ),

          const SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }
}
