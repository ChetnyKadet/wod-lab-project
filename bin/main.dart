import 'Health.dart';
import 'Damage.dart';
import 'Ability.dart';
void main() {
  var autoAttack = Ability(10, 15, 'Auto Attack');
  var human = Race('Human', 0.8, 0.9);
  var player = Character(human, 'SmallDickChungus', [autoAttack]);
  var vampire = Race(
    'Vampire',
    0.5,
    0.7,
  );
  var player2 = Character(vampire, 'BuffiesBitch', [autoAttack]);
  var werewolf = Race('Werewolf', 0.1, 0.6);
  var player3 = Character(werewolf, 'ChadFurry', [autoAttack]);
}