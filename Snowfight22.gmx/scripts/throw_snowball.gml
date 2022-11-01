//throw_snowball(x_start, y_start, x_target, y_target)

var start_x = argument0;
var start_y = argument1;
var target_x = argument2;
var target_y = argument3;

var max_height = point_distance(start_x, start_y, target_x, target_y) / 2;

var snowball = instance_create(start_x, start_y, snowball_obj);
snowball.direction = point_direction(start_x, start_y, target_x, target_y);
snowball.speed = 16;
snowball.target_x = target_x;
snowball.target_y = target_y;
snowball.max_height = max_height;
