class CalculationException implements Exception {
  final String _reason;
  CalculationException(this._reason);
  String toString() => 'Calculation failed. Reason: $_reason';
}
