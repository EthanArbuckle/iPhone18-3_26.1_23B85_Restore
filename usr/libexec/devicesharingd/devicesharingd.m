int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001220(&qword_100008010, &qword_100002590);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin();
  v7 = &v13[-v6];
  sub_100001268(v5, qword_100008028);
  v8 = sub_1000012CC(v3, qword_100008028);
  v9 = type metadata accessor for Daemon();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = objc_autoreleasePoolPush();
  sub_100001304();
  objc_autoreleasePoolPop(v10);
  swift_beginAccess();
  sub_100001EEC(v8, v7, &qword_100008010, &qword_100002590);
  v11 = [objc_opt_self() mainRunLoop];
  [v11 run];

  sub_100001F54(v7, &qword_100008010, &qword_100002590);
  return 0;
}

uint64_t sub_100001220(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_100001268(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000012CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001304()
{
  v0 = (*(*(sub_100001220(&qword_100008018, &qword_100002598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v16 - v1;
  v3 = type metadata accessor for Daemon();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_100001220(&qword_100008010, &qword_100002590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = sub_1000012CC(v9, &unk_100008028);
  Daemon.init()();
  (*(v4 + 56))(v11, 0, 1, v3);
  swift_beginAccess();
  sub_1000015A4(v11, v12);
  swift_endAccess();
  if (!(*(v4 + 48))(v12, 1, v3))
  {
    (*(v4 + 16))(v7, v12, v3);
    Daemon.bootstrapSandbox()();
    (*(v4 + 8))(v7, v3);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_100001BD8(0, 0, v2, &unk_1000025A8, v14);
}

uint64_t sub_1000015A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001220(&qword_100008010, &qword_100002590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001614(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for Daemon();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_100001220(&qword_100008010, &qword_100002590);
  v1[9] = sub_1000012CC(v5, qword_100008028);

  return _swift_task_switch(sub_1000016F8, 0, 0);
}

uint64_t sub_1000016F8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  swift_beginAccess();
  v4 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 88) = v4;
  if (v4)
  {
    v5 = *(v0 + 64);
    **(v0 + 40) = 1;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 72), *(v0 + 48));
    v8 = async function pointer to Daemon.activate()[1];
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_100001834;
    v10 = *(v0 + 64);

    return Daemon.activate()();
  }
}

uint64_t sub_100001834()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10000198C, 0, 0);
}

uint64_t sub_10000198C()
{
  v1 = *(v0 + 64);
  **(v0 + 40) = *(v0 + 88) != 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001A00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001A38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001AE4;

  return sub_100001614(a1);
}

uint64_t sub_100001AE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001220(&qword_100008018, &qword_100002598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100001EEC(a3, v26 - v10, &qword_100008018, &qword_100002598);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100001F54(v11, &qword_100008018, &qword_100002598);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100001220(&qword_100008020, &qword_1000025C0);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_100001F54(a3, &qword_100008018, &qword_100002598);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100001F54(a3, &qword_100008018, &qword_100002598);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100001220(&qword_100008020, &qword_1000025C0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100001EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001220(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100001F54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001220(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100001FB4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000020A8;

  return v6(v2 + 32);
}

uint64_t sub_1000020A8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000021BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000021F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002368;

  return sub_100001FB4(a1, v5);
}

uint64_t sub_1000022AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001AE4;

  return sub_100001FB4(a1, v5);
}