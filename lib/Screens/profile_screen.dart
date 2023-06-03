import 'package:flutter/material.dart';
import 'package:oqu_app/Core/theme/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text('О разработчике'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                icon: Icon(Icons.image_search_sharp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
