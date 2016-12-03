/// unlock_set(index)
if (global.unlock[argument0] == 0) {
    global.unlock[argument0] = 1;
    save_stats();
}
