class Race {
  final String raceName;
  final double physicalDamageModifier;
  final double silverDamageModifier;
  final double healthModifier;

  const Race(
      this.raceName, this.physicalDamageModifier, this.silverDamageModifier, this.healthModifier);

  @override
  String toString() {
    return 'raceName $raceName\nphsysicalDamageModifier $physicalDamageModifier\nsilverDamageModifier $silverDamageModifier\nhealthModifier $healthModifier';
  }
}
