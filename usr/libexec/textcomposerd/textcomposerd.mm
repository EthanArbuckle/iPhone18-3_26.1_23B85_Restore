unint64_t sub_100000CFC()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    sub_100000DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

uint64_t sub_100000D54()
{
  sub_100000DDC();
  sub_100000CFC();
  return sub_100000DEC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100000DDC();
  sub_100000CFC();
  sub_100000DEC();
  return 0;
}