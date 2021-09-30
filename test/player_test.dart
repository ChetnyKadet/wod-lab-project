import 'package:test/test.dart';
import '../bin/character.dart';
import '../bin/equipment.dart';

late Character player1;
late Character player2;
late Character player3;
void main() {
  setUp(() {
    player1 = Character.humanPlayer(
        'SmallDickJohnny', CharacterEquipment(helmet, vest));
    player2 = Character.vampirePlayer(
        'BuffiesBitch', CharacterEquipment(empty, vest));
    player3 =
        Character.werewolfPlayer('ChadFurry', CharacterEquipment(empty, empty));
  });
  test('Player1 use Autoattack on player2', () {
    player1.useAbility(player1.spellbook[0], player2);
    expect(player2.currentHealth, 245);
  });
  test('Player2 use Autoattack on player1', () {
    player2.useAbility(player2.spellbook[0], player1);
    expect(player1.currentHealth, 292);
    expect(player2.currentHealth, 250);
  });
  test('Player2 use Drain Life on player1', () {
    player2.currentHealth = 100;
    player2.useAbility(player2.spellbook[3], player1);
    expect(player2.currentHealth, 125);
    expect(player1.currentHealth, 275);
  });
}
