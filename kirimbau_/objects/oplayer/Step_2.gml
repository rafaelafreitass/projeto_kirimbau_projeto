
var _col = instance_place(x + velh, y, cenario1_);

if (_col)
{
if (velh > 0)
{
	x = _col.bbox_left;
}

if(velh < 0)
{
}
velh = 0;
}

x+=velh;

var _col = instance_place(x, y + velv, cenario1_);
if(_col)
{
	if(velv > 0)
	{
	}
	if (velv < 0)
	{
	}
	velv = 0;
}
	

y+=velv;