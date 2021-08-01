void main() {
  var human = Race('Human', 0.1, 0.2);
  var player = Character(human, 'SmallDickChungus');
  var vampire = Race('Vampire', 0.3, 0.6);
  var player2 = Character(vampire, 'BuffiesBitch');
  var werewolf = Race('Werewolf', 0.7, 0.9);
  var player3 = Character(werewolf, 'ChadFurry');
  printCharacter(player);
  printCharacter(player2);
  printCharacter(player3);
}

void printCharacter(Character character) {
  print(' ');
  print(character.toString());
}

class Character {
  static final int minHealth = 0;
  final String name;
  int maxHealth = 200;
  int currentHealth = 100;
  bool isDead = false;
  final Race race;
  Character(this.race, this.name);

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
