import 'package:flutter/material.dart';


class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30BAD6),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter, 
              stops: [
                0.5,
                0.5
              ],
              colors: [
                Color.fromARGB(255, 113, 237, 206),
                Color(0xff30BAD6)
              ]
            )
          ),
          child: PageView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: const [
              Page1(),
              Page2()
            ],
          ),
        )
     ),
   );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        MainContent(),
      ],
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
        const Icon(Icons.keyboard_arrow_down, size: 100,color: Colors.white,)
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

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {
        },
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff0098fa),
          shape: const StadiumBorder(),
          padding: const EdgeInsets.all(15)
        ),
          child:  const Text(
            'Bienvenido', 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 30
            ),
          ),
      ),
      ),
    );
  }
}