import 'character.dart';
import 'equipment.dart';
import 'dart:io';

void main() {
  var player = Character.humanPlayer(
      'SmallDickChungus', CharacterEquipment(helmet, vest));
  var player2 =
      Character.vampirePlayer('BuffiesBitch', CharacterEquipment(empty, vest));
  var player3 =
      Character.werewolfPlayer('ChadFurry', CharacterEquipment(empty, empty));
  final players = [player, player2, player3];
  turn(players);
}

void turn(List<Character> players) {
  var playerNames = '';
  for (var player in players) {
    playerNames += '${player.name} ';
  }
  print('Select player from list: $playerNames');
  String selectedPlayer = stdin.readLineSync() ?? '';
  final candidate = players.where((element) => element.name == selectedPlayer);
  if (candidate.isEmpty) {
    print('Player not found');
    return;
  }
  final attacker = candidate.first;
  print('Selected attacker is $attacker');
}
