class Ability {
  final double physicalDamage;
  final double silverDamage;
  final String name;

  const Ability(this.physicalDamage, this.silverDamage, this.name);
  @override
  String toString() {
    return 'name $name\nphysicialDamage $physicalDamage\nsilverDamage $silverDamage';
  }
}

const autoAttack = Ability(10, 0, 'Auto Attack');
const claw = Ability(15, 0, 'Claw');
const bite = Ability(20, 0, 'Bite');
const silverShot = Ability(5, 10, 'Silver Shot');