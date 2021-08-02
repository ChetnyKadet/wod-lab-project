import 'character.dart';

void main() {
  var player = Character.humanPlayer('SmallDickChungus');
  var player2 = Character.vampirePlayer('BuffiesBitch');
  var player3 = Character.werewolfPlayer('ChadFurry');

  player2.attack(0, player3);
  print(player3);
}
