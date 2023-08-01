
//meson goggles

/obj/item/clothing/glasses/meson
	name = "optical meson scanner"
	desc = "Used to shield the user's eyes from harmful electromagnetic emissions, also used as general safety goggles. Not adequate as welding protection."
	icon_state = "meson"
	item_state = "meson"
	deactive_state = "degoggles_meson"
	species_exception = list(/datum/species/robot)
	sprite_sheets = list(
		"Combat Robot" = 'icons/mob/species/robot/glasses.dmi',
		"Bravada Combat Robot" = 'icons/mob/species/robot/glasses_bravada.dmi',
		"Charlit Combat Robot" = 'icons/mob/species/robot/glasses_charlit.dmi',
		"Alpharii Combat Robot" = 'icons/mob/species/robot/glasses_alpharii.dmi',
		"Deltad Combat Robot" = 'icons/mob/species/robot/glasses_deltad.dmi')
	actions_types = list(/datum/action/item_action/toggle)
	toggleable = 1
	darkness_view = 2
	vision_flags = SEE_TURFS


/obj/item/clothing/glasses/meson/yautja
	name = "bio-mask x-ray"
	desc = "A vision overlay generated by the Bio-Mask. Used to see through objects."
	icon = 'icons/obj/items/hunter/pred_gear.dmi'
	icon_state = "visor_meson"
	item_state = "visor_meson"
	item_icons = list(
		slot_glasses_str = 'icons/mob/hunter/pred_gear.dmi'
	)
	darkness_view = 12
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_INVISIBLE
	vision_flags = SEE_TURFS
	flags_inventory = COVEREYES
	flags_item = NODROP|DELONDROP
	actions_types = null

/obj/item/clothing/glasses/meson/yautja/dropped(mob/living/carbon/human/user)
	if(istype(user) && user.glasses == src)
		user.clear_fullscreen("pred_meson", 5)
	..()

/obj/item/clothing/glasses/meson/yautja/equipped(mob/living/carbon/human/user, slot)
	if(slot == SLOT_GLASSES)
		user.overlay_fullscreen("pred_meson", /atom/movable/screen/fullscreen/machine/pred/meson)
	..()

/obj/item/clothing/glasses/meson/yautja/unequipped(mob/living/carbon/human/user, slot)
	if(slot == SLOT_GLASSES)
		user.clear_fullscreen("pred_meson", 5)
	..()


/obj/item/clothing/glasses/meson/prescription
	name = "prescription optical meson scanner"
	desc = "Used for shield the user's eyes from harmful electromagnetic emissions, can also be used as safety googles. Contains prescription lenses."
	prescription = 1

/obj/item/clothing/glasses/meson/enggoggles
	name = "\improper Optical meson ballistic goggles"
	desc = "Standard issue TGMC goggles. This pair has been fitted with an internal optical meson scanner."
	icon_state = "enggoggles"
	item_state = "enggoggles"
	deactive_state = "degoggles_enggoggles"
	flags_equip_slot = ITEM_SLOT_EYES
	goggles = TRUE

/obj/item/clothing/glasses/meson/enggoggles/prescription
	name = "\improper Optical meson prescription ballistic goggles"
	desc = "Standard issue TGMC prescription goggles. This pair has been fitted with an internal optical meson scanner."
	prescription = TRUE

/obj/item/clothing/glasses/meson/eyepatch
	name = "\improper Meson eyepatch"
	desc = "An eyepatch fitted with the meson scanner interface. For the disabled and/or edgy Engineer."
	icon_state = "patchmeson"
	deactive_state = "degoggles_medpatch"
	species_exception = list(/datum/species/robot)
	sprite_sheets = list(
		"Combat Robot" = 'icons/mob/species/robot/glasses.dmi',
		"Bravada Combat Robot" = 'icons/mob/species/robot/glasses_bravada.dmi',
		"Charlit Combat Robot" = 'icons/mob/species/robot/glasses_charlit.dmi',
		"Alpharii Combat Robot" = 'icons/mob/species/robot/glasses_alpharii.dmi',
		"Deltad Combat Robot" = 'icons/mob/species/robot/glasses_deltad.dmi')
	toggleable = TRUE
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/glasses/meson/sunglasses
	name = "\improper Meson sunglasses"
	desc = "A pair of designer sunglasses. This pair has been fitted with an optical meson scanner."
	icon_state = "mesonsunglasses"
	item_state = "mesonsunglasses"
	deactive_state = "degoggles_mesonsunglasses"
	prescription = TRUE
