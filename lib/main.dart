import 'package:flutter/material.dart';
void main (){
  runApp( const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity());

  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnakBer(massage,contex){
    ScaffoldMessenger.of(contex).showSnackBar(
         SnackBar(content:Text(massage))
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon:Icon(Icons.message),label: "contect"),
         BottomNavigationBarItem(icon:Icon(Icons.person),label: "profile"),
       ],
     ),
     appBar: AppBar(
       toolbarHeight: 90,
       elevation: 5,
       title: Text('MY App'),
       titleSpacing: 10,
       actions: [
         IconButton(onPressed:(){MySnakBer("I ma a Comment",context);}, icon: Icon(Icons.comment)),
         IconButton(onPressed: (){MySnakBer("Iam a search",context);}, icon: Icon(Icons.search)),
         IconButton(onPressed:(){MySnakBer("I am a mail",context);}, icon: Icon(Icons.mail)),
         IconButton(onPressed:(){MySnakBer("I am a settings",context);}, icon: Icon(Icons.settings)),
       ],
     ),
     drawer: Drawer(
       child: ListView(
         children: [
           DrawerHeader(
             padding: EdgeInsets.all(0),
             child: UserAccountsDrawerHeader(
               decoration: BoxDecoration(color: Colors.green),
               accountName: Text("Dibrata Nath"),
               accountEmail: Text("dibratanath77@gmail.com"),
               currentAccountPicture: Image.network("https://www.facebook.com/photo/?fbid=1097331857810547&set=a.113229366220806"),
             ),
           ),
           ListTile(
               leading: Icon(Icons.home),
               title: Text("Home"),
               onTap: (){
                 MySnakBer("I am  a Home",context);
               },
           ),
           ListTile(
             leading: Icon(Icons.person),
               title:Text("Contrct"),
             onTap: (){
               MySnakBer("I am a Contract", context);
             },
           ),
           ListTile(
               leading: Icon(Icons.phone),
               title: Text("Phone"),
             onTap: (){
                 MySnakBer("I am a phone",context);
             },
           ),
           ListTile(
               leading: Icon(Icons.email),
               title: Text("Email"),
             onTap: (){
                 MySnakBer("I am a Email",context);
             },
           ),
         ],
       ),
     ),

     floatingActionButton: FloatingActionButton(
       elevation: 10,
       child: Icon(Icons.add),
       onPressed: (){
         MySnakBer("I am Floationg action button",context);
       },
     ),
     body: Center (
       child: Text("Dibrata"),
     ),
   );
  }

}