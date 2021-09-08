class Ability {
  final double physicalDamage;
  final double silverDamage;
  final double healDamage;
  final String name;

  const Ability(this.physicalDamage, this.silverDamage, this.healDamage, this.name);
  @override
  String toString() {
    return 'name $name\nphysicialDamage $physicalDamage\nsilverDamage $silverDamage nhealDamage $healDamage';
  }
}

const autoAttack = Ability(10, 0, 0, 'Auto Attack');
const claw = Ability(15, 0, 0, 'Claw');
const bite = Ability(20, 0, 0, 'Bite');
const silverShot = Ability(5, 10, 0, 'Silver Shot');
const healingMeds = Ability(0, 0, 20, 'healingMeds');
const spiritFlesh = Ability(0, 0, 30, 'Spirit Flesh');
const drainLife = Ability(0, 0, 25, 'Drain Life');