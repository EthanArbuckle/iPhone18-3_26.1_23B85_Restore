uint64_t sub_100655C98(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for URL();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v67 = &v56 - v10;
  __chkstk_darwin(v9);
  v63 = &v56 - v11;
  v68 = sub_1006565BC();
  v13 = v12;
  if (qword_100973BB0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    v15 = sub_10000C4AC(v14, qword_100987CE0);

    v60 = v15;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v59 = v8;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_10000C4E4(a1, a2, v73);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_10000C4E4(v68, v13, v73);
      _os_log_impl(&_mh_execute_header, v16, v17, "evictContactIdentifier: %s, compressed: %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    v8 = v13;
    v20 = [objc_opt_self() defaultManager];
    if (qword_100973BC0 != -1)
    {
      swift_once();
    }

    v58 = sub_10000C4AC(v4, qword_100987D00);
    URL._bridgeToObjectiveC()(&v74);
    v22 = v21;
    v73[0] = 0;
    v23 = [v20 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:0 error:v73];

    v24 = v73[0];
    v57 = a1;
    if (!v23)
    {
      break;
    }

    v56 = a2;
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v24;

    v66 = *(v25 + 16);
    if (v66)
    {
      a1 = 0;
      v61 = (v69 + 8);
      v64 = (v69 + 32);
      v65 = v69 + 16;
      v27 = _swiftEmptyArrayStorage;
      v62 = v4;
      a2 = v63;
      while (a1 < *(v25 + 16))
      {
        v13 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v28 = *(v69 + 72);
        (*(v69 + 16))(a2, v25 + v13 + v28 * a1, v4);
        v73[0] = URL.absoluteString.getter();
        v73[1] = v29;
        v70 = v68;
        v71 = v8;
        sub_10001229C();
        v30 = StringProtocol.contains<A>(_:)();

        if (v30)
        {
          v31 = a2;
          v32 = v8;
          v33 = *v64;
          (*v64)(v67, v31, v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v27[2] + 1, 1);
            v27 = v72;
          }

          v36 = v27[2];
          v35 = v27[3];
          if (v36 >= v35 >> 1)
          {
            sub_10028FAB4(v35 > 1, v36 + 1, 1);
            v27 = v72;
          }

          v27[2] = v36 + 1;
          v37 = v27 + v13 + v36 * v28;
          v4 = v62;
          v33(v37, v67, v62);
          v8 = v32;
          a2 = v63;
        }

        else
        {
          (*v61)(a2, v4);
        }

        if (v66 == ++a1)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
LABEL_20:

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v73[0] = v42;
        *v41 = 136315138;
        v43 = Array.description.getter();
        v45 = sub_10000C4E4(v43, v44, v73);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Removing URLs: %s", v41, 0xCu);
        sub_10000C60C(v42);
      }

      v13 = v59;
      v46 = v27[2];
      if (!v46)
      {
      }

      v8 = 0;
      a1 = 0;
      a2 = v69 + 16;
      v47 = (v69 + 8);
      while (v8 < v27[2])
      {
        (*(v69 + 16))(v13, v27 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v8, v4);
        sub_1006553A4(v13);
        ++v8;
        (*v47)(v13, v4);
        if (v46 == v8)
        {
        }
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v38 = v73[0];

  _convertNSErrorToError(_:)();

  swift_willThrow();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = a2;
    v55 = v53;
    v73[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_10000C4E4(v57, v54, v73);
    _os_log_impl(&_mh_execute_header, v49, v50, "Failed to remove specific contactID: %s, removing all", v52, 0xCu);
    sub_10000C60C(v55);
  }

  sub_1006553A4(v58);
}

uint64_t sub_1006565BC()
{
  v0 = type metadata accessor for SHA256();
  v37 = *(v0 - 8);
  v1 = *(v37 + 64);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v41 = v14;
  v42 = v16;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.unwrap(_:file:line:)();
  sub_10028BCC0(v41, v42);
  v17 = v38[0];
  v18 = v38[1];
  sub_10065B850(&unk_100983280, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100294008(v17, v18);
  sub_100635718(v17, v18);
  sub_100026AC0(v17, v18);
  dispatch thunk of HashFunction.finalize()();
  (*(v37 + 8))(v3, v0);
  v39 = v4;
  v40 = sub_10065B850(&unk_10097F060, &type metadata accessor for SHA256Digest);
  v19 = sub_10002F604(v38);
  (*(v5 + 16))(v19, v8, v4);
  sub_10002CDC0(v38, v39);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v5 + 8))(v8, v4);
  v20 = v41;
  v21 = v42;
  sub_10000C60C(v38);
  v37 = v20;
  Data.base64EncodedString(options:)(0);
  sub_10054141C(5);

  if (Substring.distance(from:to:)() != 5)
  {
    if (qword_100973BB0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100987CE0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v24;
      v26 = v25;
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v26 = 136315138;

      v27 = static String._fromSubstring(_:)();
      v36 = v21;
      v28 = v27;
      v30 = v29;

      v31 = sub_10000C4E4(v28, v30, v38);

      *(v26 + 4) = v31;
      v21 = v36;
      _os_log_impl(&_mh_execute_header, v23, v35, "Failed to form valid lossyContactID, unexpected hash length: %s", v26, 0xCu);
      sub_10000C60C(v34);
    }
  }

  v32 = static String._fromSubstring(_:)();

  sub_100026AC0(v37, v21);
  sub_100026AC0(v17, v18);
  return v32;
}

uint64_t sub_100656D78(CGImage *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = v4;
  v26 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100987CE0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = a4;
    v25 = v9;
    v18 = a1;
    v19 = v17;
    v20 = v10;
    v21 = swift_slowAlloc();
    v27 = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_10000C4E4(v26, a3, &v27);
    sub_10000C60C(v21);
    v10 = v20;
    v5 = v4;

    a1 = v18;
    a4 = v24;
    v9 = v25;
  }

  result = sub_1006580F0();
  if (!v5)
  {
    sub_100658C3C(v26, a3, a4, v13);
    sub_100659BA8(a1, v13);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t static SDXPCHelperImageCache.cacheIsEmpty()()
{
  v0 = [objc_opt_self() defaultManager];
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_10000C4AC(v1, qword_100987D18);
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 fileExistsAtPath:v2];

  return v3 ^ 1;
}

uint64_t sub_1006571EC(char *a1, unint64_t a2, char *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  result = sub_1006580F0();
  if (!v3)
  {
    v43 = 0;
    sub_100658C3C(a1, a2, a3, v14);
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v19 = CGImageSourceCreateWithURL(v17, 0);

    if (v19)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v19, 0, 0);

      if (qword_100973BB0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C4AC(v21, qword_100987CE0);
      (*(v8 + 16))(v12, v14, v7);

      v22 = ImageAtIndex;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v42 = ImageAtIndex;
      v25 = v24;

      v41 = v25;
      if (os_log_type_enabled(v23, v25))
      {
        v26 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v45 = v40;
        *v26 = 136315650;
        *(v26 + 4) = sub_10000C4E4(a1, a2, &v45);
        *(v26 + 12) = 2080;
        sub_10065B850(&qword_100975160, &type metadata accessor for URL);
        v39 = v23;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        v30 = *(v8 + 8);
        v30(v12, v7);
        v31 = sub_10000C4E4(v27, v29, &v45);

        *(v26 + 14) = v31;
        *(v26 + 22) = 2080;
        v32 = v42;
        v44 = v42;
        sub_10028088C(&qword_100987D98, &qword_10080E998);
        v33 = Optional.debugDescription.getter();
        v35 = sub_10000C4E4(v33, v34, &v45);

        *(v26 + 24) = v35;
        v36 = v39;
        swift_arrayDestroy();

        v30(v14, v7);
        return v32;
      }

      else
      {

        v38 = *(v8 + 8);
        v38(v12, v7);
        v38(v14, v7);
        return v42;
      }
    }

    else
    {
      type metadata accessor for SDXPCHelperImageCache.CacheError();
      sub_10065B850(&qword_100987D90, type metadata accessor for SDXPCHelperImageCache.CacheError);
      swift_allocError();
      (*(v8 + 16))(v37, v14, v7);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v8 + 8))(v14, v7);
    }
  }

  return result;
}

uint64_t sub_100657730()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  v4 = __chkstk_darwin(v2);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v52 = v50 - v7;
  v8 = __chkstk_darwin(v6);
  v60 = v50 - v9;
  __chkstk_darwin(v8);
  v11 = v50 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  if (qword_100973BC8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    sub_10000C4AC(v2, qword_100987D18);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v61 = 0;
    v17 = [v13 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:&v61];

    v18 = v61;
    if (!v17)
    {
      v30 = v61;
LABEL_31:
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }

    v50[1] = v1;
    v51 = v12;
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v18;

    v21 = *(v19 + 16);
    v55 = v2;
    v59 = v21;
    if (v21)
    {
      v12 = 0;
      v1 = v56;
      v57 = (v56 + 32);
      v58 = (v56 + 16);
      v53 = (v56 + 8);
      v22 = _swiftEmptyArrayStorage;
      while (v12 < *(v19 + 16))
      {
        v23 = (*(v1 + 80) + 32) & ~*(v1 + 80);
        v13 = *(v1 + 72);
        (*(v1 + 16))(v11, v19 + v23 + v13 * v12, v2);
        if (URL.hasDirectoryPath.getter())
        {
          (*v53)(v11, v2);
        }

        else
        {
          v24 = *v57;
          (*v57)(v60, v11, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v22[2] + 1, 1);
            v22 = v61;
          }

          v27 = v22[2];
          v26 = v22[3];
          v28 = v22;
          if (v27 >= v26 >> 1)
          {
            sub_10028FAB4(v26 > 1, v27 + 1, 1);
            v28 = v61;
          }

          v28[2] = v27 + 1;
          v29 = v28 + v23 + v27 * v13;
          v2 = v55;
          v24(v29, v60, v55);
          v1 = v56;
          v22 = v28;
        }

        if (v59 == ++v12)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v22 = _swiftEmptyArrayStorage;
    v1 = v56;
LABEL_16:
    v57 = v22;

    v31 = [v51 defaultManager];
    if (qword_100973BC0 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v2, qword_100987D00);
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v61 = 0;
    v35 = [v31 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:0 error:&v61];

    v36 = v61;
    if (!v35)
    {
      v30 = v61;

      goto LABEL_31;
    }

    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = v57;
    v60 = *(v11 + 2);
    if (!v60)
    {
      break;
    }

    v39 = 0;
    v58 = (v1 + 32);
    v59 = v1 + 16;
    v53 = (v1 + 8);
    v12 = _swiftEmptyArrayStorage;
    v40 = v52;
    while (v39 < *(v11 + 2))
    {
      v41 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      (*(v1 + 16))(v40, &v11[v41 + v13 * v39], v2);
      if (URL.hasDirectoryPath.getter())
      {
        (*v53)(v40, v2);
      }

      else
      {
        v42 = *v58;
        (*v58)(v54, v40, v2);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v61 = v12;
        if ((v43 & 1) == 0)
        {
          sub_10028FAB4(0, *(v12 + 16) + 1, 1);
          v12 = v61;
        }

        v45 = *(v12 + 16);
        v44 = *(v12 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_10028FAB4(v44 > 1, v45 + 1, 1);
          v12 = v61;
        }

        *(v12 + 16) = v45 + 1;
        v46 = v12 + v41 + v45 * v13;
        v2 = v55;
        v42(v46, v54, v55);
        v1 = v56;
        v38 = v57;
        v40 = v52;
      }

      if (v60 == ++v39)
      {
        goto LABEL_33;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_33:

  v48 = v38[2];

  v49 = *(v12 + 16);

  result = v48 + v49;
  if (__OFADD__(v48, v49))
  {
    __break(1u);
  }

  return result;
}

id SDXPCHelperImageCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SDXPCHelperImageCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDXPCHelperImageCache();
  return objc_msgSendSuper2(&v2, "init");
}

id SDXPCHelperImageCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDXPCHelperImageCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100657E80()
{
  v0 = [objc_opt_self() defaultManager];
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  v2 = sub_10000C4AC(v1, qword_100987D18);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v16 = 0;
  v6 = [v0 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v16];

  v7 = v16;
  if (v6)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    v10 = *(v8 + 16);

    if (qword_100973BB0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100987CE0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218496;
      *(v14 + 4) = v10;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 500;
      *(v14 + 22) = 1024;
      *(v14 + 24) = v10 > 0x1F4;
      _os_log_impl(&_mh_execute_header, v12, v13, "ensureCacheNotFull - numItems = %ld, limit = %ld, shouldPurge = %{BOOL}d", v14, 0x1Cu);
    }

    if (v10 >= 0x1F5)
    {
      sub_1006553A4(v2);
    }
  }

  else
  {
    v15 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1006580F0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLResourceValues();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  __chkstk_darwin(v7);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BD0 != -1)
  {
LABEL_49:
    swift_once();
  }

  v10 = sub_10000C4AC(v2, qword_100987D30);
  v11 = v1;
  sub_1006553A4(v10);
  if (v1)
  {

    v11 = 0;
  }

  v82 = v11;
  if (qword_100973BD8 != -1)
  {
    swift_once();
  }

  v12 = qword_100987D48;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 stringForKey:v13];

  v74 = v7;
  v77 = v12;
  v76 = "Key should encode to UTF8.";
  if (v14)
  {
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v79 = 0;
    v16 = 0;
  }

  v80 = v2;
  v17 = String._bridgeToObjectiveC()();
  v18 = MGGetStringAnswer();
  if (!v18)
  {
    __break(1u);
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v16 && (v20 == v79 && v16 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v23 = v80;
  }

  else
  {
    v78 = v3;
    if (qword_100973BB0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = sub_10000C4AC(v24, qword_100987CE0);

    v75 = v25;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10000C4E4(v20, v22, &v83);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;
      if (v16)
      {
        v30 = v79;
      }

      else
      {
        v30 = 0xD000000000000015;
      }

      if (!v16)
      {
        v16 = 0x8000000100789F30;
      }

      v31 = sub_10000C4E4(v30, v16, &v83);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "currentBuild(%s) != lastBuildUpdate(%s), purging.", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v32 = v82;
    v23 = v80;
    v3 = v78;
    if (qword_100973BC8 != -1)
    {
      swift_once();
    }

    v33 = sub_10000C4AC(v23, qword_100987D18);
    sub_1006553A4(v33);
    if (v32)
    {

      swift_errorRetain();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v83 = v37;
        *v36 = 136315138;
        swift_getErrorValue();
        v38 = Error.localizedDescription.getter();
        v40 = sub_10000C4E4(v38, v39, &v83);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v34, v35, "Couldn't purge for bundle version change: %s", v36, 0xCu);
        sub_10000C60C(v37);
        v23 = v80;

        v3 = v78;
      }

      else
      {
      }

      v82 = 0;
    }

    else
    {
      v82 = 0;
      v41 = String._bridgeToObjectiveC()();
      [(NSString *)v77 setObject:v19 forKey:v41];
    }
  }

  v42 = v6;
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v43 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v79 = v3[9];
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1007F8A70;
  v72 = v44;
  v45 = v44 + v43;
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v46 = sub_10000C4AC(v23, qword_100987D18);
  v47 = (v3 + 2);
  v48 = v3[2];
  v48(v45, v46, v23);
  if (qword_100973BC0 != -1)
  {
    swift_once();
  }

  v49 = sub_10000C4AC(v23, qword_100987D00);
  v48(v45 + v79, v49, v23);
  v76 = (v3 + 1);
  v78 = NSFileProtectionKey;
  v7 = 2;
  v77 = NSFileProtectionCompleteUnlessOpen;
  v71 = v45;
  v3 = v45;
  v75 = v48;
  while (1)
  {
    v2 = v47;
    v48(v42, v3, v23);
    v50 = [objc_opt_self() defaultManager];
    v6 = v42;
    URL._bridgeToObjectiveC()(v51);
    v53 = v52;
    v54 = v78;
    v85[0] = v78;
    type metadata accessor for FileProtectionType(0);
    v85[4] = v55;
    v56 = v77;
    v85[1] = v77;
    sub_10028088C(&qword_1009746B8, &qword_1007F6598);
    v1 = static _DictionaryStorage.allocate(capacity:)();
    v57 = v54;
    v58 = v56;
    sub_10065B7D4(v85, &v83);
    v59 = v83;
    v60 = sub_1005818A4(v83);
    if (v61)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v1[(v60 >> 6) + 8] |= 1 << v60;
    *(v1[6] + 8 * v60) = v59;
    sub_1000106E0(&v84, (v1[7] + 32 * v60));
    v62 = v1[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_48;
    }

    v1[2] = v64;
    sub_100005508(v85, &qword_1009746C0, &qword_1007F65A0);
    type metadata accessor for FileAttributeKey(0);
    sub_10065B850(&qword_100974750, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v83 = 0;
    v66 = [v50 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:isa error:&v83];

    if (!v66)
    {
      v70 = v83;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v23 = v80;
      v42 = v6;
      goto LABEL_46;
    }

    v67 = v83;
    v68 = v82;
    v42 = v6;
    URL.setResourceValues(_:)();
    v23 = v80;
    if (v68)
    {
      break;
    }

    v82 = 0;
    (*v76)(v6, v80);
    v3 = (v3 + v79);
    --v7;
    v47 = v2;
    v48 = v75;
    if (!v7)
    {
      (*(v73 + 8))(v81, v74);
      swift_setDeallocating();
      swift_arrayDestroy();
      return swift_deallocClassInstance();
    }
  }

LABEL_46:
  (*v76)(v42, v23);
  return (*(v73 + 8))(v81, v74);
}

uint64_t sub_100658C3C@<X0>(char *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v70 = a1;
  v81 = a4;
  v5 = type metadata accessor for URL();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  v7 = __chkstk_darwin(v5);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v69 - v9;
  v10 = type metadata accessor for SHA256();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SHA256Digest();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  __chkstk_darwin(v14);
  v74 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.Encoding();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a3;
  v78 = a3;

  sub_100659DCC(&v86);
  v72 = v86;
  v22 = sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  v76 = sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
  v77 = v22;
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;
  v86 = v70;
  v87 = v71;

  v26._countAndFlagsBits = 124;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v23;
  v27._object = v25;
  String.append(_:)(v27);

  static String.Encoding.utf8.getter();
  v28 = String.data(using:allowLossyConversion:)();
  v30 = v29;

  (*(v18 + 8))(v21, v17);
  v90 = v28;
  v91 = v30;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.unwrap(_:file:line:)();
  sub_10028BCC0(v90, v91);
  v31 = v86;
  v32 = v87;
  sub_10065B850(&unk_100983280, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100294008(v31, v32);
  sub_100635718(v31, v32);
  sub_100026AC0(v31, v32);
  v33 = v74;
  dispatch thunk of HashFunction.finalize()();
  v34 = v13;
  v35 = v72;
  (*(v73 + 8))(v34, v10);
  v88 = v14;
  v89 = sub_10065B850(&unk_10097F060, &type metadata accessor for SHA256Digest);
  v36 = sub_10002F604(&v86);
  v37 = v75;
  (*(v75 + 16))(v36, v33, v14);
  sub_10002CDC0(&v86, v88);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v37 + 8))(v33, v14);
  v38 = v90;
  v39 = v91;
  sub_10000C60C(&v86);
  v40 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v40._countAndFlagsBits;
  sub_100026AC0(v38, v39);
  v42 = *(v35 + 2);
  if (v42)
  {
    v73 = v40._countAndFlagsBits;
    v74 = v31;
    v75 = v32;
    v86 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v42, 0);
    v43 = v86;
    v44 = (v35 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;

      v47 = sub_1006565BC();
      v49 = v48;

      v86 = v43;
      v51 = *(v43 + 2);
      v50 = *(v43 + 3);
      if (v51 >= v50 >> 1)
      {
        sub_10028FBDC((v50 > 1), v51 + 1, 1);
        v43 = v86;
      }

      *(v43 + 2) = v51 + 1;
      v52 = &v43[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v49;
      v44 += 2;
      --v42;
    }

    while (v42);

    v31 = v74;
    v32 = v75;
    countAndFlagsBits = v73;
  }

  else
  {

    v43 = _swiftEmptyArrayStorage;
  }

  v86 = v43;
  v53 = BidirectionalCollection<>.joined(separator:)();
  v55 = v54;

  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {
    v57 = 124;
  }

  else
  {
    v57 = 0;
  }

  if (v56)
  {
    v58 = 0xE100000000000000;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  v86 = v53;
  v87 = v55;

  v59._countAndFlagsBits = v57;
  v59._object = v58;
  String.append(_:)(v59);

  v60._countAndFlagsBits = countAndFlagsBits;
  v60._object = v40._object;
  String.append(_:)(v60);

  v90 = 47;
  v91 = 0xE100000000000000;
  v84 = 42;
  v85 = 0xE100000000000000;
  sub_10001229C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  if (*(v78 + 2))
  {
    if (qword_100973BC0 != -1)
    {
      swift_once();
    }

    v61 = qword_100987D00;
  }

  else
  {
    if (qword_100973BC8 != -1)
    {
      swift_once();
    }

    v61 = qword_100987D18;
  }

  v62 = v83;
  v63 = sub_10000C4AC(v83, v61);
  v64 = v82;
  v65 = v79;
  (*(v82 + 16))(v79, v63, v62);
  v66 = v80;
  URL.appendingPathComponent(_:)();

  v67 = *(v64 + 8);
  v67(v65, v62);
  URL.appendingPathExtension(_:)();
  sub_100026AC0(v31, v32);
  return (v67)(v66, v62);
}

void sub_1006594D8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  if (qword_100973BB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100987CE0);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = a1;
    v14 = v13;
    v36 = swift_slowAlloc();
    v37 = v3 + 16;
    v41 = v36;
    *v14 = 136315138;
    sub_10065B850(&qword_100975160, &type metadata accessor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v10;
    v17 = v2;
    v19 = v18;
    (*(v3 + 8))(v8, v17);
    v20 = sub_10000C4E4(v15, v19, &v41);
    v2 = v17;
    v10 = v16;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "markPurgeable: %s", v14, 0xCu);
    sub_10000C60C(v36);

    a1 = v38;
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  sub_1000276B4(0, &qword_100987DB0, NSFileHandle_ptr);
  v21 = v39;
  v10(v39, a1, v2);
  v22 = v40;
  v23 = sub_100659984(v21);
  if (!v22)
  {
    v24 = v23;
    v25 = [v23 fileDescriptor];
    v41 = 67585;
    v26 = ffsctl(v25, 0xC0084A44uLL, &v41, 0);
    if (v26)
    {
      v27 = v26;
      sub_10028088C(&unk_100987070, &unk_10080DA00);
      v28 = v10;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v30;
      *(inited + 72) = v2;
      v31 = sub_10002F604((inited + 48));
      v28(v31, a1, v2);
      v32 = NSPOSIXErrorDomain;
      sub_100011040(inited);
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_1009744D0, &qword_1007F8A20);
      v33 = objc_allocWithZone(NSError);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v33 initWithDomain:v32 code:v27 userInfo:isa];

      swift_willThrow();
    }

    sub_100659ADC(v24);
  }
}

id sub_100659984(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

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

id sub_100659ADC(void *a1)
{
  v5 = 0;
  v1 = [a1 closeAndReturnError:&v5];
  v2 = v5;
  if (v1)
  {

    return v2;
  }

  else
  {
    v4 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_100659BA8(CGImage *a1, uint64_t a2)
{
  sub_1006553A4(a2);
  if (!v2)
  {
    sub_100657E80();
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    v8 = CGImageDestinationCreateWithURL(v6, kUTTypePNG, 1uLL, 0);

    if (v8)
    {
      CGImageDestinationAddImage(v8, a1, 0);
      if (CGImageDestinationFinalize(v8))
      {
        sub_1006594D8(a2);
      }

      else
      {
        type metadata accessor for SDXPCHelperImageCache.CacheError();
        sub_10065B850(&qword_100987D90, type metadata accessor for SDXPCHelperImageCache.CacheError);
        swift_allocError();
        v13 = v12;
        v14 = type metadata accessor for URL();
        (*(*(v14 - 8) + 16))(v13, a2, v14);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for SDXPCHelperImageCache.CacheError();
      sub_10065B850(&qword_100987D90, type metadata accessor for SDXPCHelperImageCache.CacheError);
      swift_allocError();
      v10 = v9;
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 16))(v10, a2, v11);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

Swift::Int sub_100659DCC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004978F4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100659E38(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100659E38(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10065A000(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100659F30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100659F30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10065A000(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1004973B4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10065A5DC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028E6A8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10028E6A8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10065A5DC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1004973B4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100497328(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10065A5DC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC5evict17contactIdentifierySS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v16[1] = qword_100987CF8;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_10065B898;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008ECC38;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC05clearE8WithSyncyySbFZ_0(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100987CE0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "clearCacheWithSync: %{BOOL}d", v15, 8u);
  }

  v16 = qword_100973BB8;
  if ((a1 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v17 = qword_100987CF8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1006551AC;
  *(v2 + 24) = 0;
  v28 = sub_100561E60;
  v29 = v2;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100695A9C;
  v27 = &unk_1008ECCD8;
  v8 = _Block_copy(&aBlock);
  v6 = v29;

  dispatch_sync(v17, v8);
  _Block_release(v8);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_10:
    v21 = v7;
    v22 = v3;
    if (v16 != -1)
    {
      swift_once();
    }

    v28 = sub_1006551AC;
    v29 = 0;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100011678;
    v27 = &unk_1008ECC88;
    v19 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v22 + 8))(v6, v2);
    (v8[1])(v11, v21);
  }

  return result;
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC12purgeAvatarsyyFZ_0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v12);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v11[1] = qword_100987CF8;
  aBlock[4] = sub_100655A2C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008ECC60;
  v9 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v1 + 8))(v4, v0);
  return (*(v5 + 8))(v8, v12);
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC03setD0_6forKey10contactIDsySo10CGImageRefa_SSSaySSGtFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v21[1] = qword_100987CF8;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_10065B844;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008ECBE8;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

uint64_t type metadata accessor for SDXPCHelperImageCache.CacheError()
{
  result = qword_100987E28;
  if (!qword_100987E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065B7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009746C0, &qword_1007F65A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10065B850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10065B8A0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10065B928()
{
  v1 = *(_s16VisionApproveiOSV18InitialLockContextVMa(0) + 44);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationApprovePrompt) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10065B998()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1008018C0;
  if (qword_100973BE8 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(result + 64) = &off_10097BB90;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(result + 104) = &off_10097BDE8;
  *(result + 136) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(result + 144) = &off_10097BDD0;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 184) = &off_10097BDB8;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 224) = &off_10097BE00;
  *(result + 256) = &type metadata for SDAuthentication.Operation.RecordApproveClientBundleID;
  *(result + 264) = &off_10097BC80;
  *(result + 296) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 304) = &off_10097BD70;
  *(result + 336) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 344) = &off_10097BD58;
  *(result + 376) = &type metadata for SDAuthentication.Operation.CheckACMTokenExists;
  *(result + 384) = &off_10097BC68;
  *(result + 416) = &type metadata for SDAuthentication.Operation.IncludeApproveMetadataInMessage;
  *(result + 424) = &off_10097BC50;
  *(result + 456) = &type metadata for SDAuthentication.Operation.SendApprovePromptMessage;
  *(result + 464) = &off_10097BC38;
  return result;
}

void sub_10065BB40()
{
  type metadata accessor for SDAuthenticationCommonOperationInput();
  if (v0 <= 0x3F)
  {
    sub_100349E3C();
    if (v1 <= 0x3F)
    {
      sub_1002A6C44(319, &qword_1009756D8, &type metadata for AuthenticationPolicies, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10065BC48()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6BEC();
      if (v2 <= 0x3F)
      {
        sub_1002A6C44(319, qword_1009771F0, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1002A6C44(319, &qword_100975790, &type metadata for Bool, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1002A6C94(319, &qword_100975798, &unk_1009757A0, off_1008C8D00);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10065BE28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10065BE84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10065BEF8(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *v2;
  sub_1002A9924(*v2, *(v2 + 8));
  return v3;
}

id sub_10065BF64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RequestUserApproval;
  *(v6 + 104) = &off_10097C228;
  *a3 = v6;
  if ([a1 hasBundleID] && objc_msgSend(a1, "hasAppName") && objc_msgSend(a1, "hasBiometricOnly"))
  {
    v7 = *(_s16VisionApproveiOSV17InitialKeyContextVMa(0) + 20);
    v8 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa(0);
    sub_10065E75C(a2 + v7, a3 + v8[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 bundleID];
    if (result)
    {
      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = (a3 + v8[6]);
      *v14 = v11;
      v14[1] = v13;
      result = [a1 appName];
      if (result)
      {
        v15 = result;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = (a3 + v8[7]);
        *v19 = v16;
        v19[1] = v18;
        LOBYTE(v15) = [a1 biometricOnly];

        result = sub_10065E7C4(a2, _s16VisionApproveiOSV17InitialKeyContextVMa);
        *(a3 + v8[8]) = v15;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(55);
    v20._object = 0x8000000100789AF0;
    v20._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v20);
    v21 = [a1 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    LODWORD(v22) = sub_100010F88(1, 0, 0xE000000000000000);
    v27 = v26;
    sub_1000115C8();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v27;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV17InitialKeyContextVMa);
  }

  return result;
}

uint64_t sub_10065C264@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007F8A70;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v8 + 56) = &type metadata for SDAuthentication.Operation.UseApprovalACMTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v8 + 64) = &off_10097C210;
  *(v8 + 96) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v8 + 104) = &off_10097BCF8;
  *a4 = v8;
  *(a4 + 1) = xmmword_1007F8A80;
  v9 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa(0);
  *(a4 + *(v9 + 28)) = 0;
  *(a4 + *(v9 + 32)) = 0;
  if (a2 >> 60 == 15)
  {
    v10 = sub_100010F88(30, 0xD00000000000001CLL, 0x8000000100789B30);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
    sub_10028BCC0(a1, a2);

    sub_10065E7C4(a3, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);

    return sub_10028BCC0(a4[1], a4[2]);
  }

  else
  {
    v15 = v9;
    sub_100294008(a1, a2);
    sub_10028BCC0(a1, a2);

    sub_10028BCC0(a4[1], a4[2]);
    a4[1] = a1;
    a4[2] = a2;
    v16 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa(0);
    sub_10065E75C(a3 + *(v16 + 20), a4 + *(v15 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10065E7C4(a3, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
  }
}

uint64_t sub_10065C490()
{
  v1 = *(v0 + 8);
  sub_1002A9924(v1, *(v0 + 16));
  return v1;
}

id sub_10065C52C()
{
  v1 = *(_s16VisionApproveiOSV20HandleRequestContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10065C59C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v6 + 64) = &off_10097C1F8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeStart;
  *(v6 + 104) = &off_10097C1E0;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.UseApproveTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v6 + 144) = &off_10097C1C8;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 184) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s16VisionApproveiOSV20HandleRequestContextVMa(0);
  v8 = a3 + v7[6];
  *v8 = xmmword_1007F8A80;
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 1;
  if ([a1 hasAksToken])
  {
    v9 = _s16VisionApproveiOSV18InitialLockContextVMa(0);
    sub_10065E75C(a2 + *(v9 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    v10 = (a2 + *(v9 + 40));
    v11 = *v10;
    v12 = v10[1];
    v13 = *v8;
    v14 = *(v8 + 1);
    *v8 = *v10;
    *(v8 + 1) = v12;
    sub_1002A9924(v11, v12);
    sub_10028BCC0(v13, v14);
    result = [a1 aksToken];
    if (result)
    {
      v16 = result;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      result = sub_10065E7C4(a2, _s16VisionApproveiOSV18InitialLockContextVMa);
      v20 = (a3 + v7[7]);
      *v20 = v17;
      v20[1] = v19;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = sub_100010F88(1, 0xD000000000000028, 0x8000000100789B50);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV18InitialLockContextVMa);

    return sub_10028BCC0(*v8, *(v8 + 1));
  }

  return result;
}

uint64_t sub_10065C86C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

id sub_10065C940(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10065C9C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenWithLTKSessionInMessage;
  *(v6 + 64) = &off_10097C198;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s16VisionApproveiOSV21HandleResponseContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 7;
  if ([a1 hasAksToken])
  {
    v8 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa(0);
    sub_10065E75C(a2 + *(v8 + 24), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_10065E7C4(a2, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
      v14 = (a3 + v7[6]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000029, 0x8000000100789B80);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
  }

  return result;
}

id sub_10065CC44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeEnd;
  *(v6 + 64) = &off_10097C168;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConsumeAKSTokenWithLTKSession;
  *(v6 + 104) = &off_10097C150;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 184) = &off_10097BB00;
  *a3 = v6;
  v7 = _s16VisionApproveiOSV18HandleTokenContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 2;
  if ([a1 hasAksToken])
  {
    v8 = _s16VisionApproveiOSV20HandleRequestContextVMa(0);
    sub_10065E75C(a2 + *(v8 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_10065E7C4(a2, _s16VisionApproveiOSV20HandleRequestContextVMa);
      v14 = (a3 + v7[6]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_10065CE88(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = (v3 + *(a1 + 24));
  v5 = *v4;
  a3(*v4, v4[1]);
  return v5;
}

uint64_t sub_10065CF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_10065C940(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

uint64_t sub_10065D008@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s16VisionApproveiOSV21HandleResponseContextVMa(0) + 20);
    v8 = _s16VisionApproveiOSV25HandleConfirmationContextVMa(0);
    sub_10065E75C(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_10065E7C4(a2, _s16VisionApproveiOSV21HandleResponseContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV21HandleResponseContextVMa);
  }

  return result;
}

void sub_10065D1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v185 = a2;
  v178 = a3;
  v149 = _s16VisionApproveiOSV25HandleConfirmationContextVMa(0);
  v4 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v153 = (&v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_100988038, &qword_10080EC28);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v158 = &v148 - v8;
  v150 = _s16VisionApproveiOSV18HandleTokenContextVMa(0);
  v9 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v157 = (&v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_100988040, &qword_10080EC30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v164 = &v148 - v13;
  v159 = _s16VisionApproveiOSV21HandleResponseContextVMa(0);
  v156 = *(v159 - 8);
  v14 = *(v156 + 64);
  v15 = __chkstk_darwin(v159);
  v151 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v152 = &v148 - v18;
  __chkstk_darwin(v17);
  v163 = (&v148 - v19);
  v20 = sub_10028088C(&qword_100988048, &qword_10080EC38);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v170 = &v148 - v22;
  v165 = _s16VisionApproveiOSV20HandleRequestContextVMa(0);
  v162 = *(v165 - 8);
  v23 = *(v162 + 64);
  v24 = __chkstk_darwin(v165);
  v154 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v155 = &v148 - v27;
  __chkstk_darwin(v26);
  v169 = (&v148 - v28);
  v29 = sub_10028088C(&qword_100988050, &qword_10080EC40);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v177 = &v148 - v31;
  v32 = _s16VisionApproveiOSV18InitialLockContextVMa(0);
  v175 = *(v32 - 8);
  v176 = v32;
  v33 = *(v175 + 64);
  v34 = __chkstk_darwin(v32);
  v167 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v168 = &v148 - v36;
  v171 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa(0);
  v166 = *(v171 - 8);
  v37 = *(v166 + 64);
  v38 = __chkstk_darwin(v171);
  v160 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v161 = &v148 - v41;
  __chkstk_darwin(v40);
  v174 = (&v148 - v42);
  v43 = sub_10028088C(&qword_100988058, &qword_10080EC48);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = &v148 - v45;
  v47 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa(0);
  v179 = *(v47 - 8);
  v180 = v47;
  v48 = *(v179 + 64);
  v49 = __chkstk_darwin(v47);
  v172 = &v148 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v173 = &v148 - v52;
  __chkstk_darwin(v51);
  v54 = (&v148 - v53);
  v55 = sub_10028088C(&qword_100988060, &unk_10080EC50);
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8);
  v58 = &v148 - v57;
  v59 = _s16VisionApproveiOSV17InitialKeyContextVMa(0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = __chkstk_darwin(v59);
  v64 = &v148 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v66 = &v148 - v65;
  sub_1002A9938(a1, v184);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_1009757A0, off_1008C8D00);
  if (swift_dynamicCast())
  {
    v67 = v182;
    sub_1002A9938(v185, v184);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v68 = swift_dynamicCast();
    v69 = *(v60 + 56);
    if (!v68)
    {
      v69(v58, 1, 1, v59);
      sub_100005508(v58, &qword_100988060, &unk_10080EC50);
      v84 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v86 = v85;
      sub_1000115C8();
      swift_allocError();
      *v87 = v84;
      *(v87 + 8) = v86;
      swift_willThrow();

      return;
    }

    v69(v58, 0, 1, v59);
    sub_10065E6F4(v58, v66, _s16VisionApproveiOSV17InitialKeyContextVMa);
    sub_10065E75C(v66, v64, _s16VisionApproveiOSV17InitialKeyContextVMa);
    v70 = v67;
    v71 = v181;
    sub_10065BF64(v70, v64, v54);
    if (v71)
    {
      v72 = _s16VisionApproveiOSV17InitialKeyContextVMa;
      v73 = v66;
LABEL_33:
      sub_10065E7C4(v73, v72);

      return;
    }

    v109 = v178;
    v178[3] = v180;
    v109[4] = &off_1008ED170;
    v110 = sub_10002F604(v109);
    sub_10065E6F4(v54, v110, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);

    v111 = _s16VisionApproveiOSV17InitialKeyContextVMa;
    v112 = v66;
    goto LABEL_43;
  }

  v74 = v185;
  sub_1002A9938(a1, v184);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v184);
    sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
    if (swift_dynamicCast())
    {
      v88 = v182;
      sub_1002A9938(v74, v184);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v90 = v176;
      v89 = v177;
      v91 = swift_dynamicCast();
      v92 = *(v175 + 56);
      if (v91)
      {
        v92(v89, 0, 1, v90);
        v93 = v168;
        sub_10065E6F4(v89, v168, _s16VisionApproveiOSV18InitialLockContextVMa);
        v94 = v167;
        sub_10065E75C(v93, v167, _s16VisionApproveiOSV18InitialLockContextVMa);
        v70 = v88;
        v95 = v169;
        v96 = v181;
        sub_10065C59C(v70, v94, v169);
        if (v96)
        {
          v97 = _s16VisionApproveiOSV18InitialLockContextVMa;
LABEL_32:
          v72 = v97;
          v73 = v93;
          goto LABEL_33;
        }

        v131 = v178;
        v178[3] = v165;
        v131[4] = &off_1008ED1A0;
        v132 = sub_10002F604(v131);
        sub_10065E6F4(v95, v132, _s16VisionApproveiOSV20HandleRequestContextVMa);

        v133 = _s16VisionApproveiOSV18InitialLockContextVMa;
        goto LABEL_42;
      }

      v92(v89, 1, 1, v90);
      sub_100005508(v89, &qword_100988050, &qword_10080EC40);
      v113 = "sult, message may be replayed";
      v114 = 0xD000000000000047;
    }

    else
    {
      sub_1002A9938(a1, v184);
      sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
      if (swift_dynamicCast())
      {
        v88 = v182;
        sub_1002A9938(v74, v184);
        sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
        v102 = v170;
        v103 = v171;
        v104 = swift_dynamicCast();
        v105 = *(v166 + 56);
        if (v104)
        {
          v105(v102, 0, 1, v103);
          v93 = v161;
          sub_10065E6F4(v102, v161, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
          v106 = v160;
          sub_10065E75C(v93, v160, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
          v70 = v88;
          v107 = v163;
          v108 = v181;
          sub_10065C9C0(v70, v106, v163);
          if (v108)
          {
            v97 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa;
            goto LABEL_32;
          }

          v138 = v178;
          v178[3] = v159;
          v138[4] = &off_1008ED1B8;
          v139 = sub_10002F604(v138);
          sub_10065E6F4(v107, v139, _s16VisionApproveiOSV21HandleResponseContextVMa);

          v133 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa;
LABEL_42:
          v111 = v133;
          v112 = v93;
          goto LABEL_43;
        }

        v105(v102, 1, 1, v103);
        sub_100005508(v102, &qword_100988048, &qword_10080EC38);
        v113 = ", message may be replayed";
        v114 = 0xD00000000000004DLL;
      }

      else
      {
        sub_1002A9938(a1, v184);
        sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
        if (swift_dynamicCast())
        {
          v88 = v182;
          sub_1002A9938(v74, v184);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v115 = v164;
          v116 = v165;
          v117 = swift_dynamicCast();
          v118 = *(v162 + 56);
          if (v117)
          {
            v118(v115, 0, 1, v116);
            v93 = v155;
            sub_10065E6F4(v115, v155, _s16VisionApproveiOSV20HandleRequestContextVMa);
            v119 = v154;
            sub_10065E75C(v93, v154, _s16VisionApproveiOSV20HandleRequestContextVMa);
            v70 = v88;
            v120 = v157;
            v121 = v181;
            sub_10065CC44(v70, v119, v157);
            if (v121)
            {
              v97 = _s16VisionApproveiOSV20HandleRequestContextVMa;
              goto LABEL_32;
            }

            v144 = v178;
            v178[3] = v150;
            v144[4] = &off_1008ED1D0;
            v145 = sub_10002F604(v144);
            sub_10065E6F4(v120, v145, _s16VisionApproveiOSV18HandleTokenContextVMa);

            v133 = _s16VisionApproveiOSV20HandleRequestContextVMa;
            goto LABEL_42;
          }

          v118(v115, 1, 1, v116);
          sub_100005508(v115, &qword_100988040, &qword_10080EC30);
          v113 = "t, message may be replayed";
          v114 = 0xD000000000000049;
        }

        else
        {
          sub_1002A9938(a1, v184);
          sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
          if (!swift_dynamicCast())
          {
            v134 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
            v136 = v135;
            sub_1000115C8();
            swift_allocError();
            *v137 = v134;
            *(v137 + 8) = v136;
            swift_willThrow();
            return;
          }

          v88 = v182;
          sub_1002A9938(v74, v184);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v124 = v158;
          v125 = v159;
          v126 = swift_dynamicCast();
          v127 = *(v156 + 56);
          if (v126)
          {
            v127(v124, 0, 1, v125);
            v93 = v152;
            sub_10065E6F4(v124, v152, _s16VisionApproveiOSV21HandleResponseContextVMa);
            v128 = v151;
            sub_10065E75C(v93, v151, _s16VisionApproveiOSV21HandleResponseContextVMa);
            v70 = v88;
            v129 = v153;
            v130 = v181;
            sub_10065D008(v70, v128, v153);
            if (v130)
            {
              v97 = _s16VisionApproveiOSV21HandleResponseContextVMa;
              goto LABEL_32;
            }

            v146 = v178;
            v178[3] = v149;
            v146[4] = &off_1008ED1E8;
            v147 = sub_10002F604(v146);
            sub_10065E6F4(v129, v147, _s16VisionApproveiOSV25HandleConfirmationContextVMa);

            v133 = _s16VisionApproveiOSV21HandleResponseContextVMa;
            goto LABEL_42;
          }

          v127(v124, 1, 1, v125);
          sub_100005508(v124, &qword_100988038, &qword_10080EC28);
          v113 = "Invalid message object received";
          v114 = 0xD00000000000004ALL;
        }
      }
    }

    v140 = sub_100010F88(10, v114, v113 | 0x8000000000000000);
    v142 = v141;
    sub_1000115C8();
    swift_allocError();
    *v143 = v140;
    *(v143 + 8) = v142;
    swift_willThrow();

    return;
  }

  v76 = v182;
  v75 = v183;
  sub_1002A9938(v74, v184);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v77 = v180;
  v78 = swift_dynamicCast();
  v79 = *(v179 + 56);
  if (!v78)
  {
    v79(v46, 1, 1, v77);
    sub_100005508(v46, &qword_100988058, &qword_10080EC48);
    v98 = sub_100010F88(10, 0xD00000000000004FLL, 0x8000000100789A50);
    v100 = v99;
    sub_1000115C8();
    swift_allocError();
    *v101 = v98;
    *(v101 + 8) = v100;
    swift_willThrow();
    goto LABEL_15;
  }

  v79(v46, 0, 1, v77);
  v80 = v173;
  sub_10065E6F4(v46, v173, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
  v81 = v172;
  sub_10065E75C(v80, v172, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
  sub_1002A9924(v76, v75);

  v82 = v174;
  v83 = v181;
  sub_10065C264(v76, v75, v81, v174);
  if (v83)
  {
    sub_10065E7C4(v80, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
LABEL_15:
    sub_10028BCC0(v76, v75);

    return;
  }

  v122 = v178;
  v178[3] = v171;
  v122[4] = &off_1008ED188;
  v123 = sub_10002F604(v122);
  sub_10065E6F4(v82, v123, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
  sub_10028BCC0(v76, v75);

  v111 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa;
  v112 = v80;
LABEL_43:
  sub_10065E7C4(v112, v111);
}

uint64_t sub_10065E6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065E75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065E7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10065E84C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10065E90C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10065EA2C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10065EBC4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988420);
  v1 = sub_10000C4AC(v0, qword_100988420);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10065EC8C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_100664BFC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100988438 = result;
  return result;
}

uint64_t sub_10065EED4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10065EFD8, v6, 0);
}

uint64_t sub_10065EFD8()
{
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (!v4)
    {
      v9 = objc_allocWithZone(LSApplicationRecord);
      v10 = sub_10066F3F8(0xD000000000000019, 0x800000010079A850, 1);
      v17 = v0[5];
      v18 = v0[3];
      v19 = *(v18 + 16);
      v45 = v18;
      *(v18 + 16) = v10;

      v20 = SFAirDropReceive.AskRequest.items.getter();
      v21 = 0;
      v42 = v20 + 56;
      v48 = v20;
      v22 = -1;
      v23 = -1 << *(v20 + 32);
      if (-v23 < 64)
      {
        v22 = ~(-1 << -v23);
      }

      v24 = v22 & *(v20 + 56);
      v43 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos;
      v44 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos;
      v41 = (63 - v23) >> 6;
      v46 = (v17 + 8);
      v47 = v17;
      while (v24)
      {
LABEL_19:
        v33 = v0[6];
        v32 = v0[7];
        v34 = v0[4];
        (*(v47 + 16))(v32, *(v48 + 48) + *(v47 + 72) * (__clz(__rbit64(v24)) | (v21 << 6)), v34);
        (*(v47 + 32))(v33, v32, v34);
        SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();

        v35 = String._bridgeToObjectiveC()();

        v36 = SFIsPhotosAssetBundle();

        if (v36)
        {
          v37 = v0[6];

          SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
          if (!v38)
          {
            v39 = v0[6];
            v40 = v0[4];

            (*v46)(v39, v40);
            goto LABEL_3;
          }
        }

        v24 &= v24 - 1;
        v25 = v0[6];
        v26 = v0[4];
        v27 = String._bridgeToObjectiveC()();
        v28 = SFIsImage();

        v29 = String._bridgeToObjectiveC()();

        v30 = SFIsVideo();

        (*v46)(v25, v26);
        *(v45 + v44) = (*(v45 + v44) | v28) & 1;
        *(v45 + v43) = (*(v45 + v43) | v30) & 1;
        if (((v28 | v30 | v36) & 1) == 0)
        {

          goto LABEL_3;
        }
      }

      while (1)
      {
        v31 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v31 >= v41)
        {

          v2 = 1;
          goto LABEL_4;
        }

        v24 = *(v42 + 8 * v31);
        ++v21;
        if (v24)
        {
          v21 = v31;
          goto LABEL_19;
        }
      }

      __break(1u);
      swift_once();
      v11 = type metadata accessor for Logger();
      sub_10000C4AC(v11, qword_100988420);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to get Photos application: %@", v14, 0xCu);
        sub_100005508(v15, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }

LABEL_3:
    v2 = 0;
  }

LABEL_4:
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7(v2);
}

void sub_10065F468(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  *&v56 = &v46 - v11;
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos) == 1 && *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos) == 1)
  {
    v48 = v4;
    v13 = SFAirDropReceive.AskRequest.items.getter();
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v12 = 0;
    v3 = v13 + 56;
    v14 = *(v13 + 56);
    v55 = v13;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v4 = v16 & v14;
    v17 = (v15 + 63) >> 6;
    v53 = v6 + 16;
    v52 = v6 + 32;
    v51 = (v6 + 8);
    v54 = v6;
    while (v4)
    {
LABEL_11:
      v19 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v20 = v56;
      (*(v6 + 16))(v56, *(v55 + 48) + *(v6 + 72) * (v19 | (v12 << 6)), v5);
      (*(v6 + 32))(v10, v20, v5);
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();

      v21 = String._bridgeToObjectiveC()();

      v22 = SFIsPhotosAssetBundle();

      if (v22 && (, SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter(), !v23))
      {
        (*v51)(v10, v5);
        v6 = v54;
      }

      else
      {
        v24 = String._bridgeToObjectiveC()();
        v25 = SFIsImage();

        if (v25)
        {
          (*v51)(v10, v5);

          v28 = __OFADD__(v47, 1);
          v49 = ++v47;
          v6 = v54;
          if (v28)
          {
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          v26 = String._bridgeToObjectiveC()();

          v27 = SFIsVideo();

          (*v51)(v10, v5);
          v6 = v54;
          if (v27)
          {
            v28 = __OFADD__(v50++, 1);
            if (v28)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }
        }
      }
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v18 >= v17)
      {
        break;
      }

      v4 = *(v3 + 8 * v18);
      ++v12;
      if (v4)
      {
        v12 = v18;
        goto LABEL_11;
      }
    }

    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    v56 = xmmword_1007F8A70;
    *(inited + 16) = xmmword_1007F8A70;
    *(inited + 32) = 0x4F544F4850;
    v37 = v49;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v37;
    *(inited + 56) = 0x4F45444956;
    *(inited + 64) = 0xE500000000000000;
    v38 = v50;
    *(inited + 72) = v50;
    v39 = v48;
    sub_1003D8D18(inited, v48 & 1);
    swift_setDeallocating();
    sub_10028088C(&qword_100981D40, &unk_1007FA6C0);
    swift_arrayDestroy();
    v40 = String._bridgeToObjectiveC()();
    v41 = SFLocalizedStringForKey();

    v42 = v38 <= 1 || v37 <= 1;
    if (!v42 || (v39 & 1) != 0)
    {
      if (!v41)
      {
        goto LABEL_50;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v44 = swift_allocObject();
      *(v44 + 16) = v56;
      *(v44 + 56) = &type metadata for Int;
      *(v44 + 64) = &protocol witness table for Int;
      *(v44 + 32) = v37;
      *(v44 + 96) = &type metadata for Int;
      *(v44 + 104) = &protocol witness table for Int;
      *(v44 + 72) = v38;
    }

    else if (v37 < 2)
    {
      if (v38 < 2)
      {
        if (!v41)
        {
          goto LABEL_53;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        static String.localizedStringWithFormat(_:_:)();
        goto LABEL_29;
      }

      if (!v41)
      {
        goto LABEL_52;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1007F5670;
      *(v45 + 56) = &type metadata for Int;
      *(v45 + 64) = &protocol witness table for Int;
      *(v45 + 32) = v38;
    }

    else
    {
      if (!v41)
      {
        goto LABEL_51;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1007F5670;
      *(v43 + 56) = &type metadata for Int;
      *(v43 + 64) = &protocol witness table for Int;
      *(v43 + 32) = v37;
    }

LABEL_28:
    static String.localizedStringWithFormat(_:_:)();

LABEL_29:

    return;
  }

LABEL_22:
  v29 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (*(v3 + v12))
  {
    v30 = 0x4F544F4850;
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos) != 1)
    {
      return;
    }

    v30 = 0x4F45444956;
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v31 = swift_initStackObject();
  v56 = xmmword_1007F5670;
  *(v31 + 16) = xmmword_1007F5670;
  *(v31 + 32) = v30;
  v32 = v31 + 32;
  *(v31 + 40) = 0xE500000000000000;
  *(v31 + 48) = v29;
  sub_1003D8D18(v31, v4 & 1);
  swift_setDeallocating();
  sub_100005508(v32, &qword_100981D40, &unk_1007FA6C0);
  v33 = String._bridgeToObjectiveC()();

  v34 = SFLocalizedStringForKey();

  if (v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v35 = swift_allocObject();
    *(v35 + 16) = v56;
    *(v35 + 56) = &type metadata for Int;
    *(v35 + 64) = &protocol witness table for Int;
    *(v35 + 32) = v29;
    goto LABEL_28;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_10065FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v9 = type metadata accessor for URL();
  v6[14] = v9;
  v10 = *(v9 - 8);
  v6[15] = v10;
  v11 = *(v10 + 64) + 15;
  v6[16] = swift_task_alloc();
  v12 = swift_allocObject();
  v6[17] = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_1009735E0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v6[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_10065FD8C, v14, 0);
}

uint64_t sub_10065FD8C()
{
  v0[19] = [objc_opt_self() sharedPhotoLibrary];
  if (qword_100973BF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SDAirDropDownloadDestinationProvideriOS();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_1008D8778;
  v0[2] = v2;
  v3 = *sub_10002CDC0(v0 + 2, v1);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_10065FEB0;
  v5 = v0[16];
  v6 = v0[11];

  return sub_10027D7A0(v5, v6);
}

uint64_t sub_10065FEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[18];
  if (v0)
  {
    v6 = v2[17];

    v7 = sub_100660298;
  }

  else
  {
    v7 = sub_10065FFE8;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_10065FFE8()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[12];
  v5 = v0[13];
  v7 = sub_100664BFC(&qword_100977C00, type metadata accessor for AirDropActor);
  v8 = swift_task_alloc();
  v0[22] = v8;
  v8[2] = v6;
  v8[3] = v2;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = sub_10066426C;
  v8[7] = v3;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[23] = v10;
  v11 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  *v10 = v0;
  v10[1] = sub_100660160;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, v1, v7, 0xD000000000000027, 0x800000010078B120, sub_1006642A4, v8, v11);
}

uint64_t sub_100660160()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = sub_1006603F4;
  }

  else
  {
    v6 = v2[22];
    v7 = v2[17];
    v8 = v2[18];

    v5 = sub_100660328;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100660298()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];
  swift_willThrow();

  sub_10000C60C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100660328()
{
  v12 = v0;
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v11 = 0x3FF0000000000000;
  v5(&v11);

  *v7 = v8;
  (*(v3 + 8))(v2, v4);
  sub_10000C60C(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006603F4()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];

  (*(v5 + 8))(v3, v4);
  v6 = v0[24];
  v7 = v0[19];
  v8 = v0[16];
  swift_willThrow();

  sub_10000C60C(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006604B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a4;
  v37 = a7;
  v34 = a6;
  v41 = a3;
  v38 = a1;
  v40 = sub_10028088C(&qword_100988628, &unk_10080EFF0);
  v9 = *(v40 - 8);
  v35 = *(v9 + 64);
  __chkstk_darwin(v40);
  v39 = &v34 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BF0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100988420);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a2 + 16);

    _os_log_impl(&_mh_execute_header, v16, v17, "PHPhotoLibrary preparing import of %ld items", v18, 0xCu);
  }

  else
  {
  }

  v19 = swift_allocObject();
  *(v19 + 16) = _swiftEmptyArrayStorage;
  (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v11);
  v20 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 2) = v19;
  *(v22 + 3) = v23;
  *(v22 + 4) = a2;
  (*(v12 + 32))(&v22[v20], v14, v11);
  v24 = &v22[v21];
  v25 = v37;
  *v24 = v34;
  *(v24 + 1) = v25;
  v46 = sub_1006642B4;
  v47 = v22;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100011678;
  v45 = &unk_1008ED340;
  v26 = _Block_copy(&aBlock);

  v27 = v39;
  v28 = v40;
  (*(v9 + 16))(v39, v38, v40);
  v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v30 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  (*(v9 + 32))(v31 + v29, v27, v28);
  *(v31 + v30) = v19;
  v46 = sub_10066434C;
  v47 = v31;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100660DA8;
  v45 = &unk_1008ED390;
  v32 = _Block_copy(&aBlock);

  [v41 performChanges:v26 completionHandler:v32];
  _Block_release(v32);
  _Block_release(v26);
}

uint64_t sub_100660958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double), uint64_t a6)
{
  v7 = sub_1006615F0(a3, a4, a5, a6);
  swift_beginAccess();
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
}

uint64_t sub_1006609BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100988420);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(a3 + 16);

      _os_log_impl(&_mh_execute_header, v8, v9, "PHPhotoLibrary performChanges reported success for %ld items", v10, 0xCu);
    }

    else
    {
    }

    swift_beginAccess();
    v27 = *(a5 + 16);

    sub_10028088C(&qword_100988628, &unk_10080EFF0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100988420);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v15 = 138412546;
      if (a2)
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      *(v15 + 12) = 2080;
      type metadata accessor for URL();
      v21 = Array.description.getter();
      v23 = sub_10000C4E4(v21, v22, v28);

      *(v15 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "PHPhotoLibrary performChanges failed with error %@ for items %s", v15, 0x16u);
      sub_100005508(v16, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v17);
    }

    v24 = a2;
    if (!a2)
    {
      v25 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100664BFC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      v24 = swift_allocError();
      (*(*(v25 - 8) + 104))(v26, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v25);
    }

    v28[0] = v24;
    swift_errorRetain();
    sub_10028088C(&qword_100988628, &unk_10080EFF0);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_100660DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100660E20(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = v3;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100660EF8(uint64_t a1, int a2, uint64_t a3)
{
  v57 = a2;
  v62 = a1;
  v4 = type metadata accessor for SFAirDropReceive.Transfer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v61 = v7;
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v51 - v11;
  v63 = type metadata accessor for UUID();
  v13 = *(v63 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v63);
  v59 = v16;
  v60 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v19 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v55 = *(v19 - 8);
  v56 = v19;
  v20 = *(v55 + 64);
  __chkstk_darwin(v19);
  v52 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v54 = &v51 - v24;
  v25 = sub_10028088C(&unk_1009892C0, &qword_10080F030);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = (&v51 - v27);
  sub_10000FF90(a3, &v51 - v27, &unk_1009892C0, &qword_10080F030);
  v29 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_100005508(v28, &unk_1009892C0, &qword_10080F030);
LABEL_15:
    v43 = v18;
    v58 = v18;
    v44 = v62;
    SFAirDropReceive.Transfer.receiveID.getter();
    v45 = type metadata accessor for TaskPriority();
    (*(*(v45 - 8) + 56))(v12, 1, 1, v45);
    (*(v5 + 16))(v8, v44, v4);
    v46 = v60;
    v47 = v63;
    (*(v13 + 16))(v60, v43, v63);
    v48 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v49 = (v61 + *(v13 + 80) + v48) & ~*(v13 + 80);
    v50 = swift_allocObject();
    (*(v5 + 32))(v50 + v48, v8, v4);
    (*(v13 + 32))(v50 + v49, v46, v47);
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v12, &qword_100976160, &qword_1007F8770);
    return (*(v13 + 8))(v58, v47);
  }

  if ((*(v30 + 88))(v28, v29) != enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
    (*(v30 + 8))(v28, v29);
    goto LABEL_15;
  }

  (*(v30 + 96))(v28, v29);
  if (*v28 == 0xD000000000000034 && 0x800000010078AA10 == v28[1])
  {
    v31 = v28[1];
  }

  else
  {
    v32 = v28[1];
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((v57 & 1) == 0)
  {
    goto LABEL_15;
  }

  v34 = v53;
  if (qword_100973BF0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000C4AC(v35, qword_100988420);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Photos transfer succeeded with moveToApp selected; not cleaning up until Share Sheet is done", v38, 2u);
  }

  v39 = v52;
  SFAirDropReceive.Transfer.id.getter();
  v40 = v54;
  SFAirDrop.TransferIdentifier.id.getter();
  (*(v55 + 8))(v39, v56);
  (*(v13 + 56))(v40, 0, 1, v63);
  v41 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID;
  swift_beginAccess();
  sub_1005E884C(v40, v34 + v41);
  return swift_endAccess();
}

char *sub_1006615F0(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4)
{
  v239 = a4;
  v238 = a3;
  v230 = a2;
  v257 = a1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v244 = &v216[-v6];
  v7 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v227 = &v216[-v9];
  v252 = type metadata accessor for URLResourceValues();
  v273 = *(v252 - 8);
  clients = v273[1]._clients;
  __chkstk_darwin(v252);
  v264 = &v216[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v251 = sub_10028088C(&qword_100975180, &qword_100805430);
  v12 = *(*(v251 - 8) + 64);
  __chkstk_darwin(v251);
  v258 = &v216[-v13];
  v241 = type metadata accessor for UTType();
  v14 = *(v241 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v241);
  v253 = &v216[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v242 = &v216[-v18];
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v221 = &v216[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  urlString = &v216[-v25];
  v27 = __chkstk_darwin(v24);
  v226 = &v216[-v28];
  v29 = __chkstk_darwin(v27);
  v225 = &v216[-v30];
  v31 = __chkstk_darwin(v29);
  v222 = &v216[-v32];
  v33 = __chkstk_darwin(v31);
  v233 = &v216[-v34];
  v35 = __chkstk_darwin(v33);
  v229 = &v216[-v36];
  v37 = __chkstk_darwin(v35);
  v228 = &v216[-v38];
  v39 = __chkstk_darwin(v37);
  v223 = &v216[-v40];
  v41 = __chkstk_darwin(v39);
  v235 = &v216[-v42];
  v43 = __chkstk_darwin(v41);
  v234 = &v216[-v44];
  v45 = __chkstk_darwin(v43);
  v232 = &v216[-v46];
  __chkstk_darwin(v45);
  v48 = &v216[-v47];
  v269 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v49 = *(v269 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v269);
  v255 = &v216[-v51];
  v52 = sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v268 = &v216[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v54);
  v267 = &v216[-v56];
  v57 = type metadata accessor for UUID();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  v61 = &v216[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UUID.init()();
  v236 = UUID.uuidString.getter();
  v246 = v62;
  (*(v58 + 8))(v61, v57);
  v63 = 0;
  v64 = 0;
  baseURL = *(v257 + 16);
  v271 = (v20 + 16);
  v266 = (v49 + 56);
  v265 = (v49 + 48);
  v66 = v264;
  v262 = (v20 + 32);
  v261 = NSURLContentTypeKey;
  p_urlString = &v273->_urlString;
  v249 = "com.apple.frontboard.visibility";
  v263 = (v20 + 8);
  v240 = (v14 + 32);
  v256 = v20;
  v224 = (v20 + 48);
  v67 = (&baseURL->super.isa + 1);
  v237 = (v14 + 8);
  v68 = v19;
  *(&v69 + 1) = 2;
  *&v260._clients = xmmword_1007F5670;
  *&v69 = 136315138;
  v231 = v69;
  *&v69 = 136315394;
  v254 = v69;
  v248 = _swiftEmptyArrayStorage;
  v245 = _swiftEmptyArrayStorage;
  v247 = _swiftEmptyArrayStorage;
  v260._baseURL = baseURL;
  v260._urlString = urlString;
  v270 = v48;
  while (2)
  {
    v71 = v268;
    v70 = v269;
    while (1)
    {
      if (v63 == baseURL)
      {
        v73 = 1;
        v273 = baseURL;
      }

      else
      {
        if (v63 >= baseURL)
        {
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v74 = (&v63->super.isa + 1);
        if (__OFADD__(v63, 1))
        {
          goto LABEL_99;
        }

        v75 = v256;
        v76 = v257 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v63;
        v77 = *(v70 + 48);
        v78 = v255;
        *v255 = v63;
        (*(v75 + 16))(v78 + v77, v76, v68);
        sub_10002C4E4(v78, v71, &qword_10097A3B0, &unk_1007FD5B0);
        v73 = 0;
        v273 = v74;
      }

      (*v266)(v71, v73, 1, v70);
      v79 = v267;
      sub_10002C4E4(v71, v267, &qword_10097A3B8, &qword_1007FE9C0);
      if ((*v265)(v79, 1, v70) == 1)
      {

        v211 = type metadata accessor for TaskPriority();
        v212 = v244;
        (*(*(v211 - 8) + 56))(v244, 1, 1, v211);
        v213 = swift_allocObject();
        v214 = v248;
        v213[2] = v243;
        v213[3] = v214;
        v213[4] = v247;
        v215 = swift_allocObject();
        *(v215 + 16) = &unk_10080F018;
        *(v215 + 24) = v213;

        static Task<>.noThrow(priority:operation:)();

        sub_100005508(v212, &qword_100976160, &qword_1007F8770);
        return v245;
      }

      v80 = *v79;
      v81 = *v262;
      (*v262)(v48, &v79[*(v70 + 48)], v68);
      sub_10028088C(&qword_100976C30, &qword_1007F8818);
      inited = swift_initStackObject();
      *(inited + 16) = *&v260._clients;
      v83 = v261;
      *(inited + 32) = v261;
      v84 = v83;
      sub_1002F13BC(inited);
      swift_setDeallocating();
      sub_10029A730(inited + 32);
      URL.resourceValues(forKeys:)();
      if (!v64)
      {
        break;
      }

      v272 = 0;
      v48 = v270;
      if (qword_100973BF0 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_10000C4AC(v85, qword_100988420);
      (*v271)(urlString, v48, v68);
      swift_errorRetain();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v260.super.isa = swift_slowAlloc();
        isa = v260.super.isa;
        *v88 = v254;
        sub_100664BFC(&qword_100975160, &type metadata accessor for URL);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        v259 = *v263;
        v259(v260._urlString, v68);
        v93 = sub_10000C4E4(v90, v92, &isa);
        v48 = v270;

        *(v88 + 4) = v93;
        *(v88 + 12) = 2112;
        swift_errorRetain();
        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v88 + 14) = v94;
        *v89 = v94;
        _os_log_impl(&_mh_execute_header, v86, v87, "Could not get UTType for URL %s: %@", v88, 0x16u);
        sub_100005508(v89, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v260.super.isa);

        v259(v48, v68);
        urlString = v260._urlString;
      }

      else
      {

        v72 = *v263;
        (*v263)(urlString, v68);
        v72(v48, v68);
      }

      v66 = v264;
      v71 = v268;
      v70 = v269;
      baseURL = v260._baseURL;
      v64 = v272;
      v63 = v273;
    }

    URLResourceValues.contentType.getter();
    (*p_urlString)(v66, v252);
    Optional.tryUnwrap(_:file:line:)();
    sub_100005508(v258, &qword_100975180, &qword_100805430);
    v95 = v242;
    (*v240)(v242, v253, v241);
    UTType.identifier.getter();
    v96 = String._bridgeToObjectiveC()();

    v97 = SFIsPhotosAssetBundle();

    if (v97)
    {
      v98 = objc_allocWithZone(PFAssetBundle);
      URL._bridgeToObjectiveC()(v99);
      v101 = v100;
      v102 = [v98 initWithAssetBundleAtURL:v100];

      if (v102)
      {
        v272 = [objc_opt_self() creationRequestForAssetFromAssetBundle:v102];
        sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
        v103 = static NSUserDefaults.airdrop.getter();
        v104 = SFAirDropUserDefaults.moveToAppEnabled.getter();

        if ((v104 & 1) == 0)
        {

          goto LABEL_63;
        }

        URL._bridgeToObjectiveC()(&v260);
        v106 = v105;
        isa = 0;
        v259 = v102;
        v107 = [v102 writeDowngradedRepresentationToDirectory:v105 error:&isa];

        v108 = isa;
        if (v107)
        {
          v109 = v234;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v108;

          (*v271)(v235, v109, v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v248 = sub_10028E2D4(0, v248[2] + 1, 1, v248);
          }

          v112 = v248[2];
          v111 = v248[3];
          if (v112 >= v111 >> 1)
          {
            v248 = sub_10028E2D4(v111 > 1, v112 + 1, 1, v248);
          }

          v113 = v256;
          (*(v256 + 8))(v234, v68);
          v114 = v248;
          v248[2] = v112 + 1;
          v81(&v114[((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v112], v235, v68);
          v64 = 0;
LABEL_63:
          v135 = v272;
          if (v272)
          {
LABEL_64:
            v167 = String._bridgeToObjectiveC()();
            [(objc_class *)v135 setImportSessionID:v167];

            [(objc_class *)v135 setImportedBy:13];
            v168 = [(objc_class *)v135 placeholderForCreatedAsset];
            v272 = v135;
            if (v168)
            {
              v169 = v168;
              v170 = [v168 localIdentifier];

              v171 = v170;
              if (!v170)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v171 = String._bridgeToObjectiveC()();
              }

              v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v174 = v173;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v260.super.isa = v64;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v247 = sub_10028E1C8(0, *(v247 + 2) + 1, 1, v247);
              }

              v177 = *(v247 + 2);
              v176 = *(v247 + 3);
              if (v177 >= v176 >> 1)
              {
                v247 = sub_10028E1C8((v176 > 1), v177 + 1, 1, v247);
              }

              v178 = v247;
              *(v247 + 2) = v177 + 1;
              v179 = &v178[16 * v177];
              *(v179 + 4) = v172;
              *(v179 + 5) = v174;
              if (*(v245 + 2))
              {

                v95 = v242;
                urlString = v260._urlString;
                goto LABEL_91;
              }

              v180 = sub_1001EB3F4(v171);

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v181 = v227;
              URL.init(string:)();

              v182 = (*v224)(v181, 1, v68);
              urlString = v260._urlString;
              v64 = v260.super.isa;
              if (v182 == 1)
              {
                sub_100005508(v181, &unk_100974E00, &qword_1007F8940);
                v95 = v242;
              }

              else
              {
                v205 = v225;
                v81(v225, v181, v68);
                (*v271)(v226, v205, v68);
                v206 = swift_isUniquelyReferenced_nonNull_native();
                v95 = v242;
                if ((v206 & 1) == 0)
                {
                  v245 = sub_10028E2D4(0, *(v245 + 2) + 1, 1, v245);
                }

                v208 = *(v245 + 2);
                v207 = *(v245 + 3);
                if (v208 >= v207 >> 1)
                {
                  v245 = sub_10028E2D4(v207 > 1, v208 + 1, 1, v245);
                }

                v209 = v256;
                (*(v256 + 8))(v225, v68);
                v210 = v245;
                *(v245 + 2) = v208 + 1;
                v81(&v210[((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v208], v226, v68);
LABEL_91:
                v64 = v260.super.isa;
              }
            }

LABEL_95:
            if (!__OFADD__(v80, 1))
            {
              v238((v80 + 1) / v67);

              (*v237)(v95, v241);
              v48 = v270;
              (*v263)(v270, v68);
              baseURL = v260._baseURL;
              v63 = v273;
              continue;
            }

LABEL_100:
            __break(1u);
          }
        }

        else
        {
          v190 = isa;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v135 = v272;
          if (qword_100973BF0 != -1)
          {
            swift_once();
          }

          v260.super.isa = 0;
          v191 = type metadata accessor for Logger();
          sub_10000C4AC(v191, qword_100988420);
          v192 = v221;
          (*v271)(v221, v270, v68);
          swift_errorRetain();
          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            v219 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            isa = v220;
            *v195 = v254;
            sub_100664BFC(&qword_100975160, &type metadata accessor for URL);
            v218 = v193;
            v196 = dispatch thunk of CustomStringConvertible.description.getter();
            v217 = v194;
            v197 = urlString;
            v198 = v135;
            v200 = v199;
            (*v263)(v192, v68);
            v201 = sub_10000C4E4(v196, v200, &isa);
            v135 = v198;
            urlString = v197;

            *(v195 + 4) = v201;
            *(v195 + 12) = 2112;
            swift_errorRetain();
            v202 = _swift_stdlib_bridgeErrorToNSError();
            *(v195 + 14) = v202;
            v203 = v219;
            *v219 = v202;
            v204 = v218;
            _os_log_impl(&_mh_execute_header, v218, v217, "Failed to downgrade asset bundle %s with error: %@", v195, 0x16u);
            sub_100005508(v203, &qword_100975400, &qword_1007F65D0);

            sub_10000C60C(v220);

            v66 = v264;
          }

          else
          {

            (*v263)(v192, v68);
          }

          v95 = v242;
          v64 = v260.super.isa;
          if (v135)
          {
            goto LABEL_64;
          }
        }

LABEL_94:
        v272 = 0;
        goto LABEL_95;
      }

      if (qword_100973BF0 != -1)
      {
        swift_once();
      }

      v145 = type metadata accessor for Logger();
      sub_10000C4AC(v145, qword_100988420);
      v146 = v232;
      (*v271)(v232, v270, v68);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = v66;
        v151 = swift_slowAlloc();
        isa = v151;
        *v149 = v231;
        sub_100664BFC(&qword_100975160, &type metadata accessor for URL);
        v152 = dispatch thunk of CustomStringConvertible.description.getter();
        v153 = v146;
        v155 = v154;
        (*v263)(v153, v68);
        v156 = sub_10000C4E4(v152, v155, &isa);

        *(v149 + 4) = v156;
        v157 = v148;
        v158 = v147;
        v159 = "PFAssetBundle initWithAssetBundleAtURL(%s) returned nil";
        goto LABEL_79;
      }

LABEL_80:

      (*v263)(v146, v68);
LABEL_81:
      v272 = 0;
      v95 = v242;
      v64 = 0;
      goto LABEL_95;
    }

    break;
  }

  UTType.identifier.getter();
  v115 = String._bridgeToObjectiveC()();

  v116 = SFIsLivePhotos();

  if (!v116)
  {
    UTType.identifier.getter();
    v131 = String._bridgeToObjectiveC()();

    v132 = SFIsVideo();

    if ((v132 & 1) != 0 || (UTType.identifier.getter(), v133 = String._bridgeToObjectiveC()(), , v134 = SFIsImage(), v133, v134))
    {
      v135 = [objc_opt_self() creationRequestForAsset];
      v136 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
      if (v135)
      {
        if (v132)
        {
          v137 = 2;
        }

        else
        {
          v137 = 1;
        }

        URL._bridgeToObjectiveC()(1);
        v139 = v138;
        [(objc_class *)v135 addResourceWithType:v137 fileURL:v138 options:v136];
      }

      sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
      v140 = static NSUserDefaults.airdrop.getter();
      v141 = SFAirDropUserDefaults.moveToAppEnabled.getter();

      if (v141)
      {
        (*v271)(v233, v270, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = sub_10028E2D4(0, v248[2] + 1, 1, v248);
        }

        v143 = v248[2];
        v142 = v248[3];
        if (v143 >= v142 >> 1)
        {
          v248 = sub_10028E2D4(v142 > 1, v143 + 1, 1, v248);
        }

        v144 = v248;
        v248[2] = v143 + 1;
        v81(&v144[((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v143], v233, v68);
      }

      else
      {
      }

      v95 = v242;
      if (v135)
      {
        goto LABEL_64;
      }

      goto LABEL_94;
    }

    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v183 = type metadata accessor for Logger();
    sub_10000C4AC(v183, qword_100988420);
    v146 = v222;
    (*v271)(v222, v270, v68);
    v147 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v147, v184))
    {
      goto LABEL_80;
    }

    v149 = swift_slowAlloc();
    v150 = v66;
    v151 = swift_slowAlloc();
    isa = v151;
    *v149 = v231;
    sub_100664BFC(&qword_100975160, &type metadata accessor for URL);
    v185 = dispatch thunk of CustomStringConvertible.description.getter();
    v186 = v146;
    v188 = v187;
    (*v263)(v186, v68);
    v189 = sub_10000C4E4(v185, v188, &isa);

    *(v149 + 4) = v189;
    v157 = v184;
    v158 = v147;
    v159 = "Not a Photos type %s. Ignoring";
    goto LABEL_79;
  }

  v117 = objc_allocWithZone(PFVideoComplement);
  URL._bridgeToObjectiveC()(v118);
  v120 = v119;
  v121 = [v117 initWithBundleAtURL:v119];

  if (!v121)
  {
    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    sub_10000C4AC(v160, qword_100988420);
    v146 = v223;
    (*v271)(v223, v270, v68);
    v147 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v147, v161))
    {
      goto LABEL_80;
    }

    v149 = swift_slowAlloc();
    v150 = v66;
    v151 = swift_slowAlloc();
    isa = v151;
    *v149 = v231;
    sub_100664BFC(&qword_100975160, &type metadata accessor for URL);
    v162 = dispatch thunk of CustomStringConvertible.description.getter();
    v163 = v146;
    v165 = v164;
    (*v263)(v163, v68);
    v166 = sub_10000C4E4(v162, v165, &isa);

    *(v149 + 4) = v166;
    v157 = v161;
    v158 = v147;
    v159 = "PFVideoComplement initWithBundleAtURL(%s) returned nil";
LABEL_79:
    _os_log_impl(&_mh_execute_header, v158, v157, v159, v149, 0xCu);
    sub_10000C60C(v151);
    v66 = v150;
    urlString = v260._urlString;

    goto LABEL_81;
  }

  v272 = [objc_opt_self() creationRequestForAssetFromVideoComplementBundle:v121];
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v122 = static NSUserDefaults.airdrop.getter();
  v123 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  if ((v123 & 1) == 0)
  {

LABEL_62:
    v95 = v242;
    goto LABEL_63;
  }

  result = [v121 videoPath];
  if (result)
  {
    v125 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = v228;
    URL.init(fileURLWithPath:)();

    (*v271)(v229, v126, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v248 = sub_10028E2D4(0, v248[2] + 1, 1, v248);
    }

    v128 = v248[2];
    v127 = v248[3];
    if (v128 >= v127 >> 1)
    {
      v248 = sub_10028E2D4(v127 > 1, v128 + 1, 1, v248);
    }

    v129 = v256;
    (*(v256 + 8))(v228, v68);
    v130 = v248;
    v248[2] = v128 + 1;
    v81(&v130[((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v128], v229, v68);
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

uint64_t sub_100663650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_1006636F0, v4, 0);
}

uint64_t sub_1006636F0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs);
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs) = v0[3];

  v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_assetIdentifiers);
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_assetIdentifiers) = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_100663794()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID, &unk_100976120, &qword_1007F9260);
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs);

  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_assetIdentifiers);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropContentHandlerPhotos()
{
  result = qword_100988490;
  if (!qword_100988490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100663884()
{
  sub_100383ECC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100663940@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SDAirDropContentHandlerPhotos();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID;
  v7 = type metadata accessor for UUID();
  result = (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_assetIdentifiers) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos) = 0;
  *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos) = 0;
  *a1 = v5;
  return result;
}

uint64_t sub_100663A08(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_10065EED4(a1);
}

uint64_t sub_100663AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v15[1] = 0;
  (*(v7 + 16))(v9, a3, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v9, v6);
  *(v13 + v12) = a1;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100663D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1004A9D84;

  return sub_100664408(a2, a3);
}

id sub_100663DC8(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100663E8C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() predicateMatchingBundleIdentifier:v0];

  sub_1000276B4(0, &unk_10097E9A0, RBSProcessHandle_ptr);
  v2 = v1;
  v3 = sub_100663DC8(v2);

  v4 = [v3 currentState];
  if (v4 && (v5 = v4, v6 = [v4 endowmentNamespaces], v5, v6))
  {
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_100569230(0xD00000000000001FLL, 0x800000010079A870, v7);

    v9 = v8 ^ 1;
  }

  else
  {

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_100664130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v10);
  v12 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_100005C04;

  return sub_10065FC5C(a1, a2, a3, v3 + v9, v11, v12);
}

uint64_t sub_10066426C(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1006642B4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  return sub_100660958(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_10066434C(char a1, uint64_t a2)
{
  v5 = *(sub_10028088C(&qword_100988628, &unk_10080EFF0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1006609BC(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100664408(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  v8 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v3[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1006645E4, v10, 0);
}

uint64_t sub_1006645E4()
{
  v1 = v0[10];
  v0[22] = [objc_allocWithZone(type metadata accessor for SDAirDropMoveToAppShareSheet()) init];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs);
  v0[23] = v2;

  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1006646C8;

  return sub_10066D568(v2);
}

uint64_t sub_1006646C8(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = v1;
  *(v4 + 48) = a1;
  *(v4 + 40) = v2;
  v5 = *(v3 + 192);
  v12 = *v2;
  *(v4 + 200) = v1;

  if (v1)
  {
    v6 = *(v4 + 168);
    v7 = sub_100664AAC;
  }

  else
  {
    v9 = *(v4 + 176);
    v8 = *(v4 + 184);
    v10 = *(v4 + 168);

    v7 = sub_100664808;
    v6 = v10;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100664808()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v1, &unk_100976120, &qword_1007F9260);
  LODWORD(v2) = (*(v3 + 48))(v1, 1, v2);
  sub_100005508(v1, &unk_100976120, &qword_1007F9260);
  if (v2 != 1)
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 128);
    v26 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v27 = v6;
    v12 = *(v0 + 88);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    (*(v8 + 16))(v7, v13, v10);
    (*(v11 + 16))(v9, v14, v12);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = (v26 + *(v11 + 80) + v16) & ~*(v11 + 80);
    v18 = swift_allocObject();
    (*(v8 + 32))(v18 + v16, v7, v10);
    (*(v11 + 32))(v18 + v17, v9, v12);
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v27, &qword_100976160, &qword_1007F8770);
  }

  v19 = *(v0 + 48);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v23 = *(v0 + 112);

  v24 = *(v0 + 8);

  return v24(v19);
}

uint64_t sub_100664AAC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[14];

  v7 = v0[1];
  v8 = v0[25];

  return v7(0);
}

uint64_t sub_100664B54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C04;

  return sub_100663650(v2, v3, v4);
}

uint64_t sub_100664BFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100664C44()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100664D94(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v2[47] = *v1;
  v3 = type metadata accessor for String.Encoding();
  v2[48] = v3;
  v4 = *(v3 - 8);
  v2[49] = v4;
  v5 = *(v4 + 64) + 15;
  v2[50] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[51] = v6;
  v7 = *(v6 - 8);
  v2[52] = v7;
  v8 = *(v7 + 64) + 15;
  v2[53] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[54] = v9;
  v10 = *(v9 - 8);
  v2[55] = v10;
  v11 = *(v10 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v2[61] = static IDMSActor.shared;
  v12 = swift_task_alloc();
  v2[62] = v12;
  *v12 = v2;
  v12[1] = sub_100665004;

  return sub_100324F0C();
}

uint64_t sub_100665004()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return _swift_task_switch(sub_100665140, v2, 0);
}

uint64_t sub_100665140()
{
  v99 = v0;
  v1 = v0[46];
  if (*(v1 + 32) == 1)
  {
    v2 = v0[60];
    v4 = v0[52];
    v3 = v0[53];
    v5 = v0[51];
    v95 = v0[47];
    v6 = v0[45];
    URL.appendingPathComponent(_:)();
    v7 = swift_allocObject();
    _StringGuts.grow(_:)(24);

    v98._countAndFlagsBits = 0xD000000000000015;
    v98._object = 0x800000010079A940;
    Date.init()();
    sub_100418E5C();
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    (*(v4 + 8))(v3, v5);
    v9._countAndFlagsBits = 10;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    *(v7 + 16) = 0xD000000000000015;
    *(v7 + 24) = 0x800000010079A940;
    v10._object = 0x800000010079A960;
    v10._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v93 = (v13 + 16);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = *(v1 + 16);
    sub_100666670();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = swift_allocObject();
    v17[2] = v11;
    v17[3] = v12;
    v17[4] = v7;
    v17[5] = v13;
    v17[6] = v14;
    v17[7] = v95;
    v0[6] = sub_1006666BC;
    v0[7] = v17;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10032765C;
    v0[5] = &unk_1008ED4F8;
    v18 = _Block_copy(v0 + 2);
    v19 = v0[7];
    v20 = v15;
    v96 = v11;

    v97 = v7;

    v0[40] = 0;
    LODWORD(v19) = [v20 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:v0 + 40 handler:v18];
    _Block_release(v18);

    v21 = v0[40];
    if (v19)
    {
      v22 = v0[57];
      v90 = v0[58];
      v23 = v0[55];
      v88 = v0[59];
      v89 = v0[54];
      v91 = v0[50];
      v92 = v0[60];
      v87 = v0[46];
      swift_beginAccess();
      v24 = v21;
      v25._object = 0x800000010079A990;
      v25._countAndFlagsBits = 0xD000000000000024;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 0x3A7972616D6D7553;
      v26._object = 0xE90000000000000ALL;
      String.append(_:)(v26);
      swift_endAccess();
      _StringGuts.grow(_:)(18);

      v98._countAndFlagsBits = 0x6E65206C61746F54;
      v98._object = 0xEF203A7365697274;
      swift_beginAccess();
      v0[41] = *(v11 + 16);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 10;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      swift_beginAccess();
      String.append(_:)(v98);
      swift_endAccess();

      _StringGuts.grow(_:)(20);

      v98._countAndFlagsBits = 0xD000000000000011;
      v98._object = 0x800000010079A9C0;
      swift_beginAccess();
      v0[42] = *(v12 + 16);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 10;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      swift_beginAccess();
      String.append(_:)(v98);
      swift_endAccess();

      _StringGuts.grow(_:)(19);

      v98._countAndFlagsBits = 0xD000000000000010;
      v98._object = 0x800000010079A9E0;
      swift_beginAccess();
      v0[43] = *v93;
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 10;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      swift_beginAccess();
      String.append(_:)(v98);
      swift_endAccess();

      _StringGuts.grow(_:)(18);

      v98._countAndFlagsBits = 0x6E65207972746552;
      v98._object = 0xEF203A7365697274;
      swift_beginAccess();
      v0[44] = *(v14 + 16);
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 10;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      swift_beginAccess();
      String.append(_:)(v98);
      swift_endAccess();

      _StringGuts.grow(_:)(18);

      v98._countAndFlagsBits = 0x6573616261746144;
      v98._object = 0xEF203A6874617020;
      sub_10032A41C(v22);
      v35 = *(v87 + 40);
      v36 = *(v87 + 48);
      URL.appendingPathComponent(_:)();
      v37 = *(v23 + 8);
      v37(v22, v89);
      URL.appendingPathComponent(_:)();
      v37(v88, v89);
      URL.appendingPathExtension(_:)();
      v37(v22, v89);
      v38 = URL.path.getter();
      v40 = v39;
      v37(v90, v89);
      v41._countAndFlagsBits = v38;
      v41._object = v40;
      String.append(_:)(v41);

      v42._countAndFlagsBits = 10;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
      swift_beginAccess();
      v43._countAndFlagsBits = 0x6573616261746144;
      v43._object = 0xEF203A6874617020;
      String.append(_:)(v43);
      swift_endAccess();

      v44 = *(v97 + 24);
      v0[38] = *(v97 + 16);
      v0[39] = v44;

      static String.Encoding.utf8.getter();
      sub_10001229C();
      StringProtocol.write(to:atomically:encoding:)();
      (*(v0[49] + 8))(v0[50], v0[48]);

      if (qword_100973C00 != -1)
      {
        swift_once();
      }

      v69 = v0[60];
      v71 = v0[55];
      v70 = v0[56];
      v72 = v0[54];
      v73 = type metadata accessor for Logger();
      sub_10000C4AC(v73, qword_100988630);
      (*(v71 + 16))(v70, v69, v72);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      v76 = os_log_type_enabled(v74, v75);
      v77 = v0[56];
      v78 = v0[54];
      if (v76)
      {
        v79 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v98._countAndFlagsBits = v94;
        *v79 = 136315138;
        v80 = URL.path.getter();
        v82 = v81;
        v37(v77, v78);
        v83 = sub_10000C4E4(v80, v82, &v98._countAndFlagsBits);

        *(v79 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "IDMS database dumped to: %s", v79, 0xCu);
        sub_10000C60C(v94);
      }

      else
      {

        v37(v77, v78);
      }

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 134217984;
        *(v86 + 4) = *(v96 + 16);

        _os_log_impl(&_mh_execute_header, v84, v85, "Total entries dumped: %ld", v86, 0xCu);
      }

      else
      {
      }

      v37(v0[60], v0[54]);
    }

    else
    {
      v49 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      if (qword_100973C00 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_10000C4AC(v50, qword_100988630);
      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v0[60];
      v55 = v0[54];
      v56 = v0[55];
      if (v53)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        swift_errorRetain();
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v59;
        *v58 = v59;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to dump IDMS database: %@", v57, 0xCu);
        sub_10028924C(v58);
      }

      else
      {
      }

      (*(v56 + 8))(v54, v55);
    }
  }

  else
  {
    if (qword_100973C00 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000C4AC(v45, qword_100988630);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Store not loaded, cannot dump", v48, 2u);
    }
  }

  v61 = v0[59];
  v60 = v0[60];
  v63 = v0[57];
  v62 = v0[58];
  v64 = v0[56];
  v65 = v0[53];
  v66 = v0[50];

  v67 = v0[1];

  return v67();
}

uint64_t sub_100665F48()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988630);
  v1 = sub_10000C4AC(v0, qword_100988630);
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100666010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = a6;
  v12 = type metadata accessor for Date();
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v20;
  result = swift_beginAccess();
  v22 = *(a4 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(a4 + 16) = v24;
  v25._countAndFlagsBits = 0x2D44495344746C61;
  v25._object = 0xE800000000000000;
  if (!String.hasPrefix(_:)(v25))
  {
    v34._countAndFlagsBits = 0x2D4449656C707061;
    v34._object = 0xE800000000000000;
    if (!String.hasPrefix(_:)(v34))
    {
      v46._countAndFlagsBits = 0x2D7972746572;
      v46._object = 0xE600000000000000;
      if (!String.hasPrefix(_:)(v46))
      {
        v85 = 0x6E776F6E6B6E555BLL;
        v86 = 0xEA0000000000205DLL;
        v69._countAndFlagsBits = v16;
        v69._object = v18;
        String.append(_:)(v69);

        v70._countAndFlagsBits = 2112800;
        v70._object = 0xE300000000000000;
        String.append(_:)(v70);
        v71._countAndFlagsBits = v19;
        v71._object = v81;
        String.append(_:)(v71);

        v72._countAndFlagsBits = 10;
        v72._object = 0xE100000000000000;
        String.append(_:)(v72);
        v73 = v85;
        v74 = v86;
        swift_beginAccess();
        v75._countAndFlagsBits = v73;
        v75._object = v74;
        String.append(_:)(v75);
        goto LABEL_10;
      }

      result = swift_beginAccess();
      v47 = *(a8 + 16);
      v23 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (!v23)
      {
        *(a8 + 16) = v48;
        v49 = String.count.getter();
        sub_10032AA40(v49, v16, v18);

        v50 = static String._fromSubstring(_:)();
        v52 = v51;

        v83 = 0;
        v53 = v81;
        if (sub_10032A938(v19, v81))
        {
          Date.init(timeIntervalSince1970:)();
          v54 = [objc_allocWithZone(NSDateFormatter) init];
          [v54 setDateStyle:2];
          [v54 setTimeStyle:2];
          isa = Date._bridgeToObjectiveC()().super.isa;
          v56 = [v54 stringFromDate:isa];

          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          v83 = 0;
          v84 = 0xE000000000000000;
          _StringGuts.grow(_:)(19);

          v83 = 0x205D79727465525BLL;
          v84 = 0xE800000000000000;
          v60._countAndFlagsBits = v50;
          v60._object = v52;
          String.append(_:)(v60);

          v61._countAndFlagsBits = 540945696;
          v61._object = 0xE400000000000000;
          String.append(_:)(v61);
          v62._countAndFlagsBits = v57;
          v62._object = v59;
          String.append(_:)(v62);

          v63._countAndFlagsBits = 10272;
          v63._object = 0xE200000000000000;
          String.append(_:)(v63);
          v64._countAndFlagsBits = v19;
          v64._object = v53;
          String.append(_:)(v64);

          v65._countAndFlagsBits = 2601;
          v65._object = 0xE200000000000000;
          String.append(_:)(v65);
          v66 = v83;
          v67 = v84;
          swift_beginAccess();
          v68._countAndFlagsBits = v66;
          v68._object = v67;
          String.append(_:)(v68);
          swift_endAccess();

          return (*(v80 + 8))(v15, v12);
        }

        v83 = 0x205D79727465525BLL;
        v84 = 0xE800000000000000;
        v76._countAndFlagsBits = v50;
        v76._object = v52;
        String.append(_:)(v76);

        v77._countAndFlagsBits = 540945696;
        v77._object = 0xE400000000000000;
        String.append(_:)(v77);
        v78._countAndFlagsBits = v19;
        v78._object = v53;
        String.append(_:)(v78);
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      return result;
    }

    result = swift_beginAccess();
    v35 = *(a7 + 16);
    v23 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v23)
    {
      *(a7 + 16) = v36;
      v37 = String.count.getter();
      sub_10032AA40(v37, v16, v18);

      v29 = static String._fromSubstring(_:)();
      v31 = v38;

      v32 = 0x5D656C646E61485BLL;
      v33 = 0xE900000000000020;
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_beginAccess();
  v26 = *(a5 + 16);
  v23 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(a5 + 16) = v27;
  v28 = String.count.getter();
  sub_10032AA40(v28, v16, v18);

  v29 = static String._fromSubstring(_:)();
  v31 = v30;

  v32 = 0x44495344746C415BLL;
  v33 = 0xEA0000000000205DLL;
LABEL_8:
  v83 = v32;
  v84 = v33;
  v39._countAndFlagsBits = v29;
  v39._object = v31;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 540945696;
  v40._object = 0xE400000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = v19;
  v41._object = v81;
  String.append(_:)(v41);
LABEL_9:

  v42._countAndFlagsBits = 10;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43 = v83;
  v44 = v84;
  swift_beginAccess();
  v45._countAndFlagsBits = v43;
  v45._object = v44;
  String.append(_:)(v45);
LABEL_10:
  swift_endAccess();
}

unint64_t sub_100666670()
{
  result = qword_100974E28;
  if (!qword_100974E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100974E28);
  }

  return result;
}

uint64_t type metadata accessor for SDAuthenticationSessionMetrics()
{
  result = qword_1009886B8;
  if (!qword_1009886B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100666760()
{
  sub_1006668FC(319, &unk_100980A98, type metadata accessor for SFAuthenticationErrorCode);
  if (v0 <= 0x3F)
  {
    sub_1002F2B90(319, qword_1009771F0);
    if (v1 <= 0x3F)
    {
      sub_1002F2B90(319, &qword_1009771E8);
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, &qword_100975790);
        if (v3 <= 0x3F)
        {
          sub_1002F2B90(319, &qword_10097DDF8);
          if (v4 <= 0x3F)
          {
            sub_1006668FC(319, &qword_10097DB80, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1006668FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100667768()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988648);
  v1 = sub_10000C4AC(v0, qword_100988648);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100667830()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 48), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_1002E4E88(v0 + *(v16 + 52), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_100667AB0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 56), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_1002E4E88(v0 + *(v16 + 60), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_100667D30()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 64), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_1002E4E88(v0 + *(v16 + 68), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_100667FB0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 72), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_1002E4E88(v0 + *(v16 + 76), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_100668230()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 80), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_1002E4E88(v0 + *(v16 + 84), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_1006684B0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  if (*(v0 + *(v16 + 92)))
  {
    *&result = 0.0;
    return result;
  }

  v18 = v16;
  sub_1002E4E88(v0 + *(v16 + 88), v7);
  v19 = v9[6];
  if (v19(v7, 1, v8) == 1)
  {
    v20 = v7;
LABEL_7:
    sub_100016C08(v20);
    *&result = 0.0;
    return result;
  }

  v31 = v9;
  v21 = v7;
  v22 = v9[4];
  v22(v15, v21, v8);
  sub_1002E4E88(v0 + *(v18 + 80), v5);
  if (v19(v5, 1, v8) == 1)
  {
    (v31[1])(v15, v8);
    v20 = v5;
    goto LABEL_7;
  }

  v22(v13, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  *&v25 = COERCE_DOUBLE(sub_100668230());
  v27 = v26;
  v28 = v31[1];
  v28(v13, v8);
  v28(v15, v8);
  v29 = *&v25;
  if (v27)
  {
    v29 = 0.0;
  }

  *&result = v24 - v29;
  return result;
}

uint64_t sub_100668774()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 96), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_1002E4E88(v0 + *(v16 + 100), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_1006689F4()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 104), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_1002E4E88(v0 + *(v16 + 48), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_100668C74()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1002E4E88(v0 + *(v16 + 48), v7);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100016C08(v18);
    return 0;
  }

  v25 = v13;
  v24 = *(v9 + 32);
  v24(v15, v7, v8);
  sub_1002E4E88(v0 + *(v16 + 108), v5);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v20 = v25;
  v24(v25, v5, v8);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v9 + 8);
  v23(v20, v8);
  v23(v15, v8);
  return v22;
}

unint64_t sub_100668EF8(_BYTE *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = _s12StateMetricsVMa(0);
  v7 = v6[5];
  v8 = type metadata accessor for SDAuthenticationSessionMetrics();
  result = sub_1000168F4(&a1[v7], v3 + *(v8 + 104));
  *(v3 + 80) = *a1;
  v10 = *&a1[v6[7]];
  if (*(v10 + 16))
  {
    result = sub_10057091C(a2);
    if (v11)
    {
      v12 = (*(v10 + 56) + 16 * result);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v3 + 24);

      *(v3 + 16) = v14;
      *(v3 + 24) = v13;
    }
  }

  v16 = *&a1[v6[8]];
  if (*(v16 + 16))
  {
    result = sub_10057091C(a2);
    if (v17)
    {
      v18 = (*(v16 + 56) + 16 * result);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v3 + 40);

      *(v3 + 32) = v20;
      *(v3 + 40) = v19;
    }
  }

  return result;
}

id sub_100668FE8()
{
  result = [objc_allocWithZone(SFWatchAuthenticationEvent) init];
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    [result setAuthenticationType:?];
    v3 = *(v0 + 12) | (*(v0 + 8) == 0);
    if (!(*(v0 + 12) & 1 | (*(v0 + 8) == 0)))
    {
      [v2 setFailureReason:?];
    }

    [v2 setSucceeded:v3 & 1];
    v4 = *(v0 + 48);
    if (*(v0 + 56))
    {
      v4 = 0.0;
    }

    [v2 setArTrackingDistance:v4];
    if (*(v0 + 72))
    {
      v5 = *(v0 + 64);
      v6 = *(v0 + 72);
    }

    v7 = String._bridgeToObjectiveC()();

    [v2 setApproveClientBundleID:v7];

    LODWORD(v8) = *(v0 + 84);
    if (*(v0 + 88))
    {
      *&v8 = 0.0;
    }

    [v2 setRangingDistance:v8];
    [v2 setScreenOn:*(v0 + 80) & 1];
    v9 = COERCE_DOUBLE(sub_100667AB0()) * 1000.0;
    if (v10)
    {
      v9 = 0.0;
    }

    [v2 setDiscoveryDuration:v9];
    v11 = COERCE_DOUBLE(sub_100667D30()) * 1000.0;
    if (v12)
    {
      v11 = 0.0;
    }

    [v2 setKeyExchangeDuration:v11];
    v13 = COERCE_DOUBLE(sub_100667FB0()) * 1000.0;
    if (v14)
    {
      v13 = 0.0;
    }

    [v2 setTokenExchangeDuration:v13];
    v15 = COERCE_DOUBLE(sub_100668230()) * 1000.0;
    if (v16)
    {
      v15 = 0.0;
    }

    [v2 setAwdlBringUpDuration:v15];
    v17 = COERCE_DOUBLE(sub_100668774()) * 1000.0;
    if (v18)
    {
      v17 = 0.0;
    }

    [v2 setRangingDuration:v17];
    v19 = COERCE_DOUBLE(sub_1006684B0()) * 1000.0;
    if (v20)
    {
      v19 = 0.0;
    }

    [v2 setPeerFoundDuration:v19];
    v21 = COERCE_DOUBLE(sub_100667830()) * 1000.0;
    if (v22)
    {
      v21 = 0.0;
    }

    [v2 setTotalDuration:v21];
    v23 = COERCE_DOUBLE(sub_1006689F4());
    if (v24)
    {
      v23 = 0.0;
    }

    [v2 setTimeSinceBoot:v23];
    v25 = COERCE_DOUBLE(sub_100668C74());
    if (v26)
    {
      v25 = 0.0;
    }

    [v2 setTimeSinceRemoteUnlocked:v25];
    if (*(v0 + 24))
    {
      v27 = *(v0 + 16);
      v28 = *(v0 + 24);
    }

    v29 = String._bridgeToObjectiveC()();

    [v2 setRemoteHardwareModel:v29];

    if (*(v0 + 40))
    {
      v30 = *(v0 + 32);
      v31 = *(v0 + 40);
    }

    v32 = String._bridgeToObjectiveC()();

    [v2 setRemoteSoftwareVersion:v32];

    v33 = [v2 remoteHardwareModel];
    if (!v33)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = String._bridgeToObjectiveC()();
    }

    [v2 setWatchHardwareModel:v33];

    v34 = [v2 remoteSoftwareVersion];
    if (!v34)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = String._bridgeToObjectiveC()();
    }

    [v2 setWatchSoftwareVersion:v34];

    return v2;
  }

  return result;
}

uint64_t sub_1006693C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAuthenticationSessionMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100669428(uint64_t a1)
{
  v2 = type metadata accessor for SDAuthenticationSessionMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100669484(uint64_t a1, unint64_t a2)
{
  v16 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  v5 = v16;
  sub_10028088C(&qword_100988820, &qword_10080F118);
  Optional.tryUnwrap(_:file:line:)();

  if (!v3)
  {
    v6 = v15;
    if (a2 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    v15 = 0;
    v8 = [v6 stepSessionWithData:isa outputData:&v15];

    if (v8)
    {
      v16 = v15;
      v9 = v15;
      sub_10028088C(&qword_100988828, &unk_10080F120);
      Optional.tryUnwrap(_:file:line:)();
    }

    else
    {
      v10 = v15;
      v11 = sub_100010F88(10, 0xD000000000000017, 0x800000010079AB10);
      v13 = v12;
      sub_1000115C8();
      swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v13;
      swift_willThrow();
    }
  }
}

id sub_1006696B8()
{
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  sub_10028088C(&qword_100988820, &qword_10080F118);
  Optional.tryUnwrap(_:file:line:)();

  if (!v1)
  {
    v3 = [v9 generateSessionToken];
    if (v3)
    {
      v4 = v3;
      v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v2 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010079AAF0);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v2;
      *(v8 + 8) = v7;
      swift_willThrow();
    }
  }

  return v2;
}

void sub_100669814(uint64_t a1, unint64_t a2)
{
  v72 = a1;
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_type);
  v6 = a2 >> 60;
  if (a2 >> 60 != 15 && v5 == 6)
  {
    v73 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager);
    v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
    v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
    v9 = sub_10002CDC0((v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice), v8);
    v71 = &v70;
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9);
    v13 = &v70 - v12;
    (*(v10 + 16))(&v70 - v12);
    v14 = *(v7 + 8);
    sub_100294008(v72, a2);
    v14(v8, v7);
    v16 = v15;
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    v29 = v72;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v73 aksAuthSessionForDeviceID:v17 attestation:1 sessionType:8 escrowSecret:isa];
    sub_10028BCC0(v29, a2);

    goto LABEL_34;
  }

  LODWORD(v71) = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role);
  v73 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager);
  v18 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
  v19 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
  v20 = sub_10002CDC0((v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice), v18);
  v70 = &v70;
  v21 = *(v18 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  (*(v21 + 16))(&v70 - v23);
  (*(v19 + 8))(v18, v19);
  v26 = v25;
  (*(v21 + 8))(v24, v18);
  if (v5 != 7)
  {
    if (v26)
    {
      isa = String._bridgeToObjectiveC()();
    }

    else
    {
      isa = 0;
    }

    if (v5 <= 10)
    {
      if (v5 == 4)
      {
        v31 = 7;
        goto LABEL_29;
      }

      if (v5 == 6)
      {
        v31 = 8;
        goto LABEL_29;
      }
    }

    else
    {
      switch(v5)
      {
        case 11:
          v32 = 0;
          v31 = 10;
LABEL_32:
          v33 = 0;
          goto LABEL_33;
        case 19:
          v31 = 10;
          goto LABEL_29;
        case 20:
          v31 = 9;
LABEL_29:
          v32 = (v5 - 3) < 2;
          v33 = 1;
LABEL_33:
          v30 = [v73 aksAuthSessionForDeviceID:isa originator:v71 usingEscrow:v32 attestation:v33 sessionType:{v31, v70}];
          goto LABEL_34;
      }
    }

    v32 = (v5 - 3) < 2;
    v33 = 1;
    v31 = 2;
    if (v5 == 3 || v5 == 5)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  if (v6 > 0xE)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v30 = [v73 aksAuthorizationSessionForDeviceID:v27 attestation:1 originator:v71 externalACMContext:isa sessionType:{9, v70}];

LABEL_34:
  v34 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession) = v30;
  v35 = v30;

  if (!v35)
  {
    v36 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice);
    v37 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
    v38 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
    v39 = sub_10002CDC0(v36, v37);
    v40 = *(v37 - 8);
    v41 = *(v40 + 64);
    __chkstk_darwin(v39);
    v43 = &v70 - v42;
    (*(v40 + 16))(&v70 - v42);
    (*(v38 + 8))(v37, v38);
    v45 = v44;
    (*(v40 + 8))(v43, v37);
    if (v45)
    {
      v46 = String._bridgeToObjectiveC()();
    }

    else
    {
      v46 = 0;
    }

    v51 = [v73 cachedEscrowSecretExistsForDeviceID:v46];

    if (v51)
    {
      v52 = v36[3];
      v53 = v36[4];
      v54 = sub_10002CDC0(v36, v52);
      v55 = *(v52 - 8);
      v56 = *(v55 + 64);
      __chkstk_darwin(v54);
      v58 = &v70 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v55 + 16))(v58);
      (*(v53 + 8))(v52, v53);
      v60 = v59;
      (*(v55 + 8))(v58, v52);
      if (v60)
      {
        v61 = String._bridgeToObjectiveC()();
      }

      else
      {
        v61 = 0;
      }

      v64 = [v73 cachedEscrowSecretIsValidForDeviceID:v61];

      if (v64)
      {
        v65 = 0xD00000000000001DLL;
        v62 = 0x800000010079AB70;
        v63 = 10;
LABEL_50:
        v66 = sub_100010F88(v63, v65, v62);
        v68 = v67;
        sub_1000115C8();
        swift_allocError();
        *v69 = v66;
        *(v69 + 8) = v68;
        swift_willThrow();
        return;
      }

      v62 = 0x800000010079AB50;
      v63 = 22;
    }

    else
    {
      v62 = 0x800000010079AB30;
      v63 = 10;
    }

    v65 = 0xD000000000000015;
    goto LABEL_50;
  }

  if (([v35 sessionIsValid] & 1) == 0)
  {
    v47 = sub_100010F88(10, 0xD000000000000013, 0x800000010079AB90);
    v49 = v48;
    sub_1000115C8();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    swift_willThrow();
  }
}

void sub_10066A014()
{
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  sub_10028088C(&qword_100988820, &qword_10080F118);
  Optional.tryUnwrap(_:file:line:)();

  if (!v1)
  {
    if (([v7 confirmSession] & 1) == 0)
    {
      v3 = sub_100010F88(10, 0xD00000000000001DLL, 0x800000010079ABB0);
      v5 = v4;
      sub_1000115C8();
      swift_allocError();
      *v6 = v3;
      *(v6 + 8) = v5;
      swift_willThrow();
    }
  }
}

id sub_10066A140()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager);
  v4 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
  v5 = sub_10002CDC0((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice), v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  (*(v6 + 16))(&v16 - v8);
  (*(v3 + 8))(v4, v3);
  v11 = v10;
  (*(v6 + 8))(v9, v4);
  if (v1)
  {
    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    v13 = &selRef_deviceEnabledAsKeyForIDSDeviceID_;
  }

  else
  {
    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    v13 = &selRef_deviceEnabledAsKey_;
  }

  v14 = [v2 *v13];

  return v14;
}

uint64_t sub_10066A2F4()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000C60C((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAuthenticationAKSAuthSession()
{
  result = qword_100988770;
  if (!qword_100988770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10066A414()
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

uint64_t SFAirDropReceive.Failure.legacyFailureReason.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 1);

    v9 = *(sub_10028088C(&unk_10097C640, &unk_1008012A8) + 48);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
    return 1;
  }

  if (v7 == enum case for SFAirDropReceive.Failure.unexpected(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 1;
  }

  if (v7 == enum case for SFAirDropReceive.Failure.declined(_:))
  {
    return 3;
  }

  if (v7 == enum case for SFAirDropReceive.Failure.askDismissed(_:) || v7 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
  {
    return 0;
  }

  if (v7 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:))
  {
    return 3;
  }

  if (v7 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
  {
    return 2;
  }

  v11 = 1;
  if (v7 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:) || v7 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:) || v7 == enum case for SFAirDropReceive.Failure.streamError(_:) || v7 == enum case for SFAirDropReceive.Failure.askNotHandled(_:) || v7 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:) || v7 == enum case for SFAirDropReceive.Failure.badRequest(_:))
  {
    return v11;
  }

  if (v7 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:))
  {
    return 3;
  }

  if (v7 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10066A7C8(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v20 = a2;
  v22 = a1;
  v4 = sub_10028088C(&qword_100988938, &qword_10080F1F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v19 - v10;
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = *(v3 + *((swift_isaMask & *v3) + 0x58));
  os_unfair_lock_lock(v14 + 4);
  v15 = *((swift_isaMask & *v3) + 0x68);
  swift_beginAccess();
  sub_10000FF90(v3 + v15, v13, &qword_100988938, &qword_10080F1F8);
  v16 = sub_10028088C(&qword_100988940, &unk_10080F200);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v11, 1, 1, v16);
  swift_beginAccess();
  sub_10000C788(v11, v3 + v15, &qword_100988938, &qword_10080F1F8);
  swift_endAccess();
  os_unfair_lock_unlock(v14 + 4);
  sub_10000FF90(v13, v8, &qword_100988938, &qword_10080F1F8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_100005508(v13, &qword_100988938, &qword_10080F1F8);
    return sub_100005508(v8, &qword_100988938, &qword_10080F1F8);
  }

  else
  {
    v23 = v22;
    if (v21)
    {
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v24 = v20;

      CheckedContinuation.resume(returning:)();
    }

    sub_100005508(v13, &qword_100988938, &qword_10080F1F8);
    return (*(v17 + 8))(v8, v16);
  }
}

uint64_t sub_10066AAA8(uint64_t a1, int a2)
{
  v19 = a2;
  v20 = a1;
  v3 = sub_10028088C(&qword_100988910, &qword_10080F1C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v18[-v9];
  __chkstk_darwin(v8);
  v12 = &v18[-v11];
  v13 = *(v2 + *((swift_isaMask & *v2) + 0x58));
  os_unfair_lock_lock(v13 + 4);
  v14 = *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  sub_10000FF90(v2 + v14, v12, &qword_100988910, &qword_10080F1C0);
  v15 = sub_10028088C(&qword_100988918, &qword_10080F1C8);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v10, 1, 1, v15);
  swift_beginAccess();
  sub_10000C788(v10, v2 + v14, &qword_100988910, &qword_10080F1C0);
  swift_endAccess();
  os_unfair_lock_unlock(v13 + 4);
  sub_10000FF90(v12, v7, &qword_100988910, &qword_10080F1C0);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_100005508(v12, &qword_100988910, &qword_10080F1C0);
    return sub_100005508(v7, &qword_100988910, &qword_10080F1C0);
  }

  else
  {
    if (v19)
    {
      v21 = v20;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      LOBYTE(v21) = v20;
      CheckedContinuation.resume(returning:)();
    }

    sub_100005508(v12, &qword_100988910, &qword_10080F1C0);
    return (*(v16 + 8))(v7, v15);
  }
}

uint64_t sub_10066AD7C(uint64_t a1, int a2)
{
  v19 = a2;
  v20 = a1;
  v3 = sub_10028088C(&qword_100988928, &qword_10080F1D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v18[-v9];
  __chkstk_darwin(v8);
  v12 = &v18[-v11];
  v13 = *(v2 + *((swift_isaMask & *v2) + 0x58));
  os_unfair_lock_lock(v13 + 4);
  v14 = *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  sub_10000FF90(v2 + v14, v12, &qword_100988928, &qword_10080F1D0);
  v15 = sub_10028088C(&qword_100988930, &qword_10080F1D8);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v10, 1, 1, v15);
  swift_beginAccess();
  sub_10000C788(v10, v2 + v14, &qword_100988928, &qword_10080F1D0);
  swift_endAccess();
  os_unfair_lock_unlock(v13 + 4);
  sub_10000FF90(v12, v7, &qword_100988928, &qword_10080F1D0);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_100005508(v12, &qword_100988928, &qword_10080F1D0);
    return sub_100005508(v7, &qword_100988928, &qword_10080F1D0);
  }

  else
  {
    if (v19)
    {
      v21 = v20;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      LOBYTE(v21) = v20 & 1;
      CheckedContinuation.resume(returning:)();
    }

    sub_100005508(v12, &qword_100988928, &qword_10080F1D0);
    return (*(v16 + 8))(v7, v15);
  }
}

void sub_10066B054(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a7;
  v63 = a8;
  v60 = a5;
  v61 = a6;
  v64 = a4;
  v14 = sub_10028088C(&qword_100988938, &qword_10080F1F8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v60 - v16;
  v18 = *(a2 + *((swift_isaMask & *a2) + 0x58));
  os_unfair_lock_lock(v18 + 4);
  v19 = sub_10028088C(&qword_100988940, &unk_10080F200);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, a1, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = *((swift_isaMask & *a2) + 0x68);
  swift_beginAccess();
  sub_10000C788(v17, a2 + v21, &qword_100988938, &qword_10080F1F8);
  swift_endAccess();
  os_unfair_lock_unlock(v18 + 4);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_10066E2D4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008ED668;
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();
  v25 = a2;
  v26 = [v24 responderWithHandler:{v23, v60, v61, v62, v63}];
  _Block_release(v23);

  if (!v64)
  {
    v27 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 initWithServiceName:v28 viewControllerClassName:v29];

    v31 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    if (a9)
    {
      sub_1003CE294(a9);
      v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v31 setUserInfo:v32.super.isa];

    v33 = [objc_allocWithZone(BSMutableSettings) init];
    [v33 setFlag:1 forSetting:a10];
    v34 = objc_allocWithZone(BSAction);
    v63 = v33;
    v64 = v26;
    v35 = [v34 initWithInfo:v33 responder:v26];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FD580;
    *(inited + 32) = v35;
    v37 = v35;
    sub_1002F48BC(inited);
    swift_setDeallocating();
    v38 = *(inited + 16);
    swift_arrayDestroy();
    sub_10066E15C();
    sub_10066E1A8(&qword_100988920, sub_10066E15C);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v31 setActions:isa];

    if (qword_100973938 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C4AC(v40, qword_100980650);
    v41 = v30;
    v42 = v31;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v62 = v37;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v45 = 138412546;
      *(v45 + 4) = v41;
      v60 = v46;
      *v46 = v41;
      *(v45 + 12) = 2080;
      v47 = v41;
      v48 = [v42 userInfo];
      if (v48)
      {
        v49 = v48;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = Dictionary.description.getter();
        v52 = v51;
      }

      else
      {
        v52 = 0x8000000100799D00;
        v50 = 0xD00000000000002BLL;
      }

      v53 = sub_10000C4E4(v50, v52, aBlock);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "SDAirDropRemoteViewController activating with definition: %@ and userInfo: %s", v45, 0x16u);
      sub_100005508(v60, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v61);

      v37 = v62;
    }

    else
    {
    }

    v54 = [objc_opt_self() newHandleWithDefinition:v41 configurationContext:v42];
    v55 = *((swift_isaMask & *v25) + 0x60);
    v56 = *(v25 + v55);
    *(v25 + v55) = v54;

    v57 = *(v25 + v55);
    if (!v57)
    {
      goto LABEL_19;
    }

    [v57 registerObserver:v25];
    v58 = *(v25 + v55);
    if (a11)
    {
      if (!v58)
      {
LABEL_19:

        v26 = v63;
        goto LABEL_20;
      }

      [v58 registerObserver:a11];
      v58 = *(v25 + v55);
    }

    if (v58)
    {
      v59 = v58;
      [v59 activateWithContext:0];
    }

    goto LABEL_19;
  }

LABEL_20:
}

void sub_10066B7B4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a7;
  v63 = a8;
  v60 = a5;
  v61 = a6;
  v64 = a4;
  v14 = sub_10028088C(&qword_100988910, &qword_10080F1C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v60 - v16;
  v18 = *(a2 + *((swift_isaMask & *a2) + 0x58));
  os_unfair_lock_lock(v18 + 4);
  v19 = sub_10028088C(&qword_100988918, &qword_10080F1C8);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, a1, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = *((swift_isaMask & *a2) + 0x68);
  swift_beginAccess();
  sub_10000C788(v17, a2 + v21, &qword_100988910, &qword_10080F1C0);
  swift_endAccess();
  os_unfair_lock_unlock(v18 + 4);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_10066E154;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008ED578;
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();
  v25 = a2;
  v26 = [v24 responderWithHandler:{v23, v60, v61, v62, v63}];
  _Block_release(v23);

  if (!v64)
  {
    v27 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 initWithServiceName:v28 viewControllerClassName:v29];

    v31 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    if (a9)
    {
      sub_1003CE294(a9);
      v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v31 setUserInfo:v32.super.isa];

    v33 = [objc_allocWithZone(BSMutableSettings) init];
    [v33 setFlag:1 forSetting:a10];
    v34 = objc_allocWithZone(BSAction);
    v63 = v33;
    v64 = v26;
    v35 = [v34 initWithInfo:v33 responder:v26];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FD580;
    *(inited + 32) = v35;
    v37 = v35;
    sub_1002F48BC(inited);
    swift_setDeallocating();
    v38 = *(inited + 16);
    swift_arrayDestroy();
    sub_10066E15C();
    sub_10066E1A8(&qword_100988920, sub_10066E15C);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v31 setActions:isa];

    if (qword_100973938 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C4AC(v40, qword_100980650);
    v41 = v30;
    v42 = v31;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v62 = v37;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v45 = 138412546;
      *(v45 + 4) = v41;
      v60 = v46;
      *v46 = v41;
      *(v45 + 12) = 2080;
      v47 = v41;
      v48 = [v42 userInfo];
      if (v48)
      {
        v49 = v48;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = Dictionary.description.getter();
        v52 = v51;
      }

      else
      {
        v52 = 0x8000000100799D00;
        v50 = 0xD00000000000002BLL;
      }

      v53 = sub_10000C4E4(v50, v52, aBlock);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "SDAirDropRemoteViewController activating with definition: %@ and userInfo: %s", v45, 0x16u);
      sub_100005508(v60, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v61);

      v37 = v62;
    }

    else
    {
    }

    v54 = [objc_opt_self() newHandleWithDefinition:v41 configurationContext:v42];
    v55 = *((swift_isaMask & *v25) + 0x60);
    v56 = *(v25 + v55);
    *(v25 + v55) = v54;

    v57 = *(v25 + v55);
    if (!v57)
    {
      goto LABEL_19;
    }

    [v57 registerObserver:v25];
    v58 = *(v25 + v55);
    if (a11)
    {
      if (!v58)
      {
LABEL_19:

        v26 = v63;
        goto LABEL_20;
      }

      [v58 registerObserver:a11];
      v58 = *(v25 + v55);
    }

    if (v58)
    {
      v59 = v58;
      [v59 activateWithContext:0];
    }

    goto LABEL_19;
  }

LABEL_20:
}

void sub_10066BF14(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a7;
  v63 = a8;
  v60 = a5;
  v61 = a6;
  v64 = a4;
  v14 = sub_10028088C(&qword_100988928, &qword_10080F1D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v60 - v16;
  v18 = *(a2 + *((swift_isaMask & *a2) + 0x58));
  os_unfair_lock_lock(v18 + 4);
  v19 = sub_10028088C(&qword_100988930, &qword_10080F1D8);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, a1, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = *((swift_isaMask & *a2) + 0x68);
  swift_beginAccess();
  sub_10000C788(v17, a2 + v21, &qword_100988928, &qword_10080F1D0);
  swift_endAccess();
  os_unfair_lock_unlock(v18 + 4);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_10066E1F0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008ED5C8;
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();
  v25 = a2;
  v26 = [v24 responderWithHandler:{v23, v60, v61, v62, v63}];
  _Block_release(v23);

  if (!v64)
  {
    v27 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 initWithServiceName:v28 viewControllerClassName:v29];

    v31 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    if (a9)
    {
      sub_1003CE294(a9);
      v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v31 setUserInfo:v32.super.isa];

    v33 = [objc_allocWithZone(BSMutableSettings) init];
    [v33 setFlag:1 forSetting:a10];
    v34 = objc_allocWithZone(BSAction);
    v63 = v33;
    v64 = v26;
    v35 = [v34 initWithInfo:v33 responder:v26];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FD580;
    *(inited + 32) = v35;
    v37 = v35;
    sub_1002F48BC(inited);
    swift_setDeallocating();
    v38 = *(inited + 16);
    swift_arrayDestroy();
    sub_10066E15C();
    sub_10066E1A8(&qword_100988920, sub_10066E15C);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v31 setActions:isa];

    if (qword_100973938 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C4AC(v40, qword_100980650);
    v41 = v30;
    v42 = v31;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v62 = v37;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v45 = 138412546;
      *(v45 + 4) = v41;
      v60 = v46;
      *v46 = v41;
      *(v45 + 12) = 2080;
      v47 = v41;
      v48 = [v42 userInfo];
      if (v48)
      {
        v49 = v48;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = Dictionary.description.getter();
        v52 = v51;
      }

      else
      {
        v52 = 0x8000000100799D00;
        v50 = 0xD00000000000002BLL;
      }

      v53 = sub_10000C4E4(v50, v52, aBlock);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "SDAirDropRemoteViewController activating with definition: %@ and userInfo: %s", v45, 0x16u);
      sub_100005508(v60, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v61);

      v37 = v62;
    }

    else
    {
    }

    v54 = [objc_opt_self() newHandleWithDefinition:v41 configurationContext:v42];
    v55 = *((swift_isaMask & *v25) + 0x60);
    v56 = *(v25 + v55);
    *(v25 + v55) = v54;

    v57 = *(v25 + v55);
    if (!v57)
    {
      goto LABEL_19;
    }

    [v57 registerObserver:v25];
    v58 = *(v25 + v55);
    if (a11)
    {
      if (!v58)
      {
LABEL_19:

        v26 = v63;
        goto LABEL_20;
      }

      [v58 registerObserver:a11];
      v58 = *(v25 + v55);
    }

    if (v58)
    {
      v59 = v58;
      [v59 activateWithContext:0];
    }

    goto LABEL_19;
  }

LABEL_20:
}

id sub_10066C674(void *a1, void *a2, uint64_t a3)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100980650);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropRemoteViewController received response: %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = [v7 error];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_10066A7C8(v14, 0, 1);
  }

  else
  {
    v16 = [v7 info];
    if (v16)
    {
      v17 = v16;
      if ([v16 objectForSetting:a3])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1000106E0(&v21, v22);
      }

      else
      {
        memset(v22, 0, sizeof(v22));
      }

      sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
      if (swift_dynamicCast() && (v18 = *(&v21 + 1)) != 0)
      {
        v19 = v21;

        sub_10066A7C8(v19, v18, 0);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        sub_10066A7C8(0, 0, 0);
      }
    }

    else
    {
      sub_10066A7C8(0, 0, 0);
    }
  }

  result = *(a2 + *((swift_isaMask & *a2) + 0x60));
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

id sub_10066C94C(void *a1, void *a2, uint64_t a3)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100980650);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropRemoteViewController received response: %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = [v7 error];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_10066AAA8(v14, 1);
  }

  else
  {
    v16 = [v7 info];
    if (v16)
    {
      v17 = v16;
      sub_10066AAA8([v16 BOOLForSetting:a3], 0);
    }

    else
    {
      sub_10066AAA8(0, 0);
    }
  }

  result = *(a2 + *((swift_isaMask & *a2) + 0x60));
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

id sub_10066CB90(void *a1, void *a2, uint64_t a3)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100980650);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropRemoteViewController received response: %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = [v7 error];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_10066AD7C(v14, 1);
  }

  else
  {
    v16 = [v7 info];
    if (v16)
    {
      v17 = v16;
      if ([v16 objectForSetting:a3])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1000106E0(&v20, v21);
      }

      else
      {
        memset(v21, 0, sizeof(v21));
      }

      sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
      v18 = swift_dynamicCast() == 0;
      sub_10066AD7C(v18, 0);
    }

    else
    {
      sub_10066AD7C(1, 0);
    }
  }

  result = *(a2 + *((swift_isaMask & *a2) + 0x60));
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t sub_10066CE34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009888C8);
  v1 = sub_10000C4AC(v0, qword_1009888C8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10066CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_10066CFA8;

  return sub_10066D568(a5);
}

uint64_t sub_10066CFA8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_10066D140;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v7 = sub_10066D0D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10066D0D4()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 56), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10066D140()
{
  v17 = v0;
  if (qword_100973C10 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009888C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Move to App Share Sheet failed {error: %s}", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = v0[6];
  v13 = v0[3];
  v12 = v0[4];
  swift_errorRetain();
  v13(0, v11);

  v14 = v0[1];

  return v14();
}

void sub_10066D494(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10066D568(uint64_t a1)
{
  v1[13] = a1;
  v2 = type metadata accessor for SFMoveToAppShareSheetSettings();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_10066D6B0, 0, 0);
}

uint64_t sub_10066D6B0()
{
  v73 = v0;
  v1 = *(v0 + 104);
  v72 = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v69 = objc_opt_self();
    v6 = *(v3 + 16);
    v5 = v3 + 16;
    v4 = v6;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v8 = *(v5 + 56);
    v68 = _swiftEmptyArrayStorage;
    do
    {
      v9 = v71[19];
      v10 = v71[17];
      v4(v9, v7, v10);
      URL._bridgeToObjectiveC()(v11);
      v13 = v12;
      v14 = [v69 scopedResourceWithFileURL:v12 allowedAccess:2];

      (*(v5 - 8))(v9, v10);
      if (v14)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v68 = v72;
      }

      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v68 = _swiftEmptyArrayStorage;
  }

  v16 = v68;
  if (!(v68 >> 62))
  {
    v70 = (v68 & 0xFFFFFFFFFFFFFF8);
    v17 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v71;
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_30:
    v67 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

LABEL_29:
  v70 = (v16 & 0xFFFFFFFFFFFFFF8);
  v17 = _CocoaArrayWrapper.endIndex.getter();
  v18 = v71;
  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_11:
  v19 = 0;
  v20 = v16 & 0xC000000000000001;
  v67 = _swiftEmptyArrayStorage;
  do
  {
    v21 = v19;
    while (1)
    {
      if (v20)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= v70[2])
        {
          goto LABEL_28;
        }

        v22 = *(v16 + 8 * v21 + 32);
      }

      v23 = v22;
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v24 = objc_opt_self();
      v18[12] = 0;
      v25 = [v24 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:v18 + 12];
      v26 = v18[12];
      if (v25)
      {
        break;
      }

      v27 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      ++v21;
      if (v19 == v17)
      {
        goto LABEL_31;
      }
    }

    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_10028EEAC(0, *(v67 + 2) + 1, 1, v67);
    }

    v32 = *(v67 + 2);
    v31 = *(v67 + 3);
    if (v32 >= v31 >> 1)
    {
      v67 = sub_10028EEAC((v31 > 1), v32 + 1, 1, v67);
    }

    *(v67 + 2) = v32 + 1;
    v33 = &v67[16 * v32];
    *(v33 + 4) = v28;
    *(v33 + 5) = v30;
    v16 = v68;
  }

  while (v19 != v17);
LABEL_31:

  if (*(v67 + 2))
  {
    v35 = v18[15];
    v34 = v18[16];
    v36 = v18[14];
    v37 = *(v35 + 104);
    v37(v34, enum case for SFMoveToAppShareSheetSettings.reply(_:), v36);
    v38 = SFMoveToAppShareSheetSettings.rawValue.getter();
    v39 = *(v35 + 8);
    v39(v34, v36);
    v37(v34, enum case for SFMoveToAppShareSheetSettings.shareSheetSucceeded(_:), v36);
    v40 = SFMoveToAppShareSheetSettings.rawValue.getter();
    v39(v34, v36);
    sub_10028088C(&unk_100987070, &unk_10080DA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = static SFMoveToAppShareSheetSettings.encodedFiles.getter();
    *(inited + 40) = v42;
    *(inited + 72) = sub_10028088C(&qword_100988908, &unk_10080F1B0);
    *(inited + 48) = v67;
    v43 = sub_100011040(inited);
    v71[20] = v43;
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_1009744D0, &qword_1007F8A20);
    v44 = [objc_allocWithZone(sub_10028088C(&qword_1009800F0 &unk_100806010))];
    v71[21] = v44;
    v45 = swift_task_alloc();
    v71[22] = v45;
    *(v45 + 16) = v44;
    *(v45 + 24) = v40;
    *(v45 + 32) = xmmword_1007F84A0;
    *(v45 + 48) = 0x8000000100789280;
    *(v45 + 56) = 0xD000000000000024;
    *(v45 + 64) = 0x800000010079AC50;
    *(v45 + 72) = v43;
    *(v45 + 80) = v38;
    *(v45 + 88) = 0;
    v46 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v47 = swift_task_alloc();
    v71[23] = v47;
    v48 = sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
    *v47 = v71;
    v47[1] = sub_10066DECC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v71 + 25, 0, 0, 0xD00000000000006ALL, 0x80000001007892A0, sub_1004B2880, v45, v48);
  }

  else
  {

    if (qword_100973C10 != -1)
    {
      swift_once();
    }

    v49 = v18[13];
    v50 = type metadata accessor for Logger();
    sub_10000C4AC(v50, qword_1009888C8);

    v51 = Logger.logObject.getter();
    v52 = v18;
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v53))
    {
      v54 = v52[17];
      v55 = v52[13];
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v57;
      *v56 = 136315138;
      v58 = Array.description.getter();
      v60 = sub_10000C4E4(v58, v59, &v72);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v53, "Could not create encoded array of security scoped resources for files %s", v56, 0xCu);
      sub_10000C60C(v57);
    }

    v61 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10066E1A8(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v61);
    swift_willThrow();
    v63 = v52[19];
    v64 = v52[16];

    v65 = v52[1];

    return v65(0);
  }
}

uint64_t sub_10066DECC()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  *(v3 + 192) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10066E094, 0, 0);
  }

  else
  {
    v5 = *(v3 + 168);
    v4 = *(v3 + 176);
    v7 = *(v3 + 152);
    v6 = *(v3 + 160);
    v8 = *(v3 + 128);

    v9 = *(v3 + 200);

    v10 = *(v3 + 8);

    return v10(v9 & 1);
  }
}

uint64_t sub_10066E094()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];

  v4 = v0[24];
  v5 = v0[19];
  v6 = v0[16];

  v7 = v0[1];

  return v7(0);
}

unint64_t sub_10066E15C()
{
  result = qword_1009772C0;
  if (!qword_1009772C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009772C0);
  }

  return result;
}

uint64_t sub_10066E1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10066E200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_10066CEFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10066E2EC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988948);
  v1 = sub_10000C4AC(v0, qword_100988948);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10066E3B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_10066E564, v12, 0);
}

uint64_t sub_10066E564()
{
  v52 = v0;
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v4)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v5 = v0[2];
      v6 = SFAirDropReceive.AskRequest.files.getter();
      v7 = v6;
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v0[11];
        v49 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        while (v9 < *(v7 + 16))
        {
          v11 = v0[12];
          v12 = v0[10];
          (*(v10 + 16))(v11, v49 + *(v10 + 72) * v9, v12);
          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          (*(v10 + 8))(v11, v12);
          v13 = String._bridgeToObjectiveC()();

          v14 = [v13 pathExtension];

          if (!v14)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = String._bridgeToObjectiveC()();
          }

          v15 = SFIsManagedConfigurationType();

          if ((v15 & 1) == 0)
          {

            goto LABEL_3;
          }

          if (v8 == ++v9)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        swift_once();
        v19 = v0[8];
        v18 = v0[9];
        v20 = v0[7];
        v21 = v0[2];
        v22 = type metadata accessor for Logger();
        sub_10000C4AC(v22, qword_100988948);
        (*(v19 + 16))(v18, v21, v20);
        swift_errorRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[8];
        v27 = v0[9];
        v28 = v0[7];
        if (v25)
        {
          v30 = v0[5];
          v29 = v0[6];
          v31 = v0[4];
          v48 = v24;
          v32 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v51 = v50;
          *v32 = 136315394;
          v46 = v23;
          SFAirDropReceive.AskRequest.id.getter();
          sub_100010810(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v28;
          v35 = v34;
          (*(v30 + 8))(v29, v31);
          (*(v26 + 8))(v27, v33);
          v36 = sub_10000C4E4(v45, v35, &v51);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2112;
          swift_errorRetain();
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 14) = v37;
          *v47 = v37;
          _os_log_impl(&_mh_execute_header, v46, v48, "Failed to get Preferences app for ask request %s: %@", v32, 0x16u);
          sub_100005508(v47, &qword_100975400, &qword_1007F65D0);

          sub_10000C60C(v50);
        }

        else
        {

          (*(v26 + 8))(v27, v28);
        }
      }

      else
      {
LABEL_11:

        v16 = objc_allocWithZone(LSApplicationRecord);
        v17 = sub_10066F3F8(0xD000000000000015, 0x800000010079AD60, 1);
        v38 = v0[3];
        v39 = *(v38 + 16);
        *(v38 + 16) = v17;
      }

      v2 = *(v0[3] + 16) != 0;
    }
  }

  v40 = v0[12];
  v41 = v0[9];
  v42 = v0[6];

  v43 = v0[1];

  return v43(v2);
}

uint64_t sub_10066EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for URL();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = *(*(sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_10066EC0C, v12, 0);
}

uint64_t sub_10066EC0C()
{
  v72 = v0;
  v1 = 0;
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(*(v0 + 48) + 16);
  v67 = (v4 + 16);
  v65 = (v2 + 48);
  v66 = (v2 + 56);
  v64 = (v4 + 32);
  v60 = v4;
  v68 = (v4 + 8);
  v6 = 1;
  v7 = (v5 + 1);
  v63 = v5;
  v8 = v5 == 0;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  v9 = 1;
  for (i = v5; ; i = v1 + 1)
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 88);
    (*v66)(v16, v9, 1, v18);
    sub_10002C4E4(v16, v17, &qword_10097A3B8, &qword_1007FE9C0);
    v19 = (*v65)(v17, 1, v18);
    v20 = *(v0 + 120);
    if (v19 == 1)
    {
      break;
    }

    v69 = i;
    v70 = *v20;
    (*v64)(*(v0 + 80), &v20[*(v3 + 48)], *(v0 + 56));
    v38 = Data.init(contentsOf:options:)();
    v40 = v39;
    v41 = [objc_opt_self() sharedConnection];
    if (!v41)
    {
      goto LABEL_27;
    }

    v42 = v41;
    v43 = *(v0 + 80);
    isa = Data._bridgeToObjectiveC()().super.isa;
    URL.lastPathComponent.getter();
    v45 = String._bridgeToObjectiveC()();

    *(v0 + 16) = 0;
    v46 = [v42 queueFileDataForAcceptance:isa originalFileName:v45 outError:v0 + 16];

    v47 = *(v0 + 16);
    if (v46)
    {
      v48 = v47;

      sub_100026AC0(v38, v40);
    }

    else
    {
      v53 = v47;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100026AC0(v38, v40);
      if (qword_100973C18 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      v23 = *(v0 + 56);
      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_100988948);
      (*v67)(v21, v22, v23);
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 72);
      v29 = *(v0 + 56);
      if (v27)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v71[0] = v62;
        *v30 = 136315394;
        sub_100010810(&qword_100975160, &type metadata accessor for URL);
        v31 = v3;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*v68)(v28, v29);
        v35 = v32;
        v3 = v31;
        v36 = sub_10000C4E4(v35, v34, v71);

        *(v30 + 4) = v36;
        *(v30 + 12) = 2112;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v37;
        *v61 = v37;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to load data or queue file data for acceptance for %s with error: %@", v30, 0x16u);
        sub_100005508(v61, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v62);
      }

      else
      {

        (*v68)(v28, v29);
      }

      v6 = 0;
    }

    v5 = v63;
    v1 = v69;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    v49 = *(v0 + 80);
    v50 = *(v0 + 56);
    v51 = *(v0 + 32);
    v52 = *(v0 + 40);
    *v71 = (v70 + 1) / v7;
    v51(v71);
    (*v68)(v49, v50);
    v8 = v69 >= v63;
    if (v69 == v63)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v8)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_26;
    }

    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 56);
    v14 = *(v0 + 48) + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v1;
    v15 = *(v3 + 48);
    *v11 = v1;
    (*(v60 + 16))(&v11[v15], v14, v13);
    sub_10002C4E4(v11, v12, &qword_10097A3B0, &unk_1007FD5B0);
    v9 = 0;
  }

  v54 = *(v0 + 104);
  v55 = *(v0 + 112);
  v57 = *(v0 + 72);
  v56 = *(v0 + 80);
  **(v0 + 24) = v6 & 1;

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_10066F254@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerProfiles();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10066F28C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_10066E3B4(a1);
}

uint64_t sub_10066F328(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

id sub_10066F3F8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void sub_10066F4D4(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x454C49464F5250;
  v5 = inited + 32;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10066F658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C04;

  return sub_10066EA2C(a1, a2, a3, v8);
}

uint64_t sub_10066F718(uint64_t a1, __int16 a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 168) = a3;
  *(v5 + 172) = a2;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for HeadphonePairing.AssetRequest();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = type metadata accessor for HeadphonePairing.Configuration();
  *(v5 + 64) = v9;
  v10 = *(v9 - 8);
  *(v5 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_100988A60, &qword_10080F2D8) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v13 = type metadata accessor for HeadphoneHardwareModel();
  *(v5 + 104) = v13;
  v14 = *(v13 - 8);
  *(v5 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10066F8F8, 0, 0);
}

uint64_t sub_10066F8F8()
{
  if (*(v0 + 32))
  {
    v2 = (v0 + 96);
    v1 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);

    HeadphoneHardwareModel.init(rawValue:)();
    if ((*(v4 + 48))(v1, 1, v3) != 1)
    {
      goto LABEL_5;
    }

    sub_1006704CC(*v2);
  }

  v2 = (v0 + 128);
  v7 = *(v0 + 128);
  v8 = *(v0 + 172);
  HeadphoneHardwareModel.init(productID:)();
LABEL_5:
  v9 = *v2;
  v10 = *(v0 + 136);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v23 = *(v0 + 56);
  v18 = *(v0 + 168);
  (*(v12 + 32))(v10, v9, v13);
  (*(v12 + 16))(v11, v10, v13);
  DefaultAssetRequestTimeout.getter();
  HeadphonePairing.Configuration.init(hardwareModel:color:timeout:)();
  (*(v17 + 16))(v15, v14, v16);
  HeadphonePairing.AssetRequest.init(configuration:)();
  v19 = async function pointer to HeadphonePairing.AssetRequest.assets()[1];
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  *v20 = v0;
  v20[1] = sub_10066FB44;
  v21 = *(v0 + 56);

  return HeadphonePairing.AssetRequest.assets()();
}

uint64_t sub_10066FB44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_10066FDDC;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_10066FC6C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10066FC6C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v16 = v0[16];
  v17 = v0[15];
  v14 = v0[11];
  v15 = v0[13];
  v18 = v0[12];
  v19 = v0[10];
  v4 = v0[9];
  v5 = v0[6];
  v12 = v0[7];
  v13 = v0[8];
  v6 = v0[5];
  v7 = v0[2];
  v8 = HeadphonePairing.Assets.bundle.getter();
  v9 = [v8 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v2, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10066FDDC()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10067009C(__int16 a1, int a2, uint64_t a3, const void *a4)
{
  v9 = type metadata accessor for URL();
  v4[2] = v9;
  v10 = *(v9 - 8);
  v4[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v4[4] = v12;
  v4[5] = _Block_copy(a4);
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v4[6] = v14;
  v15 = swift_task_alloc();
  v4[7] = v15;
  *v15 = v4;
  v15[1] = sub_1006701EC;

  return sub_10066F718(v12, a1, a2, a3, v14);
}

uint64_t sub_1006701EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v11 = v2[3];
    v10 = v2[4];
    v12 = v2[2];
    URL._bridgeToObjectiveC()(v6);
    v14 = v13;
    (*(v11 + 8))(v10, v12);
    v9 = v14;
    v8 = 0;
    v7 = v14;
  }

  v15 = v2[5];
  (v15)[2](v15, v9, v8);

  _Block_release(v15);

  v16 = *(v5 + 8);

  return v16();
}

uint64_t sub_1006703F0()
{
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100005C04;

  return sub_10067009C(v7, v2, v3, v5);
}

uint64_t sub_1006704CC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100988A60, &qword_10080F2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100670534(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_100670688, v9, 0);
}

void sub_100670688()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v25 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v0[6];
      v17 = v0[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v5 + 16))(v16, *(v25 + 48) + *(v5 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6F98);
      (*(v5 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        swift_arrayDestroy();
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        swift_arrayDestroy();

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:
    v22 = v0[9];
    v23 = v0[6];

    v24 = v0[1];

    v24(v21);
  }
}