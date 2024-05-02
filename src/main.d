import std.stdio;
import std.range;
import std.file;

import syntax;

void main(string[] args) {
    // command line arguments
    arg(0, args[0]);
    foreach (argc, argv; args[1 .. $].enumerate) {
        arg(argc, argv);
        // parse
        auto src = readText(argv);
        writeln(syntax.slon(src));
    }
}

void arg(size_t argc, string argv) {
    writefln("arg[%d] = <%s>", argc, argv);
}
