import 'package:flutter/material.dart';

class ProductDetailView extends StatefulWidget {
  @override
  _ProductDetailViewState createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    final double dynamicWidth = MediaQuery.of(context).size.width;
    final double dynamicHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.all(dynamicWidth * 0.05),
        child: Column(
          children: [
            Container( 
              height: dynamicHeight * 0.4,
              child: Placeholder(),
            ),
            
            Align(
                alignment: Alignment.topRight,
                child: Chip(
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: dynamicWidth * 0.05,
                    ),
                    backgroundColor: Colors.blueAccent,
                    label: Text("\$50 "))),
                      Text("1 h 30 min"), 
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "About the course",
                  style: TextStyle(fontSize: 24),
                )),
            Text(
                "You can launch a new career in web develop-ment today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust."),
                Text("Duration"),
                Text("1 h 30 min")
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
      Text("HTML", style: TextStyle(color: Colors.black));

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
