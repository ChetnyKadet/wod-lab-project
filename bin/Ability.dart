class Ability {
  final double physicalDamage;
  final double silverDamage;
  final String name;

  Ability(this.physicalDamage, this.silverDamage, this.name);
  @override
  String toString() {
    return 'name $name\nphysicialDamage $physicalDamage\nsilverDamage $silverDamage';
  }
}