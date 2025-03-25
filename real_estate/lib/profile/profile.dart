import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/dashboard/dashboard.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 245, 248, 1),
      body: Column(
        children: [
          // Top Profile Section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(14, 39, 63, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed:
                          () => Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashBoard(),
                            ),
                            (Route<dynamic> route) => false,
                          ),
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "Edit",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Profile Picture
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    GestureDetector(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey.shade300,
                        backgroundImage:
                            _image != null ? FileImage(_image!) : null,
                        child:
                            _image == null
                                ? const Icon(
                                  Icons.person,
                                  size: 50,
                                  color: Colors.white,
                                )
                                : null,
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 2,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                Text(
                  "John Doe",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Sales Person",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),

          // Profile Menu Options
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              children: [
                _buildProfileOption("Personal Information", Icons.person),
                _buildProfileOption("Change Password", Icons.lock),
                _buildProfileOption("Language Preferences", Icons.language),
                _buildProfileOption(
                  "Notifications",
                  Icons.notifications,
                  badgeCount: 2,
                ),
                _buildProfileOption("App Permissions", Icons.settings),
                _buildProfileOption("Terms & Conditions", Icons.description),
                _buildProfileOption("Sign Out", Icons.logout, isRed: true),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 4),
    );
  }

  Widget _buildProfileOption(
    String title,
    IconData icon, {
    bool isRed = false,
    int badgeCount = 0,
  }) {
    return ListTile(
      leading: Icon(icon, color: isRed ? Colors.red : Colors.black54),
      title: Text(
        title,
        style: GoogleFonts.dmSans(
          fontSize: 16,
          color: Color.fromRGBO(5, 50, 93, 1),
        ),
      ),
      trailing:
          badgeCount > 0
              ? Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  badgeCount.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
              : const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black54,
              ),
      onTap: () {},
    );
  }
}
