// Класс наследник
 import 'dart:math';
import 'character.dart';

class Boss extends Character { 
  final Random random = Random();
Boss() 
: super( 
  'Танос', 
  3000, 
  300, 
  Ability(SuperPower.none), 
  );
@override 
void attack(Character target) { 
  if (!isAlive || !target.isAlive) return;
bool critical = random.nextBool();

int damage = attackDamage;

if (critical) {
  damage = attackDamage * 2;

  print('\n🔥 КРИТИЧЕСКИЙ УДАР!');
} else {
  print('\n$name атакует!');
}

print('Урон босса: $damage');

target.takeDamage(damage);
}
@override 
void showInfo() { 
  print('\n===== БОСС ====='); 
  super.showInfo(); 
  print('Шанс критического удара: 50%.'); 
  print('Критический удар наносит 200% урона.'); 
  } 
  }