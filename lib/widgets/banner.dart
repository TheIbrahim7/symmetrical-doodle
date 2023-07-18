import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/dark-bg.jpg",
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 45,
        ),
        Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 35,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          width: 300,
          margin: const EdgeInsets.only(
            top: 60,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: "dodo ",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.amber,
                    fontFamily: "Gruppo",
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "At Your Doorstep!",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              const Text(
                "We will make sure your dodo stays warm when it reaches your home",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
