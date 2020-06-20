class GridItem {
  final String tel;
  final String img;
  final String adresse;
  final String heure;


  GridItem(
      {this.tel,
        this.img,
        this.adresse,
        this.heure,
       });
}

List<GridItem> gridItemArray = [
  GridItem(
    tel: "021 78 36 47",
    img: "assets/images/agenceB.jpg",
    adresse: "Conservation Foncière Bab Ezzouar",
    heure: "17:00",
  ),
  GridItem(
    tel: "021 18 84 40",
    img: "assets/images/agenceA.jpg",
    adresse: "Conservation Foncière de Boumerdes",
    heure: "17:00",
  ),
  GridItem(
    tel: "021 08 72 43",
    img: "assets/images/agenceC.jpg",
    adresse: "Conservation Foncière Tizi Ouzou",
    heure: "17:00",
  ),
  GridItem(
    tel: "021 98 36 56",
    img: "assets/images/agenceD.jpg",
    adresse: "Conservation Foncière El-Harrache",
    heure: "17:00",
  ),
];

List<GridItem> gridItemArrayConservation= [
  GridItem(
    tel: "021 78 36 47",
    img: "assets/images/agenceG.jpg",
    adresse: "Agence immobilière de Bab Ezzouar",
    heure: "17:00",
  ),
  GridItem(
    tel: "021 18 84 40",
    img: "assets/images/agenceF.jpg",
    adresse: "Agence immobilière de  Boumerdes",
    heure: "17:00",
  ),
  GridItem(
    tel: "021 08 72 43",
    img: "assets/images/agenceH.jpg",
    adresse: "Agence immobilière de Tizi Ouzou",
    heure: "17:00",
  ),
  GridItem(
    tel: "021 98 36 56",
    img: "assets/images/agenceE.jpg",
    adresse: "Agence immobilière de  El-Harrache",
    heure: "17:00",
  ),
];
