 import 'character.dart'; 
 import 'heroes.dart'; 
 import 'boss.dart'; 
 import 'team.dart';
void main() { 
  final captain = CaptainAmerica(); 
  final hulk = Hulk(); 
  final flash = Flash(); 
  final ironMan = IronMan();

final boss = Boss();

final team = Team( 
  'КОМАНДА СУПЕРГЕРОЕВ', 
  [captain, hulk, flash, ironMan], 
  );
team.showTeam(); 
boss.showInfo();
print('\n========== НАЧАЛО БОЯ ==========');
int round = 1;
while (team.hasAliveHeroes && boss.isAlive) { 
  print('\n========== РАУНД $round ==========');
team.attackBoss(boss);

if (!boss.isAlive) {
  break;
}

final target = team.heroes.firstWhere(
  (hero) => hero.isAlive,
);

boss.attack(target);

round++;
}
print('\n========== КОНЕЦ БОЯ ==========');
if (boss.isAlive) { 
  print('Танос победил!'); 
  } else { 
    print('Супергерои победили Таноса!'); }
print('\n========== ОСТАВШИЕСЯ ПЕРСОНАЖИ ==========');
for (final hero in team.heroes) { 
  hero.showInfo(); 
  }
boss.showInfo(); 
}