import 'package:flutter/material.dart';

void main()=>runApp(const Salman());
class Salman extends StatelessWidget {
  const Salman({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Salman"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: ((context) => 
                     Activity1("This is from home to activity 1"))));
                    }, 
                    child: const Text("Go Activity 1")),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: ((context) => 
                     Activity2("This is from home to activity 2"))));
                    }, 
                    child: const Text("Go Activity 2")),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Activity1 extends StatelessWidget {
  String msg;
   Activity1(this.msg,{super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg)
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => Activity2("This is from home to activity 1"),
                ));
          },
          child: const Text(
            "Go to Activity 2"),
          ),
        ),
    );
  }
}
// ignore: must_be_immutable
class Activity2 extends StatelessWidget {
  String msg;
   Activity2(this.msg,{super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => Activity1("This is from home to activity 2"),
              ));
          },
          child: const Text(
            "Go to Activity 1"),
          ),
        ),
    );
  }
}
