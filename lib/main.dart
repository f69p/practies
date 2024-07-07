import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Home(),
   );
  }
}

class Home extends StatelessWidget{
  const Home({super.key});
mySnackBar(message,context){
 return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))


  );
}

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar:AppBar(
       title: Text('SumApp'),
       centerTitle: true,
       backgroundColor: Colors.cyan,
       toolbarHeight: 60,
       toolbarOpacity: 0.9,
       elevation: 0,
       actions: [
         IconButton(onPressed: (){
           mySnackBar("search is on", context);
         }, icon:Icon(Icons.search)),
         IconButton(onPressed: (){
           mySnackBar("profile is on", context);},
             icon:Icon(Icons.person_off)
         ),
       ],
     ) ,

    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text("Foysal Islam"),
              accountEmail: Text("mdfoysalislam0895@gmail.com"),
              currentAccountPicture: Image.asset('Image/messi.jpeg'),
          ),



          ),
          ListTile(
              leading:Icon(Icons.home),
              title: Text("Home"),
            onTap: (){
                mySnackBar("Home is on", context);
            },

          ),
          ListTile(
              leading:Icon(Icons.confirmation_num),
              title: Text("Contact")),
          ListTile(leading:Icon(Icons.person),
            title: Text("Profile"),
            onTap: (){
            mySnackBar("person", context);
            },
          ),
          ListTile(
              leading:Icon(Icons.email),
              title: Text("Email"),
          onTap: (){
                mySnackBar("email", context);
          },
          ),
          ListTile(
              leading:Icon(Icons.phone),
              title: Text("Phone"),
          onTap: (){
                mySnackBar("phone", context);
          },
          ),
        ],
      )




    ),

     body: Center(
       child: Image(
         image: AssetImage('Image/messi.jpeg'),
       ),
     ),

     floatingActionButton: FloatingActionButton(
       child:Icon(Icons.add) ,
       backgroundColor: Colors.cyan,
       onPressed: (){
         mySnackBar("floting Action on fire", context);
       },
     ),

     bottomNavigationBar: BottomNavigationBar(
       currentIndex: 1,
       items: [

         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.male),label: "Male"),
         BottomNavigationBarItem(icon: Icon(Icons.person_off_outlined),label: "Profile"),
       ],
       onTap: (int index){
         if(index==0){
           mySnackBar("Home ", context);
         }
         if(index==1){
           mySnackBar("Male ", context);
         }
         if(index==2){
           mySnackBar("Proflile", context);
         }
       },
     ),
   );
  }
}