//update desticanion
if (instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}
//else{ xTo = camera_get_view_width(view_camera[0])/2
//	yTo = camera_get_view_height(view_camera[0])/2
//}
//update object position

x += (xTo-x) / 1;
y += (yTo-y) / 1;



x = clamp(x, view_w_half,room_width-view_w_half)
y = clamp(y, view_h_half,room_height-view_h_half)
//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

//music
