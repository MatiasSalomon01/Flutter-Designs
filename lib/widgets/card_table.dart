import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pink,
            icon: Icons.border_all,
            text: 'General',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.red,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.border_all,
            text: 'General',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.purple,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.yellow,
            icon: Icons.border_all,
            text: 'General',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.grey,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.black,
            icon: Icons.border_all,
            text: 'General',
          )
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard(
      {super.key, required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            //margin: const EdgeInsets.all(15),
            height: 170,
            decoration:
                BoxDecoration(color: const Color.fromRGBO(62, 66, 107, 0.8)),
            //borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: color,
                    radius: 30,
                    child: Icon(
                      icon,
                      size: 40,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
