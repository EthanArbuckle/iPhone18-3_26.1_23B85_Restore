Swift::Int sub_100001590()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000015FC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100001660(uint64_t a1)
{
  v2 = sub_100007314();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000169C(uint64_t a1)
{
  v2 = sub_100007314();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100001718()
{
  v2 = sub_100004B48(&qword_100025DF8, &qword_100018148);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  result = __chkstk_darwin(v14);
  v18 = &v39 - v17;
  if (!*(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle))
  {
    v40 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle;
    v41 = result;
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);
    v21 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileCount);
    v42 = v16;
    v22 = sub_1000057FC(v19, v20);
    v43 = v1;
    v44[0] = v22;
    v44[1] = v23;
    (*(v7 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_100005DF4();
    URL.appending<A>(path:directoryHint:)();
    (*(v7 + 8))(v10, v6);

    v24 = *(v12 + 16);
    v25 = v41;
    v24(v5, v18, v41);
    v26 = v12;
    v27 = v12;
    v28 = v18;
    v29 = v25;
    (*(v27 + 56))(v5, 0, 1, v25);
    v30 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentFile;
    swift_beginAccess();
    sub_100004B90(v5, v0 + v30);
    swift_endAccess();
    v31 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v32 = String._bridgeToObjectiveC()();

    [v31 createFileAtPath:v32 contents:0 attributes:0];

    sub_100005E48();
    v33 = v42;
    v24(v42, v28, v29);
    v34 = v43;
    v35 = sub_100001BB0(v33);
    if (v34)
    {
      return (*(v26 + 8))(v28, v29);
    }

    else
    {
      v36 = *(v0 + v40);
      *(v0 + v40) = v35;

      *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentSize) = 0;
      *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_firstElement) = 1;
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      strcpy(v44, "{postTime:");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      v44[4] = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_uploadTime);
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 0x73746E657665222CLL;
      v38._object = 0xEB000000005B3A22;
      String.append(_:)(v38);
      sub_1000021FC();
      (*(v26 + 8))(v28, v29);
    }
  }

  return result;
}

id sub_100001BB0(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_100001D08()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 24);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = *(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_linkedID);
  v7 = *(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_linkedID + 8);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v4 applyFilterLogic:isa linkedID:v8];

  if (v9)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentSize;
    v14 = *(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentSize);
    v15 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_15;
      }

      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      v23 = __OFSUB__(v21, v22);
      v16 = v21 - v22;
      if (!v23)
      {
LABEL_15:
        v23 = __OFADD__(v14, v16);
        v24 = v14 + v16;
        if (v23)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (*(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_limit) < v24)
        {
          sub_1000020B0();
          if (v1)
          {
            goto LABEL_40;
          }

          sub_100001718();
          v2 = 0;
        }

        if (*(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_firstElement))
        {
          *(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_firstElement) = 0;
          if (v15 <= 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1000021FC();
          if (v2)
          {
            goto LABEL_40;
          }

          v26 = *(v3 + v13);
          v23 = __OFADD__(v26, 1);
          v27 = v26 + 1;
          if (v23)
          {
            goto LABEL_44;
          }

          *(v3 + v13) = v27;
          if (v15 <= 1)
          {
LABEL_21:
            if (!v15)
            {
              v25 = BYTE6(v12);
              goto LABEL_33;
            }

LABEL_30:
            LODWORD(v25) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
LABEL_45:
              __break(1u);
              return;
            }

            v25 = v25;
            goto LABEL_33;
          }
        }

        if (v15 == 2)
        {
          v29 = *(v10 + 16);
          v28 = *(v10 + 24);
          v23 = __OFSUB__(v28, v29);
          v25 = v28 - v29;
          if (v23)
          {
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          v25 = 0;
        }

LABEL_33:
        v30 = *(v3 + v13);
        v23 = __OFADD__(v30, v25);
        v31 = v30 + v25;
        if (!v23)
        {
          *(v3 + v13) = v31;
          v32 = *(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle);
          if (v32)
          {
            v35[0] = v10;
            v35[1] = v12;
            sub_100005D4C(v10, v12);
            sub_100005DA0();
            v33 = v32;
            NSFileHandle.write<A>(contentsOf:)();
            if (!v2)
            {
              sub_100005CE4(v10, v12);

              goto LABEL_40;
            }

            sub_100005CE4(v10, v12);
          }

          else
          {
            sub_100005C7C();
            v2 = swift_allocError();
            swift_willThrow();
          }

          v34 = *(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError);
          *(v3 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError) = v2;
          swift_errorRetain();

          swift_willThrow();
LABEL_40:
          sub_100005CE4(v10, v12);
          return;
        }

        goto LABEL_42;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(v12);
      goto LABEL_15;
    }

    LODWORD(v16) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v16 = v16;
    goto LABEL_15;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100004DD8(v6, v7, v35);
    _os_log_impl(&_mh_execute_header, v17, v18, "object in %s was not allowed/valid", v19, 0xCu);
    sub_100005AA8(v20);
  }
}

void sub_1000020B0()
{
  v2 = sub_100004B48(&qword_100025DF8, &qword_100018148);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  sub_100002454();
  if (!v1)
  {
    v6 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileCount);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileCount) = v8;
      *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentSize) = 0;
      *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_firstElement) = 1;
      v9 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle);
      *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle) = 0;

      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      v11 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentFile;
      swift_beginAccess();
      sub_100004B90(v5, v0 + v11);
      swift_endAccess();
    }
  }
}

uint64_t sub_1000021FC()
{
  v2 = v1;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle;
  if (*(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle))
  {
    static String.Encoding.utf8.getter();
    v10 = String.data(using:allowLossyConversion:)();
    v12 = v11;
    result = (*(v4 + 8))(v8, v3);
    if (v12 >> 60 != 15)
    {
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          v14 = 0;
          goto LABEL_13;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        v17 = __OFSUB__(v15, v16);
        v14 = v15 - v16;
        if (!v17)
        {
          goto LABEL_13;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v14 = BYTE6(v12);
        goto LABEL_13;
      }

      LODWORD(v14) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_23;
      }

      v14 = v14;
LABEL_13:
      v18 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentSize);
      v17 = __OFADD__(v18, v14);
      v19 = v18 + v14;
      if (!v17)
      {
        *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentSize) = v19;
        v20 = *(v0 + v9);
        if (v20)
        {
          v21 = v0;
          v24[0] = v10;
          v24[1] = v12;
          sub_100005D38(v10, v12);
          sub_100005DA0();
          v22 = v20;
          NSFileHandle.write<A>(contentsOf:)();
          if (!v1)
          {
            sub_100005CD0(v10, v12);

            return sub_100005CD0(v10, v12);
          }

          sub_100005CD0(v10, v12);
          v0 = v21;
        }

        else
        {
          sub_100005C7C();
          v2 = swift_allocError();
          swift_willThrow();
        }

        v23 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError);
        *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError) = v2;
        swift_errorRetain();

        swift_willThrow();
        return sub_100005CD0(v10, v12);
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }
  }

  return result;
}

void sub_100002454()
{
  v2 = v0;
  v3 = type metadata accessor for Date();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004B48(&qword_100025DF8, &qword_100018148);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v61 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v53 - v18;
  v19 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle;
  v20 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle);
  if (v20)
  {
    v60 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle;
    v21 = v13;
    v22 = v14;
    v23 = v10;
    v24 = v20;
    sub_1000021FC();
    if (v1)
    {

      return;
    }

    v59 = 0;
    v68[0] = 0;
    if (![v24 closeAndReturnError:v68])
    {
      v27 = v68[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v25 = v68[0];

    v10 = v23;
    v14 = v22;
    v13 = v21;
    v19 = v60;
  }

  else
  {
    v59 = v1;
  }

  if (*(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError))
  {
    *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError) = 0;
    swift_willThrow();
  }

  else
  {
    v26 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentFile;
    swift_beginAccess();
    sub_100005B54(v2 + v26, v12, &qword_100025DF8, &qword_100018148);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100007168(v12, &qword_100025DF8, &qword_100018148);
    }

    else
    {
      v57 = v26;
      v58 = v10;
      v60 = v19;
      v28 = v65;
      (*(v14 + 32))(v65, v12, v13);
      v29 = v61;
      (*(v14 + 16))(v61, v28, v13);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v66 = v33;
        *v32 = 136315138;
        LODWORD(v55) = v31;
        v54 = URL.path.getter();
        v35 = v34;
        v36 = *(v14 + 8);
        v56 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v61 = v36;
        (v36)(v29, v13);
        v37 = sub_100004DD8(v54, v35, &v66);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v55, "commiting log file %s", v32, 0xCu);
        sub_100005AA8(v33);
      }

      else
      {

        v38 = *(v14 + 8);
        v56 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v61 = v38;
        (v38)(v29, v13);
      }

      v54 = *(v2 + 16);
      v39 = v54;
      v55 = String._bridgeToObjectiveC()();
      sub_100004B48(&qword_100025E00, &qword_100018150);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100018080;
      v66 = 1701603686;
      v67 = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      v41 = URL.path.getter();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v41;
      *(inited + 80) = v42;
      v66 = 0x65726F7473;
      v67 = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      v43 = [v39 databaseBasename];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      *(inited + 168) = &type metadata for String;
      *(inited + 144) = v44;
      *(inited + 152) = v46;
      v66 = 0x6D617473656D6974;
      v67 = 0xE900000000000070;
      AnyHashable.init<A>(_:)();
      v47 = v62;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v49 = v48;
      (*(v63 + 8))(v47, v64);
      *(inited + 240) = &type metadata for Double;
      *(inited + 216) = v49 * 1000.0;
      sub_10000596C(inited);
      swift_setDeallocating();
      sub_100004B48(&qword_100025E08, &qword_100018158);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v51 = v55;
      [v54 insertOrReplaceInto:v55 values:isa];

      (v61)(v65, v13);
      v26 = v57;
      v10 = v58;
      v19 = v60;
    }

    v52 = *(v2 + v19);
    *(v2 + v19) = 0;

    (*(v14 + 56))(v10, 1, 1, v13);
    swift_beginAccess();
    sub_100004B90(v10, v2 + v26);
    swift_endAccess();
  }
}

uint64_t sub_100002BC0()
{
  v1 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_outputDirectory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007168(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentFile, &qword_100025DF8, &qword_100018148);

  v3 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError);

  v4 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_linkedID + 8);

  return v0;
}

uint64_t sub_100002CC4()
{
  sub_100002BC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100002D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  if (a1)
  {
    result = sub_100002FAC(a1);
    if (result)
    {
      v13 = result;
      if (*(result + 16) && (v14 = sub_1000053C4(1701603686, 0xE400000000000000), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        swift_unknownObjectRetain();

        v25 = v16;
        result = swift_dynamicCast();
        if (result)
        {
          URL.init(fileURLWithPath:)();

          (*(v5 + 16))(v9, v12, v4);
          swift_beginAccess();
          v17 = *(a2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = sub_100004C00(0, v17[2] + 1, 1, v17);
            *(a2 + 16) = v17;
          }

          v20 = v17[2];
          v19 = v17[3];
          v21 = v20 + 1;
          if (v20 >= v19 >> 1)
          {
            v24 = v20 + 1;
            v22 = sub_100004C00(v19 > 1, v20 + 1, 1, v17);
            v21 = v24;
            v17 = v22;
          }

          v17[2] = v21;
          (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v9, v4);
          *(a2 + 16) = v17;
          return (*(v5 + 8))(v12, v4);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_100002FAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004B48(&qword_100025E60, &qword_100018190);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        sub_100005BCC(*(a1 + 48) + 40 * v15, v27);
        sub_100005AF4(*(a1 + 56) + 32 * v15, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100005BCC(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_100007168(v24, &qword_100025E68, &qword_100018198);

          goto LABEL_23;
        }

        sub_100005AF4(v25 + 8, v23);
        sub_100007168(v24, &qword_100025E68, &qword_100018198);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1000053C4(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10000327C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v5(v6, a3);
}

void sub_100003314(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_1000034DC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100006BB0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000073B8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003314;
  aBlock[3] = &unk_100020D78;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  [a1 withStore:v11];
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000037F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v32 = a4;
  v30 = a3;
  v7 = type metadata accessor for UUID();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for URL();
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v8 + 80) + v14 + 8) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v34;
  (*(v10 + 32))(v17 + v13, v12, v27);
  v18 = v29;
  *(v17 + v14) = v30;
  (*(v8 + 32))(v17 + v15, v18, v28);
  v20 = v31;
  v19 = v32;
  *(v17 + v16) = v31;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10000600C;
  *(v21 + 24) = v17;
  aBlock[4] = sub_10000613C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003314;
  aBlock[3] = &unk_100020BE8;
  v22 = _Block_copy(aBlock);
  v23 = v34;
  v24 = v20;

  [v24 withStore:v22];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v75 = a6;
  v92 = a5;
  v88 = a4;
  v81 = a1;
  v10 = sub_100004B48(&qword_100025DF8, &qword_100018148);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v87 = &v74 - v12;
  v13 = type metadata accessor for Logger();
  v82 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = v19[8];
  __chkstk_darwin(v18);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006520(a1);
  v80 = *(a2 + OBJC_IVAR____TtC15securityuploadd25SFAnalyticsTopicGenerator_topic);
  v79 = v19[2];
  v79(v22, a3, v18);
  v86 = *(a2 + OBJC_IVAR____TtC15securityuploadd25SFAnalyticsTopicGenerator_uploadTime);
  v23 = UUID.uuidString.getter();
  v84 = v24;
  v85 = v23;
  v91 = v14;
  v83 = *(v14 + 16);
  v77 = a2;
  v76 = OBJC_IVAR____TtC15securityuploadd25SFAnalyticsTopicGenerator_logger;
  v83(v17, a2 + OBJC_IVAR____TtC15securityuploadd25SFAnalyticsTopicGenerator_logger, v13);
  v25 = type metadata accessor for SFAnalyticsTopicGenerator.OutputFile(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentFile;
  v89 = v19;
  v30 = v19[7];
  v30(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentFile, 1, 1, v18);
  *(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileCount) = 0;
  *(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_fileHandle) = 0;
  *(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_filterError) = 0;
  v31 = v81;
  v32 = v80;
  *(v28 + 16) = v81;
  *(v28 + 24) = v32;
  v90 = v22;
  v33 = v22;
  v34 = v18;
  v79((v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_outputDirectory), v33, v18);
  v35 = v78;
  v36 = v87;
  *(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_limit) = v88;
  *(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_currentSize) = 0;
  v30(v36, 1, 1, v34);
  swift_beginAccess();
  v37 = v31;
  v38 = v32;
  v39 = v28 + v29;
  v40 = v82;
  sub_100004B90(v36, v39);
  swift_endAccess();
  *(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_firstElement) = 1;
  v83((v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_logger), v35, v40);
  v41 = v85;
  *(v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_uploadTime) = v86;
  v42 = (v28 + OBJC_IVAR____TtCC15securityuploadd25SFAnalyticsTopicGenerator10OutputFile_linkedID);
  v43 = v84;
  *v42 = v41;
  v42[1] = v43;
  sub_100001718();
  v44 = v74;
  (*(v91 + 8))(v35, v40);
  (v89[1])(v90, v34);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v47 = [v38 healthSummaryWithName:v75 store:v37 uuid:isa timestamp:0 lastUploadTime:0];

  v92 = v37;
  if (v47)
  {
    v48 = [v38 appleInternalStatus];
    v49 = v44;
    if (v48)
    {
      v50 = v48;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v47 addEntriesFromDictionary:v51];
    }

    v52 = objc_opt_self();
    aBlock = 0;
    v53 = [v52 dataWithJSONObject:v47 options:0 error:&aBlock];
    v54 = aBlock;
    if (v53)
    {
      v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      sub_100001D08();
      sub_100005CE4(v55, v57);
      *(v45 + 16) = 1;
    }

    else
    {
      v58 = v54;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v49 = v44;
  }

  v59 = SFAnalyticsTableRockwell;
  v60 = swift_allocObject();
  v60[2] = v28;
  v60[3] = v45;
  v60[4] = v49;
  v97 = sub_1000073B4;
  v98 = v60;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v61 = v49;
  v95 = sub_100004538;
  v96 = &unk_100020C60;
  v62 = _Block_copy(&aBlock);
  v63 = v59;

  v64 = v92;
  [v92 streamEventsWithLimit:0 fromTable:v63 eventHandler:v62];
  _Block_release(v62);

  v65 = SFAnalyticsTableHardFailures;
  v66 = swift_allocObject();
  v66[2] = v28;
  v66[3] = v45;
  v66[4] = v61;
  v97 = sub_100006A2C;
  v98 = v66;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v95 = sub_100004538;
  v96 = &unk_100020CB0;
  v67 = _Block_copy(&aBlock);

  v68 = v65;

  [v64 streamEventsWithLimit:0 fromTable:v68 eventHandler:v67];
  _Block_release(v67);

  v69 = SFAnalyticsTableSoftFailures;
  v70 = swift_allocObject();
  v70[2] = v28;
  v70[3] = v45;
  v70[4] = v61;
  v97 = sub_1000073B4;
  v98 = v70;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v95 = sub_100004538;
  v96 = &unk_100020D00;
  v71 = _Block_copy(&aBlock);

  v72 = v69;

  [v64 streamEventsWithLimit:0 fromTable:v72 eventHandler:v71];
  _Block_release(v71);

  sub_100002454();
  [v64 clearAllData];
}

uint64_t sub_100004538(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(v5) = v4(v6, v8);
  sub_100005CE4(v6, v8);

  return v5 & 1;
}

id sub_1000047B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFAnalyticsTopicGenerator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004890()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100004964(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000499C()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100004AF0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Logger();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100004AF0()
{
  if (!qword_100025C58)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100025C58);
    }
  }
}

uint64_t sub_100004B48(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004B48(&qword_100025DF8, &qword_100018148);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

size_t sub_100004C00(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004B48(&qword_100025E58, &qword_100018188);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100004DD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004EA4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005AF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005AA8(v11);
  return v7;
}

unint64_t sub_100004EA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100004FB0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100004FB0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004FFC(a1, a2);
  sub_10000512C(&off_100020B70);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004FFC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100005218(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005218(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000512C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000528C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100005218(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004B48(&qword_100025E10, &qword_100018160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000528C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004B48(&qword_100025E10, &qword_100018160);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100005380(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000543C(a1, v4);
}

unint64_t sub_1000053C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100005504(a1, a2, v6);
}

unint64_t sub_10000543C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005BCC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100005C28(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100005504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_1000055BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC15securityuploadd25SFAnalyticsTopicGenerator_topic] = a1;
  v14 = a1;
  Logger.init(subsystem:category:)();
  (*(v10 + 32))(&v2[OBJC_IVAR____TtC15securityuploadd25SFAnalyticsTopicGenerator_logger], v13, v9);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  result = (*(v5 + 8))(v8, v4);
  v18 = v16 * 1000.0;
  if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v18 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v18 < 1.84467441e19)
  {
    *&v2[OBJC_IVAR____TtC15securityuploadd25SFAnalyticsTopicGenerator_uploadTime] = v18;
    v19 = type metadata accessor for SFAnalyticsTopicGenerator(0);
    v20.receiver = v2;
    v20.super_class = v19;
    return objc_msgSendSuper2(&v20, "init");
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000057FC(void *a1, void *a2)
{
  _StringGuts.grow(_:)(24);

  v4 = [a1 internalTopicName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = [a2 databaseBasename];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6E6F736A2ELL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  return 0x694674757074754FLL;
}

unint64_t sub_10000596C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004B48(&qword_100025E18, &qword_100018168);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005B54(v4, v13, &qword_100025E08, &qword_100018158);
      result = sub_100005380(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100005BBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100005AA8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005AF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004B48(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100005BBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100005C7C()
{
  result = qword_100025E20;
  if (!qword_100025E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E20);
  }

  return result;
}

uint64_t sub_100005CD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005CE4(a1, a2);
  }

  return a1;
}

uint64_t sub_100005CE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005D38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005D4C(a1, a2);
  }

  return a1;
}

uint64_t sub_100005D4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100005DA0()
{
  result = qword_100025E28;
  if (!qword_100025E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E28);
  }

  return result;
}

unint64_t sub_100005DF4()
{
  result = qword_100025E30;
  if (!qword_100025E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E30);
  }

  return result;
}

unint64_t sub_100005E48()
{
  result = qword_100025E38;
  if (!qword_100025E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025E38);
  }

  return result;
}

uint64_t sub_100005E94()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_10000600C(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100003B44(a1, v10, v1 + v4, v9, (v1 + v7), v11, v12);
}

uint64_t sub_10000613C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100006164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000617C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100006F98;
  *(v3 + 24) = v2;
  v7[4] = sub_1000073B8;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100003314;
  v7[3] = &unk_100020E68;
  v4 = _Block_copy(v7);

  [a1 withStore:v4];
  _Block_release(v4);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v6 = *(v2 + 16);

    return v6;
  }

  return result;
}

uint64_t sub_100006308(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100006CA8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1000073B8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003314;
  aBlock[3] = &unk_100020DF0;
  v10 = _Block_copy(aBlock);

  [a1 withStore:v10];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_100006520(void *a1)
{
  sub_100004B48(&qword_100025E48, &qword_100018178);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100018090;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 1701603686;
  *(v2 + 40) = 0xE400000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018090;
  v7 = [a1 databaseBasename];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [a1 select:isa from:v4 where:v5 bindings:v11];

  if (v12)
  {
    sub_100004B48(&qword_100025E50, &qword_100018180);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v13 + 16);
    if (v14)
    {
      v33 = a1;
      v15 = 32;
      do
      {
        v16 = *(v13 + v15);

        AnyHashable.init<A>(_:)();
        if (*(v16 + 16) && (v17 = sub_100005380(v34), (v18 & 1) != 0))
        {
          sub_100005AF4(*(v16 + 56) + 32 * v17, v35);
          sub_100005C28(v34);

          if (swift_dynamicCast())
          {
            v19._countAndFlagsBits = URL.path.getter();
            v20 = String.hasPrefix(_:)(v19);

            if (v20)
            {
              v21 = [objc_opt_self() defaultManager];
              v22 = String._bridgeToObjectiveC()();

              v34[0] = 0;
              v23 = [v21 removeItemAtPath:v22 error:v34];

              if (v23)
              {
                v24 = v34[0];
              }

              else
              {
                v25 = v34[0];
                _convertNSErrorToError(_:)();

                swift_willThrow();
              }
            }

            else
            {
            }
          }
        }

        else
        {

          sub_100005C28(v34);
        }

        v15 += 8;
        --v14;
      }

      while (v14);

      a1 = v33;
    }

    else
    {
    }
  }

  v26 = String._bridgeToObjectiveC()();
  sub_100004B48(&qword_100025E00, &qword_100018150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018090;
  v34[0] = 0x65726F7473;
  v34[1] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v28 = [a1 databaseBasename];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v29;
  *(inited + 80) = v31;
  sub_10000596C(inited);
  swift_setDeallocating();
  sub_100007168(inited + 32, &qword_100025E08, &qword_100018158);
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 deleteFrom:v26 matchingValues:v32];
}

uint64_t sub_100006A30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006A70()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_100001D08();
  result = swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v7;
    return v7 < v2;
  }

  return result;
}

uint64_t sub_100006AEC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100006BB0(void *a1)
{
  v2 = *(*(type metadata accessor for URL() - 8) + 80);

  sub_100006520(a1);
}

uint64_t sub_100006C20()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_100006CA8(void *a1)
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = String._bridgeToObjectiveC()();
  sub_100004B48(&qword_100025E00, &qword_100018150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000180A0;
  AnyHashable.init<A>(_:)();
  v6 = [a1 databaseBasename];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v7;
  *(inited + 80) = v9;
  v21[1] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v10 = URL.path.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v10;
  *(inited + 152) = v11;
  sub_10000596C(inited);
  swift_setDeallocating();
  sub_100004B48(&qword_100025E08, &qword_100018158);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 deleteFrom:v4 matchingValues:isa];

  v13 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v21[0] = 0;
  v17 = [v13 removeItemAtURL:v15 error:v21];

  v18 = v21[0];
  if (v17)
  {

    return v18;
  }

  else
  {
    v20 = v21[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100006F60()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006F98(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  sub_100004B48(&qword_100025E48, &qword_100018178);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018090;
  v7 = [a1 databaseBasename];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13[4] = sub_100007160;
  v13[5] = v2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000327C;
  v13[3] = &unk_100020E90;
  v12 = _Block_copy(v13);

  [a1 selectFrom:v4 where:v5 bindings:isa orderBy:0 limit:0 block:v12];
  _Block_release(v12);
}

uint64_t sub_100007168(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004B48(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SFAnalyticsTopicGenerator.SFAnalyticsTopicGeneratorError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SFAnalyticsTopicGenerator.SFAnalyticsTopicGeneratorError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000072C0()
{
  result = qword_100025E70;
  if (!qword_100025E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E70);
  }

  return result;
}

unint64_t sub_100007314()
{
  result = qword_100025E78;
  if (!qword_100025E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E78);
  }

  return result;
}

uint64_t start()
{
  v0 = sub_1000146E4("lifecycle");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "supd lives!", v9, 2u);
  }

  [NSError _setFileNameLocalizationEnabled:0];
  bzero(v9, 0x400uLL);
  _set_user_dir_suffix();
  confstr(65537, v9, 0x400uLL);
  v1 = objc_alloc_init(ServiceDelegate);
  v2 = [[supd alloc] initWithConnection:0];
  v3 = qword_1000262C0;
  qword_1000262C0 = v2;

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.securityuploadd"];
  [v4 setDelegate:v1];
  v5 = dispatch_time(0, 5000000000);
  v6 = dispatch_get_global_queue(0, 0);
  dispatch_after(v5, v6, &stru_100020F48);

  [v4 resume];
  v7 = +[NSRunLoop currentRunLoop];
  [v7 run];

  return 0;
}

void sub_100007804(id a1)
{
  v1 = sub_1000146E4("lifecycle");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "will exit when clean", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100007948(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000146E4("OSAWriteLogForSubmission");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Writing log data to report: %@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100007C04(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v10 = 0;
  v3 = [v2 openWithError:&v10];
  v4 = v10;

  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) store];
    (*(v5 + 16))(v5, v6);

    v7 = [*(a1 + 32) store];
    [v7 close];
  }

  else
  {
    if (!v4 || [v4 code] != 23)
    {
      v8 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SFAnalytics: could not open db at init, will try again later. Error: %@", buf, 0xCu);
      }
    }

    v9 = *(a1 + 40);
    v7 = [*(a1 + 32) store];
    (*(v9 + 16))(v9, v7);
  }
}

void sub_100008408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(&unk_1000262C8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008448(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 72));
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008E34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    goto LABEL_37;
  }

  if (!v7 || v9)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    goto LABEL_30;
  }

  v11 = v7;
  v12 = objc_autoreleasePoolPush();
  v13 = *(*(a1 + 56) + 8);
  obj = *(v13 + 40);
  v14 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(*(*(a1 + 56) + 8) + 40))
  {
LABEL_29:
    objc_autoreleasePoolPop(v12);

LABEL_30:
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v35 = sub_1000146E4("upload");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(*(a1 + 32) + 40);
        v37 = *(a1 + 48);
        v38 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412802;
        v48 = v36;
        v49 = 2112;
        v50 = v37;
        v51 = 2112;
        v52 = v38;
        v39 = "Unable to fetch splunk endpoint at URL for %@: %@ -- error: %@";
        v40 = v35;
        v41 = 32;
LABEL_33:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
      }
    }

    else
    {
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        goto LABEL_36;
      }

      v35 = sub_1000146E4("upload");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(*(a1 + 32) + 40);
        *buf = 138412290;
        v48 = v42;
        v39 = "Malformed iTunes config payload for %@!";
        v40 = v35;
        v41 = 12;
        goto LABEL_33;
      }
    }

LABEL_36:
    dispatch_semaphore_signal(*(a1 + 40));
    goto LABEL_37;
  }

  if (*(*(a1 + 32) + 10))
  {
LABEL_20:
    v27 = [v14 objectForKeyedSubscript:@"metricsBase"];
    v28 = WeakRetained[11];
    WeakRetained[11] = v27;

    v29 = [v14 objectForKeyedSubscript:@"metricsUrl"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }

    v45 = v29;
    v30 = [v29 stringByAppendingFormat:@"/2/%@", WeakRetained[3]];
    v31 = sub_1000146E4("upload");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(a1 + 32) + 40);
      *buf = 138412546;
      v48 = v30;
      v49 = 2112;
      v50 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "got metrics endpoint %@ for %@", buf, 0x16u);
    }

    v44 = v30;
    v33 = [NSURL URLWithString:v30];
    v34 = [v33 scheme];
    if ([v34 isEqualToString:@"https"])
    {
    }

    else
    {
      v43 = [*(a1 + 32) allowHTTPSplunkServerForTests];

      if ((v43 & 1) == 0)
      {
LABEL_27:

        v29 = v45;
        goto LABEL_28;
      }
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v33);
    goto LABEL_27;
  }

  v15 = [v14 valueForKey:@"sendDisabled"];
  *(*(a1 + 32) + 11) = [v15 BOOLValue];

  if (*(*(a1 + 32) + 11) != 1)
  {
    v18 = [v14 valueForKey:@"postFrequency"];
    v19 = [v18 unsignedIntegerValue];

    if (v19 >= 0x3E8)
    {
      v20 = v19 / 0x3E8;
      if (os_variant_has_internal_diagnostics() && *(*(a1 + 32) + 72) < v20)
      {
        v21 = sub_1000146E4("getURL");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(*(a1 + 32) + 72);
          *buf = 134218240;
          v48 = v20;
          v49 = 2048;
          v50 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Overriding server-sent post frequency because device is internal (%lu -> %lu)", buf, 0x16u);
        }
      }

      else
      {
        WeakRetained[9] = v20;
      }
    }

    v23 = [v14 objectForKeyedSubscript:@"blacklistedEvents"];
    v24 = WeakRetained[13];
    WeakRetained[13] = v23;

    v25 = [v14 objectForKeyedSubscript:@"blacklistedFields"];
    v26 = WeakRetained[12];
    WeakRetained[12] = v25;

    goto LABEL_20;
  }

  v16 = sub_1000146E4("SecError");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 40);
    *buf = 138412290;
    v48 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "not returning a splunk URL because uploads are disabled for %@", buf, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_autoreleasePoolPop(v12);

LABEL_37:
}

void sub_100009900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009920(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100009B14(id a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100008448;
  v26 = sub_100008458;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008448;
  v20 = sub_100008458;
  v21 = 0;
  v1 = sub_100009F24();
  if (v1)
  {
    v2 = sub_1000146E4("_getiCloudConfigurationInfoWithError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching configuration info", &buf, 2u);
    }

    v3 = dispatch_semaphore_create(0);
    v4 = objc_opt_new();
    v34 = @"com.apple.idms.config.privacy.icloud.data";
    v5 = [NSArray arrayWithObjects:&v34 count:1];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v29 = sub_100009FA0;
    v30 = &unk_1000213D0;
    v32 = &v16;
    v33 = &v22;
    v6 = v3;
    v31 = v6;
    [v4 configurationInfoWithIdentifiers:v5 forAltDSID:v1 completion:&buf];

    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v6, v7);
  }

  else
  {
    v6 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_getiCloudConfigurationInfoWithError: Failed to fetch primary account info.", &buf, 2u);
    }
  }

  v8 = v17[5];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  v11 = v8;
  if (v10)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = [v10 objectForKeyedSubscript:@"com.apple.idms.config.privacy.icloud.data"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v14 = [NSNumber numberWithInteger:[v13 integerValue]];
        v15 = [NSNumber numberWithInteger:0];
        byte_100026300 = [v14 isEqualToNumber:v15] ^ 1;
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v8)
  {
    v13 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_isiCloudAnalyticsEnabled: %@", &buf, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_21:
}

void sub_100009EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

id sub_100009F24()
{
  v0 = +[ACAccountStore defaultStore];
  v1 = [v0 aa_primaryAppleAccount];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 aa_altDSID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100009FA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_getiCloudConfigurationInfoWithError: Error fetching configurationInfo: %@", &v16, 0xCu);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = v6;
LABEL_9:
    v11 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = sub_1000146E4("_getiCloudConfigurationInfoWithError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fetched configurationInfo %@", &v16, 0xCu);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = v5;
    v5 = v9;
    goto LABEL_9;
  }

  v12 = sub_1000146E4("SecError");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    v13 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_getiCloudConfigurationInfoWithError: configurationInfo dict was not a dict, it was a %{public}@", &v16, 0xCu);
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v11 = v5;
  v5 = 0;
LABEL_10:

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000A980(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uploadDate];

  if (v4)
  {
    v5 = [v3 uploadDate];
    [v5 timeIntervalSince1970];
    v4 = [NSNumber numberWithDouble:v6 * 1000.0];
  }

  if ((*(a1 + 112) & 1) != 0 || ![*(a1 + 32) requireDeviceAnalytics])
  {
    goto LABEL_12;
  }

  if (qword_1000262F8 != -1)
  {
    dispatch_once(&qword_1000262F8, &stru_100021388);
  }

  if (byte_1000262F0)
  {
LABEL_12:
    if ((*(a1 + 112) & 1) != 0 || ![*(a1 + 32) requireiCloudAnalytics])
    {
      goto LABEL_13;
    }

    if (qword_100026308 != -1)
    {
      dispatch_once(&qword_100026308, &stru_1000213A8);
    }

    if (byte_100026300)
    {
LABEL_13:
      if (*(a1 + 113) != 1)
      {
LABEL_32:
        v23 = [*(a1 + 40) healthSummaryWithName:*(a1 + 32) store:v3 uuid:*(a1 + 56) timestamp:*(a1 + 64) lastUploadTime:{v4, *v29, *&v29[16]}];
        v8 = v23;
        if (v23)
        {
          if (*(a1 + 72))
          {
            [v23 addEntriesFromDictionary:?];
          }

          [*(a1 + 80) addObject:v8];
        }

        v24 = *(a1 + 88);
        v25 = [v3 rockwells];
        [v24 addObject:v25];

        v26 = *(a1 + 96);
        v27 = [v3 hardFailures];
        [v26 addObject:v27];

        v28 = *(a1 + 104);
        v13 = [v3 softFailures];
        [v28 addObject:v13];
        goto LABEL_37;
      }

      v7 = [v3 uploadDate];
      v8 = v7;
      if ((*(a1 + 112) & 1) != 0 || !v7)
      {
        if (!*(a1 + 112))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = +[NSDate date];
        [v9 timeIntervalSinceDate:v8];
        v11 = v10;
        v12 = *(*(a1 + 40) + 72);

        if (v11 < v12)
        {
          v13 = sub_1000146E4("json");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [*(a1 + 32) name];
            v15 = *(*(a1 + 40) + 40);
            *v29 = 138412802;
            *&v29[4] = v14;
            *&v29[12] = 2112;
            *&v29[14] = v15;
            *&v29[22] = 2112;
            v30 = v8;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ignoring client '%@' for %@ because last upload too recent: %@", v29, 0x20u);
          }

LABEL_37:

          goto LABEL_38;
        }

        if ((*(a1 + 112) & 1) == 0)
        {
LABEL_28:
          v16 = sub_1000146E4("json");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(a1 + 32) name];
            v22 = *(*(a1 + 40) + 40);
            *v29 = 138412546;
            *&v29[4] = v17;
            *&v29[12] = 2112;
            *&v29[14] = v22;
            v19 = "including client '%@' for topic '%@' for upload";
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      v16 = sub_1000146E4("json");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) name];
        v18 = *(*(a1 + 40) + 40);
        *v29 = 138412546;
        *&v29[4] = v17;
        *&v29[12] = 2112;
        *&v29[14] = v18;
        v19 = "client '%@' for topic '%@' force-included";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v19, v29, 0x16u);
      }

LABEL_31:

      [*(a1 + 48) addObject:*(a1 + 32)];
      goto LABEL_32;
    }

    v8 = sub_1000146E4("getLoggingJSON");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) name];
      *v29 = 138412290;
      *&v29[4] = v20;
      v21 = "Client '%@' requires iCloud analytics yet user did not opt in.";
      goto LABEL_26;
    }
  }

  else
  {
    v8 = sub_1000146E4("getLoggingJSON");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) name];
      *v29 = 138412290;
      *&v29[4] = v20;
      v21 = "Client '%@' requires device analytics yet user did not opt in.";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v21, v29, 0xCu);
    }
  }

LABEL_38:
}

void sub_10000B060(id a1)
{
  v4[0] = SFAnalyticsTopicKeySync;
  v4[1] = SFAnalyticsTopicCloudServices;
  v4[2] = SFAnalyticsTopicTransparency;
  v4[3] = SFAnalyticsTopicSWTransparency;
  v1 = [NSArray arrayWithObjects:v4 count:4];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000262E0;
  qword_1000262E0 = v2;
}

void sub_10000BE94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000146E4("postprocess");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) name];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting upload date (%@) for client: %@", &v9, 0x16u);
  }

  [v3 setUploadDate:*(a1 + 32)];
  if (*(a1 + 48) == 1)
  {
    v7 = sub_1000146E4("postprocess");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) name];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing collected data for client: %@", &v9, 0xCu);
    }

    [v3 clearAllData];
  }
}

void sub_10000C834(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = SFAnalyticsColumnSuccessCount;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 integerValue];

  v9 = [v6 objectForKeyedSubscript:SFAnalyticsColumnHardFailureCount];
  v10 = [v9 integerValue];

  v11 = [v6 objectForKeyedSubscript:SFAnalyticsColumnSoftFailureCount];

  v12 = [v11 integerValue];
  if (![*(a1 + 32) terseMetrics])
  {
    v24 = [NSNumber numberWithInteger:v8];
    v22 = a1 + 40;
    v25 = *(*(*(a1 + 40) + 8) + 40);
    v26 = [NSString stringWithFormat:@"%@-success", v32];
    [v25 setObject:v24 forKeyedSubscript:v26];

    v27 = [NSNumber numberWithInteger:v10];
    v28 = *(*(*(a1 + 40) + 8) + 40);
    v29 = [NSString stringWithFormat:@"%@-hardfail", v32];
    [v28 setObject:v27 forKeyedSubscript:v29];

    v21 = [NSNumber numberWithInteger:v12];
    v23 = @"%@-softfail";
    goto LABEL_12;
  }

  if (v10 | v12)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = [NSNumber numberWithInteger:v8];
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [NSString stringWithFormat:@"%@-s", v32];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  if (v10)
  {
    v17 = [NSNumber numberWithInteger:v10];
    v18 = *(*(*(a1 + 40) + 8) + 40);
    v19 = [NSString stringWithFormat:@"%@-h", v32];
    [v18 setObject:v17 forKeyedSubscript:v19];
  }

  v20 = v32;
  if (v12)
  {
    v21 = [NSNumber numberWithInteger:v12];
    v22 = a1 + 40;
    v23 = @"%@-f";
LABEL_12:
    v30 = *(*(*v22 + 8) + 40);
    v31 = [NSString stringWithFormat:v23, v32];
    [v30 setObject:v21 forKeyedSubscript:v31];

    v20 = v32;
  }

  *(*(*(a1 + 48) + 8) + 24) += v8;
  *(*(*(a1 + 56) + 8) + 24) += v10;
  *(*(*(a1 + 64) + 8) + 24) += v12;
}

void sub_10000CB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) sampleStatisticsForSamples:a3 withName:a2];
  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:v4];
}

void sub_10000D700(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 56) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if ([*(a1 + 32) prepareEventForUpload:v7 linkedUUID:*(a1 + 40)])
    {
      if ([NSJSONSerialization isValidJSONObject:v7])
      {
        [*(a1 + 48) addObject:v7];
      }

      else
      {
        v9 = sub_1000146E4("SecError");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "supd: Replacing event with errorEvent because invalid JSON: %@", buf, 0xCu);
        }

        v10 = SFAnalyticsEventType;
        v11 = [v7 objectForKeyedSubscript:SFAnalyticsEventType];
        v14[0] = v10;
        v14[1] = SFAnalyticsEventErrorDestription;
        v15[0] = SFAnalyticsEventTypeErrorEvent;
        v12 = [NSString stringWithFormat:@"JSON:%@", v11];
        v15[1] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

        [*(a1 + 48) addObject:v13];
      }
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_10000D8D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if ([*(a1 + 32) prepareEventForUpload:? linkedUUID:?])
  {
    [*(a1 + 48) addObject:v5];
  }
}

void sub_10000DC5C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_10000E170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E190(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      if ([v8 statusCode]< 200 || [v8 statusCode]> 299)
      {
        v10 = sub_1000146E4("upload");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(a1 + 32) + 40);
          v18 = *(a1 + 48);
          v19 = [v8 statusCode];
          v20 = [v8 allHeaderFields];
          v21 = 138413058;
          v22 = v17;
          v23 = 2112;
          v24 = v18;
          v25 = 1024;
          v26 = v19;
          v27 = 2112;
          v28 = v20;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Splunk upload for %@ unexpected status to URL: %@ -- status: %d %@", &v21, 0x26u);
        }

        goto LABEL_14;
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      v10 = sub_1000146E4("upload");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 40);
      v21 = 138412546;
      v22 = v12;
      v23 = 2112;
      v24 = v11;
      v13 = "Splunk upload success for %@ with linkID: %@";
      v14 = v10;
    }

    else
    {
      v15 = objc_opt_class();
      v8 = sub_1000146E4("SecError");
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v16 = *(*(a1 + 32) + 40);
      v10 = NSStringFromClass(v15);
      v21 = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v10;
      v13 = "Received the wrong kind of response for %@: %@";
      v14 = v8;
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v21, 0x16u);
    goto LABEL_14;
  }

  v8 = sub_1000146E4("SecError");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 40);
    v21 = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error in uploading the events to splunk for %@: %@", &v21, 0x16u);
  }

LABEL_15:

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10000F6B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = +[NSMutableDictionary dictionary];
  v4 = [v3 uploadDate];

  [v7 setObject:v4 forKeyedSubscript:@"uploadDate"];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) name];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

void sub_10000FAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FAF4(uint64_t a1, void *a2)
{
  v3 = [a2 dataPropertyForKey:@"SFCollectionConfig"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100010C00(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [a1[5] name];
  v6 = [NSString stringWithFormat:@"Client: %@\n", v5];
  [v4 appendString:v6];

  v7 = [v3 allEvents];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = a1[4];
        v13 = [a1[6] sysdiagnoseStringForEventRecord:*(*(&v14 + 1) + 8 * v11)];
        [v12 appendFormat:@"%@\n", v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (![v7 count])
  {
    [a1[4] appendString:@"No data to report for this client\n"];
  }
}

void sub_100010FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = &stru_100022550;
  }

  else
  {
    v5 = @", ";
  }

  v6 = [NSString stringWithFormat:@"%@%@ : %@", v5, a2, a3];
  [v4 appendString:v6];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_100011814(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        [objc_opt_class() writeURL:*(*(&v10 + 1) + 8 * v8) intoFileHandle:{v3, v10}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_100011D10(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 propertyForKey:@"SFABuild"];
  if (!v3 || ([*(a1 + 32) isEqual:v3] & 1) == 0)
  {
    [v4 clearAllData];
  }

  [v4 setProperty:*(a1 + 32) forKey:@"SFABuild"];
}

void sub_100011F28(uint64_t a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100011FC4;
  handler[3] = &unk_100021198;
  v2 = *(a1 + 32);
  xpc_activity_register("com.apple.securityuploadd.triggerupload", XPC_ACTIVITY_CHECK_IN, handler);
}

void sub_100011FC4(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  v4 = sub_1000146E4("supd");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = state;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "hit xpc activity trigger, state: %ld", &v5, 0xCu);
  }

  if (state == 2)
  {
    [*(a1 + 32) performRegularlyScheduledUpload];
  }
}

void sub_1000128A8(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  if (v7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100012968;
    v10[3] = &unk_100021250;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v11 = v8;
    v12 = v9;
    dispatch_data_apply(v7, v10);
  }

  if (a4 || a2)
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

uint64_t sub_100012968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v8 = [NSData dataWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  [v7 writeData:v8 error:0];

  *(*(*(a1 + 40) + 8) + 24) += a5;
  return 1;
}

void sub_10001307C(id a1, const char *a2)
{
  v3 = mkpath_np(a2, 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (v3 != 17)
    {
      v5 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = a2;
        v11 = 2080;
        v12 = strerror(v4);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", &v9, 0x16u);
      }
    }
  }

  if (chmod(a2, 0x1FFu))
  {
    v6 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = 136315394;
      v10 = a2;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to change permissions of %s: %s", &v9, 0x16u);
    }
  }
}

uint64_t sub_1000133B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000133D0(uint64_t a1, char *a2)
{
  if (chmod(a2, 0x1A4u))
  {
    v4 = *__error();
    v15 = NSLocalizedDescriptionKey;
    v5 = [NSString localizedStringWithFormat:@"failed to change permissions of %s: %s", a2, strerror(v4)];
    v16 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (v4 != 2)
    {
      v10 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = a2;
        v13 = 2080;
        v14 = strerror(v4);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to change permissions of %s: %s", buf, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

BOOL sub_100013938(id a1, NSURL *a2, NSError *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(NSURL *)a2 fileSystemRepresentation];
  v8 = [(NSError *)v6 localizedFailureReason];

  v9 = [v8 UTF8String];
  v10 = sub_1000146E4("SecError");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "unknown error";
    if (v9)
    {
      v11 = v9;
    }

    v13 = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "unable to fix permissions for %s: %s", &v13, 0x16u);
  }

  return 1;
}

void sub_100013D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100013D5C(uint64_t a1, char *a2)
{
  if (chown(a2, 0x11Au, 0x11Au))
  {
    v4 = *__error();
    v15 = NSLocalizedDescriptionKey;
    v5 = [NSString localizedStringWithFormat:@"failed to change owner of %s: %s", a2, strerror(v4)];
    v16 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (v4 != 2)
    {
      v10 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = a2;
        v13 = 2080;
        v14 = strerror(v4);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to change owner of %s: %s", buf, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

void sub_1000142C8(id a1)
{
  if (getuid() == 282 || !getuid() && gTrustd)
  {
    byte_100026310 = 1;
  }
}

void sub_10001430C(id a1)
{
  v1 = sub_100014804(@"private/var/protected/", @"trustd");

  sub_1000148F0(v1, &stru_1000216C0);
}

void sub_10001434C(id a1, const char *a2)
{
  v3 = mkpath_np(a2, 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (v3 != 17)
    {
      v5 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = a2;
        v9 = 2080;
        v10 = strerror(v4);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", &v7, 0x16u);
      }
    }
  }

  if (qword_100026318 != -1)
  {
    dispatch_once(&qword_100026318, &stru_100021660);
  }

  if (byte_100026310 == 1)
  {
    v6 = getuid();
    chown(a2, v6, v6);
    chmod(a2, 0x1EDu);
  }
}

const void *sub_100014488(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_100026330;
  if (!qword_100026330)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_100026330 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_100014694;
    v9[3] = &unk_1000216E0;
    v9[4] = v1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v11 = sub_1000147F4;
    v12 = &unk_100021730;
    v13 = v9;
    CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
    if (CStringPtr)
    {
      v5 = CStringPtr;
      v6 = strlen(CStringPtr);
      (v11)(v10, v5, v6);
    }

    else
    {
      usedBufLen = 0;
      Length = CFStringGetLength(v1);
      v16.location = 0;
      v16.length = Length;
      CFStringGetBytes(v1, v16, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = sub_100014774;
      v14[3] = &unk_100021708;
      v14[6] = 0;
      v14[7] = Length;
      v14[8] = usedBufLen;
      v14[4] = v10;
      v14[5] = v1;
      sub_1000149F8(usedBufLen + 1, v14);
    }

    Value = CFDictionaryGetValue(qword_100026330, v1);
  }

  os_unfair_lock_unlock(&unk_100026328);
  return Value;
}

void sub_100014694(uint64_t a1, const char *a2)
{
  v2 = qword_100026330;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

const void *sub_1000146E4(const char *a1)
{
  pthread_mutex_lock(&stru_100026060);
  pthread_mutex_unlock(&stru_100026060);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_100014488(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_100014488(0);
  }
}

uint64_t sub_100014774(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

CFURLRef sub_100014804(const __CFString *a1, uint64_t a2)
{
  v4 = CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  if (a2)
  {
    v5 = kCFAllocatorDefault;
    Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", a1, a2);
  }

  else
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v5 = kCFAllocatorDefault;
    Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
  }

  v7 = Copy;
  if (v4 && Copy)
  {
    v8 = CFURLCreateCopyAppendingPathComponent(v5, v4, Copy, a2 == 0);
    CFRelease(v7);
LABEL_11:
    CFRelease(v4);
    return v8;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_10:
  v8 = 0;
  if (v4)
  {
    goto LABEL_11;
  }

  return v8;
}

void sub_1000148F0(const __CFURL *a1, uint64_t a2)
{
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    CFURLGetFileSystemRepresentation(a1, 0, __b, 1024);
    (*(a2 + 16))(a2, __b);
    CFRelease(a1);
  }
}

void sub_100014994(uint64_t a1, uint64_t a2)
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v4 = sub_100014804(@"Library/Keychains", a1);

  sub_1000148F0(v4, a2);
}

void sub_1000149F8(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin(size);
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}