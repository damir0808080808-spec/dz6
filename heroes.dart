// Класс наследник
 import 'character.dart';

class CaptainAmerica extends Character { 
  CaptainAmerica() 
  : super( 
    'Капитан Америка', 
    1000, 
    150, 
    Ability(SuperPower.shield), 
    );
@override 
void showInfo() { 
  print('\n===== КАПИТАН АМЕРИКА ====='); 
  super.showInfo(); 
  print('Щит уменьшает входящий урон на 50%.'); 
   } 
  }
class Hulk extends Character { 
  Hulk() 
  : super( 'Халк', 
  1500, 
  250, Ability(SuperPower.strength), 
  );
@override 
void attack(Character target) { 
  if (!isAlive || !target.isAlive) return;

int damage = (attackDamage * 1.5).round();

print('$name использует суперсилу!');
target.takeDamage(damage);
}
@override 
void showInfo() { 
  print('\n===== ХАЛК ====='); 
  super.showInfo(); print('Урон атаки увеличен на 50%.'); 
   } 
  }
class Flash extends Character { 
  Flash() 
  : super( 
    'Флэш', 
    800, 
    180, 
    Ability(SuperPower.speed), 
    );
@override 
void attack(Character target) { 
  if (!isAlive || !target.isAlive) return;
print('$name использует суперскорость!');
target.takeDamage(attackDamage);

if (target.isAlive) {
  target.takeDamage(attackDamage);
}
}
@override 
void showInfo() { 
  print('\n===== ФЛЭШ ====='); 
  super.showInfo(); 
  print('Может атаковать дважды.'); } }
class IronMan extends Character { 
  IronMan() 
  : super( 
    'Железный человек', 
    900, 
    220, 
    Ability(SuperPower.technology), 
    );
@override 
void attack(Character target) { 
  if (!isAlive || !target.isAlive) return;
print('$name стреляет из брони!');
super.attack(target);
}
@override void showInfo() { 
  print('\n===== ЖЕЛЕЗНЫЙ ЧЕЛОВЕК ====='); 
  super.showInfo(); 
  print('Броня уменьшает входящий урон на 30%.'); } }