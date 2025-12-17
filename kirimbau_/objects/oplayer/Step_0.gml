var _left, _right, _up, _down;

_left  = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_up    = keyboard_check(inputs.up);
_down  = keyboard_check(inputs.down);

velh = (_right - _left) * vel;
velv = (_down - _up) * vel;

// MOVIMENTO
if (velh != 0 || velv != 0)
{
    // ANDANDO PRA CIMA
    if (velv < 0 && velh == 0)
    {
        sprite_index = splayer_up;
    }
    // ANDANDO PARA OS LADOS
    else if (velh != 0)
    {
        sprite_index = splayer_run;
        image_xscale = sign(velh);
    }
    // ANDANDO PRA BAIXO
    else if (velv > 0)
    {
        sprite_index = splayer_idle;
    }
}
else
{
    // PARADO
    sprite_index = splayer_idle;
}
