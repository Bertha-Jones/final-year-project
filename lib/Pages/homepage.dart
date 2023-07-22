import 'package:flutter/material.dart';
import 'package:project_app/components/my_searchbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Pages/details_screen.dart';
import 'package:project_app/Pages/book_appointment.dart';
//import 'package:project_app/Pages/menuscreen.dart';
import 'sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                
                Text('Current Location',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            
            
           const  Text('Prof Alexander Kwapong hall',
           textAlign: TextAlign.center,
        style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 180, 180, 180)),
        
           ),
          ],
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
        foregroundColor: const Color.fromARGB(255, 76, 76, 76),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      ),
      drawer: const SafeArea(child: Sidebar()),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),

        BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Schdules'),
        
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chatbot'),
      ]),
      //drawer:  Sidebar(),
      //drawer:  Drawer(),
      // Add this line to include the sidebar

      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
               /* Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 1.0, vertical: 1.0),
                  child: Text(
                    'Prof.Alexander Kwapong hall',
                    style: GoogleFonts.poppins(
                      fontSize: 13.0,
                      color: const Color.fromARGB(255, 180, 180, 180),
                    ),
                  ),
                ),*/
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Wants to talk to a health Professional?',
                      style: GoogleFonts.poppins(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 21, 61, 111)),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Talk to a well Specialized and experienced doctor',
                      style: GoogleFonts.poppins(
                        fontSize: 16.5,
                        color: const Color.fromARGB(255, 86, 85, 85),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                MySearchBar(
                  hintText: 'Search for a doctor',
                  onSearch: (query) {
                    // Perform search functionality using the provided query
                    //print('Search query: $query');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Active Doctors',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 99, 99, 99),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 171, 167, 167),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //column to add container for doctors
                Column(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 85,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 235, 235, 235)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 80,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/image.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Dr. John Doe',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 81, 81, 81)),
                                    ),
                                    Text(
                                      'General Practioner',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 50),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.call_outlined,
                                    color: Color.fromARGB(255, 5, 10, 172),
                                    size: 30,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.videocam_outlined,
                                    color: Color.fromARGB(255, 5, 10, 172),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 85,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 235, 235, 235)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 80,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/image2.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Dr. John Doe',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 81, 81, 81)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'General Practioner',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 50),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.call_outlined,
                                    color: Color.fromARGB(255, 5, 10, 172),
                                    size: 30,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.videocam_outlined,
                                    color: Color.fromARGB(255, 5, 10, 172),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 85,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 235, 235, 235)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 80,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/image3.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Dr. John Doe',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 81, 81, 81)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'General Practioner',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 50),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.call_outlined,
                                    color: Color.fromARGB(255, 5, 10, 172),
                                    size: 30,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.videocam_outlined,
                                    color: Color.fromARGB(255, 5, 10, 172),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 85,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 235, 235, 235)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 80,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/image2.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. John Doe',
                                      style: GoogleFonts.poppins(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 81, 81, 81)),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'General Practioner',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 50),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const BookAppointmentScreen(),
                                      ),
                                    );
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const BookAppointmentScreen(),
                                        ),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.call_outlined,
                                      color: Color.fromARGB(255, 5, 10, 172),
                                      size: 30,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.videocam_outlined,
                                  color: Color.fromARGB(255, 5, 10, 172),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Show more doctors',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 83, 83, 83)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
