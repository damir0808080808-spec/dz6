import 'character.dart'; 
import 'boss.dart';
class Team { 
  final String name; 
  final List<Character> heroes;

Team(this.name, this.heroes);

bool get hasAliveHeroes => 
heroes.any((hero) => hero.isAlive);

void showTeam() { 
  print('\n========== $name ==========');
for (final hero in heroes) {
  hero.showInfo();
}
}
void attackBoss(Boss boss) { 
  for (final hero in heroes) { 
    if (!boss.isAlive) break;
  if (hero.isAlive) {
    hero.attack(boss);
    print('-------------------------');
  }
}
} 
}