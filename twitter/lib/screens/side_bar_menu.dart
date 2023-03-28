import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _SideBarMenuState createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  final List<String> _options = [
    'Profile',
    'Lists',
    'Bookmark',
    'Moments',
    'Settings and Privacy',
    'Help Center',
    'Logout'
  ];
  String _selectedOption = '';

  void _selectOption(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            'https://www.clipartkey.com/mpngs/m/118-1188761_avatar-cartoon-profile-picture-png.png',
            height: 30,
            width: 30),
        const Text('Username',
            style: TextStyle(color: Colors.grey, fontSize: 15)),
        const Text(
          '0 followers',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        for (var option in _options)
          Card(
              child: ListTile(
            title: Text(option),
            onTap: () => _selectOption(option),
            selected: option == _selectedOption,
          )),
      ],
    );
  }
}
