#define create_Tornado {
    var xoff = 30
	
    if (window == 2 && window_timer == 1)
    {
        var new_tornado = instance_create( 
        	x + (xoff * spr_dir), 
        	y, 
        	"obj_article1" 
        );
        new_tornado.owner = self
    }
}