import 'ability.dart';
import 'character.dart';
import 'equipment.dart';
import 'race.dart';
import 'stats.dart';
void main() {
  var player = Character.humanPlayer('SmallDickChungus', );
  var player2 = Character.vampirePlayer('BuffiesBitch', );
  var player3 = Character.werewolfPlayer('ChadFurry', );

  player3.attack(0, player);
  print(player3);
}
