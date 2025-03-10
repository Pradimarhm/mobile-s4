class Employe {
  int id;
  String name;
  String departemen;

  Employe(this.id, this.name, this.departemen);

  void displayInfo() {
    print("ID: $id");
    print("Nama: $name");
    print("Departemen: $departemen");
  }
}
