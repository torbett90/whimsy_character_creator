extension HitDieParser on String {
  int get maxHitDieValue {
    final match = RegExp(r'd(\d+)').firstMatch(this);
    if (match != null && match.group(1) != null) {
      return int.parse(match.group(1)!);
    }
    return 6;
  }

  int get averageHitDieValue => (maxHitDieValue / 2).floor() + 1;
}

/// Pure function for HP calculation. Highly testable.
int calculateStandardMaxHp({
  required int level,
  required int conMod,
  required String hitDie,
}) {
  int maxHp = hitDie.maxHitDieValue + conMod; // Level 1
  if (level > 1) {
    maxHp += (level - 1) * (hitDie.averageHitDieValue + conMod);
  }
  return maxHp > 0 ? maxHp : 1; // Minimum 1 HP
}
