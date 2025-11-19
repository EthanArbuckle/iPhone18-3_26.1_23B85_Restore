Swift::Int sub_1000018F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000196C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_1000019B0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (*a1)
  {
    *a3 = v13;
    return v13;
  }

  v15 = v10;
  if ((*(a2 + 16) & 1) == 0)
  {
    v16 = sub_10000217C();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    *a1 = v16;
    *a3 = v16;
    v17 = v16;
    v13 = 0;
    return v13;
  }

  v16 = sub_10000266C();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  (*(v8 + 104))(v12, enum case for DIPError.Code.internalError(_:), v15);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

id sub_100001BD0()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Logger();
  v5 = *(v35 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(NSManagedObjectModel);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [v9 initWithContentsOfURL:v11];

  if (v13)
  {
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v13;
      v18 = v17;
      v37 = v17;
      *v16 = 136446210;
      v19 = URL.absoluteString.getter();
      v21 = sub_10010150C(v19, v20, &v37);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully loaded Core Data model at path %{public}s", v16, 0xCu);
      sub_100005090(v18);
      v13 = v34;
    }

    (*(v5 + 8))(v8, v35);
  }

  else
  {
    v35 = "makeOnDiskPersistentContainer()";
    v36 = *(v1 + 104);
    v36(v4, enum case for DIPError.Code.filesystemError(_:), v0);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v34 = 0;
    v22 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v23 = *(*v22 + 72);
    v24 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001AA160;
    v26 = v25 + v24;
    v27 = (v26 + v22[14]);
    v28 = enum case for DIPError.PropertyKey.filesystemPath(_:);
    v29 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v29 - 8) + 104))(v26, v28, v29);
    v30 = URL.absoluteString.getter();
    v27[3] = &type metadata for String;
    v27[4] = &protocol witness table for String;
    *v27 = v30;
    v27[1] = v31;
    sub_10010C6F8(v25);
    swift_setDeallocating();
    sub_100005128(v26);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v36(v4, enum case for DIPError.Code.internalError(_:), v0);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    v13 = v34;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v13;
}

char *sub_10000217C()
{
  v2 = type metadata accessor for DIPError.Code();
  v13 = *(v2 - 8);
  v3 = *(v13 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for DIPError();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  result = sub_100002C1C();
  if (!v1)
  {
    v11[3] = v6;
    v12 = result;
    sub_100004A78(result, v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_databaseURL, *(v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_urlFileProtection));
    return v12;
  }

  return result;
}

id sub_10000266C()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DIPError.Code();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = v1;
    v18 = v4;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10010150C(*(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName), *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8), aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "Initializing in-memory Core Data database %{public}s", v16, 0xCu);
    sub_100005090(v19);
    v4 = v18;
    v2 = v37;

    v7 = v38;
  }

  (*(v9 + 8))(v12, v8);
  v20 = sub_100001BD0();
  if (!v2)
  {
    v21 = v20;
    v38 = v4;
    v22 = *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName);
    v23 = *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8);
    v24 = objc_allocWithZone(NSPersistentContainer);
    v25 = v21;
    v26 = String._bridgeToObjectiveC()();
    v27 = [v24 initWithName:v26 managedObjectModel:v25];

    v28 = [objc_allocWithZone(NSPersistentStoreDescription) init];
    [v28 setType:NSInMemoryStoreType];
    sub_100004E70(&qword_100200220, &unk_1001AA540);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1001AA180;
    *(v29 + 32) = v28;
    sub_1000050DC();
    v30 = v28;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 setPersistentStoreDescriptions:isa];

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v3;
    aBlock[4] = sub_1000051D0;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003914;
    aBlock[3] = &unk_1001F4558;
    v34 = _Block_copy(aBlock);

    [v27 loadPersistentStoresWithCompletionHandler:v34];
    _Block_release(v34);
    swift_beginAccess();
    if (!*(v32 + 16))
    {

      return v27;
    }

    v35 = *(v32 + 16);
    swift_willThrow();
    swift_errorRetain();

    v4 = v38;
  }

  v27 = 0x80000001001B1B30;
  (*(v40 + 104))(v7, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v27;
}

char *sub_100002C1C()
{
  v2 = v1;
  v3 = v0;
  v39 = type metadata accessor for DIPError.Code();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = v4;
    v18 = v17;
    v40 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10010150C(*(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName), *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8), &v40);
    _os_log_impl(&_mh_execute_header, v13, v14, "Initializing on-disk Core Data database %{public}s", v16, 0xCu);
    sub_100005090(v18);
    v2 = v1;
    v4 = v37;

    v7 = v38;
  }

  (*(v9 + 8))(v12, v8);
  v19 = sub_100001BD0();
  if (v2)
  {
    v20 = "Error";
    (*(v4 + 104))(v7, enum case for DIPError.Code.internalError(_:), v39);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v21 = v19;
    v22 = *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName);
    v23 = *(v3 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8);
    v24 = objc_allocWithZone(NSPersistentContainer);
    v25 = v21;
    v26 = String._bridgeToObjectiveC()();
    v20 = [v24 initWithName:v26 managedObjectModel:v25];

    v27 = objc_allocWithZone(NSPersistentStoreDescription);
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v31 = [v27 initWithURL:v29];

    [v31 setType:NSSQLiteStoreType];
    [v31 setShouldInferMappingModelAutomatically:1];
    [v31 setShouldMigrateStoreAutomatically:1];
    [v31 setTimeout:10.0];
    sub_100004E70(&qword_100200220, &unk_1001AA540);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1001AA180;
    *(v32 + 32) = v31;
    sub_1000050DC();
    v33 = v31;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setPersistentStoreDescriptions:isa];
  }

  return v20;
}

uint64_t sub_1000030FC(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(char *, void, uint64_t), uint64_t a6)
{
  v64 = a3;
  v65 = a6;
  v63 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.Code();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URLResourceValues();
  v19 = *(v18 - 8);
  v61 = v18;
  v62 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v13;
  if (a2)
  {
    v63 = *(v14 + 104);
    v63(v17, enum case for DIPError.Code.coreDataErrorDiskContainerFailedToLoadPersistentStore(_:), v13);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v64 = 0x80000001001B1A40;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_10:
    v63(v17, enum case for DIPError.Code.internalError(_:), v66);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
    v51 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    v52 = v65;
    swift_beginAccess();
    v53 = *(v52 + 16);
    *(v52 + 16) = v51;
  }

  v57 = v8;
  v58 = a4;
  v55 = v12;
  v56 = v9;
  v29 = v25;
  v30 = v26;
  (*(v26 + 16))(v28, v64, v25);
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  URL.setResourceValues(_:)();
  v59 = v30;
  v60 = v29;
  v64 = v22;
  v54 = v28;
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v67[0] = 0;
  v34 = [v32 setResourceValue:v58 forKey:NSURLFileProtectionKey error:v67];

  if (!v34)
  {
    v48 = v67[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v49 = v64;
    v50 = v54;
    v58 = "URL:urlFileProtection:)";
    v63 = *(v14 + 104);
    v63(v17, enum case for DIPError.Code.coreDataErrorDiskContainerFailedSetResourceValues(_:), v66);
    swift_errorRetain();
    v57 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v64 = 0x80000001001B1A40;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v62 + 8))(v49, v61);
    (*(v59 + 8))(v50, v60);
    goto LABEL_10;
  }

  v35 = v67[0];
  v36 = v55;
  defaultLogger()();
  v37 = v63;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v67[0] = v41;
    *v40 = 136446210;
    v42 = [v37 name];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10010150C(v43, v45, v67);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "Done initializing %{public}s database", v40, 0xCu);
    sub_100005090(v41);
  }

  (*(v56 + 8))(v36, v57);
  (*(v62 + 8))(v64, v61);
  return (*(v59 + 8))(v54, v60);
}

void sub_100003914(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1000039A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  if (a2)
  {
    (*(v15 + 104))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.coreDataErrorMemoryContainerInitializationFailed(_:));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
    v16 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_beginAccess();
    v17 = *(a3 + 16);
    *(a3 + 16) = v16;
  }

  else
  {
    defaultLogger()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_10010150C(*(a4 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName), *(a4 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8), &v24);
      _os_log_impl(&_mh_execute_header, v19, v20, "Done initializing %{public}s database", v21, 0xCu);
      sub_100005090(v22);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_100003CEC()
{
  v1 = OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_modelURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_databaseURL, v2);
  v4 = *(v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName + 8);

  v5 = *(v0 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore__container);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AsyncCoreDataStore()
{
  result = qword_100200038;
  if (!qword_100200038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003E40()
{
  result = type metadata accessor for URL();
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

uint64_t getEnumTagSinglePayload for AsyncCoreDataStore.StoreType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AsyncCoreDataStore.StoreType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000040CC()
{
  result = qword_100200170;
  if (!qword_100200170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200170);
  }

  return result;
}

uint64_t sub_100004128(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000041A0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004220@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100004264@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10000429C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1000042F4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100004340()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100004398()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100004414()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100004488()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_1000044F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100004520@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000045E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000462C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004658(uint64_t a1)
{
  v2 = sub_1000047A4(&qword_100200190, type metadata accessor for URLFileProtection);
  v3 = sub_1000047A4(&qword_100200198, type metadata accessor for URLFileProtection);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000047A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000047F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100004864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000563C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000048A4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000048E0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004934()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000049A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100004A78(void *a1, uint64_t a2, void *a3)
{
  v31 = a3;
  v29 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v28 = (v11 + 16);
  (*(v8 + 16))(v10, a2, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v12, v10, v7);
  v16 = v31;
  *(v15 + v13) = v31;
  v17 = v29;
  *(v15 + v14) = v29;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;
  aBlock[4] = sub_100004FB4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003914;
  aBlock[3] = &unk_1001F4508;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = v17;

  [v20 loadPersistentStoresWithCompletionHandler:v18];
  _Block_release(v18);
  v21 = v28;
  swift_beginAccess();
  if (!*v21)
  {
  }

  v22 = *v21;
  swift_willThrow();
  swift_errorRetain();

  (*(v25 + 104))(v27, enum case for DIPError.Code.internalError(_:), v26);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000047A4(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100004E70(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004EB8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004EF0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_100004FB4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000030FC(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t sub_100005078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005090(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000050DC()
{
  result = qword_100200228;
  if (!qword_100200228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100200228);
  }

  return result;
}

uint64_t sub_100005128(uint64_t a1)
{
  v2 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005190()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000534C(uint64_t a1, int a2)
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

uint64_t sub_10000536C(uint64_t result, int a2, int a3)
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

void sub_1000053F8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000563C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1000056A4()
{
  qword_100200390 = 5653577;
  *algn_100200398 = 0xE300000000000000;
  qword_1002003A0 = 7105601;
  unk_1002003A8 = 0xE300000000000000;
  qword_1002003B0 = 958738;
}

void sub_1000056D8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  type metadata accessor for TapToRadarService();
  v2 = static TapToRadarService.shared.getter();
  TapToRadarService.createDraft(_:processName:displayReason:)();
}

void sub_100005918()
{
  if (_isInternalBuild.getter())
  {
    v0 = !&class metadata base offset for TapToRadarService || &type metadata accessor for TapToRadarService == 0;
    v1 = v0 || &nominal type descriptor for TapToRadarService == 0;
    if (!v1 && &type metadata for TapToRadarService != 0)
    {
      v3 = [objc_allocWithZone(RadarDraft) init];
      v4 = String._bridgeToObjectiveC()();
      [v3 setTitle:v4];

      _StringGuts.grow(_:)(78);
      v5._countAndFlagsBits = 0xD00000000000003BLL;
      v5._object = 0x80000001001B1BB0;
      String.append(_:)(v5);
      v6._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v6);

      v7._countAndFlagsBits = 0x6465726F7453202CLL;
      v7._object = 0xEF203A6873614820;
      String.append(_:)(v7);
      v8._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v8);

      v9 = String._bridgeToObjectiveC()();

      [v3 setProblemDescription:{v9, 0, 0xE000000000000000}];

      if (qword_1001FFFB0 != -1)
      {
        swift_once();
      }

      v10 = qword_1002003B0;
      v11 = objc_allocWithZone(RadarComponent);
      v12 = String._bridgeToObjectiveC()();
      v13 = String._bridgeToObjectiveC()();
      v14 = [v11 initWithName:v12 version:v13 identifier:v10];

      [v3 setComponent:v14];
      [v3 setClassification:2];
      [v3 setReproducibility:6];
      [v3 setAutoDiagnostics:5];
      v15 = type metadata accessor for Date();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64);
      __chkstk_darwin(v15);
      v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v16 + 8))(v19, v15);
      [v3 setTimeOfIssue:isa];

      sub_1000056D8();
    }
  }
}

uint64_t sub_100005CA8(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002003B8, &unk_1001AB850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005D10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100005E38, 0, 0);
}

uint64_t sub_100005E38()
{
  v1 = v0[2];
  if (v1 == 2)
  {
    v9 = v0[9];
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Credential uses global binding policy", v12, 2u);
    }

    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    v16 = v0[3];

    (*(v14 + 8))(v13, v15);
    v17 = *(v16 + 16);
    v18 = swift_task_alloc();
    v0[11] = v18;
    *v18 = v0;
    v18[1] = sub_100006214;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {
    if (v1 == 1)
    {
      v2 = v0[10];
      defaultLogger()();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Credential uses anyBiometricOrPasscode policy", v5, 2u);
      }

      v6 = v0[10];
      v7 = v0[7];
      v8 = v0[8];

      (*(v8 + 8))(v6, v7);
      v20 = sub_100008ED4(0x40000001uLL, 1);
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xF000000000000000;
    }

    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[6];

    v26 = v0[1];

    return v26(v20, v22);
  }
}

uint64_t sub_100006214(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1000065DC;
  }

  else
  {
    v5 = sub_100006328;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006328()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [*(v0 + 96) aclData];
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 48);

    v9 = *(v0 + 8);

    return v9(v3, v5);
  }

  else
  {
    (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 32));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v12 = *(v0 + 80);
    v13 = *(v0 + 72);
    (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.internalError(_:), *(v0 + 32));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000065DC()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100006750(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100006810, 0, 0);
}

uint64_t sub_100006810()
{
  if (v0[2] == 2)
  {
    v1 = *(v0[3] + 16);
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10000690C;

    return sub_100137B2C(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {
    v4 = v0[6];

    v5 = v0[1];

    return v5(0, 0xF000000000000000);
  }
}

uint64_t sub_10000690C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[6];

    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    v6[8] = a2;
    v6[9] = a1;

    return _swift_task_switch(sub_100006A70, 0, 0);
  }
}

uint64_t sub_100006A70()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[6];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[9];
    v6 = v0[6];

    v7 = v0[1];

    return v7(v5, v1);
  }
}

uint64_t sub_100006C38()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100006D6C, 0, 0);
}

uint64_t sub_100006D6C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100006E18;

  return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
}

uint64_t sub_100006E18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_100007360;
  }

  else
  {
    v5 = sub_100006F2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006F2C()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [*(v0 + 96) aclType];
    if (v2 == 2)
    {
      v4 = (v0 + 72);
      v12 = *(v0 + 72);
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        v26 = *v4;
        v7 = 1;
        goto LABEL_17;
      }

      v7 = 1;
      v8 = "Device encryption scenario is phonePasscode";
    }

    else if (v2 == 1)
    {
      v4 = (v0 + 80);
      v3 = *(v0 + 80);
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      v7 = 0;
      if (!os_log_type_enabled(v5, v6))
      {
        v26 = *v4;
        goto LABEL_17;
      }

      v8 = "Device encryption scenario is phoneBiometricBinding";
    }

    else
    {
      v4 = (v0 + 64);
      v13 = *(v0 + 64);
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        v26 = *v4;
        v7 = 4;
        goto LABEL_17;
      }

      v7 = 4;
      v8 = "Device encryption scenario is unknown (phone)";
    }

    v26 = *v4;
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, v8, v14, 2u);

LABEL_17:
    v15 = v5;
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);

    (*(v18 + 8))(v26, v20);

    v22 = *(v0 + 8);

    return v22(v7);
  }

  v25 = *(*(v0 + 32) + 104);
  v25(*(v0 + 40), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 24));
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v23 = *(v0 + 80);
  v24 = *(v0 + 72);
  v9 = *(v0 + 64);
  v25(*(v0 + 40), enum case for DIPError.Code.internalError(_:), *(v0 + 24));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100007360()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v6 = v0[8];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000074F0()
{
  v1[4] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000760C, 0, 0);
}

uint64_t sub_10000760C()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ACLFetcher payloadEncryptionKeyACL", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_10000773C;
  v9 = v0[4];

  return sub_100006C38();
}

uint64_t sub_10000773C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_100007C4C;
  }

  else
  {
    *(v4 + 105) = a1;
    v7 = sub_100007864;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100007864()
{
  v1 = *(v0 + 105);
  if (v1 >= 4)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    _StringGuts.grow(_:)(38);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v8._countAndFlagsBits = 0xD000000000000024;
    v8._object = 0x80000001001B1DF0;
    String.append(_:)(v8);
    *(v0 + 104) = 4;
    _print_unlocked<A, B>(_:_:)();
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    (*(v6 + 104))(v5, enum case for DIPError.Code.idcsUnknownDeviceEncryptionScenario(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 32);
  v4 = v3[7];
  sub_100009278(v3 + 3, v3[6]);
  v11 = dispatch thunk of AppleIDVManaging.prepareACL(aclType:aclUsage:bioUUID:)();
  if (v2)
  {
LABEL_5:
    v13 = *(v0 + 80);
    (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for DIPError.Code.internalError(_:), *(v0 + 40));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }

  v16 = v12;
  v17 = v11;
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);

  v20 = *(v0 + 8);

  return v20(v17, v16);
}

uint64_t sub_100007C4C()
{
  v1 = v0[12];
  v2 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100007DC4()
{
  v1[4] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100007F48, 0, 0);
}

uint64_t sub_100007F48()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ACLFetcher payloadAccessACL", v4, 2u);
  }

  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100008078;
  v9 = v0[4];

  return sub_100006C38();
}

uint64_t sub_100008078(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_100008C90;
  }

  else
  {
    *(v4 + 169) = a1;
    v7 = sub_1000081A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000081A0()
{
  v1 = *(v0 + 169);
  if (v1 <= 1)
  {
    if (!*(v0 + 169))
    {
      v2 = *(*(v0 + 32) + 16);
      v3 = swift_task_alloc();
      *(v0 + 136) = v3;
      *v3 = v0;
      v3[1] = sub_100008614;

      return sub_100138978(0xD000000000000012, 0x80000001001B18B0);
    }
  }

  else if (v1 != 2 && v1 != 3)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    _StringGuts.grow(_:)(38);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v8._countAndFlagsBits = 0xD000000000000024;
    v8._object = 0x80000001001B1DF0;
    String.append(_:)(v8);
    *(v0 + 168) = 4;
    _print_unlocked<A, B>(_:_:)();
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    (*(v6 + 104))(v5, enum case for DIPError.Code.idcsUnknownDeviceEncryptionScenario(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_12:
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);
    v26 = *(v0 + 80);
    (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for DIPError.Code.internalError(_:), *(v0 + 40));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  v11 = *(v0 + 128);
  v12 = *(v0 + 32);
  v13 = v12[7];
  sub_100009278(v12 + 3, v12[6]);
  v14 = dispatch thunk of AppleIDVManaging.prepareACL(aclType:aclUsage:bioUUID:)();
  if (v11)
  {
    goto LABEL_12;
  }

  v19 = v15;
  v20 = v14;
  v21 = *(v0 + 112);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 56);

  v25 = *(v0 + 8);

  return v25(v20, v19);
}

uint64_t sub_100008614(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 136);
  v7 = *v3;
  v5[18] = a1;
  v5[19] = v2;

  if (v2)
  {
    v8 = sub_100008B08;
  }

  else
  {
    v5[20] = a2;
    v8 = sub_10000873C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000873C()
{
  v1 = v0[18];
  if (v0[20] < 1 || !*(v1 + 16))
  {

    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_6:
    v16 = v0[14];
    v17 = v0[11];
    v25 = v0[10];
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  v2 = v0[19];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[4];
  v8 = v0[18];
  (*(v6 + 16))(v3, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v4, v3, v5);
  v9 = v7[7];
  sub_100009278(v7 + 3, v7[6]);
  v10 = UUID.data.getter();
  v12 = v11;
  v13 = dispatch thunk of AppleIDVManaging.prepareACL(aclType:aclUsage:bioUUID:)();
  v15 = v14;
  (*(v0[9] + 8))(v0[11], v0[8]);
  sub_1000092BC(v10, v12);
  if (v2)
  {
    goto LABEL_6;
  }

  v20 = v0[14];
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[7];

  v24 = v0[1];

  return v24(v13, v15);
}

uint64_t sub_100008B08()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[11];
  v6 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100008C90()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v6 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100008E18()
{
  v1 = *(v0 + 16);

  sub_100005090((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_100008E7C()
{
  result = qword_100200200;
  if (!qword_100200200)
  {
    type metadata accessor for DIPError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200200);
  }

  return result;
}

const char *sub_100008ED4(SecAccessControlCreateFlags a1, char a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v9 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, a1, &error);
  if (v9)
  {
    v10 = v9;
    v11 = sub_10010CA84(_swiftEmptyArrayStorage);
    if (a2)
    {
      v12 = sub_10010CBB4(&off_1001F3E88);
      sub_10000A0D4(&unk_1001F3EA8, &qword_100200468, &qword_1001AAE98);
      v24 = sub_100004E70(&qword_1002018D0, &qword_1001AAEA0);
      *&v23 = v12;
      sub_100009268(&v23, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v11;
      sub_100121664(v22, 1852273519, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      v11 = v21;
    }

    if (*(v11 + 16))
    {
      v14 = v10;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SecAccessControlSetConstraints();
    }

    else
    {
    }

    v17 = SecAccessControlCopyData();
    if (v17)
    {
      v18 = v17;
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      (*(v5 + 104))(v8, enum case for DIPError.Code.systemSecError(_:), v4);
      v16 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    v16 = "presentmentACL(forPolicy:)";
    (*(v5 + 104))(v8, enum case for DIPError.Code.internalError(_:), v4);
    errorFromCFError(_:_:_:)();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();
  }

  return v16;
}

_OWORD *sub_100009268(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100009278(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000092BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

SecAccessControlRef sub_100009310(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v9 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (v9)
  {
    sub_100004E70(&qword_100200470, &qword_1001AAEC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AAE50;
    *(inited + 32) = 1818584175;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 1852273519;
    *(inited + 88) = 0xE400000000000000;
    sub_100004E70(&qword_100200478, &qword_1001AAEC8);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1001AA160;
    *(v11 + 32) = 0x6665726B63;
    *(v11 + 40) = 0xE500000000000000;
    *(v11 + 48) = a1;
    *(v11 + 56) = a2;
    sub_100009708(a1, a2);
    v12 = sub_10010CCC8(v11);
    swift_setDeallocating();
    sub_10000A0D4(v11 + 32, &qword_100200480, &qword_1001AAED0);
    *(inited + 120) = sub_100004E70(&qword_100200488, &qword_1001AAED8);
    *(inited + 96) = v12;
    sub_10010CA84(inited);
    swift_setDeallocating();
    sub_100004E70(&qword_100200490, &unk_1001AAEE0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();
  }

  else
  {
    v14 = *(v5 + 104);
    v14(v8, enum case for DIPError.Code.internalError(_:), v4);
    errorFromCFError(_:_:_:)();
    (*(v5 + 8))(v8, v4);
    v14(v8, enum case for DIPError.Code.systemSecError(_:), v4);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_100009708(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

SecAccessControlRef sub_10000975C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v25 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (v25)
  {
    sub_100004E70(&qword_1002004A0, &qword_1001AAEF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AAE50;
    *(inited + 32) = 0x63666E2C6573;
    *(inited + 40) = 0xE600000000000000;
    sub_100004E70(&qword_100200478, &qword_1001AAEC8);
    v15 = swift_initStackObject();
    v23 = xmmword_1001AA160;
    *(v15 + 16) = xmmword_1001AA160;
    v24 = v4;
    *(v15 + 32) = 0x6665726B63;
    *(v15 + 40) = 0xE500000000000000;
    *(v15 + 48) = a1;
    *(v15 + 56) = a2;
    sub_100009708(a1, a2);
    v16 = sub_10010CCC8(v15);
    swift_setDeallocating();
    sub_10000A0D4(v15 + 32, &qword_100200480, &qword_1001AAED0);
    *(inited + 48) = v16;
    *(inited + 56) = 0x61752C6C612C6573;
    *(inited + 64) = 0xE800000000000000;
    v17 = swift_initStackObject();
    *(v17 + 16) = v23;
    *(v17 + 32) = 0x6665726B63;
    *(v17 + 40) = 0xE500000000000000;
    *(v17 + 48) = a3;
    *(v17 + 56) = a4;
    sub_100009708(a3, a4);
    v18 = sub_10010CCC8(v17);
    swift_setDeallocating();
    sub_10000A0D4(v17 + 32, &qword_100200480, &qword_1001AAED0);
    *(inited + 72) = v18;
    sub_10010CDE0(inited);
    swift_setDeallocating();
    sub_100004E70(&qword_1002004A8, &qword_1001AAEF8);
    swift_arrayDestroy();
    sub_100004E70(&qword_100200488, &qword_1001AAED8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = v25;
    SecAccessControlSetConstraints();

    return v20;
  }

  else
  {
    v22 = *(v10 + 104);
    v22(v13, enum case for DIPError.Code.internalError(_:), v9);
    errorFromCFError(_:_:_:)();
    (*(v10 + 8))(v13, v9);
    v22(v13, enum case for DIPError.Code.systemSecError(_:), v9);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v25;
  }
}

SecAccessControlRef sub_100009BF8()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v4;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "ACLFetcher SES device encryption key ACL", v12, 2u);
    v4 = v19;
  }

  (*(v6 + 8))(v9, v5);
  error = 0;
  v13 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (v13)
  {
    sub_10010CDF4(&off_1001F3EC8);
    sub_10000A0D4(&unk_1001F3EE8, &qword_100200498, &qword_1001AB600);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();
  }

  else
  {
    LODWORD(v19) = enum case for DIPError.Code.internalError(_:);
    v15 = *(v1 + 104);
    v15(v4);
    v18 = v15;
    errorFromCFError(_:_:_:)();
    (*(v1 + 8))(v4, v0);
    v17[2] = "error creating SecAccessControl";
    (v15)(v4, enum case for DIPError.Code.systemSecError(_:), v0);
    v17[4] = "ing global auth ACL";
    swift_errorRetain();
    v17[1] = sub_10002688C(_swiftEmptyArrayStorage);
    v17[5] = type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v17[3] = 0xD00000000000001BLL;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (v18)(v4, v19, v0);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_10000A0D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004E70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ACLFetcher.PayloadProtectionScenario(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ACLFetcher.PayloadProtectionScenario(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A290()
{
  result = qword_1002004B0;
  if (!qword_1002004B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002004B0);
  }

  return result;
}

double sub_10000A2E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100099644(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100109790();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100009268((*(v12 + 56) + 32 * v9), a3);
    sub_10000A388(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10000A388(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000A53C(uint64_t result, uint64_t a2)
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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

void sub_10000A6EC(uint64_t a1, unint64_t a2, char a3)
{
  v108 = a2;
  v109 = a1;
  v105 = type metadata accessor for DIPError.Code();
  v4 = *(v105 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v105);
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v110 = v7;
  v111 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v100 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v101 = &v97 - v13;
  v14 = __chkstk_darwin(v12);
  v102 = &v97 - v15;
  v16 = __chkstk_darwin(v14);
  v104 = &v97 - v17;
  v18 = __chkstk_darwin(v16);
  v99 = &v97 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v97 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v97 - v24;
  __chkstk_darwin(v23);
  v27 = &v97 - v26;
  v28 = objc_opt_self();
  v29 = [v28 standardUserDefaults];
  v30._object = 0x80000001001B2030;
  v30._countAndFlagsBits = 0xD000000000000029;
  v31 = NSUserDefaults.internalBool(forKey:)(v30);

  v103 = v28;
  if (v31)
  {
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      v38 = 0;
      goto LABEL_10;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Forcing shouldHaveOACL to false due to internal defaults setting", v34, 2u);
  }

  else
  {
    v35 = [v28 standardUserDefaults];
    v36._countAndFlagsBits = 0xD00000000000002ALL;
    v36._object = 0x80000001001B2060;
    v37 = NSUserDefaults.internalBool(forKey:)(v36);

    v38 = a3;
    if (!v37)
    {
      goto LABEL_11;
    }

    defaultLogger()();
    v32 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v32, v39))
    {
      v38 = 1;
      v27 = v25;
      goto LABEL_10;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v32, v39, "Forcing shouldHaveOACL to true due to internal defaults setting", v40, 2u);
    v27 = v25;
  }

  v38 = !v31;

LABEL_10:

  (*(v111 + 1))(v27, v110);
LABEL_11:
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67109120;
    *(v43 + 4) = v38 & 1;
    _os_log_impl(&_mh_execute_header, v41, v42, "ACLMigrator migrateOACLOperation shouldHaveOACL? %{BOOL}d", v43, 8u);
  }

  v45 = v111 + 8;
  v44 = *(v111 + 1);
  v46 = v22;
  v47 = v110;
  v44(v46, v110);
  type metadata accessor for SecAccessControl(0);
  v48 = v107;
  v49 = static SecAccessControlRef.fromData(_:)();
  if (v48)
  {
    (*(v4 + 104))(v106, enum case for DIPError.Code.internalError(_:), v105);
LABEL_33:
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v111 = v45;
  v50 = v49;
  Constraints = SecAccessControlGetConstraints();
  v52 = v50;
  v107 = v50;
  if (!Constraints)
  {
    goto LABEL_28;
  }

  v52 = Constraints;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_28;
  }

  *&v114 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v53 = v114;
  v52 = v50;
  if (!v114)
  {
LABEL_28:

    v111 = "tion(for:shouldHaveOACL:)";
    v69 = *(v4 + 104);
    v70 = v105;
    v71 = v106;
    v69(v106, enum case for DIPError.Code.secAccessControlCannotGetConstraints(_:), v105);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_32:

    v69(v71, enum case for DIPError.Code.internalError(_:), v70);
    goto LABEL_33;
  }

  v116 = v114;
  v54 = *(v114 + 16);
  v98 = v114;
  if (!v54)
  {
    goto LABEL_29;
  }

  v55 = sub_100099644(1852273519, 0xE400000000000000);
  if ((v56 & 1) == 0)
  {

    goto LABEL_31;
  }

  sub_10000B558(*(v53 + 56) + 32 * v55, &v114);
  v57 = sub_100004E70(&qword_1002004B8, &qword_1001AAF98);
  v58 = swift_dynamicCast();
  v50 = v107;
  if ((v58 & 1) == 0)
  {
LABEL_29:

LABEL_31:
    v70 = v105;
    v71 = v106;
    v111 = "unable to get acl constraints";
    v69 = *(v4 + 104);
    v69(v106, enum case for DIPError.Code.idcsInvalidACL(_:), v105);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_32;
  }

  if (v38)
  {
    v59 = v98;
    v60 = v103;
    v61 = *&v113[0];
    if (*(v98 + 16))
    {
      v62 = sub_100099644(1818452335, 0xE400000000000000);
      if (v63)
      {
        sub_10000B558(*(v59 + 56) + 32 * v62, &v114);
        if (swift_dynamicCast())
        {

          v50 = v107;

          v64 = v99;
          defaultLogger()();
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            v68 = "ACL contains oacl dictionary, no migration needed";
LABEL_49:
            _os_log_impl(&_mh_execute_header, v65, v66, v68, v67, 2u);

            v96 = v50;
LABEL_51:

            v44(v64, v47);
            sub_100009708(v109, v108);

            return;
          }

          goto LABEL_50;
        }
      }
    }

    v79 = v60;
    defaultLogger()();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Adding oacl operation to acl", v82, 2u);
      v47 = v110;
    }

    v44(v104, v47);
    *(&v115 + 1) = v57;
    *&v114 = v61;
    sub_100009268(&v114, v113);

    v83 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v83;
    sub_100121664(v113, 1818452335, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v116 = v112;
    v85 = [v79 standardUserDefaults];
    v86._countAndFlagsBits = 0xD000000000000021;
    v86._object = 0x80000001001B2130;
    v87 = NSUserDefaults.internalBool(forKey:)(v86);

    if (v87)
    {
      defaultLogger()();
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Setting OACL to true due to internal defaults setting", v90, 2u);
      }

      v44(v102, v47);
      *(&v115 + 1) = &type metadata for Bool;
      LOBYTE(v114) = 1;
      sub_100009268(&v114, v113);
      v91 = v116;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v91;
      sub_100121664(v113, 1818452335, 0xE400000000000000, v92);
    }
  }

  else
  {
    v72 = v98;
    if (!*(v98 + 16) || (v73 = sub_100099644(1818452335, 0xE400000000000000), v50 = v107, (v74 & 1) == 0))
    {
      v114 = 0u;
      v115 = 0u;

      sub_10000B5B4(&v114);
      v64 = v101;
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        v68 = "ACL does not contain oacl dictionary, no migration needed";
        goto LABEL_49;
      }

LABEL_50:
      v96 = v65;
      v65 = v50;
      goto LABEL_51;
    }

    sub_10000B558(*(v72 + 56) + 32 * v73, &v114);
    sub_10000B5B4(&v114);
    v75 = v100;
    defaultLogger()();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Removing oacl operation from acl", v78, 2u);
    }

    v44(v75, v47);
    sub_10000A2E4(1818452335, 0xE400000000000000, &v114);
    sub_10000B5B4(&v114);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v94 = v107;
  SecAccessControlSetConstraints();

  v95 = SecAccessControlCopyData();
  if (v95)
  {

    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000B558(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B5B4(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002004C0, &unk_1001AB940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10000B61C()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v44 = 0;
  v12 = SecAccessControlCreate();
  v13 = v12;
  v14 = v44;
  if (v12)
  {
    if (!v44)
    {
      v15 = sub_10010CA84(_swiftEmptyArrayStorage);
      v43 = &type metadata for Bool;
      LOBYTE(v42) = 1;
      sub_100009268(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_100121664(v41, 1852273519, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      v17 = v40;
      v43 = &type metadata for Bool;
      LOBYTE(v42) = 1;
      sub_100009268(&v42, v41);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v17;
      sub_100121664(v41, 1818452335, 0xE400000000000000, v18);
      v19 = v13;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SecAccessControlSetConstraints();

      return v13;
    }

    goto LABEL_5;
  }

  if (v44)
  {
LABEL_5:
    v36 = v5;
    v37 = v4;
    v38 = v12;
    type metadata accessor for CFError(0);
    sub_10000BFD4(&qword_1002004C8, type metadata accessor for CFError);
    swift_allocError();
    *v21 = v14;
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v42 = v35;
      *v24 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = v1;
      v28 = v0;
      v29 = sub_10010150C(v25, v26, &v42);

      *(v24 + 4) = v29;
      v0 = v28;
      v1 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to create empty ACL due to error: %s", v24, 0xCu);
      sub_100005090(v35);
    }

    (*(v39 + 8))(v11, v36);
    (*(v1 + 104))(v37, enum case for DIPError.Code.secAccessControlCannotCreateACL(_:), v0);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v38;

    return v13;
  }

  v31 = v5;
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unable to create empty ACL.", v34, 2u);
  }

  (*(v39 + 8))(v9, v31);
  (*(v1 + 104))(v4, enum case for DIPError.Code.secAccessControlCannotCreateACL(_:), v0);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return v13;
}

void sub_10000BD0C(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000B61C();
  if (v1)
  {
    goto LABEL_2;
  }

  v9 = v8;
  sub_10010CEF0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = 0;
  v11 = [a1 evaluateAccessControl:v9 operation:3 options:isa error:&v14];

  if (!v11)
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_2:
    (*(v4 + 104))(v7, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BFD4(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v12 = v14;
}

uint64_t sub_10000BFD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C020()
{
  v0 = type metadata accessor for ISO18013KnownNamespaces();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v0);
  v5 = ISO18013KnownNamespaces.rawValue.getter();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_100205C60 = v5;
  *algn_100205C68 = v7;
  return result;
}

uint64_t sub_10000C120()
{
  v0 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001AAE50;
  v9 = v1[13];
  v9(v7, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v0);
  v10 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v12 = v11;
  v13 = v1[1];
  v13(v7, v0);
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v9(v5, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v0);
  v14 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v16 = v15;
  result = (v13)(v5, v0);
  *(v8 + 48) = v14;
  *(v8 + 56) = v16;
  qword_100205C70 = v8;
  return result;
}

unint64_t sub_10000C2C8()
{
  v0 = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
  v2 = v1;
  v3 = &_swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = &_swiftEmptyDictionarySingleton;
  result = sub_100101B90(1);
  v7 = *(&_swiftEmptyDictionarySingleton + 2);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    qword_100205C78 = v3;
    return result;
  }

  v11 = v6;
  v12 = 2;
  while (v3[3] < v10)
  {
    sub_100108180(v10, isUniquelyReferenced_nonNull_native & 1);
    result = sub_100101B90(v12 - 1);
    if ((v11 & 1) != (v13 & 1))
    {
      goto LABEL_18;
    }

LABEL_7:
    v3 = v24;
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v14 = (v3[7] + 16 * result);
    v15 = v14[1];
    *v14 = v0;
    v14[1] = v2;

    if (v12 == 101)
    {
      goto LABEL_16;
    }

LABEL_13:
    v0 = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
    v2 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v3;
    result = sub_100101B90(v12);
    v11 = v21;
    v22 = v3[2];
    v23 = (v21 & 1) == 0;
    ++v12;
    v9 = __OFADD__(v22, v23);
    v10 = v22 + v23;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

  v16 = result;
  sub_100109934();
  result = v16;
  v3 = v24;
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_11:
  v3[(result >> 6) + 8] |= 1 << result;
  *(v3[6] + 8 * result) = v12 - 1;
  v17 = (v3[7] + 16 * result);
  *v17 = v0;
  v17[1] = v2;
  v18 = v3[2];
  v9 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (!v9)
  {
    v3[2] = v19;
    if (v12 == 101)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10000C480()
{
  sub_100004E70(&qword_1002004E8, &unk_1001AE010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA160;
  if (qword_1001FFFB8 != -1)
  {
    swift_once();
  }

  v1 = *algn_100205C68;
  *(inited + 32) = qword_100205C60;
  *(inited + 40) = v1;
  v2 = qword_1001FFFC0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_100205C70;
  v4 = qword_1001FFFC8;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_1000FC660(v5);
  *(inited + 48) = v3;
  v6 = sub_10010D02C(inited);
  swift_setDeallocating();
  sub_10000A0D4(inited + 32, &qword_1002004F0, &unk_1001AE020);
  return v6;
}

uint64_t sub_10000C5DC(void *a1)
{
  v188 = type metadata accessor for Logger();
  v187 = *(v188 - 8);
  v2 = *(v187 + 64);
  __chkstk_darwin(v188);
  v189 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v172 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v166 - v9;
  v180 = type metadata accessor for Calendar.Component();
  v176 = *(v180 - 8);
  v11 = *(v176 + 64);
  __chkstk_darwin(v180);
  v175 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for Calendar();
  v182 = *(v179 - 8);
  v13 = *(v182 + 64);
  __chkstk_darwin(v179);
  v178 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v171 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v170 = &v166 - v20;
  __chkstk_darwin(v19);
  v184 = &v166 - v21;
  v185 = type metadata accessor for Date();
  v186 = *(v185 - 8);
  v22 = *(v186 + 64);
  v23 = __chkstk_darwin(v185);
  v173 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v177 = &v166 - v26;
  v27 = __chkstk_darwin(v25);
  v174 = &v166 - v28;
  __chkstk_darwin(v27);
  v181 = &v166 - v29;
  v191 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v192 = *(v191 - 8);
  v30 = *(v192 + 64);
  v31 = __chkstk_darwin(v191);
  v183 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v190 = &v166 - v33;
  v204 = type metadata accessor for AnyCodable();
  v34 = *(v204 - 8);
  v35 = v34[8];
  __chkstk_darwin(v204);
  v203 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for ISO18013IssuerSignedItem();
  v37 = *(v202 - 1);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v202);
  v201 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  *&v200 = &v166 - v41;
  v207 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v205 = *(v207 - 1);
  v42 = *(v205 + 64);
  __chkstk_darwin(v207);
  v44 = &v166 - v43;
  if (qword_1001FFFB8 != -1)
  {
    goto LABEL_25;
  }

  while (a1[2])
  {
    v45 = sub_100099644(qword_100205C60, *algn_100205C68);
    if ((v46 & 1) == 0)
    {
      break;
    }

    v47 = *(a1[7] + 8 * v45);
    v199 = *(v47 + 16);
    if (!v199)
    {
      v34 = _swiftEmptyDictionarySingleton;
      goto LABEL_27;
    }

    v167 = v10;
    v168 = v5;
    v169 = v4;
    v198 = (v47 + ((*(v205 + 80) + 32) & ~*(v205 + 80)));
    v197 = v205 + 16;
    v196 = (v37 + 8);
    v195 = (v34 + 1);
    v194 = (v205 + 8);

    v49 = 0;
    v34 = _swiftEmptyDictionarySingleton;
    v193 = v48;
    v10 = v196;
    v50 = v201;
    while (v49 < *(v48 + 16))
    {
      v52 = *(v205 + 72);
      v206 = v49;
      (*(v205 + 16))(v44, v198 + v52 * v49, v207);
      v53 = v200;
      CBOREncodedCBOR.value.getter();
      v54 = ISO18013IssuerSignedItem.elementIdentifier.getter();
      v5 = v55;
      v56 = *v10;
      v57 = v202;
      (*v10)(v53, v202);
      v37 = v54;
      CBOREncodedCBOR.value.getter();
      v58 = v203;
      ISO18013IssuerSignedItem.elementValue.getter();
      v56(v50, v57);
      AnyCodable.value.getter();
      (*v195)(v58, v204);
      sub_100009268(&v210, &v209);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v208 = v34;
      a1 = v34;
      v4 = sub_100099644(v37, v5);
      v61 = v34[2];
      v62 = (v60 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_23;
      }

      v64 = v60;
      if (v34[3] >= v63)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v60 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          a1 = &v208;
          sub_100109790();
          if ((v64 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_100107EC8(v63, isUniquelyReferenced_nonNull_native);
        a1 = v208;
        v65 = sub_100099644(v37, v5);
        if ((v64 & 1) != (v66 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v4 = v65;
        if ((v64 & 1) == 0)
        {
LABEL_16:
          v34 = v208;
          v208[(v4 >> 6) + 8] |= 1 << v4;
          v67 = (v34[6] + 16 * v4);
          *v67 = v37;
          v67[1] = v5;
          sub_100009268(&v209, (v34[7] + 32 * v4));
          (*v194)(v44, v207);
          v68 = v34[2];
          v69 = __OFADD__(v68, 1);
          v70 = v68 + 1;
          if (v69)
          {
            goto LABEL_24;
          }

          v34[2] = v70;
          goto LABEL_7;
        }
      }

      v34 = v208;
      v51 = (v208[7] + 32 * v4);
      sub_100005090(v51);
      sub_100009268(&v209, v51);
      (*v194)(v44, v207);
LABEL_7:
      v49 = v206 + 1;
      v48 = v193;
      if (v199 == v206 + 1)
      {

        v4 = v169;
        v5 = v168;
        v10 = v167;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v34 = sub_10010CA84(_swiftEmptyArrayStorage);
LABEL_27:
  v71 = v192;
  v72 = v190;
  v73 = v191;
  v207 = *(v192 + 104);
  (v207)(v190, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v191);
  v74 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v76 = v75;
  v78 = *(v71 + 8);
  v77 = v71 + 8;
  v206 = v78;
  (v78)(v72, v73);
  if (!v34[2])
  {

    goto LABEL_46;
  }

  v79 = sub_100099644(v74, v76);
  v81 = v80;

  if ((v81 & 1) == 0 || (sub_10000B558(v34[7] + 32 * v79, &v210), (swift_dynamicCast() & 1) == 0))
  {
LABEL_46:
    v100 = v189;
    defaultLogger()();

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v210 = v104;
      *v103 = 136315138;
      v105 = Dictionary.description.getter();
      v107 = v106;

      v108 = sub_10010150C(v105, v107, &v210);

      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v101, v102, "Elements were not present to evaluate age data consistency: %s", v103, 0xCu);
      sub_100005090(v104);
    }

    else
    {
    }

    (*(v187 + 8))(v100, v188);
    return 0;
  }

  v192 = v77;
  v167 = v10;
  v168 = v5;
  v169 = v4;
  v204 = v209;
  if (qword_1001FFFC8 != -1)
  {
LABEL_74:
    swift_once();
  }

  v82 = qword_100205C78;
  v83 = qword_100205C78 + 64;
  v84 = 1 << *(qword_100205C78 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(qword_100205C78 + 64);
  v87 = (v84 + 63) >> 6;

  v88 = 0;
  while (v86)
  {
    v89 = v86;
LABEL_40:
    v86 = (v89 - 1) & v89;
    if (v34[2])
    {
      v91 = __clz(__rbit64(v89)) | (v88 << 6);
      v92 = *(v82 + 56);
      v205 = *(*(v82 + 48) + 8 * v91);
      v93 = (v92 + 16 * v91);
      v94 = *v93;
      v95 = v93[1];

      v96 = sub_100099644(v94, v95);
      v98 = v97;

      if (v98)
      {
        sub_10000B558(v34[7] + 32 * v96, &v210);
        if ((swift_dynamicCast() & 1) != 0 && (((v204 < v205) ^ v209) & 1) == 0)
        {

          return 1;
        }
      }
    }
  }

  while (1)
  {
    v90 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v90 >= v87)
    {
      break;
    }

    v89 = *(v83 + 8 * v90);
    ++v88;
    if (v89)
    {
      v88 = v90;
      goto LABEL_40;
    }
  }

  v109 = v183;
  v110 = v191;
  (v207)(v183, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v191);
  v111 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v113 = v112;
  v206(v109, v110);
  if (!v34[2])
  {

    v117 = v186;
LABEL_60:
    v118 = v184;
    (*(v117 + 56))(v184, 1, 1, v185);
    goto LABEL_61;
  }

  v114 = sub_100099644(v111, v113);
  v116 = v115;

  v117 = v186;
  if ((v116 & 1) == 0)
  {

    goto LABEL_60;
  }

  sub_10000B558(v34[7] + 32 * v114, &v210);

  v118 = v184;
  v119 = v185;
  v120 = swift_dynamicCast();
  (*(v117 + 56))(v118, v120 ^ 1u, 1, v119);
  v121 = *(v117 + 48);
  if (v121(v118, 1, v119) == 1)
  {
LABEL_61:
    sub_10000A0D4(v118, &qword_1002004D0, &unk_1001AE1C0);
    return 0;
  }

  v122 = *(v117 + 32);
  v122(v181, v118, v119);
  v123 = v174;
  Date.init()();
  v201 = v121;
  v124 = v178;
  static Calendar.current.getter();
  v125 = v176;
  v126 = *(v176 + 104);
  v127 = v175;
  LODWORD(v200) = enum case for Calendar.Component.day(_:);
  v128 = v180;
  v207 = (v176 + 104);
  v202 = v126;
  v126(v175);
  v129 = v170;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v205 = *(v125 + 8);
  v206 = (v125 + 8);
  (v205)(v127, v128);
  v130 = v182 + 8;
  v131 = v201;
  v132 = v179;
  v203 = *(v182 + 8);
  (v203)(v124, v179);
  v133 = v131(v129, 1, v119);
  v198 = v122;
  v199 = (v117 + 32);
  if (v133 == 1)
  {
    (*(v186 + 16))(v177, v123, v119);
    if (v131(v129, 1, v119) != 1)
    {
      sub_10000A0D4(v129, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  else
  {
    v122(v177, v129, v119);
  }

  v134 = v178;
  static Calendar.current.getter();
  v135 = v175;
  v136 = v180;
  (v202)(v175, v200, v180);
  v137 = v171;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (v205)(v135, v136);
  (v203)(v134, v132);
  v138 = v201;
  v139 = (v201)(v137, 1, v119);
  v182 = v130;
  if (v139 == 1)
  {
    (*(v186 + 16))(v173, v123, v119);
    if (v138(v137, 1, v119) != 1)
    {
      sub_10000A0D4(v137, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  else
  {
    v198(v173, v137, v119);
  }

  v140 = v178;
  static Calendar.current.getter();
  v201 = sub_100004E70(&qword_1002004E0, &qword_1001AAFA0);
  v141 = *(v176 + 72);
  v142 = (*(v176 + 80) + 32) & ~*(v176 + 80);
  v143 = swift_allocObject();
  v200 = xmmword_1001AA160;
  *(v143 + 16) = xmmword_1001AA160;
  LODWORD(v199) = enum case for Calendar.Component.year(_:);
  v144 = v180;
  v145 = v202;
  (v202)(v143 + v142);
  sub_10010D938(v143);
  swift_setDeallocating();
  (v205)(v143 + v142, v144);
  swift_deallocClassInstance();
  v146 = v167;
  Calendar.dateComponents(_:from:to:)();

  v147 = v203;
  (v203)(v140, v179);
  static Calendar.current.getter();
  v148 = swift_allocObject();
  *(v148 + 16) = v200;
  v145(v148 + v142, v199, v144);
  sub_10010D938(v148);
  swift_setDeallocating();
  (v205)(v148 + v142, v144);
  swift_deallocClassInstance();
  v149 = v172;
  v150 = v173;
  Calendar.dateComponents(_:from:to:)();

  v147(v140, v179);
  v151 = DateComponents.year.getter();
  v152 = v150;
  if ((v153 & 1) == 0 && v151 == v204)
  {
    v154 = *(v168 + 8);
    v155 = v169;
    v154(v149, v169);
    v154(v146, v155);
    v156 = *(v186 + 8);
    v157 = v185;
    v156(v152, v185);
    v156(v177, v157);
    v156(v174, v157);
    v156(v181, v157);
    return 0;
  }

  v158 = DateComponents.year.getter();
  v160 = v159;
  v161 = *(v168 + 8);
  v162 = v149;
  v163 = v169;
  v161(v162, v169);
  v161(v146, v163);
  v164 = *(v186 + 8);
  v165 = v185;
  v164(v152, v185);
  v164(v177, v165);
  v164(v174, v165);
  v164(v181, v165);
  result = 2;
  if ((v160 & 1) == 0 && v158 == v204)
  {
    return 0;
  }

  return result;
}

void *sub_10000DBD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a4;
  v99 = a3;
  v101 = a2;
  v106 = a1;
  v102 = type metadata accessor for PayloadMetadata();
  v4 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v107 = (&v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Logger();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  v8 = __chkstk_darwin(v6);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = &v96 - v10;
  v122 = type metadata accessor for IDCSAnalytics.NamespaceElement();
  v98 = *(v122 - 8);
  v11 = *(v98 + 64);
  __chkstk_darwin(v122 - 8);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ISO18013KnownDocTypes();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v121 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v96 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v96 - v22;
  __chkstk_darwin(v21);
  v25 = &v96 - v24;
  result = static ISO18013KnownDocTypes.allCases.getter();
  v27 = result[2];
  v28 = _swiftEmptyArrayStorage;
  v109 = v14;
  v120 = v27;
  if (v27)
  {
    v119 = v20;
    v29 = 0;
    v117 = (v14 + 16);
    v116 = v14 + 88;
    LODWORD(v115) = enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
    v113 = enum case for ISO18013KnownDocTypes.photoID(_:);
    v114 = enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:);
    v110 = (v14 + 8);
    v111 = v23;
    v112 = (v14 + 32);
    v118 = result;
    while (v29 < result[2])
    {
      v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v32 = *(v14 + 72);
      v33 = *(v14 + 16);
      v33(v25, result + v31 + v32 * v29, v13);
      v33(v23, v25, v13);
      v34 = (*(v14 + 88))(v23, v13);
      if (v34 == v115 || v34 == v114 || v34 == v113)
      {
        v37 = *v112;
        (*v112)(v119, v25, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10010A6D4(0, v28[2] + 1, 1);
          v14 = v109;
          v28 = v123;
        }

        v40 = v28[2];
        v39 = v28[3];
        v41 = v28;
        if (v40 >= v39 >> 1)
        {
          sub_10010A6D4(v39 > 1, v40 + 1, 1);
          v14 = v109;
          v41 = v123;
        }

        v41[2] = v40 + 1;
        v37(v41 + v31 + v40 * v32, v119, v13);
        v28 = v41;
        v23 = v111;
      }

      else
      {
        v30 = *v110;
        (*v110)(v23, v13);
        v30(v25, v13);
      }

      ++v29;
      result = v118;
      if (v120 == v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_18:

  v42 = v28[2];
  if (v42)
  {
    v123 = _swiftEmptyArrayStorage;
    sub_10010A6B4(0, v42, 0);
    v43 = v123;
    v44 = v109 + 16;
    v45 = *(v109 + 16);
    v46 = v28 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v119 = *(v109 + 72);
    v120 = v45;
    v117 = v28;
    v118 = (v109 + 8);
    do
    {
      v47 = v121;
      v48 = v44;
      v120(v121, v46, v13);
      v49 = ISO18013KnownDocTypes.rawValue.getter();
      v51 = v50;
      (*v118)(v47, v13);
      v123 = v43;
      v53 = v43[2];
      v52 = v43[3];
      if (v53 >= v52 >> 1)
      {
        sub_10010A6B4((v52 > 1), v53 + 1, 1);
        v43 = v123;
      }

      v43[2] = v53 + 1;
      v54 = &v43[2 * v53];
      v54[4] = v49;
      v54[5] = v51;
      v46 += v119;
      --v42;
      v44 = v48;
    }

    while (v42);
  }

  else
  {

    v43 = _swiftEmptyArrayStorage;
  }

  v55 = sub_10010D640(v43);

  v56 = v106;
  v57 = *v106;
  v58 = v106[1];
  v59 = sub_1000A0DEC(*v106, v58, v55);

  v61 = v107;
  v60 = v108;
  if (v59)
  {
    v62 = (v56 + *(v102 + 44));
    v63 = v62[1];
    if (v63)
    {
      v64 = *v62;
      v65 = sub_10000E530(v57, v58, v99, v100);
      v66 = sub_10000E81C(v65, v101);

      result = v66;
      v67 = 0;
      v68 = *(v66 + 64);
      v116 = v66 + 64;
      v69 = 1 << *(v66 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & v68;
      v115 = (v69 + 63) >> 6;
      v72 = (v98 + 8);
      v117 = v66;
      while (v71)
      {
LABEL_35:
        v74 = __clz(__rbit64(v71));
        v71 &= v71 - 1;
        v75 = v74 | (v67 << 6);
        v76 = *(result[7] + 8 * v75);
        v77 = v76[2];
        if (v77)
        {
          v119 = v71;
          v120 = v67;
          v78 = (result[6] + 16 * v75);
          v79 = v78[1];
          v121 = *v78;
          type metadata accessor for IDCSAnalytics();

          v118 = v76;
          v80 = v76 + 5;
          v81 = v105;
          do
          {
            v82 = v63;
            v83 = *(v80 - 1);
            v84 = *v80;

            v63 = v82;
            IDCSAnalytics.NamespaceElement.init(namespace:element:)();
            static IDCSAnalytics.sendPayloadMissingRequiredElementEvent(element:issuer:)();
            (*v72)(v81, v122);
            v80 += 2;
            --v77;
          }

          while (v77);

          result = v117;
          v71 = v119;
          v67 = v120;
        }
      }

      while (1)
      {
        v73 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v73 >= v115)
        {
        }

        v71 = *(v116 + 8 * v73);
        ++v67;
        if (v71)
        {
          v67 = v73;
          goto LABEL_35;
        }
      }

LABEL_48:
      __break(1u);
      return result;
    }

    v92 = v97;
    defaultLogger()();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Not processing missing elements due to missing issuer data", v95, 2u);
    }

    return (*(v103 + 8))(v92, v104);
  }

  else
  {
    defaultLogger()();
    sub_10000E75C(v56, v61);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v123 = v88;
      *v87 = 136315138;
      v89 = *v61;
      v90 = v61[1];

      sub_10000E7C0(v61);
      v91 = sub_10010150C(v89, v90, &v123);

      *(v87 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "Not checking for missing elements because document type %s is not supported for analytics", v87, 0xCu);
      sub_100005090(v88);
    }

    else
    {

      sub_10000E7C0(v61);
    }

    return (*(v103 + 8))(v60, v104);
  }
}

unint64_t sub_10000E530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a4;
  v29[2] = a3;
  v30 = a2;
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v13 = v6[13];
  v13(v29 - v11, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v5);
  v14 = ISO18013KnownDocTypes.rawValue.getter();
  v16 = v15;
  v17 = v6[1];
  v17(v12, v5);
  v18 = v14;
  v19 = v30;
  if (v18 == a1 && v16 == v30)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      v13(v10, enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:), v5);
      v22 = a1;
      v23 = ISO18013KnownDocTypes.rawValue.getter();
      v25 = v24;
      v17(v10, v5);
      if (v23 == v22 && v25 == v19)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          return sub_10010D02C(_swiftEmptyArrayStorage);
        }
      }
    }
  }
}

uint64_t sub_10000E75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayloadMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E7C0(uint64_t a1)
{
  v2 = type metadata accessor for PayloadMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E81C(uint64_t a1, uint64_t a2)
{
  v79 = sub_10010D02C(_swiftEmptyArrayStorage);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v78 = 0;
  v9 = 0;
  v76 = 0;
  v73 = v8;
LABEL_4:
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    v17 = *(a2 + 16);

    v82 = v16;

    v80 = v15;
    v81 = v14;
    if (v17 && (v18 = sub_100099644(v15, v14), (v19 & 1) != 0))
    {
      v20 = v82;
      v21 = *(v82 + 16);
      if (v21)
      {
        v70 = v4;
        v71 = a2;
        v72 = a1;
        v42 = *(*(a2 + 56) + 8 * v18);

        v44 = 0;
        v45 = (v20 + 40);
        v46 = v76;
        v75 = v21;
        while (1)
        {
          if (v44 >= *(v20 + 16))
          {
            goto LABEL_45;
          }

          v47 = *v45;
          v77 = *(v45 - 1);
          v83[0] = v77;
          v83[1] = v47;
          __chkstk_darwin(v43);
          v69[2] = v83;

          if ((sub_100120CF8(sub_10000ED28, v69, v42) & 1) == 0)
          {
            break;
          }

LABEL_24:
          ++v44;
          v45 += 2;
          v20 = v82;
          if (v75 == v44)
          {
            v76 = v46;

            a2 = v71;
            a1 = v72;
            v4 = v70;
            goto LABEL_4;
          }
        }

        v74 = v47;
        v76 = v46;
        v48 = v42;
        sub_10000ED48(v78);
        v49 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = v49;
        v51 = v81;
        v53 = sub_100099644(v80, v81);
        v54 = *(v49 + 16);
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_46;
        }

        v57 = v52;
        if (*(v49 + 24) >= v56)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v60 = v83[0];
            if ((v52 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_100109A9C();
            v60 = v83[0];
            if ((v57 & 1) == 0)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_100108404(v56, isUniquelyReferenced_nonNull_native);
          v58 = sub_100099644(v80, v51);
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_49;
          }

          v53 = v58;
          v60 = v83[0];
          if (v57)
          {
            goto LABEL_35;
          }

LABEL_34:
          sub_100112C68(v53, v80, v51, _swiftEmptyArrayStorage, v60);
        }

LABEL_35:
        v61 = *(v60 + 56);
        v62 = *(v61 + 8 * v53);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 8 * v53) = v62;
        v79 = v60;
        if ((v43 & 1) == 0)
        {
          v43 = sub_100100418(0, *(v62 + 16) + 1, 1, v62);
          v62 = v43;
          *(v61 + 8 * v53) = v43;
        }

        v64 = *(v62 + 16);
        v63 = *(v62 + 24);
        v65 = v74;
        if (v64 >= v63 >> 1)
        {
          v43 = sub_100100418((v63 > 1), v64 + 1, 1, v62);
          v62 = v43;
          v65 = v74;
          *(v61 + 8 * v53) = v43;
        }

        v42 = v48;
        *(v62 + 16) = v64 + 1;
        v66 = v62 + 16 * v64;
        v46 = v76;
        *(v66 + 32) = v77;
        *(v66 + 40) = v65;
        v78 = sub_10000E74C;
        v8 = v73;
        goto LABEL_24;
      }
    }

    else
    {
      v22 = v79;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v22;
      v24 = sub_100099644(v15, v14);
      v26 = *(v22 + 16);
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_47;
      }

      v30 = v25;
      if (*(v22 + 24) >= v29)
      {
        if ((v23 & 1) == 0)
        {
          v67 = v24;
          sub_100109A9C();
          v24 = v67;
        }

        v31 = v80;
        if (v30)
        {
          goto LABEL_16;
        }

LABEL_20:
        v36 = v83[0];
        *(v83[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v37 = (v36[6] + 16 * v24);
        v39 = v81;
        v38 = v82;
        *v37 = v31;
        v37[1] = v39;
        *(v36[7] + 8 * v24) = v38;
        v40 = v36[2];
        v28 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v28)
        {
          goto LABEL_48;
        }

        v79 = v36;
        v36[2] = v41;
      }

      else
      {
        sub_100108404(v29, v23);
        v31 = v80;
        v24 = sub_100099644(v80, v81);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_49;
        }

        if ((v30 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_16:
        v33 = v24;

        v79 = v83[0];
        v34 = *(v83[0] + 56);
        v35 = *(v34 + 8 * v33);
        *(v34 + 8 * v33) = v82;
      }
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      sub_10000ED48(v78);
      return v79;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000ED48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_10000ED58()
{
  v223 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  v222 = *(v223 - 8);
  v0 = *(v222 + 64);
  v1 = __chkstk_darwin(v223);
  v227 = &v196 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v226 = &v196 - v4;
  v5 = __chkstk_darwin(v3);
  v225 = &v196 - v6;
  v7 = __chkstk_darwin(v5);
  v224 = &v196 - v8;
  v9 = __chkstk_darwin(v7);
  v221 = &v196 - v10;
  __chkstk_darwin(v9);
  v220 = &v196 - v11;
  v218 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v216 = *(v218 - 8);
  v12 = *(v216 + 64);
  v13 = __chkstk_darwin(v218);
  v219 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v217 = &v196 - v16;
  __chkstk_darwin(v15);
  v215 = &v196 - v17;
  v18 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v213 = &v196 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v212 = &v196 - v24;
  v25 = __chkstk_darwin(v23);
  v211 = &v196 - v26;
  v27 = __chkstk_darwin(v25);
  v210 = &v196 - v28;
  v29 = __chkstk_darwin(v27);
  v209 = &v196 - v30;
  v31 = __chkstk_darwin(v29);
  v206 = &v196 - v32;
  v33 = __chkstk_darwin(v31);
  v203 = &v196 - v34;
  v35 = __chkstk_darwin(v33);
  v202 = &v196 - v36;
  v37 = __chkstk_darwin(v35);
  v201 = &v196 - v38;
  v39 = __chkstk_darwin(v37);
  v200 = &v196 - v40;
  v41 = __chkstk_darwin(v39);
  v199 = &v196 - v42;
  v43 = __chkstk_darwin(v41);
  v198 = &v196 - v44;
  v45 = __chkstk_darwin(v43);
  v197 = &v196 - v46;
  v47 = __chkstk_darwin(v45);
  v196 = &v196 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v196 - v50;
  __chkstk_darwin(v49);
  v53 = &v196 - v52;
  v54 = type metadata accessor for ISO18013KnownNamespaces();
  v228 = v54;
  v55 = *(v54 - 8);
  v56 = v55[8];
  v57 = __chkstk_darwin(v54);
  v214 = &v196 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v60 = &v196 - v59;
  v207 = &v196 - v59;
  v208 = sub_100004E70(&qword_1002004E8, &unk_1001AE010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA160;
  v62 = v55[13];
  v232 = v55 + 13;
  v233 = v62;
  v62(v60, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v54);
  v63 = ISO18013KnownNamespaces.rawValue.getter();
  v65 = v64;
  v66 = v55[1];
  v230 = v55 + 1;
  v231 = v66;
  v66(v60, v54);
  v204 = inited;
  *(inited + 32) = v63;
  v205 = inited + 32;
  *(inited + 40) = v65;
  v229 = sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1001AAFB0;
  v68 = v19;
  v69 = *(v19 + 104);
  v69(v53, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v18);
  v70 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v72 = v71;
  v73 = *(v68 + 8);
  v73(v53, v18);
  *(v67 + 32) = v70;
  *(v67 + 40) = v72;
  v69(v51, enum case for ISO18013_5_1_ElementIdentifier.familyName(_:), v18);
  v74 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v76 = v75;
  v73(v51, v18);
  *(v67 + 48) = v74;
  *(v67 + 56) = v76;
  v77 = v196;
  v69(v196, enum case for ISO18013_5_1_ElementIdentifier.portrait(_:), v18);
  v78 = v69;
  v79 = v77;
  v80 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v82 = v81;
  v73(v79, v18);
  *(v67 + 64) = v80;
  *(v67 + 72) = v82;
  v83 = v197;
  v78(v197, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v18);
  v84 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v86 = v85;
  v73(v83, v18);
  *(v67 + 80) = v84;
  *(v67 + 88) = v86;
  v87 = v198;
  v78(v198, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v18);
  v88 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v90 = v89;
  v73(v87, v18);
  *(v67 + 96) = v88;
  *(v67 + 104) = v90;
  v91 = v199;
  v78(v199, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v18);
  v92 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v94 = v93;
  v73(v91, v18);
  *(v67 + 112) = v92;
  *(v67 + 120) = v94;
  v95 = v200;
  v78(v200, enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:), v18);
  v96 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v98 = v97;
  v73(v95, v18);
  *(v67 + 128) = v96;
  *(v67 + 136) = v98;
  v99 = v201;
  v78(v201, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v18);
  v100 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v102 = v101;
  v73(v99, v18);
  *(v67 + 144) = v100;
  *(v67 + 152) = v102;
  v103 = v202;
  v78(v202, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v18);
  v104 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v106 = v105;
  v73(v103, v18);
  *(v67 + 160) = v104;
  *(v67 + 168) = v106;
  v107 = v203;
  v78(v203, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v18);
  v108 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v110 = v109;
  v73(v107, v18);
  *(v67 + 176) = v108;
  *(v67 + 184) = v110;
  v111 = v206;
  v78(v206, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v18);
  v112 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v114 = v113;
  v73(v111, v18);
  *(v67 + 192) = v112;
  *(v67 + 200) = v114;
  v115 = v209;
  v78(v209, enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:), v18);
  v116 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v118 = v117;
  v73(v115, v18);
  *(v67 + 208) = v116;
  *(v67 + 216) = v118;
  v119 = v210;
  v78(v210, enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:), v18);
  v120 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v122 = v121;
  v73(v119, v18);
  *(v67 + 224) = v120;
  *(v67 + 232) = v122;
  v123 = v211;
  v78(v211, enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:), v18);
  v124 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v126 = v125;
  v73(v123, v18);
  *(v67 + 240) = v124;
  *(v67 + 248) = v126;
  v127 = v212;
  v78(v212, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v18);
  v128 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v130 = v129;
  v73(v127, v18);
  *(v67 + 256) = v128;
  *(v67 + 264) = v130;
  v131 = v213;
  v78(v213, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v18);
  v132 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v134 = v133;
  v73(v131, v18);
  *(v67 + 272) = v132;
  *(v67 + 280) = v134;
  v135 = v204;
  *(v204 + 48) = v67;
  v213 = sub_10010D02C(v135);
  swift_setDeallocating();
  sub_10000FDE0(v205);
  v136 = swift_initStackObject();
  *(v136 + 16) = xmmword_1001AAE50;
  v137 = v207;
  v138 = v228;
  v233(v207, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v228);
  v139 = ISO18013KnownNamespaces.rawValue.getter();
  v141 = v140;
  v231(v137, v138);
  *(v136 + 32) = v139;
  v212 = (v136 + 32);
  *(v136 + 40) = v141;
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1001AAFC0;
  v143 = v216;
  v144 = *(v216 + 104);
  v145 = v215;
  v146 = v218;
  v144(v215, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v218);
  v147 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v149 = v148;
  v150 = *(v143 + 8);
  v150(v145, v146);
  *(v142 + 32) = v147;
  *(v142 + 40) = v149;
  v151 = v217;
  v144(v217, enum case for ISO23220_1_ElementIdentifier.birthDate(_:), v146);
  v152 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v154 = v153;
  v150(v151, v146);
  *(v142 + 48) = v152;
  *(v142 + 56) = v154;
  v155 = v219;
  v144(v219, enum case for ISO23220_1_ElementIdentifier.sex(_:), v146);
  v156 = v155;
  v157 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v159 = v158;
  v150(v156, v146);
  *(v142 + 64) = v157;
  *(v142 + 72) = v159;
  *(v136 + 48) = v142;
  v160 = v214;
  v161 = v228;
  v233(v214, enum case for ISO18013KnownNamespaces.iso23220_1_jp(_:), v228);
  v162 = ISO18013KnownNamespaces.rawValue.getter();
  v164 = v163;
  v231(v160, v161);
  *(v136 + 56) = v162;
  *(v136 + 64) = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1001AA170;
  v166 = v222;
  v167 = *(v222 + 104);
  v168 = v220;
  v169 = v223;
  v167(v220, enum case for ISO23220_1_Japan_ElementIdentifier.localGovCode(_:), v223);
  v170 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v172 = v171;
  v173 = *(v166 + 8);
  v173(v168, v169);
  *(v165 + 32) = v170;
  *(v165 + 40) = v172;
  v174 = v221;
  v167(v221, enum case for ISO23220_1_Japan_ElementIdentifier.fullName(_:), v169);
  v175 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v177 = v176;
  v173(v174, v169);
  *(v165 + 48) = v175;
  *(v165 + 56) = v177;
  v178 = v224;
  v167(v224, enum case for ISO23220_1_Japan_ElementIdentifier.birthDate(_:), v169);
  v179 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v181 = v180;
  v173(v178, v169);
  *(v165 + 64) = v179;
  *(v165 + 72) = v181;
  v182 = v225;
  v167(v225, enum case for ISO23220_1_Japan_ElementIdentifier.residentAddress(_:), v169);
  v183 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v185 = v184;
  v173(v182, v169);
  *(v165 + 80) = v183;
  *(v165 + 88) = v185;
  v186 = v226;
  v167(v226, enum case for ISO23220_1_Japan_ElementIdentifier.sex(_:), v169);
  v187 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v189 = v188;
  v173(v186, v169);
  *(v165 + 96) = v187;
  *(v165 + 104) = v189;
  v190 = v227;
  v167(v227, enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:), v169);
  v191 = v190;
  v192 = ISO23220_1_Japan_ElementIdentifier.rawValue.getter();
  v194 = v193;
  v173(v191, v169);
  *(v165 + 112) = v192;
  *(v165 + 120) = v194;
  *(v136 + 72) = v165;
  sub_10010D02C(v136);
  swift_setDeallocating();
  sub_100004E70(&qword_1002004F0, &unk_1001AE020);
  swift_arrayDestroy();
  return v213;
}

uint64_t sub_10000FDE0(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002004F0, &unk_1001AE020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FE48()
{
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  sub_100009278(v1, v2);

  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  sub_100009278(v1, v2);

  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  return sub_100005090(v1);
}

uint64_t sub_10000FF80()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100010020;
  v3 = *(v0 + 16);

  return sub_1000105D0(v3);
}

uint64_t sub_100010020()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_1000105CC, 0, 0);
}

uint64_t sub_10001011C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000105C8;

  return sub_10000FF60(v0);
}

uint64_t sub_1000101CC()
{
  v1 = *(v0 + 16);
  type metadata accessor for OSTransaction();
  v2 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1000102D4;
  v4 = *(v0 + 16);

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ();
}

uint64_t sub_1000102D4()
{
  v2 = *(*v1 + 24);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_1000103E4, 0, 0);
  }

  return result;
}

uint64_t sub_1000103E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100010444()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000104D4;

  return sub_1000101AC(v0);
}

uint64_t sub_1000104D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000105D0(uint64_t a1)
{
  v1[42] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[43] = v2;
  v3 = *(v2 - 8);
  v1[44] = v3;
  v4 = *(v3 + 64) + 15;
  v1[45] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[46] = v5;
  v6 = *(v5 - 8);
  v1[47] = v6;
  v7 = *(v6 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_100010704, 0, 0);
}

uint64_t sub_100010704()
{
  v1 = v0[50];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting garbage collection", v4, 2u);
  }

  v5 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[42];

  (*(v6 + 8))(v5, v7);
  v0[5] = &type metadata for CredentialDecryptionKeyIdentifierProvider;
  v0[6] = &off_1001F4D30;
  v9 = type metadata accessor for PayloadProcessorBuilder();
  v10 = swift_allocObject();

  v52 = sub_10001C16C();
  v0[10] = &type metadata for CredentialDecryptionKeyFinder;
  v0[11] = &off_1001F4D20;
  v11 = swift_allocObject();
  v0[7] = v11;
  sub_100012950((v0 + 2), v11 + 16);
  v0[15] = v9;
  v0[16] = &off_1001F78E8;
  v0[12] = v10;
  type metadata accessor for CredentialStorage();
  v12 = swift_allocObject();
  v0[51] = v12;
  v13 = sub_1000129AC((v0 + 7), &type metadata for CredentialDecryptionKeyFinder);
  v14 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v14, v13, &type metadata for CredentialDecryptionKeyFinder);
  sub_1000129AC((v0 + 12), v9);
  v15 = *(v9 - 8);
  v16 = *(v15 + 64) + 15;
  v51 = swift_task_alloc();
  (*(v15 + 16))();
  v17 = *v51;
  v0[20] = &type metadata for CredentialDecryptionKeyFinder;
  v0[21] = &off_1001F4D20;
  v18 = swift_allocObject();
  v0[17] = v18;
  v19 = *(v14 + 32);
  v20 = *(v14 + 16);
  *(v18 + 16) = *v14;
  *(v18 + 32) = v20;
  *(v18 + 48) = v19;
  v0[25] = v9;
  v0[26] = &off_1001F78E8;
  v0[22] = v17;
  v21 = sub_10010D640(&off_1001F3F00);
  sub_10001A8EC(&unk_1001F3F20);
  v12[2] = v21;
  v12[15] = v8;
  sub_10001A940((v0 + 17), (v12 + 4));
  sub_10001A940((v0 + 22), (v12 + 9));
  v12[14] = v52;
  v22 = type metadata accessor for BiometricsHelper();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = BiometricsHelper.init()();
  v0[30] = type metadata accessor for DeviceInformationProvider();
  v0[31] = &protocol witness table for DeviceInformationProvider;
  sub_10001A9A4(v0 + 27);
  DeviceInformationProvider.init()();
  type metadata accessor for BiometricStorage();
  v26 = swift_allocObject();
  v26[2] = v8;
  v26[8] = v52;
  type metadata accessor for AppleIDVManager();
  sub_1000215BC(v26 + 3);
  sub_100005090(v0 + 22);
  sub_100005090(v0 + 17);
  v26[9] = v25;
  sub_10001AA08((v0 + 27), (v26 + 10));
  v12[3] = v26;
  sub_100005090(v0 + 12);

  sub_100005090(v0 + 7);

  sub_10001AA20((v0 + 2));
  v27 = type metadata accessor for SESKeystore();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v53 = SESKeystore.init()();
  v30 = type metadata accessor for SEPairingManager();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = SEPairingManager.init()();
  v34 = type metadata accessor for GenericPasswordKeychainWrapper();
  v35 = swift_allocObject();
  v0[35] = v34;
  v0[36] = &off_1001F4DE8;
  v0[32] = v35;
  v36 = type metadata accessor for SyncableKeyStoreProvider();
  v37 = swift_allocObject();
  v38 = sub_1000129AC((v0 + 32), v34);
  v39 = *(v34 - 8);
  v40 = *(v39 + 64) + 15;
  v41 = swift_task_alloc();
  (*(v39 + 16))(v41, v38, v34);
  v42 = *v41;
  v37[5] = v34;
  v37[6] = &off_1001F4DE8;
  v37[2] = v42;

  sub_100005090(v0 + 32);

  v0[40] = v36;
  v0[41] = &off_1001F5068;
  v0[37] = v37;
  type metadata accessor for CredentialKeyManager();
  v43 = swift_allocObject();
  v44 = sub_1000129AC((v0 + 37), v36);
  v45 = *(v36 - 8);
  v46 = *(v45 + 64) + 15;
  v47 = swift_task_alloc();
  (*(v45 + 16))(v47, v44, v36);
  v0[52] = sub_1000F20BC(v53, v33, *v47, v43);

  sub_100005090(v0 + 37);

  v48 = swift_task_alloc();
  v0[53] = v48;
  *v48 = v0;
  v48[1] = sub_100010D78;
  v49 = v0[42];

  return sub_1000129FC(v12, v49);
}

uint64_t sub_100010D78()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_100011704;
  }

  else
  {
    v3 = sub_100010E8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100010E8C()
{
  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[51];
    v1 = v0[52];

    v4 = v0[49];
    v3 = v0[50];
    v5 = v0[48];
    v6 = v0[45];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[55] = v9;
    *v9 = v0;
    v9[1] = sub_100010FA0;
    v10 = v0[52];
    v11 = v0[42];

    return sub_100013738(v10, v11);
  }
}

uint64_t sub_100010FA0()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_100011AD4;
  }

  else
  {
    v3 = sub_1000110B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000110B4()
{
  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[51];
    v1 = v0[52];

    v4 = v0[49];
    v3 = v0[50];
    v5 = v0[48];
    v6 = v0[45];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[57] = v9;
    *v9 = v0;
    v9[1] = sub_1000111C8;
    v10 = v0[52];
    v11 = v0[42];

    return sub_100013BC8(v10, v11);
  }
}

uint64_t sub_1000111C8()
{
  v2 = *(*v1 + 456);
  v3 = *v1;
  v3[58] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100011EA0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[59] = v4;
    *v4 = v3;
    v4[1] = sub_10001133C;
    v5 = v3[42];
    v6 = v3[52];

    return sub_100013F7C(v6, v5);
  }
}

uint64_t sub_10001133C()
{
  v2 = *(*v1 + 472);
  v3 = *v1;
  v3[60] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000121EC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[61] = v4;
    *v4 = v3;
    v4[1] = sub_1000114AC;
    v5 = v3[42];

    return sub_100014208(v5);
  }
}

uint64_t sub_1000114AC()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_100012534;
  }

  else
  {
    v3 = sub_1000115C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000115C0()
{
  v1 = v0[49];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[49];
  v8 = v0[46];
  v9 = v0[47];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished garbage collection", v10, 2u);
  }

  (*(v9 + 8))(v7, v8);
  v12 = v0[49];
  v11 = v0[50];
  v13 = v0[48];
  v14 = v0[45];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100011704()
{
  v1 = v0[54];
  v2 = v0[48];
  v3 = v0[45];
  v25 = v0[47];
  v26 = v0[46];
  v4 = v0[44];
  v24 = v0[43];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v5 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001AA160;
  v9 = v8 + v7;
  v10 = (v9 + v5[14]);
  v11 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = 25447;
  v10[1] = 0xE200000000000000;
  sub_10010C6F8(v8);
  swift_setDeallocating();
  sub_10000A0D4(v9, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v24);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v25 + 8))(v2, v26);
  if (static Task<>.isCancelled.getter())
  {
    v14 = v0[51];
    v13 = v0[52];

    v16 = v0[49];
    v15 = v0[50];
    v17 = v0[48];
    v18 = v0[45];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = swift_task_alloc();
    v0[55] = v21;
    *v21 = v0;
    v21[1] = sub_100010FA0;
    v22 = v0[52];
    v23 = v0[42];

    return sub_100013738(v22, v23);
  }
}

uint64_t sub_100011AD4()
{
  v1 = v0[56];
  v3 = v0[47];
  v2 = v0[48];
  v24 = v0[45];
  v4 = v0[44];
  v25 = v0[43];
  v26 = v0[46];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v5 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001AA160;
  v9 = v8 + v7;
  v10 = (v9 + v5[14]);
  v11 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = 25447;
  v10[1] = 0xE200000000000000;
  sub_10010C6F8(v8);
  swift_setDeallocating();
  sub_10000A0D4(v9, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v4 + 104))(v24, enum case for DIPError.Code.internalError(_:), v25);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v26);
  if (static Task<>.isCancelled.getter())
  {
    v14 = v0[51];
    v13 = v0[52];

    v16 = v0[49];
    v15 = v0[50];
    v17 = v0[48];
    v18 = v0[45];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = swift_task_alloc();
    v0[57] = v21;
    *v21 = v0;
    v21[1] = sub_1000111C8;
    v22 = v0[52];
    v23 = v0[42];

    return sub_100013BC8(v22, v23);
  }
}

uint64_t sub_100011EA0()
{
  v1 = v0[58];
  v3 = v0[47];
  v2 = v0[48];
  v17 = v0[45];
  v4 = v0[44];
  v18 = v0[43];
  v19 = v0[46];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v5 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001AA160;
  v9 = v8 + v7;
  v10 = (v9 + v5[14]);
  v11 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = 25447;
  v10[1] = 0xE200000000000000;
  sub_10010C6F8(v8);
  swift_setDeallocating();
  sub_10000A0D4(v9, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v4 + 104))(v17, enum case for DIPError.Code.internalError(_:), v18);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v19);
  v13 = swift_task_alloc();
  v0[59] = v13;
  *v13 = v0;
  v13[1] = sub_10001133C;
  v14 = v0[52];
  v15 = v0[42];

  return sub_100013F7C(v14, v15);
}

uint64_t sub_1000121EC()
{
  v1 = v0[60];
  v3 = v0[47];
  v2 = v0[48];
  v16 = v0[45];
  v4 = v0[44];
  v17 = v0[43];
  v18 = v0[46];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v5 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001AA160;
  v9 = v8 + v7;
  v10 = (v9 + v5[14]);
  v11 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = 25447;
  v10[1] = 0xE200000000000000;
  sub_10010C6F8(v8);
  swift_setDeallocating();
  sub_10000A0D4(v9, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v4 + 104))(v16, enum case for DIPError.Code.internalError(_:), v17);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v18);
  v13 = swift_task_alloc();
  v0[61] = v13;
  *v13 = v0;
  v13[1] = sub_1000114AC;
  v14 = v0[42];

  return sub_100014208(v14);
}

uint64_t sub_100012534()
{
  v1 = v0[62];
  v2 = v0[48];
  v3 = v0[45];
  v30 = v0[47];
  v31 = v0[46];
  v4 = v0[44];
  v29 = v0[43];
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v5 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001AA160;
  v9 = v8 + v7;
  v10 = (v9 + v5[14]);
  v11 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = 25447;
  v10[1] = 0xE200000000000000;
  sub_10010C6F8(v8);
  swift_setDeallocating();
  sub_10000A0D4(v9, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v29);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v30 + 8))(v2, v31);
  v13 = v0[49];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[51];
  v18 = v0[52];
  v19 = v0[49];
  v20 = v0[46];
  v21 = v0[47];
  if (v16)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Finished garbage collection", v22, 2u);
  }

  (*(v21 + 8))(v19, v20);
  v24 = v0[49];
  v23 = v0[50];
  v25 = v0[48];
  v26 = v0[45];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100012918()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000129AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000129FC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100012B24, 0, 0);
}

uint64_t sub_100012B24()
{
  v1 = v0[15];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting incomplete credentials", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v0[16] = v9;
  v9(v5, v6);
  v10 = *(v8 + 16);
  v11 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  v12 = swift_task_alloc();
  v0[17] = v12;
  v13 = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
  *v12 = v0;
  v12[1] = sub_100012CA0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 6, sub_10001A898, 0, v13);
}

uint64_t sub_100012CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100012F74;
  }

  else
  {
    *(v2 + 152) = *(v2 + 48);
    v4 = sub_100012DBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100012DBC()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 32);
  *(v0 + 216) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 56);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v6 = enum case for DIPError.Code.internalError(_:);
  *(v0 + 208) = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  *(v0 + 212) = v6;
  v7 = v3 & v5;
  if (v7)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 160) = v7;
    *(v0 + 168) = v8;
    v11 = (*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    *(v0 + 176) = *v11;
    v13 = v11[1];
    *(v0 + 184) = v13;

    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_100012FEC;
    v15 = *(v0 + 56);

    return sub_1001452FC(v12, v13);
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v4) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    v19 = *(v0 + 88);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100012F74()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_100012FEC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_100013290;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_100013108;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100013108()
{
  v1 = *(v0 + 168);
  v2 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (v2)
  {
    v3 = *(v0 + 152);
LABEL_7:
    *(v0 + 160) = v2;
    *(v0 + 168) = v1;
    v5 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
    v6 = *v5;
    *(v0 + 176) = *v5;
    v7 = v5[1];
    *(v0 + 184) = v7;

    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_100012FEC;
    v9 = *(v0 + 56);

    sub_1001452FC(v6, v7);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 152);
      if (v4 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 88);

    v13 = *(v0 + 8);

    v13();
  }
}

uint64_t sub_100013290()
{
  v1 = *(v0 + 200);
  v31 = *(v0 + 176);
  v2 = *(v0 + 208);
  v30 = *(v0 + 212);
  v34 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  v29 = *(v0 + 72);
  v32 = *(v0 + 104) + 8;
  v33 = *(v0 + 96);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v6 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001AA160;
  v10 = v9 + v8;
  v11 = (v10 + v6[14]);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v10, v2, v12);
  v11[3] = &type metadata for String;
  v11[4] = &protocol witness table for String;
  *v11 = 25447;
  v11[1] = 0xE200000000000000;
  sub_10010C6F8(v9);
  swift_setDeallocating();
  sub_10000A0D4(v10, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  (*(v5 + 104))(v4, v30, v29);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v13 = *(v0 + 40);

  *(v0 + 16) = 0xD000000000000020;
  *(v0 + 24) = 0x80000001001B26B0;
  String.append(_:)(v31);

  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  result = v34(v3, v33);
  v17 = *(v0 + 168);
  v18 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (v18)
  {
    result = *(v0 + 152);
LABEL_7:
    *(v0 + 160) = v18;
    *(v0 + 168) = v17;
    v20 = (*(result + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
    v21 = *v20;
    *(v0 + 176) = *v20;
    v22 = v20[1];
    *(v0 + 184) = v22;

    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v23[1] = sub_100012FEC;
    v24 = *(v0 + 56);

    return sub_1001452FC(v21, v22);
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 152);
      if (v19 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v18 = *(result + 8 * v19 + 56);
      ++v17;
      if (v18)
      {
        v17 = v19;
        goto LABEL_7;
      }
    }

    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v27 = *(v0 + 88);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_100013738(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000137F8, 0, 0);
}

uint64_t sub_1000137F8()
{
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting inactive presentment keys", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v6 + 8))(v5, v7);
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = *(v8 + 16);
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = sub_10001C104;
  *(v12 + 24) = v10;
  v13 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_1000139C8;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_1000139C8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100013B50;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_100013AEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013AEC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100013B50()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_100013BC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100013C88, 0, 0);
}

uint64_t sub_100013C88()
{
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting unused device encryption keys", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v6 + 8))(v5, v7);
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = *(v8 + 16);
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = &unk_1001AB058;
  *(v12 + 24) = v10;
  v13 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_100013E58;

  return AsyncCoreDataContainer.write<A>(_:)();
}

uint64_t sub_100013E58()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10001C168;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_10001C14C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013F7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001403C, 0, 0);
}

uint64_t sub_10001403C()
{
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Garbage collecting oprhaned Payload Protection Keys", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v6 + 8))(v5, v7);
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = 7;
  *(v10 + 24) = v9;
  v11 = *(v8 + 16);
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = sub_10001AAAC;
  *(v12 + 24) = v10;
  v13 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_100013E58;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_100014208(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000142C8, 0, 0);
}

uint64_t sub_1000142C8()
{
  v15 = v0;
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10010150C(0xD000000000000024, 0x80000001001B2400, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s start", v8, 0xCu);
    sub_100005090(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = *(v0[2] + 16);
  v11 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_10001448C;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_10001448C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100014604;
  }

  else
  {
    v3 = sub_1000145A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000145A0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100014604()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_100014668@<X0>(void *a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for Logger();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v55 = &_swiftEmptySetSingleton;
  result = sub_1000519F8(&off_1001F3F30);
  if (v1)
  {
    return result;
  }

  v15 = result;
  v16 = v52;
  v46 = v7;
  v47 = v11;
  v43 = 0;
  result = Date.init()();
  v50 = v5;
  v51 = v13;
  v45 = v2;
  if (v15 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v18 = result;
    v19 = v47;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_24:

    result = (*(v46 + 8))(v51, v6);
    *v48 = v55;
    return result;
  }

  v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = v47;
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v20 = v16;
    v21 = 0;
    v53 = (v46 + 8);
    v44 = (v20 + 8);
    *&v17 = 136315138;
    v41 = v17;
    v49 = v6;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v15 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 options];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 deleteIncompleteCredentialAfterDays];

        if (v26 >= 1)
        {
          v27 = [v23 updatedAt];
          if (v27)
          {
            v28 = v27;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v29 = [v23 credentialIdentifier];
            if (v29)
            {
              v30 = v29;
              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = v31;

              if (Date.isAtLeast(days:after:)())
              {
                defaultLogger()();

                v33 = Logger.logObject.getter();
                v34 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v33, v34))
                {
                  v35 = swift_slowAlloc();
                  v36 = swift_slowAlloc();
                  v42 = v33;
                  v37 = v36;
                  v54 = v36;
                  *v35 = v41;
                  *(v35 + 4) = sub_10010150C(v52, v32, &v54);
                  v38 = v34;
                  v39 = v42;
                  _os_log_impl(&_mh_execute_header, v42, v38, "Identified credential %s for garbage collection", v35, 0xCu);
                  sub_100005090(v37);

                  v19 = v47;
                }

                else
                {
                }

                (*v44)(v50, v45);
                sub_100102214(&v54, v52, v32);

                v6 = v49;
                (*v53)(v19, v49);
                goto LABEL_19;
              }

              v40 = v49;
              (*v53)(v19, v49);
              v6 = v40;
            }

            else
            {
              (*v53)(v19, v6);
            }
          }
        }
      }

LABEL_19:
      if (v18 == ++v21)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014B14(uint64_t a1, uint64_t a2)
{
  v136 = a2;
  v135 = type metadata accessor for DIPError.Code();
  v151 = *(v135 - 8);
  v3 = v151[8];
  __chkstk_darwin(v135);
  v134 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Logger();
  v146 = *(v142 - 8);
  v5 = *(v146 + 64);
  v6 = __chkstk_darwin(v142);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v115 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v115 - v13;
  __chkstk_darwin(v12);
  v16 = &v115 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v115 - v23;
  v25 = v154;
  result = sub_10005549C();
  if (!v25)
  {
    v129 = a1;
    v137 = v22;
    v139 = 0;
    v123 = v14;
    v126 = v11;
    v131 = v18;
    v124 = v8;
    v132 = v17;
    v27 = v146;
    v140 = v24;
    v28 = result;
    Date.init()();
    defaultLogger()();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v28 >> 62;
    v147 = v28;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 134349056;
      v28 = v147;
      if (v32)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v33 + 4) = v34;

      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}ld presentment keys are potentially eligible for deletion", v33, 0xCu);
    }

    else
    {
    }

    v35 = v28;
    v36 = v151;
    v128 = *(v27 + 8);
    v146 = v27 + 8;
    v128(v16, v142);
    if (v32)
    {
      goto LABEL_82;
    }

    v38 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v39 = v137;
    v40 = v132;
    if (v38)
    {
      v41 = 0;
      v154 = v35 & 0xC000000000000001;
      v148 = v35 + 32;
      v149 = v35 & 0xFFFFFFFFFFFFFF8;
      v144 = (v131 + 8);
      v122 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
      v121 = "MobileAssetFetch.refresh";
      v120 = 0x80000001001B2280;
      v119 = enum case for DIPError.Code.internalError(_:);
      v118 = (v36 + 104);
      v117 = 0x80000001001B2690;
      *&v37 = 136315394;
      v115 = v37;
      v116 = xmmword_1001AA160;
      v138 = v38;
      while (1)
      {
        if (v154)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v41 >= *(v149 + 16))
          {
            goto LABEL_81;
          }

          v42 = *(v148 + 8 * v41);
        }

        v43 = v42;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        v45 = [v42 credential];
        if (!v45)
        {
          goto LABEL_12;
        }

        v46 = v45;
        v47 = [v45 options];
        if (!v47)
        {
          break;
        }

        v48 = v47;
        v49 = [v43 updatedAt];
        if (v49)
        {
          v36 = v49;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = [v43 identifier];
          if (v50)
          {
            v150 = v48;
            v51 = v50;
            v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v54 = v43;
            v55 = [v43 keyBlob];
            v133 = v55;
            if (v55)
            {
              v145 = v53;
              v56 = v39;
              v57 = v40;
              v58 = v55;
              v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              sub_1000092BC(v59, v61);
              v62 = [v43 keyBlob];
              if (v62)
              {
                v63 = v62;
                v143 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;

                v130 = 0;
              }

              else
              {
                v130 = 0;
                v143 = 0;
                v65 = 0xF000000000000000;
              }

              v38 = v138;
              v40 = v57;
              v39 = v56;
              v67 = v145;
            }

            else
            {
              v36 = v53;
              v66 = [v43 keySlot];
              v35 = v147;
              if (v66 <= 0)
              {
                (*v144)(v39, v40);

                goto LABEL_13;
              }

              v130 = v66;
              v143 = 0;
              v65 = 0xF000000000000000;
              v67 = v36;
            }

            v36 = v150;
            if ([v150 deleteInactiveKeysAfterDays] < 1)
            {
              (*v144)(v39, v40);
            }

            else
            {
              v36 = v140;
              if (Date.isAtLeast(days:after:)())
              {
                v68 = sub_10005947C();
                v36 = v68;
                if (v68 >> 62)
                {
                  v69 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v145 = v67;
                v125 = v65;
                v127 = v54;
                if (v69)
                {
                  v70 = 0;
                  v151 = (v36 & 0xC000000000000001);
                  v35 = v69;
                  while (1)
                  {
                    if (v151)
                    {
                      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v70 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_80;
                      }

                      v71 = *(v36 + 8 * v70 + 32);
                    }

                    v72 = v71;
                    v73 = v70 + 1;
                    if (__OFADD__(v70, 1))
                    {
                      break;
                    }

                    v74 = [v71 presentmentKey];
                    if (!v74)
                    {

                      v90 = v123;
                      defaultLogger()();
                      v91 = v145;

                      v92 = v46;
                      v36 = Logger.logObject.getter();
                      v93 = static os_log_type_t.debug.getter();

                      if (!os_log_type_enabled(v36, v93))
                      {

                        sub_10001C120(v143, v125);

                        goto LABEL_63;
                      }

                      LODWORD(v133) = v93;
                      v94 = swift_slowAlloc();
                      v152 = swift_slowAlloc();
                      *v94 = v115;
                      v95 = sub_10010150C(v141, v91, &v152);

                      *(v94 + 4) = v95;
                      *(v94 + 12) = 2080;
                      v151 = v92;
                      v96 = [v92 credentialIdentifier];
                      v40 = v132;
                      if (v96)
                      {
                        v97 = v96;
                        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v100 = v99;
                      }

                      else
                      {
                        v100 = 0xE500000000000000;
                        v98 = 0x3E6C696E3CLL;
                      }

                      v114 = sub_10010150C(v98, v100, &v152);

                      *(v94 + 14) = v114;
                      _os_log_impl(&_mh_execute_header, v36, v133, "Skipping deletion of presentment key %s in credential %s because credential has a payload without an assigned presentment key", v94, 0x16u);
                      swift_arrayDestroy();

                      sub_10001C120(v143, v125);
                      v128(v123, v142);
                      v39 = v137;
                      (*v144)(v137, v40);
                      goto LABEL_64;
                    }

                    v75 = v74;

                    ++v70;
                    if (v73 == v35)
                    {
                      goto LABEL_49;
                    }
                  }

LABEL_79:
                  __break(1u);
LABEL_80:
                  __break(1u);
LABEL_81:
                  __break(1u);
LABEL_82:
                  v38 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_9;
                }

LABEL_49:

                v76 = v126;
                defaultLogger()();
                v77 = v145;

                v78 = v46;
                v79 = Logger.logObject.getter();
                v80 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v79, v80))
                {
                  v81 = swift_slowAlloc();
                  v151 = swift_slowAlloc();
                  v152 = v151;
                  *v81 = v115;
                  *(v81 + 4) = sub_10010150C(v141, v77, &v152);
                  *(v81 + 12) = 2080;
                  v82 = [v78 credentialIdentifier];
                  v83 = v142;
                  if (v82)
                  {
                    v84 = v82;
                    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v87 = v86;
                  }

                  else
                  {
                    v87 = 0xE500000000000000;
                    v85 = 0x3E6C696E3CLL;
                  }

                  v101 = sub_10010150C(v85, v87, &v152);

                  *(v81 + 14) = v101;
                  _os_log_impl(&_mh_execute_header, v79, v80, "Identified presentment key %s in credential %s for deletion", v81, 0x16u);
                  swift_arrayDestroy();

                  v88 = v126;
                  v89 = v83;
                }

                else
                {

                  v88 = v76;
                  v89 = v142;
                }

                v128(v88, v89);
                v39 = v137;
                v102 = v150;
                [*(v129 + 16) deleteObject:v127];
                v103 = v139;
                sub_100050240();
                v36 = v136;
                if (v103)
                {
                  v151 = v78;
LABEL_62:
                  v139 = 0;
                  sub_100004E70(&unk_100200230, &unk_1001AB020);
                  v104 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
                  v105 = *(*v104 + 72);
                  v106 = (*(*v104 + 80) + 32) & ~*(*v104 + 80);
                  v107 = swift_allocObject();
                  *(v107 + 16) = v116;
                  v108 = (v107 + v106 + v104[14]);
                  v109 = type metadata accessor for DIPError.PropertyKey();
                  (*(*(v109 - 8) + 104))(v107 + v106, v122, v109);
                  v108[3] = &type metadata for String;
                  v108[4] = &protocol witness table for String;
                  *v108 = 25447;
                  v108[1] = 0xE200000000000000;
                  sub_10010C6F8(v107);
                  swift_setDeallocating();
                  sub_10000A0D4(v107 + v106, &unk_100201890, &unk_1001AA550);
                  swift_deallocClassInstance();
                  (*v118)(v134, v119, v135);
                  type metadata accessor for DIPError();
                  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
                  swift_allocError();
                  swift_errorRetain();
                  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                  v152 = 0;
                  v153 = 0xE000000000000000;
                  _StringGuts.grow(_:)(27);

                  v152 = 0xD000000000000019;
                  v153 = v117;
                  v110._countAndFlagsBits = v141;
                  v110._object = v145;
                  String.append(_:)(v110);

                  v36 = v152;
                  v90 = v124;
                  defaultLogger()();
                  DIPRecordError(_:message:log:)();

                  sub_10001C120(v143, v125);
LABEL_63:
                  v128(v90, v142);
                  v39 = v137;
                  v40 = v132;
                  (*v144)(v137, v132);
                }

                else
                {
                  v139 = 0;
                  v111 = v125;
                  if (v125 >> 60 == 15)
                  {
                    v35 = v147;
                    if (v133)
                    {
                      v36 = v78;
                      v40 = v132;
                      (*v144)(v39, v132);
                    }

                    else
                    {
                      v151 = v78;
                      sub_100032980(v130);
                      v139 = 0;
                      v40 = v132;
                      (*v144)(v39, v132);
                    }

                    v38 = v138;
                    goto LABEL_13;
                  }

                  v151 = v78;
                  v112 = v143;
                  sub_100009708(v143, v125);
                  v113 = v139;
                  sub_100027138();
                  if (v113)
                  {
                    sub_10001C120(v112, v111);
                    goto LABEL_62;
                  }

                  v139 = 0;
                  v36 = v112;
                  v40 = v132;
                  (*v144)(v39, v132);

                  sub_10001C120(v36, v111);
                  sub_10001C120(v36, v111);
                }

LABEL_64:
                v35 = v147;
                v38 = v138;
                goto LABEL_13;
              }

              (*v144)(v39, v40);
            }

            sub_10001C120(v143, v65);
            v35 = v147;
          }

          else
          {
            (*v144)(v39, v40);

            v35 = v147;
          }
        }

        else
        {
        }

LABEL_13:
        if (v41 == v38)
        {
          goto LABEL_76;
        }
      }

LABEL_12:
      goto LABEL_13;
    }

LABEL_76:

    sub_100050240();
    return (*(v131 + 8))(v140, v40);
  }

  return result;
}

uint64_t sub_100015C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v11 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_100015E04, 0, 0);
}

uint64_t sub_100015E04()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 104);
  *(v0 + 224) = *(v4 + 16);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  *(v5 + 16) = sub_10001BF58;
  *(v5 + 24) = v4;
  v6 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 416) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v3 + 104);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v7(v1, v6, v2);
  v8 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  v10 = sub_100004E70(&qword_100200508, &qword_1001AB068);
  *v9 = v0;
  v9[1] = sub_100015F78;
  v11 = *(v0 + 216);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 96, v11, sub_10001BF74, v5, v10);
}

uint64_t sub_100015F78()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v13 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[29];
    (*(v2[25] + 8))(v2[27], v2[24]);

    v5 = sub_100016BEC;
  }

  else
  {
    v6 = v2[29];
    v7 = v2[27];
    v8 = v2[24];
    v9 = v2[25];
    v10 = v2[13];

    v11 = *(v9 + 8);
    v2[34] = v11;
    v2[35] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v2[36] = v2[12];
    v5 = sub_100016108;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100016108()
{
  v92 = v0;
  v1 = *(*(v0 + 288) + 16);
  *(v0 + 296) = v1;
  if (v1)
  {
    v2 = 0;
    *(v0 + 420) = enum case for DIPError.Code.internalError(_:);
    *(v0 + 424) = enum case for DIPError.PropertyKey.daemonSessionState(_:);
    v3 = &_swiftEmptyArrayStorage;
    v4 = *(v0 + 264);
    while (1)
    {
      *(v0 + 304) = v2;
      *(v0 + 312) = v3;
      v25 = (*(v0 + 288) + 32 * v2);
      v26 = v25[4];
      *(v0 + 320) = v26;
      v27 = v25[5];
      *(v0 + 328) = v27;
      v28 = v25[6];
      *(v0 + 336) = v28;
      v29 = v25[7];
      *(v0 + 344) = v29;
      if ((v29 & 0x2000000000000000) == 0)
      {
        break;
      }

      v30 = *(v0 + 176);
      sub_10001BFB8(v26, v27, v28, v29);

      v90 = v28;
      sub_100009708(v28, v29 & 0xDFFFFFFFFFFFFFFFLL);
      defaultLogger()();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 176);
      v35 = *(v0 + 160);
      v88 = *(v0 + 152);
      if (v33)
      {
        v86 = v3;
        v36 = swift_slowAlloc();
        v85 = v34;
        v37 = v26;
        v38 = swift_slowAlloc();
        v91[0] = v38;
        *v36 = 136315138;
        *(v36 + 4) = sub_10010150C(v37, v27, v91);
        _os_log_impl(&_mh_execute_header, v31, v32, "deleting SES encryption key %s", v36, 0xCu);
        sub_100005090(v38);
        v26 = v37;

        v3 = v86;

        v39 = *(v35 + 8);
        v39(v85, v88);
      }

      else
      {

        v39 = *(v35 + 8);
        v39(v34, v88);
      }

      v40 = *(*(v0 + 112) + 16);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v4)
      {
        v5 = *(v0 + 420);
        v83 = *(v0 + 420);
        v7 = *(v0 + 136);
        v6 = *(v0 + 144);
        v8 = *(v0 + 128);

        v87 = *(v7 + 104);
        v87(v6, v5, v8);
        swift_errorRetain();
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v87(v6, v83, v8);
        swift_errorRetain();
        sub_10002688C(&_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v90, v29 & 0xDFFFFFFFFFFFFFFFLL);
        v81 = *(v0 + 336);
        v82 = *(v0 + 344);
        v79 = *(v0 + 320);
        v80 = *(v0 + 328);
        v9 = *(v0 + 424);
        v78 = *(v0 + 420);
        v10 = *(v0 + 168);
        v11 = *(v0 + 128);
        v12 = *(v0 + 136) + 104;
        v89 = *(v0 + 160) + 8;
        v13 = *(v0 + 144);
        v84 = *(v0 + 152);
        sub_100004E70(&unk_100200230, &unk_1001AB020);
        v14 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
        v15 = *(*v14 + 72);
        v16 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1001AA160;
        v18 = v17 + v16;
        v19 = (v18 + v14[14]);
        v20 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v20 - 8) + 104))(v18, v9, v20);
        v19[3] = &type metadata for String;
        v19[4] = &protocol witness table for String;
        *v19 = 25447;
        v19[1] = 0xE200000000000000;
        sub_10010C6F8(v17);
        swift_setDeallocating();
        sub_10000A0D4(v18, &unk_100201890, &unk_1001AA550);
        swift_deallocClassInstance();
        v87(v13, v78, v11);
        swift_allocError();
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        v21 = *(v0 + 72);
        *(v0 + 48) = *(v0 + 64);
        *(v0 + 56) = v21;
        v22._countAndFlagsBits = 0xD00000000000002BLL;
        v22._object = 0x80000001001B25F0;
        String.append(_:)(v22);
        *(v0 + 16) = v79;
        *(v0 + 24) = v80;
        *(v0 + 32) = v81;
        *(v0 + 40) = v82;
        _print_unlocked<A, B>(_:_:)();
        v23 = *(v0 + 48);
        v24 = *(v0 + 56);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        sub_10001BFFC(v79, v80, v81, v82);
        v39(v10, v84);
        v3 = *(v0 + 312);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100100418(0, *(v3 + 2) + 1, 1, v3);
        }

        v42 = *(v3 + 2);
        v41 = *(v3 + 3);
        if (v42 >= v41 >> 1)
        {
          v3 = sub_100100418((v41 > 1), v42 + 1, 1, v3);
        }

        sub_1000092BC(v90, v29 & 0xDFFFFFFFFFFFFFFFLL);
        *(v3 + 2) = v42 + 1;
        v43 = &v3[16 * v42];
        *(v43 + 4) = v26;
        *(v43 + 5) = v27;
        sub_10001BFFC(v26, v27, v90, v29);
      }

      v4 = 0;
      v2 = *(v0 + 304) + 1;
      if (v2 == *(v0 + 296))
      {
        v63 = *(v0 + 288);
        v44 = v3;
        goto LABEL_22;
      }
    }

    v45 = *(v0 + 184);
    sub_10001BFB8(v26, v27, v28, v29);

    defaultLogger()();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 184);
    v50 = *(v0 + 152);
    v51 = *(v0 + 160);
    if (v48)
    {
      v52 = swift_slowAlloc();
      v53 = v26;
      v54 = swift_slowAlloc();
      v91[0] = v54;
      *v52 = 136315138;
      *(v52 + 4) = sub_10010150C(v53, v27, v91);
      _os_log_impl(&_mh_execute_header, v46, v47, "deleting SEP encryption key %s", v52, 0xCu);
      sub_100005090(v54);
      v26 = v53;
    }

    v55 = *(v51 + 8);
    v55(v49, v50);
    *(v0 + 384) = v55;
    v56 = *(v0 + 112);
    *(v0 + 80) = 778790244;
    *(v0 + 88) = 0xE400000000000000;
    v57._countAndFlagsBits = v26;
    v57._object = v27;
    String.append(_:)(v57);
    v58 = *(v0 + 80);
    v59 = *(v0 + 88);
    *(v0 + 392) = v59;
    v60 = *(v56 + 32);
    v61 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v62 = swift_task_alloc();
    *(v0 + 400) = v62;
    *v62 = v0;
    v62[1] = sub_100016F70;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v58, v59);
  }

  else
  {
    v44 = &_swiftEmptyArrayStorage;
LABEL_22:
    v65 = *(v0 + 240);
    v64 = *(v0 + 248);
    v66 = *(v0 + 416);
    v67 = *(v0 + 208);
    v68 = *(v0 + 192);
    v69 = *(v0 + 120);
    v70 = *(v0 + 104);

    v71 = swift_allocObject();
    *(v0 + 352) = v71;
    v71[2] = v70;
    v71[3] = v44;
    v71[4] = v69;
    v72 = swift_allocObject();
    *(v0 + 360) = v72;
    *(v72 + 16) = sub_10001C088;
    *(v72 + 24) = v71;

    v65(v67, v66, v68);
    v73 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v74 = swift_task_alloc();
    *(v0 + 368) = v74;
    *v74 = v0;
    v74[1] = sub_100016C9C;
    v75 = *(v0 + 224);
    v76 = *(v0 + 208);

    return NSManagedObjectContext.perform<A>(schedule:_:)();
  }
}

uint64_t sub_100016BEC()
{
  v1 = v0[13];

  v2 = v0[33];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100016C9C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(v2 + 376) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = *(v2 + 280);
    (*(v2 + 272))(*(v2 + 208), *(v2 + 192));

    v7 = sub_100016EC0;
  }

  else
  {
    v8 = *(v2 + 352);
    v10 = *(v2 + 272);
    v9 = *(v2 + 280);
    v11 = *(v2 + 208);
    v12 = *(v2 + 192);

    v10(v11, v12);
    v7 = sub_100016E18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100016E18()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100016EC0()
{
  v1 = v0[44];

  v2 = v0[47];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100016F70()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 392);

  if (v0)
  {
    v6 = sub_100017BB4;
  }

  else
  {
    v6 = sub_1000170A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000170A4()
{
  v99 = v0;
  v1 = *(v0 + 312);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 312);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100100418(0, *(v3 + 2) + 1, 1, *(v0 + 312));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100100418((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 336);
  v7 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  *(v3 + 2) = v5 + 1;
  v10 = &v3[16 * v5];
  *(v10 + 4) = v8;
  *(v10 + 5) = v9;
  sub_10001BFFC(v8, v9, v6, v7);
  v11 = *(v0 + 304) + 1;
  if (v11 == *(v0 + 296))
  {
LABEL_6:
    v12 = *(v0 + 288);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 416);
    v16 = *(v0 + 208);
    v17 = *(v0 + 192);
    v18 = v3;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);

    v21 = swift_allocObject();
    *(v0 + 352) = v21;
    v21[2] = v20;
    v21[3] = v18;
    v21[4] = v19;
    v22 = swift_allocObject();
    *(v0 + 360) = v22;
    *(v22 + 16) = sub_10001C088;
    *(v22 + 24) = v21;

    v14(v16, v15, v17);
    v23 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v24 = swift_task_alloc();
    *(v0 + 368) = v24;
    *v24 = v0;
    v24[1] = sub_100016C9C;
    v25 = *(v0 + 224);
    v26 = *(v0 + 208);

    return NSManagedObjectContext.perform<A>(schedule:_:)();
  }

  else
  {
    v27 = *(v0 + 408);
    while (1)
    {
      *(v0 + 304) = v11;
      *(v0 + 312) = v3;
      v50 = (*(v0 + 288) + 32 * v11);
      v51 = v50[4];
      *(v0 + 320) = v51;
      v52 = v50[5];
      *(v0 + 328) = v52;
      v53 = v50[6];
      *(v0 + 336) = v53;
      v54 = v50[7];
      *(v0 + 344) = v54;
      if ((v54 & 0x2000000000000000) == 0)
      {
        break;
      }

      v97 = v27;
      v55 = *(v0 + 176);
      sub_10001BFB8(v51, v52, v53, v54);

      sub_100009708(v53, v54 & 0xDFFFFFFFFFFFFFFFLL);
      defaultLogger()();

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();

      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 152);
      v60 = *(v0 + 160);
      v93 = v59;
      v95 = *(v0 + 176);
      if (v58)
      {
        v89 = v3;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v98[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_10010150C(v51, v52, v98);
        _os_log_impl(&_mh_execute_header, v56, v57, "deleting SES encryption key %s", v61, 0xCu);
        sub_100005090(v62);

        v3 = v89;
      }

      v28 = *(v60 + 8);
      v28(v95, v93);
      v29 = *(*(v0 + 112) + 16);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v97)
      {
        v30 = *(v0 + 420);
        v91 = *(v0 + 420);
        v94 = v28;
        v31 = *(v0 + 136);
        v32 = *(v0 + 144);
        v33 = *(v0 + 128);

        v96 = *(v31 + 104);
        v96(v32, v30, v33);
        swift_errorRetain();
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v96(v32, v91, v33);
        swift_errorRetain();
        sub_10002688C(&_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v53, v54 & 0xDFFFFFFFFFFFFFFFLL);
        v87 = *(v0 + 336);
        v88 = *(v0 + 344);
        v85 = *(v0 + 320);
        v86 = *(v0 + 328);
        v34 = *(v0 + 424);
        v84 = *(v0 + 420);
        v35 = *(v0 + 168);
        v36 = *(v0 + 128);
        v37 = *(v0 + 136) + 104;
        v38 = *(v0 + 144);
        v90 = *(v0 + 152);
        v92 = *(v0 + 160) + 8;
        sub_100004E70(&unk_100200230, &unk_1001AB020);
        v39 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
        v40 = *(*v39 + 72);
        v41 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1001AA160;
        v43 = v42 + v41;
        v44 = (v43 + v39[14]);
        v45 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v45 - 8) + 104))(v43, v34, v45);
        v44[3] = &type metadata for String;
        v44[4] = &protocol witness table for String;
        *v44 = 25447;
        v44[1] = 0xE200000000000000;
        sub_10010C6F8(v42);
        swift_setDeallocating();
        sub_10000A0D4(v43, &unk_100201890, &unk_1001AA550);
        swift_deallocClassInstance();
        v96(v38, v84, v36);
        swift_allocError();
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        v46 = *(v0 + 72);
        *(v0 + 48) = *(v0 + 64);
        *(v0 + 56) = v46;
        v47._countAndFlagsBits = 0xD00000000000002BLL;
        v47._object = 0x80000001001B25F0;
        String.append(_:)(v47);
        *(v0 + 16) = v85;
        *(v0 + 24) = v86;
        *(v0 + 32) = v87;
        *(v0 + 40) = v88;
        _print_unlocked<A, B>(_:_:)();
        v48 = *(v0 + 48);
        v49 = *(v0 + 56);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        sub_10001BFFC(v85, v86, v87, v88);
        v94(v35, v90);
        v3 = *(v0 + 312);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100100418(0, *(v3 + 2) + 1, 1, v3);
        }

        v64 = *(v3 + 2);
        v63 = *(v3 + 3);
        if (v64 >= v63 >> 1)
        {
          v3 = sub_100100418((v63 > 1), v64 + 1, 1, v3);
        }

        sub_1000092BC(v53, v54 & 0xDFFFFFFFFFFFFFFFLL);
        *(v3 + 2) = v64 + 1;
        v65 = &v3[16 * v64];
        *(v65 + 4) = v51;
        *(v65 + 5) = v52;
        sub_10001BFFC(v51, v52, v53, v54);
      }

      v27 = 0;
      v11 = *(v0 + 304) + 1;
      if (v11 == *(v0 + 296))
      {
        goto LABEL_6;
      }
    }

    v66 = *(v0 + 184);
    sub_10001BFB8(v51, v52, v53, v54);

    defaultLogger()();

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 184);
    v71 = *(v0 + 152);
    v72 = *(v0 + 160);
    if (v69)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v98[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_10010150C(v51, v52, v98);
      _os_log_impl(&_mh_execute_header, v67, v68, "deleting SEP encryption key %s", v73, 0xCu);
      sub_100005090(v74);
    }

    v75 = *(v72 + 8);
    v75(v70, v71);
    *(v0 + 384) = v75;
    v76 = *(v0 + 112);
    *(v0 + 80) = 778790244;
    *(v0 + 88) = 0xE400000000000000;
    v77._countAndFlagsBits = v51;
    v77._object = v52;
    String.append(_:)(v77);
    v78 = *(v0 + 80);
    v79 = *(v0 + 88);
    *(v0 + 392) = v79;
    v80 = *(v76 + 32);
    v81 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v82 = swift_task_alloc();
    *(v0 + 400) = v82;
    *v82 = v0;
    v82[1] = sub_100016F70;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v78, v79);
  }
}

uint64_t sub_100017BB4()
{
  v87 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v84 = *(*(v0 + 136) + 104);
  v84(*(v0 + 144), *(v0 + 420), *(v0 + 128));
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = *(v0 + 384);
  v85 = v0;
  v77 = *(v0 + 336);
  v78 = *(v0 + 344);
  v75 = *(v0 + 320);
  v76 = *(v0 + 328);
  v4 = *(v0 + 424);
  v74 = *(v0 + 420);
  v79 = *(v0 + 168);
  v72 = *(v0 + 128);
  v73 = *(v0 + 136) + 104;
  v81 = *(v0 + 160) + 8;
  v80 = *(v0 + 152);
  v5 = *(v0 + 144);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v6 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001AA160;
  v10 = v9 + v8;
  v11 = (v10 + v6[14]);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v10, v4, v12);
  v11[3] = &type metadata for String;
  v11[4] = &protocol witness table for String;
  *v11 = 25447;
  v11[1] = 0xE200000000000000;
  sub_10010C6F8(v9);
  swift_setDeallocating();
  sub_10000A0D4(v10, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  v84(v5, v74, v72);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v85[8] = 0;
  v85[9] = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v13 = v85[9];
  v85[6] = v85[8];
  v85[7] = v13;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = 0x80000001001B25F0;
  String.append(_:)(v14);
  v85[2] = v75;
  v85[3] = v76;
  v85[4] = v77;
  v85[5] = v78;
  _print_unlocked<A, B>(_:_:)();
  v15 = v85[6];
  v16 = v85[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v17 = v85;

  sub_10001BFFC(v75, v76, v77, v78);
  v3(v79, v80);
  v18 = v85[39];
  while (1)
  {
    v19 = v17[38] + 1;
    if (v19 == v17[37])
    {
      break;
    }

    v17[38] = v19;
    v17[39] = v18;
    v20 = (v17[36] + 32 * v19);
    v21 = v20[4];
    v17[40] = v21;
    v22 = v20[5];
    v17[41] = v22;
    v23 = v20[6];
    v17[42] = v23;
    v24 = v20[7];
    v17[43] = v24;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v54 = v17[23];
      sub_10001BFB8(v21, v22, v23, v24);

      defaultLogger()();

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v17[23];
      v60 = v17[19];
      v59 = v17[20];
      if (v57)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v86[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_10010150C(v21, v22, v86);
        _os_log_impl(&_mh_execute_header, v55, v56, "deleting SEP encryption key %s", v61, 0xCu);
        sub_100005090(v62);

        v17 = v85;
      }

      v63 = *(v59 + 8);
      v63(v58, v60);
      v17[48] = v63;
      v64 = v17[14];
      v17[10] = 778790244;
      v17[11] = 0xE400000000000000;
      v65._countAndFlagsBits = v21;
      v65._object = v22;
      String.append(_:)(v65);
      v66 = v17[10];
      v67 = v17[11];
      v17[49] = v67;
      v68 = *(v64 + 32);
      v69 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
      v70 = swift_task_alloc();
      v17[50] = v70;
      *v70 = v17;
      v70[1] = sub_100016F70;

      return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v66, v67);
    }

    v25 = v17[22];
    sub_10001BFB8(v21, v22, v23, v24);

    sub_100009708(v23, v24 & 0xDFFFFFFFFFFFFFFFLL);
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v17[22];
    v32 = v17 + 19;
    v31 = v17[19];
    v30 = v32[1];
    if (v28)
    {
      v83 = v29;
      v33 = swift_slowAlloc();
      v82 = v31;
      v34 = swift_slowAlloc();
      v86[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10010150C(v21, v22, v86);
      _os_log_impl(&_mh_execute_header, v26, v27, "deleting SES encryption key %s", v33, 0xCu);
      sub_100005090(v34);

      (*(v30 + 8))(v83, v82);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
    }

    v17 = v85;
    v35 = *(v85[14] + 16);
    dispatch thunk of SESKeystore.deleteKey(_:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100100418(0, *(v18 + 2) + 1, 1, v18);
    }

    v37 = *(v18 + 2);
    v36 = *(v18 + 3);
    if (v37 >= v36 >> 1)
    {
      v18 = sub_100100418((v36 > 1), v37 + 1, 1, v18);
    }

    sub_1000092BC(v23, v24 & 0xDFFFFFFFFFFFFFFFLL);
    *(v18 + 2) = v37 + 1;
    v38 = &v18[16 * v37];
    *(v38 + 4) = v21;
    *(v38 + 5) = v22;
    sub_10001BFFC(v21, v22, v23, v24);
  }

  v39 = v17[36];
  v41 = v17[30];
  v40 = v17[31];
  v42 = *(v17 + 104);
  v43 = v17[26];
  v44 = v17[24];
  v45 = v17;
  v46 = v17[15];
  v47 = v45[13];

  v48 = swift_allocObject();
  v45[44] = v48;
  v48[2] = v47;
  v48[3] = v18;
  v48[4] = v46;
  v49 = swift_allocObject();
  v45[45] = v49;
  *(v49 + 16) = sub_10001C088;
  *(v49 + 24) = v48;

  v41(v43, v42, v44);
  v50 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v51 = swift_task_alloc();
  v45[46] = v51;
  *v51 = v45;
  v51[1] = sub_100016C9C;
  v52 = v45[28];
  v53 = v45[26];

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000187EC@<X0>(void *a1@<X8>)
{
  v109 = a1;
  v2 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v107 = &v91 - v4;
  v108 = type metadata accessor for CredentialKeyType();
  v111 = *(v108 - 8);
  v5 = *(v111 + 8);
  __chkstk_darwin(v108);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v110 = *(v8 - 8);
  v9 = *(v110 + 64);
  __chkstk_darwin(v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v91 - v18;
  result = sub_1000558E0();
  if (!v1)
  {
    v21 = result;
    v22 = v110;
    v115 = v17;
    v102 = v8;
    v103 = 0;
    v105 = v11;
    v106 = v13;
    v112 = v12;
    v104 = v7;
    result = Date.init()();
    if (v21 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v24 = result;
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v112;
    v26 = v115;
    if (v24)
    {
      if (v24 >= 1)
      {
        v27 = v22;
        v28 = v19;
        v29 = 0;
        v117 = v21 & 0xC000000000000001;
        v113 = (v106 + 8);
        v110 = v27 + 8;
        v95 = v111 + 48;
        v93 = v111 + 32;
        v92 = v111 + 88;
        v91 = __PAIR64__(enum case for CredentialKeyType.ses(_:), enum case for CredentialKeyType.sep(_:));
        v97 = v111 + 104;
        v98 = v111 + 8;
        v111 = &_swiftEmptyArrayStorage;
        v96 = enum case for CredentialKeyType.invalid(_:);
        *&v23 = 136315394;
        v99 = v23;
        v101 = v19;
        v114 = v21;
        v116 = v24;
        while (1)
        {
          v30 = v117 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v21 + 8 * v29 + 32);
          v31 = v30;
          v32 = [v30 credential];
          if (v32)
          {
            break;
          }

LABEL_8:
          if (v24 == ++v29)
          {
            goto LABEL_58;
          }
        }

        v33 = v32;
        v34 = [v32 options];
        if (v34)
        {
          v35 = v34;
          v36 = [v31 updatedAt];
          if (v36)
          {
            v37 = v26;
            v38 = v36;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v39 = [v31 identifier];
            if (v39)
            {
              v40 = v39;
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;

              if ([v35 deleteInactiveKeysAfterDays] < 1)
              {
                v55 = *v113;
                v26 = v115;
              }

              else
              {
                v26 = v115;
                if (Date.isAtLeast(days:after:)())
                {
                  v44 = v105;
                  defaultLogger()();

                  v45 = v33;
                  v46 = Logger.logObject.getter();
                  v47 = static os_log_type_t.debug.getter();

                  LODWORD(v100) = v47;
                  if (os_log_type_enabled(v46, v47))
                  {
                    v48 = swift_slowAlloc();
                    v118 = swift_slowAlloc();
                    *v48 = v99;
                    v49 = sub_10010150C(v41, v43, &v118);

                    *(v48 + 4) = v49;
                    *(v48 + 12) = 2080;
                    v94 = v45;
                    v50 = [v45 credentialIdentifier];
                    if (v50)
                    {
                      v51 = v50;
                      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v54 = v53;
                    }

                    else
                    {
                      v54 = 0xE500000000000000;
                      v52 = 0x3E6C696E3CLL;
                    }

                    v56 = sub_10010150C(v52, v54, &v118);

                    *(v48 + 14) = v56;
                    _os_log_impl(&_mh_execute_header, v46, v100, "Identified device encryption key %s in credential %s for deletion", v48, 0x16u);
                    swift_arrayDestroy();

                    (*v110)(v105, v102);
                    v45 = v94;
                  }

                  else
                  {

                    (*v110)(v44, v102);
                  }

                  v57 = [v31 identifier];
                  v58 = v104;
                  v25 = v112;
                  v28 = v101;
                  if (v57)
                  {
                    v59 = v57;
                    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v61 = v60;

                    v62 = [v31 keyType];
                    if (!v62)
                    {
                      (*v113)(v115, v25);

                      goto LABEL_39;
                    }

                    v63 = v62;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();

                    v64 = v107;
                    CredentialKeyType.init(rawValue:)();
                    v65 = v108;
                    if ((*v95)(v64, 1, v108) == 1)
                    {
                      v25 = v112;
                      (*v113)(v115, v112);

                      sub_10000A0D4(v64, &qword_100200510, qword_1001AB070);
                      v58 = v104;
LABEL_39:
                      v66 = v108;
                      (*v97)(v58, v96, v108);
LABEL_40:
                      v24 = v116;
                      (*v98)(v58, v66);
                      v21 = v114;
                      v26 = v115;
                      goto LABEL_8;
                    }

                    v58 = v104;
                    (*v93)(v104, v64, v65);
                    v67 = (*v92)(v58, v65);
                    if (v67 == HIDWORD(v91))
                    {
                      v68 = [v31 keyBlob];
                      if (v68)
                      {
                        v69 = v68;
                        v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v71 = v70;

                        v72 = v45;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v111 = sub_100100524(0, *(v111 + 2) + 1, 1, v111);
                        }

                        v74 = *(v111 + 2);
                        v73 = *(v111 + 3);
                        if (v74 >= v73 >> 1)
                        {
                          v111 = sub_100100524((v73 > 1), v74 + 1, 1, v111);
                        }

                        v75 = v71 | 0x2000000000000000;
                        v25 = v112;
                        v76 = v115;
                        (*v113)(v115, v112);
                        v77 = v111;
                        *(v111 + 2) = v74 + 1;
                        v78 = &v77[32 * v74];
                        *(v78 + 4) = v100;
                        *(v78 + 5) = v61;
                        v26 = v76;
                        *(v78 + 6) = v94;
                        *(v78 + 7) = v75;
                        goto LABEL_27;
                      }
                    }

                    else
                    {
                      if (v67 != v91)
                      {
                        v66 = v65;
                        v25 = v112;
                        (*v113)(v115, v112);

                        goto LABEL_40;
                      }

                      v79 = [v31 publicKeyIdentifier];
                      if (v79)
                      {
                        v80 = v79;
                        v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v82 = v81;

                        v83 = v45;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v111 = sub_100100524(0, *(v111 + 2) + 1, 1, v111);
                        }

                        v85 = *(v111 + 2);
                        v84 = *(v111 + 3);
                        if (v85 >= v84 >> 1)
                        {
                          v111 = sub_100100524((v84 > 1), v85 + 1, 1, v111);
                        }

                        v86 = v112;
                        v87 = v115;
                        (*v113)(v115, v112);
                        v88 = v111;
                        *(v111 + 2) = v85 + 1;
                        v89 = &v88[32 * v85];
                        *(v89 + 4) = v100;
                        *(v89 + 5) = v61;
                        v26 = v87;
                        *(v89 + 6) = v94;
                        *(v89 + 7) = v82;
                        v25 = v86;
                        goto LABEL_27;
                      }
                    }

                    v25 = v112;
                    v90 = v115;
                    (*v113)(v115, v112);

                    v26 = v90;
                  }

                  else
                  {
                    v26 = v115;
                    (*v113)(v115, v112);
                  }

LABEL_27:
                  v21 = v114;
                  goto LABEL_28;
                }

                v55 = *v113;
              }

              v25 = v112;
              v55(v26, v112);

              goto LABEL_27;
            }

            (*v113)(v37, v25);

            v26 = v37;
            goto LABEL_27;
          }
        }

LABEL_28:
        v24 = v116;
        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
      v111 = &_swiftEmptyArrayStorage;
      v28 = v19;
LABEL_58:

      result = (*(v106 + 8))(v28, v25);
      *v109 = v111;
    }
  }

  return result;
}

unint64_t sub_100019348(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v69 = a1;
  result = sub_1000558E0();
  if (!v2)
  {
    v71 = v16;
    v72 = v9;
    v63 = v14;
    v19 = result;
    if (result >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v68;
      if (v20)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v68;
      if (v20)
      {
LABEL_4:
        v62 = v5;
        if (v20 < 1)
        {
          __break(1u);
        }

        v22 = 0;
        v74 = v19 & 0xC000000000000001;
        v70 = (v10 + 8);
        v60 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
        v59 = "MobileAssetFetch.refresh";
        v58 = 0x80000001001B2280;
        v57 = enum case for DIPError.Code.internalError(_:);
        v56 = (v21 + 104);
        v55 = "ncryptionKey(uuid:)";
        *&v18 = 136315138;
        v54 = v18;
        v53 = xmmword_1001AA160;
        v67 = v19;
        v68 = a2;
        v61 = v8;
        v73 = v20;
        do
        {
          if (v74)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v19 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = [v23 identifier];
          if (v25)
          {
            v26 = v25;
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v28;

            v75 = v27;
            v76 = v29;
            __chkstk_darwin(v30);
            v52 = &v75;
            if (sub_100120CF8(sub_10000ED28, v51, a2))
            {
              v31 = v71;
              defaultLogger()();

              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                v35 = swift_slowAlloc();
                v75 = v35;
                *v34 = v54;
                *(v34 + 4) = sub_10010150C(v27, v29, &v75);
                _os_log_impl(&_mh_execute_header, v32, v33, "deleting encryption key %s from coreData", v34, 0xCu);
                sub_100005090(v35);

                v36 = *v70;
                (*v70)(v71, v72);
              }

              else
              {

                v36 = *v70;
                (*v70)(v31, v72);
              }

              v37 = *(v69 + 16);
              [v37 deleteObject:v24];
              v75 = 0;
              if ([v37 save:&v75])
              {
                v38 = v75;
              }

              else
              {
                v39 = v75;
                v66 = v36;
                v40 = v39;
                v65 = _convertNSErrorToError(_:)();

                swift_willThrow();
                sub_100004E70(&unk_100200230, &unk_1001AB020);
                v41 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
                v42 = *(*v41 + 72);
                v43 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
                v44 = swift_allocObject();
                *(v44 + 16) = v53;
                v45 = v44 + v43;
                v46 = (v45 + v41[14]);
                v47 = type metadata accessor for DIPError.PropertyKey();
                (*(*(v47 - 8) + 104))(v45, v60, v47);
                v46[3] = &type metadata for String;
                v46[4] = &protocol witness table for String;
                *v46 = 25447;
                v46[1] = 0xE200000000000000;
                v64 = sub_10010C6F8(v44);
                swift_setDeallocating();
                sub_10000A0D4(v45, &unk_100201890, &unk_1001AA550);
                swift_deallocClassInstance();
                (*v56)(v61, v57, v62);
                type metadata accessor for DIPError();
                sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
                swift_allocError();
                swift_errorRetain();
                v52 = 411;
                v51[0] = 0xD000000000000011;
                v51[1] = v58;
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                v75 = 0;
                v76 = 0xE000000000000000;
                _StringGuts.grow(_:)(57);
                v48._countAndFlagsBits = 0xD000000000000037;
                v48._object = (v55 | 0x8000000000000000);
                String.append(_:)(v48);
                v49._countAndFlagsBits = v27;
                v49._object = v29;
                String.append(_:)(v49);

                v50 = v63;
                defaultLogger()();
                DIPRecordError(_:message:log:)();

                v66(v50, v72);
              }

              v19 = v67;
              a2 = v68;
              v20 = v73;
            }

            else
            {

              v20 = v73;
            }
          }

          else
          {
          }

          ++v22;
        }

        while (v20 != v22);
      }
    }

    return sub_100050240();
  }

  return result;
}

unint64_t sub_100019B18(uint64_t a1, uint64_t a2)
{
  result = sub_100051CD4();
  if (!v2)
  {
    v6 = result;
    v14 = 0;
    if (result >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = a2;
      v8 = 0;
      a2 = i;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = v9;
        sub_10001AAE4(&v13, v12, &v14, a1);

        ++v8;
        if (v11 == a2)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    return sub_100050240();
  }

  return result;
}

uint64_t sub_100019C50(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(51);
  v4._object = 0x80000001001B2530;
  v4._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

id sub_100019CD4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  (__chkstk_darwin)();
  v87 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 64);
  (__chkstk_darwin)();
  v92 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v96 = v9;
  v97 = v10;
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v88 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v95 = &v81 - v15;
  v16 = __chkstk_darwin(v14);
  v91 = &v81 - v17;
  v18 = __chkstk_darwin(v16);
  v93 = &v81 - v19;
  __chkstk_darwin(v18);
  v94 = &v81 - v20;
  v21 = type metadata accessor for CredentialKeyType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v81 - v28;
  __chkstk_darwin(v27);
  v31 = &v81 - v30;
  v32 = enum case for CredentialKeyType.legacySE(_:);
  v98 = *(v22 + 104);
  (v98)(&v81 - v30, enum case for CredentialKeyType.legacySE(_:), v21);
  v33 = sub_100055D40(v31, 0);
  if (v1)
  {
    return (*(v22 + 8))(v31, v21);
  }

  v83 = v26;
  v84 = v33;
  v35 = *(v22 + 8);
  v35(v31, v21);
  (v98)(v29, v32, v21);
  v82 = sub_100055D40(v29, 1);
  v35(v29, v21);
  v36 = v83;
  v98();
  v37 = a1;
  v38 = sub_100055D40(v36, 2);
  v35(v36, v21);
  v39 = v94;
  defaultLogger()();
  v40 = v84;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v40 >> 62;
  v81 = v37;
  if (v43)
  {
    v45 = swift_slowAlloc();
    *v45 = 134218496;
    if (v44)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v46 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v45 + 4) = v46;

    *(v45 + 12) = 2048;
    if (v82 >> 62)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v47 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v45 + 14) = v47;

    *(v45 + 22) = 2048;
    v48 = v38;
    if (v38 >> 62)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v45 + 24) = v49;

    _os_log_impl(&_mh_execute_header, v41, v42, "count of keys : %ld + %ld + %ld", v45, 0x20u);
  }

  else
  {

    v48 = v38;
  }

  v50 = v96;
  v52 = v97 + 8;
  v51 = *(v97 + 8);
  v51(v39, v96);
  if (v44)
  {
    v53 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v95;
  if (v53)
  {

LABEL_19:

LABEL_20:
    defaultLogger()();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v51;
      v59 = v54;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v99 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_10010150C(0xD000000000000024, 0x80000001001B2400, &v99);
      _os_log_impl(&_mh_execute_header, v56, v57, "%s no action performed", v60, 0xCu);
      sub_100005090(v61);

      v58(v59, v50);
    }

    else
    {

      v51(v54, v50);
    }

    return sub_100050240();
  }

  if (v82 >> 62)
  {
    v55 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v55 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v55)
  {
    goto LABEL_19;
  }

  if (v48 >> 62)
  {
    v62 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v62 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v62)
  {
    goto LABEL_20;
  }

  v97 = v52;
  v63 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v63)
  {
    v98 = v63;
    v64 = [v63 encryptedACL];
    if (v64)
    {
      v65 = v64;
      v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = v68 >> 62;
      if ((v68 >> 62) > 1)
      {
        if (v69 != 2)
        {
          sub_1000092BC(v66, v68);
          goto LABEL_44;
        }

        v74 = *(v66 + 16);
        v75 = *(v66 + 24);
        sub_1000092BC(v66, v68);
      }

      else
      {
        if (!v69)
        {
          sub_1000092BC(v66, v68);
          if ((v68 & 0xFF000000000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_40:
          v76 = v91;
          defaultLogger()();
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&_mh_execute_header, v77, v78, "Setting sidv acl to empty data", v79, 2u);
          }

          v51(v76, v50);
          isa = Data._bridgeToObjectiveC()().super.isa;
          [v98 setEncryptedACL:isa];

          sub_100050240();
          return sub_100050240();
        }

        sub_1000092BC(v66, v68);
        v74 = v66;
        v75 = v66 >> 32;
      }

      if (v74 != v75)
      {
        goto LABEL_40;
      }
    }

LABEL_44:

    return sub_100050240();
  }

  v70 = v93;
  defaultLogger()();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "missing global auth acl, skipping", v73, 2u);
  }

  return (v51)(v70, v50);
}

uint64_t sub_10001A898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = sub_100014668(&v6);
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_10001A940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10001A9A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001AA08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001AA74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001AAE4(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v167 = a4;
  v177 = a3;
  v181 = a2;
  v176 = type metadata accessor for DIPError.Code();
  v200 = *(v176 - 8);
  v5 = *(v200 + 64);
  __chkstk_darwin(v176);
  v180 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DIPError();
  v199 = *(v175 - 8);
  v7 = *(v199 + 64);
  __chkstk_darwin(v175);
  v174 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Date();
  v192 = *(v196 - 8);
  v9 = *(v192 + 64);
  v10 = __chkstk_darwin(v196);
  v179 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v186 = &v154 - v13;
  __chkstk_darwin(v12);
  v194 = &v154 - v14;
  v198 = type metadata accessor for Logger();
  v191 = *(v198 - 8);
  v15 = *(v191 + 64);
  v16 = __chkstk_darwin(v198);
  v18 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v154 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v154 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v154 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v154 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v154 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v154 - v35;
  __chkstk_darwin(v34);
  v38 = &v154 - v37;
  v39 = *a1;
  v40 = v203;
  sub_10005964C();
  if (!v40)
  {
    v43 = v41;
    v184 = 0;
    v166 = v39;
    v197 = v38;
    v195 = v36;
    v178 = v33;
    v158 = v30;
    v155 = v27;
    v172 = v24;
    v171 = v21;
    v170 = v18;
    v193 = v41;
    if (v41 >> 62)
    {
      goto LABEL_63;
    }

    v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v45 = v195;
    v46 = v196;
    v47 = v194;
    v48 = v197;
    v49 = v198;
    v50 = v192;
    if (v44)
    {
      v51 = 0;
      v188 = v43 & 0xFFFFFFFFFFFFFF8;
      v191 += 8;
      v192 = v43 & 0xC000000000000001;
      v169 = (v50 + 16);
      v168 = (v50 + 8);
      v157 = "o remove sidv acl";
      v165 = "MobileAssetFetch.refresh";
      v164 = 0x80000001001B24A0;
      v163 = enum case for DIPError.Code.internalError(_:);
      v162 = (v200 + 104);
      v161 = (v199 + 16);
      v160 = "tectionKeys(keyManager:)";
      v159 = (v199 + 8);
      *&v42 = 136315138;
      v189 = v42;
      *&v42 = 136315394;
      v156 = v42;
      v190 = v44;
      while (1)
      {
        if (v192)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v51 >= *(v188 + 16))
          {
            goto LABEL_61;
          }

          v52 = *(v43 + 8 * v51 + 32);
        }

        v53 = v52;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v153 = _CocoaArrayWrapper.endIndex.getter();
          v43 = v193;
          v44 = v153;
          goto LABEL_4;
        }

        v199 = v51 + 1;
        v200 = v51;
        defaultLogger()();
        v54 = v53;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v201 = v58;
          *v57 = v189;
          v59 = [v54 identifier];
          if (v59)
          {
            v60 = v59;
            v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;
          }

          else
          {
            v61 = 0;
            v63 = 0xE000000000000000;
          }

          v64 = sub_10010150C(v61, v63, &v201);

          *(v57 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v55, v56, "checking if payload protection key %s has a payload", v57, 0xCu);
          sub_100005090(v58);

          v48 = v197;
          v49 = v198;
          v203 = *v191;
          v203(v197, v198);
          v45 = v195;
          v46 = v196;
          v47 = v194;
        }

        else
        {

          v203 = *v191;
          v203(v48, v49);
        }

        v65 = [v54 protectedPayload];
        if (v65)
        {

          defaultLogger()();
          v66 = v54;
          v67 = Logger.logObject.getter();
          v68 = v45;
          v69 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v67, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v201 = v71;
            *v70 = v189;
            v72 = [v66 identifier];
            if (v72)
            {
              v73 = v72;
              v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v75;
            }

            else
            {
              v74 = 0;
              v76 = 0xE000000000000000;
            }

            v98 = sub_10010150C(v74, v76, &v201);

            *(v70 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v67, v69, "Skipping payload protection key deletion for %s as it is associated with a payload", v70, 0xCu);
            sub_100005090(v71);

            v45 = v195;
            v49 = v198;
            v203(v195, v198);
            v46 = v196;
            v47 = v194;
          }

          else
          {

            v203(v68, v49);
            v45 = v68;
          }

          goto LABEL_7;
        }

        v77 = [v54 identifier];
        if (!v77)
        {

          goto LABEL_8;
        }

        v78 = v77;
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = [v54 createdAt];
        if (!v82)
        {
          break;
        }

        v185 = v79;
        v187 = v81;
        v83 = v82;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v84 = v178;
        defaultLogger()();
        v85 = v186;
        (*v169)(v186, v47, v46);
        v86 = v85;
        v87 = v54;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.debug.getter();

        v90 = os_log_type_enabled(v88, v89);
        v183 = v87;
        if (v90)
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v201 = v92;
          *v91 = v156;
          v93 = [v87 identifier];
          LODWORD(v182) = v89;
          v173 = v92;
          if (v93)
          {
            v94 = v93;
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v97 = v96;
          }

          else
          {
            v95 = 0;
            v97 = 0xE000000000000000;
          }

          v114 = sub_10010150C(v95, v97, &v201);

          *(v91 + 4) = v114;
          *(v91 + 12) = 2080;
          sub_10001BD90(&qword_100200500, &type metadata accessor for Date);
          v115 = v186;
          v46 = v196;
          v116 = dispatch thunk of CustomStringConvertible.description.getter();
          v118 = v117;
          v110 = *v168;
          v111 = v168 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v168)(v115, v46);
          v119 = sub_10010150C(v116, v118, &v201);

          *(v91 + 14) = v119;
          _os_log_impl(&_mh_execute_header, v88, v182, "The createdAt for the payload protection key %s is %s", v91, 0x16u);
          swift_arrayDestroy();

          v203(v178, v198);
          v112 = v179;
          v47 = v194;
          v45 = v195;
        }

        else
        {

          v110 = *v168;
          v111 = v168 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v168)(v86, v46);
          v203(v84, v198);
          v112 = v179;
          v47 = v194;
        }

        Date.init()();
        v120 = v112;
        v121 = Date.isAtLeast(days:after:)();
        v182 = v110;
        v110(v120, v46);
        v122 = v180;
        v123 = v172;
        if (v121)
        {
          defaultLogger()();
          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            v127 = v125;
            v128 = v124;
            v129 = "The time to delete payload protection keys has elapsed. Will attempt to delete";
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        v130 = v158;
        defaultLogger()();
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&_mh_execute_header, v131, v132, "The time to delete payload protection keys has not elapsed", v133, 2u);
          v45 = v195;
        }

        v203(v130, v198);
        v134 = [objc_opt_self() standardUserDefaults];
        v135._countAndFlagsBits = 0xD00000000000002BLL;
        v135._object = (v157 | 0x8000000000000000);
        v136 = NSUserDefaults.internalBool(forKey:)(v135);

        if (v136)
        {
          v123 = v155;
          defaultLogger()();
          v124 = Logger.logObject.getter();
          v137 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v124, v137))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            v127 = v137;
            v128 = v124;
            v129 = "Forcing to delete payload protection keys as the internal settings is enabled";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v128, v127, v129, v126, 2u);
          }

LABEL_48:
          v138 = v166;

          v203(v123, v198);
          v139 = *v177 + 1;
          if (__OFADD__(*v177, 1))
          {
            goto LABEL_62;
          }

          v173 = v111;
          *v177 = v139;
          v201 = 778793072;
          v202 = 0xE400000000000000;
          v140._countAndFlagsBits = v185;
          v140._object = v187;
          String.append(_:)(v140);
          v141 = v184;
          sub_1000343E0(v201, v202);
          if (v141)
          {

            v184 = 0;
            (*v162)(v122, v163, v176);
            swift_errorRetain();
            sub_10002688C(&_swiftEmptyArrayStorage);
            v145 = v174;
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            sub_10001BD90(&qword_100200200, &type metadata accessor for DIPError);
            v146 = v175;
            swift_allocError();
            (*v161)(v147, v145, v146);
            v201 = 0;
            v202 = 0xE000000000000000;
            _StringGuts.grow(_:)(77);
            v148._countAndFlagsBits = 0xD00000000000004BLL;
            v148._object = (v160 | 0x8000000000000000);
            String.append(_:)(v148);
            v149._countAndFlagsBits = v185;
            v149._object = v187;
            String.append(_:)(v149);

            v150 = v171;
            defaultLogger()();
            DIPRecordError(_:message:log:)();

            v151 = v150;
            v49 = v198;
            v203(v151, v198);
            (*v159)(v145, v146);
            v46 = v196;
            v182(v47, v196);
          }

          else
          {

            v142 = v171;
            v143 = defaultLogger()();
            __chkstk_darwin(v143);
            Logger.cryptoParam(_:)();
            v203(v142, v198);
            v144 = v183;
            [v138 removeCryptoKeysObject:v183];
            sub_100050240();
            v184 = 0;
            v46 = v196;
            v182(v47, v196);

            v49 = v198;
          }

LABEL_57:
          v45 = v195;
          goto LABEL_7;
        }

        v46 = v196;
        v182(v47, v196);

        v49 = v198;
LABEL_7:
        v48 = v197;
LABEL_8:
        v51 = v200 + 1;
        v43 = v193;
        if (v199 == v190)
        {
          goto LABEL_58;
        }
      }

      v99 = v170;
      defaultLogger()();
      v100 = v54;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v201 = v104;
        *v103 = v189;
        v105 = [v100 identifier];
        if (v105)
        {
          v106 = v105;
          v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v109 = v108;
        }

        else
        {
          v107 = 0;
          v109 = 0xE000000000000000;
        }

        v152 = sub_10010150C(v107, v109, &v201);

        *(v103 + 4) = v152;
        _os_log_impl(&_mh_execute_header, v101, v102, "CreatedAt doesn't exist for payloadProtectionKey %s", v103, 0xCu);
        sub_100005090(v104);

        v49 = v198;
        v203(v170, v198);
        v46 = v196;
        v47 = v194;
      }

      else
      {

        v113 = v99;
        v49 = v198;
        v203(v113, v198);
      }

      goto LABEL_57;
    }

LABEL_58:
  }
}

uint64_t sub_10001BD90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001BDDC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000104D4;

  return sub_100015C64(a1, a2, v7, v6);
}

uint64_t sub_10001BE90(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_100153284(a1, a2, v7);
}

void *sub_10001BF74@<X0>(void *a1@<X8>)
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

uint64_t sub_10001BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100009708(a3, a4 & 0xDFFFFFFFFFFFFFFFLL);
}

uint64_t sub_10001BFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1000092BC(a3, a4 & 0xDFFFFFFFFFFFFFFFLL);
}