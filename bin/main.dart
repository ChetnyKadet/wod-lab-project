void main() {
  var human = Race('Human', 0.7);
  var player = Character(human);
  var player = Character(vampire);
  var player = Character(werewolf);
  var vampire = Race('Vampire', 0.9);
  var werewolf = Race('Werewolf', 1.0);
  print(player.toString());
  player.modifyHealth(-100);
  print(player.toString());
}

class Character {
  static final int minHealth = 0;
  int maxHealth = 200;
  int currentHealth = 100;
  bool isDead = false;
  final Race race;
  Character(this.race);

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
  final double damageModifier;

  Race(this.raceName, this.damageModifier);

  @override
  String toString() {
    return 'raceName $raceName\ndamageModifier $damageModifier';
  }
}
