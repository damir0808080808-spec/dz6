//Класс родитель
 enum SuperPower { 
  shield, strength, speed, technology, none, 
  }
enum HeroType { 
  captainAmerica, hulk, flash, ironMan, boss, 
  }
class Ability { 
  final SuperPower power;
Ability(this.power);
int reduceDamage(int damage) { 
  switch (power) { 
    case SuperPower.shield: 
    return (damage * 0.5).round();
  case SuperPower.strength:
    return damage;

  case SuperPower.speed:
    return damage;

  case SuperPower.technology:
    return (damage * 0.7).round();

  case SuperPower.none:
    return damage;
}
} }
class Character { 
  final String name; 
  int health; 
  final int attackDamage; 
  final Ability ability;
Character( 
  this.name, 
  this.health, 
  this.attackDamage, 
  this.ability, 
  );
bool get isAlive => health > 0;
void attack(Character target) { 
  if (!isAlive || !target.isAlive) return;
target.takeDamage(attackDamage);
print('$name атакует ${target.name}!');
}
void takeDamage(int damage) { if (!isAlive) return;
int finalDamage = ability.reduceDamage(damage);

health -= finalDamage;

if (health < 0) {
  health = 0;
}

print('$name получает $finalDamage урона.');
print('Здоровье $name: $health');

if (!isAlive) {
  print('$name побеждён!');
}
}
void showInfo() { 
  print('Имя: $name'); 
  print('Здоровье: $health'); 
  print('Урон: $attackDamage'); 
  print('Суперспособность: ${ability.power.name}'); } }