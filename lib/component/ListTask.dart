import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanager/design/color.dart';
import 'package:taskmanager/design/dim.dart';

class ListTask extends StatefulWidget {
  const ListTask({super.key});

  @override
  State<ListTask> createState() => _ListTaskState();
}

class _ListTaskState extends State<ListTask> {
  static const list = [
    "Faire la maquette du lading page",
    "Implementer les boutons",
    "Faire les formulaires"
  ];

  get groupValue => null;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        bottomNavigationBar: Container(
          width: width,
          margin: only(b: 10, l: 5, r: 5),
          padding: all(20),
          decoration: BoxDecoration(
              color: grey.withOpacity(0.4), borderRadius: radiusAll(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(),
                child: Icon(
                  FontAwesomeIcons.home,
                  color: green.withOpacity(0.5),
                  size: 30,
                ),
              ),
              Container(
                child: Icon(FontAwesomeIcons.add),
              ),
              Container(
                child: Icon(FontAwesomeIcons.section),
              )
            ],
          ),
        ),
        body: Container(
            width: width,
            decoration:
                BoxDecoration(borderRadius: radiusAll(10), color: white),
            child: ListView.builder(
                itemBuilder: (BuildContext, int index) {
                  return Column(
                    children: [
                      Container(
                        width: width,
                        margin: all(4),
                        height: 55,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: radiusAll(10),
                            boxShadow: [
                              BoxShadow(
                                  color: grey.withOpacity(0.5),
                                  blurRadius: 20,
                                  spreadRadius: 4,
                                  offset: const Offset(0, 5))
                            ]),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1,
                              child:
                                  Checkbox(value: true, onChanged: (e) => {}),
                            ),
                            Text(
                              list[index],
                              style: GoogleFonts.allura(
                                  fontSize: 18, color: black),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10)
                    ],
                  );
                },
                itemCount: list.length)),
      ),
    );
  }
}
