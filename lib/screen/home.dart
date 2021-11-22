import 'package:blog/screen/post_screen.dart';
import 'package:blog/screen/profile.dart';
import 'package:flutter/material.dart';
import 'post_form.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ant Blog'),

      ),
      body: currentIndex == 0 ? const PostScreen() : const Profile(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PostForm(
            title: 'Add new post',
          )));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ''
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ''
            )
          ],
          currentIndex: currentIndex,
          onTap: (val) {
            setState(() {
              currentIndex = val;
            });
          },
        ),
      ),
    );
  }
}