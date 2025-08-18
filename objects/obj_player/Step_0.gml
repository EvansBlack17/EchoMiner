// определяем скорость передвижения персонажа
var _speed = 4;

// проверяем, какая клавиша была нажата, и передвигаем персонажа
if (keyboard_check(ord("W"))) {
    y -= _speed;
	direction = 90;
}
if (keyboard_check(ord("S"))) {
    y += _speed;
	direction = 270;
}
if (keyboard_check(ord("A"))) {
    x -= _speed;
	direction = 180;
}
if (keyboard_check(ord("D"))) {
    x += _speed;
	direction = 0;
}
image_angle = direction;