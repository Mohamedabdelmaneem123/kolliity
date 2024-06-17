// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
//
// class MyApp extends StatelessWidget {
//   get xml_rpc => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Odoo DB List'),
//         ),
//         body: Center(
//           child: FutureBuilder<List<String>>(
//             future: fectchdata(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return CircularProgressIndicator();
//               } else if (snapshot.hasError) {
//                 return Text('Error: ${snapshot.error}');
//               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                 return Text('No databases found');
//               } else {
//                 return ListView(
//                   children: snapshot.data!
//                       .map((db) => ListTile(title: Text(db)))
//                       .toList(),
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<String> fectchdata() async {
//     // URL of the Odoo server
//     final url = 'https://alswailm.succestools.com';
//     // XML-RPC endpoint for the common service
//     final dbListUrl = '$url/xmlrpc/db';
//
//     // Create an XML-RPC client for the common service
//     var xml_rpc;
//     final client = xml_rpc.Client(dbListUrl, http.Client());
//
//     try {
//       // Fetch the list of databases
//       final dbList = await client.call('list');
//       print('Databases: $dbList');
//     } catch (e) {
//       print('Error fetching database list: $e');
//     } finally {
//       client.close();
//     }
//     return "mo";
//   }
// }