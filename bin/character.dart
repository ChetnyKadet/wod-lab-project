import 'equipment.dart';
import 'stats.dart';
import 'race.dart';
import 'ability.dart';

class Character {
  static final int minHealth = 0;
  static final int baseHealth = 100;
  final String name;
  int maxHealth;
  int currentHealth = 100;
  bool isDead = false;
  final Race race;
  final List<Ability> spellbook;
  final CharacterEquipment characterEquipment;

  Character.humanPlayer(String name, CharacterEquipment characterEquipment)
      : this.race = human,
        this.name = name,
        this.characterEquipment = characterEquipment,
        this.spellbook = [autoAttack],
        this.maxHealth = (baseHealth * human.healthModifier).round(),
        this.currentHealth = (baseHealth * human.healthModifier).round();

  Character.vampirePlayer(String name, CharacterEquipment characterEquipment)
      : this.race = vampire,
        this.name = name,
        this.characterEquipment = characterEquipment,
        this.spellbook = [autoAttack],
        this.maxHealth = (baseHealth * vampire.healthModifier).round(),
        this.currentHealth = (baseHealth * vampire.healthModifier).round();

  Character.werewolfPlayer(String name, CharacterEquipment characterEquipment)
      : this.race = werewolf,
        this.name = name,
        this.characterEquipment =characterEquipment,
        this.spellbook = [autoAttack],
        this.maxHealth = (baseHealth * werewolf.healthModifier).round(),
        this.currentHealth = (baseHealth * werewolf.healthModifier).round();

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
