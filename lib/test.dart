// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WeatherInfoModern extends StatelessWidget {
  const WeatherInfoModern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.arrow_back)],
      ),
      body: Center(
        child: Container(
          color: Colors.grey[900],
          height: 400,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                //! This is the scend colume num 1
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Icon(Icons.location_off, color: Colors.white),
                        SizedBox(width: 8),
                        CustomText(
                            text: 'Dokki',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)
                      ]),
                      SizedBox(height: 15),
                      CustomText(
                          text: 'Mon , 29 April 10:23 pm', color: Colors.grey)
                    ]),

                //! This is the scend colume num 2
                const SizedBox(height: 5),
                const Row(children: [
                  Row(children: [
                    Icon(Icons.wb_sunny_sharp, size: 50, color: Colors.white),
                    SizedBox(width: 20),
                    CustomText(
                        text: '22°',
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)
                  ]),
                  SizedBox(width: 120),
                  Column(children: [
                    CustomText(color: Colors.grey, text: 'Fair', fontSize: 14),
                    CustomText(
                        text: '30° / 18°', color: Colors.grey, fontSize: 14),
                    CustomText(
                        color: Colors.grey,
                        text: 'Feels like 22°',
                        fontSize: 14)
                  ])
                ]),
                //! This is the scend colume num 3
                const SizedBox(height: 15),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(text: '11 pm', color: Colors.grey),
                      CustomText(text: '12 pm', color: Colors.grey),
                      CustomText(text: '1 am', color: Colors.grey),
                      CustomText(text: '2 am', color: Colors.grey),
                      CustomText(text: '3 am', color: Colors.grey),
                    ]),

                //! This is the scend colume num 4
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeatherInfoLast(),
                    WeatherInfoLast(),
                    WeatherInfoLast(),
                    WeatherInfoLast(),
                    WeatherInfoLast(),
                  ],
                ),
                const SizedBox(height: 20),

                MaterialButton(
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                        child: const CustomText(
                            text: '     More      ',
                            fontSize: 18,
                            color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WeatherInfoLast extends StatelessWidget {
  const WeatherInfoLast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.wb_sunny_outlined,
              color: Colors.grey,
            ),
            SizedBox(height: 5),
            CustomText(
              text: '21°',
              color: Colors.grey,
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.water_drop_outlined,
                  size: 14,
                  color: Colors.grey,
                ),
                CustomText(
                  text: '1%',
                  color: Colors.grey,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
  });
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
