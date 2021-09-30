import 'abilities.dart';
import 'character.dart';
import 'equipment.dart';
import 'dart:io';

void main() {
  var player = Character.humanPlayer(
      'SmallDickJohnny', CharacterEquipment(helmet, vest));
  var player2 =
      Character.vampirePlayer('BuffiesBitch', CharacterEquipment(empty, vest));
  var player3 =
      Character.werewolfPlayer('ChadFurry', CharacterEquipment(empty, empty));
  final players = [player, player2, player3];
  //turn(players);
  player2.useAbility(player2.spellbook[3], player);
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
  final ability = select(attacker.spellbook);
  if (ability == null) {
    return;
  }
  print('Select your target ($playerNames)');
  String selectedTarget = stdin.readLineSync() ?? '';
  final targetCandidate =
      players.where((element) => element.name == selectedTarget);
  Character target;
  if (targetCandidate.isEmpty) {
    target = attacker;
  } else {
    target = targetCandidate.first;
  }
  print('Selected target is ${target.name}');
  attacker.useAbility(ability, target);
}

Ability? select(List<Ability> spellbook) {
  var abilityNames = '';
  for (var ability in spellbook) {
    abilityNames += '${ability.name} ';
  }
  print('Avalaible abilities are $abilityNames');
  String selectedAbility = stdin.readLineSync() ?? '';
  final candidate =
      spellbook.where((element) => element.name == selectedAbility);
  if (candidate.isEmpty) {
    print('Ability not found');
    return null;
  }
  final ability = candidate.first;
  print('Selected ability is ${ability.name}');
  return ability;
}
