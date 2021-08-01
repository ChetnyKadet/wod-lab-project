void main() {
  var player = Character();
  print(player.toString());
}

class Character {
  static final int minHealth = 0;
  int maxHealth = 200;
  int currentHealth = 100;
  bool isDead = false;
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

  @override
  String toString() {
    return 'maxHealth $maxHealth\ncurrentHealth $currentHealth\nisDead $isDead';
  }
}
