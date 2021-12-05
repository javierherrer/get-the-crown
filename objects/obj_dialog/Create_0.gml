/// @description Create the dialog

dialog_t = 0;
dialog_delta = 1;

var dialog_text = "Go and talk with the monkey and the sloth."

dialog = dialog_create(sprite_width-40,
						sprite_height-40,
						20, 20, 10,
						dialog_text);
