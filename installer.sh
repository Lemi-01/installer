#!/bin/bash
function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}
read -r -d '' BANNER << EOF

┬  ┌─┐┌┬┐┬  ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┌─┐┬─┐
│  ├┤ ││││  ││││└─┐ │ ├─┤│  │  ├┤ ├┬┘
┴─┘└─┘┴ ┴┴  ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘└─┘┴└─

EOF
clear
echo -e "$BANNER"

pause
