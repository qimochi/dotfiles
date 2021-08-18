function conk --wraps='conky -d -b -c ~/.conky/conkyrc_spot 2> /dev/null & exit' --description 'alias conk conky -d -b -c ~/.conky/conkyrc_spot 2> /dev/null & exit'
  conky -d -b -c ~/.conky/conkyrc_spot 2> /dev/null & exit $argv; 
end
