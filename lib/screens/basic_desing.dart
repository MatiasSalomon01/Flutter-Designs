import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          SizedBox(
            height: 40,
          ),
          //Bottom Section
          ButtonSection(),
          LastText()
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
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
          SizedBox(
            height: 10,
          ),
              Text(
                'Kanderteg, Switzerland',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41',style: TextStyle(color: Colors.black, fontSize: 18))
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
              Icons.call,
              color: Colors.lightBlueAccent,
              size: 30,
            ),
            Text(
              'CALL',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18),
            )
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.arrow_outward_rounded,
              color: Colors.lightBlueAccent,
              size: 30,
            ),
            Text(
              'ROUTE',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18),
            )
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.share,
              color: Colors.lightBlueAccent,
              size: 30,
            ),
            Text(
              'SHARE',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}


class LastText extends StatelessWidget {
  const LastText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Text(
        'Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto Esto es una texto  Esto es una texto Esto es una texto Esto es una texto Esto es una texto',textAlign: TextAlign.justify),
    );
  }
}
