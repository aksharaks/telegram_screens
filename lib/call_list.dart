import 'package:flutter/material.dart';

class CallListScreen extends StatefulWidget {
  const CallListScreen({super.key});

  @override
  State<CallListScreen> createState() => _CallListScreenState();
}



class _CallListScreenState extends State<CallListScreen> {

final List<Map<String, String>> users = [
    {
      'name': 'Alex',
      'lastMessage': 'Last seen wednesday',
      'profilePicture': 'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.webp',
    },
    {
      'name': 'Albin',
      'lastMessage': 'last seen 1 minute ago',
      'profilePicture': 'https://pics.craiyon.com/2023-07-15/dc2ec5a571974417a5551420a4fb0587.webp',
    },
    {
      'name': 'achu',
      'lastMessage': 'last seen recently',
      'profilePicture': 'https://cdn.prod.website-files.com/619e8d2e8bd4838a9340a810/647c1064ebf1c6171bfd3a87_profile-picture-feature-1.webp',
    },
   {
      'name': 'Arjun',
      'lastMessage': 'online',
      'profilePicture': 'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    },
   {
      'name': 'Alexa',
      'lastMessage': 'last seen 1hr ago',
      'profilePicture': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjX0KvjIzlCA7Mtu1bhyEmmG3I_N2vG0znSSDgpUvMoXFuuU9E5QYRxVS4f8sEoy-kD-E&usqp=CAU',
    },  
     {
      'name': 'Henna',
      'lastMessage': 'Lastseen yesterday',
      'profilePicture': 'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    },   {
      'name': 'abi',
      'lastMessage': 'online',
      'profilePicture': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLxwuEP1dItZwtEtr--OBzW-Z7JRvf3jYmdg&s',
    },   {
      'name': 'Anna',
      'lastMessage': 'Lastseen 1 day ago',
      'profilePicture': 'data:image/jpeg;base64,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',
    },   {
      'name': 'Aleena',
      'lastMessage': 'Lastseen 10hr ago',
      'profilePicture': 'data:image/jpeg;base64,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',
    },


  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Edit',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 159, 240),
                    fontSize: 17,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: ToggleButtons(
                    borderRadius: BorderRadius.circular(30),
                    constraints: BoxConstraints(minHeight: 30, minWidth: 70),
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'All',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Missed',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ],
                    isSelected: [true, false], // Manage state if needed
                    onPressed: (int index) {
                      // Handle toggle button state change if needed
                    },
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Icon(
                  Icons.add_call,
                  color: Color.fromARGB(255, 17, 198, 204),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        




      ),
    );
  }
}

