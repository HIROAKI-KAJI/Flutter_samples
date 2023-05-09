enum Images{
  event('asset/Cyanus.jpg'),
  map('asset/Cyanus.jpg'),
  animalCrossing('asset/Cyanus.jpg'),
  games('asset/Cyanus.jpg'),
  goldCoin('asset/Cyanus.jpg'),
  silverCoin('asset/Cyanus.jpg'),
  unknown('asset/Cyanus.jpg');

  const Images(this.path);
  final String path;
}