uint64_t sub_10003AB18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (*(v3 + 24) == 1)
  {
    sub_10002282C();
    swift_allocError();
    *v5 = 1;
    *(v5 + 8) = 0xD00000000000001DLL;
    *(v5 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    v8 = *(v3 + 16);
    result = sub_100009400();
    if (!v4)
    {
      a3();
    }
  }

  return result;
}

uint64_t sub_10003ABE4(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  type metadata accessor for SQLiteDB.Transaction();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v1;

  sub_10002211C();
  if (v2)
  {
  }

  a1(&v6, v4);
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_10002211C();
  }

  return v6;
}

uint64_t sub_10003ACEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003AD04()
{
  sub_100004680();
  *(v0 + 32) = *(*(v0 + 24) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003AD6C()
{
  sub_100002624();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100001D10();
  v4 = sub_100007C28(163);
  sub_100023AE0(v4, v5, v6, v7);
  sub_10000FF74();

  return v8();
}

uint64_t sub_10003AE0C(uint64_t a1)
{
  v2 = *(v1[7] + 112);
  v1[8] = v2;
  v1[9] = 0;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003AE28()
{
  sub_100004F30();
  v2 = v1[8];
  v3 = v1[9];
  type metadata accessor for SQLiteDB.Transaction();
  inited = swift_initStackObject();
  sub_100005080(inited);
  sub_10002211C();
  if (v3)
  {

    sub_100005150();
    goto LABEL_4;
  }

  sub_10003DC84(v0, v1 + 6);
  if ((*(v0 + 24) & 1) == 0)
  {
    sub_100017144();
  }

  if (v1[6] != 5)
  {
    sub_100009B24();
LABEL_4:
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  v1[9] = 0;
  v7 = v1[8];
  sub_100010590();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10003AF40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003AF58()
{
  sub_100004680();
  *(v0 + 32) = *(*(v0 + 24) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003AFC0()
{
  sub_100002624();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100001D10();
  v4 = sub_100007C28(155);
  sub_100023AE0(v4, v5, v6, v7);
  sub_10000FF74();

  return v8();
}

uint64_t sub_10003B048()
{
  sub_100004680();
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  sub_10000BBD4(v2);
  v4 = sub_10000BEB8(v3);

  return sub_10003CEA4(v4, v5);
}

uint64_t sub_10003B0D4()
{
  sub_100002624();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 32);
  v6 = *v1;
  sub_1000043E4();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (v0)
  {
    v8 = *(v4 + 24);

    return _swift_task_switch(sub_10003B21C, v8, 0);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(v3 != 0);
  }
}

uint64_t sub_10003B21C()
{
  sub_100004680();
  *(v0 + 16) = *(v0 + 40);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (!swift_dynamicCast() || *(v0 + 48))
  {
    v5 = *(v0 + 16);

    sub_100001D4C();
    v7 = *(v0 + 40);

    return v6();
  }

  else
  {
    v1 = *(v0 + 40);

    v2 = *(v0 + 16);

    sub_10000FF74();

    return v3(2);
  }
}

uint64_t sub_10003B320(uint64_t a1)
{
  v2 = *(v1[7] + 112);
  v1[8] = v2;
  v1[9] = 0;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003B33C()
{
  sub_100004F30();
  v2 = v1[8];
  v3 = v1[9];
  type metadata accessor for SQLiteDB.Transaction();
  inited = swift_initStackObject();
  sub_100005080(inited);
  sub_10002211C();
  if (v3)
  {

    sub_100005150();
    goto LABEL_4;
  }

  sub_10003ED40(v0, v1 + 6);
  if ((*(v0 + 24) & 1) == 0)
  {
    sub_100017144();
  }

  if (v1[6] != 50)
  {
    sub_100009B24();
LABEL_4:
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  v1[9] = 0;
  v7 = v1[8];
  sub_100010590();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10003B454()
{
  sub_100004680();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000BBD4(v1);
  v3 = sub_10000BEB8(v2);

  return sub_10003D1B4(v3, v4, v5);
}

uint64_t sub_10003B4E4()
{
  sub_100004680();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1000043E4();
  *v3 = v2;

  sub_100001D4C();

  return v4();
}

uint64_t sub_10003B5C8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v53 = type metadata accessor for URLResourceValues();
  v5 = sub_100001EDC(v53);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  v12 = sub_100001D80(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for URL();
  v18 = sub_100001EDC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v18);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v49 - v26;
  if ((a1 & 1) == 0)
  {
    v49 = a2;
    v50 = v7;
    v51 = [objc_opt_self() defaultManager];
    v30 = NSHomeDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    sub_100001D10();
    URL.appendingPathComponent(_:isDirectory:)();
    v31 = *(v20 + 8);
    v31(v25, v17);
    sub_1000228D4(&qword_10008E760, &qword_10006DC40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 32) = NSURLIsDirectoryKey;
    v33 = NSURLIsDirectoryKey;
    sub_100019E64(inited);
    sub_100008E88();
    URL.resourceValues(forKeys:)();
    if (v2)
    {

      sub_1000026BC(v16, 1, 1, v53);
      sub_10003EFCC(v16);
    }

    else
    {

      v35 = v53;
      sub_1000026BC(v16, 0, 1, v53);
      v36 = URLResourceValues.isDirectory.getter();
      (*(v50 + 8))(v16, v35);
      if (v36 != 2)
      {
        v37 = v51;
        if (v36)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }
    }

    v37 = v51;
LABEL_7:
    URL._bridgeToObjectiveC()(v34);
    v39 = v38;
    v54 = 0;
    v40 = [v37 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&v54];

    if (!v40)
    {
      v44 = v54;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (v31)(v27, v17);
    }

    v41 = v54;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    sub_100008E88();
    URL.setResourceValues(_:)();
    if (v2)
    {

      v42 = sub_1000175C8();
      v43(v42);
      return (v31)(v27, v17);
    }

    v46 = sub_1000175C8();
    v47(v46);
LABEL_15:
    v48 = v49;
    URL.appendingPathComponent(_:isDirectory:)();

    v31(v27, v17);
    v28 = v48;
    v29 = 0;
    return sub_1000026BC(v28, v29, 1, v17);
  }

  v28 = a2;
  v29 = 1;
  return sub_1000026BC(v28, v29, 1, v17);
}

Swift::Int sub_10003BA98(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10003BAF4()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008F040);
  sub_1000050E4(v0, qword_10008F040);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003BB7C()
{
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00)
  {
    return 0x140000000;
  }

  else
  {
    return 3221225472;
  }
}

uint64_t sub_10003BBDC()
{
  sub_100004680();
  *(v1 + 56) = v0;
  *(v1 + 184) = v2;
  *(v1 + 64) = *v0;
  v3 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  sub_100001D80(v3);
  v5 = *(v4 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v1 + 80) = v6;
  v7 = *(v6 - 8);
  *(v1 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  v9 = type metadata accessor for SQLiteDB.Location();
  sub_100001D80(v9);
  v11 = *(v10 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_10003BD38, 0, 0);
}

uint64_t sub_10003BD38()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 184);
  swift_defaultActor_initialize();
  sub_10003B5C8(v3 & 1, v1);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  sub_100003C88(*(v0 + 120));
  if (sub_100002694(v4, 1, v5) == 1)
  {
    sub_10003F094(*(v0 + 112), type metadata accessor for SQLiteDB.Location);
    goto LABEL_14;
  }

  v6 = *(v0 + 72);
  (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLFileSizeKey;
  v8 = NSURLFileSizeKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();
  v9 = *(v0 + 72);

  v10 = type metadata accessor for URLResourceValues();
  sub_1000026BC(v9, 0, 1, v10);
  v11 = URLResourceValues.fileSize.getter();
  LOBYTE(inited) = v12;
  (*(*(v10 - 8) + 8))(v9, v10);
  if ((inited & 1) != 0 || (v13 = *(v0 + 64), sub_10003BB7C() >= v11))
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
LABEL_14:
    v23 = *(v0 + 104);
    sub_100003C88(*(v0 + 120));
    type metadata accessor for SQLiteDB();
    swift_allocObject();
    *(*(v0 + 56) + 112) = sub_1000221F8(v23);
    v30 = swift_task_alloc();
    *(v0 + 128) = v30;
    *v30 = v0;
    v30[1] = sub_10003C2BC;
    v31 = *(v0 + 56);
    v32 = sub_10000BEB8(0x6E6F6973726576);

    return sub_10003D02C(v32, v33);
  }

  if (qword_10008DDE0 != -1)
  {
    swift_once();
  }

  if (byte_100095B12)
  {
    if (qword_10008DD58 != -1)
    {
      sub_1000046E8();
    }

    v14 = type metadata accessor for Logger();
    sub_1000050E4(v14, qword_10008F040);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 80);
    if (v17)
    {
      v21 = *(v0 + 64);
      v22 = swift_slowAlloc();
      *(v22 + 14) = sub_10000914C(v22, 3.9123e-34);
      _os_log_impl(&_mh_execute_header, v15, v16, "cache size %{public}ld exceeded maximum %{public}ld - cache delete overridden", v22, 0x16u);
      sub_100001D1C();
    }

    (*(v19 + 8))(v18, v20);
    goto LABEL_14;
  }

  if (qword_10008DD58 != -1)
  {
    sub_1000046E8();
  }

  v34 = type metadata accessor for Logger();
  sub_1000050E4(v34, qword_10008F040);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v0 + 64);
    v38 = swift_slowAlloc();
    *(v38 + 14) = sub_10000914C(v38, 3.9123e-34);
    _os_log_impl(&_mh_execute_header, v35, v36, "cache size %{public}ld exceeded maximum %{public}ld - deleting cache", v38, 0x16u);
    sub_100001D1C();
  }

  v39 = *(v0 + 120);
  v41 = *(v0 + 88);
  v40 = *(v0 + 96);
  v42 = *(v0 + 80);

  sub_100022DA8();
  sub_100011748();
  swift_allocError();
  *v43 = 1;
  swift_willThrow();
  (*(v41 + 8))(v40, v42);
  sub_10003F094(v39, type metadata accessor for SQLiteDB.Location);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  v27 = *(v0 + 112);
  v26 = *(v0 + 120);
  sub_100008F30();

  sub_100001D4C();

  return v28();
}

uint64_t sub_10003C2BC()
{
  sub_100004EC0();
  sub_100004F30();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  v7 = *(v4 + 128);
  *v6 = *v1;
  *(v5 + 136) = v0;

  v8 = *(v4 + 56);
  if (!v0)
  {
    *(v5 + 144) = v3;
    sub_10000445C();
    sub_10003F0EC(v9, v10, v11);
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    sub_100003F70();
  }

  sub_100002794();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10003C434()
{
  sub_100004680();
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);

  sub_10000445C();
  sub_10003F0EC(v3, v4, v5);
  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  sub_100003F70();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003C4D4()
{
  sub_100004680();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  sub_100003990(v1);

  return sub_10003C9E4(0);
}

uint64_t sub_10003C544()
{
  sub_100004EC0();
  sub_100004F30();
  if (v0[18] > 5)
  {
    v5 = v0[14];
    v6 = v0[15];
    sub_100008F30();
    sub_100007A78();

    sub_10000FF74();
    v7 = v0[7];
    sub_100002794();

    return v10(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    sub_100003990(v1);
    sub_100002794();

    return sub_10003C9E4(v2);
  }
}

uint64_t sub_10003C634()
{
  sub_100004EC0();
  sub_100004F30();
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;
  v5 = *(v2 + 152);
  *v4 = *v1;
  *(v3 + 160) = v0;

  v6 = *(v2 + 56);
  sub_10000445C();
  v10 = sub_10003F0EC(v7, v8, v9);
  if (v0)
  {
    *(v3 + 168) = v10;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  sub_100003F70();
  sub_100002794();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10003C7B0()
{
  sub_100004EC0();
  sub_100004F30();
  v1 = v0[14];
  v2 = v0[15];
  sub_100008F30();
  sub_100007A78();

  sub_10000FF74();
  v3 = v0[7];
  sub_100002794();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10003C844()
{
  sub_100004680();
  *(v0 + 176) = *(*(v0 + 56) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003C8B0()
{
  sub_100002624();
  v1 = v0[21];
  v2 = v0[7];
  v3 = *(v0[22] + 112);
  sub_100021888();

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  sub_100003F70();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003C940()
{
  sub_100004EC0();
  sub_100004F30();
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[7];
  swift_willThrow();
  sub_100007A78();

  v4 = v0[20];
  v6 = v0[14];
  v5 = v0[15];
  sub_100008F30();

  sub_100001D4C();
  sub_100002794();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10003C9E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003CA04, v1, 0);
}

uint64_t sub_10003CA04()
{
  sub_100002624();
  if (v0[2])
  {
    if (qword_10008DD58 != -1)
    {
      sub_1000046E8();
    }

    v1 = type metadata accessor for Logger();
    sub_1000050E4(v1, qword_10008F040);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "unsupported prior database version - deleting disk cache", v4, 2u);
      sub_100001D1C();
    }

    sub_100022DA8();
    sub_100011748();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    sub_100001D4C();

    return v6();
  }

  else
  {
    v8 = *(v0[3] + 112);
    v0[4] = v8;

    return _swift_task_switch(sub_10003CB70, v8, 0);
  }
}

uint64_t sub_10003CB70()
{
  sub_100002624();
  v2 = v1[4];
  sub_100001D10();
  sub_100007C28(1174);
  sub_10002211C();
  if (v0)
  {
    sub_100005150();

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v1[5] = v5;
    *v5 = v1;
    v5[1] = sub_10003CC68;
    v6 = v1[3];
    v7 = sub_10000BEB8(0x6E6F6973726576);

    return sub_10003D1B4(v7, v8, 6);
  }
}

uint64_t sub_10003CC68()
{
  sub_100002624();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;

  if (v0)
  {
    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 24);

    return _swift_task_switch(sub_10003CDA0, v8, 0);
  }
}

uint64_t sub_10003CDA0()
{
  sub_100002624();
  if (qword_10008DD58 != -1)
  {
    sub_1000046E8();
  }

  v0 = type metadata accessor for Logger();
  sub_1000050E4(v0, qword_10008F040);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 6;
    _os_log_impl(&_mh_execute_header, v1, v2, "initialized disk cache with version %lld", v3, 0xCu);
    sub_100001D1C();
  }

  sub_100009B24();

  return v4();
}

uint64_t sub_10003CEA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003CEC8, v2, 0);
}

uint64_t sub_10003CEC8()
{
  sub_100004680();
  v1 = v0[3];
  v0[5] = *(v0[4] + 112);

  v2 = sub_100002948();

  return _swift_task_switch(v2, v3, v4);
}

void sub_10003CF30()
{
  sub_100004F30();
  v2 = v1[5];
  sub_100001D10();
  sub_100007C28(37);
  v3 = sub_100009400();
  if (v0)
  {
    v4 = v1[3];

    sub_100005150();
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  sub_10003D3D4(v3, v1[2], v1[3], sub_100021E40);

  sub_10000FF74();
  sub_100010590();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10003D02C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003D050, v2, 0);
}

uint64_t sub_10003D050()
{
  sub_100004680();
  v1 = v0[3];
  v0[5] = *(v0[4] + 112);

  v2 = sub_100002948();

  return _swift_task_switch(v2, v3, v4);
}

void sub_10003D0B8()
{
  sub_100004F30();
  v2 = v1[5];
  sub_100001D10();
  sub_100007C28(37);
  v3 = sub_100009400();
  if (v0)
  {
    v4 = v1[3];

    sub_100005150();
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  sub_10003D3D4(v3, v1[2], v1[3], sub_100021E6C);

  sub_10000FF74();
  sub_100010590();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10003D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10003D1D8, v3, 0);
}

uint64_t sub_10003D1D8(uint64_t a1)
{
  v2 = *(*(v1 + 40) + 112);
  *(v1 + 48) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003D1F4()
{
  sub_100002624();
  v2 = v1[6];
  sub_100001D10();
  sub_100007C28(96);
  v3 = sub_100009400();
  if (v0)
  {
    v1[7] = v0;
    v4 = v1[5];
    v5 = sub_10003D2AC;
  }

  else
  {
    sub_10003D2D0(v3, v1[2], v1[3], v1[4]);

    v4 = v1[5];
    v5 = sub_100013BB0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10003D2AC()
{
  sub_100001D4C();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_10003D2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &off_100086270;
  *(inited + 72) = a4;

  sub_100009524(inited);
  if (v4)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_10003D3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  sub_100009524(inited);
  swift_setDeallocating();
  if (v4)
  {
    return sub_10000C4AC();
  }

  sub_10000C4AC();
  return a4(a1);
}

uint64_t sub_10003D4BC()
{
  sub_100004680();
  v1 = v0[8];
  sub_100005954(v0[10], v0[11]);

  v2 = v0[15];
  v3 = v0[7];

  sub_100001D4C();

  return v4();
}

uint64_t sub_10003D52C()
{
  sub_100001D4C();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_10003D550(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_100001F2C(sub_10003D570, v2);
}

uint64_t sub_10003D570(uint64_t a1)
{
  v2 = *(*(v1 + 104) + 112);
  *(v1 + 112) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003D58C()
{
  sub_100004EC0();
  sub_100004F30();
  v2 = v1[14];
  sub_100001D10();
  sub_100007C28(46);
  sub_100009400();
  if (v0)
  {
    sub_100005150();
  }

  else
  {
    v4 = v1[11];
    v3 = v1[12];
    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &off_1000862B0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;

    sub_100009524(inited);
    swift_setDeallocating();
    sub_10000C4AC();
    while (sub_10000C50C())
    {
    }

    sub_100009B24();
  }

  sub_100002794();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

void *sub_10003D6C8()
{
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v1 = sub_10000C50C();
    if (v0)
    {
    }

    if (!v1)
    {
      break;
    }

    sub_10003D74C(v1, &v3);
  }

  return v3;
}

uint64_t sub_10003D74C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CachedSession(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;

  v13 = sub_10000D148(v12, 0);
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v13;
  v16 = v14;
  v48 = v5;

  v18 = sub_10000D148(v17, 2);
  if (!v19)
  {
LABEL_12:

LABEL_13:
    sub_100022DA8();
    swift_allocError();
    *v40 = 0;
    return swift_willThrow();
  }

  v20 = v19;
  v46 = v18;
  v47 = a2;

  v22 = sub_10000D148(v21, 3);
  if (!v23)
  {
LABEL_11:

    goto LABEL_12;
  }

  v24 = v23;
  v45 = v22;

  v26 = sub_10000D148(v25, 4);
  if (!v27)
  {

    goto LABEL_11;
  }

  v28 = *(a1 + 16);
  v43 = v27;
  v44 = v26;
  v42 = sqlite3_column_int64(v28, 1);
  v29 = sqlite3_column_double(v28, 5);
  sqlite3_column_int64(v28, 6);
  v30 = sub_100043FF4(v42);
  if (v30 == 3)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  LODWORD(v42) = v31;
  v32 = &v11[*(v4 + 32)];
  Date.init(timeIntervalSince1970:)();
  v33 = v45;
  *v11 = v46;
  *(v11 + 1) = v20;
  *(v11 + 2) = v33;
  *(v11 + 3) = v24;
  v34 = v43;
  *(v11 + 4) = v44;
  *(v11 + 5) = v34;
  *(v11 + 6) = v15;
  *(v11 + 7) = v16;
  *(v11 + 8) = v29;
  v11[72] = v42;
  v35 = &v11[*(v4 + 36)];
  *v35 = 0;
  v35[4] = 1;
  sub_10003F034(v11, v9, type metadata accessor for CachedSession);
  v36 = v47;
  sub_1000455B4();
  v37 = *(*v36 + 16);
  sub_100045628(v37);
  sub_10003F094(v11, type metadata accessor for CachedSession);
  v38 = *v36;
  *(v38 + 16) = v37 + 1;
  return sub_100037748(v9, v38 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37);
}

uint64_t sub_10003DA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return sub_100001F2C(sub_10003DA34, v3);
}

uint64_t sub_10003DA34()
{
  sub_100002624();
  v1 = v0[17];
  v2 = *(v0[19] + 112);
  v0[20] = v2;

  return _swift_task_switch(sub_10003DAB8, v2, 0);
}

void sub_10003DAB8()
{
  v2 = v1[20];
  sub_100001D10();
  sub_100007C28(154);
  sub_100009400();
  if (v0)
  {
    v3 = v1[19];
    v4 = v1[17];

    sub_100005150();
    sub_100005358();

    __asm { BRAA            X1, X16 }
  }

  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[16];
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = v7;
  *(inited + 40) = v5;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &off_100086250;
  *(inited + 72) = v6;

  sub_100009524(inited);
  v9 = v1[19];
  swift_setDeallocating();
  sub_10000C4AC();
  sub_10003D6C8();
  v12 = v1[19];
  v13 = v1[17];

  sub_10000FF74();
  sub_100005358();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10003DC84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    sub_10002282C();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0xD00000000000001DLL;
    *(v4 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    v6 = *(a1 + 16);
    result = sub_100009400();
    if (!v2)
    {
      while (sub_10000C50C())
      {
      }

      result = sub_100022074();
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_10003DD7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003DD94(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 32) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003DDB0()
{
  sub_100002624();
  v7 = v1;
  v2 = *(v1 + 32);
  sub_100001D10();
  sub_100007C28(54);
  sub_100009400();
  if (v0)
  {
    sub_100005150();

    return v3();
  }

  else
  {
    sub_10003DE7C(*(v1 + 16), &v6);

    sub_10000FF74();

    return v5();
  }
}

uint64_t sub_10003DE7C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &off_100086250;
  *(inited + 32) = a1;
  sub_100009524(inited);
  if (v2)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        *a2 = v7;
        return result;
      }

      v8 = *(result + 16);

      if (!sqlite3_column_text(v8, 0))
      {
        break;
      }

      v9 = String.init(cString:)();
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = v7[2];
        sub_100020328();
        v7 = v15;
      }

      v12 = v7[2];
      if (v12 >= v7[3] >> 1)
      {
        sub_100020328();
        v7 = v16;
      }

      v7[2] = v12 + 1;
      v13 = &v7[2 * v12];
      v13[4] = v9;
      v13[5] = v11;
    }

    sub_100022DA8();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }
}

uint64_t sub_10003E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100001F2C(sub_10003E090, v4);
}

uint64_t sub_10003E090()
{
  sub_100004680();
  v1 = v0[3];
  v0[7] = *(v0[6] + 112);

  v2 = sub_100002948();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10003E0FC()
{
  sub_100002624();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  sub_100001D10();
  v6 = sub_100007C28(242);
  sub_1000223A4(v6, v7, v8, v9, v10, v11, v12);
  sub_10000FF74();

  return v13();
}

uint64_t sub_10003E188(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003E1A0()
{
  sub_100004680();
  v1 = v0[2];
  v0[4] = *(v0[3] + 112);

  v2 = sub_100002948();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10003E208()
{
  sub_100002624();
  sub_100022640(v0[4], v0[2]);
  v0[5] = 0;
  v1 = v0[3];

  return _swift_task_switch(sub_100013B90, v1, 0);
}

uint64_t sub_10003E294()
{
  sub_100001D4C();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_10003E2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = 0;
  v5 = *(a2 + 16);
  v6 = a2 + 32;
  v7 = "";
  for (i = a1; ; a1 = i)
  {
    if (v4 == v5)
    {
      return sub_100022084();
    }

    if (*(a1 + 24) == 1)
    {
      break;
    }

    v8 = v6;
    v9 = *(v6 + 8 * v4);
    v10 = *(a1 + 16);
    v11 = v7;
    result = sub_100009400();
    if (v3)
    {
      return result;
    }

    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 56) = &type metadata for Int64;
    *(inited + 64) = &off_100086270;
    *(inited + 32) = v9;
    sub_100008E88();
    sub_100009524(v14);
    ++v4;
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      sub_100008E88();
      v3 = 0;
      if (!sub_10000C50C())
      {
        break;
      }
    }

    v6 = v8;
    v7 = v11;
  }

  sub_10002282C();
  sub_100011748();
  swift_allocError();
  *v15 = 1;
  *(v15 + 8) = 0xD00000000000001DLL;
  *(v15 + 16) = 0x8000000100071310;
  return swift_willThrow();
}

uint64_t sub_10003E488(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003E4A0()
{
  sub_100004680();
  v1 = v0[2];
  v0[4] = *(v0[3] + 112);
  v0[5] = 0;
  v2 = swift_task_alloc();
  v3 = sub_100006FD4(v2);

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10003E4FC()
{
  sub_100002624();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[7] = sub_10003ABE4(sub_10003EF38);
  v0[8] = v2;
  if (v2)
  {
    v4 = v0[3];
    v5 = sub_10003E644;
  }

  else
  {
    v6 = v0[6];
    v7 = v0[3];

    v5 = sub_10003E5AC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10003E5AC()
{
  sub_100004680();
  if (v0[7] == 50)
  {
    v0[5] = v0[8];
    v1 = v0[4];
    v2 = v0[2];
    v3 = swift_task_alloc();
    v4 = sub_100006FD4(v3);

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    sub_100009B24();

    return v7();
  }
}

uint64_t sub_10003E644()
{
  sub_100004680();
  v1 = *(v0 + 48);

  sub_100001D4C();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_10003E6A0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_10003AB18(0xD00000000000003CLL, 0x8000000100072150, sub_10003EF54);

  if (!v2)
  {
    result = sub_100022074();
    *v11 = result;
  }

  return result;
}

uint64_t sub_10003E820()
{
  v1 = getTimeIntervalSince1970(Date:)();
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 56) = &type metadata for Int64;
  *(inited + 64) = &off_100086270;
  *(inited + 32) = v1;
  sub_100009524(inited);
  if (v0)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_10003E8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[46] = a4;
  v5[47] = v4;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return sub_100001F2C(sub_10003E91C, v4);
}

uint64_t sub_10003E91C()
{
  v1 = v0[45];
  v2 = *(v0[47] + 112);
  v0[48] = v2;
  if (v1)
  {
    v3 = sub_10003E954;
  }

  else
  {
    v3 = sub_10003EB38;
  }

  return sub_100001F2C(v3, v2);
}

uint64_t sub_10003E954()
{
  v2 = *(v1 + 384);
  sub_100001D10();
  sub_100007C28(197);
  sub_100009400();
  if (v0)
  {
    sub_100005150();
  }

  else
  {
    v4 = *(v1 + 360);
    v3 = *(v1 + 368);
    v6 = *(v1 + 344);
    v5 = *(v1 + 352);
    v7 = getTimeIntervalSince1970(Date:)();
    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006EAF0;
    *(v1 + 248) = *v6;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &off_1000862B0;
    *(inited + 32) = *v6;
    *(v1 + 264) = v6[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &off_1000862B0;
    *(inited + 72) = v6[1];
    *(v1 + 280) = v6[2];
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = &off_1000862B0;
    *(inited + 112) = v6[2];
    *(inited + 176) = &type metadata for String;
    *(inited + 184) = &off_1000862B0;
    *(inited + 152) = v5;
    *(inited + 160) = v4;
    *(inited + 216) = &type metadata for Int64;
    *(inited + 224) = &off_100086270;
    *(inited + 192) = v7;
    sub_100005CC0(v1 + 248, v1 + 296);
    sub_100005CC0(v1 + 264, v1 + 312);
    sub_100005CC0(v1 + 280, v1 + 328);

    sub_100009524(inited);
    swift_setDeallocating();
    sub_10000C4AC();
    while (sub_10000C50C())
    {
    }

    sub_100009B24();
  }

  return v9();
}

uint64_t sub_10003EB38()
{
  sub_100002624();
  v2 = *(v1 + 384);
  sub_100001D10();
  sub_100007C28(76);
  v3 = sub_100009400();
  if (v0)
  {
    *(v1 + 392) = v0;
    v6 = *(v1 + 376);
    v5 = sub_10003EBFC;
  }

  else
  {
    sub_10003EC20(v3, *(v1 + 344));
    v4 = *(v1 + 376);

    v5 = sub_100013B90;
    v6 = v4;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10003EBFC()
{
  v1 = *(v0 + 392);
  sub_100001D4C();
  return v2();
}

uint64_t sub_10003EC20(uint64_t a1, __int128 *a2)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  v6 = a2[1];
  v12 = *a2;
  v5 = v12;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 16) = xmmword_10006CAC0;
  *(inited + 32) = v5;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = v6;
  v10 = a2[2];
  v7 = v10;
  v11 = v6;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &off_1000862B0;
  *(inited + 112) = v7;
  sub_100005CC0(&v12, v9);
  sub_100005CC0(&v11, v9);
  sub_100005CC0(&v10, v9);
  sub_100009524(inited);
  if (v2)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_10003ED40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    sub_10002282C();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0xD00000000000001DLL;
    *(v4 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    v6 = *(a1 + 16);
    result = sub_100009400();
    if (!v2)
    {
      while (sub_10000C50C())
      {
      }

      result = sub_100022074();
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_10003EE4C(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 112);
  *(v1 + 24) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003EE68()
{
  sub_100002624();
  v1 = *(v0 + 24);
  sub_100009400();
  while (sub_10000C50C())
  {
  }

  sub_100009B24();

  return v3();
}

uint64_t sub_10003EF54()
{
  v0 = type metadata accessor for Date();
  sub_100001D80(v0);
  v2 = *(v1 + 80);
  return sub_10003E820();
}

uint64_t sub_10003EFCC(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003F034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100003C44(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10003F094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100003C44(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10003F0EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiskCacheError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DiskCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10003F29C()
{
  result = qword_10008F118;
  if (!qword_10008F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F118);
  }

  return result;
}

uint64_t sub_10003F2F0()
{
  if ((byte_10008F120 & 1) == 0)
  {
    sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
    v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
    v1 = *(*(v0 - 8) + 72);
    v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10006ECC0;
    v4 = (v3 + v2);
    v5 = *(v0 + 48);
    *v4 = XPC_ACTIVITY_DELAY;
    *(v4 + v5) = 300;
    type metadata accessor for XPCObject();
    swift_storeEnumTagMultiPayload();
    v6 = (v4 + v1);
    v7 = *(v0 + 48);
    *v6 = XPC_ACTIVITY_GRACE_PERIOD;
    *(v6 + v7) = 120;
    swift_storeEnumTagMultiPayload();
    v8 = (v4 + 2 * v1);
    v9 = (v8 + *(v0 + 48));
    *v8 = XPC_ACTIVITY_PRIORITY;
    *v9 = String.init(cString:)();
    v9[1] = v10;
    swift_storeEnumTagMultiPayload();
    v11 = (v4 + 3 * v1);
    v12 = *(v0 + 48);
    *v11 = XPC_ACTIVITY_ALLOW_BATTERY;
    *(v11 + v12) = 0;
    result = swift_storeEnumTagMultiPayload();
    if (XPC_ACTIVITY_POWER_NAP)
    {
      sub_100012308(XPC_ACTIVITY_POWER_NAP);
      *(v14 + v15) = 1;
      result = sub_10001C178();
      if (XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
      {
        sub_100012308(XPC_ACTIVITY_RANDOM_INITIAL_DELAY);
        sub_10000916C(60);
        result = swift_storeEnumTagMultiPayload();
        if (XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
        {
          sub_100012308(XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
          *(v16 + v17) = 1;
          result = sub_10001C178();
          if (XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
          {
            v18 = *(v0 + 48);
            v19 = (&v4[v1] - v1);
            *v19 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
            *(v19 + v18) = 1;
            result = sub_10001C178();
            if (XPC_ACTIVITY_NETWORK_UPLOAD_SIZE)
            {
              sub_100012308(XPC_ACTIVITY_NETWORK_UPLOAD_SIZE);
              sub_10000916C(5242880);
              result = swift_storeEnumTagMultiPayload();
              if (XPC_ACTIVITY_EXPECTED_DURATION)
              {
                sub_100012308(XPC_ACTIVITY_EXPECTED_DURATION);
                sub_10000916C(XPC_ACTIVITY_INTERVAL_1_MIN);
                result = swift_storeEnumTagMultiPayload();
                if (XPC_ACTIVITY_GROUP_NAME)
                {
                  v20 = (v4 + 10 * v1);
                  v21 = (v20 + *(v0 + 48));
                  *v20 = XPC_ACTIVITY_GROUP_NAME;
                  *v21 = 0xD00000000000001DLL;
                  v21[1] = 0x8000000100071DE0;
                  result = swift_storeEnumTagMultiPayload();
                  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
                  {
                    sub_100012308(XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT);
                    sub_10000916C(1);
                    swift_storeEnumTagMultiPayload();
                    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
                    sub_100038DC4();
                    sub_100008F3C();
                    goto LABEL_12;
                  }

LABEL_22:
                  __break(1u);
                  return result;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
  type metadata accessor for XPCObject();
  sub_100038DC4();
LABEL_12:

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10003F6B4()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A30);
  sub_1000050E4(v0, qword_100095A30);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003F734()
{
  sub_100004680();
  v1[19] = v0;
  v2 = *(type metadata accessor for CachedSession(0) - 8);
  v1[20] = v2;
  v3 = *(v2 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10003F858, v0, 0);
}

void sub_10003F858()
{
  sub_100002624();
  if (qword_10008DD60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_1000050E4(v1, qword_100095A30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (sub_100003B24(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1000028B8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100003910();
  }

  v0[13] = &_swiftEmptySetSingleton;
  v9 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (v9)
  {

    v10 = swift_task_alloc();
    v11 = sub_100004D64(v10);
    *v11 = v12;
    v13 = sub_100009880(v11);

    sub_10003AF40(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003F98C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  v6 = *(v5 + 264);
  *v4 = *v1;
  v3[34] = v7;
  v3[35] = v0;

  if (v0)
  {
    v8 = v3[19];
    v9 = sub_1000418B0;
  }

  else
  {
    v10 = v3[32];
    v11 = v3[19];

    v9 = sub_10003FAA8;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10003FAA8()
{
  v3 = *(*(v2 + 272) + 16);
  *(v2 + 288) = v3;
  if (v3)
  {
    v6 = static Task<>.isCancelled.getter();
    v7 = *(v2 + 272);
    if ((v6 & 1) == 0)
    {
      v8 = *(v2 + 160);
      v9 = *(v8 + 80);
      *(v2 + 568) = v9;
      *(v2 + 296) = 0;
      if (*(v7 + 16))
      {
        v10 = *(v2 + 240);
        *(v2 + 304) = *(v8 + 72);
        sub_100037808(v7 + ((v9 + 32) & ~v9), v10);
        sub_100002958();
        if (v11)
        {
          sub_1000058D4();
          sub_100008F3C();
          String.hash(into:)();
          Hasher._finalize()();
          sub_100009B34();
          while (1)
          {
            sub_100009088(v12);
            if ((v13 & 1) == 0)
            {
              break;
            }

            sub_10000CD7C();
            v15 = v15 && v14 == v1;
            if (!v15)
            {
              sub_100003F7C();
              v12 = sub_100042F00();
              if ((v16 & 1) == 0)
              {
                continue;
              }
            }

            sub_100005BB8();
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.default.getter();
            v19 = sub_100003B24(v18);
            v20 = *(v2 + 232);
            if (v19)
            {
              sub_100004D20();
              sub_100004414();
              sub_100005B3C();
              sub_1000175DC(4.8751e-34);
              v21 = sub_1000377AC(v20);
              sub_100002744(v21, v22);
              sub_100016724();
              *(v1 + 4) = v20;
              sub_1000028B8();
              _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
              sub_10000BEC8();
              sub_100003910();
            }

            else
            {

              v7 = sub_1000377AC(v20);
            }

            v41 = qword_100095AF0;
            *(v2 + 336) = qword_100095AF0;
            if (!v41)
            {
              goto LABEL_38;
            }

            sub_100003CB0(dword_10006FD00);
            sub_1000127F0();
            v42 = swift_task_alloc();
            v43 = sub_100004CC4(v42);
            *v43 = v44;
            sub_100001FAC(v43);
            v45 = sub_10000FF80();

            return v46(v45);
          }
        }

        sub_100011984();
        v33 = *(v2 + 96);

        v34 = qword_100095AE8;
        *(v2 + 328) = qword_100095AE8;
        if (v34)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  v7 = sub_100004F60();
  if (v0)
  {
    *(v2 + 520) = 0;
    *(v2 + 512) = v0;
    v31 = qword_100095AE8;
    *(v2 + 528) = qword_100095AE8;
    if (v31)
    {
      v32 = *(v7 + 48);
      sub_100007AA0(0);
LABEL_22:

      v7 = sub_100002948();

      return _swift_task_switch(v7, v4, v5);
    }

    goto LABEL_35;
  }

  sub_100017168();
  while (v30 != v29)
  {
    v28 = sub_1000105A4(v28);
  }

  v35 = qword_100095AE8;
  *(v2 + 552) = qword_100095AE8;
  if (!v35)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return _swift_task_switch(v7, v4, v5);
  }

  sub_100042F58();

  v36 = swift_task_alloc();
  v37 = sub_10001500C(v36);
  *v37 = v38;
  v39 = sub_100004474(v37);

  return sub_100035664(v39);
}

uint64_t sub_10003FDB0()
{
  sub_100004680();
  v1 = v0[41];
  v2 = v0[19];
  sub_1000055F0(v0[39], v0[40]);

  return _swift_task_switch(sub_10003FE24, v2, 0);
}

void sub_10003FE24()
{
  sub_100005BB8();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = sub_100003B24(v3);
  v5 = *(v1 + 232);
  if (v4)
  {
    sub_100004D20();
    sub_100004414();
    sub_100005B3C();
    sub_1000175DC(4.8751e-34);
    v6 = sub_1000377AC(v5);
    sub_100002744(v6, v7);
    sub_100016724();
    *(v0 + 4) = v5;
    sub_1000028B8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_10000BEC8();
    sub_100003910();
  }

  else
  {

    sub_1000377AC(v5);
  }

  v13 = qword_100095AF0;
  *(v1 + 336) = qword_100095AF0;
  if (v13)
  {
    sub_100003CB0(dword_10006FD00);
    sub_1000127F0();
    v14 = swift_task_alloc();
    v15 = sub_100004CC4(v14);
    *v15 = v16;
    sub_100001FAC();
    v17 = sub_10000FF80();

    v18(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003FF4C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  v6 = *(v5 + 344);
  *v4 = *v1;
  v3[44] = v7;
  v3[45] = v8;
  v3[46] = v0;

  if (v0)
  {
    v9 = v3[19];
    v10 = sub_100041AA8;
  }

  else
  {
    v11 = v3[42];
    v12 = v3[19];

    v10 = sub_10004006C;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10004006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;
  if (v30[44])
  {
    v36 = qword_100095AD8;
    v30[47] = qword_100095AD8;
    if (v36)
    {
      v37 = v30[30];
      v38 = *(v37 + 48);
      v39 = *(v37 + 56);

      v40 = swift_task_alloc();
      v30[48] = v40;
      *v40 = v30;
      sub_100001D9C(v40);
      sub_10001248C();

      return sub_10003E06C(v41, v42, v43, v44);
    }

    goto LABEL_42;
  }

  v47 = v30[30];
  v48 = v30[26];
  v50 = v30[24];
  v49 = v30[25];
  sub_100037808(v47, v30[27]);
  sub_100037808(v47, v48);
  sub_100037808(v47, v49);
  sub_100037808(v47, v50);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v53 = sub_100003B24(v52);
  v54 = v30[26];
  v55 = v30[27];
  v56 = v30[24];
  v57 = v30[25];
  if (v53)
  {
    v48 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    a11 = a10;
    *v48 = 136446978;
    v59 = *(v55 + 48);
    v58 = *(v55 + 56);

    sub_1000377AC(v55);
    v60 = sub_1000053A0(v59, v58, &a11);

    *(v48 + 4) = v60;
    *(v48 + 12) = 2082;
    v61 = *v54;
    v62 = v54[1];

    sub_1000377AC(v54);
    v63 = sub_1000053A0(v61, v62, &a11);

    *(v48 + 14) = v63;
    *(v48 + 22) = 2082;
    v64 = *(v57 + 16);
    v65 = *(v57 + 24);

    sub_1000377AC(v57);
    sub_1000053A0(v64, v65, &a11);
    sub_100016724();
    *(v48 + 24) = v64;
    *(v48 + 32) = 2082;
    v66 = *(v56 + 32);
    v67 = *(v56 + 40);

    sub_1000377AC(v56);
    v68 = sub_1000053A0(v66, v67, &a11);

    *(v48 + 34) = v68;
    sub_1000028B8();
    _os_log_impl(v69, v70, v71, v72, v73, 0x2Au);
    v47 = a10;
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100003910();
  }

  else
  {

    sub_1000377AC(v56);
    sub_1000377AC(v57);
    sub_1000377AC(v54);
    sub_1000377AC(v55);
  }

  sub_100009A50();
  if (v47 != v51)
  {
    sub_100006FF8();
    if (!v83)
    {
      sub_100003D94(v82);
      sub_100002958();
      if (v84)
      {
        sub_1000058D4();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088(v85);
          if ((v86 & 1) == 0)
          {
            break;
          }

          sub_10000CD7C();
          v88 = v88 && v87 == v48;
          if (!v88)
          {
            sub_100003F7C();
            v85 = sub_100042F00();
            if ((v89 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();
          v92 = sub_100003B24(v91);
          v93 = v30[29];
          if (v92)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v94 = sub_1000377AC(v93);
            sub_100002744(v94, v95);
            sub_100016724();
            *(v48 + 4) = v93;
            sub_1000028B8();
            _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v33 = sub_1000377AC(v93);
          }

          v110 = qword_100095AF0;
          v30[42] = qword_100095AF0;
          if (!v110)
          {
            goto LABEL_45;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v111 = swift_task_alloc();
          v112 = sub_100004CC4(v111);
          *v112 = v113;
          sub_100001FAC(v112);
          sub_10000FF80();
          sub_10001248C();

          return v115(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100011984();
      v101 = v30[12];

      v102 = qword_100095AE8;
      v30[41] = qword_100095AE8;
      if (v102)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v33, v34, v35);
      }

      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_41;
  }

  v33 = sub_100011754();
  if (!v74)
  {

    v104 = qword_100095AD8;
    v30[32] = qword_100095AD8;
    if (!v104)
    {
LABEL_46:
      __break(1u);
      return _swift_task_switch(v33, v34, v35);
    }

    v105 = swift_task_alloc();
    v106 = sub_100004D64(v105);
    *v106 = v107;
    sub_100009880();
    sub_10001248C();

    return sub_10003AF40(v108);
  }

  if (!*(v33 + 16))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = sub_100003B40(v33);
  v75 = qword_100095AD8;
  v30[60] = qword_100095AD8;
  if (!v75)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_100011CD0();

  v76 = swift_task_alloc();
  v77 = sub_100002648(v76);
  *v77 = v78;
  sub_100004708(v77);
  sub_10001248C();

  return sub_10003D550(v79, v80);
}

uint64_t sub_100040588()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  v6 = *(v5 + 384);
  *v4 = *v1;
  v3[49] = v7;
  v3[50] = v0;

  if (v0)
  {
    v8 = v3[19];
    v9 = sub_100041EC4;
  }

  else
  {
    v10 = v3[47];
    v11 = v3[19];

    v9 = sub_1000406A4;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000406A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;
  v33 = v30;
  v34 = v30[49];
  if (*(v34 + 16))
  {
    v35 = v30[31];
    sub_100037808(v30[30], v30[28]);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v30[49];
    v40 = v30[28];
    if (v38)
    {
      v41 = swift_slowAlloc();
      swift_slowAlloc();
      sub_100005B3C();
      *v41 = 134349826;
      *(v41 + 4) = *(v34 + 16);

      *(v41 + 12) = 2080;
      v42 = *(v40 + 48);
      v43 = *(v40 + 56);

      v44 = sub_1000377AC(v40);
      v46 = sub_10000CE38(v44, v45);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2082;
      sub_1000515B0(0x646F6874656D5FLL, 0xE700000000000000, v39);
      Set.description.getter();

      v49 = sub_10000CE38(v47, v48);
      v33 = v30;

      *(v41 + 24) = v49;
      *(v41 + 32) = 2082;
      sub_1000515B0(0x7375746174735FLL, 0xE700000000000000, v39);
      v50 = Set.description.getter();
      v52 = v51;

      v53 = sub_1000053A0(v50, v52, &a11);

      *(v41 + 34) = v53;
      _os_log_impl(&_mh_execute_header, v36, v37, "sending %{public}ld events for session %s with categories [%{public}s] types [%{public}s]", v41, 0x2Au);
      swift_arrayDestroy();
      sub_100003D78();
      sub_100003910();
    }

    else
    {
      v71 = v30[49];

      sub_1000377AC(v40);
    }

    v72 = *(v34 + 16);
    v33[51] = v72;
    v73 = _swiftEmptyArrayStorage;
    if (v72)
    {
      v74 = v33[49];
      v33[16] = _swiftEmptyArrayStorage;
      sub_10001C5CC(0, v72, 0);
      v73 = v33[16];
      v75 = (v74 + 56);
      do
      {
        v77 = *(v75 - 2);
        v76 = *(v75 - 1);
        v78 = *v75;
        v79 = v33;
        v33[16] = v73;
        v81 = v73[2];
        v80 = v73[3];

        if (v81 >= v80 >> 1)
        {
          sub_10001C5CC((v80 > 1), v81 + 1, 1);
          v73 = v79[16];
        }

        v73[2] = v81 + 1;
        v82 = &v73[3 * v81];
        v82[4] = v77;
        v82[5] = v76;
        v82[6] = v78;
        v75 += 4;
        --v72;
        v33 = v79;
      }

      while (v72);
    }

    v33[52] = v73;
    v84 = v33[44];
    v83 = v33[45];
    swift_getObjectType();
    v85 = *(v83 + 24);
    v141 = v85 + *v85;
    v86 = v85[1];
    v87 = swift_task_alloc();
    v33[53] = v87;
    *v87 = v33;
    v87[1] = sub_100040DB8;
    sub_10001248C();

    return v91(v88, v89, v90, v91, v92, v93, v94, v95, v83 + 24, v141, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v54 = v30[44];
  v55 = v30[49];

  swift_unknownObjectRelease();
  v56 = v30[36];
  v57 = v30[30];
  v58 = v30[37] + 1;
  v59 = sub_1000377AC(v57);
  if (v58 != v56)
  {
    v96 = v33[37] + 1;
    v33[37] = v96;
    v97 = v33[34];
    if (v96 < *(v97 + 16))
    {
      v98 = v33[30];
      v99 = v97 + ((*(v33 + 568) + 32) & ~*(v33 + 568));
      v100 = *(v33[20] + 72);
      v33[38] = v100;
      sub_100037808(v99 + v100 * v96, v98);
      v101 = v33[13];
      v33[39] = *v98;
      v102 = v98[1];
      v33[40] = v102;
      if (*(v101 + 16))
      {
        sub_1000058D4();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088(v103);
          if ((v104 & 1) == 0)
          {
            break;
          }

          sub_10000CD7C();
          v106 = v106 && v105 == v102;
          if (!v106)
          {
            sub_100003F7C();
            v103 = sub_100042F00();
            if ((v107 & 1) == 0)
            {
              continue;
            }
          }

          v108 = v33[31];
          sub_100037808(v33[30], v33[29]);
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();
          v111 = sub_100003B24(v110);
          v112 = v33[29];
          if (v111)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v113 = sub_1000377AC(v112);
            sub_100002744(v113, v114);
            sub_100016724();
            *(v102 + 4) = v112;
            sub_1000028B8();
            _os_log_impl(v115, v116, v117, v118, v119, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v59 = sub_1000377AC(v112);
          }

          v130 = qword_100095AF0;
          v33[42] = qword_100095AF0;
          if (!v130)
          {
            goto LABEL_48;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v131 = swift_task_alloc();
          v33[43] = v131;
          *v131 = v33;
          sub_100001FAC();
          v132 = v33[30];
          sub_10001248C();

          return v134(v133, v134, v135, v136, v137, v138, v139, v140, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100008F3C();
      sub_100015F14(v120, v121, v122);
      v123 = v33[12];

      v124 = qword_100095AE8;
      v33[41] = qword_100095AE8;
      if (v124)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v59, v60, v61);
      }

      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_45;
  }

  v33[59] = 0;
  v59 = v33[34];
  if (v33[36])
  {
    if (*(v59 + 16))
    {
      v59 = sub_100037808(v59 + ((*(v33 + 568) + 32) & ~*(v33 + 568)), v33[23]);
      v62 = qword_100095AD8;
      v33[60] = qword_100095AD8;
      if (v62)
      {
        v63 = v33[23];
        v64 = *(v63 + 48);
        v65 = *(v63 + 56);

        v66 = swift_task_alloc();
        v33[61] = v66;
        *v66 = v33;
        sub_100004708(v66);
        sub_10001248C();

        return sub_10003D550(v67, v68);
      }

      goto LABEL_46;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v126 = qword_100095AD8;
  v33[32] = qword_100095AD8;
  if (!v126)
  {
LABEL_49:
    __break(1u);
    return _swift_task_switch(v59, v60, v61);
  }

  v127 = swift_task_alloc();
  v33[33] = v127;
  *v127 = v33;
  sub_100009880();
  sub_10001248C();

  return sub_10003AF40(v128);
}

uint64_t sub_100040DB8()
{
  sub_100002624();
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;
  v5 = v2[53];
  *v4 = *v1;
  v3[54] = v0;

  v6 = v2[52];
  if (v0)
  {
    v7 = v3[49];
    v8 = v3[19];

    v9 = sub_1000422E8;
    v10 = v8;
  }

  else
  {
    v11 = v3[19];

    v9 = sub_100040F04;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

void sub_100040F04()
{
  v1 = qword_100095AD8;
  v0[55] = qword_100095AD8;
  if (v1)
  {
    v2 = v0[51];
    v3 = v0[49];
    if (v2)
    {
      v0[18] = _swiftEmptyArrayStorage;

      sub_100060CA4(0, v2, 0);
      v4 = 0;
      v5 = v0[18];
      v6 = (v3 + 32);
      v7 = v5[2];
      do
      {
        v9 = *v6;
        v6 += 4;
        v8 = v9;
        v0[18] = v5;
        v10 = v5[3];
        if (v7 >= v10 >> 1)
        {
          sub_100060CA4((v10 > 1), v7 + 1, 1);
          v5 = v0[18];
        }

        v11 = v0[51];
        ++v4;
        v5[2] = v7 + 1;
        v5[v7++ + 4] = v8;
      }

      while (v4 != v11);
      v12 = v0[49];
    }

    else
    {

      v5 = _swiftEmptyArrayStorage;
    }

    v0[56] = v5;
    v13 = swift_task_alloc();
    v0[57] = v13;
    *v13 = v0;
    v13[1] = sub_100041084;
    sub_100008E70();

    sub_10003E188(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100041084()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  v6 = *(v5 + 456);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[58] = v0;

  if (v0)
  {
    v9 = v3[19];
    v10 = sub_1000426CC;
  }

  else
  {
    v12 = v3[55];
    v11 = v3[56];
    v13 = v3[19];

    v10 = sub_1000411A0;
    v9 = v13;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_1000411A0()
{
  v1 = qword_100095AD8;
  v0[47] = qword_100095AD8;
  if (v1)
  {
    sub_100002624();
    v2 = v0[30];
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);

    v5 = swift_task_alloc();
    v0[48] = v5;
    *v5 = v0;
    v6 = sub_100001D9C(v5);

    sub_10003E06C(v6, v7, 0x400000, 50);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004125C()
{
  sub_100002624();
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;
  v5 = v2[61];
  *v4 = *v1;
  v3[62] = v0;

  v6 = v2[60];
  if (v0)
  {
    v7 = v3[34];
    v8 = v3[19];

    v9 = sub_100042AC0;
  }

  else
  {
    v8 = v3[19];

    v9 = sub_1000413A0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000413A0()
{
  sub_100002624();
  sub_1000377AC(*(v0 + 184));
  v1 = *(v0 + 472) + 1;
  *(v0 + 472) = v1;
  result = *(v0 + 272);
  if (v1 == *(v0 + 288))
  {

    v3 = qword_100095AD8;
    *(v0 + 256) = qword_100095AD8;
    if (v3)
    {

      v4 = swift_task_alloc();
      v5 = sub_100004D64(v4);
      *v5 = v6;
      v7 = sub_100009880();

      return sub_10003AF40(v7);
    }

    goto LABEL_12;
  }

  if (v1 >= *(result + 16))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_100037808(result + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 304) * v1, *(v0 + 184));
  v8 = qword_100095AD8;
  *(v0 + 480) = qword_100095AD8;
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_100011CD0();

  v9 = swift_task_alloc();
  v10 = sub_100002648(v9);
  *v10 = v11;
  v12 = sub_100004708();

  return sub_10003D550(v12, v13);
}

uint64_t sub_1000414F4()
{
  sub_100002624();
  v1 = v0[66];
  v2 = v0[19];
  sub_100013D4C(v0[68], v0[67], 0);

  return _swift_task_switch(sub_100041584, v2, 0);
}

uint64_t sub_100041584()
{
  sub_100004680();
  v4 = *(v0 + 520);
  v5 = (*(v0 + 512) - 1) & *(v0 + 512);
  if (v5)
  {
LABEL_6:
    *(v0 + 520) = v4;
    *(v0 + 512) = v5;
    v7 = qword_100095AE8;
    *(v0 + 528) = qword_100095AE8;
    if (v7)
    {
      v8 = *(*(v0 + 504) + 48);
      sub_100007AA0();

      v1 = sub_100002948();
    }

    else
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    return _swift_task_switch(v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      v1 = *(v0 + 504);
      if (v6 >= (((1 << *(v0 + 572)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v1 + 8 * v6 + 56);
      ++v4;
      if (v5)
      {
        v4 = v6;
        goto LABEL_6;
      }
    }

    v9 = qword_100095AE8;
    *(v0 + 552) = qword_100095AE8;
    if (!v9)
    {
      goto LABEL_16;
    }

    sub_100042F58();

    v10 = swift_task_alloc();
    v11 = sub_10001500C(v10);
    *v11 = v12;
    v13 = sub_100004474(v11);

    return sub_100035664(v13);
  }
}

uint64_t sub_1000416BC()
{
  sub_100004680();
  sub_100003B0C();
  v2 = v1[70];
  v3 = v1[69];
  v4 = v1[19];
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;

  return _swift_task_switch(sub_1000417D8, v4, 0);
}

uint64_t sub_1000417D8()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000418B0()
{
  v35 = v0;
  v2 = v0[32];

  v3 = v0[35];
  v4 = v0[31];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100004D20();
    v8 = swift_slowAlloc();
    v34 = v8;
    sub_1000105B8(4.8149e-34);
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    sub_1000053A0(v12, v13, &v34);
    sub_100003ED4();
    *(v7 + 4) = v1;
    sub_1000132B0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_100005284(v8);
    sub_100001D1C();
    sub_100003D78();
  }

  else
  {
  }

  v19 = sub_100004F60();
  if (v3)
  {
    v0[65] = 0;
    v0[64] = v3;
    v25 = qword_100095AE8;
    v0[66] = qword_100095AE8;
    if (v25)
    {
      v26 = *(v19 + 48);
      sub_100007AA0(0);

      sub_100002948();
      sub_100008E70();

      return _swift_task_switch(v19, v20, v21);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return _swift_task_switch(v19, v20, v21);
  }

  sub_100017168();
  while (v24 != v23)
  {
    v22 = sub_1000105A4(v22);
  }

  v28 = qword_100095AE8;
  v0[69] = qword_100095AE8;
  if (!v28)
  {
    goto LABEL_17;
  }

  sub_100042F58();

  v29 = swift_task_alloc();
  v30 = sub_10001500C(v29);
  *v30 = v31;
  sub_100004474(v30);
  sub_100008E70();

  return sub_100035664(v32);
}

uint64_t sub_100041AA8()
{
  v66 = v0;
  v3 = v0[46];
  v4 = v0[42];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[22];

  sub_100037808(v6, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[22];
    v7 = swift_slowAlloc();
    v1 = sub_100005BFC();
    v65[0] = v1;
    *v7 = 136446466;
    v2 = *(v10 + 48);
    v11 = *(v10 + 56);

    sub_1000377AC(v10);
    sub_1000053A0(v2, v11, v65);

    sub_1000052F4();
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[7];
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    sub_1000053A0(v15, v16, v65);
    sub_100003ED4();
    *(v7 + 14) = v2;
    sub_100042F38(&_mh_execute_header, v18, v19, "failed to process events for session %{public}s: %{public}s");
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100001D1C();
  }

  else
  {
    v17 = v0[22];

    sub_1000377AC(v17);
  }

  sub_100009A50();
  if (v3 != v17)
  {
    sub_100006FF8();
    if (!v33)
    {
      sub_100003D94(v32);
      sub_100002958();
      if (v34)
      {
        v35 = *(v7 + 40);
        Hasher.init(_seed:)();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088(v36);
          if ((v37 & 1) == 0)
          {
            break;
          }

          sub_10000CD7C();
          v39 = v39 && v38 == v8;
          if (!v39)
          {
            sub_100003F7C();
            v36 = sub_100042F00();
            if ((v40 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          v43 = sub_100003B24(v42);
          v44 = v0[29];
          if (v43)
          {
            sub_100004D20();
            v65[0] = sub_100004414();
            sub_1000175DC(4.8751e-34);
            sub_1000377AC(v44);
            sub_1000053A0(v1, v2, v65);
            sub_100016724();
            *(v8 + 4) = v44;
            sub_1000028B8();
            _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v20 = sub_1000377AC(v44);
          }

          v59 = qword_100095AF0;
          v0[42] = qword_100095AF0;
          if (v59)
          {
            sub_100003CB0(dword_10006FD00);

            v60 = swift_task_alloc();
            v61 = sub_100004CC4(v60);
            *v61 = v62;
            sub_100001FAC(v61);
            sub_100016070();
            sub_100008E94();

            __asm { BR              X1 }
          }

          goto LABEL_39;
        }
      }

      sub_100011984();
      v50 = v0[12];

      v51 = qword_100095AE8;
      v0[41] = qword_100095AE8;
      if (v51)
      {
        sub_100005160();
        sub_100002948();
        sub_100008E94();

        return _swift_task_switch(v20, v21, v22);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v20 = sub_100011754();
  if (v23)
  {
    if (*(v20 + 16))
    {
      v20 = sub_100003B40(v20);
      v24 = qword_100095AD8;
      v0[60] = qword_100095AD8;
      if (v24)
      {
        sub_100011CD0();

        v25 = swift_task_alloc();
        v26 = sub_100002648(v25);
        *v26 = v27;
        sub_100004708(v26);
        sub_100008E94();

        return sub_10003D550(v28, v29);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v53 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (!v53)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v20, v21, v22);
  }

  v54 = swift_task_alloc();
  v55 = sub_100004D64(v54);
  *v55 = v56;
  sub_100009880();
  sub_100008E94();

  return sub_10003AF40(v57);
}

uint64_t sub_100041EC4()
{
  v67 = v0;
  v3 = v0[44];
  swift_unknownObjectRelease();
  v4 = v0[50];
  v5 = v0[47];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[22];

  sub_100037808(v7, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[22];
    v8 = swift_slowAlloc();
    v1 = sub_100005BFC();
    v66[0] = v1;
    *v8 = 136446466;
    v2 = *(v11 + 48);
    v12 = *(v11 + 56);

    sub_1000377AC(v11);
    sub_1000053A0(v2, v12, v66);

    sub_1000052F4();
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[7];
    v16 = Error.localizedDescription.getter();
    v18 = v17;
    sub_1000053A0(v16, v17, v66);
    sub_100003ED4();
    *(v8 + 14) = v2;
    sub_100042F38(&_mh_execute_header, v19, v20, "failed to process events for session %{public}s: %{public}s");
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100001D1C();
  }

  else
  {
    v18 = v0[22];

    sub_1000377AC(v18);
  }

  sub_100009A50();
  if (v4 != v18)
  {
    sub_100006FF8();
    if (!v34)
    {
      sub_100003D94(v33);
      sub_100002958();
      if (v35)
      {
        v36 = *(v8 + 40);
        Hasher.init(_seed:)();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088(v37);
          if ((v38 & 1) == 0)
          {
            break;
          }

          sub_10000CD7C();
          v40 = v40 && v39 == v9;
          if (!v40)
          {
            sub_100003F7C();
            v37 = sub_100042F00();
            if ((v41 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();
          v44 = sub_100003B24(v43);
          v45 = v0[29];
          if (v44)
          {
            sub_100004D20();
            v66[0] = sub_100004414();
            sub_1000175DC(4.8751e-34);
            sub_1000377AC(v45);
            sub_1000053A0(v1, v2, v66);
            sub_100016724();
            *(v9 + 4) = v45;
            sub_1000028B8();
            _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v21 = sub_1000377AC(v45);
          }

          v60 = qword_100095AF0;
          v0[42] = qword_100095AF0;
          if (v60)
          {
            sub_100003CB0(dword_10006FD00);

            v61 = swift_task_alloc();
            v62 = sub_100004CC4(v61);
            *v62 = v63;
            sub_100001FAC(v62);
            sub_100016070();
            sub_100008E94();

            __asm { BR              X1 }
          }

          goto LABEL_39;
        }
      }

      sub_100011984();
      v51 = v0[12];

      v52 = qword_100095AE8;
      v0[41] = qword_100095AE8;
      if (v52)
      {
        sub_100005160();
        sub_100002948();
        sub_100008E94();

        return _swift_task_switch(v21, v22, v23);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v21 = sub_100011754();
  if (v24)
  {
    if (*(v21 + 16))
    {
      v21 = sub_100003B40(v21);
      v25 = qword_100095AD8;
      v0[60] = qword_100095AD8;
      if (v25)
      {
        sub_100011CD0();

        v26 = swift_task_alloc();
        v27 = sub_100002648(v26);
        *v27 = v28;
        sub_100004708(v27);
        sub_100008E94();

        return sub_10003D550(v29, v30);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v54 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (!v54)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v21, v22, v23);
  }

  v55 = swift_task_alloc();
  v56 = sub_100004D64(v55);
  *v56 = v57;
  sub_100009880();
  sub_100008E94();

  return sub_10003AF40(v58);
}

uint64_t sub_1000422E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;
  v33 = v30[54];
  v34 = v30[31];
  sub_100037808(v30[30], v30[21]);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_100042F18();
    a11 = sub_100005BFC();
    *v37 = 136446466;
    v38 = *(v34 + 48);
    v39 = *(v34 + 56);

    v40 = sub_1000377AC(v34);
    sub_10000CE38(v40, v41);

    sub_100005494();
    v43 = v30[8];
    v42 = v30[9];
    v44 = v30[10];
    v45 = Error.localizedDescription.getter();
    v47 = v46;
    v48 = sub_1000053A0(v45, v46, &a11);

    *(v37 + 14) = v48;
    sub_1000132B0();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100003D78();

    swift_unknownObjectRelease();
  }

  else
  {
    v54 = v30[44];
    v47 = v30[21];
    swift_unknownObjectRelease();

    sub_1000377AC(v47);
  }

  sub_100009A50();
  if (v33 != v47)
  {
    sub_100006FF8();
    if (!v68)
    {
      sub_100003D94(v67);
      sub_100002958();
      if (v69)
      {
        sub_1000058D4();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088(v70);
          if ((v71 & 1) == 0)
          {
            break;
          }

          sub_10000CD7C();
          v73 = v73 && v72 == v35;
          if (!v73)
          {
            sub_100003F7C();
            v70 = sub_100042F00();
            if ((v74 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();
          v77 = sub_100003B24(v76);
          v78 = v30[29];
          if (v77)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v79 = sub_1000377AC(v78);
            sub_100002744(v79, v80);
            sub_100016724();
            *(v35 + 4) = v78;
            sub_1000028B8();
            _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v55 = sub_1000377AC(v78);
          }

          v95 = qword_100095AF0;
          v30[42] = qword_100095AF0;
          if (!v95)
          {
            goto LABEL_39;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v96 = swift_task_alloc();
          v97 = sub_100004CC4(v96);
          *v97 = v98;
          sub_100001FAC();
          sub_10000FF80();
          sub_10001248C();

          return v100(v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100011984();
      v86 = v30[12];

      v87 = qword_100095AE8;
      v30[41] = qword_100095AE8;
      if (v87)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v55, v56, v57);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v55 = sub_100011754();
  if (v58)
  {
    if (*(v55 + 16))
    {
      v55 = sub_100003B40(v55);
      v59 = qword_100095AD8;
      v30[60] = qword_100095AD8;
      if (v59)
      {
        sub_100011CD0();

        v60 = swift_task_alloc();
        v61 = sub_100002648(v60);
        *v61 = v62;
        sub_100004708(v61);
        sub_10001248C();

        return sub_10003D550(v63, v64);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v89 = qword_100095AD8;
  v30[32] = qword_100095AD8;
  if (!v89)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v55, v56, v57);
  }

  v90 = swift_task_alloc();
  v91 = sub_100004D64(v90);
  *v91 = v92;
  sub_100009880();
  sub_10001248C();

  return sub_10003AF40(v93);
}

uint64_t sub_1000426CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;
  v34 = v30[55];
  v33 = v30[56];

  v35 = v30[58];
  v36 = v30[31];
  sub_100037808(v30[30], v30[21]);
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = sub_100042F18();
    a11 = sub_100005BFC();
    *v39 = 136446466;
    v40 = *(v36 + 48);
    v41 = *(v36 + 56);

    v42 = sub_1000377AC(v36);
    sub_10000CE38(v42, v43);

    sub_100005494();
    v45 = v30[8];
    v44 = v30[9];
    v46 = v30[10];
    v47 = Error.localizedDescription.getter();
    v49 = v48;
    v50 = sub_1000053A0(v47, v48, &a11);

    *(v39 + 14) = v50;
    sub_1000132B0();
    _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100003D78();

    swift_unknownObjectRelease();
  }

  else
  {
    v56 = v30[44];
    v49 = v30[21];
    swift_unknownObjectRelease();

    sub_1000377AC(v49);
  }

  sub_100009A50();
  if (v35 != v49)
  {
    sub_100006FF8();
    if (!v70)
    {
      sub_100003D94(v69);
      sub_100002958();
      if (v71)
      {
        sub_1000058D4();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088(v72);
          if ((v73 & 1) == 0)
          {
            break;
          }

          sub_10000CD7C();
          v75 = v75 && v74 == v37;
          if (!v75)
          {
            sub_100003F7C();
            v72 = sub_100042F00();
            if ((v76 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();
          v79 = sub_100003B24(v78);
          v80 = v30[29];
          if (v79)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v81 = sub_1000377AC(v80);
            sub_100002744(v81, v82);
            sub_100016724();
            *(v37 + 4) = v80;
            sub_1000028B8();
            _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v57 = sub_1000377AC(v80);
          }

          v97 = qword_100095AF0;
          v30[42] = qword_100095AF0;
          if (!v97)
          {
            goto LABEL_39;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v98 = swift_task_alloc();
          v99 = sub_100004CC4(v98);
          *v99 = v100;
          sub_100001FAC();
          sub_10000FF80();
          sub_10001248C();

          return v102(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100011984();
      v88 = v30[12];

      v89 = qword_100095AE8;
      v30[41] = qword_100095AE8;
      if (v89)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v57, v58, v59);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v57 = sub_100011754();
  if (v60)
  {
    if (*(v57 + 16))
    {
      v57 = sub_100003B40(v57);
      v61 = qword_100095AD8;
      v30[60] = qword_100095AD8;
      if (v61)
      {
        sub_100011CD0();

        v62 = swift_task_alloc();
        v63 = sub_100002648(v62);
        *v63 = v64;
        sub_100004708(v63);
        sub_10001248C();

        return sub_10003D550(v65, v66);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v91 = qword_100095AD8;
  v30[32] = qword_100095AD8;
  if (!v91)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v57, v58, v59);
  }

  v92 = swift_task_alloc();
  v93 = sub_100004D64(v92);
  *v93 = v94;
  sub_100009880();
  sub_10001248C();

  return sub_10003AF40(v95);
}

uint64_t sub_100042AC0()
{
  v34 = v0;
  sub_1000377AC(v0[23]);
  v2 = v0[62];
  v3 = v0[31];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100004D20();
    v7 = swift_slowAlloc();
    v33 = v7;
    sub_1000105B8(4.8149e-34);
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = Error.localizedDescription.getter();
    sub_1000053A0(v11, v12, &v33);
    sub_100003ED4();
    *(v6 + 4) = v1;
    sub_1000132B0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_100005284(v7);
    sub_100001D1C();
    sub_100003D78();
  }

  else
  {
  }

  v18 = sub_100004F60();
  if (v2)
  {
    v0[65] = 0;
    v0[64] = v2;
    v24 = qword_100095AE8;
    v0[66] = qword_100095AE8;
    if (v24)
    {
      v25 = *(v18 + 48);
      sub_100007AA0(0);

      sub_100002948();
      sub_100008E70();

      return _swift_task_switch(v18, v19, v20);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return _swift_task_switch(v18, v19, v20);
  }

  sub_100017168();
  while (v23 != v22)
  {
    v21 = sub_1000105A4(v21);
  }

  v27 = qword_100095AE8;
  v0[69] = qword_100095AE8;
  if (!v27)
  {
    goto LABEL_17;
  }

  sub_100042F58();

  v28 = swift_task_alloc();
  v29 = sub_10001500C(v28);
  *v29 = v30;
  sub_100004474(v29);
  sub_100008E70();

  return sub_100035664(v31);
}

uint64_t sub_100042CDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100042D68;

  return sub_10003F734();
}

uint64_t sub_100042D68()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

unint64_t sub_100042E84(uint64_t a1)
{
  result = sub_100042EAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100042EAC()
{
  result = qword_10008F1D0;
  if (!qword_10008F1D0)
  {
    type metadata accessor for SubmitEagerEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F1D0);
  }

  return result;
}

uint64_t sub_100042F18()
{
  v2 = *(v0 + 352);
  v3 = *(v0 + 168);

  return swift_slowAlloc();
}

void sub_100042F38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100042F58()
{
  v2 = *(v0 + 504);
}

uint64_t sub_100042F70()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A48);
  sub_1000050E4(v0, qword_100095A48);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100042FF0()
{
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  [v1 setAllowsCellularAccess:0];
  [v1 setAllowsConstrainedNetworkAccess:0];
  [v1 setAllowsExpensiveNetworkAccess:0];
  [v1 setHTTPCookieAcceptPolicy:1];
  [v1 setHTTPCookieStorage:0];
  [v1 setRequestCachePolicy:1];
  [v1 setTimeoutIntervalForRequest:5.0];
  [v1 setURLCache:0];
  [v1 setURLCredentialStorage:0];
  [v1 setWaitsForConnectivity:0];
  v2 = objc_opt_self();
  *(v0 + 112) = [v2 sessionWithConfiguration:v1];
  [v1 setAllowsCellularAccess:1];
  [v1 setAllowsConstrainedNetworkAccess:1];
  [v1 setAllowsExpensiveNetworkAccess:1];
  v3 = [v2 sessionWithConfiguration:v1];

  *(v0 + 120) = v3;
  return v0;
}

uint64_t sub_100043198@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 != 1)
  {
    goto LABEL_8;
  }

  if (qword_10008DDC8 != -1)
  {
    swift_once();
  }

  v5 = qword_100095B08;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    v8 = type metadata accessor for MockHTTPSending();
    swift_allocObject();
    result = sub_10002F5FC(a1 & 1);
    a2[3] = v8;
    a2[4] = &off_100086F50;
    *a2 = result;
  }

  else
  {
LABEL_8:
    v10 = sub_100043A54();
    if (a1)
    {
      v11 = *(v2 + 120);
    }

    else
    {
      v11 = *(v2 + 112);
    }

    a2[3] = v10;
    a2[4] = &off_100086F20;
    *a2 = v11;

    return _objc_retain_x1();
  }

  return result;
}

uint64_t sub_100043314()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v5 = v4[26];
  v6 = v4[25];
  v7 = v4[24];
  v8 = v4[22];
  v9 = v4[21];
  v10 = v4[15];
  v11 = v4[12];
  v12 = *v1;
  sub_100001D58();
  *v13 = v12;
  v2[27] = v0;

  v9(v10, v11);

  if (v0)
  {
    v14 = v2[24];
    v15 = v2[7];

    v16 = sub_100043894;
    v17 = v15;
  }

  else
  {
    v17 = v2[7];
    v16 = sub_1000434F0;
  }

  return _swift_task_switch(v16, v17, 0);
}

uint64_t sub_1000434F0()
{
  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 136), *(v0 + 96));
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10(v2, v3);
}

uint64_t sub_1000435B8()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v5 = v4[33];
  v6 = v4[32];
  v7 = v4[31];
  v8 = v4[29];
  v9 = v4[28];
  v10 = v4[14];
  v11 = v4[12];
  v12 = *v1;
  sub_100001D58();
  *v13 = v12;
  v2[34] = v0;

  v7(v10, v11);

  if (v0)
  {
    v14 = v2[28];
    v15 = v2[7];

    return _swift_task_switch(sub_10004393C, v15, 0);
  }

  else
  {
    v16 = v2[30];
    v17 = v2[28];
    v19 = v2[16];
    v18 = v2[17];
    v21 = v2[14];
    v20 = v2[15];
    v24 = v2 + 10;
    v22 = v2[10];
    v23 = v24[1];

    v25 = v12[1];

    return v25(v16, v17);
  }
}

uint64_t sub_1000437F4()
{
  v1 = v0[18];

  v2 = v0[20];
  sub_100001FCC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100043894()
{
  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 136), *(v0 + 96));
  v2 = *(v0 + 216);
  sub_100001FCC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004393C()
{
  v1 = *(v0 + 272);
  sub_100001FCC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100043A04()
{
  sub_1000439D4();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100043A54()
{
  result = qword_10008F2B8;
  if (!qword_10008F2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008F2B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_100043B74(unsigned __int8 a1)
{
  sub_10001673C();
  Hasher._combine(_:)(a1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100043BB8()
{
  sub_10001673C();
  sub_1000039B8();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100043BF4()
{
  sub_10001673C();
  sub_1000105D8();
  return Hasher._finalize()();
}

Swift::Int sub_100043C60(uint64_t a1, void (*a2)(uint64_t))
{
  sub_10001673C();
  a2(a1);
  sub_1000027A8();

  return Hasher._finalize()();
}

uint64_t sub_100043CE4(uint64_t a1, char a2)
{
  sub_10001E968(a2);
  String.hash(into:)();
}

uint64_t sub_100043D38()
{
  String.hash(into:)();
}

Swift::Int sub_100043E5C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100043EA0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100043F18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_1000027A8();

  return Hasher._finalize()();
}

Swift::Int sub_100043F6C()
{
  Hasher.init(_seed:)();
  sub_1000105D8();
  return Hasher._finalize()();
}

Swift::Int sub_100043FAC()
{
  Hasher.init(_seed:)();
  sub_1000039B8();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100043FF4(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_10004400C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100043FF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100044038@<X0>(uint64_t *a1@<X8>)
{
  result = XPCMessage.MessageType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_100044068()
{
  result = qword_10008F2C0;
  if (!qword_10008F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F2C0);
  }

  return result;
}

uint64_t sub_1000440BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for EventValue();
  v8 = sub_100001EDC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000286C();
  __chkstk_darwin(v13);
  sub_100011CDC();
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  sub_10000BE28(a1, v83);
  if (sub_10000CD90())
  {
    v17 = *(&v81 + 1);
    *a2 = v81;
    a2[1] = v17;
    sub_100008D14();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return sub_100005284(v83);
  }

  v75 = v16;
  v76 = v3;
  sub_100045910();
  if (sub_10000CD90())
  {
    v18 = v81;
    if (kCFBooleanTrue)
    {
      v19 = v81 == kCFBooleanTrue;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {

      *a2 = 1;
      goto LABEL_15;
    }

    if (kCFBooleanFalse && v18 == kCFBooleanFalse)
    {
      *a2 = 0;
LABEL_15:
      sub_100008D14();
      goto LABEL_16;
    }
  }

  if (sub_10000CD90() || sub_10000CD90() || sub_10000CD90())
  {
    *a2 = v81;
    sub_100008D14();
    goto LABEL_16;
  }

  sub_1000228D4(&qword_10008F2D0, &qword_10006EEA8);
  v21 = swift_dynamicCast();
  v73 = v10;
  if (v21)
  {
    v68 = a2;
    v22 = v84;
    v23 = *(v84 + 16);
    v69 = v7;
    v24 = Dictionary.init(minimumCapacity:)();
    v25 = 0;
    v27 = v22 + 64;
    v26 = *(v22 + 64);
    v70 = v22;
    v28 = *(v22 + 32);
    sub_100009754();
    v31 = v30 & v29;
    v33 = (v32 + 63) >> 6;
    v71 = v33;
    v72 = v22 + 64;
    if ((v30 & v29) == 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v34 = v25;
LABEL_27:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v34 << 6);
      v37 = (*(v70 + 48) + 16 * v36);
      v39 = *v37;
      v38 = v37[1];
      sub_10000BE28(*(v70 + 56) + 32 * v36, v77);
      *&v78 = v39;
      *(&v78 + 1) = v38;
      sub_1000243C8(v77, &v79);

LABEL_28:
      v81 = v78;
      v82[0] = v79;
      v82[1] = v80;
      v40 = *(&v78 + 1);
      if (!*(&v78 + 1))
      {

        *v68 = v24;
        goto LABEL_16;
      }

      v41 = v81;
      sub_1000243C8(v82, &v78);
      sub_1000440BC(&v78);
      if (v4)
      {
        sub_100005284(&v78);

        return sub_100005284(v83);
      }

      v74 = 0;
      sub_100004734();
      sub_10000B670();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v77[0] = v24;
      v43 = sub_100003BC0();
      v45 = *(v24 + 16);
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v48 = v43;
      v49 = v44;
      sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v47))
      {
        v50 = sub_100003BC0();
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_58;
        }

        v48 = v50;
        if ((v49 & 1) == 0)
        {
LABEL_34:
          v24 = *&v77[0];
          *(*&v77[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v52 = (*(v24 + 48) + 16 * v48);
          *v52 = v41;
          v52[1] = v40;
          sub_100005370();
          sub_100004734();
          sub_10000B670();
          sub_100005284(&v78);
          v53 = *(v24 + 16);
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_57;
          }

          *(v24 + 16) = v55;
          goto LABEL_38;
        }
      }

      else if ((v49 & 1) == 0)
      {
        goto LABEL_34;
      }

      v24 = *&v77[0];
      sub_100005370();
      sub_10000FF94();
      sub_100045B58();
      sub_100005284(&v78);
LABEL_38:
      v4 = v74;
      v27 = v72;
      v33 = v71;
      if (!v31)
      {
LABEL_23:
        while (1)
        {
          v34 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v34 >= v33)
          {
            v31 = 0;
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            goto LABEL_28;
          }

          v31 = *(v27 + 8 * v34);
          ++v25;
          if (v31)
          {
            v25 = v34;
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_55;
      }
    }
  }

  sub_1000228D4(&qword_10008F2D8, &qword_10006EEB0);
  if (!swift_dynamicCast())
  {
    sub_100022DFC();
    swift_allocError();
    swift_willThrow();
    return sub_100005284(v83);
  }

  v68 = a2;
  v69 = v7;
  v56 = v78;
  v57 = *(v78 + 16);
  sub_10002316C();
  v59 = v58;
  v60 = 0;
  v61 = *(v56 + 16);
  for (i = v56 + 32; ; i += 32)
  {
    if (v61 == v60)
    {

      *v68 = v59;
      goto LABEL_16;
    }

    if (v60 >= *(v56 + 16))
    {
      break;
    }

    sub_10000BE28(i, &v81);
    sub_1000440BC(&v81);
    if (v4)
    {
      sub_100005284(&v81);

      return sub_100005284(v83);
    }

    sub_100005284(&v81);
    v63 = *(v59 + 16);
    if (v63 >= *(v59 + 24) >> 1)
    {
      sub_10002316C();
      v59 = v66;
    }

    *(v59 + 16) = v63 + 1;
    v64 = v59 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v65 = *(v73 + 72);
    sub_100004734();
    sub_10000B670();
    ++v60;
    v4 = 0;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000447A8(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v5 = type metadata accessor for UUID();
  v6 = sub_100001EDC(v5);
  v74 = v7;
  v75 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100001EAC();
  v71 = v11 - v10;
  v12 = type metadata accessor for EventValue();
  v13 = sub_100003C44(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000286C();
  v72 = (v16 - v17);
  sub_1000029A4();
  v19 = __chkstk_darwin(v18);
  v21 = (&v70 - v20);
  __chkstk_darwin(v19);
  v73 = &v70 - v22;
  sub_1000029A4();
  __chkstk_darwin(v23);
  sub_100011CDC();
  __chkstk_darwin(v24);
  sub_100004CD0();
  v26 = __chkstk_darwin(v25);
  v28 = (&v70 - v27);
  __chkstk_darwin(v26);
  sub_100012314();
  __chkstk_darwin(v29);
  v31 = (&v70 - v30);
  v32 = sub_1000228D4(&unk_10008F480, &qword_10006F108);
  sub_100001D80(v32);
  v34 = *(v33 + 64);
  sub_100003EC8();
  v36 = __chkstk_darwin(v35);
  v38 = &v70 - v37;
  v39 = (&v70 + *(v36 + 56) - v37);
  sub_1000096D4();
  sub_1000096D4();
  sub_100004EA4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 1)
      {
        goto LABEL_31;
      }

      v49 = *v4;
      goto LABEL_19;
    case 2u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 2)
      {
        goto LABEL_31;
      }

      v49 = *v28;
LABEL_19:
      v50 = v49 == *v39;
      goto LABEL_20;
    case 3u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 3)
      {
        goto LABEL_31;
      }

      v50 = *v3 == *v39;
LABEL_20:
      v48 = v50;
      goto LABEL_28;
    case 4u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 4)
      {
        goto LABEL_31;
      }

      v46 = *v2 ^ *v39;
      sub_100001FE8();
      sub_10000A80C(v38, v47);
      v48 = v46 ^ 1;
      return v48 & 1;
    case 5u:
      sub_1000098A8();
      v57 = v73;
      sub_1000096D4();
      if (sub_10000917C() != 5)
      {
        (*(v74 + 8))(v57, v75);
        goto LABEL_31;
      }

      v59 = v74;
      v58 = v75;
      v60 = v71;
      (*(v74 + 32))(v71, v39, v75);
      v48 = static UUID.== infix(_:_:)();
      v61 = *(v59 + 8);
      v61(v60, v58);
      v61(v57, v58);
LABEL_28:
      sub_100001FE8();
      sub_10000A80C(v38, v66);
      return v48 & 1;
    case 6u:
      sub_1000098A8();
      sub_1000096D4();
      v62 = *v21;
      if (sub_10000917C() != 6)
      {
        goto LABEL_29;
      }

      v63 = *v39;
      v64 = sub_100007C1C();
      v56 = sub_100045004(v64, v65);
      goto LABEL_27;
    case 7u:
      sub_1000098A8();
      v51 = v72;
      sub_1000096D4();
      v52 = *v51;
      if (sub_10000917C() != 7)
      {
        goto LABEL_29;
      }

      v53 = *v39;
      v54 = sub_100007C1C();
      v56 = sub_1000451AC(v54, v55);
LABEL_27:
      v48 = v56;

      goto LABEL_28;
    default:
      sub_1000098A8();
      sub_1000096D4();
      v41 = *v31;
      v40 = v31[1];
      if (sub_10000917C())
      {
LABEL_29:

LABEL_31:
        sub_100005000(v38, &unk_10008F480, &qword_10006F108);
        goto LABEL_32;
      }

      if (v41 == *v39 && v40 == *(v39 + 1))
      {
        v68 = *(v39 + 1);
      }

      else
      {
        v43 = *(v39 + 1);
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
          sub_100001FE8();
          sub_10000A80C(v38, v45);
LABEL_32:
          v48 = 0;
          return v48 & 1;
        }
      }

      sub_100001FE8();
      sub_10000A80C(v38, v69);
      v48 = 1;
      return v48 & 1;
  }
}

uint64_t sub_100044C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v12, v7);
  v13 = type metadata accessor for XPCObject();
  result = sub_100002694(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000B09C(v7);
    v15 = type metadata accessor for EventValue();
    result = sub_100002694(v11, 1, v15);
    if (result != 1)
    {
      sub_1000455CC(sub_10002316C);
      v16 = *(*a3 + 16);
      sub_100045640(v16, sub_10002316C);
      *(*a3 + 16) = v16 + 1;
      v17 = *(*(v15 - 8) + 80);
      v18 = *(*(v15 - 8) + 72);
      sub_10000B670();
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100044E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_100044F10@<X0>(uint64_t *a1@<X8>)
{
  result = XPCIncomingConnection.init(conn:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100044F38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100044ED0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100044F60(uint64_t a1)
{
  v2 = sub_1000164A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044F9C(uint64_t a1)
{
  v2 = sub_1000164A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100045004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1000096D4();
        sub_1000096D4();
        v17 = sub_1000447A8(v11, v8);
        sub_10000A80C(v8, type metadata accessor for EventValue);
        sub_10000A80C(v11, type metadata accessor for EventValue);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1000451AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v18 = (&v50 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = a1;
  v52 = a2;
  v19 = 0;
  v20 = *(a1 + 64);
  v50 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v54 = &v50 - v17;
  while (v23)
  {
    v55 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
    v26 = v53;
LABEL_13:
    v29 = (*(v51 + 48) + 16 * v25);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v51 + 56) + *(v5 + 72) * v25;
    sub_1000096D4();
    v33 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    v34 = *(v33 + 48);
    *v26 = v30;
    v26[1] = v31;
    sub_10000B670();
    sub_1000026BC(v26, 0, 1, v33);

    v18 = v54;
LABEL_14:
    sub_1000164F4(v26, v18);
    v35 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    v36 = sub_100002694(v18, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = v11;
    v39 = v5;
    v40 = *(v35 + 48);
    v42 = *v18;
    v41 = v18[1];
    sub_10000B670();
    v43 = v52;
    sub_100003BC0();
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      sub_10000A80C(v9, type metadata accessor for EventValue);
      return 0;
    }

    v46 = *(v43 + 56);
    v5 = v39;
    v47 = *(v39 + 72);
    v11 = v38;
    sub_1000096D4();
    v48 = sub_1000447A8(v38, v9);
    sub_10000A80C(v38, type metadata accessor for EventValue);
    result = sub_10000A80C(v9, type metadata accessor for EventValue);
    v18 = v54;
    v23 = v55;
    if ((v48 & 1) == 0)
    {
      return v37;
    }
  }

  v26 = v53;
  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v49 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
      sub_1000026BC(v26, 1, 1, v49);
      v55 = 0;
      goto LABEL_14;
    }

    v28 = *(v50 + 8 * v27);
    ++v19;
    if (v28)
    {
      v55 = (v28 - 1) & v28;
      v25 = __clz(__rbit64(v28)) | (v27 << 6);
      v19 = v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000455CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100045640(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1000456C4@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *v2;
  v7 = sub_100003BC0();
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    v12 = *(*v4 + 24);
    v13 = sub_100008D14();
    sub_1000228D4(v13, v14);
    sub_100004D70();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v15 = *(*(v24 + 48) + 16 * v9 + 8);

    v16 = *(v24 + 56);
    v17 = a1(0);
    sub_100003C44(v17);
    v19 = *(v18 + 72);
    sub_10000B670();
    _NativeDictionary._delete(at:)();
    *v4 = v24;
    v20 = a2;
    v21 = 0;
    v22 = v17;
  }

  else
  {
    v22 = a1(0);
    v20 = a2;
    v21 = 1;
  }

  return sub_1000026BC(v20, v21, 1, v22);
}

uint64_t sub_100045848()
{
  v3 = v0;
  v4 = *v0;
  v5 = sub_100003BC0();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000B7C8();
  sub_1000228D4(&qword_10008EE08, &qword_10006E898);
  sub_100004D70();
  v9 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v2);
  sub_100008DA8(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v17 = *(*(v1 + 56) + 8 * v7);
  sub_1000228D4(&qword_10008F3B0, &unk_10006E8A0);
  _NativeDictionary._delete(at:)();
  *v3 = v1;
  return v17;
}

unint64_t sub_100045910()
{
  result = qword_10008F2C8;
  if (!qword_10008F2C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008F2C8);
  }

  return result;
}

uint64_t sub_100045954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100003BC0();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_1000228D4(&qword_10008F388, &qword_10006EEC8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100003BC0();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = *(*(type metadata accessor for CachedStorebag(0) - 8) + 72);
    return sub_100045B58();
  }

  else
  {
    sub_10000B9D0(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_100045ADC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100045B2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_100045B58()
{
  v1 = sub_1000175F8();
  v3 = v2(v1);
  sub_100003C44(v3);
  v5 = *(v4 + 40);
  v6 = sub_100004EA4();
  v7(v6);
  return v0;
}

__n128 sub_100045BBC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100045BC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100045C08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100045C80()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100045D3C();
    if (v1 <= 0x3F)
    {
      sub_100045D94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100045D3C()
{
  if (!qword_10008F438)
  {
    type metadata accessor for EventValue();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10008F438);
    }
  }
}

void sub_100045D94()
{
  if (!qword_10008F440)
  {
    type metadata accessor for EventValue();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10008F440);
    }
  }
}

unint64_t sub_100045E04()
{
  result = qword_10008F470;
  if (!qword_10008F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F470);
  }

  return result;
}

unint64_t sub_100045E5C()
{
  result = qword_10008F478;
  if (!qword_10008F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F478);
  }

  return result;
}

uint64_t sub_100045ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 233))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100045F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045F98(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100008DE4(a1, a1[3]);
  sub_100003DF4();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100008DE4(v12, v12[3]);
    sub_100003DF4();
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (!v5)
    {
      v4 = 1;
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      v4 = 0;
LABEL_10:
      sub_100005284(v12);
      sub_100005284(a1);
      return v4;
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    v10 = *(sub_1000228D4(&qword_10008F508, &qword_10006F4B8) + 48);
    *v9 = &unk_100087B80;
    v11 = a1[4];
    v4 = sub_100008DE4(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
    swift_willThrow();
    sub_100005284(v12);
  }

  sub_100005284(a1);
  return v4;
}

uint64_t sub_10004614C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000461A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10004627C(char a1)
{
  if (a1)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x7972746E756F63;
  }
}

double sub_1000462B8(uint64_t *a1)
{
  v4 = sub_1000228D4(&qword_10008F510, &qword_10006F4C0);
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v15[-v10];
  v12 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_1000469E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
    v15[15] = 0;
    sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v14;
    (*(v7 + 8))(v11, v4);
  }

  sub_100005284(a1);
  return v2;
}

uint64_t sub_1000464AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100045F98(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100046500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10004614C();
  *a2 = result;
  return result;
}

unint64_t sub_100046530@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001E968(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10004655C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000461A0();
  *a1 = result;
  return result;
}

uint64_t sub_100046590(uint64_t a1)
{
  v2 = sub_10001E35C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000465CC(uint64_t a1)
{
  v2 = sub_10001E35C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100046608(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100046620();
  }

  return result;
}

unint64_t sub_10004662C()
{
  result = qword_10008F4C8;
  if (!qword_10008F4C8)
  {
    sub_100025D78(&qword_10008F4C0, &qword_10006F250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4C8);
  }

  return result;
}

unint64_t sub_100046690()
{
  result = qword_10008F4E0;
  if (!qword_10008F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4E0);
  }

  return result;
}

uint64_t sub_1000466F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100046730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100046788()
{
  result = qword_10008F4E8;
  if (!qword_10008F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4E8);
  }

  return result;
}

unint64_t sub_1000467E0()
{
  result = qword_10008F4F0;
  if (!qword_10008F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4F0);
  }

  return result;
}

uint64_t sub_10004683C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000461A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100046864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100046274();
  *a1 = result;
  return result;
}

uint64_t sub_10004688C(uint64_t a1)
{
  v2 = sub_1000469E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000468C8(uint64_t a1)
{
  v2 = sub_1000469E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100046904(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000462B8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_100046938()
{
  result = qword_10008F4F8;
  if (!qword_10008F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4F8);
  }

  return result;
}

unint64_t sub_100046990()
{
  result = qword_10008F500;
  if (!qword_10008F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F500);
  }

  return result;
}

unint64_t sub_1000469E4()
{
  result = qword_10008F518;
  if (!qword_10008F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F518);
  }

  return result;
}

unint64_t sub_100046A4C()
{
  result = qword_10008F520;
  if (!qword_10008F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F520);
  }

  return result;
}

unint64_t sub_100046AA4()
{
  result = qword_10008F528;
  if (!qword_10008F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F528);
  }

  return result;
}

unint64_t sub_100046AFC()
{
  result = qword_10008F530;
  if (!qword_10008F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F530);
  }

  return result;
}

uint64_t sub_100046B64()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006F5D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = String.init(cString:)();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v20 + v21) = XPC_ACTIVITY_INTERVAL_1_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = &v4[v1];
  v23 = (v22 + *(v0 + 48));
  *v22 = XPC_ACTIVITY_GROUP_NAME;
  *v23 = 0xD00000000000001DLL;
  v23[1] = 0x8000000100071DE0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
  *(v24 + v25) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_DISK_INTENSIVE)
  {
    v26 = *(v0 + 48);
    v27 = (v4 + 10 * v1);
    *v27 = XPC_ACTIVITY_DISK_INTENSIVE;
    *(v27 + v26) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
    sub_100038DC4();
    result = Dictionary.init(dictionaryLiteral:)();
    qword_100095A60 = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100046EFC()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A68);
  sub_1000050E4(v0, qword_100095A68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100046F78()
{
  sub_100004680();
  v1[6] = v0;
  v2 = type metadata accessor for Date();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100047040, v0, 0);
}

void sub_100047040()
{
  v1 = qword_100095AD8;
  v0[11] = qword_100095AD8;
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[7];
    v5 = v0[8];

    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    v6 = *(v5 + 8);
    v0[12] = v6;
    v0[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_10004714C;
    v8 = v0[10];

    sub_10003E488(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004714C()
{
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  v8 = v2[11];
  v9 = v2[10];
  v10 = v2[7];
  *v4 = *v1;
  *(v3 + 120) = v0;

  v7(v9, v10);

  v11 = v2[6];
  if (v0)
  {
    v12 = sub_1000474E0;
  }

  else
  {
    v12 = sub_1000472FC;
  }

  return _swift_task_switch(v12, v11, 0);
}

void sub_1000472FC()
{
  v1 = qword_100095AD8;
  *(v0 + 128) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1000473A4;

    sub_10003EE34(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000473A4()
{
  sub_100004680();
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_100001D58();
  *v7 = v6;
  v2[18] = v0;

  if (v0)
  {
    v8 = v2[6];

    return _swift_task_switch(sub_100047668, v8, 0);
  }

  else
  {
    v9 = v2[16];

    v11 = v2[9];
    v10 = v2[10];

    sub_100001D4C();

    return v12();
  }
}

uint64_t sub_1000474E0()
{
  v20 = v0;
  v1 = v0[15];
  if (qword_10008DD78 != -1)
  {
    sub_1000098E4();
  }

  v2 = type metadata accessor for Logger();
  sub_1000050E4(v2, qword_100095A68);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    sub_100003970(4.8751e-34);
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000053A0(v10, v11, &v19);

    *(v5 + 4) = v12;
    sub_10000443C(&_mh_execute_header, v13, v14, "failed to delete outdated sessions: %{public}s");
    sub_100005284(v6);
    sub_100001D1C();
    sub_100001D1C();
  }

  else
  {
  }

  v16 = v0[9];
  v15 = v0[10];

  sub_100001D4C();

  return v17();
}

uint64_t sub_100047668()
{
  v21 = v0;
  v1 = v0[16];

  v2 = v0[18];
  if (qword_10008DD78 != -1)
  {
    sub_1000098E4();
  }

  v3 = type metadata accessor for Logger();
  sub_1000050E4(v3, qword_100095A68);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    sub_100003970(4.8751e-34);
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000053A0(v11, v12, &v20);

    *(v6 + 4) = v13;
    sub_10000443C(&_mh_execute_header, v14, v15, "failed to delete outdated sessions: %{public}s");
    sub_100005284(v7);
    sub_100001D1C();
    sub_100001D1C();
  }

  else
  {
  }

  v17 = v0[9];
  v16 = v0[10];

  sub_100001D4C();

  return v18();
}

uint64_t sub_10004781C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000478A8;

  return sub_100046F78();
}

uint64_t sub_1000478A8()
{
  sub_100004680();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100001D58();
  *v3 = v2;

  sub_100001D4C();

  return v4();
}

uint64_t sub_100047990()
{
  if (qword_10008DD70 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100047A08(uint64_t a1)
{
  result = sub_100047A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100047A30()
{
  result = qword_10008F5E0;
  if (!qword_10008F5E0)
  {
    type metadata accessor for CacheCleanupActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F5E0);
  }

  return result;
}

uint64_t sub_100047A90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100047AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100047B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = static Hasher._hash(seed:_:)();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

uint64_t sub_100047BB8()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006CAC0;
  v4 = v3 + v2;
  v5 = (v3 + v2 + *(v0 + 48));
  *(v3 + v2) = XPC_ACTIVITY_PRIORITY;
  *v5 = String.init(cString:)();
  v5[1] = v6;
  type metadata accessor for XPCObject();
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_POWER_NAP)
  {
    v8 = (v4 + v1);
    v9 = *(v0 + 48);
    *v8 = XPC_ACTIVITY_POWER_NAP;
    *(v8 + v9) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (XPC_ACTIVITY_POST_INSTALL)
    {
      v10 = *(v0 + 48);
      v11 = (v4 + 2 * v1);
      *v11 = XPC_ACTIVITY_POST_INSTALL;
      *(v11 + v10) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
      sub_100038DC4();
      result = Dictionary.init(dictionaryLiteral:)();
      qword_100095A80 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100047D78()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A88);
  sub_1000050E4(v0, qword_100095A88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100047E20()
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100047F9C, v0, 0);
}

uint64_t sub_100047F9C()
{
  v165 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v145 = [objc_opt_self() defaultManager];
  v149 = (v2 + 8);
  v150 = (v2 + 104);
  HIDWORD(v148) = enum case for URL.DirectoryHint.isDirectory(_:);
  v161 = (v1 + 8);
  v152 = (v1 + 16);
  v3 = &off_100086068;
  v4 = 3;
  *&v5 = 136446210;
  v154 = v5;
  *&v5 = 136446466;
  v144 = v5;
  v160 = v0;
  do
  {
    v156 = v4;
    v158 = v3;
    v7 = v0[17];
    v6 = v0[18];
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[9];
    v11 = *(v3 - 1);
    v12 = *v3;

    v13 = NSHomeDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    v160[5] = v11;
    v0 = v160;
    v160[6] = v12;
    (*v150)(v9, HIDWORD(v148), v10);
    sub_10001F5A8();
    URL.appending<A>(path:directoryHint:)();
    (*v149)(v9, v10);
    v14 = *v161;
    (*v161)(v7, v8);

    v15 = URL.checkResourceIsReachable()();
    v151 = v16;
    if (v16)
    {

LABEL_9:
      if (qword_10008DD88 != -1)
      {
        sub_100009904();
        swift_once();
      }

      v36 = v160[18];
      v37 = v160[15];
      v38 = v160[12];
      v39 = type metadata accessor for Logger();
      sub_1000050E4(v39, qword_100095A88);
      (*v152)(v37, v36, v38);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      v42 = os_log_type_enabled(v40, v41);
      v16 = v160[18];
      v43 = v160[15];
      v44 = v160[12];
      if (v42)
      {
        v45 = sub_100004D20();
        v46 = swift_slowAlloc();
        v164[0] = v46;
        *v45 = v154;
        v146 = URL.path.getter();
        v147 = v16;
        v48 = v47;
        v16 = v161;
        v14(v43, v44);
        v49 = sub_1000053A0(v146, v48, v164);

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v40, v41, "skipping %{public}s", v45, 0xCu);
        sub_100005284(v46);
        sub_100001D1C();
        sub_100001D1C();

        v14(v147, v44);
        goto LABEL_21;
      }

LABEL_14:
      v14(v43, v44);
      v14(v16, v44);
      goto LABEL_21;
    }

    if (!v15)
    {
      goto LABEL_9;
    }

    if (qword_10008DD88 != -1)
    {
      sub_100009904();
      swift_once();
    }

    v17 = v160[18];
    v18 = v160[16];
    v19 = v160[12];
    v20 = type metadata accessor for Logger();
    v21 = sub_1000050E4(v20, qword_100095A88);
    v22 = *v152;
    (*v152)(v18, v17, v19);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v160[16];
    v27 = v160[12];
    if (v25)
    {
      v28 = sub_100004D20();
      v147 = v21;
      v29 = swift_slowAlloc();
      v164[0] = v29;
      *v28 = v154;
      v146 = v22;
      v30 = URL.path.getter();
      v16 = v14;
      v32 = v31;
      (v16)(v26, v27);
      v33 = v30;
      v22 = v146;
      v34 = sub_1000053A0(v33, v32, v164);
      v14 = v16;

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "removing %{public}s", v28, 0xCu);
      sub_100005284(v29);
      sub_100001D1C();
      sub_100004664();
    }

    else
    {

      v14(v26, v27);
    }

    v50 = v160[18];
    URL._bridgeToObjectiveC()(v35);
    v52 = v51;
    v160[7] = 0;
    v53 = [v145 removeItemAtURL:v51 error:v160 + 7];

    v54 = v160[7];
    v55 = v160[18];
    if (v53)
    {
      v44 = v160[12];
      v56 = v54;
      v57 = v55;
      v58 = v44;
    }

    else
    {
      v59 = v160[14];
      v60 = v160[12];
      v61 = v54;
      v62 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v151 = v62;
      v22(v59, v55, v60);
      swift_errorRetain();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      v65 = os_log_type_enabled(v63, v64);
      v16 = v160[18];
      v43 = v160[14];
      v44 = v160[12];
      if (!v65)
      {

        goto LABEL_14;
      }

      v66 = swift_slowAlloc();
      v164[0] = swift_slowAlloc();
      *v66 = v144;
      v146 = v44;
      v147 = v16;
      v67 = URL.path.getter();
      v68 = v44;
      v44 = v69;
      v14(v43, v68);
      v70 = sub_1000053A0(v67, v44, v164);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2082;
      swift_getErrorValue();
      v72 = v160[2];
      v71 = v160[3];
      v73 = v160[4];
      v74 = Error.localizedDescription.getter();
      v16 = sub_1000053A0(v74, v75, v164);

      *(v66 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v63, v64, "failed removing %{public}s: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
      sub_100001D1C();
      sub_100001D1C();

      v58 = v146;
      v57 = v147;
    }

    v14(v57, v58);
LABEL_21:
    v3 = v158 + 2;
    v4 = v156 - 1;
  }

  while (v156 != 1);
  if (qword_10008DDC8 != -1)
  {
LABEL_62:
    swift_once();
  }

  v76 = [qword_100095B08 dictionaryRepresentation];
  v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v78 = v77 + 64;
  v79 = -1 << *(v77 + 32);
  if (-v79 < 64)
  {
    v80 = ~(-1 << -v79);
  }

  else
  {
    v80 = -1;
  }

  v81 = v80 & *(v77 + 64);
  v82 = (63 - v79) >> 6;

  v83 = 0;
  v157 = v77;
  v159 = v82;
  v153 = v77 + 64;
LABEL_29:
  while (v81)
  {
LABEL_34:
    v85 = (*(v77 + 48) + ((v83 << 10) | (16 * __clz(__rbit64(v81)))));
    v86 = *v85;
    v87 = v85[1];
    v88 = qword_10008DD88;

    if (v88 != -1)
    {
      sub_100009904();
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    v90 = sub_1000050E4(v89, qword_100095A88);

    v162 = v90;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v91, v92))
    {
      sub_100004D20();
      v93 = sub_100004414();
      *(v16 + 4) = sub_100002018(v93, v94, v95, v96, v97, v98, v99, v100, v144, *(&v144 + 1), v145, v146, v147, v148, v149, v150, v151, v153, v154, *(&v154 + 1), v155, v157, v159, v160, v162, v163, v164[0]);
      _os_log_impl(&_mh_execute_header, v91, v92, "default set: %{public}s", v16, 0xCu);
      sub_100005284(v44);
      sub_100004664();
      sub_100001D1C();
    }

    if (qword_10008DD90 != -1)
    {
      swift_once();
    }

    v81 &= v81 - 1;
    v101 = qword_100095AA0;
    if (*(qword_100095AA0 + 16))
    {
      v102 = *(qword_100095AA0 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v103 = Hasher._finalize()();
      v16 = ~(-1 << *(v101 + 32));
      while (1)
      {
        v44 = v103 & v16;
        if (((*(v101 + 56 + (((v103 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v103 & v16)) & 1) == 0)
        {
          break;
        }

        v104 = (*(v101 + 48) + 16 * v44);
        if (*v104 != v86 || v104[1] != v87)
        {
          v106 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v103 = v44 + 1;
          if ((v106 & 1) == 0)
          {
            continue;
          }
        }

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v107, v108))
        {
          sub_100004D20();
          v109 = sub_100004414();
          *(v16 + 4) = sub_100002018(v109, v110, v111, v112, v113, v114, v115, v116, v144, *(&v144 + 1), v145, v146, v147, v148, v149, v150, v151, v153, v154, *(&v154 + 1), v155, v157, v159, v160, v162, v163, v164[0]);
          _os_log_impl(&_mh_execute_header, v107, v108, "removing default %{public}s", v16, 0xCu);
          sub_100005284(v44);
          sub_100004664();
          sub_100001D1C();
        }

        v117 = qword_100095B08;
        v118 = String._bridgeToObjectiveC()();

        [v117 removeObjectForKey:v118];

        v82 = v159;
        goto LABEL_29;
      }
    }

    v119 = &unk_100086108;
    v120 = 3;
    do
    {
      v122 = *(v119 - 1);
      v121 = *v119;

      v123._countAndFlagsBits = v122;
      v123._object = v121;
      LOBYTE(v122) = String.hasPrefix(_:)(v123);

      if (v122)
      {

        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v124, v125))
        {
          sub_100004D20();
          v126 = sub_100004414();
          *(v16 + 4) = sub_100002018(v126, v127, v128, v129, v130, v131, v132, v133, v144, *(&v144 + 1), v145, v146, v147, v148, v149, v150, v151, v153, v154, *(&v154 + 1), v155, v157, v159, v160, v162, v163, v164[0]);
          _os_log_impl(&_mh_execute_header, v124, v125, "removing default %{public}s", v16, 0xCu);
          sub_100005284(v44);
          sub_100004664();
          sub_100001D1C();
        }

        v134 = qword_100095B08;
        v135 = String._bridgeToObjectiveC()();
        [v134 removeObjectForKey:v135];
      }

      v119 += 2;
      --v120;
    }

    while (v120);

    v77 = v157;
    v82 = v159;
    v78 = v153;
  }

  while (1)
  {
    v84 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v84 >= v82)
    {
      break;
    }

    v81 = *(v78 + 8 * v84);
    ++v83;
    if (v81)
    {
      v83 = v84;
      goto LABEL_34;
    }
  }

  v136 = v160[17];
  v137 = v160[18];
  v139 = v160[15];
  v138 = v160[16];
  v140 = v160[14];
  v141 = v160[11];

  v142 = v160[1];

  return v142();
}

uint64_t sub_100048BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001BF00;

  return sub_100047E20();
}

uint64_t sub_100048C6C()
{
  if (qword_10008DD80 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100048CE8(uint64_t a1)
{
  result = sub_100048D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100048D10()
{
  result = qword_10008F698;
  if (!qword_10008F698)
  {
    type metadata accessor for PostInstallActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F698);
  }

  return result;
}

uint64_t sub_100048D84()
{
  v1 = *(v0 + 16);
  if (type metadata accessor for SubmitEventsActivity() == v1)
  {
    v3 = sub_10000FFAC();
    swift_defaultActor_initialize();
    sub_1000044BC();
  }

  else if (type metadata accessor for RefreshStorebagsActivity() == v1)
  {
    v3 = sub_10000FFAC();
    swift_defaultActor_initialize();
    v4 = &unk_10008F890;
    v5 = type metadata accessor for RefreshStorebagsActivity;
  }

  else if (type metadata accessor for SubmitEagerEventsActivity() == v1)
  {
    v3 = sub_10000FFAC();
    swift_defaultActor_initialize();
    v4 = &unk_10008EE18;
    v5 = type metadata accessor for SubmitEagerEventsActivity;
  }

  else if (type metadata accessor for CacheCleanupActivity() == v1)
  {
    v3 = sub_10000FFAC();
    swift_defaultActor_initialize();
    sub_1000051C8();
  }

  else
  {
    if (type metadata accessor for PostInstallActivity() != v1)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v3 = sub_10000FFAC();
    swift_defaultActor_initialize();
    sub_100004768();
  }

  v6 = sub_10004AAFC(v4, 255, v5);
  v7 = *(v0 + 8);

  return v7(v3, v6);
}

uint64_t sub_100048F84(xpc_object_t criteria)
{
  v2 = *(v1 + 16);
  if (!criteria)
  {
    criteria = xpc_dictionary_create_empty();
  }

  xpc_activity_set_criteria(v2, criteria);

  return swift_unknownObjectRelease();
}

uint64_t sub_100048FD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10004902C()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008F6A0);
  sub_1000050E4(v0, qword_10008F6A0);
  return Logger.init(subsystem:category:)();
}

void sub_1000490A4(char a1)
{
  if (a1 != 2)
  {
    *(v1 + 136) = a1 & 1;
  }

  _StringGuts.grow(_:)(26);

  v15 = 0xD000000000000018;
  v16 = 0x8000000100071970;
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v3 + 32);
  v5._countAndFlagsBits = v4(v2, v3);
  String.append(_:)(v5);

  v19 = sub_10004AD5C;
  v20 = v1;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100001658;
  v18 = &unk_100087DA0;
  v6 = _Block_copy(&v15);

  v7 = String.utf8CString.getter();

  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v6);

  _Block_release(v6);
  if (qword_10008DD98 != -1)
  {
    sub_100009918();
  }

  v8 = type metadata accessor for Logger();
  sub_1000050E4(v8, qword_10008F6A0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100004D20();
    v12 = sub_100004F18();
    v15 = v12;
    *v11 = 136315138;
    v13 = v4(v2, v3);
    sub_1000053A0(v13, v14, &v15);
    sub_100003E00();

    *(v11 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v9, v10, "registered: %s", v11, 0xCu);
    sub_100005284(v12);
    sub_100001D64();
    sub_100001D1C();
  }
}

void sub_100049324()
{
  v1 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v2 = sub_100001D80(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v49 = &v45 - v5;
  v48 = type metadata accessor for XPCObject();
  v46 = *(v48 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v48);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000228D4(&qword_10008F8A0, &qword_10006F8B0);
  v10 = sub_100001D80(v9);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v19 + 24);
  v21 = *(v20(v18, v19) + 16);

  if (v21)
  {
    v50 = v17;
    v51 = v15;
    v52 = RTCXPCDictionary.init()();
    v45 = v52;
    swift_unknownObjectRetain();
    v22 = v20(v18, v19);
    v23 = 0;
    v25 = v22 + 64;
    v24 = *(v22 + 64);
    v47 = v22;
    v26 = 1 << *(v22 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v24;
    v29 = (v26 + 63) >> 6;
    v30 = &unk_10008F8A8;
    while (v28)
    {
      v31 = v23;
      v33 = v50;
      v32 = v51;
LABEL_12:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v34 | (v31 << 6);
      v36 = *(*(v47 + 48) + 8 * v35);
      sub_10004AC88(*(v47 + 56) + *(v46 + 72) * v35, v8);
      v37 = sub_1000228D4(v30, &unk_10006F8B8);
      v38 = *(v37 + 48);
      *v32 = v36;
      sub_100004254(v8, v32 + v38);
      sub_1000026BC(v32, 0, 1, v37);
LABEL_13:
      sub_10004ACEC(v32, v33);
      v39 = sub_1000228D4(v30, &unk_10006F8B8);
      if (sub_100002694(v33, 1, v39) == 1)
      {
        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      v40 = *v33;
      sub_100004254(v33 + *(v39 + 48), v8);
      String.init(cString:)();
      v41 = v30;
      v42 = v49;
      sub_10004AC88(v8, v49);
      sub_1000026BC(v42, 0, 1, v48);
      v43 = v42;
      v30 = v41;
      RTCXPCDictionary.subscript.setter(v43);
      sub_10002E5EC(v8);
    }

    v33 = v50;
    v32 = v51;
    while (1)
    {
      v31 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v31 >= v29)
      {
        v44 = sub_1000228D4(v30, &unk_10006F8B8);
        sub_100009B70(v44);
        v28 = 0;
        goto LABEL_13;
      }

      v28 = *(v25 + 8 * v31);
      ++v23;
      if (v28)
      {
        v23 = v31;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_10000B740();
  }
}

void sub_1000496BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v5 = sub_100001D80(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  type metadata accessor for XPCActivityHandle();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_unknownObjectRetain();
  state = xpc_activity_get_state(v9);
  if (state == 2)
  {
    if (qword_10008DD98 != -1)
    {
      sub_100009918();
    }

    v23 = type metadata accessor for Logger();
    sub_1000050E4(v23, qword_10008F6A0);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_100004D20();
      v27 = sub_100004F18();
      v47 = v27;
      *v26 = 136315138;
      sub_1000029C4(*(v2 + 112), *(v2 + 120));
      v29 = v28();
      v31 = sub_1000053A0(v29, v30, &v47);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "run: %s", v26, 0xCu);
      sub_100005284(v27);
      sub_100001D1C();
      sub_100001D64();
    }

    should_defer = xpc_activity_should_defer(*(v8 + 16));
    v33 = *(v8 + 16);
    if (should_defer)
    {
      xpc_activity_set_state(v33, 3);
      goto LABEL_20;
    }

    xpc_activity_set_state(v33, 4);
    v39 = type metadata accessor for TaskPriority();
    sub_100009B70(v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v2;
    v40[5] = v8;

    v41 = sub_100003CD0();
    sub_10002D48C(v41, v42, v43, v44, v40);

LABEL_25:
    sub_10000B740();
    return;
  }

  if (state)
  {
    if (qword_10008DD98 != -1)
    {
      sub_100009918();
    }

    v34 = type metadata accessor for Logger();
    sub_1000050E4(v34, qword_10008F6A0);
    sub_100003E00();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_100004D20();
      *v37 = 134217984;
      *(v37 + 4) = xpc_activity_get_state(*(v8 + 16));

      _os_log_impl(&_mh_execute_header, v35, v36, "unrecognized XPC activity state: %ld", v37, 0xCu);
      sub_100001D1C();

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (qword_10008DD98 != -1)
  {
    sub_100009918();
  }

  v11 = type metadata accessor for Logger();
  sub_1000050E4(v11, qword_10008F6A0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_100004D20();
    v15 = sub_100004F18();
    v47 = v15;
    *v14 = 136315138;
    sub_1000029C4(*(v2 + 112), *(v2 + 120));
    v17 = v16();
    v19 = sub_1000053A0(v17, v18, &v47);

    *(v14 + 4) = v19;
    sub_1000119C4(&_mh_execute_header, v20, v21, "checkin: %s");
    sub_100005284(v15);
    sub_100001D64();
    sub_100001D1C();
  }

  sub_100049324();
  if (v22)
  {
    if (xpc_activity_copy_criteria(*(v8 + 16)))
    {
      sub_100003E00();

      swift_unknownObjectRelease();
    }

    else
    {
      v45 = swift_unknownObjectRetain();
      sub_100048F84(v45);
    }

    sub_10000B740();

    swift_unknownObjectRelease();
    return;
  }

LABEL_20:
  sub_10000B740();
}

uint64_t sub_100049B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100049B44, a4, 0);
}

uint64_t sub_100049B44()
{
  sub_100004680();
  v1 = *(v0 + 16);
  sub_100049D3C(*(v0 + 24));
  sub_100001D4C();

  return v2();
}

void sub_100049B9C()
{
  if (v0[16])
  {
    v1 = v0;
    v2 = qword_10008DD98;

    if (v2 != -1)
    {
      sub_100009918();
    }

    v3 = type metadata accessor for Logger();
    sub_1000050E4(v3, qword_10008F6A0);
    sub_100003E00();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_100004D20();
      v7 = sub_100004F18();
      v15 = v7;
      *v6 = 136315138;
      sub_1000029C4(v1[14], v1[15]);
      v9 = v8();
      v11 = sub_1000053A0(v9, v10, &v15);

      *(v6 + 4) = v11;
      sub_1000119C4(&_mh_execute_header, v12, v13, "cancel: %s");
      sub_100005284(v7);
      sub_100001D64();
      sub_100001D1C();
    }

    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    Task.cancel()();

    v14 = v1[16];
    v1[16] = 0;
  }
}

void sub_100049D3C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v6 = sub_100001D80(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (*(v2 + 136) == 1)
  {
    xpc_activity_set_state(*(a1 + 16), 5);
    if (qword_10008DD98 != -1)
    {
      sub_100009918();
    }

    v9 = type metadata accessor for Logger();
    sub_1000050E4(v9, qword_10008F6A0);
    sub_100003E00();

    v29 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v10))
    {
      v11 = sub_100004D20();
      v12 = sub_100004F18();
      aBlock[0] = v12;
      *v11 = 136315138;
      sub_1000029C4(*(v2 + 112), *(v2 + 120));
      v14 = v13();
      sub_1000053A0(v14, v15, aBlock);
      sub_100003E00();

      *(v11 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v29, v10, "disabled: skipping %s", v11, 0xCu);
      sub_100005284(v12);
      sub_100001D1C();
      sub_100001D1C();
    }

    else
    {
    }
  }

  else
  {
    v16 = *(a1 + 16);
    aBlock[4] = sub_10004A8F0;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100001658;
    aBlock[3] = &unk_100087D00;
    v17 = _Block_copy(aBlock);

    v18 = xpc_activity_add_eligibility_changed_handler();
    _Block_release(v17);
    v19 = type metadata accessor for TaskPriority();
    sub_100009B70(v19);
    v21 = sub_10004AAFC(&qword_10008F870, v20, type metadata accessor for XPCActivity);
    v22 = swift_allocObject();
    v22[2] = v2;
    v22[3] = v21;
    v22[4] = v18;
    v22[5] = a1;
    v22[6] = v2;
    v22[7] = v4;
    swift_retain_n();

    v23 = sub_100003CD0();
    v27 = sub_10005A254(v23, v24, v25, v26, v22);
    v28 = *(v2 + 128);
    *(v2 + 128) = v27;
  }
}

uint64_t sub_10004A06C(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    v9 = type metadata accessor for TaskPriority();
    sub_1000026BC(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;

    sub_10002D48C(0, 0, v7, &unk_10006F888, v10);
  }

  return result;
}

uint64_t sub_10004A184()
{
  sub_100004680();
  v1 = *(v0 + 16);
  sub_100049B9C();
  sub_100001D4C();

  return v2();
}

uint64_t sub_10004A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_10004A200, a6, 0);
}

uint64_t sub_10004A200()
{
  sub_100004680();
  v1 = *(v0 + 56);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10004A29C;
  v5 = *(v0 + 56);

  return sub_100048D64(v3);
}

uint64_t sub_10004A29C()
{
  sub_100004680();
  sub_100003B0C();
  v2[2] = v0;
  v2[3] = v1;
  v2[4] = v3;
  v4 = v2[9];
  v5 = v2[7];
  v6 = *v0;
  sub_1000043E4();
  *v7 = v6;
  *(v9 + 80) = v8;

  return _swift_task_switch(sub_10004A3AC, v5, 0);
}

uint64_t sub_10004A3AC()
{
  static Task<>.checkCancellation()();
  v1 = v0[10];
  v2 = v0[4];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10004A53C;
  v7 = v0[10];

  return v9(ObjectType, v2);
}

uint64_t sub_10004A53C()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 88);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_1000043E4();
  *v5 = v4;

  return _swift_task_switch(sub_10004A63C, v3, 0);
}

uint64_t sub_10004A63C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  swift_unknownObjectRelease();
  sub_10004A6C0(v5, v4, v2);
  sub_100001D4C();

  return v6();
}

void sub_10004A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  xpc_activity_set_state(*(a2 + 16), 5);
  if (qword_10008DD98 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000050E4(v5, qword_10008F6A0);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = *(a3 + 112);
    v10 = (*(*(a3 + 120) + 32))();
    v12 = sub_1000053A0(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v6, "done: %s", v7, 0xCu);
    sub_100005284(v8);
  }
}

uint64_t sub_10004A850(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_10004A894()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004A8F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_100003900(v7);
  *v8 = v9;
  v10 = sub_100001F7C(v8);

  return sub_10004A1DC(v10, v11, v12, v3, v4, v6, v5);
}

uint64_t sub_10004A9B4()
{
  sub_1000228D4(&unk_10008E1E0, &qword_10006CC40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F7C0;
  type metadata accessor for SubmitEventsActivity();
  sub_1000044BC();
  v4 = sub_10004AAFC(v2, 255, v3);
  type metadata accessor for XPCActivity();
  swift_allocObject();
  sub_10000BC04();
  *(v1 + 32) = v0;
  type metadata accessor for PostInstallActivity();
  sub_100004768();
  sub_10004AAFC(v5, 255, v6);
  sub_1000124A8();
  sub_10000BC04();
  *(v1 + 40) = v0;
  v7 = type metadata accessor for CacheCleanupActivity();
  sub_1000051C8();
  sub_10004AAFC(v8, 255, v9);
  v10 = sub_1000124A8();
  result = sub_10004A850(v7, v4);
  *(v1 + 48) = v10;
  qword_100095AA8 = v1;
  return result;
}

uint64_t sub_10004AAFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004AB44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100003900(v4);
  *v5 = v6;
  v7 = sub_100001F7C(v5);

  return sub_10004A164(v7, v8, v9, v3);
}

uint64_t sub_10004ABE0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100003900(v5);
  *v6 = v7;
  v8 = sub_100001F7C(v6);

  return sub_100049B24(v8, v9, v10, v4, v3);
}

uint64_t sub_10004AC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ACEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008F8A0, &qword_10006F8B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v11 = sub_100001D80(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000286C();
  v16 = (v14 - v15);
  v18 = __chkstk_darwin(v17);
  v20 = &v45 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = (&v45 - v22);
  __chkstk_darwin(v21);
  v25 = &v45 - v24;
  if (*(a6 + 16))
  {
    if (!*(a3 + 16))
    {
      goto LABEL_8;
    }

    v26 = sub_100003BC0();
    if ((v27 & 1) == 0)
    {
      goto LABEL_8;
    }

    v28 = v26;
    v29 = *(a3 + 56);
    v30 = type metadata accessor for EventValue();
    sub_100003C44(v30);
    sub_10001C2A0(v29 + *(v31 + 72) * v28, v25);
    v32 = sub_100007020();
    sub_1000026BC(v32, v33, v34, v30);
    sub_10004E03C(v25, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v36 = *v23;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_10001C5EC(v23);
        goto LABEL_9;
      }

      v36 = *v23;
      if (v36 < 0)
      {
        __break(1u);
LABEL_8:
        type metadata accessor for EventValue();
        v37 = sub_100001DE8();
        sub_1000026BC(v37, v38, v39, v40);
LABEL_9:
        v41 = v25;
LABEL_23:
        sub_100005000(v41, &unk_10008F2F0, &qword_10006FFF0);
        return 0;
      }
    }

    sub_100005000(v25, &unk_10008F2F0, &qword_10006FFF0);
    if ((sub_100047B2C(v36, a6) & 1) == 0)
    {
      return 0;
    }
  }

  if (!*(a7 + 16))
  {
    return 1;
  }

  sub_10000BC78(a3, v20);
  v42 = type metadata accessor for EventValue();
  if (sub_100002694(v20, 1, v42) == 1)
  {
    goto LABEL_22;
  }

  sub_10004E03C(v20, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    if (result == 1)
    {
      v44 = *v16;
      goto LABEL_19;
    }

    sub_10001C5EC(v16);
LABEL_22:
    v41 = v20;
    goto LABEL_23;
  }

  v44 = *v16;
  if (*v16 < 0)
  {
    __break(1u);
    return result;
  }

LABEL_19:
  sub_100005000(v20, &unk_10008F2F0, &qword_10006FFF0);
  return (sub_100047B2C(v44, a7) & 1) != 0;
}

uint64_t sub_10004B0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_10008DDA8 != -1)
  {
    swift_once();
  }

  v10 = qword_100095AB0;

  result = sub_10004B154(v11, v10);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = result;
  return result;
}

uint64_t sub_10004B154(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100015F14(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10004B27C()
{
  sub_100003B78();
  v3 = v2;
  v4 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v4);
  v6 = *(v5 + 64);
  sub_100003EC8();
  v8 = __chkstk_darwin(v7);
  v10 = &v63 - v9;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v68 = v0;
  v13 = *(v3 + 16);
  if (sub_10004ADC8(v8, v14, v13, v15, v16, v11, v12))
  {
    v64 = v3;
    v65 = v1;
    v17 = v13 + 64;
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    v69 = _swiftEmptyArrayStorage;
    v66 = v13 + 64;
    v67 = v13;
    for (i = v10; v20; v17 = v66)
    {
LABEL_11:
      v20 &= v20 - 1;
      v25 = *(v13 + 48);
      sub_100007C44();
      v28 = *v26;
      v27 = v26[1];
      v29 = *(v68 + 32);
      if (*(v29 + 16))
      {
        v30 = *(v29 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v31 = Hasher._finalize()();
        v32 = ~(-1 << *(v29 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(v29 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(v29 + 48) + 16 * v33);
          if (*v34 != v28 || v34[1] != v27)
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          v13 = v67;
          goto LABEL_26;
        }
      }

      else
      {
      }

      v37 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = v37[2];
        sub_1000039D8();
        sub_100020328();
        v37 = v42;
      }

      v13 = v67;
      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        sub_100005388(v38);
        sub_100020328();
        v37 = v43;
      }

      v37[2] = v39 + 1;
      v69 = v37;
      v40 = &v37[2 * v39];
      v40[4] = v28;
      v40[5] = v27;
LABEL_26:
      v10 = i;
    }

    v23 = v69;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return;
      }

      if (v24 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v24);
      ++v22;
      if (v20)
      {
        v22 = v24;
        goto LABEL_11;
      }
    }

    v44 = v23[2];
    if (v44)
    {
      v45 = v23 + 5;
      v46 = v13;
      do
      {
        v47 = *(v45 - 1);
        v48 = *v45;

        v49 = sub_100003BC0();
        v51 = v50;

        if (v51)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v46;
          v53 = *(v46 + 24);
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v53);
          v46 = v70;
          v54 = *(*(v70 + 48) + 16 * v49 + 8);

          v55 = *(v46 + 56);
          v56 = type metadata accessor for EventValue();
          sub_100003C44(v56);
          v58 = v55 + *(v57 + 72) * v49;
          v10 = i;
          sub_1000166B4(v58, i);
          _NativeDictionary._delete(at:)();
          v59 = sub_100007020();
          v62 = v56;
        }

        else
        {
          type metadata accessor for EventValue();
          v59 = sub_100001DE8();
        }

        sub_1000026BC(v59, v60, v61, v62);
        sub_100005000(v10, &unk_10008F2F0, &qword_10006FFF0);
        v45 += 2;
        --v44;
      }

      while (v44);

      v13 = v46;
    }

    else
    {
    }

    *(v64 + 16) = v13;
  }

  sub_100003CE4();
}

double sub_10004B644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10004B0B8(a1, a2, a3, a4, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

void sub_10004B6A4()
{
  sub_100003B78();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v9);
  v11 = *(v10 + 64);
  sub_100003EC8();
  v13 = __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = *(v8 + 16);
  if (sub_10004ADC8(v13, v17, v16, v18, v19, v4, v2))
  {
    v49 = v8;
    v50 = v0;
    v20 = v16;
    v22 = v6 + 56;
    v21 = *(v6 + 56);
    v23 = *(v6 + 32);
    sub_100009754();
    v26 = v25 & v24;
    v28 = (v27 + 63) >> 6;

    v29 = 0;
    v48 = v20;
    v51 = v6;
    if (v26)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {

        *(v49 + 16) = v20;
        goto LABEL_13;
      }

      v26 = *(v22 + 8 * v30);
      ++v29;
      if (v26)
      {
        v29 = v30;
        do
        {
LABEL_7:
          v31 = *(v6 + 48);
          sub_100007C44();
          v33 = *v32;
          v34 = v32[1];

          v35 = sub_100003BC0();
          v37 = v36;

          if (v37)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v20[3];
            sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
            v40 = *(v20[6] + 16 * v35 + 8);

            v41 = v20[7];
            v42 = type metadata accessor for EventValue();
            sub_100003C44(v42);
            sub_1000166B4(v41 + *(v43 + 72) * v35, v15);
            _NativeDictionary._delete(at:)();
            v44 = sub_100007020();
            v47 = v42;
          }

          else
          {
            type metadata accessor for EventValue();
            v44 = sub_100001DE8();
          }

          sub_1000026BC(v44, v45, v46, v47);
          v26 &= v26 - 1;
          sub_100005000(v15, &unk_10008F2F0, &qword_10006FFF0);
          v6 = v51;
        }

        while (v26);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_100003CE4();
  }
}

void sub_10004B90C()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_10004B6A4();
}

void sub_10004B92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100003B78();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v32 = sub_100001D80(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_10000286C();
  sub_100003E0C();
  __chkstk_darwin(v35);
  sub_10000B758();
  v165 = v36;
  sub_100017180();
  v37 = type metadata accessor for SHA256();
  v38 = sub_100001EDC(v37);
  a10 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_100008EC0();
  v161 = v42;
  sub_100017180();
  v160 = type metadata accessor for String.Encoding();
  v43 = sub_100001EDC(v160);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_100008EC0();
  v159 = v46;
  sub_100017180();
  v163 = type metadata accessor for SHA256Digest();
  v47 = sub_100001EDC(v163);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_100004780();
  v158 = v50;
  sub_1000029A4();
  __chkstk_darwin(v51);
  sub_10000B758();
  v164 = v52;
  sub_100017180();
  v170 = type metadata accessor for EventValue();
  v53 = sub_100001EDC(v170);
  v167 = v54;
  v56 = *(v55 + 64);
  __chkstk_darwin(v53);
  sub_100004780();
  v162 = v57;
  sub_1000029A4();
  __chkstk_darwin(v58);
  sub_100009B90();
  v157 = v59;
  sub_1000029A4();
  __chkstk_darwin(v60);
  sub_10000B758();
  v166 = v61;
  v62 = *(v30 + 16);
  if ((sub_10004ADC8(v63, v64, v62, v65, v66, v26, v24) & 1) == 0)
  {
LABEL_40:
    sub_100003CE4();
    return;
  }

  v150 = v37;
  v151 = v20;
  v156 = v30;
  v68 = v28 + 56;
  v67 = *(v28 + 56);
  v69 = *(v28 + 32);
  sub_100009754();
  v72 = v71 & v70;
  v74 = (v73 + 63) >> 6;

  v75 = 0;
  a10 = v62;
  v169 = v28;
  v76 = v165;
  v77 = v170;
  while (v72)
  {
LABEL_8:
    v72 &= v72 - 1;
    v79 = *(v169 + 48);
    sub_100007C44();
    v81 = *v80;
    v82 = v80[1];
    v83 = a10;
    v84 = a10[2];

    if (!v84)
    {
      goto LABEL_14;
    }

    v168 = v81;
    v85 = sub_100003BC0();
    v77 = v170;
    if (v86)
    {
      sub_10001C2A0(v83[7] + *(v167 + 72) * v85, v166);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10001C5EC(v166);
        v83 = a10;
        goto LABEL_12;
      }

      v100 = *v166;
      v99 = v166[1];
      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();

      sub_100011764(&a12);
      v101(v159, v160);
      sub_10004E0AC(&qword_10008E4D0, &type metadata accessor for SHA256);
      dispatch thunk of HashFunction.init()();
      v102 = sub_100009770();
      sub_100025CD8(v102, v103);
      v104 = sub_100009770();
      sub_100025C3C(v104, v105);
      v106 = sub_100009770();
      sub_100005954(v106, v107);
      dispatch thunk of HashFunction.finalize()();
      sub_100011764(&a11);
      v108(v161, v150);
      v109 = sub_100009770();
      sub_100005954(v109, v110);
      sub_100011764(&a10);
      v111(v158, v164, v163);
      sub_10004E0AC(&qword_10008E4D8, &type metadata accessor for SHA256Digest);
      dispatch thunk of Sequence.makeIterator()();
      v112 = _swiftEmptyArrayStorage;
      if (v172 != v171[2])
      {
        v129 = v171[2];
        v130 = v172;
        while ((v172 & 0x8000000000000000) == 0)
        {
          if (v130 >= v171[2])
          {
            goto LABEL_43;
          }

          v131 = *(v171 + v130 + 32);
          sub_1000228D4(&qword_10008E4E0, &unk_10006FAE0);
          v132 = swift_allocObject();
          *(v132 + 16) = xmmword_10006CAD0;
          *(v132 + 56) = &type metadata for UInt8;
          *(v132 + 64) = &protocol witness table for UInt8;
          *(v132 + 32) = v131;
          v155 = String.init(format:_:)();
          v152 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = v112[2];
            sub_1000039D8();
            sub_100020328();
            v112 = v139;
          }

          v135 = v112[2];
          v134 = v112[3];
          v136 = v112;
          if (v135 >= v134 >> 1)
          {
            sub_100005388(v134);
            sub_100020328();
            v136 = v140;
          }

          ++v130;
          v136[2] = v135 + 1;
          v112 = v136;
          v137 = &v136[2 * v135];
          v137[4] = v155;
          v137[5] = v152;
          if (v129 == v130)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_42;
      }

LABEL_18:
      sub_100011764(&a9);
      v113(v164, v163);

      sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
      sub_10004E0F4();
      v114 = BidirectionalCollection<>.joined(separator:)();
      v116 = v115;

      *v157 = v114;
      v157[1] = v116;
      swift_storeEnumTagMultiPayload();
      sub_1000166B4(v157, v162);
      v117 = a10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v117;
      v118 = sub_100003BC0();
      v120 = v117[2];
      v121 = (v119 & 1) == 0;
      v122 = v120 + v121;
      if (__OFADD__(v120, v121))
      {
        goto LABEL_44;
      }

      v123 = v118;
      v124 = v119;
      sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
      sub_100009194();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v122))
      {
        v125 = v82;
        v126 = sub_100003BC0();
        if ((v124 & 1) != (v127 & 1))
        {
          goto LABEL_46;
        }

        v123 = v126;
        v128 = v124;
        v77 = v170;
      }

      else
      {
        v128 = v124;
        v77 = v170;
        v125 = v82;
      }

      a10 = v117;
      if (v128)
      {
        v141 = sub_10000BC24();
        sub_100020548(v141, v142);
      }

      else
      {
        sub_100008F64();
        sub_100007AF0(v143);
        v145 = (v144 + 16 * v123);
        *v145 = v168;
        v145[1] = v125;
        v146 = sub_10000BC24();
        sub_1000166B4(v146, v147);
        sub_100017608();
        if (v149)
        {
          goto LABEL_45;
        }

        v117[2] = v148;
      }

      v76 = v165;
    }

    else
    {
LABEL_12:
      if (v83[2] && (v87 = sub_100003BC0(), v77 = v170, (v88 & 1) != 0))
      {
        v153 = *(v167 + 72);
        sub_10001C2A0(v83[7] + v153 * v87, v76);
        sub_1000026BC(v76, 0, 1, v170);
        sub_100005000(v76, &unk_10008F2F0, &qword_10006FFF0);
        v89 = v170;
        v90 = sub_100003BC0();
        v92 = v91;

        if (v92)
        {
          v93 = swift_isUniquelyReferenced_nonNull_native();
          v171 = v83;
          v94 = v83[3];
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          sub_100009194();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v93, v94);
          v95 = v83;
          v96 = *(v83[6] + 16 * v90 + 8);

          v97 = v151;
          sub_1000166B4(v95[7] + v90 * v153, v151);
          a10 = v95;
          v89 = v170;
          _NativeDictionary._delete(at:)();
          v98 = 0;
        }

        else
        {
          v97 = v151;
          v98 = 1;
        }

        sub_1000026BC(v97, v98, 1, v89);
        sub_100005000(v97, &unk_10008F2F0, &qword_10006FFF0);
        v76 = v165;
        v77 = v89;
      }

      else
      {
LABEL_14:
        sub_1000026BC(v76, 1, 1, v77);

        sub_100005000(v76, &unk_10008F2F0, &qword_10006FFF0);
      }
    }
  }

  while (1)
  {
    v78 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v78 >= v74)
    {

      *(v156 + 16) = a10;
      goto LABEL_40;
    }

    v72 = *(v68 + 8 * v78);
    ++v75;
    if (v72)
    {
      v75 = v78;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004C398()
{
  sub_100003B78();
  v3 = v2;
  v5 = v4;
  v104 = v6;
  v107 = v7;
  v9 = v8;
  v10 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v10);
  v12 = *(v11 + 64);
  sub_100003EC8();
  __chkstk_darwin(v13);
  v115 = v95 - v14;
  v119 = sub_1000228D4(&unk_10008F480, &qword_10006F108);
  sub_100003C44(v119);
  v16 = *(v15 + 64);
  sub_100003EC8();
  __chkstk_darwin(v17);
  v18 = sub_100009A6C();
  v19 = sub_100001EDC(v18);
  v114 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_100004780();
  v113 = v23;
  sub_1000029A4();
  __chkstk_darwin(v24);
  sub_100009B90();
  v112 = v25;
  sub_1000029A4();
  __chkstk_darwin(v26);
  sub_100009B90();
  v111 = v27;
  sub_1000029A4();
  __chkstk_darwin(v28);
  sub_100009B90();
  v110 = v29;
  sub_1000029A4();
  __chkstk_darwin(v30);
  sub_100009B90();
  v108 = v31;
  sub_1000029A4();
  v33 = __chkstk_darwin(v32);
  v35 = v95 - v34;
  __chkstk_darwin(v33);
  sub_100009B90();
  v99 = v36;
  sub_1000029A4();
  v38 = __chkstk_darwin(v37);
  v40 = v95 - v39;
  v105 = *(v9 + 16);
  if (sub_10004ADC8(v38, v41, v105, v42, v43, v5, v3))
  {
    v95[0] = v9;
    v95[1] = v0;
    v45 = *(v107 + 56);
    v44 = v107 + 56;
    v46 = *(v107 + 32);
    sub_100009754();
    v109 = v48 & v47;
    v50 = (v49 + 63) >> 6;

    v51 = 0;
    v52 = _swiftEmptyArrayStorage;
    v106 = v40;
    v96 = v44;
    v101 = v50;
    v98 = v18;
LABEL_3:
    v53 = v105;
    v54 = v109;
    v103 = v52;
    while (v54)
    {
      v55 = v54;
LABEL_10:
      v54 = (v55 - 1) & v55;
      if (v53[2])
      {
        v109 = (v55 - 1) & v55;
        sub_100003FA8();
        v57 = *(v107 + 48);
        sub_100007C44();
        v59 = *v58;
        v60 = v58[1];

        v100 = v59;
        v61 = sub_100003BC0();
        if (v62)
        {
          v97 = v60;
          v63 = v53[7];
          v116 = *(v114 + 72);
          v64 = v99;
          sub_10001C2A0(v63 + v116 * v61, v99);
          sub_1000166B4(v64, v40);
          v65 = *(v104 + 16);
          if (v65)
          {
            v66 = v104 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
            while (2)
            {
              sub_10001C2A0(v66, v35);
              v67 = (v1 + *(v119 + 48));
              sub_10001C2A0(v35, v1);
              sub_10001C2A0(v40, v67);
              switch(sub_10004E1F4())
              {
                case 0u:
                  v68 = v108;
                  sub_10001C2A0(v1, v108);
                  v69 = v68[1];
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_10001C5EC(v35);

                    v40 = v106;
                    goto LABEL_32;
                  }

                  v102 = *v68;
                  v73 = *v67;
                  v74 = *(v67 + 1);
                  v75 = String.lowercased()();

                  v118 = v75;
                  v76 = String.lowercased()();

                  v117 = v76;
                  sub_10001F5A8();
                  v70 = StringProtocol.contains<A>(_:)();

                  sub_10001C5EC(v35);
                  v40 = v106;
                  goto LABEL_29;
                case 1u:
                  sub_10001C5EC(v35);
                  sub_10001C2A0(v1, v110);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {
                    goto LABEL_32;
                  }

                  v71 = v110;
                  goto LABEL_25;
                case 2u:
                  sub_10001C5EC(v35);
                  sub_10001C2A0(v1, v111);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 2)
                  {
                    goto LABEL_32;
                  }

                  v71 = v111;
LABEL_25:
                  v72 = *v71 == *v67;
                  goto LABEL_26;
                case 3u:
                  sub_10001C5EC(v35);
                  sub_10001C2A0(v1, v112);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 3)
                  {
                    goto LABEL_32;
                  }

                  v72 = *v112 == *v67;
LABEL_26:
                  v70 = v72;
                  goto LABEL_29;
                case 4u:
                  sub_10001C5EC(v35);
                  sub_10001C2A0(v1, v113);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 4)
                  {
                    goto LABEL_32;
                  }

                  v70 = *v113 ^ *v67 ^ 1;
LABEL_29:
                  sub_10001C5EC(v1);
                  if ((v70 & 1) == 0)
                  {
                    goto LABEL_33;
                  }

                  sub_10001C5EC(v40);

                  v53 = v105;
                  v52 = v103;
                  v44 = v96;
                  goto LABEL_37;
                default:
                  sub_10001C5EC(v35);
LABEL_32:
                  sub_100005000(v1, &unk_10008F480, &qword_10006F108);
LABEL_33:
                  v66 += v116;
                  if (!--v65)
                  {
                    break;
                  }

                  continue;
              }

              break;
            }
          }

          v52 = v103;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = v52[2];
            sub_1000039D8();
            sub_100020328();
            v52 = v82;
          }

          v78 = v52[2];
          v77 = v52[3];
          if (v78 >= v77 >> 1)
          {
            sub_100005388(v77);
            sub_100020328();
            v52 = v83;
          }

          sub_10001C5EC(v40);
          v52[2] = v78 + 1;
          v79 = &v52[2 * v78];
          v50 = v101;
          v80 = v97;
          v79[4] = v100;
          v79[5] = v80;
          v44 = v96;
          goto LABEL_3;
        }

LABEL_37:
        v50 = v101;
        v54 = v109;
      }
    }

    while (1)
    {
      v56 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        return;
      }

      if (v56 >= v50)
      {
        break;
      }

      v55 = *(v44 + 8 * v56);
      ++v51;
      if (v55)
      {
        v51 = v56;
        goto LABEL_10;
      }
    }

    v84 = v52[2];
    if (v84)
    {

      v85 = v52 + 5;
      do
      {
        v86 = *(v85 - 1);
        v87 = *v85;

        v88 = sub_100003BC0();
        v90 = v89;

        if (v90)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118._countAndFlagsBits = v53;
          v93 = v53[3];
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          sub_100009194();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v93);
          sub_1000027CC();
          sub_1000166B4(v53[7] + *(v114 + 72) * v88, v115);
          v91 = _NativeDictionary._delete(at:)();
          v94 = 0;
        }

        else
        {
          v94 = 1;
        }

        sub_100008D20(v91, v94);
        v85 += 2;
        --v84;
      }

      while (v84);
    }

    *(v95[0] + 16) = v53;
  }

  sub_100003CE4();
}

void sub_10004CB08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10004C398();
}

void sub_10004CB28()
{
  sub_100003B78();
  v4 = v3;
  v6 = v5;
  v109 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v12);
  v14 = *(v13 + 64);
  sub_100003EC8();
  __chkstk_darwin(v15);
  v120 = &v98 - v16;
  v119 = sub_1000228D4(&unk_10008F480, &qword_10006F108);
  sub_100003C44(v119);
  v18 = *(v17 + 64);
  sub_100003EC8();
  __chkstk_darwin(v19);
  v20 = sub_100009A6C();
  v21 = sub_100001EDC(v20);
  v116 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_100004780();
  v114 = v25;
  sub_1000029A4();
  __chkstk_darwin(v26);
  sub_100009B90();
  v113 = v27;
  sub_1000029A4();
  __chkstk_darwin(v28);
  sub_100009B90();
  v112 = v29;
  sub_1000029A4();
  __chkstk_darwin(v30);
  sub_100009B90();
  v111 = v31;
  sub_1000029A4();
  __chkstk_darwin(v32);
  sub_100009B90();
  v110 = v33;
  sub_1000029A4();
  __chkstk_darwin(v34);
  sub_100003E0C();
  __chkstk_darwin(v35);
  sub_100009B90();
  v105 = v36;
  sub_1000029A4();
  __chkstk_darwin(v37);
  sub_10000B758();
  v123 = v38;
  v103 = v11;
  v39 = *(v11 + 16);
  if (sub_10004ADC8(v40, v41, v39, v42, v43, v6, v4))
  {
    v98 = v0;
    v45 = v9 + 56;
    v44 = *(v9 + 56);
    v46 = *(v9 + 32);
    sub_100009754();
    v115 = v48 & v47;
    v50 = (v49 + 63) >> 6;

    v51 = 0;
    v52 = _swiftEmptyArrayStorage;
    v101 = v39;
    v99 = v9;
    v100 = v9 + 56;
    v106 = v50;
LABEL_3:
    v104 = v52;
LABEL_4:
    v53 = v115;
    while (v53)
    {
      v54 = v53;
LABEL_11:
      v53 = (v54 - 1) & v54;
      if (v39[2])
      {
        v115 = (v54 - 1) & v54;
        sub_100003FA8();
        v56 = *(v9 + 48);
        sub_100007C44();
        v58 = *v57;
        v59 = v57[1];

        v102 = v58;
        v60 = sub_100003BC0();
        if (v61)
        {
          v62 = v39[7];
          v118 = *(v116 + 72);
          v63 = v105;
          sub_10001C2A0(v62 + v118 * v60, v105);
          sub_1000166B4(v63, v123);
          v64 = *(v109 + 16);
          if (v64)
          {
            v65 = v109 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
            v107 = v1;
            v108 = v20;
            v117 = v59;
            while (2)
            {
              sub_10001C2A0(v65, v1);
              v66 = (v2 + *(v119 + 48));
              sub_10001C2A0(v1, v2);
              sub_10001C2A0(v123, v66);
              switch(sub_10004E1F4())
              {
                case 0u:
                  v67 = v110;
                  sub_10001C2A0(v2, v110);
                  v68 = v67[1];
                  if (sub_10000C6B8())
                  {
                    v1 = v107;
                    sub_10001C5EC(v107);

                    v20 = v108;
                    goto LABEL_33;
                  }

                  v72 = *v67;
                  v73 = *v66;
                  v74 = *(v66 + 1);
                  v75 = String.lowercased()();

                  v122 = v75;
                  v76 = String.lowercased()();

                  v121 = v76;
                  sub_10001F5A8();
                  v69 = StringProtocol.contains<A>(_:)();

                  v39 = v101;

                  v1 = v107;
                  sub_10001C5EC(v107);
                  v20 = v108;
                  goto LABEL_30;
                case 1u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v111);
                  if (sub_10000C6B8() != 1)
                  {
                    goto LABEL_33;
                  }

                  v70 = v111;
                  goto LABEL_26;
                case 2u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v112);
                  if (sub_10000C6B8() != 2)
                  {
                    goto LABEL_33;
                  }

                  v70 = v112;
LABEL_26:
                  v71 = *v70 == *v66;
                  goto LABEL_27;
                case 3u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v113);
                  if (sub_10000C6B8() != 3)
                  {
                    goto LABEL_33;
                  }

                  v71 = *v113 == *v66;
LABEL_27:
                  v69 = v71;
                  goto LABEL_30;
                case 4u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v114);
                  if (sub_10000C6B8() != 4)
                  {
                    goto LABEL_33;
                  }

                  v69 = *v114 ^ *v66 ^ 1;
LABEL_30:
                  sub_10001C5EC(v2);
                  if ((v69 & 1) == 0)
                  {
                    goto LABEL_34;
                  }

                  v77 = v104;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v84 = v77[2];
                    sub_1000039D8();
                    sub_100020328();
                    v77 = v85;
                  }

                  v9 = v99;
                  v80 = v77[2];
                  v79 = v77[3];
                  v81 = v77;
                  if (v80 >= v79 >> 1)
                  {
                    sub_100005388(v79);
                    sub_100020328();
                    v81 = v86;
                  }

                  sub_10001C5EC(v123);
                  v81[2] = v80 + 1;
                  v52 = v81;
                  v82 = &v81[2 * v80];
                  v83 = v117;
                  v82[4] = v102;
                  v82[5] = v83;
                  v45 = v100;
                  v50 = v106;
                  goto LABEL_3;
                default:
                  sub_10001C5EC(v1);
LABEL_33:
                  sub_100005000(v2, &unk_10008F480, &qword_10006F108);
LABEL_34:
                  v65 += v118;
                  if (!--v64)
                  {
                    break;
                  }

                  continue;
              }

              break;
            }
          }

          sub_10001C5EC(v123);
          v9 = v99;
          v52 = v104;
          v45 = v100;
        }

        else
        {
        }

        v50 = v106;
        goto LABEL_4;
      }
    }

    while (1)
    {
      v55 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        return;
      }

      if (v55 >= v50)
      {
        break;
      }

      v54 = *(v45 + 8 * v55);
      ++v51;
      if (v54)
      {
        v51 = v55;
        goto LABEL_11;
      }
    }

    v87 = v52[2];
    if (v87)
    {

      v88 = v52 + 5;
      do
      {
        v89 = *(v88 - 1);
        v90 = *v88;

        v91 = sub_100003BC0();
        v93 = v92;

        if (v93)
        {
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v122._countAndFlagsBits = v39;
          v96 = v39[3];
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          sub_100009194();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v95, v96);
          sub_1000027CC();
          sub_1000166B4(v39[7] + *(v116 + 72) * v91, v120);
          v94 = _NativeDictionary._delete(at:)();
          v97 = 0;
        }

        else
        {
          v97 = 1;
        }

        sub_100008D20(v94, v97);
        v88 += 2;
        --v87;
      }

      while (v87);
    }

    *(v103 + 16) = v39;
  }

  sub_100003CE4();
}