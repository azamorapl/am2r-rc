/// copy_save(from, to)
file1 = "sav" + string(argument0 + 1);
file2 = "sav" + string(argument1 + 1);
if (file_exists(file2)) file_delete(file2);
file_copy(file1, file2);
with (oGameSelMenu) event_user(2);
saveslot_flash(argument1);
