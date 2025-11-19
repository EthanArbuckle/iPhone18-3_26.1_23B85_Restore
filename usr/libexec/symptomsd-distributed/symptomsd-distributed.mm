int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.arguments.getter();
  v4 = *(v3 + 16);
  v5 = v4 != 0;
  if (v4)
  {
    v6 = (v3 + 40);
    do
    {
      if (*(v6 - 1) == 0x746E6567612D2DLL && *v6 == 0xE700000000000000)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v6 += 2;
      v5 = --v4 != 0;
    }

    while (v4);
  }

  byte_100008000 = v5;
  v8 = type metadata accessor for NDFDaemon();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  qword_100008008 = NDFDaemon.init(isAgent:)();
  dispatch thunk of NDFDaemon.start()();
  dispatch_main();
}