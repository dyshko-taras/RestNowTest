class PaymentPageState {
  String lastPayment;
  bool isLoading;

  PaymentPageState({
    this.lastPayment = '-',
    this.isLoading = false,
  });

  PaymentPageState copyWith({
    String? lastPayment,
    bool? isLoading,
  }) {
    return PaymentPageState(
      lastPayment: lastPayment ?? this.lastPayment,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
