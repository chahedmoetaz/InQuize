class Message {
  final UserModul sender;
  final String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: ironMan,
    time: '5:30 PM',
    text: 'Hey dude! Even dead I\'m the hero. Love you 3000 guys.',
    unread: true,
  ),
  Message(
    sender: captainAmerica,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Message(
    sender: blackWindow,
    time: '3:30 PM',
    text: 'WOW! this soul world is amazing, but miss you guys.',
    unread: false,
  ),
  Message(
    sender: spiderMan,
    time: '2:30 PM',
    text: 'I\'m exposed now. Please help me to hide my identity.',
    unread: true,
  ),
  Message(
    sender: hulk,
    time: '1:30 PM',
    text: 'HULK SMASH!!',
    unread: false,
  ),
  Message(
    sender: thor,
    time: '12:30 PM',
    text: 'I\'m hitting gym bro. I\'m immune to mortal deseases. Are you coming?',
    unread: false,
  ),
  Message(
    sender: scarletWitch,
    time: '11:30 AM',
    text: 'My twins are giving me headache. Give me some time please.',
    unread: false,
  ),
  Message(
    sender: captainMarvel,
    time: '12:45 AM',
    text: 'You\'re always special to me nick! But you know my struggle.',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: ironMan,
    time: '5:30 PM',
    text: 'Hey dude! Event dead I\'m the hero. Love you 3000 guys.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'We could surely handle this mess much easily if you were here.',
    unread: true,
  ),
  Message(
    sender: ironMan,
    time: '3:45 PM',
    text: 'Take care of peter. Give him all the protection & his aunt.',
    unread: true,
  ),
  Message(
    sender: ironMan,
    time: '3:15 PM',
    text: 'I\'m always proud of her and blessed to have both of them.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Yes Tony!',
    unread: true,
  ),
  Message(
    sender: ironMan,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    unread: true,
  ),
];


class UserModul {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  UserModul({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current UserModul
final UserModul currentUser = UserModul(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'assets/images/Profile Image.png',
  isOnline: true,
);

// USERS
final UserModul ironMan = UserModul(
  id: 1,
  name: 'Iron Man',
  imageUrl: 'assets/images/Profile Image.png',
  isOnline: true,
);
final UserModul captainAmerica = UserModul(
  id: 2,
  name: 'Captain America',
  imageUrl: 'assets/images/Profile Image.png',
  isOnline: true,
);
final UserModul hulk = UserModul(
  id: 3,
  name: 'Hulk',
  imageUrl: 'assets/images/Profile Image.png',
  isOnline: false,
);
final UserModul scarletWitch = UserModul(
  id: 4,
  name: 'Scarlet Witch',
  imageUrl: 'assets/images/Profile Image.png',
  isOnline: false,
);
final UserModul spiderMan = UserModul(
  id: 5,
  name: 'Spider Man',
  imageUrl: 'assets/images/Profile Image.png',
  isOnline: true,
);
final UserModul blackWindow = UserModul(
  id: 6,
  name: 'Black Widow',
  imageUrl: "assets/images/Profile Image.png",
  isOnline: false,
);
final UserModul thor = UserModul(
  id: 7,
  name: 'Thor',
  imageUrl: 'assets/images/Profile Image.png',
  isOnline: false,
);
final UserModul captainMarvel = UserModul(
  id: 8,
  name: 'Captain Marvel',
  imageUrl:'assets/images/Profile Image.png',
  isOnline: false,
);