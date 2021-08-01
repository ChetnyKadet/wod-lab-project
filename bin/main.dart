void main() {
  var autoAttack = Ability(10, 15, 'Auto Attack');
  var human = Race('Human', 0.1, 0.2);
  var player = Character(human, 'SmallDickChungus', [autoAttack]);
  var vampire = Race(
    'Vampire',
    0.3,
    0.6,
  );
  var player2 = Character(vampire, 'BuffiesBitch', [autoAttack]);
  var werewolf = Race('Werewolf', 0.7, 0.9);
  var player3 = Character(werewolf, 'ChadFurry', [autoAttack]);
}



class Character {
  static final int minHealth = 0;
  final String name;
  int maxHealth = 200;
  int currentHealth = 100;
  bool isDead = false;
  final Race race;
  final List<Ability> spellbook;
  Character(this.race, this.name, this.spellbook);

  void modifyHealth(int amount) {
    currentHealth += amount;
    if (currentHealth > maxHealth) {
      currentHealth = maxHealth;
    }
    if (currentHealth <= minHealth) {
      currentHealth = minHealth;
      isDead = true;
    }
  }

  void attack(int abilityIndex, Character character) {
    character.modifyHealth((spellbook[abilityIndex].physicalDamage *
            character.race.physicalDamageModifier +
        spellbook[abilityIndex].silverDamage *
            character.race.silverDamageModifier).round());
  }

  @override
  String toString() {
    return 'maxHealth $maxHealth\ncurrentHealth $currentHealth\nisDead $isDead\nrace $race';
  }
}

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
