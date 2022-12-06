import 'package:flutter/material.dart';
import 'package:trabalho2/data/equipa.dart';

class ClubesPage extends StatefulWidget {
  const ClubesPage({super.key});

  @override
  State<ClubesPage> createState() => _ClubesPageState();
}

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Clubes'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text("Clubes presentes na Liga Portugal."),
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _clubePopupPage(BuildContext context) {
  return AlertDialog(
    title: const Text('Clubes'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        //encontrar maneira de fazer um pop up com o tostring da class equipa
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}

class _ClubesPageState extends State<ClubesPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Clubes de Portugal',
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('images/lpfp_logo.png'),
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => _clubePopupPage(context),
                  );
                },
                child: const Text('data'))
          ],
        ),
      ),
    );
  }
}
// child: Column(
//           children: [
//             Image.asset('images/lpfp_logo.png'),
//             Container(
//               margin: const EdgeInsets.all(10.0),
//               padding: const EdgeInsets.all(10.0),
//               width: double.infinity,
//               color: Colors.blueGrey,
//               child: const Text('This is a text widget',
//                   style: TextStyle(
//                     color: Colors.white,
//                   )),
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: isSwitch ? Colors.blue : Colors.green,
//               ),
//               onPressed: () {
//                 debugPrint('Elevated Button');
//               },
//               child: const Text('Elevated Button'),
//             ),
//             OutlinedButton(
//               onPressed: () {
//                 debugPrint('Outlined Button');
//               },
//               child: const Text('Outlined Button'),
//             ),
//             TextButton(
//               onPressed: () {
//                 debugPrint('Text Button');
//               },
//               child: const Text('Text Button'),
//             ),
//             GestureDetector(
//               behavior: HitTestBehavior.opaque,
//               onTap: () {
//                 debugPrint('This is a Row');
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   Icon(
//                     Icons.local_fire_department,
//                     color: Colors.blue,
//                   ),
//                   Text('Row Widget'),
//                   Icon(
//                     Icons.local_fire_department,
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//             ),
//             Switch(
//                 value: isSwitch,
//                 onChanged: (bool newBool) {
//                   setState(() {
//                     isSwitch = newBool;
//                   });
//                 }),
//             Checkbox(
//               value: isCheckBox,
//               onChanged: (bool? newBool) {
//                 setState(() {
//                   isCheckBox = newBool;
//                 });
//               },
//             ),
//             Image.network('http://wallpaperaccess.com/full/1909531.jpg'),
//           ],
//         ),