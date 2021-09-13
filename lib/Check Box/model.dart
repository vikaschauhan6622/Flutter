class CheckBoxListTileModel {
  String img;
  String title;
  String description;
  int price;
  String button;

  CheckBoxListTileModel(
      {required this.img,
      required this.title,
      required this.description,
      required this.price,
      required this.button});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Apple",
          description:
              "The apple is a pome (fleshy) fruit, in which the ripened ovary and surrounding tissue both become fleshy and edible. ",
          price: 100,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Balloon",
          description:
              "Balloon, large airtight bag filled with hot air or a lighter-than-air gas, such as helium or hydrogen, to provide buoyancy so that it will rise and float in the atmosphere. ",
          price: 10,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Flower",
          description:
              "A flower is the reproductive part of flowering plants. ... Flowers are also called the bloom or blossom of a plant. ",
          price: 40,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Headphones",
          description:
              "Headphones are a pair of small loudspeaker drivers worn on or around the head over a user's ears.",
          price: 400,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Location",
          description:
              "A location is the place where a particular point or object exists. ... A place's absolute location is its exact place on Earth, often given in terms of latitude and longitude. ",
          price: 500,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Mario",
          description:
              "Depicted as a short, pudgy, Italian plumber who resides in the Mushroom Kingdom, his adventures generally center on rescuing Princess Peach from the Koopa villain Bowser. ",
          price: 100,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Mask",
          description:
              "Mask, a form of disguise or concealment usually worn over or in front of the face to hide the identity of a person and by its own features to establish another being.",
          price: 20,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Mobile",
          description:
              "A mobile phone, cellular phone, cell phone, cellphone, handphone, or hand phone, sometimes shortened to simply mobile, cell or just phone, is a portable telephone that can make and receive calls over a radio frequency link while the user is moving within a telephone service area.",
          price: 10000,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Sun",
          description:
              "The sun is a star, a hot ball of glowing gases at the heart of our solar system. Its influence extends far beyond the orbits of distant Neptune and Pluto.",
          price: 300,
          button: "Show Price"),
      CheckBoxListTileModel(
          img: 'assets/images/1.jpg',
          title: "Tag",
          description:
              "The description tag is a piece of html code that's meant to give a short – you guessed it – description of a web page.",
          price: 30,
          button: "Show Price"),
    ];
  }
}
