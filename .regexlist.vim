" General
let underscoreToCamel = 's/_\(.\)/\u\1/g'
let camelToUnderscore = 's/\([A-Z]\)/_\l\1/g'

" JavaScript
let requireToImport = 's/var \(\w*\) = require(\([^)]*\))/import \1 from \2/'
