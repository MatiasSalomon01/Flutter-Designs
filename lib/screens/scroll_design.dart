import 'package:flutter/material.dart';


class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: const [
            Background(),
            MainContent(),
          ],
        )
     ),
   );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('11°', style: textStyle,),
        Text('Miercoles', style: textStyle,),
        Expanded(child: Container()),
        Icon(Icons.keyboard_arrow_down, size: 100,color: Colors.white,)
      ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: double.infinity,
      color: const Color(0xff30BAD6),
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}