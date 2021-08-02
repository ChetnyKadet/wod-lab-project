class CharacterEquipment {
  Equipment head;
  Equipment chest;
  CharacterEquipment(this.head, this.chest);
}

class Equipment {
  int stamina;
  Equipment(this.stamina);
}

final helmet = Equipment(10);
final vest = Equipment(10);
