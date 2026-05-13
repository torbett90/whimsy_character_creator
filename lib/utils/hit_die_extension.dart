extension HitDieParser on String {
  /// Extracts the die face value (e.g., "1d8" or "d8" returns 8)
  int get maxHitDieValue {
    final match = RegExp(r'd(\d+)').firstMatch(this);
    if (match != null && match.group(1) != null) {
      return int.parse(match.group(1)!);
    }
    return 6; // Fallback to safe default
  }

  /// Standard D&D 2024 fixed HP progression per level (Half Max + 1)
  int get averageHitDieValue => (maxHitDieValue / 2).floor() + 1;
}
