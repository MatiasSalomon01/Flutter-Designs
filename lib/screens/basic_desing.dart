import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          SizedBox(
            height: 50,
          ),
          //Bottom Section
          ButtonSection()
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kanderteg, Switzerland',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            Icon(
              Icons.add,
              color: Colors.lightBlueAccent,
            ),
            Text(
              'Text',
              style: TextStyle(color: Colors.lightBlueAccent),
            )
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.add,
              color: Colors.lightBlueAccent,
            ),
            Text(
              'Text',
              style: TextStyle(color: Colors.lightBlueAccent),
            )
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.add,
              color: Colors.lightBlueAccent,
            ),
            Text(
              'Text',
              style: TextStyle(color: Colors.lightBlueAccent),
            )
          ],
        )
      ],
    );
  }
}
