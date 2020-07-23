mixin Trailer {
  double carrying = 0.0;

  /// Trailer can carry [weight]
  void carry(double weight) {
    carrying += weight;
  }
}
