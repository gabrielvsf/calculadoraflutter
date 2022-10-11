abstract class CurrentDate with Store {
  bool getCurrentDate() {
    return DateFormat.yMMMd().format(DateTime.now());
  }
}
