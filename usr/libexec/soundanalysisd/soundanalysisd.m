int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100000D1C()
{
  sub_100001194();
  *(v0 + 16) = sub_100001184();
  nullsub_1();
  v1 = async function pointer to static SNDaemon.soundanalysisdLaunch()[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100000DC4;

  return static SNDaemon.soundanalysisdLaunch()();
}

uint64_t sub_100000DC4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v13 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 16);
      swift_getObjectType();
      v6 = sub_100001174();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v11 = sub_100000F88;
  }

  else
  {
    if (v4)
    {
      v9 = *(v2 + 16);
      swift_getObjectType();
      v6 = sub_100001174();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v11 = sub_100000F50;
  }

  return _swift_task_switch(v11, v6, v8);
}

void sub_100000F50()
{
  v1 = *(v0 + 16);

  exit(0);
}

uint64_t sub_100000F88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  return _swift_errorInMain(v1);
}

uint64_t sub_100000FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000106C;

  return sub_100000D1C();
}

uint64_t sub_10000106C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}