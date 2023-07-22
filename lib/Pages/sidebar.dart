import 'package:flutter/material.dart';
import 'package:project_app/Pages/Logout.dart';
import 'package:project_app/Pages/user_profile.dart';
import 'package:project_app/Pages/health_tips.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      //width: 200,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 250, 255),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserProfile()));
                  },
                  child: const CircleAvatar(
                    // Replace with user profile image
                    backgroundImage: AssetImage('assets/images/image.png'),
                    radius: 25,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Bertha Jones',
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Bsc.Computer Science',
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_right_outlined),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                const Icon(
                  Icons.healing, // Replace with the desired health icon
                  color: Color.fromARGB(
                      255, 145, 143, 143), // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
                const SizedBox(
                    width:
                        8), // Add a small space between the icon and "Health Tips"
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to Health Tips screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HealthTipsScreen(),
                        ),
                      );
                    },
                    child: const ListTile(
                      title: Text('Health Tips'),
                    ),
                  ),
                ),
                const Spacer(), // Use Spacer to push the "End Text" to the right side
                const Icon(
                  Icons
                      .arrow_right_outlined, // Replace with the desired health icon
                  color: Color.fromARGB(
                      255, 145, 143, 143), // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
              ],
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite, // Replace with the desired health icon
                  color: Colors.red, // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
                const SizedBox(
                    width:
                        8), // Add a small space between the icon and "Health Tips"
                Expanded(
                  child: ListTile(
                    title: const Text('Help Center'),
                    onTap: () {
                      // Add your functionality here for Menu Item 1
                    },
                  ),
                ),
                const Spacer(), // Use Spacer to push the "End Text" to the right side
                const Text(
                  'End Text', // Replace with the desired text
                  // Add any additional properties for the text, such as style or alignment
                ),
              ],
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                const Icon(
                  Icons.history, // Replace with the desired health icon
                  color: Color.fromARGB(
                      255, 145, 143, 143), // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
                const SizedBox(
                    width:
                        8), // Add a small space between the icon and "Health Tips"
                Expanded(
                  child: ListTile(
                    title: const Text('History'),
                    onTap: () {
                      // Add your functionality here for Menu Item 1
                    },
                  ),
                ),
                const Spacer(), // Use Spacer to push the "End Text" to the right side
                const Icon(
                  Icons
                      .arrow_right_outlined, // Replace with the desired health icon
                  color: Color.fromARGB(
                      255, 145, 143, 143), // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                const Icon(
                  Icons.settings, // Replace with the desired health icon
                  color: Color.fromARGB(
                      255, 145, 143, 143), // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
                const SizedBox(
                    width:
                        8), // Add a small space between the icon and "Health Tips"
                Expanded(
                  child: ListTile(
                    title: const Text('Settings'),
                    onTap: () {
                      // Add your functionality here for Menu Item 1
                    },
                  ),
                ),
                const Spacer(), // Use Spacer to push the "End Text" to the right side
                const Icon(
                  Icons
                      .arrow_right_outlined, // Replace with the desired health icon
                  color: Color.fromARGB(
                      255, 145, 143, 143), // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                const Icon(
                  Icons.logout, // Replace with the desired health icon
                  color: Color.fromARGB(
                      255, 35, 0, 162), // Example: Make the icon red
                  size: 24, // Example: Adjust the size of the icon
                ),
                const SizedBox(
                    width:
                        8), // Add a small space between the icon and "Health Tips"
                Expanded(
                  child: ListTile(
                    title: GestureDetector(
                      child: const Text('Logout'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Logout()));
                      },
                    ),
                    textColor: const Color.fromARGB(255, 2, 66, 176),
                    onTap: () {
                      // Add your functionality here for Menu Item 1
                    },
                  ),
                ),
                const Spacer(), // Use Spacer to push the "End Text" to the right side
              ],
            ),
          ),

          // Add more ListTiles for additional menu items
        ],
      ),
    );
  }
}
