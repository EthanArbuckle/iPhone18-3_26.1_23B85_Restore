int main(int argc, const char **argv, const char **envp)
{
  dword_100008008 = 100;
  v3 = exclaves_boot();
  dword_10000800C = v3;
  if (v3 && v3 != 46)
  {
    v4 = v3;
    sub_100000A70(&qword_100008000, &qword_100000B20);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100000B10;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000015;
    *(v5 + 40) = 0x8000000100000B20;
    *(v5 + 88) = &type metadata for Int32;
    *(v5 + 64) = v4;
    print(_:separator:terminator:)();
  }

  return 0;
}

uint64_t sub_100000A70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}