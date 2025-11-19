uint64_t sub_100B2F280@<X0>(void *a1@<X4>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v9;

  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = v8;
    a2[1] = v10;
  }

  return result;
}

void sub_100B2F330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_autoreleasePoolPush();
  sub_100B2F3D4(v5, a1, a2, a3, a4, a5, &v12);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_100B2F3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *(a1 + 40);
  result = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v7)
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10138BBE0;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    v15 = sub_100008C00();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v15;
    *(v11 + 72) = v16;
    *(v11 + 80) = v17;
    os_log(_:dso:log:_:_:)();

    result = swift_willThrow();
    *a7 = v7;
  }

  return result;
}

uint64_t sub_100B2F54C()
{
  dispatch_assert_queue_V2(*(v0 + 16));
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  static NSFileManager.removeDirectory(url:)();
  return 0;
}

void sub_100B2F70C()
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177BA08);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    v4 = _convertErrorToNSError(_:)();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Error purging storage %@", v2, 0xCu);
    sub_10000B3A8(v3, &qword_10169BB30, &unk_10138B3C0);
  }
}

void sub_100B2F860(uint64_t a1)
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BA08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Purging all cache storage", v5, 2u);
  }

  v6 = *(a1 + 24);
  type metadata accessor for Transaction();
  swift_allocObject();
  v7 = swift_weakInit();
  __chkstk_darwin(v7);
  static Transaction.named<A>(_:with:)();

  sub_100B2FA24();
}

void sub_100B2FA24()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (qword_101694BE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177BA08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Purging local cache storage", v20, 2u);
  }

  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v21 = sub_1000076D4(v2, qword_10177BA58);
  v27[0] = v3[2];
  v27[1] = v3 + 2;
  (v27[0])(v7, v21, v2);
  URL.appendingPathComponent(_:isDirectory:)();
  v22 = v3[1];
  v22(v7, v2);
  sub_100B2F54C();
  v22(v9, v2);
  if (qword_101694550 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177A8D0);
  sub_100B2F54C();

  if (qword_101694970 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177B398);
  sub_100B2F54C();

  if (qword_101694928 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177B2F0);
  sub_100B2F54C();

  sub_100F4CE88();
  URL.appendingPathComponent(_:isDirectory:)();
  v22(v7, v2);
  sub_100B2F54C();

  v22(v9, v2);
  if (qword_1016951F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177C590);
  sub_100B2F54C();

  if (qword_101694C40 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_1016B58E8);
  sub_100B2F54C();

  if (qword_101694CD0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177BC20);
  sub_100B2F54C();

  if (qword_101694C48 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_1016B5900);
  sub_100B2F54C();

  if (qword_101694858 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v2, qword_10177B0A8);
  (v27[0])(v9, v23, v2);
  v24 = sub_100B2F54C();

  v22(v9, v2);
  swift_errorRetain();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v25 = qword_10177B348;
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v26 = *(v25 + 48);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100B3ADEC();
  if (v24)
  {
    swift_willThrow();
  }
}

uint64_t sub_100B301AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v19 = *(a1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100B3AD30;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101648CA8;
  v14 = _Block_copy(aBlock);
  a2;

  dispatch_sync(v19, v14);
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v16 = OS_dispatch_group.wait(timeout:)();
  v15(v11, v4);
  if (v16)
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100B304E8(NSObject *a1)
{
  v77 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v75 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v75 - v11;
  __chkstk_darwin(v10);
  v14 = v75 - v13;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v15 = sub_1000076D4(v1, qword_10177BA58);
  v78 = v2[2];
  v79 = v15;
  v78(v12);
  URL.appendingPathComponent(_:isDirectory:)();
  v80 = v2[1];
  v80(v12, v1);
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v75[1] = qword_10177C388;
  os_log(_:dso:log:_:_:)();
  v76 = v14;
  v16 = sub_100B2F54C();
  if (qword_101694E78 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C070);
  v17 = sub_100B2F54C();
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  if (qword_101695470 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177CD50);
  v19 = sub_100B2F54C();
  if (v19)
  {
    v20 = v19;

    v16 = v20;
  }

  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C0C0);
  v21 = sub_100B2F54C();
  if (v21)
  {
    v22 = v21;

    v16 = v22;
  }

  if (qword_101694468 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177A518);
  v23 = sub_100B2F54C();
  if (v23)
  {
    v24 = v23;

    v16 = v24;
  }

  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177BF38);
  v25 = sub_100B2F54C();
  if (v25)
  {
    v26 = v25;

    v16 = v26;
  }

  if (qword_101694928 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177B2F0);
  v27 = sub_100B2F54C();
  if (v27)
  {
    v28 = v27;

    v16 = v28;
  }

  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177AEC8);
  v29 = sub_100B2F54C();
  if (v29)
  {
    v30 = v29;

    v16 = v30;
  }

  if (qword_1016947B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177AEF8);
  v31 = sub_100B2F54C();
  if (v31)
  {
    v32 = v31;

    v16 = v32;
  }

  (v78)(v12, v79, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v80(v12, v1);
  v33 = sub_100B2F54C();
  if (v33)
  {
    v34 = v33;

    v16 = v34;
  }

  (v78)(v6, v79, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v35 = v80;
  v80(v6, v1);
  v36 = sub_100B2F54C();
  v35(v12, v1);
  v37 = v9;
  if (v36)
  {

    v16 = v36;
  }

  (v78)(v6, v79, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v38 = v80;
  v80(v6, v1);
  v39 = sub_100B2F54C();
  v38(v12, v1);
  if (v39)
  {

    v16 = v39;
  }

  (v78)(v6, v79, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v40 = v80;
  v80(v6, v1);
  v41 = sub_100B2F54C();
  v40(v12, v1);
  v42 = v37;
  if (v41)
  {

    v16 = v41;
  }

  (v78)(v6, v79, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v43 = v80;
  v80(v6, v1);
  v44 = sub_100B2F54C();
  v43(v12, v1);
  if (v44)
  {

    v16 = v44;
  }

  (v78)(v6, v79, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v45 = v80;
  v80(v6, v1);
  v46 = sub_100B2F54C();
  v45(v12, v1);
  if (v46)
  {

    v16 = v46;
  }

  if (qword_1016954B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177CDB8);
  v47 = sub_100B2F54C();
  if (v47)
  {
    v48 = v47;

    v16 = v48;
  }

  if (qword_101694F88 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C268);
  v49 = sub_100B2F54C();
  if (v49)
  {
    v50 = v49;

    v16 = v50;
  }

  if (qword_101694460 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177A500);
  v51 = sub_100B2F54C();
  if (v51)
  {
    v52 = v51;

    v16 = v52;
  }

  if (qword_101694430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177A4A0);
  v53 = sub_100B2F54C();
  if (v53)
  {
    v54 = v53;

    v16 = v54;
  }

  if (qword_101694EF8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C140);
  v55 = sub_100B2F54C();
  if (v55)
  {
    v56 = v55;

    v16 = v56;
  }

  if (qword_101695268 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C680);
  v57 = sub_100B2F54C();
  if (v57)
  {
    v58 = v57;

    v16 = v58;
  }

  if (qword_101694568 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177A918);
  v59 = sub_100B2F54C();
  if (v59)
  {
    v60 = v59;

    v16 = v60;
  }

  if (qword_101694F30 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C1D0);
  v61 = sub_100B2F54C();
  if (v61)
  {
    v62 = v61;

    v16 = v62;
  }

  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C0D8);
  v63 = sub_100B2F54C();
  if (v63)
  {
    v64 = v63;

    v16 = v64;
  }

  if (qword_101694680 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177AC60);
  v65 = sub_100B2F54C();
  if (v65)
  {
    v66 = v65;

    v16 = v66;
  }

  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177C090);
  v67 = sub_100B2F54C();
  if (v67)
  {
    v68 = v67;
  }

  else
  {
    if (!v16)
    {
      goto LABEL_98;
    }

    swift_errorRetain();
    v68 = v16;
  }

  swift_errorRetain();
  static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_101385D80;
  v81 = v68;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v70 = String.init<A>(describing:)();
  v72 = v71;
  *(v69 + 56) = &type metadata for String;
  *(v69 + 64) = sub_100008C00();
  *(v69 + 32) = v70;
  *(v69 + 40) = v72;
  os_log(_:dso:log:_:_:)();

LABEL_98:
  v73 = v80;
  v80(v42, v1);
  v73(v76, v1);
  dispatch_group_leave(v77);
}

uint64_t sub_100B312E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  return v0;
}

uint64_t sub_100B31338()
{
  sub_100B312E8();

  return swift_deallocClassInstance();
}

uint64_t sub_100B31390()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_1016B58E8);
  sub_1000076D4(v0, qword_1016B58E8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100B314EC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_1016B5900);
  sub_1000076D4(v0, qword_1016B5900);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100B31648(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v85 = v8 + 2;
    v86 = v8[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100B31BD8((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *(v22 + 2);
            v25 = *(v22 + 3);
            v26 = *v22;
            v27 = v23[1];
            *v22 = *v23;
            v22[1] = v27;
            *v23 = v26;
            *(v23 + 2) = v24;
            *(v23 + 3) = v25;
          }

          ++v21;
          v19 -= 32;
          v11 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v39 = v8[3];
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_100A5B430((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v40;
    v41 = (v8 + 4);
    v42 = &v8[2 * v5 + 4];
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = v8[4];
          v44 = v8[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v8[2 * v40];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v41[16 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v8[2 * v40];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v41[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v41[16 * v5 - 16];
        v81 = *v80;
        v82 = &v41[16 * v5];
        v83 = *(v82 + 1);
        sub_100B31BD8((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = v8[2];
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove(&v41[16 * v5], v82 + 16, 16 * (v84 - 1 - v5));
        v8[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[16 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v8[2 * v40];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v41[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 24);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(v34 - 8) >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 16);
    v36 = *v34;
    v37 = *(v34 - 16);
    *v34 = *(v34 - 32);
    *(v34 + 16) = v37;
    *(v34 - 16) = v35;
    *(v34 - 8) = v32;
    *(v34 - 32) = v36;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_100B31BD8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 3) < *(v6 + 3))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_100B31DDC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100B31E68(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100B31E7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3A38, &qword_1013D7320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_100B322A0(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5D20, &qword_1013D7438);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5D28, &unk_1013D7440);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016B5590, &qword_1013D6A88);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016B5578, &unk_1013D6A70);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for OwnedBeaconRecord();
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016B5580, &unk_1013D7450);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016B5580, &unk_1013D7450);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016B5590, &qword_1013D6A88);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = _swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016B5590, &qword_1013D6A88);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = _swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = _swiftEmptyArrayStorage;
    v48 = &unk_1013D7440;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016B5578, &unk_1013D6A70);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016B5578, &unk_1013D6A70);
        sub_10000B3A8(v17, &qword_1016B5D20, &qword_1013D7438);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016B5590, &qword_1013D6A88);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C3188(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5D20, &qword_1013D7438);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5D28, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5D28, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5D28, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016B5578, &unk_1013D6A70);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for OwnedBeaconRecord);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for OwnedBeaconRecord);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_1016B3A78, &qword_1013D4820);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for OwnedBeaconRecord);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016B5590, &qword_1013D6A88);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016B5580, &unk_1013D7450);
  result = sub_10000B3A8(v68, &unk_1016A9A20, &qword_10138B280);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t sub_100B33054(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5D10, &unk_1013D7420);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5D18, &qword_101410E50);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016B54F0, &qword_1013D7430);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016B54E0, &qword_1013D6938);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for SharedBeaconRecord(0);
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016B54E8, &unk_1013D6940);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016B54E8, &unk_1013D6940);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016B54F0, &qword_1013D7430);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = &_swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016B54F0, &qword_1013D7430);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = &_swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = &_swiftEmptyArrayStorage;
    v48 = &qword_101410E50;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016B54E0, &qword_1013D6938);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016B54E0, &qword_1013D6938);
        sub_10000B3A8(v17, &qword_1016B5D10, &unk_1013D7420);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016B54F0, &qword_1013D7430);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C322C(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5D10, &unk_1013D7420);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5D18, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5D18, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5D18, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016B54E0, &qword_1013D6938);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for SharedBeaconRecord);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for SharedBeaconRecord);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_10169EFB8, &unk_1013B12F0);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for SharedBeaconRecord);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016B54F0, &qword_1013D7430);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016B54E8, &unk_1013D6940);
  result = sub_10000B3A8(v68, &unk_101698C30, &unk_101392630);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t sub_100B33E08(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5CB0, &unk_1013D7350);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5CB8, &unk_1013EB240);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016A5988, &qword_1013B3490);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for MemberSharingCircle();
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016A5980, &unk_1013B3480);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016A5988, &qword_1013B3490);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = _swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016A5988, &qword_1013B3490);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = _swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = _swiftEmptyArrayStorage;
    v48 = &unk_1013EB240;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016A5978, &qword_101410D20);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016A5978, &qword_101410D20);
        sub_10000B3A8(v17, &qword_1016B5CB0, &unk_1013D7350);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016A5988, &qword_1013B3490);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C4440(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5CB0, &unk_1013D7350);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5CB8, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5CB8, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5CB8, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016A5978, &qword_101410D20);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for MemberSharingCircle);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for MemberSharingCircle);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_1016B3CB0, &unk_1013D7360);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for MemberSharingCircle);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016A5988, &qword_1013B3490);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016A5980, &unk_1013B3480);
  result = sub_10000B3A8(v68, &unk_101698BC0, &qword_10138C440);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t sub_100B34BBC(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5CA0, &qword_1013D7328);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5CA8, &unk_1013D7330);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016A7838, &unk_1013EB250);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for OwnerSharingCircle();
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016A7830, &unk_1013D69E0);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016A7838, &unk_1013EB250);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = _swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016A7838, &unk_1013EB250);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = _swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = _swiftEmptyArrayStorage;
    v48 = &unk_1013D7330;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016A7828, &unk_1013D7340);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016A7828, &unk_1013D7340);
        sub_10000B3A8(v17, &qword_1016B5CA0, &qword_1013D7328);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016A7838, &unk_1013EB250);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C44E4(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5CA0, &qword_1013D7328);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5CA8, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5CA8, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5CA8, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016A7828, &unk_1013D7340);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for OwnerSharingCircle);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for OwnerSharingCircle);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for OwnerSharingCircle);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016A7838, &unk_1013EB250);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016A7830, &unk_1013D69E0);
  result = sub_10000B3A8(v68, &unk_1016AFA00, &qword_10138C4D0);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t sub_100B35970()
{
  v0 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for LocalFindableAccessoryRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v10 = *(v5 + 48);
  v37 = v5 + 48;
  v39 = v10;
  v11 = _swiftEmptyArrayStorage;
  if (v10(v3, 1, v4) != 1)
  {
    v12 = 0;
    v35 = v5;
    v36 = v9;
    v38 = (v9 + 32) & ~v9;
    v18 = _swiftEmptyArrayStorage + v38;
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = sub_100029420(v3, v8, type metadata accessor for LocalFindableAccessoryRecord);
      if (v12)
      {
        v11 = v19;
        v16 = __OFSUB__(v12--, 1);
        if (v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = v19[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_1000BC4D4(&qword_1016B3A80, &qword_1013D4828);
        v23 = *(v5 + 72);
        v24 = v38;
        v11 = swift_allocObject();
        result = j__malloc_size(v11);
        if (!v23)
        {
          goto LABEL_34;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_35;
        }

        v27 = v4;
        v28 = v25 / v23;
        v11[2] = v22;
        v11[3] = 2 * (v25 / v23);
        v29 = v11 + v24;
        v30 = v19[3] >> 1;
        v31 = v30 * v23;
        if (v19[2])
        {
          if (v11 < v19 || v29 >= v19 + v38 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v18 = &v29[v31];
        v33 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        v4 = v27;
        v5 = v35;
        v16 = __OFSUB__(v33, 1);
        v12 = v33 - 1;
        if (v16)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_100029420(v8, v18, type metadata accessor for LocalFindableAccessoryRecord);
      v18 += *(v5 + 72);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v19 = v11;
      if (v39(v3, 1, v4) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v12 = 0;
LABEL_3:
  result = sub_10000B3A8(v3, &qword_1016A9A30, &unk_1013BD120);
  v14 = v11[3];
  if (v14 >= 2)
  {
    v15 = v14 >> 1;
    v16 = __OFSUB__(v15, v12);
    v17 = v15 - v12;
    if (v16)
    {
      goto LABEL_36;
    }

    v11[2] = v17;
  }

  return v11;
}

size_t sub_100B35CB8(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5CE0, &unk_1013D73C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5CE8, &qword_101410DA0);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016B5550, &qword_1013D73D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016B5540, &qword_1013EB270);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for OwnerPeerTrust();
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016B5548, &unk_1013D6A20);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016B5548, &unk_1013D6A20);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016B5550, &qword_1013D73D0);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = _swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016B5550, &qword_1013D73D0);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = _swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = _swiftEmptyArrayStorage;
    v48 = &qword_101410DA0;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016B5540, &qword_1013EB270);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016B5540, &qword_1013EB270);
        sub_10000B3A8(v17, &qword_1016B5CE0, &unk_1013D73C0);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016B5550, &qword_1013D73D0);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C4588(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5CE0, &unk_1013D73C0);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5CE8, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5CE8, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5CE8, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016B5540, &qword_1013EB270);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for OwnerPeerTrust);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for OwnerPeerTrust);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_10169EF80, &qword_10139FCC0);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for OwnerPeerTrust);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016B5550, &qword_1013D73D0);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016B5548, &unk_1013D6A20);
  result = sub_10000B3A8(v68, &qword_101697798, &unk_10138C4F0);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t sub_100B36A6C(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5CF0, &qword_1013D73D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5CF8, &unk_1013D73E0);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016B5568, &unk_1013D6A40);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016B5558, &unk_1013D6A30);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for MemberPeerTrust();
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016B5560, &unk_1013D73F0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016B5560, &unk_1013D73F0);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016B5568, &unk_1013D6A40);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = _swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016B5568, &unk_1013D6A40);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = _swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = _swiftEmptyArrayStorage;
    v48 = &unk_1013D73E0;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016B5558, &unk_1013D6A30);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016B5558, &unk_1013D6A30);
        sub_10000B3A8(v17, &qword_1016B5CF0, &qword_1013D73D8);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016B5568, &unk_1013D6A40);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C462C(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5CF0, &qword_1013D73D8);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5CF8, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5CF8, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5CF8, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016B5558, &unk_1013D6A30);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for MemberPeerTrust);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for MemberPeerTrust);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_1016B3BF8, &qword_1013D4988);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for MemberPeerTrust);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016B5568, &unk_1013D6A40);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016B5560, &unk_1013D73F0);
  result = sub_10000B3A8(v68, &qword_101698C10, &unk_10138C1E0);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100B37820(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  v11 = &_swiftEmptyArrayStorage + 32;
  if (v4)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = __clz(__rbit64(v4)) | (v12 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = v15[1];
      v34 = *v15;
      v35 = v8;
      v33 = *(*(a1 + 56) + 8 * v14);
      if (v7)
      {

        v17 = v10;
        v18 = __OFSUB__(v7--, 1);
        if (v18)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v19 = *(v10 + 3);
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        sub_1000BC4D4(&qword_1016B5C90, &qword_1013D7310);
        v17 = swift_allocObject();
        v22 = j__malloc_size(v17);
        v23 = v22 - 32;
        if (v22 < 32)
        {
          v23 = v22 - 1;
        }

        v24 = v23 >> 5;
        *(v17 + 2) = v21;
        *(v17 + 3) = 2 * (v23 >> 5);
        v25 = v17 + 32;
        v26 = *(v10 + 3) >> 1;
        v11 = &v17[32 * v26 + 32];
        v27 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
        if (*(v10 + 2))
        {
          v28 = v10 + 32;
          if (v17 != v10 || v25 >= &v28[32 * v26])
          {
            memmove(v25, v28, 32 * v26);
          }

          *(v10 + 2) = 0;
        }

        else
        {
        }

        v18 = __OFSUB__(v27, 1);
        v7 = v27 - 1;
        if (v18)
        {
          goto LABEL_34;
        }
      }

      v4 &= v4 - 1;
      *v11 = v35;
      *(v11 + 1) = v34;
      *(v11 + 2) = v16;
      *(v11 + 3) = v33;
      v11 += 32;
      v10 = v17;
      v8 = v13;
      v9 = v12;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v12 >= v5)
      {
        break;
      }

      v4 = *(v1 + 8 * v12);
      ++v9;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v29 = *(v10 + 3);
    if (v29 >= 2)
    {
      v30 = v29 >> 1;
      v18 = __OFSUB__(v30, v7);
      v31 = v30 - v7;
      if (v18)
      {
        goto LABEL_36;
      }

      *(v10 + 2) = v31;
    }

    return v10;
  }

  return result;
}

uint64_t sub_100B37A58(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v99 = a2;
  v100 = a3;
  v106 = type metadata accessor for Row();
  v89 = *(v106 - 8);
  v3 = *(v89 + 64);
  __chkstk_darwin(v106);
  v98 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v97 = (&v87 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = &v87 - v13;
  __chkstk_darwin(v12);
  v16 = &v87 - v15;
  v17 = sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = type metadata accessor for StandaloneBeacon();
  v25 = *(v24 - 8);
  v104 = v24;
  v105 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v101 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v29 = v28;
  v87 = v21;
  v88 = v9;
  if (!v28)
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_11:
    v36 = *(v105 + 80);
    v37 = v35[3];

    v103 = dispatch thunk of _AnySequenceBox._makeIterator()();

    if (v29 < 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v38 = v37 >> 1;
    v107 = v35;
    v93 = v36;
    v94 = (v36 + 32) & ~v36;
    v39 = v35 + v94;
    v102 = v23;
    if (v29)
    {
      v40 = v88;
      v41 = (v89 + 48);
      v90 = (v89 + 8);
      v91 = (v89 + 32);
      v95 = (v105 + 48);
      v96 = (v105 + 56);
      v38 -= v29;
      v42 = v87;
      v92 = (v89 + 48);
      do
      {
        v43 = v97;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        sub_1000D2AD8(v43, v40, &qword_101699D68, &unk_1013B6450);
        v44 = 1;
        if ((*v41)(v40, 1, v106) != 1)
        {
          v45 = v42;
          v46 = v98;
          v47 = v40;
          v48 = v40;
          v49 = v16;
          v50 = v14;
          v51 = v106;
          (*v91)(v98, v47, v106);
          v99(v46);
          v52 = v46;
          v42 = v45;
          v41 = v92;
          v53 = v51;
          v14 = v50;
          v16 = v49;
          v40 = v48;
          (*v90)(v52, v53);
          v44 = 0;
        }

        v54 = v44;
        v55 = v104;
        (*v96)(v42, v54, 1, v104);
        result = (*v95)(v42, 1, v55);
        if (result == 1)
        {
          goto LABEL_58;
        }

        sub_100029420(v42, v39, type metadata accessor for StandaloneBeacon);
        v39 += *(v105 + 72);
        --v29;
      }

      while (v29);
      v23 = v102;
    }

    v56 = (v89 + 48);
    v96 = (v89 + 8);
    v97 = (v89 + 32);
    v57 = (v105 + 56);
    v58 = (v105 + 48);
    v59 = v101;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      sub_1000D2AD8(v16, v14, &qword_101699D68, &unk_1013B6450);
      v60 = 1;
      if ((*v56)(v14, 1, v106) != 1)
      {
        v61 = v98;
        v62 = v106;
        (*v97)(v98, v14, v106);
        v99(v61);
        v63 = v61;
        v64 = v62;
        v59 = v101;
        v23 = v102;
        (*v96)(v63, v64);
        v60 = 0;
      }

      v65 = v60;
      v66 = v104;
      (*v57)(v23, v65, 1, v104);
      if ((*v58)(v23, 1, v66) == 1)
      {

        sub_10000B3A8(v23, &qword_1016B5CC0, &qword_1013D7370);
        result = v107;
        v84 = v107[3];
        if (v84 < 2)
        {
          return result;
        }

        v85 = v84 >> 1;
        v68 = __OFSUB__(v85, v38);
        v86 = v85 - v38;
        if (!v68)
        {
          v107[2] = v86;
          return result;
        }

LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      result = sub_100029420(v23, v59, type metadata accessor for StandaloneBeacon);
      if (v38)
      {
        v67 = v107;
        v68 = __OFSUB__(v38--, 1);
        if (v68)
        {
          goto LABEL_50;
        }

        goto LABEL_45;
      }

      v69 = v107[3];
      if (((v69 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_51;
      }

      v70 = v69 & 0xFFFFFFFFFFFFFFFELL;
      if (v70 <= 1)
      {
        v71 = 1;
      }

      else
      {
        v71 = v70;
      }

      sub_1000BC4D4(&qword_1016B5CC8, &qword_1013D7378);
      v72 = *(v105 + 72);
      v73 = v94;
      v67 = swift_allocObject();
      result = j__malloc_size(v67);
      if (!v72)
      {
        goto LABEL_52;
      }

      v74 = result - v73;
      if (result - v73 == 0x8000000000000000 && v72 == -1)
      {
        goto LABEL_53;
      }

      v76 = v74 / v72;
      v67[2] = v71;
      v67[3] = 2 * (v74 / v72);
      v77 = v67 + v73;
      v78 = v107;
      v79 = v107[3] >> 1;
      v80 = v79 * v72;
      if (v107[2])
      {
        break;
      }

LABEL_44:
      v39 = &v77[v80];
      v83 = (v76 & 0x7FFFFFFFFFFFFFFFLL) - v79;

      v59 = v101;
      v23 = v102;
      v68 = __OFSUB__(v83, 1);
      v38 = v83 - 1;
      if (v68)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_45:
      sub_100029420(v59, v39, type metadata accessor for StandaloneBeacon);
      v39 += *(v105 + 72);
      v107 = v67;
    }

    if (v67 < v107 || v77 >= v107 + v94 + v80)
    {
      v82 = v107[3] >> 1;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v67 == v107)
      {
LABEL_43:
        v78[2] = 0;
        goto LABEL_44;
      }

      v81 = v107[3] >> 1;
      swift_arrayInitWithTakeBackToFront();
    }

    v78 = v107;
    goto LABEL_43;
  }

  if (v28 <= 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1000BC4D4(&qword_1016B5CC8, &qword_1013D7378);
  v30 = *(v105 + 72);
  v31 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v32 = swift_allocObject();
  result = j__malloc_size(v32);
  if (!v30)
  {
    goto LABEL_56;
  }

  if (result - v31 != 0x8000000000000000 || v30 != -1)
  {
    v32[2] = v29;
    v32[3] = 2 * ((result - v31) / v30);
    goto LABEL_10;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

size_t sub_100B38224(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = (v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5470, &unk_1013D7380);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5478, &qword_1013D6730);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016A78B8, &unk_1013D6710);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for OwnedDeviceKeyRecord();
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016A78B0, &unk_1013EB2A0);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016A78B8, &unk_1013D6710);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = _swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016A78B8, &unk_1013D6710);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = _swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = _swiftEmptyArrayStorage;
    v48 = &qword_1013D6730;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016A78A8, &unk_1013D66E0);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016A78A8, &unk_1013D66E0);
        sub_10000B3A8(v17, &qword_1016B5470, &unk_1013D7380);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016A78B8, &unk_1013D6710);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C46D0(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5470, &unk_1013D7380);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5478, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5478, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5478, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016A78A8, &unk_1013D66E0);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for OwnedDeviceKeyRecord);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for OwnedDeviceKeyRecord);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_1016B3BB8, &qword_1013D7390);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for OwnedDeviceKeyRecord);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016A78B8, &unk_1013D6710);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016A78B0, &unk_1013EB2A0);
  result = sub_10000B3A8(v68, &qword_10169EF98, &unk_1013D66D0);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t sub_100B38FD8(uint64_t *a1)
{
  v126 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v114 = v92 - v3;
  v113 = type metadata accessor for URL();
  v117 = *(v113 - 8);
  v4 = *(v117 + 64);
  __chkstk_darwin(v113);
  v112 = (v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v129 = type metadata accessor for DirectorySequence();
  v122 = *(v129 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v129);
  v121 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5CD0, &qword_1013D7398);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v92 - v16;
  v128 = sub_1000BC4D4(&qword_1016B5CD8, &unk_1013D73A0);
  v125 = *(v128 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v128);
  v127 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v92 - v21;
  v22 = sub_1000BC4D4(&qword_1016B5520, &qword_1013D69F0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v92 - v24;
  v26 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v123 = v92 - v29;
  v30 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v99 = v92 - v32;
  v100 = type metadata accessor for SharingCircleSecret();
  v33 = *(v100 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v100);
  v106 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v92 - v38;
  v40 = *(v33 + 80);
  v41 = v26;
  sub_1000D2A70(v126, v92 - v38, &qword_1016B5518, &unk_1013D69D0);
  v105 = v39;
  sub_1000D2A70(v39, v25, &qword_1016B5520, &qword_1013D69F0);
  v42 = *(v27 + 48);
  v98 = v27 + 48;
  v97 = v42;
  v43 = v42(v25, 1, v26);
  v44 = _swiftEmptyArrayStorage;
  v101 = v33;
  if (v43 == 1)
  {
    v107 = 0;
LABEL_37:
    sub_10000B3A8(v25, &qword_1016B5520, &qword_1013D69F0);
    v68 = v99;
    (*(v101 + 56))(v99, 1, 1, v100);
    v69 = v44;
  }

  else
  {
    v45 = v33;
    v107 = 0;
    v120 = 0;
    v92[1] = v40;
    v92[0] = (v40 + 32) & ~v40;
    v46 = _swiftEmptyArrayStorage + v92[0];
    v126 = (v122 + 48);
    v124 = (v122 + 32);
    v119 = (v117 + 48);
    v110 = (v117 + 32);
    v118 = (v122 + 8);
    v109 = (v117 + 8);
    v108 = (v122 + 56);
    v115 = (v125 + 56);
    v117 = v125 + 48;
    v96 = (v45 + 56);
    v93 = (v27 + 56);
    v95 = (v45 + 48);
    v47 = _swiftEmptyArrayStorage;
    v48 = &unk_1013D73A0;
    v49 = v123;
    v94 = v25;
    v102 = v26;
    while (1)
    {
      v103 = v46;
      v104 = v47;
      sub_1000D2AD8(v25, v49, &qword_1016B5510, &unk_1013D73B0);
      v50 = *(v41 + 40);
      sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
      v125 = *v126;
      if ((v125)(v9, 1, v129) == 1)
      {
LABEL_12:
        sub_10000B3A8(v9, &qword_1016A5970, &unk_1013B3470);
        (*v115)(v17, 1, 1, v128);
LABEL_14:
        sub_10000B3A8(v49, &qword_1016B5510, &unk_1013D73B0);
        sub_10000B3A8(v17, &qword_1016B5CD0, &qword_1013D7398);
        v66 = v105;
        sub_10000B3A8(v105, &qword_1016B5520, &qword_1013D69F0);
        v67 = 1;
        (*v93)(v66, 1, 1, v102);
        v68 = v99;
      }

      else
      {
        v122 = *v124;
        v52 = v113;
        v51 = v114;
        while (1)
        {
          v53 = v48;
          v54 = v121;
          (v122)(v121, v9, v129);
          DirectorySequence.next()();
          if ((*v119)(v51, 1, v52) == 1)
          {
            v55 = v129;
            (*v118)(v54, v129);
            sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v49 + v50, &qword_1016A5970, &unk_1013B3470);
            (*v108)(v49 + v50, 1, 1, v55);
            (*v115)(v17, 1, 1, v128);
          }

          else
          {
            v56 = v9;
            v57 = v112;
            (*v110)(v112, v51, v52);
            v58 = objc_autoreleasePoolPush();
            v59 = v17;
            v60 = v111;
            v61 = v120;
            sub_1012C4774(v57, v123, v111);
            v120 = v61;
            v62 = v58;
            v52 = v113;
            v51 = v114;
            objc_autoreleasePoolPop(v62);
            (*v118)(v54, v129);
            v63 = v60;
            v17 = v59;
            v49 = v123;
            sub_1000D2AD8(v63, v17, &qword_1016B5CD0, &qword_1013D7398);
            v64 = v57;
            v9 = v56;
            (*v109)(v64, v52);
          }

          if ((*v117)(v17, 1, v128) == 1)
          {
            v48 = v53;
            goto LABEL_14;
          }

          v65 = v116;
          sub_1000D2AD8(v17, v116, &qword_1016B5CD8, v53);
          v48 = v53;
          sub_1000D2AD8(v65, v127, &qword_1016B5CD8, v53);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v127, &qword_1016B5CD8, v53);
          sub_1000D2A70(v49 + v50, v9, &qword_1016A5970, &unk_1013B3470);
          if ((v125)(v9, 1, v129) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v49, &qword_1016B5510, &unk_1013D73B0);
        v68 = v99;
        sub_100029420(v127, v99, type metadata accessor for SharingCircleSecret);
        v67 = 0;
      }

      v69 = v104;
      v70 = v103;
      v71 = v67;
      v72 = v100;
      (*v96)(v68, v71, 1, v100);
      if ((*v95)(v68, 1, v72) == 1)
      {
        break;
      }

      result = sub_100029420(v68, v106, type metadata accessor for SharingCircleSecret);
      if (v107)
      {
        v44 = v69;
        v25 = v94;
        v41 = v102;
        v74 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v75 = v69[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        sub_1000BC4D4(&qword_101698D88, &qword_101390910);
        v78 = *(v101 + 72);
        v79 = v92[0];
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v78)
        {
          goto LABEL_44;
        }

        v80 = result - v79;
        v81 = v79;
        if (result - v79 == 0x8000000000000000 && v78 == -1)
        {
          goto LABEL_45;
        }

        v82 = v80 / v78;
        v44[2] = v77;
        v44[3] = 2 * (v80 / v78);
        v83 = v44 + v81;
        v84 = v69[3] >> 1;
        v85 = v84 * v78;
        if (v69[2])
        {
          if (v44 < v69 || v83 >= v69 + v81 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v69[2] = 0;
        }

        v70 = &v83[v85];
        v86 = (v82 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v25 = v94;
        v41 = v102;
        v49 = v123;
        v74 = v86 - 1;
        if (__OFSUB__(v86, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v107 = v74;
      sub_100029420(v106, v70, type metadata accessor for SharingCircleSecret);
      v46 = (v70 + *(v101 + 72));
      sub_1000D2A70(v105, v25, &qword_1016B5520, &qword_1013D69F0);
      v87 = v97(v25, 1, v41);
      v47 = v44;
      if (v87 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v105, &qword_1016B5518, &unk_1013D69D0);
  result = sub_10000B3A8(v68, &qword_101699BB0, &qword_1013B35F0);
  v88 = v69[3];
  if (v88 < 2)
  {
    return v69;
  }

  v89 = v88 >> 1;
  v90 = __OFSUB__(v89, v107);
  v91 = v89 - v107;
  if (!v90)
  {
    v69[2] = v91;
    return v69;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100B39D8C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26[-v4];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for BeaconStoreFileRecord();
  sub_1000D2A70(a1 + *(v11 + 20), v5, &unk_101696AC0, &qword_101390A60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  }

  (*(v7 + 32))(v10, v5, v6);
  v13 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v27 = 0;
  v17 = [v13 removeItemAtURL:v15 error:&v27];

  if (v17)
  {
    v18 = *(v7 + 8);
    v19 = v27;
    return v18(v10, v6);
  }

  else
  {
    v20 = v27;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    v27 = v21;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100008C00();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:_:_:)();

    return (*(v7 + 8))(v10, v6);
  }
}

void *sub_100B3A0F8(uint64_t a1)
{
  v2 = type metadata accessor for BeaconStoreFileRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v49 - v7;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v62 = &v49 - v10;
  v64 = type metadata accessor for UUID();
  v11 = *(v64 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v64);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v49 - v16;
  v69 = type metadata accessor for URL();
  v18 = *(v69 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v69);
  v56 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v63 = &v49 - v23;
  __chkstk_darwin(v22);
  v68 = &v49 - v24;
  v25 = [objc_opt_self() defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v70 = v26;
  if (v26)
  {
    v53 = v3;
    v54 = v2;
    v55 = a1;
    v66 = (v18 + 48);
    v67 = (v18 + 56);
    v65 = (v18 + 32);
    v71 = 0x80000001013541B0;
    v72 = (v18 + 8);
    v61 = (v11 + 48);
    v52 = (v11 + 32);
    v51 = (v18 + 16);
    v50 = (v11 + 8);
    v60 = _swiftEmptyArrayStorage;
    v27 = v68;
    v28 = v69;
    while (1)
    {
      if ([v70 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v73 = 0u;
        v74 = 0u;
      }

      v75 = v73;
      v76 = v74;
      if (!*(&v74 + 1))
      {

        v47 = v60;
        goto LABEL_22;
      }

      v29 = swift_dynamicCast();
      v30 = *v67;
      (*v67)(v17, v29 ^ 1u, 1, v28);
      if ((*v66)(v17, 1, v28) == 1)
      {

        v47 = v60;
        goto LABEL_24;
      }

      (*v65)(v27, v17, v28);
      if (URL.pathExtension.getter() == 0xD000000000000010 && v71 == v31)
      {

LABEL_13:
        v33 = v17;
        v34 = v72;
        v35 = v63;
        v27 = v68;
        URL.deletingPathExtension()();
        URL.lastPathComponent.getter();
        v36 = *v34;
        v37 = v35;
        v28 = v69;
        (*v34)(v37, v69);
        v38 = v62;
        UUID.init(uuidString:)();

        if ((*v61)(v38, 1, v64) == 1)
        {
          v36(v27, v28);
          sub_10000B3A8(v38, &qword_1016980D0, &unk_10138F3B0);
          v17 = v33;
        }

        else
        {
          (*v52)(v57, v38, v64);
          v49 = objc_autoreleasePoolPush();
          UUID.uuidString.getter();
          v39 = v63;
          URL.appendingPathComponent(_:)();

          v40 = v56;
          URL.appendingPathExtension(_:)();
          v36(v39, v28);
          objc_autoreleasePoolPop(v49);
          v41 = *v51;
          v42 = v58;
          (*v51)(v58, v40, v28);
          v43 = *(v54 + 20);
          v41(v42 + v43, v27, v28);
          v30(v42 + v43, 0, 1, v28);
          sub_100034F3C(v42, v59, type metadata accessor for BeaconStoreFileRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_100A5C0A0(0, v60[2] + 1, 1, v60);
          }

          v17 = v33;
          v45 = v60[2];
          v44 = v60[3];
          v27 = v68;
          if (v45 >= v44 >> 1)
          {
            v60 = sub_100A5C0A0(v44 > 1, v45 + 1, 1, v60);
          }

          sub_100B3B210(v58);
          v36(v56, v28);
          (*v50)(v57, v64);
          v36(v27, v28);
          v46 = v60;
          v60[2] = v45 + 1;
          sub_100029420(v59, v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v45, type metadata accessor for BeaconStoreFileRecord);
        }
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_13;
        }

        v27 = v68;
        v28 = v69;
        (*v72)(v68, v69);
      }
    }
  }

  v75 = 0u;
  v76 = 0u;
  v47 = _swiftEmptyArrayStorage;
  v28 = v69;
LABEL_22:
  sub_10000B3A8(&v75, &unk_1016A0B10, &qword_10139BF40);
  (*(v18 + 56))(v17, 1, 1, v28);
LABEL_24:
  sub_10000B3A8(v17, &unk_101696AC0, &qword_101390A60);
  return v47;
}

uint64_t sub_100B3A9AC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29[-v4];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for BeaconStoreFileRecord();
  sub_1000D2A70(a1 + *(v11 + 20), v5, &unk_101696AC0, &qword_101390A60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  }

  (*(v7 + 32))(v10, v5, v6);
  v13 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v30 = 0;
  v20 = [v13 moveItemAtURL:v16 toURL:v18 error:&v30];

  if (v20)
  {
    v21 = *(v7 + 8);
    v22 = v30;
    return v21(v10, v6);
  }

  else
  {
    v23 = v30;
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v30 = v24;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)();

    return (*(v7 + 8))(v10, v6);
  }
}

void sub_100B3AD54()
{
  v0 = objc_autoreleasePoolPush();
  sub_100B2F280(&v1, &v2);
  objc_autoreleasePoolPop(v0);
}

void sub_100B3ADEC()
{
  v26 = [objc_opt_self() standardUserDefaults];
  v0 = [v26 dictionaryRepresentation];
  v1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v27 = v1;

  v7 = 0;
  while (v5)
  {
LABEL_12:
    v10 = (*(v27 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v10;
    v11 = v10[1];
    v13 = qword_101694C38;

    if (v13 != -1)
    {
      swift_once();
    }

    v5 &= v5 - 1;
    v14 = off_1016B58E0;
    if (*(off_1016B58E0 + 2) && (v15 = *(off_1016B58E0 + 5), Hasher.init(_seed:)(), String.hash(into:)(), v16 = Hasher._finalize()(), v17 = -1 << *(v14 + 32), v18 = v16 & ~v17, ((*(v14 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (1)
      {
        v20 = (v14[6] + 16 * v18);
        v21 = *v20 == v12 && v20[1] == v11;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v14 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177BA08);

      v8 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1000136BC(v12, v11, &v28);
        _os_log_impl(&_mh_execute_header, v8, v23, "Ignore persisted user defaults: %s", v24, 0xCu);
        sub_100007BAC(v25);
      }
    }

    else
    {
LABEL_5:
      v8 = String._bridgeToObjectiveC()();
      [v26 removeObjectForKey:v8];
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_12;
    }
  }
}

uint64_t sub_100B3B198()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for NotifyWhenFoundRecord() + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_100B3B210(uint64_t a1)
{
  v2 = type metadata accessor for BeaconStoreFileRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100B3B2A4(int a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v77 = a3;
  v76 = a2;
  v75 = a1;
  v5 = 0;
  v6 = type metadata accessor for BeaconObservation();
  v96 = *(v6 - 8);
  v7 = *(v96 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v94 = &v74[-v12];
  v13 = __chkstk_darwin(v11);
  v15 = &v74[-v14];
  v16 = __chkstk_darwin(v13);
  v95 = &v74[-v17];
  v18 = __chkstk_darwin(v16);
  v81 = &v74[-v19];
  __chkstk_darwin(v18);
  v88 = &v74[-v20];
  v21 = type metadata accessor for OwnedBeaconRecord();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = v3[2];
  v27 = sub_100025044();
  v87 = v27[2];
  if (v87)
  {
    v28 = 0;
    v80 = *(v21 + 20);
    v86 = *(v4 + 24);
    v29 = _swiftEmptyArrayStorage;
    v30 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v85 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
    v84 = v27 + v30;
    v92 = v6;
    v93 = v15;
    v82 = v22;
    v89 = v25;
    v83 = v27;
    while (v28 < v27[2])
    {
      v31 = *(v22 + 72);
      v91 = v28;
      sub_100034FA4(&v84[v31 * v28], v25, type metadata accessor for OwnedBeaconRecord);
      swift_retain_n();
      v32 = objc_autoreleasePoolPush();
      v33 = *(v86 + v85);
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      OS_dispatch_queue.sync<A>(execute:)();
      v34 = v98[0];
      v35 = *(v98[0] + 16);
      v90 = v5;
      if (v35 && (v36 = sub_1000210EC(&v25[v80]), (v37 & 1) != 0))
      {
        v79 = v29;
        v38 = *(*(v34 + 56) + 8 * v36);

        v29 = *(v38 + 16);
        if (v29)
        {
          v39 = sub_100034824(*(v38 + 16), 0);
          v40 = sub_1000364B4(v98, v39 + 4, v29, v38);
          sub_1000128F8();
          if (v40 != v29)
          {
            goto LABEL_61;
          }
        }

        else
        {

          v39 = _swiftEmptyArrayStorage;
        }

        v78 = v32;
        v5 = v4;
        v29 = sub_100034838(v39);

        v42 = v29[2];
        v43 = v93;
        if (v42)
        {
          v44 = 0;
          v41 = _swiftEmptyArrayStorage;
          while (v44 < v29[2])
          {
            v45 = (*(v96 + 80) + 32) & ~*(v96 + 80);
            v4 = *(v96 + 72);
            sub_100034FA4(v29 + v45 + v4 * v44, v43, type metadata accessor for BeaconObservation);
            v46 = *(v43 + *(v6 + 24));
            if (qword_1013D7520[v46] == 700 || qword_1013D7520[v46] == 701)
            {
              sub_100B3DB48(v43, v94);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v98[0] = v41;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_101124308(0, v41[2] + 1, 1);
                v41 = v98[0];
              }

              v49 = v41[2];
              v48 = v41[3];
              if (v49 >= v48 >> 1)
              {
                sub_101124308(v48 > 1, v49 + 1, 1);
                v41 = v98[0];
              }

              v41[2] = v49 + 1;
              sub_100B3DB48(v94, v41 + v45 + v49 * v4);
              v6 = v92;
              v43 = v93;
            }

            else
            {
              sub_100B3DC30(v43, type metadata accessor for BeaconObservation);
            }

            if (v42 == ++v44)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_59;
        }

        v41 = _swiftEmptyArrayStorage;
LABEL_26:

        v4 = v5;
        v25 = v89;
        v5 = v90;
        v29 = v79;
        v22 = v82;
        v32 = v78;
      }

      else
      {

        v41 = _swiftEmptyArrayStorage;
      }

      objc_autoreleasePoolPop(v32);

      v50 = v41[2];
      if (v50)
      {
        v5 = v4;
        v4 = v29;
        v51 = (*(v96 + 80) + 32) & ~*(v96 + 80);
        v29 = (v41 + v51);
        sub_100034FA4(v41 + v51, v95, type metadata accessor for BeaconObservation);
        if (v50 != 1)
        {
          v55 = 1;
          while (v55 < v41[2])
          {
            sub_100034FA4(v29 + *(v96 + 72) * v55, v10, type metadata accessor for BeaconObservation);
            v56 = *(v6 + 20);
            v57 = v95;
            if (static Date.< infix(_:_:)())
            {
              sub_100B3DC30(v57, type metadata accessor for BeaconObservation);
              sub_100B3DB48(v10, v57);
            }

            else
            {
              sub_100B3DC30(v10, type metadata accessor for BeaconObservation);
            }

            if (v50 == ++v55)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          break;
        }

LABEL_29:
        sub_100B3DC30(v89, type metadata accessor for OwnedBeaconRecord);

        v52 = v81;
        sub_100B3DB48(v95, v81);
        sub_100B3DB48(v52, v88);
        v29 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100A5D28C(0, *(v4 + 16) + 1, 1, v4);
        }

        v4 = v5;
        v54 = v29[2];
        v53 = v29[3];
        v5 = v90;
        if (v54 >= v53 >> 1)
        {
          v29 = sub_100A5D28C(v53 > 1, v54 + 1, 1, v29);
        }

        v29[2] = v54 + 1;
        sub_100B3DB48(v88, v29 + v51 + *(v96 + 72) * v54);
        v22 = v82;
        v25 = v89;
      }

      else
      {
        sub_100B3DC30(v25, type metadata accessor for OwnedBeaconRecord);
      }

      v28 = v91 + 1;
      v27 = v83;
      if (v91 + 1 == v87)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_44;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_42:
  v58 = *(*(v4 + 32) + 88);
  CurrentValueSubject.value.getter();
  if (LOBYTE(v98[0]) != 7)
  {

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000076D4(v71, qword_10177B780);
    v64 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v64, v72, "SeparationStateSyncService: This is not the monitoring device, won't accept remote sync request.", v73, 2u);
    }

    goto LABEL_54;
  }

  if (qword_101694B70 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v59 = type metadata accessor for Logger();
  sub_1000076D4(v59, qword_10177B780);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "SeparationStateSyncService: Responding to remote sync request", v62, 2u);
  }

  sub_100B3DAD8(v4 + 40, v98);
  if (v98[3])
  {
    sub_10001F280(v98, v97);
    sub_10000B3A8(v98, &qword_1016B5E88, &unk_1013D7510);
    v63 = *sub_1000035D0(v97, v97[3]);
    sub_10054DBB0(v29, v75, v76, v77);
    if (v5)
    {

      sub_100007BAC(v97);
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v98[0] = v67;
        *v66 = 136315138;
        v97[0] = v5;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v68 = String.init<A>(describing:)();
        v70 = sub_1000136BC(v68, v69, v98);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "SeparationStateSyncService: Failed to reply to sync request due to error: %s", v66, 0xCu);
        sub_100007BAC(v67);

LABEL_54:

        return;
      }
    }

    else
    {

      sub_100007BAC(v97);
    }
  }

  else
  {

    sub_10000B3A8(v98, &qword_1016B5E88, &unk_1013D7510);
  }
}

void sub_100B3BDC0(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v105 - v5;
  v7 = type metadata accessor for BeaconObservation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v125 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v112 = &v105 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v105 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v105 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v105 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v105 - v24;
  v26 = __chkstk_darwin(v23);
  v133 = &v105 - v27;
  v28 = __chkstk_darwin(v26);
  v121 = &v105 - v29;
  v30 = __chkstk_darwin(v28);
  v114 = &v105 - v31;
  v113 = v32;
  __chkstk_darwin(v30);
  v129 = v1;
  v130 = &v105 - v33;
  v34 = *(*(v1 + 32) + 88);
  CurrentValueSubject.value.getter();
  if (LOBYTE(v134[0]) == 7)
  {
    if (qword_101694B70 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_3;
  }

  v106 = v19;
  v111 = v16;
  v120 = *(a1 + 16);
  if (v120)
  {
    v40 = 0;
    v41 = 0;
    v42 = *(v8 + 80);
    v43 = (v42 + 32) & ~v42;
    v124 = *(v129 + 24);
    v119 = a1 + v43;
    v118 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
    v116 = (v8 + 56);
    v115 = (v8 + 48);
    v44 = *(v8 + 72);
    v122 = v42;
    v110 = (v42 + 24) & ~v42;
    v132 = v43;
    v109 = v44 + v43;
    *&v35 = 136315138;
    v108 = v35;
    v107 = xmmword_101385D80;
    v123 = v6;
    v131 = v7;
    v117 = v25;
    do
    {
      v126 = v40;
      v47 = v130;
      sub_100034FA4(v119 + v44 * v40, v130, type metadata accessor for BeaconObservation);

      v128 = objc_autoreleasePoolPush();
      v48 = *(v124 + v118);
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      OS_dispatch_queue.sync<A>(execute:)();
      v49 = v134[0];
      v50 = *(v134[0] + 16);
      v127 = v41;
      if (v50 && (v51 = sub_1000210EC(v47), (v52 & 1) != 0))
      {
        v53 = *(*(v49 + 56) + 8 * v51);

        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = sub_100034824(*(v53 + 16), 0);
          v56 = sub_1000364B4(v134, v55 + 4, v54, v53);
          sub_1000128F8();
          if (v56 != v54)
          {
            goto LABEL_64;
          }
        }

        else
        {

          v55 = _swiftEmptyArrayStorage;
        }

        v58 = sub_100034838(v55);

        v59 = *(v58 + 16);
        if (v59)
        {
          v60 = 0;
          v61 = v58 + v132;
          v57 = _swiftEmptyArrayStorage;
          while (v60 < *(v58 + 16))
          {
            v62 = v133;
            sub_100034FA4(v61, v133, type metadata accessor for BeaconObservation);
            v63 = *(v62 + *(v7 + 24));
            if (qword_1013D7520[v63] == 700 || qword_1013D7520[v63] == 701)
            {
              sub_100B3DB48(v133, v25);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v134[0] = v57;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_101124308(0, v57[2] + 1, 1);
                v57 = v134[0];
              }

              v66 = v57[2];
              v65 = v57[3];
              if (v66 >= v65 >> 1)
              {
                sub_101124308(v65 > 1, v66 + 1, 1);
                v57 = v134[0];
              }

              v57[2] = v66 + 1;
              sub_100B3DB48(v25, v57 + v132 + v66 * v44);
              v7 = v131;
            }

            else
            {
              sub_100B3DC30(v133, type metadata accessor for BeaconObservation);
            }

            ++v60;
            v61 += v44;
            if (v59 == v60)
            {
              goto LABEL_31;
            }
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          swift_once();
LABEL_3:
          v36 = type metadata accessor for Logger();
          sub_1000076D4(v36, qword_10177B780);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "SeparationStateSyncService: This is the monitoring device, won't accept forwarded state.", v39, 2u);
          }

          return;
        }

        v57 = _swiftEmptyArrayStorage;
LABEL_31:

        v6 = v123;
        v47 = v130;
      }

      else
      {

        v57 = _swiftEmptyArrayStorage;
      }

      objc_autoreleasePoolPop(v128);

      v67 = v57[2];
      v68 = v121;
      if (v67)
      {
        sub_100034FA4(v57 + v132, v121, type metadata accessor for BeaconObservation);
        if (v67 != 1)
        {
          v81 = v57 + v109;
          v82 = 1;
          while (1)
          {
            v83 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              break;
            }

            sub_100034FA4(v81, v22, type metadata accessor for BeaconObservation);
            v84 = *(v7 + 20);
            if (static Date.< infix(_:_:)())
            {
              sub_100B3DC30(v68, type metadata accessor for BeaconObservation);
              sub_100B3DB48(v22, v68);
            }

            else
            {
              sub_100B3DC30(v22, type metadata accessor for BeaconObservation);
            }

            ++v82;
            v81 += v44;
            if (v83 == v67)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_63;
        }

LABEL_34:
        sub_100B3DB48(v68, v6);
        (*v116)(v6, 0, 1, v7);

        v47 = v130;
      }

      else
      {
        (*v116)(v6, 1, 1, v7);
      }

      if ((*v115)(v6, 1, v7) == 1)
      {
        sub_10000B3A8(v6, &qword_1016A42E0, &qword_1013B0010);
      }

      else
      {
        v69 = v114;
        sub_100B3DB48(v6, v114);
        v70 = *(v7 + 20);
        if (static Date.> infix(_:_:)())
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          sub_1000076D4(v71, qword_10177B780);
          v72 = v106;
          sub_100034FA4(v47, v106, type metadata accessor for BeaconObservation);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v134[0] = v128;
            *v75 = v108;
            type metadata accessor for UUID();
            sub_1002FFBAC();
            v76 = dispatch thunk of CustomStringConvertible.description.getter();
            v78 = v77;
            sub_100B3DC30(v72, type metadata accessor for BeaconObservation);
            v79 = sub_1000136BC(v76, v78, v134);

            *(v75 + 4) = v79;
            _os_log_impl(&_mh_execute_header, v73, v74, "SeparationStateSyncService: We already have a newer observation for %s, ignoring.", v75, 0xCu);
            sub_100007BAC(v128);

            sub_100B3DC30(v114, type metadata accessor for BeaconObservation);
            v80 = v130;
          }

          else
          {

            sub_100B3DC30(v72, type metadata accessor for BeaconObservation);
            sub_100B3DC30(v114, type metadata accessor for BeaconObservation);
            v80 = v47;
          }

          sub_100B3DC30(v80, type metadata accessor for BeaconObservation);
          v6 = v123;
          v25 = v117;
          v46 = v126;
          v41 = v127;
          goto LABEL_10;
        }

        sub_100B3DC30(v69, type metadata accessor for BeaconObservation);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_1000076D4(v85, qword_10177B780);
      v86 = v111;
      sub_100034FA4(v47, v111, type metadata accessor for BeaconObservation);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v134[0] = v90;
        *v89 = v108;
        type metadata accessor for UUID();
        sub_1002FFBAC();
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v92;
        sub_100B3DC30(v86, type metadata accessor for BeaconObservation);
        v94 = sub_1000136BC(v91, v93, v134);

        *(v89 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v87, v88, "SeparationStateSyncService: Received remote observation for %s", v89, 0xCu);
        sub_100007BAC(v90);

        v47 = v130;
      }

      else
      {

        sub_100B3DC30(v86, type metadata accessor for BeaconObservation);
      }

      v95 = v129;
      v96 = *(v129 + 16);
      v97 = v112;
      sub_100034FA4(v47, v112, type metadata accessor for BeaconObservation);
      sub_100034FA4(v97, v125, type metadata accessor for BeaconObservation);
      v98 = v110;
      v99 = swift_allocObject();
      *(v99 + 16) = v95;
      sub_100B3DB48(v97, v99 + v98);
      v100 = *(v96 + 184);

      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      v41 = v127;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v101 = v134[0];
      v25 = v117;
      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      v134[0] = 0x7365547265646E75;
      v134[1] = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if (v135 == 1)
      {
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v102 = swift_allocObject();
        *(v102 + 16) = v107;
        v128 = v101;
        v103 = v125;
        sub_100034FA4(v125, v102 + v132, type metadata accessor for BeaconObservation);
        v104 = type metadata accessor for Transaction();
        __chkstk_darwin(v104);
        *(&v105 - 4) = v124;
        *(&v105 - 3) = v102;
        *(&v105 - 2) = 0;
        *(&v105 - 1) = 0;
        static Transaction.named<A>(_:with:)();

        v7 = v131;
        sub_100B3DC30(v103, type metadata accessor for BeaconObservation);
      }

      else
      {
        v45 = type metadata accessor for Transaction();
        __chkstk_darwin(v45);
        *(&v105 - 4) = v101;
        *(&v105 - 3) = sub_100B3DBAC;
        *(&v105 - 2) = v99;
        static Transaction.named<A>(_:with:)();

        sub_100B3DC30(v125, type metadata accessor for BeaconObservation);
      }

      sub_100B3DC30(v130, type metadata accessor for BeaconObservation);
      v6 = v123;
      v46 = v126;
LABEL_10:
      v40 = v46 + 1;
    }

    while (v40 != v120);
  }
}

uint64_t sub_100B3CD38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v4 = *(type metadata accessor for BeaconObservation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  sub_100034FA4(a2, v7 + v6, type metadata accessor for BeaconObservation);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100B3CE78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_10000B3A8((v0 + 5), &qword_1016B5E88, &unk_1013D7510);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd26SeparationStateSyncManager_observationStoreSubscription, &unk_1016B2820, &qword_1013D3710);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SeparationStateSyncManager()
{
  result = qword_1016B5D70;
  if (!qword_1016B5D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B3CF70()
{
  sub_100B3D01C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100B3D01C()
{
  if (!qword_1016B1E78)
  {
    sub_1000BC580(&unk_1016B1E80, &qword_10138CDE0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B1E78);
    }
  }
}

void sub_100B3D080(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for BeaconObservation() + 24));
  if (sub_1005C8B3C(v3, &off_101609F88) || sub_1005C8B3C(v3, &off_101609FB0))
  {
    v4 = *(*(v1 + 32) + 88);
    CurrentValueSubject.value.getter();
    if (v9 == 7)
    {
      if (sub_1005C8B3C(v3, &off_10160A028))
      {
        sub_100B3D204(a1);
      }

      else if (sub_1005C8B3C(v3, &off_10160A050))
      {
        sub_100B3D6F8(a1);
      }
    }

    else
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177B780);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "SeparationStateSyncService: Not a monitoring device, won't update separation state.", v8, 2u);
      }
    }
  }
}

uint64_t sub_100B3D204(uint64_t a1)
{
  v3 = type metadata accessor for BeaconObservation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v35 - v9;
  v11 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v35 - v13;
  result = sub_1005C8B3C(*(a1 + *(v3 + 24)), &off_10160A000);
  if (result)
  {
    v16 = *(v1 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = &off_101609FD8;
    v18 = sub_100035730(a1, sub_100319F00, v17);

    sub_1012BB138(v18, v14);

    if ((*(v4 + 48))(v14, 1, v3) == 1)
    {
      return sub_10000B3A8(v14, &qword_1016A42E0, &qword_1013B0010);
    }

    else
    {
      v19 = v14[*(v3 + 24)];
      result = sub_100B3DC30(v14, type metadata accessor for BeaconObservation);
      if (v19 == 41)
      {
        v20 = type metadata accessor for UUID();
        (*(*(v20 - 8) + 16))(v10, a1, v20);
        v21 = a1 + *(v3 + 20);
        Date.addingTimeInterval(_:)();
        v10[*(v3 + 24)] = 42;
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_1000076D4(v22, qword_10177B780);
        sub_100034FA4(a1, v8, type metadata accessor for BeaconObservation);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v35[0] = v26;
          *v25 = 136315138;
          sub_1002FFBAC();
          v27 = dispatch thunk of CustomStringConvertible.description.getter();
          v29 = v28;
          sub_100B3DC30(v8, type metadata accessor for BeaconObservation);
          v30 = sub_1000136BC(v27, v29, v35);

          *(v25 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v23, v24, "SeparationStateSyncService: Detected reunite event for %s.", v25, 0xCu);
          sub_100007BAC(v26);
        }

        else
        {

          sub_100B3DC30(v8, type metadata accessor for BeaconObservation);
        }

        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v31 = *(v4 + 72);
        v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_101385D80;
        sub_100034FA4(v10, v33 + v32, type metadata accessor for BeaconObservation);
        v34 = type metadata accessor for Transaction();
        __chkstk_darwin(v34);
        v35[-4] = v16;
        v35[-3] = v33;
        v35[-2] = 0;
        v35[-1] = 0;
        static Transaction.named<A>(_:with:)();

        return sub_100B3DC30(v10, type metadata accessor for BeaconObservation);
      }
    }
  }

  return result;
}

uint64_t sub_100B3D6F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B780);
  sub_100034FA4(a1, v7, type metadata accessor for BeaconObservation);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_1002FFBAC();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100B3DC30(v7, type metadata accessor for BeaconObservation);
    v16 = sub_1000136BC(v13, v15, v21);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "SeparationStateSyncService: Forwarding Separation State Update for %s.", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    sub_100B3DC30(v7, type metadata accessor for BeaconObservation);
  }

  sub_100B3DAD8(v2 + 40, v21);
  if (!v21[3])
  {
    return sub_10000B3A8(v21, &qword_1016B5E88, &unk_1013D7510);
  }

  sub_10001F280(v21, v20);
  sub_10000B3A8(v21, &qword_1016B5E88, &unk_1013D7510);
  v17 = *sub_1000035D0(v20, v20[3]);
  sub_10054F5EC(a1);
  return sub_100007BAC(v20);
}

uint64_t sub_100B3DAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B5E88, &unk_1013D7510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B3DB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B3DBAC()
{
  v1 = *(type metadata accessor for BeaconObservation() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B3CD38(v2, v3);
}

uint64_t sub_100B3DC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B3DCA8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BAA0);
  sub_1000076D4(v0, qword_10177BAA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B3DD28(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return _swift_task_switch(sub_100B3DD48, v1, 0);
}

uint64_t sub_100B3DD48()
{
  sub_1000D2A70(*(v0 + 104) + 144, v0 + 56, &qword_1016B6108, &unk_1013D7910);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_10000A748((v0 + 56), v0 + 16);
    sub_10000A748((v0 + 16), v1);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_1016B6108, &unk_1013D7910);
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100B3DE68;

    return daemon.getter();
  }
}

uint64_t sub_100B3DE68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  v3[15] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[16] = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FamilyCircleService();
  v3[17] = v8;
  v9 = sub_100B5AB90(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100B5AB90(&unk_1016AF840, 255, type metadata accessor for FamilyCircleService);
  *v6 = v12;
  v6[1] = sub_100B3E050;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100B3E050(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = sub_100B3E1C4;
  }

  else
  {
    v9 = v4[15];
    v10 = v4[13];

    v4[19] = a1;
    v8 = sub_100B3E190;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100B3E190()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v2[3] = *(v0 + 136);
  v2[4] = &off_10164F7C0;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100B3E1C4()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_100B3E228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  sub_1000D2A70(a1, v15 - v10, &unk_1016B1630, &qword_10138CA48);
  v12 = *(v5 + 56);
  sub_1000D2A70(a2, v9, &unk_1016B1630, &qword_10138CA48);
  v13 = *(v5 + 56);
  LOBYTE(a2) = sub_100B3E39C(v11, &v11[v12], v9, &v9[v13]);
  sub_10002FF48(&v9[v13], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v9, &unk_101698BC0, &qword_10138C440);
  sub_10002FF48(&v11[v12], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v11, &unk_101698BC0, &qword_10138C440);
  return a2 & 1;
}

BOOL sub_100B3E39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v5 = type metadata accessor for MemberSharingCircle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v35 = &v33 - v11;
  v12 = sub_1000BC4D4(&qword_1016B60A8, &qword_1013D7868);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = sub_1000BC4D4(&qword_1016B60F0, &qword_1013D78D8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v33 - v23;
  sub_1000D2A70(a1, &v33 - v23, &unk_101698BC0, &qword_10138C440);
  v34 = *(v18 + 56);
  sub_100B5AAA0(v36, &v24[v34], type metadata accessor for MemberSharingCircle);
  sub_1000D2A70(v37, v22, &unk_101698BC0, &qword_10138C440);
  v25 = *(v18 + 56);
  sub_100B5AAA0(v38, &v22[v25], type metadata accessor for MemberSharingCircle);
  v26 = *(v13 + 56);
  sub_1000D2A70(v24, v16, &unk_101698BC0, &qword_10138C440);
  sub_1000D2A70(v22, &v16[v26], &unk_101698BC0, &qword_10138C440);
  v27 = *(v6 + 48);
  if (v27(v16, 1, v5) == 1)
  {
    if (v27(&v16[v26], 1, v5) == 1)
    {
      sub_10000B3A8(v16, &unk_101698BC0, &qword_10138C440);
LABEL_9:
      v29 = sub_1003287CC(&v24[v34], &v22[v25]);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v28 = v35;
  sub_1000D2A70(v16, v35, &unk_101698BC0, &qword_10138C440);
  if (v27(&v16[v26], 1, v5) == 1)
  {
    sub_10002FF48(v28, type metadata accessor for MemberSharingCircle);
LABEL_6:
    sub_10000B3A8(v16, &qword_1016B60A8, &qword_1013D7868);
    goto LABEL_7;
  }

  v30 = v33;
  sub_100038EDC(&v16[v26], v33, type metadata accessor for MemberSharingCircle);
  v31 = sub_1003287CC(v28, v30);
  sub_10002FF48(v30, type metadata accessor for MemberSharingCircle);
  sub_10002FF48(v28, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v16, &unk_101698BC0, &qword_10138C440);
  if (v31)
  {
    goto LABEL_9;
  }

LABEL_7:
  v29 = 0;
LABEL_10:
  sub_10000B3A8(v22, &qword_1016B60F0, &qword_1013D78D8);
  sub_10000B3A8(v24, &qword_1016B60F0, &qword_1013D78D8);
  return v29;
}

BOOL sub_100B3E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v35 = &v33 - v11;
  v12 = sub_1000BC4D4(&qword_1016B60E0, &qword_1013D78C8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = sub_1000BC4D4(&qword_1016B60E8, &qword_1013D78D0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v33 - v23;
  sub_1000D2A70(a1, &v33 - v23, &unk_101698C30, &unk_101392630);
  v34 = *(v18 + 56);
  sub_100B5AAA0(v36, &v24[v34], type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v37, v22, &unk_101698C30, &unk_101392630);
  v25 = *(v18 + 56);
  sub_100B5AAA0(v38, &v22[v25], type metadata accessor for SharedBeaconRecord);
  v26 = *(v13 + 56);
  sub_1000D2A70(v24, v16, &unk_101698C30, &unk_101392630);
  sub_1000D2A70(v22, &v16[v26], &unk_101698C30, &unk_101392630);
  v27 = *(v6 + 48);
  if (v27(v16, 1, v5) == 1)
  {
    if (v27(&v16[v26], 1, v5) == 1)
    {
      sub_10000B3A8(v16, &unk_101698C30, &unk_101392630);
LABEL_9:
      v29 = sub_1011DB3D8(&v24[v34], &v22[v25]);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v28 = v35;
  sub_1000D2A70(v16, v35, &unk_101698C30, &unk_101392630);
  if (v27(&v16[v26], 1, v5) == 1)
  {
    sub_10002FF48(v28, type metadata accessor for SharedBeaconRecord);
LABEL_6:
    sub_10000B3A8(v16, &qword_1016B60E0, &qword_1013D78C8);
    goto LABEL_7;
  }

  v30 = v33;
  sub_100038EDC(&v16[v26], v33, type metadata accessor for SharedBeaconRecord);
  v31 = sub_1011DB3D8(v28, v30);
  sub_10002FF48(v30, type metadata accessor for SharedBeaconRecord);
  sub_10002FF48(v28, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v16, &unk_101698C30, &unk_101392630);
  if (v31)
  {
    goto LABEL_9;
  }

LABEL_7:
  v29 = 0;
LABEL_10:
  sub_10000B3A8(v22, &qword_1016B60E8, &qword_1013D78D0);
  sub_10000B3A8(v24, &qword_1016B60E8, &qword_1013D78D0);
  return v29;
}

BOOL sub_100B3EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v5 = type metadata accessor for OwnerSharingCircle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v35 = &v33 - v11;
  v12 = sub_1000BC4D4(&qword_1016B60F8, &qword_1013D78E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = sub_1000BC4D4(&qword_1016B6100, &qword_1013D78E8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v33 - v23;
  sub_1000D2A70(a1, &v33 - v23, &unk_1016AFA00, &qword_10138C4D0);
  v34 = *(v18 + 56);
  sub_100B5AAA0(v36, &v24[v34], type metadata accessor for OwnerSharingCircle);
  sub_1000D2A70(v37, v22, &unk_1016AFA00, &qword_10138C4D0);
  v25 = *(v18 + 56);
  sub_100B5AAA0(v38, &v22[v25], type metadata accessor for OwnerSharingCircle);
  v26 = *(v13 + 56);
  sub_1000D2A70(v24, v16, &unk_1016AFA00, &qword_10138C4D0);
  sub_1000D2A70(v22, &v16[v26], &unk_1016AFA00, &qword_10138C4D0);
  v27 = *(v6 + 48);
  if (v27(v16, 1, v5) == 1)
  {
    if (v27(&v16[v26], 1, v5) == 1)
    {
      sub_10000B3A8(v16, &unk_1016AFA00, &qword_10138C4D0);
LABEL_9:
      v29 = sub_100E11AF8(&v24[v34], &v22[v25]);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v28 = v35;
  sub_1000D2A70(v16, v35, &unk_1016AFA00, &qword_10138C4D0);
  if (v27(&v16[v26], 1, v5) == 1)
  {
    sub_10002FF48(v28, type metadata accessor for OwnerSharingCircle);
LABEL_6:
    sub_10000B3A8(v16, &qword_1016B60F8, &qword_1013D78E0);
    goto LABEL_7;
  }

  v30 = v33;
  sub_100038EDC(&v16[v26], v33, type metadata accessor for OwnerSharingCircle);
  v31 = sub_100E11AF8(v28, v30);
  sub_10002FF48(v30, type metadata accessor for OwnerSharingCircle);
  sub_10002FF48(v28, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v16, &unk_1016AFA00, &qword_10138C4D0);
  if (v31)
  {
    goto LABEL_9;
  }

LABEL_7:
  v29 = 0;
LABEL_10:
  sub_10000B3A8(v22, &qword_1016B6100, &qword_1013D78E8);
  sub_10000B3A8(v24, &qword_1016B6100, &qword_1013D78E8);
  return v29;
}

uint64_t sub_100B3EFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  sub_1000D2A70(a1, v15 - v10, &unk_1016B15C0, &unk_1013D7870);
  v12 = *(v5 + 56);
  sub_1000D2A70(a2, v9, &unk_1016B15C0, &unk_1013D7870);
  v13 = *(v5 + 56);
  LOBYTE(a2) = sub_100B3E7B8(v11, &v11[v12], v9, &v9[v13]);
  sub_10002FF48(&v9[v13], type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v9, &unk_101698C30, &unk_101392630);
  sub_10002FF48(&v11[v12], type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v11, &unk_101698C30, &unk_101392630);
  return a2 & 1;
}

uint64_t sub_100B3F164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  sub_1000D2A70(a1, v15 - v10, &unk_1016B1610, &qword_10138CA38);
  v12 = *(v5 + 56);
  sub_1000D2A70(a2, v9, &unk_1016B1610, &qword_10138CA38);
  v13 = *(v5 + 56);
  LOBYTE(a2) = sub_100B3EBD4(v11, &v11[v12], v9, &v9[v13]);
  sub_10002FF48(&v9[v13], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v9, &unk_1016AFA00, &qword_10138C4D0);
  sub_10002FF48(&v11[v12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v11, &unk_1016AFA00, &qword_10138C4D0);
  return a2 & 1;
}

uint64_t sub_100B3F2D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = a2;
  *(v4 + 152) = v3;
  *(v4 + 549) = a3;
  *(v4 + 136) = a1;
  v6 = type metadata accessor for MemberSharingCircle();
  *(v4 + 160) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v8 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v9 = type metadata accessor for BeaconProductInfoRecord();
  *(v4 + 184) = v9;
  v10 = *(v9 - 8);
  *(v4 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v12 = type metadata accessor for SharedBeaconRecord(0);
  *(v4 + 208) = v12;
  v13 = *(v12 - 8);
  *(v4 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v15 = type metadata accessor for MemberPeerTrust();
  *(v4 + 240) = v15;
  v16 = *(v15 - 8);
  *(v4 + 248) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v18 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 280) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  v20 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v4 + 312) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v22 = type metadata accessor for UUID();
  *(v4 + 344) = v22;
  v23 = *(v22 - 8);
  *(v4 + 352) = v23;
  *(v4 + 360) = *(v23 + 64);
  *(v4 + 368) = swift_task_alloc();
  v24 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 376) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v26 = *(v6 + 24);
  *(v4 + 552) = v26;
  v27 = swift_task_alloc();
  *(v4 + 408) = v27;
  *v27 = v4;
  v27[1] = sub_100B3F688;

  return sub_100B57904(a1 + v26);
}

uint64_t sub_100B3F688(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v5 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = a2;

  return _swift_task_switch(sub_100B3F7A0, v5, 0);
}

uint64_t sub_100B3F7A0()
{
  v1 = *(*(v0 + 152) + 136);
  *(v0 + 432) = v1;
  return _swift_task_switch(sub_100B3F7C4, v1, 0);
}

uint64_t sub_100B3F7C4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 552);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v7 = *(v0 + 136);
  v8 = *(v6 + 16);
  *(v0 + 440) = v8;
  *(v0 + 448) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v2, v5);
  v9 = *(v6 + 80);
  *(v0 + 556) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 456) = v11;
  *(v11 + 16) = v1;
  v12 = *(v6 + 32);
  *(v0 + 464) = v12;
  *(v0 + 472) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v3, v5);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 480) = v14;
  *v14 = v0;
  v14[1] = sub_100B3F950;
  v15 = *(v0 + 400);
  v16 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC84, v11, v16);
}

uint64_t sub_100B3F950()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 432);
  v5 = *v0;

  return _swift_task_switch(sub_100B3FA7C, v3, 0);
}

uint64_t sub_100B3FA7C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = (*(v0 + 556) + 24) & ~*(v0 + 556);
  (*(v0 + 440))(v5, *(v0 + 136) + *(v0 + 552), v6);
  v8 = swift_allocObject();
  *(v0 + 488) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_100B3FBD4;
  v11 = *(v0 + 336);
  v12 = *(v0 + 312);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC8C, v8, v12);
}

uint64_t sub_100B3FBD4()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 488);
  v4 = *(*v0 + 432);
  v5 = *(*v0 + 160);
  v7 = *v0;

  *(v1 + 560) = *(v5 + 32);

  return _swift_task_switch(sub_100B3FD24, v4, 0);
}

uint64_t sub_100B3FD24()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = (*(v0 + 556) + 24) & ~*(v0 + 556);
  (*(v0 + 440))(v5, *(v0 + 136) + *(v0 + 560), v6);
  v8 = swift_allocObject();
  *(v0 + 504) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_100B3FE7C;
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC88, v8, v12);
}

uint64_t sub_100B3FE7C()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_100B3FFA8, v3, 0);
}

uint64_t sub_100B3FFA8()
{
  v1 = v0[17];
  v2 = sub_10016642C();
  v0[65] = v2;
  v0[13] = v2;
  v3 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[66] = v4;
  v5 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v6 = sub_100014084(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v4 = v0;
  v4[1] = sub_100B400B8;
  v7 = v0[30];
  v8 = v0[19];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013D7900, v8, v5, v7, v6);
}

uint64_t sub_100B400B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v5 = *v2;
  *(*v2 + 536) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 520);
    v8 = *(v3 + 152);

    return _swift_task_switch(sub_100B401FC, v8, 0);
  }
}

void sub_100B401FC()
{
  v226 = v0;
  v1 = *(v0 + 424);
  if (!v1)
  {
    v9 = *(v0 + 536);

LABEL_9:
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 424);
    v18 = *(v0 + 400);
    v19 = *(v0 + 384);
    v20 = *(v0 + 336);
    v21 = *(v0 + 320);
    v22 = *(v0 + 304);
    v23 = *(v0 + 288);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177BAA0);
    sub_1000D2A70(v22, v23, &qword_101698C10, &unk_10138C1E0);
    sub_1000D2A70(v18, v19, &unk_101698C30, &unk_101392630);
    sub_1000D2A70(v20, v21, &unk_1016AF8C0, &unk_1013A07A0);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v214 = v26;
      v27 = *(v0 + 549);
      v28 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      *v28 = 136316162;
      loga = v25;
      v225[0] = v208;
      if (v27)
      {
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 112) = *(v0 + 144);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v33;
      }

      v34 = v1 != 0;
      v35 = *(v0 + 288);
      v36 = *(v0 + 248);
      v187 = *(v0 + 240);
      v37 = *(v0 + 216);
      v190 = *(v0 + 208);
      v193 = *(v0 + 384);
      v38 = *(v0 + 192);
      v197 = *(v0 + 184);
      v202 = *(v0 + 320);
      v39 = sub_1000136BC(v29, v30, v225);

      *(v28 + 4) = v39;
      *(v28 + 12) = 1024;

      *(v28 + 14) = v34;

      *(v28 + 18) = 1024;
      v40 = (*(v36 + 48))(v35, 1, v187) != 1;
      sub_10000B3A8(v35, &qword_101698C10, &unk_10138C1E0);
      *(v28 + 20) = v40;
      *(v28 + 24) = 1024;
      LODWORD(v35) = (*(v37 + 48))(v193, 1, v190) != 1;
      sub_10000B3A8(v193, &unk_101698C30, &unk_101392630);
      *(v28 + 26) = v35;
      *(v28 + 30) = 1024;
      LODWORD(v38) = (*(v38 + 48))(v202, 1, v197) != 1;
      sub_10000B3A8(v202, &unk_1016AF8C0, &unk_1013A07A0);
      *(v28 + 32) = v38;
      _os_log_impl(&_mh_execute_header, loga, v214, "%s Can't post Share Suggestion Notification! beaconName(%{BOOL}d), ownerPeerTrust(%{BOOL}d), sharedBeacon(%{BOOL}d), productInfo(%{BOOL}d).", v28, 0x24u);
      sub_100007BAC(v208);
    }

    else
    {
      v31 = *(v0 + 384);
      v32 = *(v0 + 288);
      sub_10000B3A8(*(v0 + 320), &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v31, &unk_101698C30, &unk_101392630);
      sub_10000B3A8(v32, &qword_101698C10, &unk_10138C1E0);
      swift_bridgeObjectRelease_n();
    }

    v41 = *(v0 + 392);
    v42 = *(v0 + 400);
    v43 = *(v0 + 384);
    v44 = *(v0 + 368);
    v45 = *(v0 + 328);
    v46 = *(v0 + 336);
    v47 = *(v0 + 304);
    v184 = *(v0 + 320);
    v185 = *(v0 + 296);
    v186 = *(v0 + 288);
    v188 = *(v0 + 272);
    v191 = *(v0 + 264);
    v194 = *(v0 + 256);
    v198 = *(v0 + 232);
    v203 = *(v0 + 224);
    v209 = *(v0 + 200);
    v215 = *(v0 + 176);
    logb = *(v0 + 168);
    sub_100B58A3C();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    sub_10000B3A8(v47, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v46, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v42, &unk_101698C30, &unk_101392630);

    v49 = *(v0 + 8);
    goto LABEL_18;
  }

  log = *(v0 + 424);
  v2 = *(v0 + 296);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  sub_1000D2A70(*(v0 + 304), v2, &qword_101698C10, &unk_10138C1E0);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 536);
    v6 = *(v0 + 296);

    v7 = &qword_101698C10;
    v8 = &unk_10138C1E0;
LABEL_7:
    v16 = v6;
LABEL_8:
    sub_10000B3A8(v16, v7, v8);
    v1 = log;
    goto LABEL_9;
  }

  v11 = *(v0 + 392);
  v10 = *(v0 + 400);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  sub_100038EDC(*(v0 + 296), *(v0 + 272), type metadata accessor for MemberPeerTrust);
  sub_1000D2A70(v10, v11, &unk_101698C30, &unk_101392630);
  if ((*(v12 + 48))(v11, 1, v13) == 1)
  {
    v14 = *(v0 + 536);
    v6 = *(v0 + 392);
    v15 = *(v0 + 272);

    sub_10002FF48(v15, type metadata accessor for MemberPeerTrust);
    v7 = &unk_101698C30;
    v8 = &unk_101392630;
    goto LABEL_7;
  }

  v51 = *(v0 + 328);
  v50 = *(v0 + 336);
  v53 = *(v0 + 184);
  v52 = *(v0 + 192);
  sub_100038EDC(*(v0 + 392), *(v0 + 232), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v50, v51, &unk_1016AF8C0, &unk_1013A07A0);
  if ((*(v52 + 48))(v51, 1, v53) == 1)
  {
    v54 = *(v0 + 536);
    v55 = *(v0 + 328);
    v56 = *(v0 + 272);
    sub_10002FF48(*(v0 + 232), type metadata accessor for SharedBeaconRecord);

    sub_10002FF48(v56, type metadata accessor for MemberPeerTrust);
    v7 = &unk_1016AF8C0;
    v8 = &unk_1013A07A0;
    v16 = v55;
    goto LABEL_8;
  }

  v57 = *(v0 + 200);
  v58 = *(v0 + 184);
  sub_100038EDC(*(v0 + 328), v57, type metadata accessor for BeaconProductInfoRecord);
  v59 = *(v0 + 536);
  if (*(v57 + *(v58 + 36)))
  {

    if (qword_101694C50 != -1)
    {
LABEL_96:
      swift_once();
    }

    v60 = *(v0 + 168);
    v61 = *(v0 + 136);
    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177BAA0);
    sub_100B5AAA0(v61, v60, type metadata accessor for MemberSharingCircle);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 549);
      v66 = swift_slowAlloc();
      v225[0] = swift_slowAlloc();
      *v66 = 136315651;
      if (v65)
      {
        v67 = 0;
        v68 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 128) = *(v0 + 144);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v117;
      }

      v118 = *(v0 + 344);
      v217 = *(v0 + 336);
      logc = *(v0 + 400);
      v205 = *(v0 + 232);
      v211 = *(v0 + 304);
      v199 = *(v0 + 200);
      v119 = *(v0 + 160);
      v120 = *(v0 + 168);
      v121 = sub_1000136BC(v67, v68, v225);

      *(v66 + 4) = v121;
      *(v66 + 12) = 2160;
      *(v66 + 14) = 1752392040;
      *(v66 + 22) = 2081;
      v122 = *(v119 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      v125 = v124;
      sub_10002FF48(v120, type metadata accessor for MemberSharingCircle);
      v126 = sub_1000136BC(v123, v125, v225);

      *(v66 + 24) = v126;
      _os_log_impl(&_mh_execute_header, v63, v64, "%s Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v66, 0x20u);
      swift_arrayDestroy();

      sub_10002FF48(v199, type metadata accessor for BeaconProductInfoRecord);
      sub_10002FF48(v205, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v211, &qword_101698C10, &unk_10138C1E0);
      sub_10000B3A8(v217, &unk_1016AF8C0, &unk_1013A07A0);
      v105 = logc;
    }

    else
    {
      v99 = *(v0 + 400);
      v100 = *(v0 + 336);
      v101 = *(v0 + 304);
      v102 = *(v0 + 232);
      v103 = *(v0 + 200);
      v104 = *(v0 + 168);

      sub_10002FF48(v104, type metadata accessor for MemberSharingCircle);
      sub_10002FF48(v103, type metadata accessor for BeaconProductInfoRecord);
      sub_10002FF48(v102, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v101, &qword_101698C10, &unk_10138C1E0);
      sub_10000B3A8(v100, &unk_1016AF8C0, &unk_1013A07A0);
      v105 = v99;
    }

    sub_10000B3A8(v105, &unk_101698C30, &unk_101392630);
    v127 = *(v0 + 272);
    goto LABEL_94;
  }

  v216 = *(v59 + 16);
  if (!v216)
  {
    v70 = _swiftEmptyArrayStorage;
LABEL_56:

    v106 = v70[2];

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v108 = *(v0 + 224);
    v107 = *(v0 + 232);
    v109 = type metadata accessor for Logger();
    sub_1000076D4(v109, qword_10177BAA0);
    sub_100B5AAA0(v107, v108, type metadata accessor for SharedBeaconRecord);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = *(v0 + 549);
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v225[0] = v114;
      *v113 = 136315650;
      if (v112)
      {
        v115 = 0;
        v116 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 120) = *(v0 + 144);
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v116 = v128;
      }

      v129 = *(v0 + 224);
      v130 = *(v0 + 208);
      v131 = sub_1000136BC(v115, v116, v225);

      *(v113 + 4) = v131;
      *(v113 + 12) = 1024;
      v132 = *(v0 + 224);
      v134 = *(v129 + *(v130 + 44)) == 76 && (v133 = *(v132 + *(*(v0 + 208) + 48)), !HIDWORD(v133)) && (v133 == 21760 || v133 == 22034);
      sub_10002FF48(v132, type metadata accessor for SharedBeaconRecord);
      *(v113 + 14) = v134;
      *(v113 + 18) = 1024;
      *(v113 + 20) = v106 != 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "%s post Share Suggestion Notification,\nisAirTag:%{BOOL}d,\nisContainBlockedMembers:%{BOOL}d", v113, 0x18u);
      sub_100007BAC(v114);
    }

    else
    {
      sub_10002FF48(*(v0 + 224), type metadata accessor for SharedBeaconRecord);
    }

    v136 = *(v0 + 200);
    v137 = *(v0 + 184);
    v138 = (*(v0 + 272) + *(*(v0 + 240) + 32));
    v139 = v138[1];
    v218 = *v138;
    v140 = *(v136 + *(v137 + 112));
    if (v140 == 2)
    {
      v141 = (v136 + *(v137 + 24));
      v142 = v141[1];
      *(v0 + 88) = *v141;
      *(v0 + 96) = v142;
      sub_1000DF96C();

      v143 = Data.init<A>(hexString:)();
      if (v144 >> 60 == 15)
      {
        goto LABEL_90;
      }

      v145 = v143;
      v146 = v144;
      sub_100017D5C(v143, v144);
      v147 = sub_100314594(v145, v146);
      if (v148 >> 60 == 15)
      {
        sub_100006654(v145, v146);
        goto LABEL_90;
      }

      v149 = *(v0 + 176);
      v150 = v147;
      v151 = v148;
      sub_100313B54(v147, v148);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      sub_100006654(v150, v151);
      sub_100006654(v145, v146);
      v152 = *(v0 + 544);
      if (*(v0 + 548))
      {
        v153 = 0;
      }

      else
      {
        v153 = *(v0 + 544);
      }

      if (sub_100B8A580(v153) >= 2u)
      {
LABEL_90:
        if (v106)
        {
          goto LABEL_91;
        }

LABEL_92:
        v154 = v139;
        v155 = type metadata accessor for ItemShareInviteReceivedUserNotification(0);
        v156 = &off_101648B28;
        goto LABEL_93;
      }

      LOBYTE(v140) = 1;
    }

    if (v106)
    {
      if ((v140 & 1) == 0)
      {
LABEL_91:
        v154 = v139;
        v155 = type metadata accessor for ItemShareInviteReceivedWithBlockedMembersUserNotification(0);
        v156 = &off_101648B90;
        goto LABEL_93;
      }

      v154 = v139;
      v155 = type metadata accessor for ItemShareInviteReceivedAirTagWithBlockedMembersUserNotification(0);
      v156 = &off_101648AC0;
    }

    else
    {
      if ((v140 & 1) == 0)
      {
        goto LABEL_92;
      }

      v154 = v139;
      v155 = type metadata accessor for ItemShareInviteReceivedAirTagUserNotification(0);
      v156 = &off_101648A58;
    }

LABEL_93:
    v157 = *(v0 + 416);
    v200 = *(v0 + 336);
    v206 = *(v0 + 400);
    v195 = *(v0 + 304);
    v212 = *(v0 + 272);
    v158 = *(v0 + 232);
    v159 = *(v0 + 200);
    v160 = *(v0 + 184);
    v161 = *(v0 + 152);
    v162 = *(v0 + 136);
    *(v0 + 40) = v155;
    *(v0 + 48) = v156;
    v163 = sub_1000280DC((v0 + 16));
    sub_100B5AAA0(v162, v163, type metadata accessor for MemberSharingCircle);
    v164 = (v159 + *(v160 + 44));
    v166 = *v164;
    v165 = v164[1];
    v167 = (v163 + v155[5]);
    *v167 = v157;
    v167[1] = log;
    v168 = (v163 + v155[6]);
    *v168 = v218;
    v168[1] = v154;
    v169 = (v163 + v155[7]);
    *v169 = v166;
    v169[1] = v165;
    v170 = *(v161 + 128);

    swift_unownedRetainStrong();
    v171 = *(v0 + 40);
    v172 = *(v0 + 48);
    v173 = sub_1000035D0((v0 + 16), v171);

    sub_100E1EF8C(v173, 0, 0, v171, v172);

    sub_10002FF48(v159, type metadata accessor for BeaconProductInfoRecord);
    sub_10002FF48(v158, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v195, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v200, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v206, &unk_101698C30, &unk_101392630);
    sub_100007BAC((v0 + 16));
    v127 = v212;
LABEL_94:
    sub_10002FF48(v127, type metadata accessor for MemberPeerTrust);
    v175 = *(v0 + 392);
    v174 = *(v0 + 400);
    v176 = *(v0 + 384);
    v177 = *(v0 + 368);
    v179 = *(v0 + 328);
    v178 = *(v0 + 336);
    v180 = *(v0 + 320);
    v182 = *(v0 + 296);
    v181 = *(v0 + 304);
    v183 = *(v0 + 288);
    v189 = *(v0 + 272);
    v192 = *(v0 + 264);
    v196 = *(v0 + 256);
    v201 = *(v0 + 232);
    v207 = *(v0 + 224);
    v213 = *(v0 + 200);
    v219 = *(v0 + 176);
    logd = *(v0 + 168);

    v49 = *(v0 + 8);
LABEL_18:

    v49();
    return;
  }

  v69 = 0;
  v204 = *(v0 + 240);
  v210 = *(v0 + 248);
  v70 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v69 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_96;
    }

    v71 = *(v0 + 264);
    v72 = (*(v210 + 80) + 32) & ~*(v210 + 80);
    v73 = *(v210 + 72);
    sub_100B5AAA0(*(v0 + 536) + v72 + v73 * v69, v71, type metadata accessor for MemberPeerTrust);
    v74 = (v71 + *(v204 + 32));
    v75 = *v74;
    v76 = v74[1];
    v77 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v77 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (!v77)
    {
      goto LABEL_30;
    }

    *(v0 + 56) = v75;
    *(v0 + 64) = v76;
    *(v0 + 72) = 64;
    *(v0 + 80) = 0xE100000000000000;
    sub_1000DF96C();
    v78 = StringProtocol.contains<A>(_:)();
    v79 = String._bridgeToObjectiveC()();
    if ((v78 & 1) == 0)
    {
      break;
    }

    v80 = IDSCopyIDForEmailAddress();

    if (!v80)
    {
      goto LABEL_99;
    }

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = sub_100EB3708(0, v81, v83);
    v85 = [v84 destination];

    if (!v85)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = String._bridgeToObjectiveC()();
    }

    v86 = CMFItemCreateWithEmailAddress();

    if (!v86)
    {
      goto LABEL_98;
    }

LABEL_47:
    IsItemBlocked = CMFBlockListIsItemBlocked();
    swift_unknownObjectRelease();

    if (IsItemBlocked)
    {
      sub_100038EDC(*(v0 + 264), *(v0 + 256), type metadata accessor for MemberPeerTrust);
      v225[0] = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_101124260(0, v70[2] + 1, 1);
        v70 = v225[0];
      }

      v96 = v70[2];
      v95 = v70[3];
      if (v96 >= v95 >> 1)
      {
        sub_101124260(v95 > 1, v96 + 1, 1);
        v70 = v225[0];
      }

      v97 = *(v0 + 256);
      v70[2] = v96 + 1;
      sub_100038EDC(v97, v70 + v72 + v96 * v73, type metadata accessor for MemberPeerTrust);
      goto LABEL_31;
    }

LABEL_30:
    sub_10002FF48(*(v0 + 264), type metadata accessor for MemberPeerTrust);
LABEL_31:
    if (v216 == ++v69)
    {
      v98 = *(v0 + 536);
      goto LABEL_56;
    }
  }

  v87 = IDSCopyIDForPhoneNumber();

  if (v87)
  {
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91 = sub_100EB3708(1, v88, v90);
    v92 = [v91 destination];

    if (!v92)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = String._bridgeToObjectiveC()();
    }

    v93 = CFPhoneNumberCreate();

    if (!CMFItemCreateWithPhoneNumber())
    {
      goto LABEL_100;
    }

    goto LABEL_47;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

uint64_t sub_100B41634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100B41700, 0, 0);
}

uint64_t sub_100B41700()
{
  v1 = *(*(v0 + 32) + 136);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100B41724, v1, 0);
}

uint64_t sub_100B41724()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *v8 = v0;
  v8[1] = sub_100B4189C;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC88, v6, v9);
}

uint64_t sub_100B4189C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100B419CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[51] = a4;
  v5[52] = v4;
  v5[49] = a2;
  v5[50] = a3;
  v5[48] = a1;
  v6 = type metadata accessor for OwnerSharingCircle();
  v5[53] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v8 = type metadata accessor for ItemShareRequestReceivedUserNotification();
  v5[55] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[56] = swift_task_alloc();
  v10 = type metadata accessor for BeaconProductInfoRecord();
  v5[57] = v10;
  v11 = *(v10 - 8);
  v5[58] = v11;
  v12 = *(v11 + 64) + 15;
  v5[59] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  v5[60] = v13;
  v14 = *(v13 - 8);
  v5[61] = v14;
  v15 = *(v14 + 64) + 15;
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8) - 8) + 64) + 15;
  v5[64] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v18 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v5[68] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[69] = swift_task_alloc();
  v20 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v5[70] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v22 = type metadata accessor for OwnerPeerTrust();
  v5[74] = v22;
  v23 = *(v22 - 8);
  v5[75] = v23;
  v24 = *(v23 + 64) + 15;
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v25 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v5[80] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v27 = type metadata accessor for UUID();
  v5[84] = v27;
  v28 = *(v27 - 8);
  v5[85] = v28;
  v5[86] = *(v28 + 64);
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();

  return _swift_task_switch(sub_100B41DE8, v4, 0);
}

uint64_t sub_100B41DE8()
{
  v1 = *(v0[52] + 184);
  if (v1)
  {
    v0[96] = v1;
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    v0[97] = v2;
    *v2 = v0;
    v2[1] = sub_100B42224;
    v3 = v0[52];

    return sub_100B3DD28((v0 + 8));
  }

  else
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v0[92] = v6;
    *v6 = v0;
    v6[1] = sub_100B41F00;

    return daemon.getter();
  }
}

uint64_t sub_100B41F00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 736);
  v12 = *v1;
  *(v3 + 744) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 752) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_100B5AB90(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100B5AB90(&qword_1016B1190, 255, type metadata accessor for PeerTrustService);
  *v6 = v12;
  v6[1] = sub_100B420E4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100B420E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 752);
  v6 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v7 = v4[52];
    v8 = sub_100B4248C;
  }

  else
  {
    v9 = v4[93];
    v10 = v4[52];

    v4[99] = a1;
    v8 = sub_100B423B4;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100B42224()
{
  v2 = *(*v1 + 776);
  v3 = *v1;
  *(v3 + 784) = v0;

  if (v0)
  {
    v4 = *(v3 + 416);

    return _swift_task_switch(sub_100B48C18, v4, 0);
  }

  else
  {
    v5 = *(v3 + 384);
    v6 = *(*(v3 + 424) + 24);
    *(v3 + 1024) = v6;
    v7 = swift_task_alloc();
    *(v3 + 800) = v7;
    *v7 = v3;
    v7[1] = sub_100B4265C;
    v8 = *(v3 + 416);

    return sub_100B57904(v5 + v6);
  }
}

uint64_t sub_100B423B4()
{
  sub_100B5AB90(&qword_10169EF00, 255, type metadata accessor for PeerTrustService);
  v0[96] = v0[99];
  v1 = swift_task_alloc();
  v0[97] = v1;
  *v1 = v0;
  v1[1] = sub_100B42224;
  v2 = v0[52];

  return sub_100B3DD28((v0 + 8));
}

uint64_t sub_100B4248C()
{
  v1 = v0[93];

  v29 = v0[95];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[79];
  v11 = v0[78];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[69];
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[65];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[62];
  v26 = v0[59];
  v27 = v0[56];
  v28 = v0[54];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100B4265C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v5 = *(*v2 + 416);
  v7 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = a2;

  return _swift_task_switch(sub_100B42778, v5, 0);
}

uint64_t sub_100B42778()
{
  v1 = *(*(v0 + 416) + 136);
  *(v0 + 824) = v1;
  return _swift_task_switch(sub_100B4279C, v1, 0);
}

uint64_t sub_100B4279C()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 728);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 384);
  v8 = *(v5 + 16);
  *(v0 + 832) = v8;
  *(v0 + 840) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v2, v6);
  v9 = *(v5 + 80);
  *(v0 + 1028) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 848) = v11;
  *(v11 + 16) = v1;
  v12 = *(v5 + 32);
  *(v0 + 856) = v12;
  *(v0 + 864) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v3, v6);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 872) = v14;
  v15 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v14 = v0;
  v14[1] = sub_100B4294C;

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v11, v15);
}

uint64_t sub_100B4294C()
{
  v1 = *(*v0 + 872);
  v2 = *(*v0 + 848);
  v3 = *(*v0 + 824);
  v5 = *v0;

  return _swift_task_switch(sub_100B42A78, v3, 0);
}

uint64_t sub_100B42A78()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 840);
  v4 = *(v0 + 824);
  v5 = *(v0 + 728);
  v6 = *(v0 + 688);
  v7 = *(v0 + 672);
  v8 = (*(v0 + 1028) + 24) & ~*(v0 + 1028);
  (*(v0 + 832))(v5, *(v0 + 384) + *(v0 + 1024), v7);
  v9 = swift_allocObject();
  *(v0 + 880) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 888) = v11;
  *v11 = v0;
  v11[1] = sub_100B42BDC;
  v12 = *(v0 + 664);
  v13 = *(v0 + 640);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC8C, v9, v13);
}

uint64_t sub_100B42BDC()
{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 880);
  v3 = *(*v0 + 416);
  v5 = *v0;

  return _swift_task_switch(sub_100B42D08, v3, 0);
}

uint64_t sub_100B42D08()
{
  v1 = *(v0 + 408);
  if (v1)
  {
    v2 = *(v0 + 392);
    v3 = swift_task_alloc();
    *(v0 + 896) = v3;
    *v3 = v0;
    v3[1] = sub_100B43248;
    v4 = *(v0 + 768);
    v5 = *(v0 + 400);

    return sub_100E86158(v2, v5, v1);
  }

  else
  {
    v7 = *(*(v0 + 384) + *(*(v0 + 424) + 32));
    v10 = *(v7 + 64);
    v9 = v7 + 64;
    v8 = v10;
    v60 = *(v0 + 560);
    v62 = *(v0 + 680);
    v11 = -1;
    v12 = -1 << *(*(*(v0 + 384) + *(*(v0 + 424) + 32)) + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & v8;
    v14 = (63 - v12) >> 6;
    v64 = *(*(v0 + 384) + *(*(v0 + 424) + 32));

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_12:
        v17 = *(v0 + 840);
        v18 = *(v0 + 576);
        v19 = *(v0 + 568);
        v20 = __clz(__rbit64(v13)) | (v16 << 6);
        (*(v0 + 832))(v18, *(v64 + 48) + *(v62 + 72) * v20, *(v0 + 672));
        *(v18 + *(v60 + 48)) = *(*(v64 + 56) + v20);
        sub_1000D2AD8(v18, v19, &qword_1016BBEE0, &unk_10139CBF0);
        if (*(v19 + *(v60 + 48)) == 2)
        {
          break;
        }

        v13 &= v13 - 1;
        sub_10000B3A8(*(v0 + 568), &qword_1016BBEE0, &unk_10139CBF0);
        v15 = v16;
        if (!v13)
        {
          goto LABEL_9;
        }
      }

      v39 = *(v0 + 864);
      v40 = *(v0 + 856);
      v41 = *(v0 + 824);
      v42 = *(v0 + 720);
      v43 = *(v0 + 712);
      v44 = *(v0 + 672);
      v45 = *(v0 + 584);
      v46 = *(v0 + 568);

      sub_1000D2AD8(v46, v45, &qword_1016BBEE0, &unk_10139CBF0);
      v40(v43, v45, v44);
      v40(v42, v43, v44);

      return _swift_task_switch(sub_100B45BD0, v41, 0);
    }

    else
    {
      while (1)
      {
LABEL_9:
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_25;
        }

        if (v16 >= v14)
        {
          break;
        }

        v13 = *(v9 + 8 * v16);
        ++v15;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v21 = *(v0 + 816);

      if (qword_101694C50 == -1)
      {
        goto LABEL_16;
      }

LABEL_25:
      swift_once();
LABEL_16:
      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177BAA0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 768);
      v27 = *(v0 + 664);
      if (v25)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Can't post Request Received Notification! invalid member destination.", v28, 2u);
      }

      swift_unknownObjectRelease();
      sub_10000B3A8(v27, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
      v29 = *(v0 + 728);
      v30 = *(v0 + 720);
      v31 = *(v0 + 712);
      v32 = *(v0 + 704);
      v33 = *(v0 + 696);
      v34 = *(v0 + 664);
      v35 = *(v0 + 656);
      v36 = *(v0 + 648);
      v37 = *(v0 + 632);
      v47 = *(v0 + 624);
      v48 = *(v0 + 616);
      v49 = *(v0 + 608);
      v50 = *(v0 + 584);
      v51 = *(v0 + 576);
      v52 = *(v0 + 568);
      v53 = *(v0 + 552);
      v54 = *(v0 + 536);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = *(v0 + 512);
      v58 = *(v0 + 504);
      v59 = *(v0 + 496);
      v61 = *(v0 + 472);
      v63 = *(v0 + 448);
      v65 = *(v0 + 432);
      sub_100007BAC((v0 + 64));

      v38 = *(v0 + 8);

      return v38();
    }
  }
}

uint64_t sub_100B43248(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 896);
  v5 = *v2;
  *(*v2 + 904) = a1;

  v6 = *(v3 + 416);
  if (v1)
  {

    v7 = sub_100B439C4;
  }

  else
  {
    v7 = sub_100B43388;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100B43388()
{
  v1 = *(v0 + 904);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 624);
    v3 = *(v0 + 616);
    v4 = *(v0 + 424);
    v5 = *(v0 + 384);
    v6 = *(*(v0 + 600) + 80);
    sub_100B5AAA0(v1 + ((v6 + 32) & ~v6), v3, type metadata accessor for OwnerPeerTrust);

    sub_100038EDC(v3, v2, type metadata accessor for OwnerPeerTrust);
    v7 = *(v5 + *(v4 + 32));
    if (*(v7 + 16))
    {
      v8 = sub_1000210EC(*(v0 + 624) + *(*(v0 + 592) + 20));
      if ((v9 & 1) != 0 && *(*(v7 + 56) + v8) == 2)
      {
        v10 = *(v0 + 408);
        v11 = *(v0 + 392);
        sub_100B5AAA0(*(v0 + 624), *(v0 + 632), type metadata accessor for OwnerPeerTrust);
        v12 = *sub_1000035D0((v0 + 64), *(v0 + 88));
        v13 = swift_task_alloc();
        *(v0 + 912) = v13;
        *v13 = v0;
        v13[1] = sub_100B43E74;
        v14 = *(v0 + 400);

        return sub_100D4C7CC(v11, v14, v10);
      }
    }

    sub_10002FF48(*(v0 + 624), type metadata accessor for OwnerPeerTrust);
  }

  else
  {
    v16 = *(v0 + 904);
  }

  v17 = *(*(v0 + 384) + *(*(v0 + 424) + 32));
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v70 = *(v0 + 560);
  v72 = *(v0 + 680);
  v21 = -1;
  v22 = -1 << *(*(*(v0 + 384) + *(*(v0 + 424) + 32)) + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & v18;
  v24 = (63 - v22) >> 6;
  v74 = *(*(v0 + 384) + *(*(v0 + 424) + 32));

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_17:
      v27 = *(v0 + 840);
      v28 = *(v0 + 576);
      v29 = *(v0 + 568);
      v30 = __clz(__rbit64(v23)) | (v26 << 6);
      (*(v0 + 832))(v28, *(v74 + 48) + *(v72 + 72) * v30, *(v0 + 672));
      *(v28 + *(v70 + 48)) = *(*(v74 + 56) + v30);
      sub_1000D2AD8(v28, v29, &qword_1016BBEE0, &unk_10139CBF0);
      if (*(v29 + *(v70 + 48)) == 2)
      {
        break;
      }

      v23 &= v23 - 1;
      sub_10000B3A8(*(v0 + 568), &qword_1016BBEE0, &unk_10139CBF0);
      v25 = v26;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    v49 = *(v0 + 864);
    v50 = *(v0 + 856);
    v51 = *(v0 + 824);
    v52 = *(v0 + 720);
    v53 = *(v0 + 712);
    v54 = *(v0 + 672);
    v55 = *(v0 + 584);
    v56 = *(v0 + 568);

    sub_1000D2AD8(v56, v55, &qword_1016BBEE0, &unk_10139CBF0);
    v50(v53, v55, v54);
    v50(v52, v53, v54);

    return _swift_task_switch(sub_100B45BD0, v51, 0);
  }

  else
  {
    while (1)
    {
LABEL_14:
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v19 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_17;
      }
    }

    v31 = *(v0 + 816);

    if (qword_101694C50 == -1)
    {
      goto LABEL_21;
    }

LABEL_30:
    swift_once();
LABEL_21:
    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177BAA0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 768);
    v37 = *(v0 + 664);
    if (v35)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Can't post Request Received Notification! invalid member destination.", v38, 2u);
    }

    swift_unknownObjectRelease();
    sub_10000B3A8(v37, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    v39 = *(v0 + 728);
    v40 = *(v0 + 720);
    v41 = *(v0 + 712);
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v44 = *(v0 + 664);
    v45 = *(v0 + 656);
    v46 = *(v0 + 648);
    v47 = *(v0 + 632);
    v57 = *(v0 + 624);
    v58 = *(v0 + 616);
    v59 = *(v0 + 608);
    v60 = *(v0 + 584);
    v61 = *(v0 + 576);
    v62 = *(v0 + 568);
    v63 = *(v0 + 552);
    v64 = *(v0 + 536);
    v65 = *(v0 + 528);
    v66 = *(v0 + 520);
    v67 = *(v0 + 512);
    v68 = *(v0 + 504);
    v69 = *(v0 + 496);
    v71 = *(v0 + 472);
    v73 = *(v0 + 448);
    v75 = *(v0 + 432);
    sub_100007BAC((v0 + 64));

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_100B439C4()
{
  v1 = *(*(v0 + 384) + *(*(v0 + 424) + 32));
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v55 = *(v0 + 560);
  v57 = *(v0 + 680);
  v5 = -1;
  v6 = -1 << *(*(*(v0 + 384) + *(*(v0 + 424) + 32)) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v59 = *(*(v0 + 384) + *(*(v0 + 424) + 32));

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(v0 + 840);
      v12 = *(v0 + 576);
      v13 = *(v0 + 568);
      v14 = __clz(__rbit64(v7)) | (v10 << 6);
      (*(v0 + 832))(v12, *(v59 + 48) + *(v57 + 72) * v14, *(v0 + 672));
      *(v12 + *(v55 + 48)) = *(*(v59 + 56) + v14);
      sub_1000D2AD8(v12, v13, &qword_1016BBEE0, &unk_10139CBF0);
      if (*(v13 + *(v55 + 48)) == 2)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_10000B3A8(*(v0 + 568), &qword_1016BBEE0, &unk_10139CBF0);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v34 = *(v0 + 864);
    v35 = *(v0 + 856);
    v36 = *(v0 + 824);
    v37 = *(v0 + 720);
    v38 = *(v0 + 712);
    v39 = *(v0 + 672);
    v40 = *(v0 + 584);
    v41 = *(v0 + 568);

    sub_1000D2AD8(v41, v40, &qword_1016BBEE0, &unk_10139CBF0);
    v35(v38, v40, v39);
    v35(v37, v38, v39);

    return _swift_task_switch(sub_100B45BD0, v36, 0);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v0 + 816);

    if (qword_101694C50 == -1)
    {
      goto LABEL_12;
    }

LABEL_21:
    swift_once();
LABEL_12:
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177BAA0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 768);
    v21 = *(v0 + 664);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Can't post Request Received Notification! invalid member destination.", v22, 2u);
    }

    swift_unknownObjectRelease();
    sub_10000B3A8(v21, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    v23 = *(v0 + 728);
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v26 = *(v0 + 704);
    v27 = *(v0 + 696);
    v28 = *(v0 + 664);
    v29 = *(v0 + 656);
    v30 = *(v0 + 648);
    v31 = *(v0 + 632);
    v42 = *(v0 + 624);
    v43 = *(v0 + 616);
    v44 = *(v0 + 608);
    v45 = *(v0 + 584);
    v46 = *(v0 + 576);
    v47 = *(v0 + 568);
    v48 = *(v0 + 552);
    v49 = *(v0 + 536);
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
    v52 = *(v0 + 512);
    v53 = *(v0 + 504);
    v54 = *(v0 + 496);
    v56 = *(v0 + 472);
    v58 = *(v0 + 448);
    v60 = *(v0 + 432);
    sub_100007BAC((v0 + 64));

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100B43E74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 912);
  v8 = *v3;
  v6[115] = v2;

  v9 = v6[52];
  if (v2)
  {

    v10 = sub_100B45314;
  }

  else
  {
    v6[116] = a2;
    v6[117] = a1;
    v10 = sub_100B43FC4;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100B43FC4()
{
  v204 = v0;
  aBlock = v0 + 2;
  v166 = v0[116];
  v160 = v0[117];
  v1 = v0[115];
  sub_10002FF48(v0[78], type metadata accessor for OwnerPeerTrust);
  v173 = v0[74];
  v177 = v0[85];
  v182 = v0[60];
  v2 = v0[48];
  v3 = sub_10016632C();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v4, v3);

  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;

  v11 = 0;
  if (!v9)
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        v21 = v0[64];
        v23 = v0[60];
        v22 = v0[61];

        (*(v22 + 56))(v21, 1, 1, v23);
        goto LABEL_12;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v12 = v11;
LABEL_8:
    v13 = v0[105];
    v14 = v0[104];
    v15 = v0[84];
    v16 = v0[63];
    v17 = v0;
    v192 = v0[62];
    v198 = v0[79];
    v18 = *(v177 + 72) * (__clz(__rbit64(v9)) | (v12 << 6));
    v14(v16, *(v5 + 48) + v18, v15);
    v14(v16 + *(v182 + 48), *(v5 + 56) + v18, v15);
    sub_1000D2AD8(v16, v192, &qword_101698C18, &qword_101390740);
    v19 = v192 + *(v182 + 48);
    v20 = v198 + *(v173 + 20);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v9 &= v9 - 1;
    sub_10000B3A8(v17[62], &qword_101698C18, &qword_101390740);
    v11 = v12;
    v0 = v17;
    v6 = v5 + 64;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v81 = v17[64];
  v82 = v17[61];
  v83 = v17[62];
  v84 = v17[60];

  sub_1000D2AD8(v83, v81, &qword_101698C18, &qword_101390740);
  (*(v82 + 56))(v81, 0, 1, v84);
  v0 = v17;
LABEL_12:
  v24 = v0[64];
  v26 = v0[60];
  v25 = v0[61];

  if ((*(v25 + 48))(v24, 1, v26) == 1)
  {
    v27 = v0[85];
    v28 = v0[84];
    v29 = v0[67];
    sub_10000B3A8(v0[64], &qword_10169D398, &qword_10139ADE8);
    (*(v27 + 56))(v29, 1, 1, v28);
  }

  else
  {
    v30 = v0[108];
    v31 = v0[85];
    v32 = v0[84];
    v33 = v0[67];
    v34 = v0[64];
    v35 = *(v182 + 48);
    (v0[107])(v33, v34, v32);
    (*(v31 + 56))(v33, 0, 1, v32);
    (*(v31 + 8))(v34 + v35, v32);
  }

  v12 = v0[102];
  v10 = v166;
  if (!v12)
  {
LABEL_25:
    if (qword_101694C50 == -1)
    {
LABEL_26:
      v47 = v0[102];
      v48 = v0[83];
      v49 = v0[81];
      v50 = v0[67];
      v51 = v0[65];
      v52 = type metadata accessor for Logger();
      sub_1000076D4(v52, qword_10177BAA0);
      sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
      sub_1000D2A70(v50, v51, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v48, v49, &unk_1016AF8C0, &unk_1013A07A0);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v12 != 0;
        v56 = v0[85];
        v187 = v0[84];
        v57 = v0[65];
        v58 = v0[58];
        v193 = v0[57];
        v199 = v0[81];
        v59 = swift_slowAlloc();
        *v59 = 67110144;

        *(v59 + 4) = v55;

        *(v59 + 8) = 1024;

        *(v59 + 10) = v10 != 0;

        *(v59 + 14) = 1024;
        v60 = v0[21] != 0;
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        *(v59 + 16) = v60;
        *(v59 + 20) = 1024;
        v61 = (*(v56 + 48))(v57, 1, v187) != 1;
        sub_10000B3A8(v57, &qword_1016980D0, &unk_10138F3B0);
        *(v59 + 22) = v61;
        *(v59 + 26) = 1024;
        v62 = (*(v58 + 48))(v199, 1, v193) != 1;
        sub_10000B3A8(v199, &unk_1016AF8C0, &unk_1013A07A0);
        *(v59 + 28) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v59, 0x20u);
      }

      else
      {
        v63 = v0[65];
        sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
        sub_10000B3A8(v63, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v64 = v0[96];
      v65 = v0[83];
      v66 = v0[79];
      v67 = v0[67];
      sub_100B58A3C();
      swift_allocError();
      *v68 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_10000B3A8(v67, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v65, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
      sub_10002FF48(v66, type metadata accessor for OwnerPeerTrust);
      sub_100007BAC(v0 + 8);
      v69 = v0[91];
      v70 = v0[90];
      v71 = v0[89];
      v72 = v0[88];
      v73 = v0[87];
      v74 = v0[83];
      v75 = v0[82];
      v76 = v0[81];
      v77 = v0[79];
      v78 = v0[78];
      v148 = v0[77];
      v150 = v0[76];
      v152 = v0[73];
      v154 = v0[72];
      v156 = v0[71];
      v158 = v0[69];
      v161 = v0[67];
      aBlocka = v0[66];
      v167 = v0[65];
      v170 = v0[64];
      v174 = v0[63];
      v178 = v0[62];
      v183 = v0[59];
      v188 = v0[56];
      v194 = v0[54];

      v79 = v0[1];
      goto LABEL_30;
    }

LABEL_49:
    swift_once();
    goto LABEL_26;
  }

  sub_1000D2A70((v0 + 13), (v0 + 28), &qword_101696920, &unk_10138B200);
  if (!v0[31])
  {
    sub_10000B3A8((v0 + 28), &qword_101696920, &unk_10138B200);
    goto LABEL_25;
  }

  sub_10000A748(v0 + 14, (v0 + 23));
  if (!v166)
  {
    sub_100007BAC(v0 + 23);
    goto LABEL_25;
  }

  v36 = v0[85];
  v37 = v0[84];
  v38 = v0[66];
  sub_1000D2A70(v0[67], v38, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v36 + 48))(v38, 1, v37) == 1)
  {
    v39 = v0[66];
    sub_100007BAC(v0 + 23);
    v40 = &qword_1016980D0;
    v41 = &unk_10138F3B0;
LABEL_24:
    sub_10000B3A8(v39, v40, v41);
    v10 = v166;
    goto LABEL_25;
  }

  v42 = v0[108];
  v43 = v0[83];
  v44 = v0[82];
  v46 = v0[57];
  v45 = v0[58];
  (v0[107])(v0[87], v0[66], v0[84]);
  sub_1000D2A70(v43, v44, &unk_1016AF8C0, &unk_1013A07A0);
  if ((*(v45 + 48))(v44, 1, v46) == 1)
  {
    v39 = v0[82];
    (*(v0[85] + 8))(v0[87], v0[84]);
    sub_100007BAC(v0 + 23);
    v40 = &unk_1016AF8C0;
    v41 = &unk_1013A07A0;
    goto LABEL_24;
  }

  v85 = v0[59];
  v86 = v0[57];
  sub_100038EDC(v0[82], v85, type metadata accessor for BeaconProductInfoRecord);
  if (*(v85 + *(v86 + 36)))
  {

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v87 = v0[54];
    v88 = v0[48];
    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177BAA0);
    sub_100B5AAA0(v88, v87, type metadata accessor for OwnerSharingCircle);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    v92 = os_log_type_enabled(v90, v91);
    v200 = v0[96];
    v93 = v0[87];
    v94 = v0[85];
    v95 = v0[84];
    v96 = v0[83];
    v97 = v0[67];
    v98 = v0[59];
    v99 = v0[54];
    if (v92)
    {
      v195 = v0[83];
      v100 = v0[53];
      v189 = v0[67];
      v101 = swift_slowAlloc();
      v184 = v93;
      v102 = swift_slowAlloc();
      v203 = v102;
      *v101 = 141558275;
      *(v101 + 4) = 1752392040;
      *(v101 + 12) = 2081;
      v103 = *(v100 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v179 = v98;
      v106 = v105;
      sub_10002FF48(v99, type metadata accessor for OwnerSharingCircle);
      v107 = sub_1000136BC(v104, v106, &v203);

      *(v101 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v90, v91, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v101, 0x16u);
      sub_100007BAC(v102);

      swift_unknownObjectRelease();
      sub_10002FF48(v179, type metadata accessor for BeaconProductInfoRecord);
      (*(v94 + 8))(v184, v95);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v189, &qword_1016980D0, &unk_10138F3B0);
      v108 = v195;
    }

    else
    {

      swift_unknownObjectRelease();
      sub_10002FF48(v99, type metadata accessor for OwnerSharingCircle);
      sub_10002FF48(v98, type metadata accessor for BeaconProductInfoRecord);
      (*(v94 + 8))(v93, v95);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v97, &qword_1016980D0, &unk_10138F3B0);
      v108 = v96;
    }

    sub_10000B3A8(v108, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v116 = v0[79];
  }

  else
  {
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    sub_1000076D4(v109, qword_10177BAA0);
    sub_10001F280((v0 + 23), (v0 + 33));
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 67109120;
      v114 = v0[36];
      v113 = v0[37];
      sub_1000035D0(v0 + 33, v114);
      v115 = (*(v113 + 96))(v114, v113) & 1;
      sub_100007BAC(v0 + 33);
      *(v112 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v110, v111, "post Request Received Notification, isAirTag:%{BOOL}d", v112, 8u);
    }

    else
    {
      sub_100007BAC(v0 + 33);
    }

    v117 = v0[105];
    v118 = v0[101];
    v185 = v0[87];
    v119 = v0[85];
    v175 = v0[96];
    v180 = v0[84];
    v196 = v0[83];
    v201 = v0[79];
    v190 = v0[67];
    v120 = v0[59];
    v171 = v120;
    v121 = v0[55];
    v122 = v0[56];
    v123 = v0[52];
    (v0[104])(&v122[v121[6]]);
    sub_100B5AAA0(v120, &v122[v121[9]], type metadata accessor for BeaconProductInfoRecord);
    *v122 = 25089;
    v124 = &v122[v121[7]];
    *v124 = v160;
    *(v124 + 1) = v166;
    v125 = &v122[v121[8]];
    *v125 = v118;
    *(v125 + 1) = v12;
    v168 = *(v123 + 128);
    swift_unownedRetainStrong();
    v0[41] = v121;
    v0[42] = &off_10161BF20;
    v126 = sub_1000280DC(v0 + 38);
    sub_100B5AAA0(v122, v126, type metadata accessor for ItemShareRequestReceivedUserNotification);
    v127 = *v126;
    v128 = objc_allocWithZone(UNUserNotificationCenter);
    v129 = String._bridgeToObjectiveC()();

    v130 = [v128 initWithBundleIdentifier:v129];

    v131 = sub_10111B74C(v126);
    v132 = v126 + v121[6];
    UUID.uuidString.getter();
    v133 = v131;
    v134 = String._bridgeToObjectiveC()();

    v135 = [objc_opt_self() requestWithIdentifier:v134 content:v133 trigger:0 destinations:7];

    sub_10001F280((v0 + 38), (v0 + 43));
    v136 = swift_allocObject();
    sub_10000A748((v0 + 43), v136 + 16);
    *(v136 + 56) = 0;
    *(v136 + 64) = 0;
    v0[6] = sub_1007A9F68;
    v0[7] = v136;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10077732C;
    v0[5] = &unk_1016492D0;
    v137 = _Block_copy(aBlock);
    v138 = v0[7];

    [v130 addNotificationRequest:v135 withCompletionHandler:v137];

    _Block_release(v137);
    sub_100007BAC(v0 + 38);

    swift_unknownObjectRelease();
    sub_10002FF48(v122, type metadata accessor for ItemShareRequestReceivedUserNotification);
    sub_10002FF48(v171, type metadata accessor for BeaconProductInfoRecord);
    (*(v119 + 8))(v185, v180);
    sub_100007BAC(v0 + 23);
    sub_10000B3A8(v190, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v196, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v116 = v201;
  }

  sub_10002FF48(v116, type metadata accessor for OwnerPeerTrust);
  v139 = v0[91];
  v140 = v0[90];
  v141 = v0[89];
  v142 = v0[88];
  v143 = v0[87];
  v144 = v0[83];
  v145 = v0[82];
  v146 = v0[81];
  v147 = v0[79];
  v149 = v0[78];
  v151 = v0[77];
  v153 = v0[76];
  v155 = v0[73];
  v157 = v0[72];
  v159 = v0[71];
  v162 = v0[69];
  aBlockb = v0[67];
  v169 = v0[66];
  v172 = v0[65];
  v176 = v0[64];
  v181 = v0[63];
  v186 = v0[62];
  v191 = v0[59];
  v197 = v0[56];
  v202 = v0[54];
  sub_100007BAC(v0 + 8);

  v79 = v0[1];
LABEL_30:

  return v79();
}

uint64_t sub_100B45314()
{
  sub_10002FF48(v0[78], type metadata accessor for OwnerPeerTrust);
  v89 = v0[74];
  v91 = v0[85];
  v93 = v0[60];
  v1 = v0[48];
  v2 = sub_10016632C();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v3, v2);

  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;

  v10 = 0;
  v85 = v4 + 64;
  v87 = v4;
  if (!v8)
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        v20 = v0[64];
        v22 = v0[60];
        v21 = v0[61];

        (*(v21 + 56))(v20, 1, 1, v22);
        goto LABEL_12;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  while (1)
  {
    v11 = v10;
LABEL_8:
    v12 = v0[105];
    v13 = v0[104];
    v14 = v0[84];
    v15 = v0[63];
    v95 = v0[62];
    v98 = v0[79];
    v16 = v0;
    v17 = *(v91 + 72) * (__clz(__rbit64(v8)) | (v11 << 6));
    v13(v15, *(v4 + 48) + v17, v14);
    v13(v15 + *(v93 + 48), *(v4 + 56) + v17, v14);
    sub_1000D2AD8(v15, v95, &qword_101698C18, &qword_101390740);
    v18 = v95 + *(v93 + 48);
    v19 = v98 + *(v89 + 20);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v8 &= v8 - 1;
    sub_10000B3A8(v16[62], &qword_101698C18, &qword_101390740);
    v10 = v11;
    v0 = v16;
    v5 = v85;
    v4 = v87;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v72 = v16[64];
  v74 = v16[61];
  v73 = v16[62];
  v75 = v16[60];

  sub_1000D2AD8(v73, v72, &qword_101698C18, &qword_101390740);
  (*(v74 + 56))(v72, 0, 1, v75);
  v0 = v16;
LABEL_12:
  v23 = v0[64];
  v25 = v0[60];
  v24 = v0[61];

  if ((*(v24 + 48))(v23, 1, v25) == 1)
  {
    v26 = v0;
    v27 = v0[85];
    v28 = v26[84];
    v29 = v26[67];
    sub_10000B3A8(v26[64], &qword_10169D398, &qword_10139ADE8);
    (*(v27 + 56))(v29, 1, 1, v28);
  }

  else
  {
    v30 = v0[108];
    v31 = v0[107];
    v26 = v0;
    v32 = v0[85];
    v33 = v26[84];
    v34 = v26[67];
    v35 = v26[64];
    v36 = *(v93 + 48);
    v31(v34, v35, v33);
    (*(v32 + 56))(v34, 0, 1, v33);
    (*(v32 + 8))(v35 + v36, v33);
  }

  v8 = v26[102];
  v0 = v26;
  if (v8)
  {
    sub_1000D2A70((v26 + 13), (v26 + 28), &qword_101696920, &unk_10138B200);
    if (v26[31])
    {
      sub_10000A748(v26 + 14, (v26 + 23));
      sub_100007BAC(v26 + 23);
    }

    else
    {
      sub_10000B3A8((v26 + 28), &qword_101696920, &unk_10138B200);
    }
  }

  if (qword_101694C50 != -1)
  {
LABEL_28:
    swift_once();
  }

  v37 = v0[102];
  v38 = v0[83];
  v39 = v0[81];
  v40 = v0[67];
  v41 = v0[65];
  v42 = type metadata accessor for Logger();
  sub_1000076D4(v42, qword_10177BAA0);
  sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
  sub_1000D2A70(v40, v41, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v38, v39, &unk_1016AF8C0, &unk_1013A07A0);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v8 != 0;
    v46 = v0[85];
    v47 = v0[81];
    v48 = v0[65];
    v49 = v0[58];
    v96 = v0[84];
    v99 = v0[57];
    v50 = swift_slowAlloc();
    *v50 = 67110144;

    *(v50 + 4) = v45;

    *(v50 + 8) = 1024;

    *(v50 + 10) = 0;

    *(v50 + 14) = 1024;
    v51 = v0[21] != 0;
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    *(v50 + 16) = v51;
    *(v50 + 20) = 1024;
    v52 = (*(v46 + 48))(v48, 1, v96) != 1;
    sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
    *(v50 + 22) = v52;
    *(v50 + 26) = 1024;
    v53 = (*(v49 + 48))(v47, 1, v99) != 1;
    sub_10000B3A8(v47, &unk_1016AF8C0, &unk_1013A07A0);
    *(v50 + 28) = v53;
    _os_log_impl(&_mh_execute_header, v43, v44, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v50, 0x20u);
  }

  else
  {
    v54 = v0[65];
    sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v55 = v0[96];
  v56 = v0[83];
  v57 = v0[79];
  v58 = v0[67];
  sub_100B58A3C();
  swift_allocError();
  *v59 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v56, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
  sub_10002FF48(v57, type metadata accessor for OwnerPeerTrust);
  sub_100007BAC(v0 + 8);
  v60 = v0[91];
  v61 = v0[90];
  v62 = v0[89];
  v63 = v0[88];
  v64 = v0[87];
  v65 = v0[83];
  v66 = v0[82];
  v67 = v0[81];
  v68 = v0[79];
  v69 = v0[78];
  v76 = v0[77];
  v77 = v0[76];
  v78 = v0[73];
  v79 = v0[72];
  v80 = v0[71];
  v81 = v0[69];
  v82 = v0[67];
  v83 = v0[66];
  v84 = v0[65];
  v86 = v0[64];
  v88 = v0[63];
  v90 = v0[62];
  v92 = v0[59];
  v94 = v0[56];
  v97 = v0[54];

  v70 = v0[1];

  return v70();
}

uint64_t sub_100B45BD0()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 840);
  v4 = *(v0 + 824);
  v5 = *(v0 + 728);
  v6 = *(v0 + 688);
  v7 = *(v0 + 672);
  v8 = (*(v0 + 1028) + 24) & ~*(v0 + 1028);
  (*(v0 + 832))(v5, *(v0 + 720), v7);
  v9 = swift_allocObject();
  *(v0 + 944) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 952) = v11;
  *v11 = v0;
  v11[1] = sub_100B45D2C;
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A9DC, v9, v13);
}

uint64_t sub_100B45D2C()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 944);
  v3 = *(*v0 + 416);
  v5 = *v0;

  return _swift_task_switch(sub_100B45E58, v3, 0);
}

uint64_t sub_100B45E58()
{
  v61 = v0;
  v1 = v0[74];
  v2 = v0[69];
  if ((*(v0[75] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[102];

    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v4 = v0[105];
    v5 = v0[104];
    v6 = v0[90];
    v7 = v0[88];
    v8 = v0[84];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177BAA0);
    v5(v7, v6, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[88];
    v14 = v0[85];
    v15 = v0[84];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = v15;
      v21 = *(v14 + 8);
      v21(v13, v20);
      v22 = sub_1000136BC(v17, v19, &v60);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "Can't post Request Received Notification!\nNo peer trust for %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v59);
    }

    else
    {

      v27 = v15;
      v21 = *(v14 + 8);
      v21(v13, v27);
    }

    v28 = v0[96];
    v29 = v0[90];
    v30 = v0[84];
    v31 = v0[83];
    sub_100B58A3C();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    v21(v29, v30);
    sub_10000B3A8(v31, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    sub_100007BAC(v0 + 8);
    v33 = v0[91];
    v34 = v0[90];
    v35 = v0[89];
    v36 = v0[88];
    v37 = v0[87];
    v38 = v0[83];
    v39 = v0[82];
    v40 = v0[81];
    v41 = v0[79];
    v42 = v0[78];
    v44 = v0[77];
    v45 = v0[76];
    v46 = v0[73];
    v47 = v0[72];
    v48 = v0[71];
    v49 = v0[69];
    v50 = v0[67];
    v51 = v0[66];
    v52 = v0[65];
    v53 = v0[64];
    v54 = v0[63];
    v55 = v0[62];
    v56 = v0[59];
    v57 = v0[56];
    v58 = v0[54];

    v43 = v0[1];

    return v43();
  }

  else
  {
    v23 = v0[76];
    sub_100038EDC(v2, v23, type metadata accessor for OwnerPeerTrust);
    v24 = *(v1 + 28);
    v25 = swift_task_alloc();
    v0[120] = v25;
    *v25 = v0;
    v25[1] = sub_100B46394;

    return sub_100E8BEF8(v23 + v24);
  }
}

uint64_t sub_100B46394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 960);
  v7 = *v4;
  v5[121] = a1;
  v5[122] = a2;
  v5[123] = a3;

  if (v3)
  {
    v8 = v5[102];
    v9 = v5[52];

    v10 = sub_100B46B74;
    v11 = v9;
  }

  else
  {
    v11 = v5[52];
    v10 = sub_100B464E0;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100B464E0()
{
  v61 = v0;
  v1 = *(v0 + 984);
  if (v1)
  {
    v2 = *(v0 + 968);
    sub_100B5AAA0(*(v0 + 608), *(v0 + 632), type metadata accessor for OwnerPeerTrust);
    v3 = *sub_1000035D0((v0 + 64), *(v0 + 88));
    v4 = swift_task_alloc();
    *(v0 + 992) = v4;
    *v4 = v0;
    v4[1] = sub_100B469F8;
    v5 = *(v0 + 976);

    return sub_100D4C7CC(v2, v5, v1);
  }

  else
  {
    v7 = *(v0 + 816);
    sub_10002FF48(*(v0 + 608), type metadata accessor for OwnerPeerTrust);

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 840);
    v9 = *(v0 + 832);
    v10 = *(v0 + 720);
    v11 = *(v0 + 704);
    v12 = *(v0 + 672);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177BAA0);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 704);
    v18 = *(v0 + 680);
    v19 = *(v0 + 672);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v24 = v19;
      v25 = *(v18 + 8);
      v25(v17, v24);
      v26 = sub_1000136BC(v21, v23, &v60);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "Can't post Request Received Notification!\nNo peer trust for %{private,mask.hash}s", v20, 0x16u);
      sub_100007BAC(v59);
    }

    else
    {

      v27 = v19;
      v25 = *(v18 + 8);
      v25(v17, v27);
    }

    v28 = *(v0 + 768);
    v29 = *(v0 + 720);
    v30 = *(v0 + 672);
    v31 = *(v0 + 664);
    sub_100B58A3C();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    v25(v29, v30);
    sub_10000B3A8(v31, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    sub_100007BAC((v0 + 64));
    v33 = *(v0 + 728);
    v34 = *(v0 + 720);
    v35 = *(v0 + 712);
    v36 = *(v0 + 704);
    v37 = *(v0 + 696);
    v38 = *(v0 + 664);
    v39 = *(v0 + 656);
    v40 = *(v0 + 648);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);
    v44 = *(v0 + 616);
    v45 = *(v0 + 608);
    v46 = *(v0 + 584);
    v47 = *(v0 + 576);
    v48 = *(v0 + 568);
    v49 = *(v0 + 552);
    v50 = *(v0 + 536);
    v51 = *(v0 + 528);
    v52 = *(v0 + 520);
    v53 = *(v0 + 512);
    v54 = *(v0 + 504);
    v55 = *(v0 + 496);
    v56 = *(v0 + 472);
    v57 = *(v0 + 448);
    v58 = *(v0 + 432);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_100B469F8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 992);
  v8 = *v3;
  v6[125] = v2;

  v9 = v6[123];
  v10 = v6[52];
  if (v2)
  {

    v11 = sub_100B48338;
  }

  else
  {

    v6[126] = a2;
    v6[127] = a1;
    v11 = sub_100B46FC4;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100B46B74()
{
  v55 = v0;
  sub_10002FF48(v0[76], type metadata accessor for OwnerPeerTrust);
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[90];
  v4 = v0[88];
  v5 = v0[84];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BAA0);
  v2(v4, v3, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[88];
  v11 = v0[85];
  v12 = v0[84];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, &v54);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Can't post Request Received Notification!\nNo peer trust for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v53);
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v21 = v0[96];
  v22 = v0[90];
  v23 = v0[84];
  v24 = v0[83];
  sub_100B58A3C();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  v18(v22, v23);
  sub_10000B3A8(v24, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
  sub_100007BAC(v0 + 8);
  v26 = v0[91];
  v27 = v0[90];
  v28 = v0[89];
  v29 = v0[88];
  v30 = v0[87];
  v31 = v0[83];
  v32 = v0[82];
  v33 = v0[81];
  v34 = v0[79];
  v35 = v0[78];
  v38 = v0[77];
  v39 = v0[76];
  v40 = v0[73];
  v41 = v0[72];
  v42 = v0[71];
  v43 = v0[69];
  v44 = v0[67];
  v45 = v0[66];
  v46 = v0[65];
  v47 = v0[64];
  v48 = v0[63];
  v49 = v0[62];
  v50 = v0[59];
  v51 = v0[56];
  v52 = v0[54];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100B46FC4()
{
  v207 = v0;
  aBlock = v0 + 2;
  v169 = v0[126];
  v163 = v0[127];
  v1 = v0[125];
  v2 = v0[90];
  v3 = v0[85];
  v4 = v0[84];
  sub_10002FF48(v0[76], type metadata accessor for OwnerPeerTrust);
  (*(v3 + 8))(v2, v4);
  v176 = v0[74];
  v180 = v0[85];
  v185 = v0[60];
  v5 = v0[48];
  v6 = sub_10016632C();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v7, v6);

  v9 = v8 + 64;
  v10 = -1;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v8 + 64);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  if (!v12)
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        v24 = v0[64];
        v26 = v0[60];
        v25 = v0[61];

        (*(v25 + 56))(v24, 1, 1, v26);
        goto LABEL_12;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v15 = v14;
LABEL_8:
    v16 = v0[105];
    v17 = v0[104];
    v18 = v0[84];
    v19 = v0[63];
    v20 = v0;
    v195 = v0[62];
    v201 = v0[79];
    v21 = *(v180 + 72) * (__clz(__rbit64(v12)) | (v15 << 6));
    v17(v19, *(v8 + 48) + v21, v18);
    v17(v19 + *(v185 + 48), *(v8 + 56) + v21, v18);
    sub_1000D2AD8(v19, v195, &qword_101698C18, &qword_101390740);
    v22 = v195 + *(v185 + 48);
    v23 = v201 + *(v176 + 20);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v12 &= v12 - 1;
    sub_10000B3A8(v20[62], &qword_101698C18, &qword_101390740);
    v14 = v15;
    v0 = v20;
    v9 = v8 + 64;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  v84 = v20[64];
  v85 = v20[61];
  v86 = v20[62];
  v87 = v20[60];

  sub_1000D2AD8(v86, v84, &qword_101698C18, &qword_101390740);
  (*(v85 + 56))(v84, 0, 1, v87);
  v0 = v20;
LABEL_12:
  v27 = v0[64];
  v29 = v0[60];
  v28 = v0[61];

  if ((*(v28 + 48))(v27, 1, v29) == 1)
  {
    v30 = v0[85];
    v31 = v0[84];
    v32 = v0[67];
    sub_10000B3A8(v0[64], &qword_10169D398, &qword_10139ADE8);
    (*(v30 + 56))(v32, 1, 1, v31);
  }

  else
  {
    v33 = v0[108];
    v34 = v0[85];
    v35 = v0[84];
    v36 = v0[67];
    v37 = v0[64];
    v38 = *(v185 + 48);
    (v0[107])(v36, v37, v35);
    (*(v34 + 56))(v36, 0, 1, v35);
    (*(v34 + 8))(v37 + v38, v35);
  }

  v15 = v0[102];
  v13 = v169;
  if (!v15)
  {
LABEL_25:
    if (qword_101694C50 == -1)
    {
LABEL_26:
      v50 = v0[102];
      v51 = v0[83];
      v52 = v0[81];
      v53 = v0[67];
      v54 = v0[65];
      v55 = type metadata accessor for Logger();
      sub_1000076D4(v55, qword_10177BAA0);
      sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
      sub_1000D2A70(v53, v54, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v51, v52, &unk_1016AF8C0, &unk_1013A07A0);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = v15 != 0;
        v59 = v0[85];
        v190 = v0[84];
        v60 = v0[65];
        v61 = v0[58];
        v196 = v0[57];
        v202 = v0[81];
        v62 = swift_slowAlloc();
        *v62 = 67110144;

        *(v62 + 4) = v58;

        *(v62 + 8) = 1024;

        *(v62 + 10) = v13 != 0;

        *(v62 + 14) = 1024;
        v63 = v0[21] != 0;
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        *(v62 + 16) = v63;
        *(v62 + 20) = 1024;
        v64 = (*(v59 + 48))(v60, 1, v190) != 1;
        sub_10000B3A8(v60, &qword_1016980D0, &unk_10138F3B0);
        *(v62 + 22) = v64;
        *(v62 + 26) = 1024;
        v65 = (*(v61 + 48))(v202, 1, v196) != 1;
        sub_10000B3A8(v202, &unk_1016AF8C0, &unk_1013A07A0);
        *(v62 + 28) = v65;
        _os_log_impl(&_mh_execute_header, v56, v57, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v62, 0x20u);
      }

      else
      {
        v66 = v0[65];
        sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
        sub_10000B3A8(v66, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v67 = v0[96];
      v68 = v0[83];
      v69 = v0[79];
      v70 = v0[67];
      sub_100B58A3C();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_10000B3A8(v70, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v68, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
      sub_10002FF48(v69, type metadata accessor for OwnerPeerTrust);
      sub_100007BAC(v0 + 8);
      v72 = v0[91];
      v73 = v0[90];
      v74 = v0[89];
      v75 = v0[88];
      v76 = v0[87];
      v77 = v0[83];
      v78 = v0[82];
      v79 = v0[81];
      v80 = v0[79];
      v81 = v0[78];
      v151 = v0[77];
      v153 = v0[76];
      v155 = v0[73];
      v157 = v0[72];
      v159 = v0[71];
      v161 = v0[69];
      v164 = v0[67];
      aBlocka = v0[66];
      v170 = v0[65];
      v173 = v0[64];
      v177 = v0[63];
      v181 = v0[62];
      v186 = v0[59];
      v191 = v0[56];
      v197 = v0[54];

      v82 = v0[1];
      goto LABEL_30;
    }

LABEL_49:
    swift_once();
    goto LABEL_26;
  }

  sub_1000D2A70((v0 + 13), (v0 + 28), &qword_101696920, &unk_10138B200);
  if (!v0[31])
  {
    sub_10000B3A8((v0 + 28), &qword_101696920, &unk_10138B200);
    goto LABEL_25;
  }

  sub_10000A748(v0 + 14, (v0 + 23));
  if (!v169)
  {
    sub_100007BAC(v0 + 23);
    goto LABEL_25;
  }

  v39 = v0[85];
  v40 = v0[84];
  v41 = v0[66];
  sub_1000D2A70(v0[67], v41, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v39 + 48))(v41, 1, v40) == 1)
  {
    v42 = v0[66];
    sub_100007BAC(v0 + 23);
    v43 = &qword_1016980D0;
    v44 = &unk_10138F3B0;
LABEL_24:
    sub_10000B3A8(v42, v43, v44);
    v13 = v169;
    goto LABEL_25;
  }

  v45 = v0[108];
  v46 = v0[83];
  v47 = v0[82];
  v49 = v0[57];
  v48 = v0[58];
  (v0[107])(v0[87], v0[66], v0[84]);
  sub_1000D2A70(v46, v47, &unk_1016AF8C0, &unk_1013A07A0);
  if ((*(v48 + 48))(v47, 1, v49) == 1)
  {
    v42 = v0[82];
    (*(v0[85] + 8))(v0[87], v0[84]);
    sub_100007BAC(v0 + 23);
    v43 = &unk_1016AF8C0;
    v44 = &unk_1013A07A0;
    goto LABEL_24;
  }

  v88 = v0[59];
  v89 = v0[57];
  sub_100038EDC(v0[82], v88, type metadata accessor for BeaconProductInfoRecord);
  if (*(v88 + *(v89 + 36)))
  {

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v90 = v0[54];
    v91 = v0[48];
    v92 = type metadata accessor for Logger();
    sub_1000076D4(v92, qword_10177BAA0);
    sub_100B5AAA0(v91, v90, type metadata accessor for OwnerSharingCircle);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    v95 = os_log_type_enabled(v93, v94);
    v203 = v0[96];
    v96 = v0[87];
    v97 = v0[85];
    v98 = v0[84];
    v99 = v0[83];
    v100 = v0[67];
    v101 = v0[59];
    v102 = v0[54];
    if (v95)
    {
      v198 = v0[83];
      v103 = v0[53];
      v192 = v0[67];
      v104 = swift_slowAlloc();
      v187 = v96;
      v105 = swift_slowAlloc();
      v206 = v105;
      *v104 = 141558275;
      *(v104 + 4) = 1752392040;
      *(v104 + 12) = 2081;
      v106 = *(v103 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v101;
      v109 = v108;
      sub_10002FF48(v102, type metadata accessor for OwnerSharingCircle);
      v110 = sub_1000136BC(v107, v109, &v206);

      *(v104 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v93, v94, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v104, 0x16u);
      sub_100007BAC(v105);

      swift_unknownObjectRelease();
      sub_10002FF48(v182, type metadata accessor for BeaconProductInfoRecord);
      (*(v97 + 8))(v187, v98);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v192, &qword_1016980D0, &unk_10138F3B0);
      v111 = v198;
    }

    else
    {

      swift_unknownObjectRelease();
      sub_10002FF48(v102, type metadata accessor for OwnerSharingCircle);
      sub_10002FF48(v101, type metadata accessor for BeaconProductInfoRecord);
      (*(v97 + 8))(v96, v98);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v100, &qword_1016980D0, &unk_10138F3B0);
      v111 = v99;
    }

    sub_10000B3A8(v111, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v119 = v0[79];
  }

  else
  {
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    sub_1000076D4(v112, qword_10177BAA0);
    sub_10001F280((v0 + 23), (v0 + 33));
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 67109120;
      v117 = v0[36];
      v116 = v0[37];
      sub_1000035D0(v0 + 33, v117);
      v118 = (*(v116 + 96))(v117, v116) & 1;
      sub_100007BAC(v0 + 33);
      *(v115 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v113, v114, "post Request Received Notification, isAirTag:%{BOOL}d", v115, 8u);
    }

    else
    {
      sub_100007BAC(v0 + 33);
    }

    v120 = v0[105];
    v121 = v0[101];
    v188 = v0[87];
    v122 = v0[85];
    v178 = v0[96];
    v183 = v0[84];
    v199 = v0[83];
    v204 = v0[79];
    v193 = v0[67];
    v123 = v0[59];
    v174 = v123;
    v124 = v0[55];
    v125 = v0[56];
    v126 = v0[52];
    (v0[104])(&v125[v124[6]]);
    sub_100B5AAA0(v123, &v125[v124[9]], type metadata accessor for BeaconProductInfoRecord);
    *v125 = 25089;
    v127 = &v125[v124[7]];
    *v127 = v163;
    *(v127 + 1) = v169;
    v128 = &v125[v124[8]];
    *v128 = v121;
    *(v128 + 1) = v15;
    v171 = *(v126 + 128);
    swift_unownedRetainStrong();
    v0[41] = v124;
    v0[42] = &off_10161BF20;
    v129 = sub_1000280DC(v0 + 38);
    sub_100B5AAA0(v125, v129, type metadata accessor for ItemShareRequestReceivedUserNotification);
    v130 = *v129;
    v131 = objc_allocWithZone(UNUserNotificationCenter);
    v132 = String._bridgeToObjectiveC()();

    v133 = [v131 initWithBundleIdentifier:v132];

    v134 = sub_10111B74C(v129);
    v135 = v129 + v124[6];
    UUID.uuidString.getter();
    v136 = v134;
    v137 = String._bridgeToObjectiveC()();

    v138 = [objc_opt_self() requestWithIdentifier:v137 content:v136 trigger:0 destinations:7];

    sub_10001F280((v0 + 38), (v0 + 43));
    v139 = swift_allocObject();
    sub_10000A748((v0 + 43), v139 + 16);
    *(v139 + 56) = 0;
    *(v139 + 64) = 0;
    v0[6] = sub_1007A9F68;
    v0[7] = v139;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10077732C;
    v0[5] = &unk_1016492D0;
    v140 = _Block_copy(aBlock);
    v141 = v0[7];

    [v133 addNotificationRequest:v138 withCompletionHandler:v140];

    _Block_release(v140);
    sub_100007BAC(v0 + 38);

    swift_unknownObjectRelease();
    sub_10002FF48(v125, type metadata accessor for ItemShareRequestReceivedUserNotification);
    sub_10002FF48(v174, type metadata accessor for BeaconProductInfoRecord);
    (*(v122 + 8))(v188, v183);
    sub_100007BAC(v0 + 23);
    sub_10000B3A8(v193, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v199, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v119 = v204;
  }

  sub_10002FF48(v119, type metadata accessor for OwnerPeerTrust);
  v142 = v0[91];
  v143 = v0[90];
  v144 = v0[89];
  v145 = v0[88];
  v146 = v0[87];
  v147 = v0[83];
  v148 = v0[82];
  v149 = v0[81];
  v150 = v0[79];
  v152 = v0[78];
  v154 = v0[77];
  v156 = v0[76];
  v158 = v0[73];
  v160 = v0[72];
  v162 = v0[71];
  v165 = v0[69];
  aBlockb = v0[67];
  v172 = v0[66];
  v175 = v0[65];
  v179 = v0[64];
  v184 = v0[63];
  v189 = v0[62];
  v194 = v0[59];
  v200 = v0[56];
  v205 = v0[54];
  sub_100007BAC(v0 + 8);

  v82 = v0[1];
LABEL_30:

  return v82();
}