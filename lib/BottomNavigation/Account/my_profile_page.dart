import 'package:map_projects/Components/custom_app_bar.dart';
import 'package:map_projects/Components/entry_field.dart';
import 'package:map_projects/Locale/locales.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyProfileBody();
  }
}

class MyProfileBody extends StatefulWidget {
  @override
  _MyProfileBodyState createState() => _MyProfileBodyState();
}

class _MyProfileBodyState extends State<MyProfileBody> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: mediaQuery.size.height - mediaQuery.padding.vertical,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Spacer(),
                    CustomAppBar(
                      title: locale.myProfile,
                    ),
                    Spacer(flex: 2),
                    Container(
                      height: mediaQuery.size.height * 0.78,
                      decoration: BoxDecoration(
                        color: theme.backgroundColor,
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(35.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Spacer(),
                          EntryField(
                            label: locale.fullName,
                            initialValue: 'Samantha Smith',
                            readOnly: true,
                          ),
                          EntryField(
                            label: locale.emailText,
                            initialValue: 'samanthasmith@gmail.com',
                            readOnly: true,
                          ),
                          EntryField(
                            label: locale.phoneText,
                            initialValue: '+1 9876543210',
                            readOnly: true,
                          ),
                          Spacer(flex: 2),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  width: mediaQuery.size.width,
                  top: mediaQuery.size.width / 3.1,
                  child: Center(
                    child: Hero(
                      tag: 'profile_pic',
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("images/profile.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
