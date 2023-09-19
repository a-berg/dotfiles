# Defined in - @ line 1
function conda --wraps=mamba --description 'alias conda=mamba'
  mamba  $argv;
end
