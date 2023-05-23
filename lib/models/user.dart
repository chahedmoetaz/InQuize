class User {
  int userId;
  String username;
  String firstname;
  String lastname;
  String email;
  String phone;
  String adresse;
  String token;
  String country;
  String website;
  String picture;
  int participations;
  int following;


  User({ this.userId=0, this.username='', this.firstname='', this.lastname='', this.email='',this.website='', this.phone='',
    this.adresse='', this.token='',this.country='',this.following=0,this.participations=0,this.picture=''});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        userId: responseData['id'],
        username: responseData['username'],
      firstname: responseData['firstname'],
      lastname: responseData['lastname'],
        email: responseData['email'],
        phone: responseData['tel'],
        adresse: responseData['address'],
      country: responseData['country'],
        token: responseData['token'],
      following: responseData['following'],
      participations: responseData['participations'],
      website: responseData['website'],
      //picture: responseData["pictures" ][1]["url"],

    );
  }
}