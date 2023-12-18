class Task {
  String? idtask;
  String? name;
  DateTime? firstDay;
  int? friends;
  int? prop;

  getName() {
    return name;
  }

  getFirstDay() {
    return firstDay;
  }

  get() {
    return firstDay;
  }

  setName(String name) {
    this.name = name;
  }

  setFirstDay(DateTime firstDay) {
    this.firstDay = firstDay;
  }
}
