import 'character.dart';
import 'equipment.dart';
void main() {
  var player = Character.humanPlayer('SmallDickChungus', CharacterEquipment(helmet, vest));
  var player2 = Character.vampirePlayer('BuffiesBitch', CharacterEquipment(empty, vest) );
  var player3 = Character.werewolfPlayer('ChadFurry',CharacterEquipment(empty, empty) );

  player3.attack(1, player);
  print(player);
}
