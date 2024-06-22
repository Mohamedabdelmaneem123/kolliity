

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Room> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null && result.files.single.path != null) {
        // Ensure the path is non-null before using it
        String? path = result.files.single.path;
        // File file = File(path!);
        // print('Selected file path: ${file.path}');
        // You can now perform further operations with the selected file
      } else {
        // User canceled the picker
        print('File selection canceled.');
      }
    } catch (e) {
      // Handle any errors that might occur
      print('An error occurred while picking the file: $e');
    }
  }

  void _showRoomDetails() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          child: Card(
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title: Text('ssdsd'),
                    subtitle: Text('18/06/2024'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Random Content'),
                    subtitle: Text('18/06/2024'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('ssdsdsd'),
                    subtitle: Text('19/06/2024'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Room Name')),
      ),
      body: Center(
        child: Text('Selected Index: $_selectedIndex'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: 'Add Content',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 2) {
            _pickFile();
          } else if(index==0){
            _showRoomDetails();
          }
          else if (index == 1) {
            _showRoomDetails();
          } else {
            _onItemTapped(index);
          }
        },
      ),
    );
  }
}