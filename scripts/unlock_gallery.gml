/// unlock_gallery(index)
if (global.gallery[argument0] == 0) {
    global.gallery[argument0] = 1;
    save_stats();
}
