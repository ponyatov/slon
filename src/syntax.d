module syntax;

import pegged.grammar;

mixin(grammar("
slon:
    Term    < (space/comment)*
    space   <  [ \t\r\n\f]+
    comment <~ '#' (!'\n' .)*
"));
