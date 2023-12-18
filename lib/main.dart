import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanager/Modele/Task.dart';
import 'package:taskmanager/component/ListTask.dart';
import 'package:taskmanager/design/color.dart';
import 'package:taskmanager/design/dim.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Column(children: [
          Container(
            width: width,
            height: height(context),
            color: white,
            child: Column(
              children: [
                Container(
                  width: width,
                  height: 100,
                  margin: only(t: 55, l: 15, r: 15),
                  decoration: BoxDecoration(color: white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My task",
                              style: GoogleFonts.nunitoSans(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin: only(l: 5),
                              child: Text(
                                "4 tasks for today",
                                style: GoogleFonts.nunitoSans(
                                    fontSize: 14,
                                    color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        padding: all(5),
                        decoration: BoxDecoration(
                            color: grey.withOpacity(0.4),
                            borderRadius: radiusAll(200)),
                        child: const Center(
                          child: CircleAvatar(
                            radius: 200,
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: 200,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          child: Swiper(
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: all(30),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                    borderRadius: radiusAll(20),
                                    gradient: LinearGradient(colors: [
                                      pink.withOpacity(0.4),
                                      purple.withOpacity(0.3)
                                    ], begin: Alignment.bottomLeft)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.data_thresholding_rounded,
                                          color: red.withOpacity(0.8),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "UI Concept",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.none,
                                              color: black),
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: width,
                                      // padding: all(9),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 45,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          radiusAll(15),
                                                      image: const DecorationImage(
                                                          image: NetworkImage(
                                                              "https://a.storyblok.com/f/178900/1504x846/94b773b03b/jujutsu-kaisen-season-2-gojo-screen.jpg"),
                                                          fit: BoxFit.cover)),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: 45,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          radiusAll(15),
                                                      image: const DecorationImage(
                                                          image: NetworkImage(
                                                              "https://i.pinimg.com/736x/0f/f9/de/0ff9dee49380b018543ce6582aeb4728.jpg"),
                                                          fit: BoxFit.cover)),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: black,
                                                ),
                                                const SizedBox(
                                                  width: 7,
                                                ),
                                                Text(
                                                  "1 December",
                                                  style: GoogleFonts.poppins(
                                                      color: black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            pagination: SwiperPagination(
                                alignment: Alignment.bottomCenter,
                                builder: DotSwiperPaginationBuilder(
                                    color: Colors.pink.withOpacity(0.3),
                                    activeColor: Colors.indigo,
                                    space: 10)),
                            // control: const SwiperControl(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const ListTask(),
              ],
            ),
          )
        ]));
  }
}
