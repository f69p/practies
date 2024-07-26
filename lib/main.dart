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

body: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [

   Padding(padding: EdgeInsets.all(10),
     child:  TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name',),),),
    Padding(padding: EdgeInsets.all(10),
      child:TextField(decoration: InputDecoration(border:OutlineInputBorder( ),labelText: 'Last Name') ,),),
    Padding(padding: EdgeInsets.all(10),
      child:TextField(decoration: InputDecoration(border:OutlineInputBorder( ),labelText: 'Email Address') ,),),
    Padding(padding: EdgeInsets.all(20),
      child: ElevatedButton(onPressed: (){},
        child: Text('submit'),),),

    Padding(padding: EdgeInsets.all(20),child: ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1()));
    },
        child: Text("Go Act 1")),),
    ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2()));
    },
        child:Text("Go Act 2")),
  ],
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
     endDrawer: Drawer(
       
       child: ListView(
         children: [
           
           DrawerHeader(
             padding: EdgeInsets.all(0),
             child: UserAccountsDrawerHeader(
             
             decoration: BoxDecoration(color: Colors.black),
             accountName: Text("Foysal Islam"),
             accountEmail: Text("foysal@gmail.com"),
             currentAccountPicture: Image.asset("Image/messi.jpeg"),
           ),
           ),
           ListTile(
             leading:Icon(Icons.phone),
             title: Text("Phone"),
             onTap: (){
               mySnackBar("phone", context);
             },
           ),
           ListTile(
               leading: Icon(Icons.home),
               title: Text("Home"),
               onTap: (){
                 mySnackBar("Home On", context);
               }
           ),
         ],
       ),
     ),
   );
  }
}
//New Page
class Activity1 extends StatelessWidget{
  appBarButtonAction(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyan,

        title: Text("Activity 1"),
        actions: [
          IconButton(onPressed: (){
          appBarButtonAction("Home On", context);
          }, icon:Icon(Icons.home)),
        ],

      ),
      drawer: Drawer(
        
        child:ListView(
          children: [
            
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Foysal Islam"),
              accountEmail: Text("foysal@gmail.com"),
                  currentAccountPicture: Image.asset("Image/messi.jpeg"),

            ),

            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                appBarButtonAction("home Drawer", context);
              },
            ),
          ],
        ),

      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2()));
        },child: Text("go act 2"),),
      ),
    );
  }
}


class Activity2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Activity 2"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1()));
        },child: Text("go act 1"),),
      ),
    );
  }
}