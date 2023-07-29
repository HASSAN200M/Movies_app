


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/home_screen.dart';
import 'custom_drawer_header.dart';

import 'custom_list_drawer.dart';



class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: AnimatedContainer(
        curve: Curves.easeInOutCubic,
        duration: const Duration(milliseconds: 500),

        margin: const EdgeInsets.only(bottom: 10, top: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),

         color: Color(0xFF1d1d28),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomDrawerHeader(),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(

                icon: Icons.home_outlined,
                title: 'Home',
                infoCount: 0, isCollapsed: true,

              ),
              CustomListTile(

                icon: Icons.calendar_today,
                title: 'Calender',
                infoCount: 0, isCollapsed: true,
              ),
              CustomListTile(

                icon: Icons.pin_drop,
                title: 'Destinations',
                infoCount: 0,
                doHaveMoreOptions: Icons.arrow_forward_ios, isCollapsed: true,
              ),
              CustomListTile(
           //     isCollapsed: _isCollapsed,
                icon: Icons.message_rounded,
                title: 'Messages',
                infoCount: 8,   isCollapsed: true,
              ),
              CustomListTile(
             //   isCollapsed: _isCollapsed,
                icon: Icons.cloud,
                title: 'Weather',
                infoCount: 0,   isCollapsed: true,
                doHaveMoreOptions: Icons.arrow_forward_ios,
              ),
              CustomListTile(
              //  isCollapsed: _isCollapsed,
                icon: Icons.airplane_ticket,
                title: 'Flights',
                infoCount: 0, isCollapsed: true,
                doHaveMoreOptions: Icons.arrow_forward_ios,
              ),
              const Divider(color: Colors.grey),
              const Spacer(),
              CustomListTile(

                isCollapsed: true,
                icon: Icons.notifications,
                title: 'Notifications',
                infoCount: 2
              ),
              CustomListTile(

                icon: Icons.settings,
                title: 'Settings',
                infoCount: 0, isCollapsed: true,
              ),
              const SizedBox(height: 10),


            ],
          ),
        ),
      ),
    );
  }
}
