import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Learning"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX Dialog'),
              subtitle: Text("Learn how to use getX in your project"),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: EdgeInsets.only(top: 20),
                    contentPadding: EdgeInsets.all(20),
                    middleText: 'Are you sure you want to delete this chat ?',
                    confirm: TextButton(onPressed: () {
                      //Navigator.pop(context);
                      Get.back();
                    }, child: Text("Ok")),
                    cancel: TextButton(onPressed: () {}, child: Text("Cancel")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX BottomSheet'),
              subtitle: Text("Learn how to use getX in your project"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text("Light Theme"),
                            onTap: (){
                                  Get.changeTheme(ThemeData.light());
                            },
                          ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Hi Shruti ', 'Good Night');
        },
      ),
    );
  }
}
