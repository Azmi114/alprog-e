void main() {
  // Step 1: Inisialisasi data
  List<Map<String, dynamic>> laptopData = [
    {"nama": "Laptop A", "harga": 9000000, "RAM": 8, "processor": "i5", "layar": 14},
    {"nama": "Laptop B", "harga": 12000000, "RAM": 16, "processor": "i7", "layar": 15},
    {"nama": "Laptop C", "harga": 8000000, "RAM": 8, "processor": "i5", "layar": 13},
    {"nama": "Laptop D", "harga": 9500000, "RAM": 8, "processor": "i5", "layar": 15},
    {"nama": "Laptop E", "harga": 7000000, "RAM": 4, "processor": "i3", "layar": 14}
  ];

  // Step 2: Input kriteria pengguna
  int userBudget = 10000000;
  int minRAM = 8;
  String desiredProcessor = "i5";
  int minScreenSize = 14;

  // Step 3: Filter data
  List<Map<String, dynamic>> filteredLaptops = laptopData.where((laptop) {
    return laptop['harga'] <= userBudget &&
        laptop['RAM'] >= minRAM &&
        laptop['processor'] == desiredProcessor &&
        laptop['layar'] >= minScreenSize;
  }).toList();

  // Step 4: Urutkan berdasarkan harga
  filteredLaptops.sort((a, b) => a['harga'].compareTo(b['harga']));

  // Step 5: Tampilkan hasil
  for (var laptop in filteredLaptops) {
    print("${laptop['nama']} - Rp ${laptop['harga']}, RAM ${laptop['RAM']} GB, Prosesor ${laptop['processor']}, Layar ${laptop['layar']} inci");
  }
}
