import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_bar.dart';
import 'play_button_and_icon_box.dart';

class HomePoster extends StatelessWidget {
  const HomePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: size.width,
          height: 600,
          child: Image.asset(
            "assets/images/poster.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 100,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 25,
                offset: Offset(0, 20)
              ),
            ],
            /*gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black54, Colors.black],
            ),*/
          ),
        ),
        //const HomeAppBar(),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 23,
                  height: 23,
                  child: SvgPicture.asset(
                    "assets/images/icons/Top10Badge.svg",
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "#2 in Egypt Today",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),
            homePlayButtonAndIconsBox(),
            const SizedBox(height: 16),
          ],
        ),
      ],
    );
  }
}
