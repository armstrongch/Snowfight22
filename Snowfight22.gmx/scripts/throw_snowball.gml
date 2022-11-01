//throw_snowball(x_start, y_start, x_target, y_target)

var start_x = argument0;
var start_y = argument1;
var target_x = argument2;
var target_y = argument3;

var snowball_direction = point_direction(start_x, start_y, target_x, target_y);

if (point_distance(start_x, start_y, target_x, target_y) < 32)
{
    target_x = start_x + cos(snowball_direction/180*pi)*64;
    target_y = start_y - sin(snowball_direction/180*pi)*64;
}

var max_height = point_distance(start_x, start_y, target_x, target_y) / 2;

var snowball = instance_create(start_x, start_y, snowball_obj);
snowball.direction = snowball_direction;
snowball.speed = 16;
snowball.target_x = target_x;
snowball.target_y = target_y;
snowball.max_height = max_height;
