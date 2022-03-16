# Defined in - @ line 1
function gexp --wraps=great_expectations --wraps='great_expectations --v3-api' --description 'alias gexp=great_expectations --v3-api'
  great_expectations --v3-api $argv;
end
