import 'package:flutter/material.dart';
import 'package:project_manager/pages/project_manager_module/widgets/supervisors/side_drawer.dart';
import 'package:project_manager/pages/project_manager_module/widgets/supervisors/supervisor_item.dart';
import 'package:project_manager/theme/theme_colors.dart';

class SupervisorsPage extends StatelessWidget {
  Widget _buildSearchTextField() {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      child: TextFormField(
        style: TextStyle(
            color: tTextColor, fontSize: 20.0, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            hintText: 'Search',
            hintStyle: TextStyle(
              color: tTextColor,
              fontWeight: FontWeight.bold,
            ),
            filled: true,
            // fillColor: tTextFieldBackgroundColor,
            prefixIcon: Icon(
              Icons.search,
              color: tTextColor,
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: tTextColor,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.0))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void _buildHideKeyPad() {
      FocusScope.of(context).requestFocus(FocusNode());
    }

    return GestureDetector(
      onTap: () => _buildHideKeyPad,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: tAppBarColor,
          title: Text(
            'Supervisors',
            style: TextStyle(color: tTextColor, fontWeight: FontWeight.w900),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: _buildSearchTextField(),
          ),
        ),
        drawer: SideDrawer(),
        body: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: <Widget>[
              SupervisorItem(hideKeyPad: _buildHideKeyPad),
              SupervisorItem(hideKeyPad: _buildHideKeyPad),
              SupervisorItem(hideKeyPad: _buildHideKeyPad),
              SupervisorItem(hideKeyPad: _buildHideKeyPad),
              SupervisorItem(hideKeyPad: _buildHideKeyPad),
              SupervisorItem(hideKeyPad: _buildHideKeyPad),
            ],
          ),
        ),
      ),
    );
  }
}
