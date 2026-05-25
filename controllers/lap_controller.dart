import '../models/lap_model.dart';

class LaptopController {
  List<LaptopModel> laptopList = [
    LaptopModel(
      name: "ASUS ROG Strix",
      type: "Gaming",

      processor: "Intel i7 13th Gen",
      ram: "16 GB",
      storage: "1 TB SSD",
      gpu: "RTX 4060",
    ),

    LaptopModel(
      name: "MacBook Air M2",
      type: "Casual",

      processor: "Apple M2",
      ram: "8 GB",
      storage: "512 GB SSD",
      gpu: "Integrated GPU",
    ),

    LaptopModel(
      name: "Dell XPS 15",
      type: "Professional",

      processor: "Intel i9",
      ram: "32 GB",
      storage: "1 TB SSD",
      gpu: "RTX 4050",
    ),

    LaptopModel(
      name: "HP Pavilion",
      type: "Student",

      processor: "Intel i5",
      ram: "8 GB",
      storage: "512 GB SSD",
      gpu: "Intel Iris Xe",
    ),
  ];

  LaptopModel getLaptop(int index) {
    return laptopList[index];
  }
}
