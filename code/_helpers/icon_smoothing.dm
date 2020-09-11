//generic (by snowflake) tile smoothing code; smooth your icons with this!
/*
	Each tile is divided in 4 corners, each corner has an image associated to it; the tile is then overlayed by these 4 images
	To use this, just set your atom's 'smooth' var to 1. If your atom can be moved/unanchored, set its 'can_be_unanchored' var to 1.
	If you don't want your atom's icon to smooth with anything but atoms of the same type, set the list 'canSmoothWith' to null;
	Otherwise, put all types you want the atom icon to smooth with in 'canSmoothWith' INCLUDING THE TYPE OF THE ATOM ITSELF.

	Each atom has its own icon file with all the possible corner states. See 'smooth_wall.dmi' for a template.

	DIAGONAL SMOOTHING INSTRUCTIONS
	To make your atom smooth diagonally you need all the proper icon states (see 'smooth_wall.dmi' for a template) and
	to add the 'SMOOTH_DIAGONAL' flag to the atom's smooth var (in addition to either SMOOTH_TRUE or SMOOTH_MORE).

	For turfs, what appears under the diagonal corners depends on the turf that was in the same position previously: if you make a wall on
	a plating floor, you will see plating under the diagonal wall corner, if it was space, you will see space.

	If you wish to map a diagonal wall corner with a fixed underlay, you must configure the turf's 'fixed_underlay' list var, like so:
		fixed_underlay = list("icon"='icon_file.dmi', "icon_state"="iconstatename")
	A non null 'fixed_underlay' list var will skip copying the previous turf appearance and always use the list. If the list is
	not set properly, the underlay will default to regular floor plating.

	To see an example of a diagonal wall, see '/turf/simulated/wall/shuttle' and its subtypes.
*/

//Redefinitions of the diagonal directions so they can be stored in one var without conflicts
#define N_NORTH	2
#define N_SOUTH	4
#define N_EAST	16
#define N_WEST	256
#define N_NORTHEAST	32
#define N_NORTHWEST	512
#define N_SOUTHEAST	64
#define N_SOUTHWEST	1024

#define SMOOTH_FALSE	0 //not smooth
#define SMOOTH_TRUE		1 //smooths with exact specified types or just itself
#define SMOOTH_MORE		2 //smooths with all subtypes of specified types or just itself (this value can replace SMOOTH_TRUE)
#define SMOOTH_DIAGONAL	4 //if atom should smooth diagonally, this should be present in 'smooth' var
#define SMOOTH_BORDER	8 //atom will smooth with the borders of the map

#define NULLTURF_BORDER 123456789

#define DEFAULT_UNDERLAY_ICON 			'icons/turf/floors.dmi'
#define DEFAULT_UNDERLAY_ICON_STATE 	"plating"
#define DEFAULT_UNDERLAY_IMAGE			image(DEFAULT_UNDERLAY_ICON, DEFAULT_UNDERLAY_ICON_STATE)

/atom/var/smooth = SMOOTH_FALSE
/atom/var/top_left_corner
/atom/var/top_right_corner
/atom/var/bottom_left_corner
/atom/var/bottom_right_corner
/atom/var/list/canSmoothWith = null // TYPE PATHS I CAN SMOOTH WITH~~~~~ If this is null and atom is smooth, it smooths only with itself
/atom/movable/var/can_be_unanchored = FALSE
/turf/var/list/fixed_underlay = null

/proc/find_type_in_direction(atom/source, direction)
	var/turf/target_turf = get_step(source, direction)
	if(!target_turf)
		return NULLTURF_BORDER

	if(source.canSmoothWith)
		var/atom/A
		if(source.smooth & SMOOTH_MORE)
			for(var/a_type in source.canSmoothWith)
				if( istype(target_turf, a_type) )
					return target_turf
				A = locate(a_type) in target_turf
				if(A)
					return A
			return null

		for(var/a_type in source.canSmoothWith)
			if(a_type == target_turf.type)
				return target_turf
			A = locate(a_type) in target_turf
			if(A && A.type == a_type)
				return A
		return null
	else
		if(isturf(source))
			return source.type == target_turf.type ? target_turf : null
		var/atom/A = locate(source.type) in target_turf
		return A && A.type == source.type ? A : null
