class Race {
  final String raceName;
  final double physicalDamageModifier;
  final double silverDamageModifier;

  Race(this.raceName, this.physicalDamageModifier, this.silverDamageModifier);

  @override
  String toString() {
    return 'raceName $raceName\nphsysicalDamageModifier $physicalDamageModifier\nsilverDamageModifier $silverDamageModifier';
  }
}