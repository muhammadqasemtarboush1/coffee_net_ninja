import 'package:flutter/material.dart';

// #1 culumn and crossAxisAlignment & mainAxisAlignment
class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox title'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            color: Colors.green,
            child: const Text('one'),
          ),
          Container(
            width: 200,
            color: Colors.green,
            child: const Text('2'),
          ),
          Container(
            width: 300,
            color: Colors.green,
            child: const Text('3'),
          )
        ],
      ),
    );
  }
}



// #2 container 

// container  == wraps things 
// Container(
//       color: Colors.orange,
//       // width: 200,
//       // height: 100,
//       padding: const EdgeInsets.all(20),
//       margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
//       child: const Text(
//         'hello world',
//         style: TextStyle(
//           fontSize: 18,
//           letterSpacing: 4,
//           decoration: TextDecoration.underline,
//           fontStyle: FontStyle.italic,
//         ),
//       ),
//     );



// #3 Expanded 

  // Expanded(
  //             child: Image.asset(
  //               'assets/img/sugar_cube.png',
  //               width: 25,
  //             ),
  //           ),