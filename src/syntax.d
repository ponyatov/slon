module syntax;

import pegged.grammar;

mixin(grammar("
slon:
    Term    <  ( space / comment / number)*
    space   <  [ \t\r\n\f]+
    comment <~ '#' (!'\n' .)*
    number  <~ [-+]?[0-9]+
"));
