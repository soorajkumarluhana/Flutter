import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
          padding: EdgeInsets.zero,
      children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.zero,
                accountName: Text("Sooraj Kumar Luhana"),
                accountEmail: Text("soorajkumarluhana@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fphoto&psig=AOvVaw09yg_irJFPE_d1hYssDVuM&ust=1623484875355000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCL97yvkPECFQAAAAAdAAAAABAD'),
                ),
              ),
              ),
              ListTile(
                 leading: Icon(CupertinoIcons.home,
                 color:  Colors.white,
                 ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ), 
              ),
               ListTile(
                 leading: Icon(CupertinoIcons.profile_circled,
                 color:  Colors.white,
                 ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ), 
              ),
               ListTile(
                 leading: Icon(CupertinoIcons.mail,
                 color:  Colors.white,
                 ),
                title: Text(
                  "Email",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ), 
              ),
              
      ],
    ),
        ));
  }
}
