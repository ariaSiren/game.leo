# 2048 на Leo

Цей код є реалізацією гри 2048 на мові програмування Leo.

## Як грати

* Використовуйте клавіші зі стрілками, щоб переміщати плитки.
* Коли дві плитки з однаковим числом стикаються, вони об'єднуються в одну плитку з подвоєним числом.
* Продовжуйте грати, доки не отримаєте плитку 2048.

## Функції

* `init_board(rows: u32, cols: u32) -> [[u32]]`: Функція ініціалізує ігрове поле.
* `generate_new_cell(&mut board)`: Функція генерує нову плитку на ігровому полі.
* `is_game_over(board: [[u32]]) -> bool`: Функція перевіряє, чи закінчена гра.
* `main()`: Головна функція, яка запускає гру.

## Вимоги

* Leo

## Використання

1. Скопіюйте код у Leo-файл.
2. Запустіть Leo.
3. Натисніть F5, щоб розпочати гру.

## Ліцензія

Гра 2048 є безкоштовною та відкритою. Ви можете використовувати, поширювати та модифікувати її код.