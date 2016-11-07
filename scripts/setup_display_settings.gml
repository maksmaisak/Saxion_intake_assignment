/// setup_display_settings()

// Black magic ahead
// See reference for display_reset()
// This sets antialiasing to the maximum available level

var aa_level = 0;

if (display_aa >= 2) {
    aa_level = 2;
}

if (display_aa >= 6) {
    aa_level = 4;
}

if (display_aa >= 12) {
    aa_level = 8;
}

var vsync_enabled = true;
display_reset(aa_level, vsync_enabled);
