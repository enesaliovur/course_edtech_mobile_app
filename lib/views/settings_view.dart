import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool switchControl = false;
  @override
  Widget build(BuildContext context) {
    final double dynamicWidth = MediaQuery.of(context).size.width;
    final double dynamicHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(dynamicWidth),
      ),
    );
  }

  Padding _buildBody(double dynamicWidth) {
    return Padding(
      padding: EdgeInsets.all(dynamicWidth * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 100, child: Placeholder()),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.7, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(
                      16.0) //                 <--- border radius here
                  ),
            ),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              trailing: Switch(
                  value: switchControl,
                  activeTrackColor: Colors.green,
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      switchControl = value;
                    });
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(dynamicWidth * 0.02),
            child: Text("Account information"),
          ),
          InkWell(
            onTap: () {
              print("clicked");
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.7, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(
                        16.0) //                 <--- border radius here
                    ),
              ),
              child: ListTile(
                  leading: Container(
                      height: double.infinity,
                      child: IconButton(
                          color: Colors.black,
                          onPressed: () {},
                          icon: Icon(Icons.person))),
                  title: Text("Name"),
                  subtitle: Text("Juana Antonieta"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.keyboard_arrow_right_outlined, size: 40))),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.7, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(
                      16.0) //                 <--- border radius here
                  ),
            ),
            child: ListTile(
                leading: Container(
                    height: double.infinity,
                    child: IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon: Icon(Icons.email))),
                title: Text("Email"),
                subtitle: Text("juanita123@gmail.com"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right_outlined, size: 40))),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.7, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(
                      16.0) //                 <--- border radius here
                  ),
            ),
            child: ListTile(
                leading: Container(
                    height: double.infinity,
                    child: IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon: Icon(Icons.lock))),
                title: Text("Password"),
                subtitle: Text("changed 2 weeks ago"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right_outlined, size: 40))),
          ),
        ],
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
      Text("Settings", style: TextStyle(color: Colors.black));

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
