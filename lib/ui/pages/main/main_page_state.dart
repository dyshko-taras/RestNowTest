class MainPageState {
  String lastPayment;

  MainPageState({this.lastPayment = '-'});

  MainPageState copyWith({
    String? lastPayment,
  }) {
    return MainPageState(
      lastPayment: lastPayment ?? this.lastPayment,
    );
  }
}
