import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> users = [
    {
      'name': 'Alex',
      'lastMessage': 'Last message from Alex',
      'profilePicture': 'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.webp',
    },
    {
      'name': 'Saved Messages',
      'lastMessage': 'photo',
      'profilePicture': 'https://cdn-icons-png.flaticon.com/512/3178/3178291.png',
    },
    {
      'name': 'achu',
      'lastMessage': 'image.jpg',
      'profilePicture': 'https://cdn.prod.website-files.com/619e8d2e8bd4838a9340a810/647c1064ebf1c6171bfd3a87_profile-picture-feature-1.webp',
    },
   {
      'name': 'Arjun',
      'lastMessage': 'GIF',
      'profilePicture': 'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    },
   {
      'name': 'cinema company',
      'lastMessage': 'sticker',
      'profilePicture': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjX0KvjIzlCA7Mtu1bhyEmmG3I_N2vG0znSSDgpUvMoXFuuU9E5QYRxVS4f8sEoy-kD-E&usqp=CAU',
    },  
     {
      'name': 'Henna',
      'lastMessage': 'Last message from Anna',
      'profilePicture': 'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    },   {
      'name': 'Edutech',
      'lastMessage': 'photo',
      'profilePicture': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLxwuEP1dItZwtEtr--OBzW-Z7JRvf3jYmdg&s',
    },   {
      'name': 'Anna',
      'lastMessage': 'Last message from Anna',
      'profilePicture': 'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    },   {
      'name': 'Anna',
      'lastMessage': 'Last message from Anna',
      'profilePicture': 'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: Color.fromARGB(255, 129, 193, 230),
                      fontSize: 18,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    
                  },
                  child: const Icon(
                    Icons.crop,
                    color: Color.fromARGB(255, 17, 198, 204),
                    size: 30,
                  ),
                ),
              ],
            ),
            const Center(
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 355,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for messages or users',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Container(
                    width: 375,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user['profilePicture']!),
                      ),
                      title: Text(user['name']!),
                      subtitle: Text(user['lastMessage']!,style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.contacts),
              onPressed: () {
                // Handle Contacts button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {
                // Handle Calls button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {
                // Handle Chat button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Handle Settings button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
   