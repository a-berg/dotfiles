# Defined in - @ line 1
function ca --wraps='conda activate' --description 'alias ca=conda activate'
  conda activate $argv;
end
