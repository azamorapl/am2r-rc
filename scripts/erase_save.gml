/// erase_save()
filename = "sav" + string(global.saveslot + 1);
file_delete(filename);
with (oMenuSaveSlot) if (slot == global.saveslot) saveexists = 0;
saveslot_flash(global.saveslot);
