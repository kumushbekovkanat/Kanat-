void main() {
  print('Мини-арена');
  String name = 'Тимур';

  int heroHp = 100;
  int heroAttack = 20;
  int potions = 2;
  int coins = 0;
  int defeated = 0;

  print('— Ваш герой —');
  print('Имя: $name');
  print('Здоровье: $heroHp');
  print('Сила атаки: $heroAttack');
  print('Зелий: $potions');

  List<String> enemyNames = ['Зомби', 'Скелет', 'Дракон'];
  List<int> enemyHealths = [30, 40, 50];
  List<int> enemyDamages = [10, 15, 20];

  List<String> moves = ['1', '1', '1', '1', '2', '1', '1', '1', '1', '1', '1', '1'];
  int moveIndex = 0;

  for (int i = 0; i < enemyNames.length; i++) {
    String enemyName = enemyNames[i];
    int enemyHp = enemyHealths[i];
    int enemyDamage = enemyDamages[i];

    print('');
    print('Появляется противник: $enemyName!');

    while (enemyHp > 0 && heroHp > 0) {
      print('');
      print('Противник: $enemyName');
      print('Здоровье героя: $heroHp');
      print('Здоровье противника: $enemyHp');
      print('Зелий: $potions');

      String choice = moves[moveIndex];
      moveIndex = moveIndex + 1;
      print('Выбрано действие: $choice');

      switch (choice) {
        case '1':
          enemyHp = enemyHp - heroAttack;
          print('Вы нанесли $heroAttack урона!');
          if (enemyHp > 0) {
            heroHp = heroHp - enemyDamage;
            print('$enemyName атакует и наносит $enemyDamage урона!');
          }
          break;
        case '2':
          if (potions <= 0) {
            print('Зелий больше нет');
          } else {
            heroHp = heroHp + 30;
            if (heroHp > 100) {
              heroHp = 100;
            }
            potions = potions - 1;
            print('Вы выпили зелье. Здоровье: $heroHp');
            heroHp = heroHp - enemyDamage;
            print('$enemyName атакует и наносит $enemyDamage урона');
          }
          break;
        default:
          print('Неверный ввод! Введите 1 или 2');
      }
    }

    if (heroHp <= 0) {
      print('');
      print('Игра окончена!');
      return;
    }

    defeated = defeated + 1;
    coins = coins + 10;
    print('');
    print('Вы победили противника: $enemyName');
  }

  print('');
  print('Поздравляем! Вы победили!');
  print('Имя героя: $name');
  print('Побеждено противников: $defeated');
  print('Оставшееся здоровье: $heroHp');
  print('Заработано монет: $coins');
}
 
