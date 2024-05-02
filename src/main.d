import std.stdio;
import std.range;
import std.file;

import syntax;
import gnu.readline;
import std.string : toStringz, fromStringz;

extern (C) void add_history(const char*); // missing from gnu.readline

void main(string[] args) {
    // command line arguments
    arg(0, args[0]);
    foreach (argc, argv; args[1 .. $].enumerate) {
        arg(argc, argv);
        // parse
        auto src = readText(argv);
        writeln(syntax.slon(src));
    }
    // REPL;
}

void arg(size_t argc, string argv) {
    writefln("arg[%d] = <%s>", argc, argv);
}

void REPL() {
    while (true) {
        char* cmd = readline("> ");
        if (cmd) {
            add_history(cmd);
            writefln("[%s]", syntax.slon(cmd.fromStringz.idup));
        }
    }
}
