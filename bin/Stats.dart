import 'main.dart';
import 'Health.dart';

class Character {
  static final int minHealth = 0;
  static final int baseHealth = 1;
  int maxHealth = 200;
  bool isDead = false;
}

class Race {
  var human = Race('Human', 99);
  var vampire = Race('Vampire', 149);
  var werewolf = Race('Werewolf', 199);
}
