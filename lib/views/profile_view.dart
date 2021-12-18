import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
     final double dynamicWidth = MediaQuery.of(context).size.width;
    final double dynamicHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(width: 100,height: 100,child: Image.network("https://picsum.photos/200")),
            Container(width: dynamicWidth,decoration: BoxDecoration(border:Border.all(color: Colors.black,width: 1),borderRadius: BorderRadius.circular(16) ),child:Text("Your Courses")), 
              TextButton(onPressed: (){}, child: Text("Your Courses"))
         ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildPreviosButton(),
      ),
      centerTitle: true,
      title: _buildAppBarTextContent(),
    );
  }

  Text _buildAppBarTextContent() =>
      Text("Profile", style: TextStyle(color: Colors.black));

  Container _buildPreviosButton() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(100.0) //                 <--- border radius here
              ),
          border: Border.all(color: Colors.grey)),
      child: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_outlined))),
    );
  }
}
