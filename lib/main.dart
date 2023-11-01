import 'package:app_bar/tabPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TabPage(),
    );
  }
}
  class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>>listPopupManuItems = [
    {"icon": Icons.settings, "title": "settings","route" : '/settings'},
    {"icon": Icons.group, "title": "New group",},
    {"icon": Icons.broadcast_on_home, "title": "New broadcast",},
    {"icon": Icons.info_outline, "title": "Linked device",},
    {"icon": Icons.call, "title": "Starred messages",},
    {"icon": Icons.payments, "title": "Payments",},
  ];
  String? mInitialValue;


  @override
  void initState() {
    super.initState();
    mInitialValue = listPopupManuItems[0]['title'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       bottom: PreferredSize(
           preferredSize: Size(double.infinity, 50), child: Container()),
        actions: [
       IconButton(onPressed:(){
        }, icon: Icon(Icons.camera_alt_outlined)),
       SizedBox(width: 11,),
       IconButton(onPressed:(){}, icon: Icon(Icons.search)),
       PopupMenuButton(
         initialValue: mInitialValue,
          elevation: 11,
          shadowColor: Colors.grey,
          color: Colors.white,
          tooltip: "settings",
          onSelected: (value){
          mInitialValue = value.toString();
          setState(() {
          });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
            itemBuilder: (_){
            return listPopupManuItems
             .map((eachData) =>  PopupMenuItem(
              value: eachData['title'],
              onTap: (){
              print(eachData['title']);
              },
             child: Row(
              children: [
             Icon(eachData['icon']),
              SizedBox(
               width: 11,
             ),
             Text(eachData['title']),
           ],
              )))
               .toList();
            })
       ],
       flexibleSpace: Container(
         color: Colors.blue,
        height: 100,
         width: 500,
       ),
     ),

      body: CustomScrollView(
        slivers: [
        SliverAppBar(
        pinned: true,
        snap: true,
        floating: true,
        backgroundColor: Colors.teal.shade700,
        foregroundColor: Colors.teal,
        title:Text('Home'),
      ),]
   ));
 }
}
