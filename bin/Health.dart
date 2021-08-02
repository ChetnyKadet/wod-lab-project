import 'Damage.dart';
import 'Ability.dart';
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
    character.modifyHealth(-(spellbook[abilityIndex].physicalDamage *
                character.race.physicalDamageModifier +
            spellbook[abilityIndex].silverDamage *
                character.race.silverDamageModifier)
        .round());
  }

  @override
  String toString() {
    return 'maxHealth $maxHealth\ncurrentHealth $currentHealth\nisDead $isDead\nrace $race';
  }
}