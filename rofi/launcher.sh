#!/usr/bin/env bash

ALPHA="#00000000"
BG="#282828"
FG="#ebdbb2"
SELECT="#282828"

COLORS=('#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43' \
		'#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43' '#7D9A43')
ACCENT="${COLORS[$(( $RANDOM % 14 ))]}ff"

cat > $dir/colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  $BG;
	  se:  $SELECT;
	  fg:  $FG;
	  ac:  $ACCENT;
	}
EOF

rofi -no-lazy-grab -show drun -icons Tela brown -modi drun -theme ~/.config/rofi/launchers/colorful/style_8
