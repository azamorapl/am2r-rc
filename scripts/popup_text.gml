/// popup_text(text)
// leaks `t`
with (oPopupText) instance_destroy();
t = instance_create(0, 0, oPopupText);
t.text = argument0;
