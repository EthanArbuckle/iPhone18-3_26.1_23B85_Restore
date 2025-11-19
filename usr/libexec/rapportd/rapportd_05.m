uint64_t sub_1000FACB8()
{
  v88 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 32);
  v5 = v3 + 16;
  v6 = *(v3 + 16);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = (*(v3 + 88))(v1, v2);
  if (v7 == enum case for LSKStatusOptions.DeviceType.n301(_:))
  {
    v8 = 11;
LABEL_7:
    v9 = *(v0 + 232);
    v91 = *(v0 + 240);
    v10 = *(v0 + 224);
    v84 = *(v0 + 216);
    (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for LSKDomain.applicationServiceDiscovery(_:), *(v0 + 136));
    v87[0] = 68;
    v87[1] = 0xE100000000000000;
    *(v0 + 296) = v8;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12 = sub_1000C4810(&qword_1001D58B8, &qword_10014BBE0);
    v82 = sub_1000FE7E0(&qword_1001D58C0, sub_1000FE738);
    v83 = v12;
    v81 = sub_1000FE7E0(&qword_1001D58D0, sub_1000FE78C);
    LSKKey.init(domain:name:)();
    (*(v10 + 32))(v91, v9, v84);
    if (qword_1001D8DC0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 200);
    v14 = *(v0 + 160);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = type metadata accessor for Logger();
    *(v0 + 264) = sub_10000BB0C(v17, qword_1001D8DC8);
    v91 = v5;
    v85 = v6;
    v6(v13, v16, v14);
    swift_bridgeObjectRetain_n();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 200);
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);
    v24 = *(v0 + 40);
    if (v20)
    {
      v25 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v87[0] = v80;
      *v25 = 136315394;
      v79 = v19;
      v26 = sub_1000DC030(v21, v22);
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v21, v22);
      v30 = sub_1000C3440(v26, v28, v87);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = *(v24 + 16);

      *(v25 + 14) = v31;

      _os_log_impl(&_mh_execute_header, v18, v79, "Publishing value for %s: %ld", v25, 0x16u);
      sub_1000C5604(v80);
    }

    else
    {
      v32 = *(v0 + 40);
      swift_bridgeObjectRelease_n();

      v29 = *(v23 + 8);
      v29(v21, v22);
    }

    *(v0 + 272) = v29;
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    v35 = *(v0 + 128);
    v36 = *(v0 + 32);
    v37 = *(v0 + 40);
    (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for LSKStatusOptions.Scope.sameAccount(_:), *(v0 + 88));
    sub_1000C4810(&qword_1001D5878, &qword_10014BB88);
    v38 = *(v34 + 72);
    v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10014A0A0;
    v85(v40 + v39, v36, v33);
    LSKStatusOptions.init(scope:publishToDeviceTypes:)();
    *(v0 + 16) = v37;
    v41 = async function pointer to LSKLocalStatusClient.publish<A>(_:for:options:)[1];
    v42 = swift_task_alloc();
    *(v0 + 280) = v42;
    v43 = sub_1000FE7E0(&qword_1001D58E0, sub_1000FE858);
    *v42 = v0;
    v42[1] = sub_1000FB494;
    v44 = *(v0 + 240);
    v45 = *(v0 + 128);
    v46 = *(v0 + 80);
    v48 = *(v0 + 48);
    v47 = *(v0 + 56);
    v90 = v43;

    return LSKLocalStatusClient.publish<A>(_:for:options:)(v46, v47, v0 + 16, v44, v45, v83, v82, v81);
  }

  if (v7 == enum case for LSKStatusOptions.DeviceType.mac(_:))
  {
    v8 = 9;
    goto LABEL_7;
  }

  if (v7 == enum case for LSKStatusOptions.DeviceType.tv(_:))
  {
    v8 = 4;
    goto LABEL_7;
  }

  v49 = *(*(v0 + 168) + 8);
  v49(*(v0 + 208), *(v0 + 160));
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 184);
  v51 = *(v0 + 160);
  v52 = *(v0 + 32);
  v53 = type metadata accessor for Logger();
  sub_10000BB0C(v53, qword_1001D8DC8);
  v6(v50, v52, v51);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 184);
  v58 = *(v0 + 160);
  if (v56)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v87[0] = v60;
    *v59 = 136315138;
    v61 = sub_1000DC030(v57, v58);
    v62 = v49;
    v63 = v61;
    v65 = v64;
    v62(v57, v58);
    v66 = sub_1000C3440(v63, v65, v87);

    *(v59 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v54, v55, "Failed to generate status key for %s", v59, 0xCu);
    sub_1000C5604(v60);
  }

  else
  {

    v49(v57, v58);
  }

  v68 = *(v0 + 232);
  v67 = *(v0 + 240);
  v70 = *(v0 + 200);
  v69 = *(v0 + 208);
  v72 = *(v0 + 184);
  v71 = *(v0 + 192);
  v73 = *(v0 + 176);
  v74 = *(v0 + 152);
  v75 = *(v0 + 128);
  v76 = *(v0 + 104);
  v86 = *(v0 + 80);
  v91 = *(v0 + 56);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_1000FB494()
{
  v2 = *v1;
  v3 = (*v1)[35];
  v9 = *v1;
  (*v1)[36] = v0;

  if (v0)
  {
    v4 = sub_1000FB890;
  }

  else
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];
    sub_1000C59E0(v2[7], &qword_1001D58A0, &qword_10014BBC8);
    (*(v6 + 8))(v5, v7);
    v4 = sub_1000FB5E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000FB5E4()
{
  v42 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  (*(v0 + 248))(*(v0 + 192), *(v0 + 32), *(v0 + 160));
  v3 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v3, v36);
  v5 = *(v0 + 272);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 192);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v37 = v5;
  v39 = *(v0 + 112);
  if (v4)
  {
    v35 = *(v0 + 128);
    v14 = swift_slowAlloc();
    v34 = v6;
    v15 = swift_slowAlloc();
    v41 = v15;
    *v14 = 136315138;
    log = v3;
    v33 = v7;
    v16 = sub_1000DC030(v9, v11);
    v18 = v17;
    v37(v9, v11);
    v19 = sub_1000C3440(v16, v18, &v41);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, log, v36, "Finished publishing value for %s", v14, 0xCu);
    sub_1000C5604(v15);

    (*(v12 + 8))(v35, v39);
    (*(v8 + 8))(v34, v33);
  }

  else
  {

    v37(v9, v11);
    (*(v12 + 8))(v13, v39);
    (*(v8 + 8))(v6, v7);
  }

  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v25 = *(v0 + 184);
  v24 = *(v0 + 192);
  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  v28 = *(v0 + 128);
  v29 = *(v0 + 104);
  v38 = *(v0 + 80);
  v40 = *(v0 + 56);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000FB890()
{
  v47 = v0;
  v1 = v0[36];
  v2 = v0[32];
  v43 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[22];
  v8 = v0[20];
  v9 = v0[4];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v6 + 8))(v3, v5);
  v4(v7, v9, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v41 = v0[34];
    v44 = v0[36];
    v12 = v0[21];
    v13 = v0[22];
    v14 = v0[20];
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_1000DC030(v13, v14);
    v18 = v17;
    v41(v13, v14);
    v19 = sub_1000C3440(v16, v18, &v46);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v0[3] = v44;
    v20 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v21 = sub_1000DC030((v0 + 3), v20);
    v23 = sub_1000C3440(v21, v22, &v46);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to publish value for %s: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[36];
    v25 = v0[34];
    v27 = v0[21];
    v26 = v0[22];
    v28 = v0[20];

    v25(v26, v28);
  }

  v30 = v0[29];
  v29 = v0[30];
  v32 = v0[25];
  v31 = v0[26];
  v34 = v0[23];
  v33 = v0[24];
  v35 = v0[22];
  v36 = v0[19];
  v37 = v0[16];
  v38 = v0[13];
  v42 = v0[10];
  v45 = v0[7];

  v39 = v0[1];

  return v39();
}

void sub_1000FBCD0(uint64_t a1)
{
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D8DC8);
  v3 = type metadata accessor for AppExtensionIdentity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1000DC030(v7, v3);
    v14 = v13;
    (*(v4 + 8))(v7, v3);
    v15 = sub_1000C3440(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received interruption for %s", v10, 0xCu);
    sub_1000C5604(v11);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000FBF04(uint64_t a1, void *a2)
{
  v4 = sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v30 = *(v5 + 16);
  v31 = a1;
  v30(&v29 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v8, v4);
  v37 = sub_1000FEAF0;
  v38 = v10;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000FC388;
  v36 = &unk_1001B1020;
  v12 = _Block_copy(&aBlock);

  v13 = [a2 synchronousRemoteObjectProxyWithErrorHandler:v12];
  _Block_release(v12);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000C5650(v39, &aBlock);
  sub_1000C4810(&qword_1001D5928, &qword_10014BC30);
  if (swift_dynamicCast())
  {
    v14 = v32;
    v30(v8, v31, v4);
    v15 = swift_allocObject();
    v11(v15 + v9, v8, v4);
    v37 = sub_1000FEC84;
    v38 = v15;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1000FC3F0;
    v36 = &unk_1001B1070;
    v16 = _Block_copy(&aBlock);

    [v14 fetchConfigurationDataWithReply:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001D8DC0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000BB0C(v17, qword_1001D8DC8);
    sub_1000C5650(v39, &aBlock);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      v22 = sub_1000DC030(&aBlock, &type metadata for Any + 8);
      v24 = v23;
      sub_1000C5604(&aBlock);
      v25 = sub_1000C3440(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Proxy is of unexpected type: %s", v20, 0xCu);
      sub_1000C5604(v21);
    }

    else
    {

      sub_1000C5604(&aBlock);
    }

    sub_1000FEB9C();
    v26 = swift_allocError();
    *v27 = 0;
    aBlock = v26;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_1000C5604(v39);
}

void sub_1000FC388(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000FC3F0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1000C5928(v4, v9);
}

id sub_1000FC49C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock;
  sub_1000C4810(&qword_1001D57F0, &unk_10014B7A8);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_servicesByDeviceID] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_processByExtensionIdentifier] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_connectionByExtensionIdentifier] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_changeHandlers] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_observationTask] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

unint64_t sub_1000FC628(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for LSKStatusOptions.DeviceType();
  sub_1000FE8AC(&qword_1001D5888, &type metadata accessor for LSKStatusOptions.DeviceType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000FC6C0(a1, v5);
}

unint64_t sub_1000FC6C0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for LSKStatusOptions.DeviceType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000FE8AC(&qword_1001D58F8, &type metadata accessor for LSKStatusOptions.DeviceType);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_1000FC880(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C4810(&qword_1001D58F0, &unk_10014BBE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000FC98C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000C4810(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000FCB68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000C4810(&qword_1001D5968, &qword_10014BC58);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000FCE20(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for LSKStatusOptions.DeviceType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000C4810(&qword_1001D5880, &qword_10014BB90);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1000FE8AC(&qword_1001D5888, &type metadata accessor for LSKStatusOptions.DeviceType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000FD1FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000FD3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000C39E8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000FCB68(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1000C39E8(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000FD534();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_1000FD534()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5968, &qword_10014BC58);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1000FD6B4()
{
  v1 = v0;
  v34 = type metadata accessor for LSKStatusOptions.DeviceType();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5880, &qword_10014BB90);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

BOOL sub_1000FD934(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4 >> 60 == 15)
    {
      if (a8 >> 60 == 15)
      {
        sub_1000C66E4(a3, a4);
        sub_1000C66E4(a7, a8);
        sub_1000C5928(a3, a4);
        return 1;
      }
    }

    else if (a8 >> 60 != 15)
    {
      sub_1000C66E4(a3, a4);
      sub_1000C66E4(a7, a8);
      v14 = sub_1000CB904(a3, a4, a7, a8);
      sub_1000C5928(a7, a8);
      sub_1000C5928(a3, a4);
      return (v14 & 1) != 0;
    }

    sub_1000C66E4(a3, a4);
    sub_1000C66E4(a7, a8);
    sub_1000C5928(a3, a4);
    sub_1000C5928(a7, a8);
    return 0;
  }

  return result;
}

unint64_t sub_1000FDA74()
{
  result = qword_1001D8DE8[0];
  if (!qword_1001D8DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8DE8);
  }

  return result;
}

uint64_t sub_1000FDAC8(uint64_t *a1)
{
  v3 = sub_1000C4810(&qword_1001D5970, &qword_10014BC60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_1000FDA74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[15] = 1;
    sub_1000C9F00();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_1000C66E4(v10, v11);
    sub_1000C5604(a1);

    sub_1000C5928(v10, v11);
  }

  return v8;
}

uint64_t sub_1000FDD5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000F6D04(v3, v4, v5, v2);
}

void sub_1000FDDF0()
{
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000BB0C(v0, qword_1001D8DC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Triggering extension rediscovery", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000F6A40();
  }
}

uint64_t sub_1000FDF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000FDF1C()
{
  result = qword_1001D5830;
  if (!qword_1001D5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5830);
  }

  return result;
}

__n128 sub_1000FDF70(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000FDF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FDFC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000FE054(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FE074(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1001D5860)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1001D5860);
    }
  }
}

unint64_t sub_1000FE108()
{
  result = qword_1001D91F0[0];
  if (!qword_1001D91F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D91F0);
  }

  return result;
}

unint64_t sub_1000FE160()
{
  result = qword_1001D9300;
  if (!qword_1001D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9300);
  }

  return result;
}

unint64_t sub_1000FE1B8()
{
  result = qword_1001D9308[0];
  if (!qword_1001D9308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9308);
  }

  return result;
}

uint64_t sub_1000FE20C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FE24C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000F6D04(v3, v4, v5, v2);
}

void *sub_1000FE314@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1000FE39C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C5EF0;

  return sub_1000F7F64(a1, a2, v7, v6);
}

uint64_t sub_1000FE450(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C5EF0;

  return sub_1000FA260(v8, a2, v5, v6, v7);
}

uint64_t sub_1000FE500(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D5890, &qword_10014BB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE570()
{
  v2 = *(type metadata accessor for LSKStatusOptions.DeviceType() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000C5EF0;

  return sub_1000FA99C(v7, v8, v9, v10, v0 + v3, v5, v6);
}

uint64_t sub_1000FE680(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C5EF0;

  return sub_1000C3250(a1, v5);
}

unint64_t sub_1000FE738()
{
  result = qword_1001D58C8;
  if (!qword_1001D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58C8);
  }

  return result;
}

unint64_t sub_1000FE78C()
{
  result = qword_1001D58D8;
  if (!qword_1001D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58D8);
  }

  return result;
}

uint64_t sub_1000FE7E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(&qword_1001D58B8, &qword_10014BBE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FE858()
{
  result = qword_1001D58E8;
  if (!qword_1001D58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58E8);
  }

  return result;
}

uint64_t sub_1000FE8AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FE8F4()
{
  result = qword_1001D5910;
  if (!qword_1001D5910)
  {
    type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5910);
  }

  return result;
}

unint64_t sub_1000FE940()
{
  result = qword_1001D5918;
  if (!qword_1001D5918)
  {
    sub_1000C6A0C(&qword_1001D5908, &qword_10014BC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5918);
  }

  return result;
}

uint64_t sub_1000FE9A4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppExtensionIdentity() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000C48EC;

  return sub_1000F9000(a1, v7, v8, v6, v1 + v5);
}

void sub_1000FEA88()
{
  v1 = *(type metadata accessor for AppExtensionIdentity() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1000FBCD0(v2);
}

uint64_t sub_1000FEAF0()
{
  v0 = *(sub_1000C4810(&qword_1001D5920, &unk_10014BC20) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  swift_errorRetain();
  sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  return CheckedContinuation.resume(throwing:)();
}

unint64_t sub_1000FEB9C()
{
  result = qword_1001D5930;
  if (!qword_1001D5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5930);
  }

  return result;
}

uint64_t sub_1000FEBF0()
{
  v1 = sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FEC84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(sub_1000C4810(&qword_1001D5920, &unk_10014BC20) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_1000C61D4(a1, a2);
      sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
      return CheckedContinuation.resume(returning:)();
    }

    sub_1000FEB9C();
    swift_allocError();
    *v8 = 1;
  }

  sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1000FEDAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000FEE84()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D9398);
  v1 = sub_10000BB0C(v0, qword_1001D9398);
  v2 = sub_10010ACCC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo()
{
  result = qword_1001D9530;
  if (!qword_1001D9530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FEF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEFCC()
{
  v1 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  sub_1000C5808(v0 + *(v10 + 36), v4, &qword_1001D5348, &qword_10014A480);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000C59E0(v4, &qword_1001D5348, &qword_10014A480);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = *(v10 + 24);
  Date.timeIntervalSince(_:)();
  v14 = v13;
  result = (*(v6 + 8))(v9, v5);
  v15 = v14 * 1000.0;
  if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 9.22337204e18)
  {
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000FF1E8()
{
  v1 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  sub_1000C5808(v0 + *(v10 + 40), v4, &qword_1001D5348, &qword_10014A480);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000C59E0(v4, &qword_1001D5348, &qword_10014A480);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = *(v10 + 24);
  Date.timeIntervalSince(_:)();
  v14 = v13;
  result = (*(v6 + 8))(v9, v5);
  v15 = v14 * 1000.0;
  if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 9.22337204e18)
  {
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1000FF404()
{
  v1 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v2 = *(v0 + v1[7]);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(isa, 0x797469746E656469, 0xED00006465646441, isUniquelyReferenced_nonNull_native);
  v5 = *(v0 + v1[11]);
  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v6, 0xD000000000000010, 0x800000010017A120, v7);
  v8 = *(v0 + v1[12]);
  v9 = Int._bridgeToObjectiveC()().super.super.isa;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v9, 0xD000000000000012, 0x800000010017A140, v10);
  v11 = *(v0 + v1[13]);
  v12 = Int._bridgeToObjectiveC()().super.super.isa;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v12, 0xD000000000000012, 0x800000010017A160, v13);
  v14 = *(v0 + v1[8]);
  v15 = Int32._bridgeToObjectiveC()().super.super.isa;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v15, 0xD000000000000013, 0x800000010017A180, v16);
  sub_1000FEFCC();
  v17 = Int._bridgeToObjectiveC()().super.super.isa;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v17, 0xD000000000000012, 0x800000010017A1A0, v18);
  sub_1000FF1E8();
  v19 = Int._bridgeToObjectiveC()().super.super.isa;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v19, 0xD000000000000014, 0x800000010017A1C0, v20);
  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_1000FF64C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000C4810(&qword_1001D5978, &qword_10014BC78);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1000C59E0(a1, &qword_1001D5978, &qword_10014BC78);
    sub_100103C4C(a2, a3, v10);
    sub_1000C4AA4(a2, a3);
    return sub_1000C59E0(v10, &qword_1001D5978, &qword_10014BC78);
  }

  else
  {
    sub_100105B90(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100104A10(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000C4AA4(a2, a3);
    *v3 = v20;
  }

  return result;
}

uint64_t sub_1000FFB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(sub_1000C4810(&qword_1001D4F68, &qword_100149690) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = *(*(sub_1000C4810(&qword_1001D5978, &qword_10014BC78) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000FFBE4, v3, 0);
}

uint64_t sub_1000FFBE4()
{
  v32 = v0;
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_100103DCC(v0[8], v0[9], &Data.hash(into:), sub_1000D921C);
    v4 = v0[14];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
      v9 = *(v8 - 8);
      sub_10010490C(v7 + *(v9 + 72) * v6, v4);
      (*(v9 + 56))(v4, 0, 1, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v0[14];
  }

  v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
LABEL_6:
  v10 = v0[14];
  swift_endAccess();
  type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v0[15] = v8;
  v11 = *(v8 - 8);
  v0[16] = v11;
  v12 = (*(v11 + 48))(v10, 1, v8);
  sub_1000C59E0(v10, &qword_1001D5978, &qword_10014BC78);
  if (v12 == 1)
  {
    v13 = *(v0[11] + 128);
    v0[17] = v13;

    return _swift_task_switch(sub_1000FFFA0, v13, 0);
  }

  else
  {
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v15 = v0[8];
    v14 = v0[9];
    v16 = type metadata accessor for Logger();
    sub_10000BB0C(v16, qword_1001D9398);
    sub_1000C61D4(v15, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_1000C4AA4(v15, v14);
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[8];
      v19 = v0[9];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      v23 = sub_1000CC910(v20, v19);
      v25 = sub_1000C3440(v23, v24, &v31);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Existing session present for %s", v21, 0xCu);
      sub_1000C5604(v22);
    }

    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1000FFFA0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  sub_1001002BC();

  return _swift_task_switch(sub_10010000C, v2, 0);
}

uint64_t sub_10010000C()
{
  v1 = v0[15];
  v2 = v0[13];
  v21 = v0[12];
  v3 = v0[10];
  v19 = v0[16];
  v20 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v1[9];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v2 + v6, 1, 1, v7);
  v8(v2 + v1[10], 1, 1, v7);
  *v2 = v5;
  v2[1] = v4;
  v2[2] = v3;
  v9 = v1[6];
  sub_1000C61D4(v5, v4);
  sub_1000C61D4(v5, v4);

  Date.init()();
  *(v2 + v1[7]) = 0;
  *(v2 + v1[8]) = 0;
  *(v2 + v1[11]) = 0;
  *(v2 + v1[12]) = 0;
  *(v2 + v1[13]) = 0;
  (*(v19 + 56))(v2, 0, 1, v1);
  swift_beginAccess();
  sub_1000FF64C(v2, v5, v4);
  swift_endAccess();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v21, 1, 1, v10);
  v12 = sub_100105BF4(&qword_1001D5980, v11, type metadata accessor for RPIdentitySyncSessionTelemetry);
  v13 = swift_allocObject();
  v13[2] = v20;
  v13[3] = v12;
  v13[4] = v20;
  v13[5] = v5;
  v13[6] = v4;

  sub_1000C61D4(v5, v4);

  sub_1000C1E34(0, 0, v21, &unk_10014BC88, v13);

  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001002BC()
{
  v1 = v0;
  v2 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v18 - v5;
  if (!v0[16])
  {
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BB0C(v7, qword_1001D9398);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Activating RPIdentitySyncPathMonitor", v10, 2u);
    }

    v11 = v1[15];
    v12 = v1[17];
    NWPathMonitor.start(queue:)();
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    v16 = sub_1000C1E34(0, 0, v6, &unk_10014BC98, v15);
    v17 = v1[16];
    v1[16] = v16;
  }

  return result;
}

uint64_t sub_1001004BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = *(*(sub_1000C4810(&qword_1001D5978, &qword_10014BC78) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001005BC, a4, 0);
}

uint64_t sub_1001005BC()
{
  v1 = *(v0 + 88);
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_100100698;
  v6 = *(v0 + 88);

  return sub_1000C2D98(v2, v4, 0, 0, 1);
}

uint64_t sub_100100698()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  if (v0)
  {
    v8 = v2[5];
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_1001009A4, v8, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = swift_task_alloc();
    v2[14] = v9;
    *v9 = v4;
    v9[1] = sub_100100878;
    v10 = v2[7];
    v11 = v2[5];
    v12 = v2[6];

    return sub_100100BE8(v12, v10);
  }
}

uint64_t sub_100100878()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v7 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 64);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1001009A4()
{
  v24 = v0;
  if (qword_1001D9390 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_10000BB0C(v3, qword_1001D9398);
  sub_1000C61D4(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_1000C4AA4(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = sub_1000CC910(v7, v6);
    v12 = sub_1000C3440(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send analytics %s", v8, 0xCu);
    sub_1000C5604(v9);
  }

  v13 = v0[13];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[5];
  v17 = v0[6];
  v18 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  swift_beginAccess();
  sub_1000C61D4(v17, v15);
  sub_1000FF64C(v14, v17, v15);
  swift_endAccess();

  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100100BE8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(sub_1000C4810(&qword_1001D5978, &qword_10014BC78) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100100CF0, v2, 0);
}

uint64_t sub_100100CF0()
{
  v39 = v0;
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_100103DCC(v0[11], v0[12], &Data.hash(into:), sub_1000D921C), (v4 & 1) != 0))
  {
    sub_10010490C(*(v2 + 56) + *(v0[16] + 72) * v3, v0[18]);
    swift_endAccess();
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v5 = v0[17];
    v6 = v0[18];
    v7 = type metadata accessor for Logger();
    sub_10000BB0C(v7, qword_1001D9398);
    sub_10010490C(v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[17];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v12 = 136315138;
      v14 = sub_1000FF814(v13);
      v16 = v15;
      sub_100105B34(v11);
      v17 = sub_1000C3440(v14, v16, &v38);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Sending analytics event for %s", v12, 0xCu);
      sub_1000C5604(v13);
    }

    else
    {

      sub_100105B34(v11);
    }

    v35 = v0[18];
    v36 = v0[13];
    v0[19] = sub_1000FF404();
    v37 = *(v36 + 128);
    v0[20] = v37;

    return _swift_task_switch(sub_1001010C8, v37, 0);
  }

  else
  {
    swift_endAccess();
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v19 = v0[11];
    v18 = v0[12];
    v20 = type metadata accessor for Logger();
    sub_10000BB0C(v20, qword_1001D9398);
    sub_1000C61D4(v19, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_1000C4AA4(v19, v18);
    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[11];
      v23 = v0[12];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v27 = sub_1000CC910(v24, v23);
      v29 = sub_1000C3440(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed session finish - no session present for %s", v25, 0xCu);
      sub_1000C5604(v26);
    }

    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[14];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1001010C8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 168) = *(v1 + 112);

  return _swift_task_switch(sub_10010114C, v2, 0);
}

uint64_t sub_10010114C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(isa, 0x6C62616863616572, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v11 = String._bridgeToObjectiveC()();
  sub_1000C5AF8(0, &qword_1001D5AB0, NSObject_ptr);
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  CUMetricsLog();

  (*(v4 + 56))(v5, 1, 1, v3);
  swift_beginAccess();
  sub_1000C61D4(v8, v7);
  sub_1000FF64C(v5, v8, v7);
  swift_endAccess();
  if (*(*(v6 + 112) + 16))
  {
    sub_100105B34(*(v0 + 144));
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 112);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 160);

    return _swift_task_switch(sub_100101360, v18, 0);
  }
}

uint64_t sub_100101360()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  sub_100102C38();

  return _swift_task_switch(sub_1001013CC, v2, 0);
}

uint64_t sub_1001013CC()
{
  sub_100105B34(v0[18]);
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001015DC(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4[6] = v12;

  v13 = swift_task_alloc();
  v4[7] = v13;
  *v13 = v4;
  v13[1] = sub_1001016F4;

  return sub_1000FFB00(v9, v11, v12);
}

uint64_t sub_1001016F4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  sub_1000C4AA4(v4, v3);

  v5[2](v5);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100101890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v7 + 64) = a4;
  *(v7 + 72) = v6;
  *(v7 + 104) = a5;
  *(v7 + 108) = a6;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  *(v7 + 40) = a1;
  v8 = sub_1000C4810(&qword_1001D5988, &qword_10014BCA8);
  *(v7 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10010193C, v6, 0);
}

uint64_t sub_10010193C()
{
  v1 = *(v0 + 48);
  if (v1 && *(v0 + 104) == 6)
  {
    if (*(v0 + 64) >> 60 != 15)
    {
      v2 = *(v0 + 72);
      Strong = swift_weakLoadStrong();
      *(v0 + 96) = Strong;
      if (Strong)
      {
        v4 = Strong;
        sub_1000C61D4(*(v0 + 56), *(v0 + 64));
        v5 = sub_100101C08;
        v6 = v4;
        v7 = 0;

        return _swift_task_switch(v5, v6, v7);
      }

      v1 = *(v0 + 48);
    }

    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    swift_beginAccess();
    v10 = *(v8 + 112);
    v11 = swift_task_alloc();
    *(v11 + 16) = v9;
    *(v11 + 24) = v1;

    v13 = sub_1001055B4(v12, sub_100104A04);

    if (*(v13 + 16))
    {
      v14 = v13 + 64;
      v33 = *(v0 + 80);
      v34 = *(v0 + 88);
      v15 = -1;
      v16 = -1 << *(v13 + 32);
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v17 = v15 & *(v13 + 64);
      v18 = (63 - v16) >> 6;
      v35 = v13;

      for (i = 0; v17; v5 = sub_1000C59E0(v21, &qword_1001D5988, &qword_10014BCA8))
      {
        v20 = i;
LABEL_18:
        v21 = *(v0 + 88);
        v37 = *(v0 + 72);
        v36 = *(v0 + 108);
        v22 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v23 = v22 | (v20 << 6);
        v24 = *(v35 + 56);
        v25 = (*(v35 + 48) + 16 * v23);
        v26 = *v25;
        v27 = v25[1];
        v28 = v24 + *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo() - 8) + 72) * v23;
        v29 = *(v33 + 48);
        sub_10010490C(v28, v21 + v29);
        *v21 = v26;
        *(v34 + 8) = v27;
        sub_1000C61D4(v26, v27);
        sub_100101FBC(v26, v27, v21 + v29, v36, v37);
      }

      while (1)
      {
        v20 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          goto LABEL_21;
        }

        v17 = *(v14 + 8 * v20);
        ++i;
        if (v17)
        {
          i = v20;
          goto LABEL_18;
        }
      }

      __break(1u);
      return _swift_task_switch(v5, v6, v7);
    }

LABEL_21:
  }

  v30 = *(v0 + 88);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100101C08()
{
  v1 = v0[12];
  v2 = v0[9];
  sub_1000F319C(v0[7], v0[8]);

  return _swift_task_switch(sub_100101C80, v2, 0);
}

uint64_t sub_100101C80()
{
  sub_1000C5928(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;

  v7 = sub_1001055B4(v6, sub_100104A04);

  if (*(v7 + 16))
  {
    v8 = v7 + 64;
    v27 = *(v0 + 80);
    v28 = *(v0 + 88);
    v9 = -1;
    v10 = -1 << *(v7 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v7 + 64);
    v12 = (63 - v10) >> 6;
    v29 = v7;

    for (i = 0; v11; result = sub_1000C59E0(v16, &qword_1001D5988, &qword_10014BCA8))
    {
      v15 = i;
LABEL_10:
      v16 = *(v0 + 88);
      v31 = *(v0 + 72);
      v30 = *(v0 + 108);
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = v17 | (v15 << 6);
      v19 = *(v29 + 56);
      v20 = (*(v29 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = v19 + *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo() - 8) + 72) * v18;
      v24 = *(v27 + 48);
      sub_10010490C(v23, v16 + v24);
      *v16 = v21;
      *(v28 + 8) = v22;
      sub_1000C61D4(v21, v22);
      sub_100101FBC(v21, v22, v16 + v24, v30, v31);
    }

    while (1)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        goto LABEL_13;
      }

      v11 = *(v8 + 8 * v15);
      ++i;
      if (v11)
      {
        i = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v25 = *(v0 + 88);

    v26 = *(v0 + 8);

    return v26();
  }

  return result;
}

uint64_t sub_100101EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100101FBC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v53[1] = a5;
  v54 = a2;
  v53[0] = a1;
  v7 = sub_1000C4810(&qword_1001D5978, &qword_10014BC78);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v53 - v9;
  v11 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v53 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v53 - v20;
  __chkstk_darwin(v19);
  v23 = v53 - v22;
  v24 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v25 = *(v24 - 1);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10010490C(a3, v28);
  v28[v24[7]] = 1;
  v30 = v24[8];
  if (*&v28[v30])
  {
    if (a4 != 3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v39 = v24[12];
    v40 = *&v28[v39];
    v33 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v33)
    {
      *&v28[v39] = v41;
      v42 = v24[10];
      sub_1000C5808(&v28[v42], v15, &qword_1001D5348, &qword_10014A480);
      v43 = type metadata accessor for Date();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 48))(v15, 1, v43);
      sub_1000C59E0(v15, &qword_1001D5348, &qword_10014A480);
      if (v45 == 1)
      {
        Date.init()();
        (*(v44 + 56))(v18, 0, 1, v43);
      }

      else
      {
        sub_1000C5808(&v28[v42], v18, &qword_1001D5348, &qword_10014A480);
      }

      v49 = v54;
      v50 = v53[0];
      v51 = &v28[v42];
      v52 = v18;
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  *&v28[v30] = a4;
  if (a4 == 3)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a4 == 2)
  {
    v31 = v24[11];
    v32 = *&v28[v31];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      *&v28[v31] = v34;
      v35 = v24[9];
      sub_1000C5808(&v28[v35], v21, &qword_1001D5348, &qword_10014A480);
      v36 = type metadata accessor for Date();
      v37 = *(v36 - 8);
      v38 = (*(v37 + 48))(v21, 1, v36);
      sub_1000C59E0(v21, &qword_1001D5348, &qword_10014A480);
      if (v38 == 1)
      {
        Date.init()();
        (*(v37 + 56))(v23, 0, 1, v36);
      }

      else
      {
        sub_1000C5808(&v28[v35], v23, &qword_1001D5348, &qword_10014A480);
      }

      v49 = v54;
      v50 = v53[0];
      v51 = &v28[v35];
      v52 = v23;
LABEL_17:
      sub_1000FEF5C(v52, v51);
      goto LABEL_18;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v46 = v24[13];
  v47 = *&v28[v46];
  v33 = __OFADD__(v47, 1);
  v48 = v47 + 1;
  if (!v33)
  {
    *&v28[v46] = v48;
    v49 = v54;
    v50 = v53[0];
LABEL_18:
    sub_10010490C(v28, v10);
    (*(v25 + 56))(v10, 0, 1, v24);
    swift_beginAccess();
    sub_1000C61D4(v50, v49);
    sub_1000FF64C(v10, v50, v49);
    swift_endAccess();
    return sub_100105B34(v28);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100102618(uint64_t a1, void *a2, int a3, int a4, void *aBlock, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v6[4] = v11;
    if (a2)
    {
LABEL_3:
      v13 = a2;

      a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v6[4] = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v15 = 0xF000000000000000;
LABEL_6:
  v6[5] = a2;
  v6[6] = v15;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_100102758;

  return sub_100101890(a1, v12, a2, v15, a3, a4);
}

uint64_t sub_100102758()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  sub_1000C5928(v3, v2);

  v5[2](v5);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1001028F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100102914, v1, 0);
}

uint64_t sub_100102914()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_weakAssign();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100102B08(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);

  return _swift_task_switch(sub_100102B9C, a3, 0);
}

uint64_t sub_100102B9C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  swift_weakAssign();

  v2[2](v2);
  _Block_release(v2);
  v4 = v0[1];

  return v4();
}

void sub_100102C38()
{
  if (*(v0 + 128))
  {
    v1 = v0;
    v2 = qword_1001D9390;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D9398);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invalidating RPIdentitySyncPathMonitor", v6, 2u);
    }

    swift_beginAccess();
    *(v1 + 112) = 0;
    v7 = *(v1 + 120);
    NWPathMonitor.cancel()();
    Task.cancel()();

    v8 = *(v1 + 128);
    *(v1 + 128) = 0;
  }
}

id sub_100102D8C()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = &_swiftEmptyDictionarySingleton;
  v1[15] = 0x4024000000000000;
  type metadata accessor for RPIdentitySyncPathMonitor();
  swift_allocObject();
  v1[16] = sub_100102EF4();
  swift_weakInit();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100102EAC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_weakDestroy();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100102EF4()
{
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  swift_defaultActor_initialize();
  *(v0 + 128) = 0;
  sub_1000C5AF8(0, &qword_1001D54F0, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100105BF4(&qword_1001D5F50, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000C4810(&unk_1001D5500, &qword_100149A50);
  sub_1000DB1B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  *(v0 + 136) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = type metadata accessor for NWPathMonitor();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 120) = NWPathMonitor.init()();
  *(v0 + 112) = 0;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_1001031B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for NWPath.Status();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for NWPath();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = *(*(sub_1000C4810(&qword_1001D5AA0, &qword_10014BEA8) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = type metadata accessor for NWPathMonitor.Iterator();
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v14 = *(v13 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100103380, 0, 0);
}

uint64_t sub_100103380()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 168);
    v4 = *(Strong + 120);

    NWPathMonitor.makeAsyncIterator()();
    swift_beginAccess();
    *(v0 + 200) = enum case for NWPath.Status.satisfied(_:);
    v5 = sub_100105BF4(&qword_1001D5AA8, 255, &type metadata accessor for NWPathMonitor.Iterator);
    v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_10010354C;
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);

    return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
  }

  else
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10010354C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100103868;
  }

  else
  {
    v3 = sub_100103660;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010367C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v5 = *(v0 + 168);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 200);
    v19 = *(v0 + 176);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    (*(v3 + 32))(*(v0 + 136), v1, v2);
    NWPath.status.getter();
    (*(v16 + 104))(v15, v13, v17);
    *(v0 + 204) = static NWPath.Status.== infix(_:_:)() & 1;
    v18 = *(v16 + 8);
    v18(v15, v17);
    v18(v14, v17);

    return _swift_task_switch(sub_1001038F4, v19, 0);
  }
}

uint64_t sub_100103868()
{
  *(v0 + 64) = *(v0 + 192);
  sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1001038F4()
{
  v20 = v0;
  if (*(v0 + 204) != *(*(v0 + 176) + 112))
  {
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = type metadata accessor for Logger();
    sub_10000BB0C(v5, qword_1001D9398);
    (*(v4 + 16))(v1, v2, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = NWPath.debugDescription.getter();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_1000C3440(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "RPIdentitySyncPathMonitor path update %s", v12, 0xCu);
      sub_1000C5604(v13);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    *(*(v0 + 176) + 112) = *(v0 + 204);
  }

  return _swift_task_switch(sub_100103B10, 0, 0);
}

uint64_t sub_100103B10()
{
  (*(v0[15] + 8))(v0[17], v0[14]);
  v1 = sub_100105BF4(&qword_1001D5AA8, 255, &type metadata accessor for NWPathMonitor.Iterator);
  v2 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_10010354C;
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[19];

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v1);
}

uint64_t sub_100103C04()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100103C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100103DCC(a1, a2, &Data.hash(into:), sub_1000D921C);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100104DCC();
      v12 = v22;
    }

    sub_1000C4AA4(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = *(v12 + 56);
    v14 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
    v21 = *(v14 - 8);
    sub_100105B90(v13 + *(v21 + 72) * v9, a3);
    sub_10010444C(v9, v12);
    *v4 = v12;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_100103DCC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

uint64_t sub_100103E60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000C4810(&qword_1001D5AB8, &qword_10014BEB8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100104104(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_1000C4810(&qword_1001D5A98, &qword_10014BEA0);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v26;
      v43 = *(*(v10 + 48) + 16 * v26);
      v29 = *(&v43 + 1);
      if (v42)
      {
        sub_100105B90(v28, v9);
      }

      else
      {
        sub_10010490C(v28, v9);
        sub_1000C61D4(v43, v29);
      }

      v30 = *(v13 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v22 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v22 = v43;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 16 * v21) = v22;
      result = sub_100105B90(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

unint64_t sub_10010444C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      sub_1000C61D4(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = sub_1000C4AA4(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100104640(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100103DCC(a2, a3, &String.hash(into:), sub_1000C3A60);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100103E60(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100103DCC(a2, a3, &String.hash(into:), sub_1000C3A60);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100104C60();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_100104864()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1001004BC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10010490C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100104970()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1001031B8(v3, v4, v5, v2);
}

uint64_t sub_100104A10(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100103DCC(a2, a3, &Data.hash(into:), sub_1000D921C);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100104DCC();
      goto LABEL_7;
    }

    sub_100104104(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_100103DCC(a2, a3, &Data.hash(into:), sub_1000D921C);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo() - 8) + 72) * v12;

    return sub_100105C3C(a1, v20);
  }

LABEL_13:
  sub_100104BC8(v12, a2, a3, a1, v18);

  return sub_1000C61D4(a2, a3);
}

uint64_t sub_100104BC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  result = sub_100105B90(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_100104C60()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5AB8, &qword_10014BEB8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100104DCC()
{
  v1 = v0;
  v2 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5A98, &qword_10014BEA0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10010490C(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_100105B90(v26, *(v28 + 56) + v27);
        result = sub_1000C61D4(v24, v25);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_100105000(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1001053A4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100105090(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  sub_1000C4810(&qword_1001D5A98, &qword_10014BEA0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_10010490C(v23 + v45 * v22, v42);
    sub_100105B90(v27, v18);
    v28 = *(v14 + 40);
    Hasher.init(_seed:)();
    sub_1000C61D4(v26, v25);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_100105B90(v18, *(v14 + 56) + v32 * v45);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001053A4(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v28 = a2;
  v33 = a4;
  v29 = a1;
  v5 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  result = __chkstk_darwin(v5 - 8);
  v30 = 0;
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v34 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v17 = v31;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v35 = (v15 - 1) & v15;
LABEL_11:
    v21 = v18 | (v9 << 6);
    v22 = (v34[6] + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = v21;
    sub_10010490C(v34[7] + *(v32 + 72) * v21, v17);
    sub_1000C61D4(v23, v24);
    v26 = v33(v23, v24, v17);
    sub_100105B34(v17);
    result = sub_1000C4AA4(v23, v24);
    v15 = v35;
    if (v26)
    {
      *(v29 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_100105090(v29, v28, v30, v34);
      }
    }
  }

  v19 = v9;
  while (1)
  {
    v9 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_100105090(v29, v28, v30, v34);
    }

    v20 = v11[v9];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v35 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001055B4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1001053A4(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100105000(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_10010575C()
{
  sub_10010583C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RPIdentitySource(319);
      if (v2 <= 0x3F)
      {
        sub_100105894();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10010583C()
{
  if (!qword_1001D5A10)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D5A10);
    }
  }
}

void sub_100105894()
{
  if (!qword_1001D5A18)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D5A18);
    }
  }
}

uint64_t sub_1001058EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_100102B08(v2, v3, v4);
}

uint64_t sub_1001059A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 36);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000C5EF0;

  return sub_100102618(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_100105A74()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000C5EF0;

  return sub_1001015DC(v2, v3, v5, v4);
}

uint64_t sub_100105B34(uint64_t a1)
{
  v2 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100105B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105BF4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100105C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100105CB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100105D2C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t *RapportActor.shared.unsafeMutableAddressor()
{
  if (qword_1001D9640 != -1)
  {
    swift_once();
  }

  return &static RapportActor.shared;
}

uint64_t RapportActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100105E6C(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a3 = v4;
  return result;
}

uint64_t *RapportLocalIdentityActor.shared.unsafeMutableAddressor()
{
  if (qword_1001D9648 != -1)
  {
    swift_once();
  }

  return &static RapportLocalIdentityActor.shared;
}

uint64_t sub_100105F20(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_100106034(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001060C0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_100106134()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA6F0);
  sub_10000BB0C(v0, qword_1001DA6F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001061B0()
{
  if (qword_1001D9850 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000BB0C(v0, qword_1001DA6F0);
}

void sub_100106274(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = String._bridgeToObjectiveC()();
  v13 = MGCopyAnswer();

  if (v13)
  {
    v31[3] = v13;
    if (swift_dynamicCast())
    {
      v14 = v31[1];
      v15 = v31[2];
    }

    else
    {

      v14 = v9;
      v15 = v11;
    }

    v16 = [a1 deviceIRKData];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [a1 edPKData];
      if (v21)
      {
        v31[0] = v15;
        v22 = v11;
        v23 = v14;
        v24 = a1;
        v25 = v9;
        v26 = v21;
        v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = v31[0];
LABEL_11:
        *a2 = v23;
        a2[1] = v30;
        a2[2] = v25;
        a2[3] = v22;
        a2[4] = v18;
        a2[5] = v20;
        a2[6] = v27;
        a2[7] = v29;
        return;
      }

      sub_1000C4AA4(v18, v20);
    }

    else
    {
    }

    v23 = 0;
    v30 = 0;
    v25 = 0;
    v22 = 0;
    v18 = 0;
    v20 = 0;
    v27 = 0;
    v29 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1001064CC()
{
  v1 = 0x614E656369766564;
  v2 = 0x5249656369766564;
  if (*v0 != 2)
  {
    v2 = 0x7550656369766564;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100106564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100108F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100106598(uint64_t a1)
{
  v2 = sub_100106828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001065D4(uint64_t a1)
{
  v2 = sub_100106828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100106610(void *a1)
{
  v3 = v1;
  v5 = sub_1000C4810(&qword_1001D5C18, &qword_10014C020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_100106828();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 2);
    v19 = *(v3 + 2);
    v18 = 2;
    sub_10010687C(&v21, v17);
    sub_1000C9F54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v19, *(&v19 + 1));
    v19 = *(v3 + 3);
    v20 = v19;
    v18 = 3;
    sub_10010687C(&v20, v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100106828()
{
  result = qword_1001D9858;
  if (!qword_1001D9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9858);
  }

  return result;
}

double sub_1001068D8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001090F0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_100106934(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6564644165746164;
    if (a1 != 2)
    {
      v5 = 0x614E656369766564;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x614E796C696D6166;
    v2 = 0x5249656369766564;
    if (a1 != 7)
    {
      v2 = 0x7550656369766564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696669746E656469;
    if (a1 != 4)
    {
      v3 = 0x6D614E6E65766967;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100106A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100109F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100106AB8(uint64_t a1)
{
  v2 = sub_100109474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100106AF4(uint64_t a1)
{
  v2 = sub_100109474();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100106B30(void *a1)
{
  v3 = v1;
  v5 = sub_1000C4810(&qword_1001D5C20, &qword_10014C028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_100109474();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v33) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[3];
    v33 = v3[2];
    v34 = v13;
    v35 = 1;
    sub_1000C66E4(v33, v13);
    sub_1000C9F54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000C5928(v33, v34);
    v14 = type metadata accessor for RPPairingTemporaryIdentity(0);
    v15 = v14[6];
    LOBYTE(v33) = 2;
    type metadata accessor for Date();
    sub_1001095DC(&qword_1001D5C28, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + v14[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v33) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = (v3 + v14[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v33) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = (v3 + v14[9]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v33) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = (v3 + v14[10]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v33) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = (v3 + v14[11]);
    v29 = v28[1];
    v33 = *v28;
    v34 = v29;
    v35 = 7;
    sub_1000C61D4(v33, v29);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v33, v34);
    v30 = (v3 + v14[12]);
    v31 = v30[1];
    v33 = *v30;
    v34 = v31;
    v35 = 8;
    sub_1000C61D4(v33, v31);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v33, v34);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100106EB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for Date();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C4810(&qword_1001D5C30, &qword_10014C030);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for RPPairingTemporaryIdentity(0);
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v42 = a1;
  sub_1000CE97C(a1, v17);
  sub_100109474();
  v41 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000C5604(v42);
  }

  v18 = v39;
  v36 = v4;
  LOBYTE(v43) = 0;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 1) = v19;
  v44 = 1;
  sub_1000C9F00();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v15 + 1) = v43;
  LOBYTE(v43) = 2;
  sub_1001095DC(&qword_1001D5C38, &type metadata accessor for Date);
  v20 = v36;
  v35 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 32))(&v15[v12[6]], v7, v20);
  LOBYTE(v43) = 3;
  v21 = v41;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = &v15[v12[7]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v43) = 4;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = &v15[v12[8]];
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v43) = 5;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = &v15[v12[9]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v43) = 6;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = &v15[v12[10]];
  *v32 = v31;
  v32[1] = v33;
  v44 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v15[v12[11]] = v43;
  v44 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v21, v40);
  *&v15[v12[12]] = v43;
  sub_1001094C8(v15, v37);
  sub_1000C5604(v42);
  return sub_10010952C(v15);
}

id sub_1001076F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], a3, v10);
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, "init");
  (*(v11 + 8))(a3, v10);
  return v12;
}

unint64_t sub_100107984()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7550726576726573;
  }

  *v0;
  return result;
}

uint64_t sub_1001079D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7550726576726573 && a2 == 0xEF79654B63696C62;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010017A670 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100107ABC(uint64_t a1)
{
  v2 = sub_100109588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100107AF8(uint64_t a1)
{
  v2 = sub_100109588();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100107BB4(void *a1)
{
  v3 = v1;
  v5 = sub_1000C4810(&qword_1001D5C48, &qword_10014C038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_100109588();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  v14 = *(v3 + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey);
  v15 = v11;
  v13[15] = 0;
  sub_1000C61D4(v14, v11);
  sub_1000C9F54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000C4AA4(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    type metadata accessor for UUID();
    sub_1001095DC(&qword_1001D5C50, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

char *sub_100107DDC(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C4810(&qword_1001D5C58, &qword_10014C040);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v20);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_100109588();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
    v15 = *((swift_isaMask & *v22) + 0x30);
    v16 = *((swift_isaMask & *v22) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v25 = 0;
    sub_1000C9F00();
    v14 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v22 + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey) = v24;
    LOBYTE(v24) = 1;
    sub_1001095DC(&qword_1001D5C60, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v22;
    (*(v19 + 32))(v22 + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID, v12, v3);
    v23.receiver = v18;
    v23.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v23, "init");
    (*(v13 + 8))(v10, v14);
    sub_1000C5604(a1);
  }

  return v6;
}

char *sub_10010813C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100107DDC(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1001081E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id sub_10010823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_deviceName];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_givenName];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_familyName];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pin];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake];
  v24 = a9[1];
  *v23 = *a9;
  *(v23 + 1) = v24;
  v25 = a9[6];
  *(v23 + 5) = a9[5];
  *(v23 + 6) = v25;
  v26 = a9[4];
  *(v23 + 3) = a9[3];
  *(v23 + 4) = v26;
  *(v23 + 2) = a9[2];
  v28.receiver = v18;
  v28.super_class = v9;
  return objc_msgSendSuper2(&v28, "init");
}

uint64_t sub_100108394()
{
  _StringGuts.grow(_:)(30);
  v2 = *(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_deviceName);
  v1 = *(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_deviceName + 8);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_givenName));
  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_familyName));
  v5._countAndFlagsBits = 8236;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pin));
  v6._countAndFlagsBits = 0x3A444963202CLL;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  v7 = (v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake + 16));
  v8._countAndFlagsBits = 0x3A444973202CLL;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  String.append(_:)(v7[2]);
  return v2;
}

uint64_t sub_100108620()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(RPClient) init];
  v0[20] = v2;
  [v2 setDispatchQueue:v1];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100108778;
  v3 = swift_continuation_init();
  v0[17] = sub_1000C4810(&qword_1001D5380, &qword_10014C050);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D4058;
  v0[13] = &unk_1001B1360;
  v0[14] = v3;
  [v2 getIdentitiesWithFlags:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100108778()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100108980;
  }

  else
  {
    v3 = sub_100108888;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100108888()
{
  v1 = *(v0 + 144);
  [*(v0 + 160) invalidate];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100108980()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_1001089F0(uint64_t a1)
{
  v3 = type metadata accessor for NWListener.Service();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  swift_allocObject();

  return NWActorSystem.init(service:parameters:)();
}

uint64_t sub_100108AD8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = NWParameters.init()();
  NWParameters.includePeerToPeer.setter();
  return v3;
}

uint64_t sub_100108B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1000DD13C(0xD000000000000023, 0x800000010017A580, a3, a4, a5, a6, a1, a2, v24);
  sub_1000DE06C();
  v13 = v12;
  v14 = type metadata accessor for NWProtocolTCP.Options();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
  v17 = type metadata accessor for NWProtocolTLS.Options();
  nw_swift_tls_record_create_options();
  v18 = static NWProtocolOptions.fromNW(_:)();
  swift_unknownObjectRelease();
  if (!v18)
  {
    goto LABEL_4;
  }

  if (!swift_dynamicCastClass())
  {

LABEL_4:
    v19 = *(v17 + 48);
    v20 = *(v17 + 52);
    swift_allocObject();
    NWProtocolTLS.Options.init()();
  }

  v21 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v21, v13);
  swift_unknownObjectRelease();

  v22 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.includePeerToPeer.setter();
  NWParameters.nw.getter();
  nw_parameters_set_indefinite();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000DFBF0(v24);
  return v22;
}

uint64_t sub_100108D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1000C4810(&qword_1001D5C90, &qword_10014C058);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v29 - v12;
  if (a2)
  {

    sub_1000DD13C(0xD000000000000023, 0x800000010017A580, 0xD000000000000022, 0x800000010017A550, a3, a4, a1, a2, v29);
    sub_1000DD3E4();
    v18 = v17;
    v19 = type metadata accessor for NWProtocolTCP.Options();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    NWProtocolTCP.Options.init()();
    dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
    dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
    v22 = type metadata accessor for NWProtocolTLS.Options();
    nw_swift_tls_record_create_options();
    v23 = static NWProtocolOptions.fromNW(_:)();
    swift_unknownObjectRelease();
    if (v23)
    {
      if (swift_dynamicCastClass())
      {
LABEL_8:

        v26 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
        sec_protocol_options_set_local_identity(v26, v18);
        swift_unknownObjectRelease();

        v16 = NWParameters.__allocating_init(tls:tcp:)();
        NWParameters.allowLocalEndpointReuse.setter();
        sub_1000DBDEC(v13);
        NWParameters.requiredInterface.setter();
        swift_unknownObjectRelease();

        sub_1000DFBF0(v29);
        return v16;
      }
    }

    v24 = *(v22 + 48);
    v25 = *(v22 + 52);
    swift_allocObject();
    NWProtocolTLS.Options.init()();
    goto LABEL_8;
  }

  v14 = *(v5 + 48);
  v15 = *(v5 + 52);
  swift_allocObject();
  return NWParameters.init()();
}

uint64_t sub_100108F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001090F0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000C4810(&qword_1001D5D98, qword_10014C620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_100106828();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000C5604(a1);
  }

  LOBYTE(v32) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v12;
  LOBYTE(v32) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v14;
  v24 = v13;
  LOBYTE(v28) = 2;
  v25 = sub_1000C9F00();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v32;
  v39 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v22 = *(&v38 + 1);
  v25 = v38;
  v16 = v26;
  v15 = v27;
  *&v28 = v11;
  *(&v28 + 1) = v27;
  v17 = v24;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  v18 = v23;
  v30 = v23;
  v31 = v38;
  sub_1000C5984(&v28, &v32);
  sub_1000C5604(a1);
  *&v32 = v11;
  *(&v32 + 1) = v15;
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v36 = v25;
  v37 = v22;
  result = sub_1000C5A40(&v32);
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  return result;
}

unint64_t sub_100109474()
{
  result = qword_1001D9860;
  if (!qword_1001D9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9860);
  }

  return result;
}

uint64_t sub_1001094C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010952C(uint64_t a1)
{
  v2 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100109588()
{
  result = qword_1001D9868[0];
  if (!qword_1001D9868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9868);
  }

  return result;
}

uint64_t sub_1001095DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100109650(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100109664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001096AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100109734()
{
  sub_100109814(319, &qword_1001D5CF0);
  if (v0 <= 0x3F)
  {
    sub_100109814(319, &unk_1001D5CF8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100109814(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100109888(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001098C0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100109C34()
{
  result = qword_1001D9C90[0];
  if (!qword_1001D9C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9C90);
  }

  return result;
}

unint64_t sub_100109C8C()
{
  result = qword_1001D9EA0[0];
  if (!qword_1001D9EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9EA0);
  }

  return result;
}

unint64_t sub_100109CE4()
{
  result = qword_1001DA0B0[0];
  if (!qword_1001DA0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA0B0);
  }

  return result;
}

unint64_t sub_100109D3C()
{
  result = qword_1001DA1C0;
  if (!qword_1001DA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA1C0);
  }

  return result;
}

unint64_t sub_100109D94()
{
  result = qword_1001DA1C8[0];
  if (!qword_1001DA1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA1C8);
  }

  return result;
}

unint64_t sub_100109DEC()
{
  result = qword_1001DA250;
  if (!qword_1001DA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA250);
  }

  return result;
}

unint64_t sub_100109E44()
{
  result = qword_1001DA258[0];
  if (!qword_1001DA258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA258);
  }

  return result;
}

unint64_t sub_100109E9C()
{
  result = qword_1001DA2E0;
  if (!qword_1001DA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA2E0);
  }

  return result;
}

unint64_t sub_100109EF4()
{
  result = qword_1001DA2E8[0];
  if (!qword_1001DA2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA2E8);
  }

  return result;
}

uint64_t sub_100109F48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010017A6F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010017A710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_10010A250()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA378);
  sub_10000BB0C(v0, qword_1001DA378);
  return Logger.init(subsystem:category:)();
}

void sub_10010A2E0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (qword_1001DA370 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BB0C(v4, qword_1001DA378);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000C3440(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, oslog, v5, "Test log: RPSwiftMemoryTest_enum.associatedValue(%s)", v6, 0xCu);
      sub_1000C5604(v7);

LABEL_10:
    }
  }

  else
  {
    if (qword_1001DA370 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000BB0C(v8, qword_1001DA378);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Test log: RPSwiftMemoryTest_enum.empty", v10, 2u);
      goto LABEL_10;
    }
  }
}

id RPSwiftMemoryTest_objCClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RPSwiftMemoryTest_objCClass.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_10010A5C4(const char *a1)
{
  if (qword_1001DA370 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001DA378);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t _s8rapportd27RPSwiftMemoryTest_objCClassC10performLogyyF_0()
{
  if (qword_1001DA370 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000BB0C(v0, qword_1001DA378);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Test log: RPSwiftMemoryTest_objCClass", v3, 2u);
  }

  sub_10010A5C4("Test log: RPSwiftMemoryTest_swiftClass");
  sub_10010A5C4("Test log: RPSwiftMemoryTest_struct");
  sub_10010A2E0(0, 0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000C3440(1953719636, 0xE400000000000000, &v9);
    _os_log_impl(&_mh_execute_header, v4, v5, "Test log: RPSwiftMemoryTest_enum.associatedValue(%s)", v6, 0xCu);
    sub_1000C5604(v7);
  }

  type metadata accessor for RPSwiftMemoryTest_actor();
  swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010A5C4("Test log: RPSwiftMemoryTest_actor");
}

__n128 sub_10010A900(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10010A90C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010A95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10010A9B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10010A9C8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

const char *sub_10010AA30()
{
  v1 = "IdentitySyncService";
  v2 = "ApplicationServiceDiscovery";
  if (*v0 != 2)
  {
    v2 = "ApplicationServicePairing";
  }

  if (*v0)
  {
    v1 = "IRKRatchetingScan";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10010AA90()
{
  result = qword_1001D5F08;
  if (!qword_1001D5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F08);
  }

  return result;
}

uint64_t sub_10010AAF4(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for RPFeature;
  v6[4] = sub_10010AA90();
  LOBYTE(v6[0]) = a3;
  v4 = isFeatureEnabled(_:)();
  sub_1000C5604(v6);
  return v4 & 1;
}

id sub_10010ABB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPFeatureGating();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10010ABE8()
{
  result = qword_1001D5F10;
  if (!qword_1001D5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F10);
  }

  return result;
}

uint64_t sub_10010AC4C()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA710);
  sub_10000BB0C(v0, qword_1001DA710);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010ACCC()
{
  if (qword_1001DA590 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000BB0C(v0, qword_1001DA710);
}

uint64_t sub_10010AD30()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA5A0);
  v1 = sub_10000BB0C(v0, qword_1001DA5A0);
  if (qword_1001DA590 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BB0C(v0, qword_1001DA710);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10010ADF8()
{
  result = [objc_allocWithZone(type metadata accessor for RPIdentitySyncDaemon()) init];
  qword_1001DA728 = result;
  return result;
}

id RPIdentitySyncDaemon.dispatchQueue.getter()
{
  v1 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void RPIdentitySyncDaemon.dispatchQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10010B03C()
{
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000C6968();
  static DispatchQoS.default.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000C69B4();
  sub_1000C4810(&unk_1001D5500, &qword_100149A50);
  sub_1000DB1B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  *&v0[OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for RPIdentitySyncService();
  *&v0[OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService] = sub_1000D7CC8();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_10010B338(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  if (qword_1001DA598 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000BB0C(v6, qword_1001DA5A0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService);
  return a2();
}

uint64_t sub_10010B49C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10010B53C;

  return sub_1000D0234();
}

uint64_t sub_10010B53C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_10010B7B8(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10010B830, 0, 0);
}

uint64_t sub_10010B830()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10010B8D0;

  return sub_1000D0234();
}

uint64_t sub_10010B8D0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v4 = String._bridgeToObjectiveC()();

  (v2)[2](v2, v4, 0);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t RPIdentitySyncDaemon.stopBrowsingService(sessionToken:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10010BA60, 0, 0);
}

uint64_t sub_10010BA60()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10010BB08;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1000D1130(v4, v3);
}

uint64_t sub_10010BB08()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10010BD84(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_10010BE10, 0, 0);
}

uint64_t sub_10010BE10()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10010BEB8;
  v4 = v0[4];
  v3 = v0[5];

  return sub_1000D1130(v4, v3);
}

uint64_t sub_10010BEB8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10010C124()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C48EC;

  return sub_10010BD84(v2, v3, v4);
}

uint64_t sub_10010C1D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C5EF0;

  return sub_10010B7B8(v2, v3);
}

uint64_t sub_10010C284()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA5C8);
  sub_10000BB0C(v0, qword_1001DA5C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010C32C(SEL *a1)
{
  v3 = [v1 device];
  v4 = [v3 *a1];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t RPNWEndpoint.isServiceAvailable.getter()
{
  v1 = [v0 device];
  v2 = [v1 serviceTypes];

  if (v2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = [v0 applicationService];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v14[0] = v4;
    v14[1] = v6;
    __chkstk_darwin(v7);
    v13[2] = v14;
    LODWORD(v2) = sub_10010C928(sub_10010C9D4, v13, v3);
  }

  v8 = *sub_1000F61F0();
  v9 = [v0 device];
  v10 = [v9 idsDeviceIdentifier];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = [v0 applicationService];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v11) = sub_1000F65A0();

  return (v2 | v11) & 1;
}

uint64_t RPNWEndpoint.operatingSystemVersionMajor.getter()
{
  v1 = [v0 device];
  [v1 operatingSystemVersion];
  v2 = v4;

  return v2;
}

uint64_t RPNWEndpoint.operatingSystemVersionMinor.getter()
{
  v1 = [v0 device];
  [v1 operatingSystemVersion];
  v2 = v4;

  return v2;
}

uint64_t RPNWEndpoint.operatingSystemVersionPatch.getter()
{
  v1 = [v0 device];
  [v1 operatingSystemVersion];
  v2 = v4;

  return v2;
}

uint64_t sub_10010C6D8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 device];
  v6 = [v5 *a3];

  if (!v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_10010C788()
{
  result = [objc_allocWithZone(type metadata accessor for RPNWBrowseAgent()) init];
  qword_1001DA730 = result;
  return result;
}

uint64_t sub_10010C928(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10010C9D4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10010CA2C(unint64_t a1)
{
  v2 = sub_1000C4810(&qword_1001D5FC8, &qword_10014C8E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v57 - v4;
  v6 = sub_1000C4810(&qword_1001D5FD0, &qword_10014C8E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v57 - v12;
  static NWBrowser.Descriptor.Options.constructPredicate(_:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000C59E0(v5, &qword_1001D5FC8, &qword_10014C8E0);
    if (qword_1001DA5C0 != -1)
    {
LABEL_39:
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000BB0C(v47, qword_1001DA5C8);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "No filter, returning endpoints", v50, 2u);
    }

    return;
  }

  (*(v7 + 32))(v13, v5, v6);
  if (qword_1001DA5C0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000BB0C(v14, qword_1001DA5C8);
  v16 = *(v7 + 16);
  v66 = v13;
  v16(v11, v13, v6);

  v65 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = a1 >> 62;
  v64 = v6;
  v60 = v7;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67[0] = v22;
    *v21 = 134218242;
    if (v20)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 4) = v23;

    *(v21 + 12) = 2080;
    sub_10010D3FC();
    v24 = v64;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v58 = *(v60 + 8);
    v58(v11, v24);
    v28 = sub_1000C3440(v25, v27, v67);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Original endpoint count: %ld, found predicate: %s", v21, 0x16u);
    sub_1000C5604(v22);

    v6 = v24;
  }

  else
  {

    v58 = *(v7 + 8);
    v58(v11, v6);
  }

  v68 = _swiftEmptyArrayStorage;
  if (v20)
  {
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_12:
      v31 = 0;
      v59 = _swiftEmptyArrayStorage;
      v62 = a1 & 0xC000000000000001;
      *&v29 = 134217984;
      v61 = v29;
      while (1)
      {
        v32 = v31;
        while (1)
        {
          v33 = a1;
          v34 = a1 + 8 * v32;
          if (v62)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v32 >= *(v63 + 16))
            {
              goto LABEL_38;
            }

            v35 = *(v34 + 32);
          }

          v36 = v35;
          v31 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v67[3] = sub_10010D3B0();
          v37 = sub_10010D460(&qword_1001D5FD8, sub_10010D3B0);
          v67[0] = v36;
          v67[4] = v37;
          v67[5] = v67;
          v38 = v36;
          v39 = Predicate.evaluate(_:)();
          sub_1000C5604(v67);
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();
          v42 = os_log_type_enabled(v40, v41);
          if (v39)
          {
            break;
          }

          if (v42)
          {
            v43 = swift_slowAlloc();
            *v43 = v61;
            *(v43 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v40, v41, "Endpoint at index %ld did NOT match predicate, filtering out endpoint", v43, 0xCu);
          }

          a1 = v33;
          v6 = v64;
          ++v32;
          if (v31 == v30)
          {
            goto LABEL_42;
          }
        }

        if (v42)
        {
          v44 = swift_slowAlloc();
          *v44 = v61;
          *(v44 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v40, v41, "Endpoint at index %ld DID match predicate, keeping endpoint", v44, 0xCu);
        }

        if (v62)
        {
          a1 = v33;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v64;
        }

        else
        {
          v6 = v64;
          if (v32 >= *(v63 + 16))
          {
            __break(1u);
            return;
          }

          v45 = *(v34 + 32);
          a1 = v33;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v33;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v59 = v68;
        if (v31 == v30)
        {
          goto LABEL_42;
        }
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_42:
  v51 = v59;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    v55 = v66;
    if (v51 >> 62)
    {
      v56 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v56 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v54 + 4) = v56;

    _os_log_impl(&_mh_execute_header, v52, v53, "Filtered endpoint count: %ld", v54, 0xCu);

    v58(v55, v6);
  }

  else
  {

    v58(v66, v6);
  }
}

unint64_t sub_10010D3B0()
{
  result = qword_1001D5FC0;
  if (!qword_1001D5FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D5FC0);
  }

  return result;
}

unint64_t sub_10010D3FC()
{
  result = qword_1001D5FE0;
  if (!qword_1001D5FE0)
  {
    sub_1000C6A0C(&qword_1001D5FD0, &qword_10014C8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5FE0);
  }

  return result;
}

uint64_t sub_10010D460(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10010D6A0(void *a1, uint64_t a2)
{
  [a1 length];
  v5 = [*(a2 + 32) peer];
  v3 = [v5 destinationDevice];
  v4 = [v3 name];
  LogPrintF();
}

void sub_10010D740(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF();
}

void sub_10010D7C4(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF();
}

void sub_10010D838(uint64_t a1)
{
  v1 = [*(a1 + 32) browseToken];
  LogPrintF();
}

void sub_10010D898(uint64_t a1)
{
  v1 = [*(a1 + 32) browseToken];
  LogPrintF();
}

void sub_10010D908(uint64_t a1)
{
  v1 = [*(a1 + 32) browseToken];
  LogPrintF();
}

void sub_10010DC68()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DCD4()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10010DD48()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DDB4()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10010DE28()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DE94()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10010DF08()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DF74()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10010EB20(void *a1)
{
  v5 = [a1 peerIdentifier];
  v2 = [a1 peerDeviceInfo];
  v3 = [v2 idsDeviceIdentifier];
  v4 = [a1 peerDeviceInfo];
  [v4 statusFlags];
  LogPrintF();
}

void sub_10010EBE0(void *a1)
{
  v1 = [a1 peerDeviceInfo];
  LogPrintF();
}

uint64_t sub_10010F0A0(uint64_t a1)
{
  [sub_1000454C4(a1) BOOLValue];
  [v1 BOOLValue];
  return LogPrintF();
}

void sub_10010F698(void *a1)
{
  v1 = [a1 event];
  LogPrintF();
}

void sub_10010F704()
{
  sub_10000D18C();
  [v1 unsignedLongLongValue];
  v2 = *(v0 + 40);
  v3 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10010F77C()
{
  sub_10000D18C();
  [v1 unsignedLongLongValue];
  v2 = *(v0 + 40);
  v3 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10010F7F4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 840) meDeviceName];
  [*(*(a1 + 32) + 840) meDeviceIsMe];
  LogPrintF();
}

void sub_10010F890(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 840) bluetoothAddressData];
  v1 = v2;
  [v2 bytes];
  LogPrintF();
}

void sub_10010FA9C(void *a1, void *a2)
{
  v8 = [a1 name];
  [a1 pid];
  v4 = [a2 previousState];
  [v4 taskState];
  v5 = NSStringFromRBSTaskState();
  v6 = [a2 state];
  [v6 taskState];
  v7 = NSStringFromRBSTaskState();
  LogPrintF();
}

uint64_t sub_10010FC60(uint64_t a1)
{
  [sub_1000454C4(a1) rssiThreshold];
  v3 = *v1;
  return LogPrintF();
}

void sub_10010FCB4(uint64_t a1, id *a2)
{
  v2 = [*a2 deviceFilter];
  LogPrintF();
}

void sub_10010FEE8(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_10010FF44()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10010FFB0()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_100110008()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  v1 = [sub_10000B2C0() bleDevice];
  [v1 rssi];
  LogPrintF();
}

void sub_100110098()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100110114(void *a1)
{
  v1 = a1;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v2 = _LogCategory_Initialize(), v1 = a1, v2))
    {
      LogPrintF();
      v1 = a1;
    }
  }
}

void sub_1001101F8()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100110258()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001102B8()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100110330()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100110444(void *a1)
{
  v2 = CUDescriptionWithLevel();
  [a1 rssi];
  LogPrintF();
}

void sub_1001104DC()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10011053C()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100110628(void *a1)
{
  v1 = a1;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v2 = _LogCategory_Initialize(), v1 = a1, v2))
    {
      LogPrintF();
      v1 = a1;
    }
  }
}

void sub_1001106C4()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10011073C()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001107B4()
{
  sub_100003D84();
  [v1 name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10000B2C0() sourceVersion];
  LogPrintF();
}

uint64_t sub_1001108A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 236);
  *(v1 + 440);
  v3 = *(v1 + 208);
  return LogPrintF();
}

uint64_t sub_100110A8C(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  *a2 = v4;

  return LogPrintF();
}

uint64_t sub_100110B44(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  *a2 = v4;

  return LogPrintF();
}

void sub_100110BFC(void *a1)
{
  v1 = sub_100025600(a1);
  LogPrintF();
}

void sub_100110C98(void *a1)
{
  v1 = sub_100025600(a1);
  LogPrintF();
}

void sub_100110D04(void *a1, void *a2)
{
  v4 = [a1 idsDeviceID];
  v3 = sub_100025600(a2);
  LogPrintF();
}

void sub_100110DA0(void *a1)
{
  v1 = sub_100025600(a1);
  LogPrintF();
}

void sub_100110E7C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_100110F3C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 detailedDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:20];
    }

    else
    {
      NSPrintF();
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF();
}

void sub_100111044(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 detailedDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:20];
    }

    else
    {
      NSPrintF();
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF();
}

void sub_10011117C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:50];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF();
}

void sub_10011125C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_10011131C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_10011141C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_1001115EC(void *a1)
{
  v1 = [a1 xpcCnx];
  [v1 processIdentifier];
  LogPrintF();
}

void sub_10011165C()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001116D0()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10011172C()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  v1 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001117E0()
{
  sub_10000D18C();
  v1 = [v0 client];
  [v1 clientID];
  LogPrintF();
}

void sub_10011184C(void *a1, void *a2)
{
  v3 = [a1 label];
  v4 = [a2 client];
  [v4 clientID];
  LogPrintF();
}

void sub_100111980()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001119E0()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100111A40()
{
  if (dword_1001D3228 <= 30)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100111ABC()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

uint64_t sub_100111B68(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    *a3 = CUDescriptionWithLevel();
    LogPrintF();
    return 0;
  }

  else
  {
    *a4 = a2;
    return 1;
  }
}

void sub_100111C18(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 descriptionWithLevel:50];
    }

    else
    {
      [v2 description];
    }
    v3 = ;
  }

  v4 = v3;

  LogPrintF();
}

void sub_100111CE0(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 detailedDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:20];
    }

    else
    {
      NSPrintF();
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF();
}

void sub_100111DE0()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100111E40(void *a1)
{
  v1 = sub_100025600(a1);
  LogPrintF();
}

void sub_100111E9C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF();
}

void sub_100111F60(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 descriptionWithLevel:50];
    }

    else
    {
      [v2 description];
    }
    v3 = ;
  }

  v4 = v3;

  LogPrintF();
}

void sub_100112028(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:50];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF();
}

void sub_1001120EC(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:50];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF();
}

uint64_t sub_100112368(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10000357C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000357C();
    }
  }

  return result;
}

void sub_1001125D4()
{
  if (dword_1001D3228 <= 30)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001126CC()
{
  if (dword_1001D3228 <= 30)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100112850(void *a1, void *a2)
{
  v3 = sub_100025600(a1);
  [a2 bytes];
  LogPrintF();
}

void sub_1001128CC(void *a1)
{
  sub_100025600(a1);
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_100112920(void *a1)
{
  sub_100025600(a1);
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_1001129B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = CUDescriptionWithLevel();
  LogPrintF();
}

uint64_t sub_100112C64(unsigned int a1)
{
  if (a1 <= 0xB)
  {
    v1 = off_1001AC088[a1];
  }

  return LogPrintF();
}

void sub_100112DBC()
{
  sub_10000D18C();
  [v1 label];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10000B2C0() label];
  LogPrintF();
}

uint64_t sub_100112EF8(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = off_1001AC0E8[a1];
  }

  return LogPrintF();
}

uint64_t sub_100112FB4(void *a1)
{
  v1 = [a1 priority];
  if (v1 <= 3)
  {
    v2 = off_1001AC0E8[v1];
  }

  return LogPrintF();
}

uint64_t sub_100113018(void *a1, unsigned int a2)
{
  v3 = [a1 priority];
  if (v3 <= 3)
  {
    v4 = off_1001AC0E8[v3];
  }

  if (a2 <= 2)
  {
    v5 = off_1001AC108[a2];
  }

  return LogPrintF();
}

void sub_100113160()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001131C0()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100113260(uint64_t a1)
{
  sub_1000454C4(a1);
  v2 = CUDescriptionWithLevel();
  v1 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001132F0(void *a1, void *a2)
{
  v8 = [a1 label];
  v4 = [a1 peerIdentifier];
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 descriptionWithLevel:50];
    }

    else
    {
      [v5 description];
    }
    v6 = ;
  }

  v7 = v6;

  LogPrintF();
}

void sub_1001134D0(void *a1)
{
  v1 = [a1 peerIdentifier];
  LogPrintF();
}

void sub_10011353C()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_1001135D4()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_100113948(uint64_t a1, id *a2)
{
  v2 = [*a2 idsPersonalDeviceIdentifier];
  LogPrintF();
}

void sub_1001139C4(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  sub_10000F224(&v2);
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

uint64_t sub_100113A2C(unsigned int a1, int a2)
{
  if (a1 <= 7)
  {
    v2 = off_1001AC208[a1];
  }

  v4 = off_1001AC160[a2];
  return LogPrintF();
}

uint64_t sub_100113F68(void *a1, void *a2)
{
  [a1 length];
  [a2 length];
  return LogPrintF();
}

uint64_t sub_100114028(unsigned int a1, int a2)
{
  if (a1 <= 3)
  {
    v2 = off_1001AC1E8[a1];
  }

  v4 = off_1001AC1E8[a2];
  return LogPrintF();
}

uint64_t sub_10011408C(unsigned int a1, int a2)
{
  if (a1 <= 3)
  {
    v2 = off_1001AC1E8[a1];
  }

  v4 = off_1001AC1E8[a2];
  return LogPrintF();
}

uint64_t sub_10011410C(unsigned int a1)
{
  if (a1 <= 7)
  {
    v1 = off_1001AC208[a1];
  }

  return LogPrintF();
}

uint64_t sub_100114230(void *a1)
{
  [a1 length];
  v1 = FatalErrorF();
  return sub_100114254(v1);
}

uint64_t sub_100114254(void *a1)
{
  [a1 length];
  v1 = FatalErrorF();
  return sub_100114278(v1);
}

uint64_t sub_100114278(void *a1)
{
  [a1 length];
  v1 = FatalErrorF();
  return sub_10011429C(v1);
}

void sub_10011431C()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001143BC()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void *sub_10011455C(void *result)
{
  if (result)
  {
    v1 = result;
    result = RPErrorF();
    *v1 = result;
  }

  return result;
}

void sub_1001146EC()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_10011482C()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001148CC()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_1001149E4(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_100114A40()
{
  sub_100003D84();
  v13 = [v1 identifier];
  v2 = [v0 roomName];
  sub_1000454D0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF();
}

void sub_100114ABC()
{
  sub_100003D84();
  v13 = [v1 identifier];
  v2 = [v0 mediaRouteIdentifier];
  sub_1000454D0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF();
}

void sub_100114B78(void *a1)
{
  v1 = [a1 requestID];
  LogPrintF();
}

void sub_100114C28(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = [*(a1 + 56) identifier];
  LogPrintF();
}

uint64_t sub_100114CE8(uint64_t a1)
{
  [sub_1000454C4(a1) unsignedIntegerValue];
  v3 = *(v1 + 48);
  return LogPrintF();
}

uint64_t sub_100114D3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 88);
  sub_10000D178(a1);
  return LogPrintF();
}

uint64_t sub_100114D84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 88);
  sub_10000D178(a1);
  return LogPrintF();
}

uint64_t sub_100114DCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  sub_10000D178(a1);
  return LogPrintF();
}

void sub_100114E14()
{
  sub_100003D84();
  [v2 serviceType];
  objc_claimAutoreleasedReturnValue();
  [sub_10000B2C0() sessionID];
  v3 = [v0 localIdentifier];
  LogPrintF();
}

void sub_100114E98()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100114F10(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_10011501C(void *a1)
{
  v1 = [a1 label];
  LogPrintF();
}

uint64_t sub_1001151B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  [*(*(a1 + 40) + 200) processIdentifier];
  v5 = *(*(*a2 + 8) + 40);
  return LogPrintF();
}

uint64_t sub_100115264(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  return LogPrintF();
}

void sub_100115388(id *a1)
{
  [*a1 localDeviceInfo];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_1001153E0(id *a1)
{
  [*a1 localDeviceInfo];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_100115554()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100003D84();
    if (v1 != -1 || _LogCategory_Initialize())
    {
      [*(v0 + 200) processIdentifier];
      LogPrintF();
    }
  }
}

uint64_t sub_1001156B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  [RPNWFramer controlCodeToString:a2];
  strerror(a3);
  return LogPrintF();
}

uint64_t sub_100115740(uint64_t a1, unsigned __int8 *a2, id *a3, void *a4)
{
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  [RPNWFramer controlCodeToString:*(a1 + 64)];
  strerror(*a2);
  v8 = *a3;
  v9 = objc_alloc_init(NSMutableString);
  *a4 = v9;
  [v9 appendFormat:@"%p", v8];

  return LogPrintF();
}

uint64_t sub_100115828(uint64_t a1, id *a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  [RPNWFramer controlCodeToString:*(a1 + 64)];
  v6 = *a2;
  v7 = objc_alloc_init(NSMutableString);
  *a3 = v7;
  [v7 appendFormat:@"%p", v6];

  return LogPrintF();
}

void sub_100115BF8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  sub_100003590();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100115C90(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 40);
  sub_100003590();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100115D18(uint64_t a1)
{
  sub_10000D650(a1);
  v7 = *(v1 + 33);
  sub_100003590();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100115DDC(uint64_t a1)
{
  sub_10000D650(a1);
  LODWORD(v1) = *(v1 + 36);
  v2[0] = 67109120;
  v2[1] = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Magic value does not match: 0x%x", v2, 8u);
}

void sub_100115E60(uint64_t a1)
{
  sub_10000D650(a1);
  v7 = *(v1 + 36);
  sub_100003590();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100115F5C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Stop handler called for framer=%@, sending CLOSE to daemon", &v1, 0xCu);
}

void sub_100116040(void *a1)
{
  v1 = [a1 applicationLabel];
  LogPrintF();
}

void sub_1001160E4(void *a1)
{
  v2 = [a1 currentTransaction];
  v1 = [v2 identifier];
  LogPrintF();
}

void sub_100116220(void *a1)
{
  v1 = [a1 currentTransaction];
  LogPrintF();
}

void sub_100116420(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_10011649C(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001165A0(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_10011669C(void *a1)
{
  v1 = [a1 applicationService];
  LogPrintF();
}

uint64_t sub_100116708(void *a1, void *a2)
{
  [a1 pid];
  [a2 pid];
  return LogPrintF();
}

void sub_100116764(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_100116850(void *a1)
{
  v1 = [a1 applicationService];
  LogPrintF();
}

void sub_100116948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_1001169D8(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_100116B90(void *a1)
{
  v1 = [a1 mappingID];
  LogPrintF();
}

void sub_100116C50(void *a1, uint64_t a2)
{
  v6 = [a1 token];
  v4 = [a1 connectionUUID];
  v5 = *(a2 + 16);
  LogPrintF();
}

void sub_100116CE0(void *a1, uint64_t a2)
{
  v3 = [a1 token];
  v4 = *(a2 + 16);
  v5 = v3;
  LogPrintF();
}

uint64_t sub_100117A64(uint64_t result)
{
  if (dword_1001D3948 <= 60)
  {
    v1 = result;
    if (dword_1001D3948 != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (v1 <= 2)
      {
        v2 = (&off_1001AC958)[v1];
      }

      return LogPrintF();
    }
  }

  return result;
}

void sub_100117BE0()
{
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t sub_100117C54()
{
  if (dword_1001D3948 <= 60)
  {
    if (dword_1001D3948 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void *sub_100117CD0(void *result)
{
  if (result)
  {
    v1 = result;
    result = RPErrorF();
    *v1 = result;
  }

  return result;
}

uint64_t sub_100117F0C()
{
  UpTicksToSecondsF();
  UpTicksToSecondsF();
  UpTicksToSecondsF();
  UpTicksToSecondsF();
  return LogPrintF();
}

void sub_100117FA4(void *a1)
{
  if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    v2 = CUPrintNSError();
    LogPrintF();
  }
}

void sub_1001182F0(void *a1, uint64_t *a2)
{
  *a2 = [a1 token];
  v4 = [a1 connectionUUID];
  LogPrintF();
}

void sub_10011837C(void *a1)
{
  v3 = [a1 token];
  v2 = [a1 connectionUUID];
  LogPrintF();
}

void sub_100118404(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_100118460(void *a1)
{
  v2 = [a1 token];
  v3 = [a1 connectionUUID];
  LogPrintF();
}

uint64_t sub_100118630(int *a1, _DWORD *a2, _DWORD *a3)
{
  sub_1000594DC(*a1);
  if (*a2)
  {
    *a2;
  }

  if (*a3)
  {
    *a3;
  }

  return LogPrintF();
}

uint64_t sub_100118AF0()
{
  if (dword_1001D3AF8 <= 90)
  {
    if (dword_1001D3AF8 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_100118B94(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_100118C40(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_100118E0C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  nw_array_get_count();
  LogPrintF();
}

void sub_100118F3C(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LogPrintF();
}

void sub_100118F98(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_100118FF4(id *a1)
{
  v13 = [a1[5] userID];
  v2 = [a1[6] name];
  sub_10000359C(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF();
}

void sub_100119074(id *a1)
{
  v13 = [a1[5] name];
  v2 = [a1[6] siriEndpointIdentifier];
  sub_10000359C(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF();
}

void sub_100119420(void *a1, void *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 descriptionWithLevel:50];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  v5 = v4;

  [a2 bytes];
  LogPrintF();
}

void sub_100119508(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_100119574()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001195D4()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100119634()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

uint64_t sub_100119694()
{
  if (dword_1001D3D90 <= 90)
  {
    if (dword_1001D3D90 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100119710()
{
  if (dword_1001D3D90 <= 90)
  {
    if (dword_1001D3D90 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_10011983C(uint64_t a1)
{
  v2 = [*(a1 + 40) daemonDevice];
  v1 = [v2 bleTargetData];
  LogPrintF();
}

void sub_1001198D4(void *a1)
{
  v1 = [a1 activatedSession];
  LogPrintF();
}

void sub_100119BDC(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

uint64_t sub_100119D4C()
{
  if (dword_1001D3D90 <= 10)
  {
    if (dword_1001D3D90 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100119EC0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  return LogPrintF();
}

void sub_10011AF94()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  v2 = *v0;
  LogPrintF();
}

void sub_10011AFF4()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  v2 = *v0;
  LogPrintF();
}