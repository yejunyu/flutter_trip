import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: [
            SizedBox(
              height: 160,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.network(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: images.length,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
                autoplay: true,
                loop: true,
              ),
            ),
            SizedBox(
              height: 800,
              child: ListTile(
                title: Text("haha",style: Theme.of(context).textTheme.displayLarge,),
              ),
            )
          ],
        ),
    );
  }
}
