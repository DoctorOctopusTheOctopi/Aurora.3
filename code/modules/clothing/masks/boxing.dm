/obj/item/clothing/mask/balaclava
	name = "balaclava"
	desc = "LOADSAMONEY"
	icon_state = "balaclava"
	item_state = "balaclava"
	flags_inv = HIDEFACE|BLOCKHAIR
	body_parts_covered = FACE|HEAD
	w_class = 2
	action_button_name = "Toggle Face Concealing"

/obj/item/clothing/mask/balaclava/attack_self(mob/user as mob)
	if (use_check(user))
		return

	if(src.icon_state == initial(icon_state))
		src.icon_state = "[icon_state]_r"
		user << "You roll up \the [src]."
		body_parts_covered = HEAD
		flags_inv = BLOCKHAIR
	else
		src.icon_state = initial(icon_state)
		user << "You lower \the [src]."
		flags_inv = HIDEFACE|BLOCKHAIR
		body_parts_covered = HEAD|FACE|EYES

	update_clothing_icon()

/obj/item/clothing/mask/balaclava/tactical
	name = "green balaclava"
	desc = "Designed to both hide identities and keep your face comfy and warm."
	icon_state = "swatclava"

/obj/item/clothing/mask/luchador
	name = "luchador mask"
	desc = "Worn by robust fighters, flying high to defeat their foes!"
	icon_state = "luchag"
	item_state = "luchag"
	flags_inv = HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE
	w_class = 2
	siemens_coefficient = 3.0

/obj/item/clothing/mask/luchador/tecnicos
	name = "tecnicos mask"
	desc = "Worn by robust fighters who uphold justice and fight honorably."
	icon_state = "luchador"
	item_state = "luchador"

/obj/item/clothing/mask/luchador/rudos
	name = "rudos mask"
	desc = "Worn by robust fighters who are willing to do anything to win."
	icon_state = "luchar"
	item_state = "luchar"
