import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final double dynamicWidth = MediaQuery.of(context).size.width;
    final double dynamicHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(dynamicWidth * 0.05),
          child: Column(
            children: [
              _buildHeaderColumn(context),
              _buildExpandedListView(dynamicWidth, dynamicHeight)
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildExpandedListView(double dynamicWidth, double dynamicHeight) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return _buildCourseCard(dynamicWidth, dynamicHeight);
          }),
    );
  }

  Card _buildCourseCard(double dynamicWidth, double dynamicHeight) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildCourseImage(),
          _buildCourseTextContent(dynamicWidth, dynamicHeight)
        ],
      ),
    );
  }

  Padding _buildCourseTextContent(double dynamicWidth, double dynamicHeight) {
    return Padding(
      padding: EdgeInsets.all(dynamicWidth * 0.05),
      child: Container(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text("3h 30 min"),
          SizedBox(
            height: dynamicHeight * 0.01,
          ),
          Text("UI"),
          SizedBox(
            height: dynamicHeight * 0.01,
          ),
          Text("Advanced mobile interface design"),
        ]),
      ),
    );
  }

  Container _buildCourseImage() {
    return Container(
      height: 100,
      child: Placeholder(),
    );
  }

  Column _buildHeaderColumn(BuildContext context) {
    return Column(
      children: [
        _buildHeaders(context),
        _buildSearchField(),
        _buildChooseCategories()
      ],
    );
  }

  Row _buildChooseCategories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Category:"),
        Chip(
          label: Text("#CSS"),
          backgroundColor: Colors.blue[200],
        ),
        Chip(
          label: Text("#UX"),
          backgroundColor: Colors.blue[200],
        ),
        Chip(
          label: Text("#Swift"),
          backgroundColor: Colors.blue[200],
        ),
        Chip(
          label: Text("#UI"),
          backgroundColor: Colors.blue[200],
        ),
      ],
    );
  }

  Row _buildHeaders(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildTextContent(context), _buildNotficationButton()]);
  }

  TextField _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        hintText: "Search course",
        suffixIcon: Icon(Icons.search_sharp, size: 24),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  Container _buildNotficationButton() {
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
              icon: Icon(Icons.notifications_none))),
    );
  }

  Column _buildTextContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello,",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
        Text("Juana Antonieta",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: 35, fontWeight: FontWeight.w700)),
      ],
    );
  }
}
