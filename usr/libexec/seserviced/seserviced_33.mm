uint64_t sub_1002B3D04()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1002B3E60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v11 = *(a2 + 16);
  }

  sub_100069E2C(a2, a3);
  Data.Iterator.init(_:at:)();
  sub_1002BC5B4(&qword_100509A50, &type metadata accessor for Data.Iterator);
  v12 = 0;
  while (1)
  {
    result = dispatch thunk of IteratorProtocol.next()();
    if (v17[15])
    {
      result = (*(v7 + 8))(v10, v6);
      v16 = *(a1 + 16);
      if (v16 != v12)
      {
        if (v12 < v16)
        {
          return 0;
        }

        goto LABEL_15;
      }

      return 1;
    }

    v14 = *(a1 + 16);
    if (v12 == v14)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    if (v12 >= v14)
    {
      break;
    }

    v15 = *(a1 + 32 + v12++);
    if (v17[14] != v15)
    {
      (*(v7 + 8))(v10, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id sub_1002B405C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v27 = OBJC_IVAR____TtC10seserviced15SESAssetManager_queue;
  v15 = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v26[1] = "Failed to delete ";
  v26[2] = v15;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v30 = _swiftEmptyArrayStorage;
  sub_1002BC5B4(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v27] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning] = 0;
  v16 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_staticAssetPath];
  *v16 = 0xD000000000000021;
  v16[1] = 0x800000010046B090;
  v17 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath];
  *v17 = 0xD000000000000037;
  v17[1] = 0x800000010046B0C0;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_minimumCompatibilityVersion] = 4;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_currentCompatibilityVersion] = 4;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_currentContentVersion] = 0;
  v18 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName];
  *v18 = 0x666E497465737341;
  v18[1] = 0xEF7473696C702E6FLL;
  v19 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix];
  *v19 = 0x5F656C69666F7270;
  v19[1] = 0xE800000000000000;
  v20 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey];
  *v20 = 0xD000000000000015;
  v20[1] = 0x800000010046B100;
  v21 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey];
  *v21 = 0x746E65746E6F435FLL;
  v21[1] = 0xEF6E6F6973726556;
  v22 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey];
  strcpy(&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey], "Manufacturer");
  v22[13] = 0;
  *(v22 + 7) = -5120;
  v23 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey];
  *v23 = 0x6E6F6973726556;
  v23[1] = 0xE700000000000000;
  v24 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_lastAssetCheckBootUUIDKey];
  *v24 = 0xD00000000000001CLL;
  v24[1] = 0x800000010046B120;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_delegates] = _swiftEmptyArrayStorage;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, "init");
}

id sub_1002B4590()
{
  result = [objc_allocWithZone(type metadata accessor for SESAssetManager()) init];
  qword_1005098E8 = result;
  return result;
}

uint64_t sub_1002B45EC()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_1005098F0);
  sub_1000958E4(v0, qword_1005098F0);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002B46A4()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_100509908);
  sub_1000958E4(v0, qword_100509908);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

void sub_1002B475C()
{
  if (qword_100501C58 != -1)
  {
    swift_once();
  }

  sub_1002B47BC();
}

void sub_1002B47BC()
{
  v2 = v0;
  v3 = type metadata accessor for URL.DirectoryHint();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v84 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for URL();
  v85 = *(v10 - 8);
  v11 = *(v85 + 64);
  v12 = __chkstk_darwin(v10);
  v80 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v76 = &v69 - v15;
  __chkstk_darwin(v14);
  v81 = &v69 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_queue];
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  v26 = *(v18 + 8);
  v25 = (v18 + 8);
  v26(v21, v17);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_16;
  }

  if (v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning])
  {
    return;
  }

  v71 = v23;
  v72 = OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning;
  v78 = v1;
  v73 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Asset Manager starting", v29, 2u);
  }

  v30 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath];
  v31 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath + 8];
  v32 = *(v85 + 56);
  v77 = v10;
  v32(v9, 1, 1, v10);
  v33 = *(v82 + 104);
  v75 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v74 = v33;
  v33(v84);

  v34 = v81;
  URL.init(filePath:directoryHint:relativeTo:)();
  v35 = objc_opt_self();
  v36 = &v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_lastAssetCheckBootUUIDKey];
  v79 = v2;
  v38 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_lastAssetCheckBootUUIDKey];
  v37 = *(v36 + 1);
  v39 = String._bridgeToObjectiveC()();
  v70 = v35;
  LODWORD(v35) = [v35 isFirstLaunchAfterBootForKey:v39];

  if (v35)
  {
    v40 = v78;
    sub_1002B5480();
    if (v40)
    {
      (*(v85 + 8))(v34, v77);
      return;
    }

    sub_1002B5D60(v34);
    v69 = *&v79[OBJC_IVAR____TtC10seserviced15SESAssetManager_staticAssetPath];
    v78 = 0;
    v58 = *&v79[OBJC_IVAR____TtC10seserviced15SESAssetManager_staticAssetPath + 8];
    v32(v9, 1, 1, v77);
    v59 = v83;
    v60 = v84;
    v74(v84, v75, v83);

    v61 = v76;
    URL.init(filePath:directoryHint:relativeTo:)();
    v62 = v78;
    sub_1002B64C8(v61, v34);
    if (v62)
    {
      v63 = *(v85 + 8);
      v64 = v77;
      v63(v61, v77);
      v63(v34, v64);
      return;
    }

    sub_1002B8B4C(v34);
    v42 = 0;
    v65 = String._bridgeToObjectiveC()();
    [v70 setFirstLaunchAfterBootDoneForKey:v65];

    v41 = v79;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Asset Manager first launch after boot complete", v68, 2u);
      v60 = v84;
    }

    (*(v85 + 8))(v61, v77);
    v9 = v80;
  }

  else
  {
    v42 = v78;
    v41 = v79;
    v9 = v80;
    v59 = v83;
    v60 = v84;
  }

  v43 = *&v41[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName + 8];
  aBlock = *&v41[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName];
  v87 = v43;
  v74(v60, v75, v59);
  sub_10012512C();

  URL.appending<A>(path:directoryHint:)();
  (*(v82 + 8))(v60, v59);

  sub_1002BBBE8(v9, *&v41[OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey], *&v41[OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey + 8]);
  if (v42)
  {
    v45 = *(v85 + 8);
    v46 = v77;
    v45(v9, v77);
    v45(v34, v46);
    return;
  }

  v24 = v44;
  *&v41[OBJC_IVAR____TtC10seserviced15SESAssetManager_currentContentVersion] = v44;
  v47 = v41;
  v25 = v41;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  v50 = os_log_type_enabled(v48, v49);
  v10 = v77;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 134218240;
    *(v51 + 4) = 4;

    *(v51 + 12) = 2048;
    *(v51 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v48, v49, "Asset Manager compatibility version %lu content version %lu", v51, 0x16u);
  }

  else
  {

    v48 = v47;
  }

  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  v90 = sub_1002BC500;
  v91 = v52;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_100193978;
  v89 = &unk_1004CF438;
  v53 = _Block_copy(&aBlock);
  v23 = v47;

  os_state_add_handler();
  _Block_release(v53);
  if (qword_100501C60 != -1)
  {
    goto LABEL_26;
  }

LABEL_16:
  v54 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000958E4(v54, qword_1005098F0);
  v92 = v24;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  if (qword_100501C68 != -1)
  {
    swift_once();
  }

  sub_1000958E4(v54, qword_100509908);
  v92 = 4;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  v55 = [objc_allocWithZone(SESMobileAssetClient) initWithManager:v23];
  v56 = *(v85 + 8);
  v56(v9, v10);
  v56(v81, v10);
  v57 = *(&v23->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient);
  *(&v23->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient) = v55;

  v25[v72] = 1;
}

uint64_t sub_1002B52D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100501C58 != -1)
  {
    swift_once();
    v2 = a2;
  }

  v3 = qword_1005098E8;
  sub_1000BC094(v2, v11);
  v4 = OBJC_IVAR____TtC10seserviced15SESAssetManager_delegates;
  swift_beginAccess();
  v5 = *(v3 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100130260(0, v5[2] + 1, 1, v5);
    *(v3 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_100130260((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  sub_1000BC104(v11, &v5[5 * v8 + 4]);
  *(v3 + v4) = v5;
  return swift_endAccess();
}

void sub_1002B5480()
{
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v82 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v61 - v7;
  v83 = type metadata accessor for URL();
  v9 = *(v83 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v83);
  v73 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v61 - v13;
  v70 = type metadata accessor for NSFastEnumerationIterator();
  v69 = *(v70 - 8);
  v14 = *(v69 + 64);
  __chkstk_darwin(v70);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = objc_opt_self();
  v17 = [v72 defaultManager];
  v80 = sub_100068FC4(&qword_100509A38, &qword_100414768);
  v18 = swift_allocObject();
  v79 = xmmword_1004098F0;
  *(v18 + 16) = xmmword_1004098F0;
  *(v18 + 32) = NSURLIsRegularFileKey;
  v78 = NSURLIsRegularFileKey;
  v19 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v19)
  {
    return;
  }

  v85 = v0;
  v65 = v19;
  NSEnumerator.makeIterator()();
  v20 = OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix;
  v68 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v81 = v16;
  NSFastEnumerationIterator.next()();
  if (!v87)
  {
    v25 = v81;
LABEL_20:
    (*(v69 + 8))(v25, v70);

    return;
  }

  v74 = (v75 + v20);
  v22 = (v9 + 56);
  v77 = (v9 + 32);
  v76 = (v2 + 8);
  v23 = v9;
  v24 = (v9 + 8);
  v67 = (v23 + 16);
  *&v21 = 136315138;
  v61 = v21;
  v25 = v81;
  v27 = v83;
  v26 = v84;
  v66 = v1;
  while (1)
  {
    v28 = swift_dynamicCast();
    v29 = *v22;
    if (v28)
    {
      break;
    }

    v29(v8, 1, 1, v27);
    sub_100075768(v8, &unk_10050BEA0, &unk_10040F450);
LABEL_5:
    NSFastEnumerationIterator.next()();
    if (!v87)
    {
      goto LABEL_20;
    }
  }

  v30 = v22;
  v29(v8, 0, 1, v27);
  (*v77)(v26, v8, v27);
  inited = swift_initStackObject();
  *(inited + 16) = v79;
  v32 = v78;
  *(inited + 32) = v78;
  v33 = v32;
  sub_1000B3A70(inited);
  swift_setDeallocating();
  v34 = v82;
  sub_1002BC450(inited + 32);
  v35 = v85;
  URL.resourceValues(forKeys:)();
  v85 = v35;
  if (v35)
  {

    (*v24)(v84, v83);
    goto LABEL_22;
  }

  v36 = URLResourceValues.isRegularFile.getter();
  if (v36 == 2)
  {
    __break(1u);
  }

  v26 = v84;
  if ((v36 & 1) == 0)
  {
    (*v76)(v34, v1);
    v27 = v83;
    (*v24)(v26, v83);
LABEL_18:
    v25 = v81;
    v22 = v30;
    goto LABEL_5;
  }

  URL.lastPathComponent.getter();
  v37 = *v74;
  v38 = v74[1];
  v39 = v26;
  v40 = sub_1002B3D04();

  if ((v40 & 1) == 0)
  {
    (*v76)(v34, v1);
    v27 = v83;
    (*v24)(v39, v83);
    v25 = v81;
    v26 = v39;
    v22 = v30;
    goto LABEL_5;
  }

  v41 = v73;
  v42 = v39;
  v43 = v83;
  (*v67)(v73, v42, v83);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v63 = v46;
    v64 = swift_slowAlloc();
    v86 = v64;
    *v46 = v61;
    v47 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v47._countAndFlagsBits;
    v71 = *v24;
    v71(v41, v43);
    v48 = sub_1002FFA0C(countAndFlagsBits, v47._object, &v86);

    v49 = v63;
    *(v63 + 1) = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "Deleting profile %s", v49, 0xCu);
    sub_1000752F4(v64);
  }

  else
  {

    v71 = *v24;
    v71(v41, v43);
  }

  v50 = [v72 defaultManager];
  v26 = v84;
  URL._bridgeToObjectiveC()(v51);
  v53 = v52;
  v86 = 0;
  v54 = [v50 removeItemAtURL:v52 error:&v86];

  v55 = v82;
  if (v54)
  {
    v56 = *v76;
    v57 = v86;
    v58 = v66;
    v56(v55, v66);
    v1 = v58;
    v27 = v83;
    v71(v26, v83);
    goto LABEL_18;
  }

  v59 = v86;
  v60 = _convertNSErrorToError(_:)();

  v85 = v60;
  swift_willThrow();

  (*v76)(v55, v66);
  v71(v84, v83);
LABEL_22:
  (*(v69 + 8))(v81, v70);
}

uint64_t sub_1002B5D60(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v61 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v62 = v59 - v14;
  __chkstk_darwin(v13);
  v16 = v59 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_queue];
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v25 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName + 8];
    v66[0] = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName];
    v66[1] = v25;
    (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
    sub_10012512C();

    v26 = v67;
    URL.appending<A>(path:directoryHint:)();
    (*(v4 + 8))(v7, v3);

    v27 = v63;
    sub_1002BBBE8(v16, *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey], *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey + 8]);
    if (v27)
    {
      v63 = v16;
      v29 = v64;
      v30 = v65;
      v31 = v62;
      (*(v65 + 16))(v62, v26, v64);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v60 = v2;
        v35 = v34;
        v36 = swift_slowAlloc();
        v66[0] = v36;
        *v35 = 136315138;
        v37 = URL.path(percentEncoded:)(1);
        v38 = *(v30 + 8);
        v38(v31, v64);
        v39 = sub_1002FFA0C(v37._countAndFlagsBits, v37._object, v66);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "Deleting asset due to failure reading its compatibility version at %s", v35, 0xCu);
        sub_1000752F4(v36);

        v29 = v64;
      }

      else
      {

        v38 = *(v30 + 8);
        v38(v31, v29);
      }

      sub_1002B9B6C(v67);
      v38(v63, v29);
    }

    else
    {
      v40 = v64;
      if (v28 == 4)
      {
        return (*(v65 + 8))(v16, v64);
      }

      else
      {
        v59[1] = 0;
        v62 = v28;
        v63 = v16;
        v41 = v65;
        v42 = v61;
        (*(v65 + 16))(v61, v26, v64);
        v43 = v2;
        v60 = v2;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v59[0] = v43;
          v47 = v46;
          v48 = swift_slowAlloc();
          v66[0] = v48;
          *v47 = 134218498;
          *(v47 + 4) = v62;
          *(v47 + 12) = 2048;
          *(v47 + 14) = 4;

          *(v47 + 22) = 2080;
          v49 = URL.path(percentEncoded:)(1);
          v50 = *(v41 + 8);
          v50(v42, v40);
          v51 = sub_1002FFA0C(v49._countAndFlagsBits, v49._object, v66);

          *(v47 + 24) = v51;
          _os_log_impl(&_mh_execute_header, v44, v45, "Migrating asset from %lu to %lu at %s", v47, 0x20u);
          sub_1000752F4(v48);

          v43 = v59[0];

          v52 = v50;
        }

        else
        {

          v52 = *(v41 + 8);
          v52(v42, v40);
        }

        v53 = v43;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 134218496;
          *(v56 + 4) = v62;
          *(v56 + 12) = 2048;
          *(v56 + 14) = 4;
          *(v56 + 22) = 2048;
          *(v56 + 24) = 4;

          _os_log_impl(&_mh_execute_header, v54, v55, "Can't migrate asset compatibility version %lu current %lu minimum %ld", v56, 0x20u);
        }

        else
        {

          v54 = v53;
        }

        v57 = v67;
        v58 = v63;

        sub_1002B9B6C(v57);
        return (v52)(v58, v40);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B64C8(uint64_t a1, uint64_t a2)
{
  v278 = a2;
  v4 = sub_100068FC4(&qword_100509A30, &qword_100414760);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v262 = &v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v261 = &v235 - v8;
  i = type metadata accessor for URLResourceValues();
  v248 = *(i - 8);
  v9 = v248[8];
  __chkstk_darwin(i);
  v258 = &v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v255 = &v235 - v13;
  v250 = type metadata accessor for NSFastEnumerationIterator();
  v249 = *(v250 - 8);
  v14 = *(v249 + 64);
  __chkstk_darwin(v250);
  v256 = (&v235 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v267 = type metadata accessor for URL.DirectoryHint();
  v269 = *(v267 - 8);
  v16 = v269[8];
  __chkstk_darwin(v267);
  v266 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v279 = *(v18 - 8);
  v19 = v279[8];
  v20 = __chkstk_darwin(v18);
  v263 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v271 = &v235 - v23;
  v24 = __chkstk_darwin(v22);
  v270 = &v235 - v25;
  v26 = __chkstk_darwin(v24);
  v265 = &v235 - v27;
  v28 = __chkstk_darwin(v26);
  v264 = &v235 - v29;
  v30 = __chkstk_darwin(v28);
  v260 = &v235 - v31;
  v32 = __chkstk_darwin(v30);
  v246 = &v235 - v33;
  v34 = __chkstk_darwin(v32);
  v247 = &v235 - v35;
  v36 = __chkstk_darwin(v34);
  v259 = &v235 - v37;
  v38 = __chkstk_darwin(v36);
  countAndFlagsBits = &v235 - v39;
  v40 = __chkstk_darwin(v38);
  v252 = &v235 - v41;
  v42 = __chkstk_darwin(v40);
  *&v251 = &v235 - v43;
  v44 = __chkstk_darwin(v42);
  v257 = &v235 - v45;
  v46 = __chkstk_darwin(v44);
  v268 = &v235 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v235 - v49;
  __chkstk_darwin(v48);
  v52 = (&v235 - v51);
  v53 = type metadata accessor for DispatchPredicate();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  v57 = (&v235 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *(v2 + OBJC_IVAR____TtC10seserviced15SESAssetManager_queue);
  *v57 = v58;
  (*(v54 + 104))(v57, enum case for DispatchPredicate.onQueue(_:), v53);
  v59 = v58;
  v60 = _dispatchPreconditionTest(_:)();
  (*(v54 + 8))(v57, v53);
  if ((v60 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v61 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v63 = v279 + 2;
  v62 = v279[2];
  v62(v52, a1, v18);
  v64 = v278;
  v274 = v62;
  v275 = v63;
  v62(v50, v278, v18);
  v273 = v61;
  v65 = a1;
  v66 = v2;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  v69 = os_log_type_enabled(v67, v68);
  v277 = v66;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    v283._countAndFlagsBits = v245;
    *v70 = 136315394;
    LODWORD(v244) = v68;
    v71 = URL.path(percentEncoded:)(1);
    v272 = v65;
    v72 = v279[1];
    v72(v52, v18);
    v73 = sub_1002FFA0C(v71._countAndFlagsBits, v71._object, &v283._countAndFlagsBits);
    v74 = v272;

    *(v70 + 4) = v73;
    *(v70 + 12) = 2080;
    v75 = URL.path(percentEncoded:)(1);
    v72(v50, v18);
    v76 = v72;
    v77 = sub_1002FFA0C(v75._countAndFlagsBits, v75._object, &v283._countAndFlagsBits);

    *(v70 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v67, v244, "Trying to apply %s on top of %s", v70, 0x16u);
    swift_arrayDestroy();

    v78 = v278;
  }

  else
  {
    v78 = v64;

    v76 = v279[1];
    v76(v50, v18);
    v76(v52, v18);
    v74 = v65;
  }

  v79 = [objc_opt_self() defaultManager];
  v282 = 0;
  URL.path(percentEncoded:)(1);
  v80 = String._bridgeToObjectiveC()();

  v81 = [v79 fileExistsAtPath:v80 isDirectory:&v282];

  if (!v81 || v282 != 1)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v283._countAndFlagsBits = 0;
    v283._object = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v283._countAndFlagsBits = 0xD000000000000018;
    v283._object = 0x800000010046AEC0;
    v98 = URL.path(percentEncoded:)(1);
    String.append(_:)(v98);

    sub_10030990C(0, 1, v283._countAndFlagsBits, v283._object, 0);
    swift_willThrow();
    goto LABEL_12;
  }

  URL.path(percentEncoded:)(1);
  v82 = String._bridgeToObjectiveC()();

  v83 = [v79 fileExistsAtPath:v82 isDirectory:&v282];

  v245 = v76;
  if (!v83 || v282 != 1)
  {
    v100 = v270;
    v274(v270, v78, v18);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = v100;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v272 = v74;
      v269 = v105;
      v283._countAndFlagsBits = v105;
      *v104 = 136315138;
      v106 = URL.path(percentEncoded:)(1);
      v76(v103, v18);
      v107 = sub_1002FFA0C(v106._countAndFlagsBits, v106._object, &v283._countAndFlagsBits);

      *(v104 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v101, v102, "Invalid target asset at %s", v104, 0xCu);
      sub_1000752F4(v269);
      v74 = v272;
    }

    else
    {

      v76(v100, v18);
    }

    v50 = v271;
    v108 = v278;
    v109 = v276;
    sub_1002B9B6C(v278);
    if (!v109)
    {
      sub_1002BC1FC();
      v110 = v274;
      v274(v50, v74, v18);
      v111 = v263;
      v110(v263, v108, v18);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        v283._countAndFlagsBits = v278;
        *v114 = 136315394;
        v115 = v50;
        LOBYTE(v50) = 1;
        LODWORD(v277) = v113;
        v116 = URL.path(percentEncoded:)(1);
        v276 = v112;
        v271 = v79;
        v117 = v115;
        v118 = v245;
        v245(v117, v18);
        v119 = sub_1002FFA0C(v116._countAndFlagsBits, v116._object, &v283._countAndFlagsBits);

        *(v114 + 4) = v119;
        *(v114 + 12) = 2080;
        v120 = URL.path(percentEncoded:)(1);
        v118(v111, v18);
        v121 = sub_1002FFA0C(v120._countAndFlagsBits, v120._object, &v283._countAndFlagsBits);

        *(v114 + 14) = v121;
        v122 = v276;
        _os_log_impl(&_mh_execute_header, v276, v277, "Copied asset from %s to %s", v114, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v125 = v245;
        v245(v111, v18);
        v125(v50, v18);
        LOBYTE(v50) = 1;
      }

      return v50 & 1;
    }

LABEL_12:

    return v50 & 1;
  }

  v243 = v18;
  v271 = v79;
  v84 = *(v277 + OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName + 8);
  v242 = *(v277 + OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName);
  v283._countAndFlagsBits = v242;
  v283._object = v84;
  v85 = v269;
  v87 = (v269 + 13);
  v86 = v269[13];
  v88 = v266;
  LODWORD(v270) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v89 = v267;
  v263 = v86;
  (v86)(v266);
  v90 = sub_10012512C();

  v91 = v268;
  v244 = v90;
  URL.appending<A>(path:directoryHint:)();
  v92 = v277;
  v93 = v88;
  v95 = v85[1];
  v94 = v85 + 1;
  v50 = v95;
  v95(v93, v89);

  v96 = v276;
  sub_1002BBBE8(v91, *(v92 + OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey), *(v92 + OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey + 8));
  if (v96)
  {
    v245(v91, v243);

    return v50 & 1;
  }

  v241 = v84;
  v276 = v87;
  v269 = v94;
  if (v97 != 4)
  {
    v126 = v97;
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v283._countAndFlagsBits = 0;
    v283._object = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v283._countAndFlagsBits = 0xD000000000000029;
    v283._object = 0x800000010046AEE0;
    v285._countAndFlagsBits = v126;
    v127._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v127);

    sub_10030990C(0, 1, v283._countAndFlagsBits, v283._object, 0);
    swift_willThrow();

    v245(v268, v243);
    return v50 & 1;
  }

  v123 = *(v277 + OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey);
  v124 = *(v277 + OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey + 8);
  sub_1002BBBE8(v268, v123, v124);
  a1 = 0;
  v239 = v128;
  v283._countAndFlagsBits = v242;
  v283._object = v241;
  v240 = v50;
  v129 = v266;
  v130 = v267;
  (v263)(v266, v270, v267);

  v131 = v257;
  URL.appending<A>(path:directoryHint:)();
  v240(v129, v130);

  sub_1002BBBE8(v131, v123, v124);
  v18 = v243;
  if (v132 >= v239)
  {
    v148 = v251;
    v274(v251, v278, v243);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v283._countAndFlagsBits = v152;
      *v151 = 136315138;
      v153 = URL.path(percentEncoded:)(1);
      v154 = v148;
      v155 = v245;
      v245(v154, v18);
      v156 = sub_1002FFA0C(v153._countAndFlagsBits, v153._object, &v283._countAndFlagsBits);

      *(v151 + 4) = v156;
      _os_log_impl(&_mh_execute_header, v149, v150, "Target asset already up to date %s", v151, 0xCu);
      sub_1000752F4(v152);

      v157 = v243;
      v155(v257, v243);
      v155(v268, v157);
    }

    else
    {

      v194 = v245;
      v245(v148, v18);
      v194(v257, v18);
      v194(v268, v18);
    }

    LOBYTE(v50) = 0;
    return v50 & 1;
  }

  v133 = v132;
  v57 = v277;
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 134218240;
    *(v136 + 4) = v239;
    *(v136 + 12) = 2048;
    *(v136 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v134, v135, "Source asset version %lu target asset version %lu", v136, 0x16u);
    v57 = v277;
  }

  v50 = v252;
  v137 = v274;
  v274(v252, v278, v18);
  v60 = countAndFlagsBits;
  v272 = v74;
  v137(countAndFlagsBits, v74, v18);
  v52 = Logger.logObject.getter();
  v138 = static os_log_type_t.info.getter();
  v139 = os_log_type_enabled(v52, v138);
  v53 = v255;
  if (v139)
  {
    v140 = swift_slowAlloc();
    *&v251 = swift_slowAlloc();
    v283._countAndFlagsBits = v251;
    *v140 = 136315394;
    LODWORD(v238) = v138;
    v141 = URL.path(percentEncoded:)(1);
    v237 = v52;
    v142 = v50;
    v143 = v245;
    v245(v142, v18);
    v144 = sub_1002FFA0C(v141._countAndFlagsBits, v141._object, &v283._countAndFlagsBits);

    *(v140 + 4) = v144;
    *(v140 + 12) = 2080;
    v145 = URL.path(percentEncoded:)(1);
    v143(v60, v18);
    v146 = sub_1002FFA0C(v145._countAndFlagsBits, v145._object, &v283._countAndFlagsBits);

    *(v140 + 14) = v146;
    v147 = v237;
    _os_log_impl(&_mh_execute_header, v237, v238, "Updating target asset %s with %s", v140, 0x16u);
    swift_arrayDestroy();

    v57 = v277;

    goto LABEL_34;
  }

LABEL_33:

  v158 = v245;
  v245(v60, v18);
  v158(v50, v18);
LABEL_34:
  v159 = v256;
  v252 = sub_100068FC4(&qword_100509A38, &qword_100414768);
  v160 = swift_allocObject();
  v251 = xmmword_1004098F0;
  *(v160 + 16) = xmmword_1004098F0;
  *(v160 + 32) = NSURLIsRegularFileKey;
  v161 = NSURLIsRegularFileKey;
  v162 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v162)
  {
    v195 = _swiftEmptyDictionarySingleton;
LABEL_64:
    v196 = 0;
    countAndFlagsBits = v195;
    v198 = (v195 + 8);
    v197 = v195[8];
    v199 = 1 << *(v198 - 32);
    v200 = -1;
    if (v199 < 64)
    {
      v200 = ~(-1 << v199);
    }

    v50 = v200 & v197;
    v256 = (v57 + OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey);
    v201 = (v199 + 63) >> 6;
    v273 = (v279 + 4);
    v258 = (v279 + 1);
    v202 = v270;
    v255 = v198;
    for (i = v201; ; v201 = i)
    {
      if (v50)
      {
        v204 = v196;
LABEL_80:
        v208 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v209 = v208 | (v204 << 6);
        v210 = countAndFlagsBits;
        v211 = v279;
        v212 = v260;
        v274(v260, *(countAndFlagsBits + 6) + v279[9] * v209, v18);
        v213 = *(v210[7] + 8 * v209);
        v214 = sub_100068FC4(&qword_100509A40, &qword_100414770);
        v215 = *(v214 + 48);
        v216 = v211[4];
        v217 = v262;
        v216(v262, v212, v18);
        *&v217[v215] = v213;
        v207 = v217;
        (*(*(v214 - 8) + 56))(v217, 0, 1, v214);
        v202 = v270;
      }

      else
      {
        if (v201 <= v196 + 1)
        {
          v205 = v196 + 1;
        }

        else
        {
          v205 = v201;
        }

        v206 = v205 - 1;
        v207 = v262;
        while (1)
        {
          v204 = v196 + 1;
          if (__OFADD__(v196, 1))
          {
            __break(1u);
          }

          if (v204 >= v201)
          {
            break;
          }

          v50 = *&v198[8 * v204];
          ++v196;
          if (v50)
          {
            v196 = v204;
            goto LABEL_80;
          }
        }

        v228 = sub_100068FC4(&qword_100509A40, &qword_100414770);
        (*(*(v228 - 8) + 56))(v207, 1, 1, v228);
        v50 = 0;
        v196 = v206;
      }

      v218 = v207;
      v219 = v261;
      sub_1002BC3E0(v218, v261);
      v220 = sub_100068FC4(&qword_100509A40, &qword_100414770);
      if ((*(*(v220 - 8) + 48))(v219, 1, v220) == 1)
      {

        v229 = v268;
        v230 = v257;
        v231 = v277;
        sub_1002BA0BC(v268, v257);

        v232 = v230;
        v233 = v245;
        v245(v232, v18);
        v233(v229, v18);
        if (!a1)
        {
          *(v231 + OBJC_IVAR____TtC10seserviced15SESAssetManager_currentContentVersion) = v239;
          LOBYTE(v50) = 1;
        }

        return v50 & 1;
      }

      v259 = *(v219 + *(v220 + 48));
      (*v273)(v264, v219, v18);
      v283 = URL.path(percentEncoded:)(1);
      v285 = URL.path(percentEncoded:)(1);
      v280 = 0;
      v281 = 0xE000000000000000;
      v221 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v223 = v222;

      v283._countAndFlagsBits = v221;
      v283._object = v223;
      v224 = v266;
      v225 = v267;
      (v263)(v266, v202, v267);
      v226 = v265;
      URL.appending<A>(path:directoryHint:)();
      v240(v224, v225);

      sub_1002BBBE8(v226, *v256, v256[1]);
      if (a1)
      {
        break;
      }

      v18 = v243;
      v202 = v270;
      if (v227 < v259)
      {
        goto LABEL_68;
      }

LABEL_69:
      v203 = v245;
      v245(v265, v18);
      v203(v264, v18);
      v198 = v255;
    }

    a1 = 0;
    v18 = v243;
    v202 = v270;
LABEL_68:
    sub_1002BA0BC(v264, v265);
    goto LABEL_69;
  }

  v163 = v18;
  v237 = v162;
  NSEnumerator.makeIterator()();
  v164 = OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey;
  NSFastEnumerationIterator.next()();
  if (!v284)
  {
    countAndFlagsBits = _swiftEmptyDictionarySingleton;
LABEL_63:
    (*(v249 + 8))(v159, v250);

    v18 = v163;
    v57 = v277;
    v195 = countAndFlagsBits;
    goto LABEL_64;
  }

  v236 = (v57 + v164);
  v165 = (v279 + 7);
  v166 = (v279 + 4);
  v238 = (v248 + 1);
  countAndFlagsBits = _swiftEmptyDictionarySingleton;
  v248 = v279 + 1;
  while (1)
  {
    while (1)
    {
      v167 = swift_dynamicCast();
      v168 = *v165;
      if (v167)
      {
        break;
      }

      v168(v53, 1, 1, v163);
      sub_100075768(v53, &unk_10050BEA0, &unk_10040F450);
LABEL_38:
      NSFastEnumerationIterator.next()();
      if (!v284)
      {
        goto LABEL_63;
      }
    }

    v168(v53, 0, 1, v163);
    (*v166)(v259, v53, v163);
    inited = swift_initStackObject();
    *(inited + 16) = v251;
    *(inited + 32) = v161;
    v170 = v161;
    sub_1000B3A70(inited);
    swift_setDeallocating();
    sub_1002BC450(inited + 32);
    LOBYTE(v50) = v258;
    URL.resourceValues(forKeys:)();
    if (a1)
    {

      v234 = v245;
      v245(v259, v163);
      (*(v249 + 8))(v256, v250);
      v234(v257, v163);
      v234(v268, v163);

      return v50 & 1;
    }

    v171 = URLResourceValues.isRegularFile.getter();
    if (v171 == 2)
    {
      goto LABEL_92;
    }

    v159 = v256;
    v53 = v255;
    if ((v171 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (URL.lastPathComponent.getter() == v242 && v172 == v241)
    {

LABEL_47:
      (*v238)(v258, i);
      v245(v259, v163);
      goto LABEL_38;
    }

    v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v173)
    {
      goto LABEL_47;
    }

    sub_1002BBBE8(v259, *v236, v236[1]);
    v235 = v174;
    v175 = v247;
    v274(v247, v259, v163);
    v176 = countAndFlagsBits;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v285._countAndFlagsBits = v176;
    v179 = sub_10008D144(v175);
    v180 = *(v176 + 16);
    v181 = (v178 & 1) == 0;
    v182 = v180 + v181;
    if (__OFADD__(v180, v181))
    {
      break;
    }

    v183 = v178;
    if (*(countAndFlagsBits + 3) >= v182)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100313F9C();
      }
    }

    else
    {
      sub_10030F904(v182, isUniquelyReferenced_nonNull_native);
      v184 = sub_10008D144(v247);
      if ((v183 & 1) != (v185 & 1))
      {
        goto LABEL_93;
      }

      v179 = v184;
    }

    countAndFlagsBits = v285._countAndFlagsBits;
    if (v183)
    {
      *(*(countAndFlagsBits + 7) + 8 * v179) = v235;
      v186 = v245;
      v245(v247, v163);
      (*v238)(v258, i);
      v186(v259, v163);
    }

    else
    {
      v187 = countAndFlagsBits;
      *&countAndFlagsBits[8 * (v179 >> 6) + 64] |= 1 << v179;
      v188 = v247;
      v274((v187[6] + v279[9] * v179), v247, v163);
      *(v187[7] + 8 * v179) = v235;
      v189 = v188;
      v190 = v245;
      v245(v189, v163);
      (*v238)(v258, i);
      v190(v259, v163);
      v191 = v187[2];
      v192 = __OFADD__(v191, 1);
      v193 = v191 + 1;
      if (v192)
      {
        goto LABEL_91;
      }

      *(countAndFlagsBits + 2) = v193;
    }

    v159 = v256;
    NSFastEnumerationIterator.next()();
    v53 = v255;
    if (!v284)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002B8B4C(uint64_t a1)
{
  v31 = a1;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 dictionaryForKey:v6];

    if (v7)
    {
      v30 = v5;
      v40 = v1;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
      v11 = v8 + 64;
      v10 = *(v8 + 64);
      v33 = v8;
      v12 = 1 << *(v8 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & v10;
      v15 = (v12 + 63) >> 6;
      if ((v13 & v10) == 0)
      {
        goto LABEL_9;
      }

      do
      {
        while (1)
        {
          v16 = v9;
LABEL_16:
          v19 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          v20 = v19 | (v16 << 6);
          v21 = (*(v33 + 48) + 16 * v20);
          v22 = *v21;
          v23 = v21[1];
          sub_1000754F0(*(v33 + 56) + 32 * v20, v34);
          *&v35 = v22;
          *(&v35 + 1) = v23;
          sub_100075D50(v34, &v36);

          v18 = v16;
LABEL_17:
          v38 = v35;
          v39[0] = v36;
          v39[1] = v37;
          v24 = *(&v35 + 1);
          if (!*(&v35 + 1))
          {

            return;
          }

          v25 = v38;
          sub_100075D50(v39, &v35);
          sub_100068FC4(&unk_100503EC0, &unk_100417130);
          v26 = swift_dynamicCast();
          if (v26)
          {
            break;
          }

          v9 = v18;
          if (!v14)
          {
            goto LABEL_9;
          }
        }

        v27 = *&v34[0];
        __chkstk_darwin(v26);
        v29[2] = v32;
        v29[3] = v31;
        v29[4] = v25;
        v29[5] = v24;
        v28 = v40;
        sub_1002B3C70(sub_1002BC524, v29, v27);
        v40 = v28;

        v9 = v18;
      }

      while (v14);
LABEL_9:
      if (v15 <= v9 + 1)
      {
        v17 = v9 + 1;
      }

      else
      {
        v17 = v15;
      }

      v18 = v17 - 1;
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v15)
        {
          v14 = 0;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          goto LABEL_17;
        }

        v14 = *(v11 + 8 * v16);
        ++v9;
        if (v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1002B8E54()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100509A48, &qword_100414778);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v108 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v110 = &v95 - v6;
  v106 = type metadata accessor for NSFastEnumerationIterator();
  v105 = *(v106 - 8);
  v7 = *(v105 + 64);
  __chkstk_darwin(v106);
  v115 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v114 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v114);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v95 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v109 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v95 - v25;
  v27 = [objc_opt_self() defaultManager];
  v107 = v1;
  v29 = *(v1 + OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath);
  v28 = *(v1 + OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath + 8);
  v116 = v21[7];
  v117 = v21 + 7;
  v116(v19, 1, 1, v20);
  (*(v9 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v114);

  URL.init(filePath:directoryHint:relativeTo:)();
  v114 = sub_100068FC4(&qword_100509A38, &qword_100414768);
  v30 = swift_allocObject();
  v113 = xmmword_1004098F0;
  *(v30 + 16) = xmmword_1004098F0;
  *(v30 + 32) = NSURLIsRegularFileKey;
  v31 = NSURLIsRegularFileKey;
  v32 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v33 = v21;

  v34 = v21[1];
  v112 = v21 + 1;
  v111 = v34;
  v34(v26, v20);
  if (!v32)
  {
    v89 = _swiftEmptyDictionarySingleton;
LABEL_32:
    v90 = *(v107 + OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning);
    v123 = &type metadata for Bool;
    LOBYTE(v122) = v90;
    sub_100075D50(&v122, &v120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v119[0] = v89;
    sub_100315178(&v120, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
    sub_1001950D4(*&v119[0]);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v93 = sub_100015DA0("assetmanager.state", isa);

    return v93;
  }

  v103 = v32;
  NSEnumerator.makeIterator()();
  v35 = OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName;
  v36 = OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey;
  v37 = OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey;
  v38 = OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey;
  NSFastEnumerationIterator.next()();
  if (!v123)
  {
    v104 = _swiftEmptyDictionarySingleton;
    v41 = v115;
LABEL_31:
    (*(v105 + 8))(v41, v106);

    v89 = v104;
    goto LABEL_32;
  }

  v102 = (v107 + v35);
  v99 = (v107 + v36);
  v101 = (v107 + v37);
  v100 = (v107 + v38);
  v39 = (v33 + 4);
  v104 = _swiftEmptyDictionarySingleton;
  v40 = v110;
  v41 = v115;
  v42 = v109;
  while ((swift_dynamicCast() & 1) == 0)
  {
    v116(v17, 1, 1, v20);
    sub_100075768(v17, &unk_10050BEA0, &unk_10040F450);
LABEL_5:
    NSFastEnumerationIterator.next()();
    if (!v123)
    {
      goto LABEL_31;
    }
  }

  v116(v17, 0, 1, v20);
  (*v39)(v42, v17, v20);
  inited = swift_initStackObject();
  *(inited + 16) = v113;
  *(inited + 32) = v31;
  v44 = v31;
  sub_1000B3A70(inited);
  swift_setDeallocating();
  sub_1002BC450(inited + 32);
  URL.resourceValues(forKeys:)();

  v45 = type metadata accessor for URLResourceValues();
  v46 = *(v45 - 8);
  (*(v46 + 56))(v40, 0, 1, v45);
  v47 = v108;
  sub_1002BC544(v40, v108);
  if ((*(v46 + 48))(v47, 1, v45) == 1)
  {
    goto LABEL_36;
  }

  v48 = URLResourceValues.isRegularFile.getter();
  (*(v46 + 8))(v47, v45);
  if (v48 == 2)
  {
    goto LABEL_35;
  }

  v40 = v110;
  v41 = v115;
  if ((v48 & 1) == 0)
  {
    sub_100075768(v110, &qword_100509A48, &qword_100414778);
    v42 = v109;
LABEL_11:
    v111(v42, v20);
    goto LABEL_5;
  }

  v42 = v109;
  if (URL.lastPathComponent.getter() == *v102 && v49 == v102[1])
  {

LABEL_16:
    v51 = *v101;
    v52 = v101[1];
    sub_1002BBBE8(v42, *v101, v52);
    v97 = v52;
    v96 = v53;
    v54 = *v100;
    v55 = v100[1];
    sub_1002BBBE8(v42, *v100, v55);
    v98 = v51;
    *&v120 = v56;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = &type metadata for String;
    *&v120 = v57;
    *(&v120 + 1) = v58;
    sub_100075D50(&v120, v119);
    v59 = v104;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v59;
    sub_100315178(v119, v54, v55, v60);
    v61 = v118;
    *&v120 = v96;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = &type metadata for String;
    *&v120 = v62;
    *(&v120 + 1) = v63;
    sub_100075D50(&v120, v119);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v61;
    sub_100315178(v119, v98, v97, v64);
    sub_100075768(v40, &qword_100509A48, &qword_100414778);
    v111(v42, v20);
    v104 = v118;
    v41 = v115;
    goto LABEL_5;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_16;
  }

  sub_1002BBBE8(v42, *v99, v99[1]);
  v66 = v65;
  v98 = URL.lastPathComponent.getter();
  v68 = v67;
  *&v120 = v66;
  v69 = dispatch thunk of CustomStringConvertible.description.getter();
  v121 = &type metadata for String;
  *&v120 = v69;
  *(&v120 + 1) = v70;
  sub_100075D50(&v120, v119);
  v71 = v104;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v71;
  v97 = v68;
  v73 = sub_10008C908(v98, v68);
  v75 = v71[2];
  v76 = (v74 & 1) == 0;
  v77 = __OFADD__(v75, v76);
  v78 = v75 + v76;
  if (!v77)
  {
    v79 = v74;
    if (v71[3] >= v78)
    {
      if ((v72 & 1) == 0)
      {
        v88 = v73;
        sub_10031130C();
        v73 = v88;
      }

      v80 = v97;
    }

    else
    {
      sub_10030A928(v78, v72);
      v80 = v97;
      v73 = sub_10008C908(v98, v97);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_37;
      }
    }

    if (v79)
    {
      v82 = v73;

      v104 = v118;
      v83 = (v118[7] + 32 * v82);
      sub_1000752F4(v83);
      sub_100075D50(v119, v83);
    }

    else
    {
      v84 = v118;
      v118[(v73 >> 6) + 8] |= 1 << v73;
      v85 = (v84[6] + 16 * v73);
      *v85 = v98;
      v85[1] = v80;
      sub_100075D50(v119, (v84[7] + 32 * v73));
      v86 = v84[2];
      v77 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v77)
      {
        goto LABEL_34;
      }

      v104 = v84;
      v84[2] = v87;
    }

    v41 = v115;
    sub_100075768(v40, &qword_100509A48, &qword_100414778);
    goto LABEL_11;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002B9B6C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v47 = v7[2];
  v48 = v7 + 2;
  v47(&v45 - v11, a1, v6);
  v49 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v52 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v46 = a1;
    v20 = v19;
    v54 = v19;
    *v18 = 136315138;
    v21 = URL.path(percentEncoded:)(1);
    v53 = v2;
    v50 = v7[1];
    v50(v12, v6);
    v22 = sub_1002FFA0C(v21._countAndFlagsBits, v21._object, &v54);
    v3 = v53;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Deleting %s", v18, 0xCu);
    sub_1000752F4(v20);
    a1 = v46;
  }

  else
  {

    v50 = v7[1];
    v50(v12, v6);
  }

  v23 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 fileExistsAtPath:v24];

  if (v25)
  {
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    v54 = 0;
    v29 = [v23 removeItemAtURL:v27 error:&v54];

    if (v29)
    {
      v30 = v54;
    }

    else
    {
      v40 = v54;
      v41 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v54 = 0xD000000000000011;
      v55 = 0x800000010046B040;
      v42 = URL.path(percentEncoded:)(1);
      String.append(_:)(v42);

      v43 = v54;
      v44 = v55;
      swift_errorRetain();
      sub_10030990C(0, 1, v43, v44, v41);
      swift_willThrow();
    }
  }

  else
  {
    v31 = v51;
    v47(v51, a1, v6);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v31;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53 = v3;
      v54 = v36;
      v37 = v36;
      *v35 = 136315138;
      v38 = URL.path(percentEncoded:)(1);
      v50(v34, v6);
      v39 = sub_1002FFA0C(v38._countAndFlagsBits, v38._object, &v54);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Target does not exist %s", v35, 0xCu);
      sub_1000752F4(v37);
    }

    else
    {

      v50(v31, v6);
    }
  }
}

void sub_1002BA0BC(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v3 = type metadata accessor for UUID();
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v6 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for URL.DirectoryHint();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  __chkstk_darwin(v7);
  v10 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v68[-v13];
  v15 = type metadata accessor for URL();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v68[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v73 = &v68[-v20];
  v21 = [objc_opt_self() defaultManager];
  v81 = 0;
  v78 = a1;
  URL.path(percentEncoded:)(1);
  v22 = String._bridgeToObjectiveC()();

  LODWORD(a1) = [v21 fileExistsAtPath:v22 isDirectory:&v81];

  if (!a1 || (v81 & 1) != 0)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v79 = 0xD000000000000011;
    v80 = 0x800000010046AF10;
LABEL_4:
    v23 = URL.path(percentEncoded:)(1);
    String.append(_:)(v23);

    sub_10030990C(0, 1, v79, v80, 0);
    swift_willThrow();

    return;
  }

  URL.path(percentEncoded:)(1);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v21 isReadableFileAtPath:v24];

  if (!v25)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v79 = 0xD00000000000001CLL;
    v80 = 0x800000010046AF30;
    goto LABEL_4;
  }

  v26 = *&v71[OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath];
  v27 = *&v71[OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath + 8];
  v71 = v21;
  (*(v76 + 56))(v14, 1, 1, v77);
  v69 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v28 = *(v74 + 104);
  v28(v10);

  URL.init(filePath:directoryHint:relativeTo:)();
  v79 = 1601203572;
  v80 = 0xE400000000000000;
  UUID.init()();
  sub_1002BC5B4(&qword_100504C70, &type metadata accessor for UUID);
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  (*(v72 + 8))(v6, v3);
  v30._countAndFlagsBits = 0x7473696C702ELL;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31 = v75;
  (v28)(v10, v69, v75);
  sub_10012512C();
  v32 = v73;
  URL.appending<A>(path:directoryHint:)();
  (*(v74 + 8))(v10, v31);

  v33 = *(v76 + 8);
  v33(v19, v77);
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  v79 = 0;
  v40 = v71;
  LODWORD(v31) = [v71 copyItemAtURL:v36 toURL:v38 error:&v79];

  if (v31)
  {
    v41 = v79;
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    v79 = 0;
    v48 = [v40 replaceItemAtURL:v44 withItemAtURL:v46 backupItemName:0 options:0 resultingItemURL:0 error:&v79];

    if (v48)
    {
      v49 = v79;
      v33(v32, v77);

      return;
    }

    v57 = v79;
    v51 = _convertNSErrorToError(_:)();

    swift_willThrow();
    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    v79 = 0;
    v61 = [v40 removeItemAtURL:v59 error:&v79];

    if (v61)
    {
      v62 = v79;
    }

    else
    {
      v64 = v79;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v79 = 0xD000000000000023;
    v80 = 0x800000010046AF80;
  }

  else
  {
    v50 = v79;
    v51 = _convertNSErrorToError(_:)();

    swift_willThrow();
    URL._bridgeToObjectiveC()(v52);
    v54 = v53;
    v79 = 0;
    v55 = [v40 removeItemAtURL:v53 error:&v79];

    if (v55)
    {
      v56 = v79;
    }

    else
    {
      v63 = v79;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v79 = 0xD000000000000025;
    v80 = 0x800000010046AF50;
  }

  v65 = URL.path(percentEncoded:)(1);
  String.append(_:)(v65);

  v66 = v79;
  v67 = v80;
  swift_errorRetain();
  sub_10030990C(0, 1, v66, v67, v51);
  swift_willThrow();

  v33(v32, v77);
}

uint64_t sub_1002BA988(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *&v1[OBJC_IVAR____TtC10seserviced15SESAssetManager_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002BBB5C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1000B3564;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100346DB0;
  aBlock[3] = &unk_1004CF3E8;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002BABA8(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31[-1] - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath);
  v18 = *(a1 + OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath + 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);

  v19 = a1;
  URL.init(filePath:directoryHint:relativeTo:)();
  LOBYTE(a1) = sub_1002B64C8(v30, v16);
  result = (*(v13 + 8))(v16, v12);
  if (a1)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Notifying clients of an asset update", v23, 2u);
    }

    v24 = OBJC_IVAR____TtC10seserviced15SESAssetManager_delegates;
    result = swift_beginAccess();
    v25 = *(v19 + v24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v25 + 32;

      do
      {
        sub_1000BC094(v27, v31);
        v28 = v32;
        v29 = v33;
        sub_1000752B0(v31, v32);
        (*(v29 + 8))(v28, v29);
        sub_1000752F4(v31);
        v27 += 40;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t sub_1002BAFF0(uint64_t *a1, NSObject *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v69 = a3;
  v81 = a2;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v72 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v64 - v21;
  __chkstk_darwin(v20);
  v73 = &v64 - v23;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v70 = *a1;
  v68 = v19;
  if (v25 && (v26 = sub_10008C908(*(&v81->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey), *(&v81[1].isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey)), (v27 & 1) != 0) && (sub_1000754F0(*(v24 + 56) + 32 * v26, &v78), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v76;
    v29 = v77;
  }

  else
  {
    v29 = 0xE900000000000073;
    v28 = 0x676E69747465735FLL;
  }

  v78 = a4;
  v79 = v67;
  LODWORD(v67) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v66 = v8[13];
  v66(v11);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  v65 = v22;
  v30 = v8[1];
  v30(v11, v7);
  v31 = *(&v81[1].isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix);
  v78 = *(&v81->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix);
  v79 = v31;

  v32._countAndFlagsBits = v28;
  v32._object = v29;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0x7473696C702ELL;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);

  (v66)(v11, v67, v7);
  v34 = v73;
  v35 = v65;
  URL.appending<A>(path:directoryHint:)();
  v30(v11, v7);

  v36 = v74;
  v37 = v75;
  v38 = *(v75 + 8);
  v38(v35, v74);
  v39 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v40 = *(v37 + 16);
  v41 = v68;
  v75 = v37 + 16;
  v40(v68, v34, v36);
  v67 = v39;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v42, v43);
  v69 = v38;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v78 = v46;
    *v45 = 136315138;
    v47 = URL.path(percentEncoded:)(1);
    v38(v41, v74);
    v48 = sub_1002FFA0C(v47._countAndFlagsBits, v47._object, &v78);

    *(v45 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Writing profile %s", v45, 0xCu);
    sub_1000752F4(v46);
    v34 = v73;

    v36 = v74;
  }

  else
  {

    v38(v41, v36);
  }

  v49 = v72;
  v80 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  v78 = v70;

  v50 = v71;
  sub_1002BBFA8(&v78);
  if (v50)
  {
    sub_1000752F4(&v78);
    v40(v49, v34, v36);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v81 = v51;
      v55 = v49;
      v56 = v54;
      v78 = v54;
      *v53 = 136315138;
      v57 = URL.path(percentEncoded:)(1);
      v58 = v36;
      v59 = v69;
      v69(v55, v58);
      v60 = sub_1002FFA0C(v57._countAndFlagsBits, v57._object, &v78);

      *(v53 + 4) = v60;
      v61 = v81;
      _os_log_impl(&_mh_execute_header, v81, v52, "Failed to write profile file to %s", v53, 0xCu);
      sub_1000752F4(v56);

      return v59(v73, v74);
    }

    else
    {

      v63 = v69;
      v69(v49, v36);
      return v63(v34, v36);
    }
  }

  else
  {
    v69(v34, v36);
    return sub_1000752F4(&v78);
  }
}

uint64_t type metadata accessor for SESAssetManager()
{
  result = qword_100509A20;
  if (!qword_100509A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002BB864()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1002BB94C(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1002BBA98()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002BBB5C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1002BABA8(v2, v3);
}

uint64_t sub_1002BBBD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002BBBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 isReadableFileAtPath:v12];

  if (!v13)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v16 = 0x800000010046AFB0;
    v17 = 0xD000000000000015;
    goto LABEL_6;
  }

  (*(v7 + 16))(v10, a1, v6);
  v14 = objc_allocWithZone(NSDictionary);
  v15 = sub_1002BB94C(v10);
  if (v3)
  {

LABEL_4:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v16 = 0x800000010046AFD0;
    v17 = 0xD000000000000017;
LABEL_6:
    v30 = v17;
    v31 = v16;
    v18 = URL.path(percentEncoded:)(1);
    String.append(_:)(v18);

    v19 = v30;
    v20 = v31;
LABEL_7:
    sub_10030990C(0, 1, v19, v20, 0);
    swift_willThrow();

    return;
  }

  v30 = 0;
  v21 = v15;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v22 = v30;
  if (!v30)
  {
    goto LABEL_4;
  }

  if (!*(v30 + 16))
  {

    v23 = v29;
    goto LABEL_15;
  }

  v23 = v29;
  v24 = sub_10008C908(a2, v29);
  if ((v25 & 1) == 0)
  {

    goto LABEL_15;
  }

  sub_1000754F0(*(v22 + 56) + 32 * v24, &v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v30 = a2;
    v31 = v23;
    v26._countAndFlagsBits = 0xD000000000000026;
    v26._object = 0x800000010046AFF0;
    String.append(_:)(v26);
    v27 = URL.path(percentEncoded:)(1);
    String.append(_:)(v27);

    v19 = v30;
    v20 = v31;
    goto LABEL_7;
  }
}

uint64_t sub_1002BBFA8(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v22 = 0;
  LODWORD(v2) = [v7 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v22];

  v11 = v22;
  if (v2)
  {
    v12 = objc_opt_self();
    sub_1000752B0(a1, a1[3]);
    v13 = v11;
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    v22 = 0;
    v15 = [v12 dataWithPropertyList:v14 format:200 options:0 error:&v22];
    swift_unknownObjectRelease();
    v16 = v22;
    if (v15)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      Data.write(to:options:)();
      return sub_10006A178(v17, v19);
    }
  }

  else
  {
    v16 = v22;
  }

  v21 = v16;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_1002BC1FC()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 isReadableFileAtPath:v1];

  if (!v2)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    _StringGuts.grow(_:)(23);

    v13[0] = 0xD000000000000015;
    v13[1] = 0x800000010046B020;
    v11 = URL.path(percentEncoded:)(1);
    String.append(_:)(v11);

    sub_10030990C(0, 1, 0xD000000000000015, 0x800000010046B020, 0);
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v13[0] = 0;
  v9 = [v0 copyItemAtURL:v5 toURL:v7 error:v13];

  if ((v9 & 1) == 0)
  {
    v12 = v13[0];
    _convertNSErrorToError(_:)();

    goto LABEL_6;
  }

  v10 = v13[0];
LABEL_7:
}

uint64_t sub_1002BC3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100509A30, &qword_100414760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BC450(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BC4C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002BC544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100509A48, &qword_100414778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BC5B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002BC604(uint64_t a1)
{
  v3 = type metadata accessor for SEStorageCredential();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v47 = v8;
  v40[1] = v1;
  v53 = _swiftEmptyArrayStorage;
  v49 = v6;
  sub_10019F6C4(0, v9, 0);
  v51 = v53;
  v11 = a1 + 64;
  v12 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v52 = *(a1 + 36);
  v45 = v4 + 32;
  v46 = (v4 + 104);
  v44 = enum case for SEStorageCredential.eSIM(_:);
  v41 = a1 + 72;
  v42 = v9;
  v48 = v4;
  v43 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v52 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v50 = v15;
    v18 = (*(a1 + 48) + 16 * v14);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(a1 + 56) + 8 * v14);
    swift_bridgeObjectRetain_n();
    v22 = v21;
    [v22 integerValue];
    v23 = objc_allocWithZone(type metadata accessor for ESIMProfileInfo());
    v24 = ESIMProfileInfo.init(iccid:exactSize:)();
    v25 = v49;
    v26 = a1;
    v27 = v46;
    v28 = v47;
    *v47 = v24;
    (*v27)(v28, v44, v25);

    v29 = v51;
    v53 = v51;
    v31 = v51[2];
    v30 = v51[3];
    if (v31 >= v30 >> 1)
    {
      sub_10019F6C4(v30 > 1, v31 + 1, 1);
      v25 = v49;
      v29 = v53;
    }

    v29[2] = v31 + 1;
    v32 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = v29;
    result = (*(v48 + 32))(v29 + v32 + *(v48 + 72) * v31, v28, v25);
    v16 = 1 << *(v26 + 32);
    if (v14 >= v16)
    {
      goto LABEL_25;
    }

    a1 = v26;
    v11 = v43;
    v33 = *(v43 + 8 * v17);
    if ((v33 & (1 << v14)) == 0)
    {
      goto LABEL_26;
    }

    if (v52 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v34 = v33 & (-2 << (v14 & 0x3F));
    if (v34)
    {
      v16 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = v17 << 6;
      v36 = v17 + 1;
      v37 = (v41 + 8 * v17);
      while (v36 < (v16 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_1000937D4(v14, v52, 0);
          v16 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v14, v52, 0);
    }

LABEL_4:
    v15 = v50 + 1;
    v14 = v16;
    if (v50 + 1 == v42)
    {
      return v51;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002BC9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for SERXPCInternalErrors();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for SESnapshot.TargetDevice();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002BCAEC, 0, 0);
}

uint64_t sub_1002BCAEC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[10], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SESnapshot.TargetDevice.currentDevice(_:))
  {
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1002BCDEC;
    v6 = v0[17];
    v7 = v0[11];
    v9 = v0[8];
    v8 = v0[9];

    return sub_1002C89B8(v9, v8, v6);
  }

  else if (v4 == enum case for SESnapshot.TargetDevice.pairedWatch(_:))
  {
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_1002BD128;
    v12 = v0[15];
    v13 = v0[11];

    return sub_1002CA910(v12);
  }

  else
  {
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    v17 = v0[13];
    v18 = v0[14];
    v19 = v0[12];
    v20 = v0[10];
    _StringGuts.grow(_:)(27);

    v21._countAndFlagsBits = SESnapshot.TargetDevice.rawValue.getter();
    String.append(_:)(v21);

    *v19 = 0xD000000000000019;
    v19[1] = 0x800000010046B1C0;
    (*(v18 + 104))(v19, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v17);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
    (*(v15 + 8))(v14, v16);
    v22 = v0[20];
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[15];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1002BCDEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002BD2D4, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[23] = v7;
    *v7 = v6;
    v7[1] = sub_1002BCF74;
    v8 = v4[16];
    v9 = v4[11];

    return sub_1002C8FAC(a1, v8);
  }
}

uint64_t sub_1002BCF74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[23];
  v8 = *v2;

  if (v1)
  {
    v6 = sub_1002BD37C;
  }

  else
  {
    v6 = sub_1002BD08C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002BD08C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 160);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_1002BD128(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v8 = *v2;

  if (v1)
  {
    v6 = sub_1002BD438;
  }

  else
  {
    v6 = sub_1002BD240;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002BD240()
{
  v1 = v0[6];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_1002BD2D4()
{
  (*(v0[14] + 32))(v0[12], v0[17], v0[13]);
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002BD37C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 32))(v4, v1, v2);
  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002BD438()
{
  (*(v0[14] + 32))(v0[12], v0[15], v0[13]);
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002BD4DC()
{

  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

double sub_1002BD550@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for SERXPCResponse();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  __chkstk_darwin(v3);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for SERXPCInternalErrors();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  __chkstk_darwin(v10);
  v59 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for XPCReceivedMessage();
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  v15 = __chkstk_darwin(v13);
  v61 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for SERXPCRequest();
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v23 = &v48 - v22;
  __chkstk_darwin(v21);
  v66 = &v48 - v24;
  sub_1002D9BE4(&qword_100509B48, &type metadata accessor for SERXPCRequest);
  XPCReceivedMessage.decode<A>(as:)();
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v9;
  v25 = *(v67 + 32);
  v50 = v67 + 32;
  v49 = v25;
  v25(v66, v23, v18);
  XPCReceivedMessage.detachHandoff()();
  v26 = XPCReceivedMessage.auditToken.getter();
  v55 = v27;
  v56 = v26;
  v54 = v28;
  v53 = v29;
  v30 = v58;
  v31 = *(v58 + 16);
  v31(v17, a1, v13);
  v31(v61, v17, v13);
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v33 = swift_allocObject();
  (*(v30 + 32))(v33 + v32, v17, v13);
  v34 = v60;
  sub_1002BDE60(v56, v55, v54, v53, v59);
  v35 = v30;
  v36 = v18;
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  v38 = v67 + 16;
  v39 = v13;
  v40 = v51;
  (*(v67 + 16))(v51, v66, v36);
  v41 = (*(v38 + 64) + 32) & ~*(v38 + 64);
  v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v49(v43 + v41, v40, v36);
  *(v43 + v42) = v34;
  v44 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = sub_1002D9328;
  v44[1] = v33;

  sub_1001F9BE8(0, 0, v52, &unk_100414810, v43);

  v45 = v68;
  v46 = v67;
  (*(v35 + 8))(v61, v39);
  (*(v46 + 8))(v66, v36);
  *(v45 + 32) = 0;
  result = 0.0;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  return result;
}

uint64_t sub_1002BDDE4()
{
  type metadata accessor for SERXPCResponse();
  sub_1002D9BE4(&qword_100509B50, &type metadata accessor for SERXPCResponse);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_1002BDE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = String._bridgeToObjectiveC()();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    if (v9)
    {
      v41 = v9;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();

        v10 = v40;
      }

      else
      {
        if (qword_100501C78 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000958E4(v26, qword_100509A58);
        swift_unknownObjectRetain();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v29 = 136315394;
          *(v29 + 4) = sub_1002FFA0C(0xD000000000000031, 0x800000010046B8B0, &v41);
          *(v29 + 12) = 2080;
          swift_getObjectType();
          v30 = _typeName(_:qualified:)();
          v32 = sub_1002FFA0C(v30, v31, &v41);

          *(v29 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "SERXPC: Failed to cast result of entitlement %s from %s to Bool", v29, 0x16u);
          swift_arrayDestroy();
        }

        *a5 = 0xD000000000000016;
        a5[1] = 0x800000010046B920;
        v33 = enum case for SERXPCInternalErrors.entitlementError(_:);
        v34 = type metadata accessor for SERXPCInternalErrors();
        (*(*(v34 - 8) + 104))(a5, v33, v34);
        sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
        swift_willThrowTypedImpl();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = *token.val;
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000958E4(v18, qword_100509A58);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v39 = v19;
        v22 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v22 = 136315394;
        *(v22 + 4) = sub_1002FFA0C(0xD000000000000031, 0x800000010046B8B0, &v41);
        *(v22 + 12) = 2080;
        if (v17)
        {
          type metadata accessor for CFError(0);
          sub_1002D9BE4(&qword_100504A60, type metadata accessor for CFError);
          v23 = Error.localizedDescription.getter();
          v25 = v24;
        }

        else
        {
          v25 = 0xE500000000000000;
          v23 = 0x3E6C696E3CLL;
        }

        v35 = sub_1002FFA0C(v23, v25, &v41);

        *(v22 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v20, v21, "SERXPC: Failed to SecTaskCopyValueForEntitlement %s : %s", v22, 0x16u);
        swift_arrayDestroy();

        v19 = v39;
      }

      else
      {
      }

      *a5 = 0xD000000000000028;
      a5[1] = 0x800000010046B8F0;
      v36 = enum case for SERXPCInternalErrors.entitlementError(_:);
      v37 = type metadata accessor for SERXPCInternalErrors();
      (*(*(v37 - 8) + 104))(a5, v36, v37);
      sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_100509A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SERXPC: Failed to SecTaskCreateWithAuditToken", v14, 2u);
    }

    *a5 = 0xD000000000000025;
    a5[1] = 0x8000000100468170;
    v15 = enum case for SERXPCInternalErrors.entitlementError(_:);
    v16 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v16 - 8) + 104))(a5, v15, v16);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
  }

  return v10 & 1;
}

uint64_t sub_1002BE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = type metadata accessor for CredentialType();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v14 = type metadata accessor for SESnapshot.TargetDevice();
  v7[12] = v14;
  v15 = *(v14 - 8);
  v7[13] = v15;
  v16 = *(v15 + 64) + 15;
  v7[14] = swift_task_alloc();
  v17 = type metadata accessor for SERXPCResponse();
  v7[15] = v17;
  v18 = *(v17 - 8);
  v7[16] = v18;
  v19 = *(v18 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v20 = type metadata accessor for SERXPCRequest();
  v7[19] = v20;
  v21 = *(v20 - 8);
  v7[20] = v21;
  v22 = *(v21 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002BE7F4, 0, 0);
}

uint64_t sub_1002BE7F4()
{
  v151 = v0;
  v1 = arc4random();
  *(v0 + 400) = v1;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 16);
  v6 = type metadata accessor for Logger();
  *(v0 + 184) = sub_1000958E4(v6, qword_100509A58);
  v148 = *(v4 + 16);
  v148(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v150 = v146;
    *v13 = 67109378;
    *(v13 + 4) = v1;
    *(v13 + 8) = 2080;
    v14 = SERXPCRequest.description.getter();
    v144 = v8;
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1002FFA0C(v14, v16, &v150);

    *(v13 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v7, v144, "Received XPC request %u: %s", v13, 0x12u);
    sub_1000752F4(v146);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v21 = *(v0 + 152);
  v148(v19, *(v0 + 16), v21);
  v22 = (*(v20 + 88))(v19, v21);
  if (v22 == enum case for SERXPCRequest.getSESnapshot(_:))
  {
    v23 = *(v0 + 168);
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v23, *(v0 + 152));
    v27 = *v23;
    *(v0 + 192) = *v23;
    v28 = v23[1];
    *(v0 + 200) = v28;
    v29 = sub_100068FC4(&qword_100509B70, &qword_100414880);
    (*(v25 + 32))(v24, v23 + *(v29 + 48), v26);
    v30 = swift_task_alloc();
    *(v0 + 208) = v30;
    *v30 = v0;
    v30[1] = sub_1002BF65C;
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    v33 = *(v0 + 24);

    return sub_1002C1058(v31, v27, v28, v32);
  }

  if (v22 == enum case for SERXPCRequest.refresh(_:))
  {
    v35 = *(v0 + 168);
    (*(*(v0 + 160) + 96))(v35, *(v0 + 152));
    v36 = *v35;
    *(v0 + 216) = *v35;
    v37 = v35[1];
    *(v0 + 224) = v37;
    v38 = v35[2];
    *(v0 + 232) = v38;
    v39 = swift_task_alloc();
    *(v0 + 240) = v39;
    *v39 = v0;
    v39[1] = sub_1002BF910;
    v40 = *(v0 + 136);
    v41 = *(v0 + 24);

    return sub_1002C174C(v40, v36, v37, v38);
  }

  if (v22 == enum case for SERXPCRequest.reclaimUnusedSEMemory(_:))
  {
    v42 = *(v0 + 168);
    v44 = *(v0 + 104);
    v43 = *(v0 + 112);
    v45 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v42, *(v0 + 152));
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    *(v0 + 328) = v46;
    *v46 = v0;
    v46[1] = sub_1002C083C;
    v47 = *(v0 + 136);
    v48 = *(v0 + 112);
    v49 = *(v0 + 24);

    return sub_1002C3F9C(v47, v48);
  }

  if (v22 == enum case for SERXPCRequest.addReservation(_:))
  {
    v50 = *(v0 + 168);
    v52 = *(v0 + 80);
    v51 = *(v0 + 88);
    v53 = *(v0 + 72);
    (*(*(v0 + 160) + 96))(v50, *(v0 + 152));
    v54 = (v50 + *(sub_100068FC4(&qword_100509B68, &qword_100414868) + 48));
    v55 = *v54;
    *(v0 + 248) = *v54;
    v56 = v54[1];
    *(v0 + 256) = v56;
    (*(v52 + 32))(v51, v50, v53);
    v57 = swift_task_alloc();
    *(v0 + 264) = v57;
    *v57 = v0;
    v57[1] = sub_1002BFBAC;
    v58 = *(v0 + 136);
    v59 = *(v0 + 88);
    v60 = *(v0 + 24);

    return sub_1002C1F78(v58, v59, v55, v56);
  }

  if (v22 == enum case for SERXPCRequest.editReservation(_:))
  {
    v61 = *(v0 + 168);
    v63 = *(v0 + 56);
    v62 = *(v0 + 64);
    v64 = *(v0 + 48);
    (*(*(v0 + 160) + 96))(v61, *(v0 + 152));
    v65 = (v61 + *(sub_100068FC4(&qword_100509B60, &qword_100414858) + 48));
    v66 = *v65;
    *(v0 + 272) = *v65;
    v67 = v65[1];
    *(v0 + 280) = v67;
    (*(v63 + 32))(v62, v61, v64);
    v68 = swift_task_alloc();
    *(v0 + 288) = v68;
    *v68 = v0;
    v68[1] = sub_1002BFE60;
    v69 = *(v0 + 136);
    v70 = *(v0 + 64);
    v71 = *(v0 + 24);

    return sub_1002C23BC(v69, v70, v66, v67);
  }

  if (v22 == enum case for SERXPCRequest.findReservation(_:))
  {
    v72 = *(v0 + 168);
    v74 = *(v0 + 56);
    v73 = *(v0 + 64);
    v75 = *(v0 + 48);
    (*(*(v0 + 160) + 96))(v72, *(v0 + 152));
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    *(v0 + 296) = v76;
    *v76 = v0;
    v76[1] = sub_1002C0114;
    v77 = *(v0 + 136);
    v78 = *(v0 + 64);
    v79 = *(v0 + 24);

    return sub_1002C291C(v77, v78);
  }

  if (v22 == enum case for SERXPCRequest.removeReservation(_:))
  {
    v80 = *(v0 + 168);
    v82 = *(v0 + 56);
    v81 = *(v0 + 64);
    v83 = *(v0 + 48);
    (*(*(v0 + 160) + 96))(v80, *(v0 + 152));
    (*(v82 + 32))(v81, v80, v83);
    v84 = swift_task_alloc();
    *(v0 + 304) = v84;
    *v84 = v0;
    v84[1] = sub_1002C03B8;
    v85 = *(v0 + 136);
    v86 = *(v0 + 64);
    v87 = *(v0 + 24);

    return sub_1002C2DCC(v85, v86);
  }

  if (v22 == enum case for SERXPCRequest.canFit(_:))
  {
    v88 = *(v0 + 168);
    v90 = *(v0 + 104);
    v89 = *(v0 + 112);
    v91 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v88, *(v0 + 152));
    v92 = *v88;
    *(v0 + 336) = *v88;
    v93 = *(v88 + 8);
    v94 = *(v88 + 16);
    *(v0 + 344) = v94;
    v95 = *(v88 + 24);
    *(v0 + 352) = v95;
    v96 = sub_100068FC4(&qword_100509B58, &qword_100414818);
    (*(v90 + 32))(v89, v88 + *(v96 + 80), v91);
    v97 = swift_task_alloc();
    *(v0 + 360) = v97;
    *v97 = v0;
    v97[1] = sub_1002C0AE0;
    v98 = *(v0 + 136);
    v99 = *(v0 + 112);
    v100 = *(v0 + 24);

    return sub_1002C5928(v98, v92, v93, v94, v95, v99);
  }

  if (v22 == enum case for SERXPCRequest.canFitESim(_:))
  {
    v101 = *(v0 + 168);
    v103 = *(v0 + 104);
    v102 = *(v0 + 112);
    v104 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v101, *(v0 + 152));
    v105 = *v101;
    *(v0 + 368) = *v101;
    v106 = *(v101 + 8);
    *(v0 + 376) = *(v101 + 16);
    *(v0 + 384) = *(v101 + 24);
    v107 = sub_100068FC4(&qword_100509B58, &qword_100414818);
    (*(v103 + 32))(v102, v101 + *(v107 + 80), v104);
    v108 = swift_task_alloc();
    *(v0 + 392) = v108;
    *v108 = v0;
    v108[1] = sub_1002C0D9C;
    v109 = *(v0 + 136);
    v110 = *(v0 + 112);
    v111 = *(v0 + 24);

    return sub_1002C7A88(v109, v105, v106);
  }

  if (v22 == enum case for SERXPCRequest.addReservationViena(_:))
  {
    v113 = *(v0 + 128);
    v112 = *(v0 + 136);
    v114 = *(v0 + 120);
    v115 = *(v0 + 160) + 8;
    v17(*(v0 + 168), *(v0 + 152));
    *v112 = 1;
    (*(v113 + 104))(v112, enum case for SERXPCResponse.addReservationViena(_:), v114);
LABEL_44:
    v116 = *(v0 + 184);
    (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = *(v0 + 400);
      v120 = swift_slowAlloc();
      *v120 = 67109120;
      *(v120 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v117, v118, "Posting XPC response %u", v120, 8u);
    }

    v122 = *(v0 + 168);
    v121 = *(v0 + 176);
    v124 = *(v0 + 136);
    v123 = *(v0 + 144);
    v125 = *(v0 + 120);
    v126 = *(v0 + 128);
    v145 = *(v0 + 112);
    v147 = *(v0 + 88);
    v149 = *(v0 + 64);
    v128 = *(v0 + 32);
    v127 = *(v0 + 40);

    v128(v123);
    (*(v126 + 8))(v123, v125);

    v129 = *(v0 + 8);

    return v129();
  }

  if (v22 == enum case for SERXPCRequest.reservations(_:))
  {
    v130 = swift_task_alloc();
    *(v0 + 312) = v130;
    *v130 = v0;
    v130[1] = sub_1002C04B4;
    v131 = *(v0 + 136);
    v132 = *(v0 + 24);

    return sub_1002C32E0(v131);
  }

  else
  {
    if (v22 != enum case for SERXPCRequest.clearReservations(_:))
    {
      v137 = *(v0 + 160);
      v136 = *(v0 + 168);
      v138 = *(v0 + 152);
      v140 = *(v0 + 128);
      v139 = *(v0 + 136);
      v141 = *(v0 + 120);
      *v139 = 0xD000000000000013;
      v139[1] = 0x800000010046B4A0;
      v142 = enum case for SERXPCInternalErrors.typeMismatch(_:);
      v143 = type metadata accessor for SERXPCInternalErrors();
      (*(*(v143 - 8) + 104))(v139, v142, v143);
      (*(v140 + 104))(v139, enum case for SERXPCResponse.error(_:), v141);
      v17(v136, v138);
      goto LABEL_44;
    }

    v133 = swift_task_alloc();
    *(v0 + 320) = v133;
    *v133 = v0;
    v133[1] = sub_1002C0740;
    v134 = *(v0 + 136);
    v135 = *(v0 + 24);

    return sub_1002C3A8C(v134);
  }
}

uint64_t sub_1002BF65C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_1002BF758, 0, 0);
}

uint64_t sub_1002BF758()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_10006A2D0(*(v0 + 192), *(v0 + 200));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 400);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting XPC response %u", v8, 8u);
  }

  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 64);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);

  v16(v11);
  (*(v14 + 8))(v11, v13);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002BF910()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_1002BFA0C, 0, 0);
}

uint64_t sub_1002BFA0C()
{
  v1 = *(v0 + 216);
  sub_10006A178(*(v0 + 224), *(v0 + 232));

  v2 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 400);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Posting XPC response %u", v6, 8u);
  }

  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v19 = *(v0 + 64);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);

  v14(v9);
  (*(v12 + 8))(v9, v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002BFBAC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002BFCA8, 0, 0);
}

uint64_t sub_1002BFCA8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_10006A178(*(v0 + 248), *(v0 + 256));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 400);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting XPC response %u", v8, 8u);
  }

  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 64);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);

  v16(v11);
  (*(v14 + 8))(v11, v13);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002BFE60()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return _swift_task_switch(sub_1002BFF5C, 0, 0);
}

uint64_t sub_1002BFF5C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_10006A178(*(v0 + 272), *(v0 + 280));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 400);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting XPC response %u", v8, 8u);
  }

  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 64);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);

  v16(v11);
  (*(v14 + 8))(v11, v13);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002C0114()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_1002C0210, 0, 0);
}

uint64_t sub_1002C0210()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v1 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 400);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posting XPC response %u", v5, 8u);
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);

  v13(v8);
  (*(v11 + 8))(v8, v10);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002C03B8()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_1002D9C58, 0, 0);
}

uint64_t sub_1002C04B4()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_1002C05B0, 0, 0);
}

uint64_t sub_1002C05B0()
{
  v1 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 400);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posting XPC response %u", v5, 8u);
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);

  v13(v8);
  (*(v11 + 8))(v8, v10);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002C0740()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_1002D9C6C, 0, 0);
}

uint64_t sub_1002C083C()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return _swift_task_switch(sub_1002C0938, 0, 0);
}

uint64_t sub_1002C0938()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 400);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posting XPC response %u", v5, 8u);
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);

  v13(v8);
  (*(v11 + 8))(v8, v10);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002C0AE0()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_1002C0BDC, 0, 0);
}

uint64_t sub_1002C0BDC()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_10006A2D0(*(v0 + 344), *(v0 + 352));

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 400);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Posting XPC response %u", v9, 8u);
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v20 = *(v0 + 112);
  v21 = *(v0 + 88);
  v22 = *(v0 + 64);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);

  v17(v12);
  (*(v15 + 8))(v12, v14);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002C0D9C()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return _swift_task_switch(sub_1002C0E98, 0, 0);
}

uint64_t sub_1002C0E98()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_10006A2D0(*(v0 + 376), *(v0 + 384));

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 184);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 400);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Posting XPC response %u", v9, 8u);
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v20 = *(v0 + 112);
  v21 = *(v0 + 88);
  v22 = *(v0 + 64);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);

  v17(v12);
  (*(v15 + 8))(v12, v14);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002C1058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *v6;
  v5[2] = a1;
  v11 = type metadata accessor for SERXPCInternalErrors();
  v5[3] = v11;
  v12 = *(v11 - 8);
  v5[4] = v12;
  v13 = *(v12 + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[7] = v14;
  v5[8] = swift_task_alloc();
  v15 = swift_task_alloc();
  v5[9] = v15;
  *v15 = v5;
  v15[1] = sub_1002C11C4;

  return sub_1002BC9B0(a2, a3, a4, v14);
}

uint64_t sub_1002C11C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002C13C0;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_1002C12E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C12E8()
{
  v1 = v0[2];
  *v1 = v0[10];
  v2 = enum case for SERXPCResponse.getSESnapshot(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002C13C0()
{
  v35 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v4 = *(v0[4] + 32);
  v4(v1, v0[7], v3);
  v4(v2, v1, v3);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_100509A58);
  v10 = *(v8 + 16);
  v10(v5, v6, v7);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];
  if (v13)
  {
    v32 = v12;
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v17 = 136315650;
    *(v17 + 4) = sub_1002FFA0C(0xD000000000000020, 0x800000010046B4C0, &v34);
    *(v17 + 12) = 2048;
    *(v17 + 14) = 118;
    *(v17 + 22) = 2112;
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_allocError();
    v18 = v10;
    v19 = v4;
    v18(v20, v15, v16);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    (*(v14 + 8))(v15, v16);
    *(v17 + 24) = v21;
    *v31 = v21;
    v4 = v19;
    _os_log_impl(&_mh_execute_header, v11, v32, "%s:%ld - %@", v17, 0x20u);
    sub_100075768(v31, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v33);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v22 = v0[2];
  v4(v22, v0[6], v0[3]);
  v23 = enum case for SERXPCResponse.error(_:);
  v24 = type metadata accessor for SERXPCResponse();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  v26 = v0[7];
  v25 = v0[8];
  v28 = v0[5];
  v27 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1002C174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = *v6;
  v5[8] = a2;
  v5[9] = v9;
  v5[7] = a1;
  v10 = type metadata accessor for SERXPCInternalErrors();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[13] = v13;
  v5[14] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[15] = v14;
  *v14 = v5;
  v14[1] = sub_1002C18A8;

  return sub_1002C89B8(a3, a4, v13);
}

uint64_t sub_1002C18A8(void *a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  v5[16] = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002C1C54, 0, 0);
  }

  else
  {
    v6 = v5[9];
    v7 = a1;
    v8 = swift_task_alloc();
    v5[17] = v8;
    *v8 = v5;
    v8[1] = sub_1002C1A3C;
    v9 = v5[8];

    return sub_1002CADB8(v9, v7);
  }
}

uint64_t sub_1002C1A3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 128);
  v7 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v8 = sub_1002C1D5C;
  }

  else
  {
    *(v4 + 152) = a1;
    v8 = sub_1002C1B84;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C1B84()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);

  *v2 = v1;
  v3 = enum case for SERXPCResponse.refresh(_:);
  v4 = type metadata accessor for SERXPCResponse();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002C1C54()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = *(v0[11] + 32);
  v4(v1, v0[13], v2);
  v4(v3, v1, v2);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002C1D5C()
{
  *(v0 + 40) = *(v0 + 144);
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 144);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);

    (*(v5 + 32))(v7, v4, v6);
    v8 = enum case for SERXPCResponse.error(_:);
    v9 = type metadata accessor for SERXPCResponse();
    (*(*(v9 - 8) + 104))(v7, v8, v9);
    v10 = *(v0 + 40);
  }

  else
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = *(v0 + 56);
    v16 = *(v0 + 40);

    swift_getErrorValue();
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    v19 = *(v0 + 32);
    v20 = Error.localizedDescription.getter();
    v22 = v21;

    *v15 = v20;
    v15[1] = v22;
    (*(v14 + 104))(v15, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v13);
    v23 = enum case for SERXPCResponse.error(_:);
    v24 = type metadata accessor for SERXPCResponse();
    (*(*(v24 - 8) + 104))(v15, v23, v24);
  }

  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v27 = *(v0 + 96);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1002C1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002C1F9C, 0, 0);
}

uint64_t sub_1002C1F9C()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    v2 = type metadata accessor for SERPersistenceController();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_100284074();
    v1 = v5;
    qword_100508D40 = v5;
  }

  *(v0 + 48) = 0;
  *(v0 + 56) = v1;

  return _swift_task_switch(sub_1002C2154, v1, 0);
}

uint64_t sub_1002C2154()
{
  v2 = v0[6];
  v1 = v0[7];
  v0[8] = sub_100282E1C(v0[3], v0[4], v0[5]);
  v3 = v0[7];
  if (v2)
  {

    v4 = sub_1002C22B0;
  }

  else
  {
    v5 = v0[7];

    v4 = sub_1002C2200;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002C2200()
{
  **(v0 + 16) = *(v0 + 64);
  v1 = *(v0 + 16);
  v2 = enum case for SERXPCResponse.addReservation(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C22B0()
{
  v1 = *(v0 + 16);
  *v1 = 0xD00000000000003FLL;
  v1[1] = 0x800000010046B4F0;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 16);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C23BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1002C23E0, 0, 0);
}

uint64_t sub_1002C23E0()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    v2 = type metadata accessor for SERPersistenceController();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_100284074();
    v1 = v5;
    qword_100508D40 = v5;
  }

  *(v0 + 56) = 0;
  *(v0 + 64) = v1;

  return _swift_task_switch(sub_1002C2598, v1, 0);
}

uint64_t sub_1002C2598()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  if (!v2)
  {
    v9 = objc_allocWithZone(NSError);
    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v12 = [v9 initWithDomain:v10 code:21 userInfo:isa];

    swift_willThrow();

    goto LABEL_5;
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v16 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v16;
  *(v5 + 40) = v4;
  *(v5 + 48) = v2;
  type metadata accessor for Reservation();
  v6 = v2;
  NSManagedObjectContext.performAndWait<A>(_:)();
  v7 = v3;
  v8 = *(v0 + 64);
  if (v7)
  {

LABEL_5:
    v13 = sub_1002C2810;
    goto LABEL_7;
  }

  v14 = *(v0 + 64);

  *(v0 + 72) = *(v0 + 16);
  v13 = sub_1002C2760;
LABEL_7:

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1002C2760()
{
  **(v0 + 24) = *(v0 + 72);
  v1 = *(v0 + 24);
  v2 = enum case for SERXPCResponse.editReservation(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C2810()
{
  v1 = *(v0 + 24);
  *v1 = 0xD000000000000040;
  v1[1] = 0x800000010046B530;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 24);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C291C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002C293C, 0, 0);
}

uint64_t sub_1002C293C()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    v2 = type metadata accessor for SERPersistenceController();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_100284074();
    v1 = v5;
    qword_100508D40 = v5;
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_1002C2AF4, v1, 0);
}

uint64_t sub_1002C2AF4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_100282BF8(*(v0 + 24));
  v3 = *(v0 + 40);
  if (v2)
  {

    v4 = sub_1002C2CC0;
  }

  else
  {
    v5 = *(v0 + 40);

    v4 = sub_1002C2B9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002C2B9C()
{
  v1 = v0[6];
  v2 = v0[2];
  if (v1)
  {
    *v2 = v1;
    v3 = &enum case for SERXPCResponse.findReservation(_:);
  }

  else
  {
    *v2 = 0xD000000000000040;
    v2[1] = 0x800000010046B580;
    v4 = enum case for SERXPCInternalErrors.internalError(_:);
    v5 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v5 - 8) + 104))(v2, v4, v5);
    v3 = &enum case for SERXPCResponse.error(_:);
  }

  v6 = v0[2];
  v7 = *v3;
  v8 = type metadata accessor for SERXPCResponse();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1002C2CC0()
{
  v1 = *(v0 + 16);
  *v1 = 0xD000000000000040;
  v1[1] = 0x800000010046B580;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 16);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C2DCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002C2DEC, 0, 0);
}

uint64_t sub_1002C2DEC()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    v2 = type metadata accessor for SERPersistenceController();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_100284074();
    v1 = v5;
    qword_100508D40 = v5;
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_1002C2FA0, v1, 0);
}

uint64_t sub_1002C2FA0()
{
  v1 = v0[5];
  v2 = *(v1 + 112);
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_task_alloc();
    v5[2] = v1;
    v5[3] = v4;
    v5[4] = v2;
    v6 = v2;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v7 = v3;

    if (!v3)
    {
      v8 = sub_1002C312C;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = objc_allocWithZone(NSError);
    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7 = [v9 initWithDomain:v10 code:21 userInfo:isa];

    swift_willThrow();
  }

  v0[6] = v7;
  v8 = sub_1002C31D0;
LABEL_6:

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C312C()
{
  v1 = *(v0 + 16);
  v2 = enum case for SERXPCResponse.removeReservation(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C31D0()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = 0xD000000000000042;
  v2[1] = 0x800000010046B5D0;
  v3 = enum case for SERXPCInternalErrors.internalError(_:);
  v4 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v2, v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C3300()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    v2 = type metadata accessor for SERPersistenceController();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_100284074();
    v1 = v5;
    qword_100508D40 = v5;
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_1002C34B8, v1, 0);
}

uint64_t sub_1002C34B8()
{
  v1 = *(v0[5] + 112);
  if (!v1)
  {
    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v9 = [v6 initWithDomain:v7 code:21 userInfo:isa];

    swift_willThrow();

    goto LABEL_5;
  }

  v2 = v0[4];
  *(swift_task_alloc() + 16) = v1;
  v3 = v1;
  sub_100068FC4(&qword_100508E98, &qword_100413B18);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v4 = v2;
  v0[6] = v2;
  v5 = v0[5];
  if (v4)
  {

LABEL_5:
    v10 = sub_1002C3980;
    goto LABEL_7;
  }

  v11 = v0[5];

  v0[7] = v0[2];
  v10 = sub_1002C3678;
LABEL_7:

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1002C3678()
{
  v30 = v0;
  v1 = v0[7];
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v2 < 0)
      {
        break;
      }

      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      v5 = v0[6];
      v6 = v0[7];
      v7 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = v0[7];
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_25:
          __break(1u);
          break;
        }

        v9 = *(v6 + 32);
      }

      v10 = v9;
      v29[0] = v9;
      sub_1002D3DB4(v29, v0 + 2, &v28);
      if (v5)
      {
        v11 = v0[7];

        v12 = v0[2];

        v13 = v0[3];
        *v13 = 0xD00000000000003DLL;
        v13[1] = 0x800000010046B620;
        v14 = enum case for SERXPCInternalErrors.internalError(_:);
        v15 = type metadata accessor for SERXPCInternalErrors();
        (*(*(v15 - 8) + 104))(v13, v14, v15);
        v16 = &enum case for SERXPCResponse.error(_:);
        goto LABEL_22;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v2 != 1)
      {
        v17 = (v6 + 40);
        v18 = 1;
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v7)
          {
            v20 = v0[7];
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v18 >= *(v4 + 16))
            {
              goto LABEL_25;
            }

            v21 = *v17;
          }

          v22 = v21;
          v29[0] = v21;
          sub_1002D3DB4(v29, v0 + 2, &v28);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v1 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          ++v18;
          ++v17;
          if (v19 == v2)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_20:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (v2)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v23 = v0[7];

    *v0[3] = _swiftEmptyArrayStorage;
    v16 = &enum case for SERXPCResponse.reservations(_:);
LABEL_22:
    v24 = v0[3];
    v25 = *v16;
    v26 = type metadata accessor for SERXPCResponse();
    (*(*(v26 - 8) + 104))(v24, v25, v26);
    v27 = v0[1];

    return v27();
  }

  return result;
}

uint64_t sub_1002C3980()
{
  v1 = *(v0 + 24);
  *v1 = 0xD00000000000003DLL;
  v1[1] = 0x800000010046B620;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 24);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C3AAC()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    v2 = type metadata accessor for SERPersistenceController();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_100284074();
    v1 = v5;
    qword_100508D40 = v5;
  }

  *(v0 + 24) = 0;
  *(v0 + 32) = v1;

  return _swift_task_switch(sub_1002C3C60, v1, 0);
}

uint64_t sub_1002C3C60()
{
  v1 = v0[4];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = v0[3];
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = v2;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v6 = v3;

    if (!v3)
    {
      v7 = sub_1002C3DE8;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = objc_allocWithZone(NSError);
    v9 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v6 = [v8 initWithDomain:v9 code:21 userInfo:isa];

    swift_willThrow();
  }

  v0[5] = v6;
  v7 = sub_1002C3E8C;
LABEL_6:

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C3DE8()
{
  v1 = *(v0 + 16);
  v2 = enum case for SERXPCResponse.clearReservations(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C3E8C()
{
  v1 = v0[5];
  v2 = v0[2];

  *v2 = 0xD000000000000042;
  v2[1] = 0x800000010046B660;
  v3 = enum case for SERXPCInternalErrors.internalError(_:);
  v4 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v2, v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C3F9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for SESnapshot.TargetDevice();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002C40F0, 0, 0);
}

uint64_t sub_1002C40F0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SESnapshot.TargetDevice.currentDevice(_:))
  {
    v5 = v0[5];
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1002C43EC;
    v7 = v0[4];

    return sub_1002CCE4C(v6, &unk_1004148A0, v7);
  }

  else if (v4 == enum case for SESnapshot.TargetDevice.pairedWatch(_:))
  {
    v9 = v0[5];
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_1002C4958;
    v11 = v0[9];

    return sub_1002CEF54();
  }

  else
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[2];
    v18 = v0[3];
    _StringGuts.grow(_:)(35);

    v19._countAndFlagsBits = SESnapshot.TargetDevice.rawValue.getter();
    String.append(_:)(v19);

    *v17 = 0xD000000000000021;
    v17[1] = 0x800000010046B6B0;
    (*(v16 + 104))(v17, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v15);
    v20 = enum case for SERXPCResponse.error(_:);
    v21 = type metadata accessor for SERXPCResponse();
    (*(*(v21 - 8) + 104))(v17, v20, v21);
    (*(v13 + 8))(v12, v14);
    v22 = v0[12];
    v23 = v0[8];
    v24 = v0[9];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1002C43EC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1002C4DAC;
  }

  else
  {
    v3 = sub_1002C4500;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C4500()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1002C4590;
  v2 = *(v0 + 32);

  return sub_1002CDC84();
}

uint64_t sub_1002C4590()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1002C5048;
  }

  else
  {
    v3 = sub_1002C46A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C46A4()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1002C4760;

  return sub_1002CD24C(&unk_1004148C0, v2);
}

uint64_t sub_1002C4760(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_1002C52E4;
  }

  else
  {
    v8 = *(v4 + 136);
    *(v4 + 160) = a1;

    v7 = sub_1002C4890;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C4890()
{
  v1 = v0[2];
  *v1 = v0[20];
  v2 = enum case for SERXPCResponse.reclaimUnusedSEMemory(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C4958(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {
    (*(v3[7] + 8))(v3[9], v3[6]);
    v5 = sub_1002C5588;
  }

  else
  {
    v5 = sub_1002C4A84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C4A84()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[2];
    *v2 = v1;
    v3 = enum case for SERXPCResponse.reclaimUnusedSEMemory(_:);
    v4 = type metadata accessor for SERXPCResponse();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    v5 = v0[12];
    v6 = v0[8];
    v7 = v0[9];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[5];
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = sub_1002C4BC0;
    v12 = v0[8];

    return sub_1002CA910(v12);
  }
}

uint64_t sub_1002C4BC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002C5620;
  }

  else
  {
    *(v4 + 192) = a1;
    v7 = sub_1002C4CE4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C4CE4()
{
  v1 = v0[2];
  *v1 = v0[24];
  v2 = enum case for SERXPCResponse.reclaimUnusedSEMemory(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C4DAC()
{
  v18 = v0;
  v1 = v0[14];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509A58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v5 = 136315650;
    *(v5 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v17);
    *(v5 + 12) = 2048;
    *(v5 + 14) = 232;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s:%ld - %@", v5, 0x20u);
    sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v7);
  }

  else
  {
  }

  v9 = v0[2];
  (*(v0[7] + 104))(v9, enum case for SERXPCInternalErrors.unknownError(_:), v0[6]);
  v10 = enum case for SERXPCResponse.error(_:);
  v11 = type metadata accessor for SERXPCResponse();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = v0[12];
  v13 = v0[8];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002C5048()
{
  v18 = v0;
  v1 = v0[16];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509A58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v5 = 136315650;
    *(v5 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v17);
    *(v5 + 12) = 2048;
    *(v5 + 14) = 232;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s:%ld - %@", v5, 0x20u);
    sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v7);
  }

  else
  {
  }

  v9 = v0[2];
  (*(v0[7] + 104))(v9, enum case for SERXPCInternalErrors.unknownError(_:), v0[6]);
  v10 = enum case for SERXPCResponse.error(_:);
  v11 = type metadata accessor for SERXPCResponse();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = v0[12];
  v13 = v0[8];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002C52E4()
{
  v19 = v0;
  v1 = v0[17];

  v2 = v0[19];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v18);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 232;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v0[2];
  (*(v0[7] + 104))(v10, enum case for SERXPCInternalErrors.unknownError(_:), v0[6]);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002C5588()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1002C4BC0;
  v3 = v0[8];

  return sub_1002CA910(v3);
}

uint64_t sub_1002C5620()
{
  v21 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509A58);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v20);
    *(v8 + 12) = 2048;
    *(v8 + 14) = 232;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s:%ld - %@", v8, 0x20u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v10);
  }

  else
  {
  }

  v12 = v0[2];
  (*(v0[7] + 104))(v12, enum case for SERXPCInternalErrors.unknownError(_:), v0[6]);
  v13 = enum case for SERXPCResponse.error(_:);
  v14 = type metadata accessor for SERXPCResponse();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002C5928(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 232) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = *v6;
  v8 = type metadata accessor for SERXPCInternalErrors();
  *(v7 + 56) = v8;
  v9 = *(v8 - 8);
  *(v7 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v11 = type metadata accessor for SESnapshot.TargetDevice();
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1002C5A8C, 0, 0);
}

uint64_t sub_1002C5A8C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SESnapshot.TargetDevice.currentDevice(_:))
  {
    v5 = v0[6];
    v6 = v0[3];
    v7 = swift_task_alloc();
    v0[15] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_1002C5DB0;

    return sub_1002CD6C0(&unk_100414910, v7);
  }

  else if (v4 == enum case for SESnapshot.TargetDevice.pairedWatch(_:))
  {
    v10 = v0[6];
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = sub_1002C6434;
    v12 = v0[11];

    return sub_1002CA910(v12);
  }

  else
  {
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    v16 = v0[7];
    v17 = v0[8];
    v18 = v0[4];
    v19 = v0[2];
    _StringGuts.grow(_:)(26);

    v20._countAndFlagsBits = SESnapshot.TargetDevice.rawValue.getter();
    String.append(_:)(v20);

    *v19 = 0xD000000000000018;
    v19[1] = 0x800000010046B7E0;
    (*(v17 + 104))(v19, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v16);
    v21 = enum case for SERXPCResponse.error(_:);
    v22 = type metadata accessor for SERXPCResponse();
    (*(*(v22 - 8) + 104))(v19, v21, v22);
    (*(v14 + 8))(v13, v15);
    v23 = v0[14];
    v24 = v0[10];
    v25 = v0[11];
    v26 = v0[9];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1002C5DB0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_1002C6BB8;
  }

  else
  {
    v8 = *(v4 + 120);
    *(v4 + 233) = a1 & 1;

    v7 = sub_1002C5EE4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C5EE4()
{
  v1 = *(v0 + 232);
  if (v1 != 1 || (*(v0 + 233) & 1) != 0)
  {
    v5 = *(v0 + 16);
    *v5 = (v1 | *(v0 + 233)) & 1;
    v6 = enum case for SERXPCResponse.canFit(_:);
    v7 = type metadata accessor for SERXPCResponse();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1002C6044;
    v3 = *(v0 + 40);

    return sub_1002CDC84();
  }
}

uint64_t sub_1002C6044()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1002C6E68;
  }

  else
  {
    v3 = sub_1002C6158;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C6158()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[20] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1002C6224;

  return sub_1002CD6C0(&unk_100414928, v4);
}

uint64_t sub_1002C6224(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_1002C7110;
  }

  else
  {
    v8 = *(v4 + 160);
    *(v4 + 234) = a1 & 1;

    v7 = sub_1002C6358;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C6358()
{
  v1 = *(v0 + 16);
  *v1 = *(v0 + 234);
  v2 = enum case for SERXPCResponse.canFit(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002C6434(uint64_t a1)
{
  v3 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {
    v4 = sub_1002C73C0;
  }

  else
  {
    v4 = sub_1002C6548;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002C6548()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 24);
  v3 = *(v0 + 192);
  v4 = SESnapshot.canFit(proposedUsage:)();

  if (v1 != 1 || (v4 & 1) != 0)
  {
    v9 = v1 | v4;
    v10 = *(v0 + 16);

    *v10 = v9 & 1;
    v11 = enum case for SERXPCResponse.canFit(_:);
    v12 = type metadata accessor for SERXPCResponse();
    (*(*(v12 - 8) + 104))(v10, v11, v12);
    v13 = *(v0 + 112);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v16 = *(v0 + 72);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_1002C66D8;
    v7 = *(v0 + 80);

    return sub_1002CEF54();
  }
}

uint64_t sub_1002C66D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(*v2 + 208) = a1;

  if (v1)
  {
    (*(v3[8] + 8))(v3[10], v3[7]);
    v5 = sub_1002C76D4;
  }

  else
  {
    v5 = sub_1002C6804;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C6804()
{
  v1 = *(v0 + 208);
  if (v1)
  {

    v2 = *(v0 + 24);
    v3 = v1;
    LOBYTE(v2) = SESnapshot.canFit(proposedUsage:)();

    v4 = *(v0 + 16);
    *v4 = v2 & 1;
    v5 = enum case for SERXPCResponse.canFit(_:);
    v6 = type metadata accessor for SERXPCResponse();
    (*(*(v6 - 8) + 104))(v4, v5, v6);
    v7 = *(v0 + 112);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 48);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_1002C6988;
    v15 = *(v0 + 72);

    return sub_1002CA910(v15);
  }
}

uint64_t sub_1002C6988(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002C776C;
  }

  else
  {
    *(v4 + 224) = a1;
    v7 = sub_1002C6AAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C6AAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 224);
  LOBYTE(v1) = SESnapshot.canFit(proposedUsage:)();

  v3 = *(v0 + 16);
  *v3 = v1 & 1;
  v4 = enum case for SERXPCResponse.canFit(_:);
  v5 = type metadata accessor for SERXPCResponse();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002C6BB8()
{
  v20 = v0;
  v1 = v0[15];

  v2 = v0[17];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v19);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 330;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v0[2];
  (*(v0[8] + 104))(v10, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002C6E68()
{
  v19 = v0;
  v1 = v0[19];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509A58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v5 = 136315650;
    *(v5 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v18);
    *(v5 + 12) = 2048;
    *(v5 + 14) = 330;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s:%ld - %@", v5, 0x20u);
    sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v7);
  }

  else
  {
  }

  v9 = v0[2];
  (*(v0[8] + 104))(v9, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v10 = enum case for SERXPCResponse.error(_:);
  v11 = type metadata accessor for SERXPCResponse();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = v0[14];
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002C7110()
{
  v20 = v0;
  v1 = v0[20];

  v2 = v0[22];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v19);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 330;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v0[2];
  (*(v0[8] + 104))(v10, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002C73C0()
{
  v22 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v3 + 32))(v4, v1, v2);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509A58);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v21);
    *(v8 + 12) = 2048;
    *(v8 + 14) = 330;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s:%ld - %@", v8, 0x20u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v10);
  }

  else
  {
  }

  v12 = v0[2];
  (*(v0[8] + 104))(v12, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v13 = enum case for SERXPCResponse.error(_:);
  v14 = type metadata accessor for SERXPCResponse();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002C76D4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1002C6988;
  v3 = v0[9];

  return sub_1002CA910(v3);
}

uint64_t sub_1002C776C()
{
  v23 = v0;
  v1 = v0[24];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v3 + 32))(v5, v2, v4);

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_100509A58);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v22);
    *(v9 + 12) = 2048;
    *(v9 + 14) = 330;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s:%ld - %@", v9, 0x20u);
    sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v11);
  }

  else
  {
  }

  v13 = v0[2];
  (*(v0[8] + 104))(v13, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v14 = enum case for SERXPCResponse.error(_:);
  v15 = type metadata accessor for SERXPCResponse();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  v16 = v0[14];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002C7A88(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return _swift_task_switch(sub_1002C7AD8, 0, 0);
}

uint64_t sub_1002C7AD8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1002C7BA0;

  return sub_1002CD6C0(&unk_100414938, v3);
}

uint64_t sub_1002C7BA0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1002C81BC;
  }

  else
  {
    v8 = *(v4 + 48);
    *(v4 + 113) = a1 & 1;

    v7 = sub_1002C7CD4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C7CD4()
{
  v1 = *(v0 + 112);
  if (v1 != 1 || (*(v0 + 113) & 1) != 0)
  {
    v5 = *(v0 + 16);
    *v5 = (v1 | *(v0 + 113)) & 1;
    v6 = enum case for SERXPCResponse.canFit(_:);
    v7 = type metadata accessor for SERXPCResponse();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1002C7E00;
    v3 = *(v0 + 32);

    return sub_1002CDC84();
  }
}

uint64_t sub_1002C7E00()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1002C8468;
  }

  else
  {
    v3 = sub_1002C7F14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C7F14()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1002C7FDC;

  return sub_1002CD6C0(&unk_100414948, v2);
}

uint64_t sub_1002C7FDC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1002C870C;
  }

  else
  {
    v8 = *(v4 + 88);
    *(v4 + 114) = a1 & 1;

    v7 = sub_1002C8110;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C8110()
{
  v1 = *(v0 + 16);
  *v1 = *(v0 + 114);
  v2 = enum case for SERXPCResponse.canFit(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C81BC()
{
  v18 = v0;
  v1 = v0[6];

  v2 = v0[8];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD00000000000003BLL, 0x800000010046B840, &v17);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 360;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v0[2];
  v11 = enum case for SERXPCInternalErrors.unknownError(_:);
  v12 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = enum case for SERXPCResponse.error(_:);
  v14 = type metadata accessor for SERXPCResponse();
  (*(*(v14 - 8) + 104))(v10, v13, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_1002C8468()
{
  v17 = v0;
  v1 = v0[10];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509A58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315650;
    *(v5 + 4) = sub_1002FFA0C(0xD00000000000003BLL, 0x800000010046B840, &v16);
    *(v5 + 12) = 2048;
    *(v5 + 14) = 360;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s:%ld - %@", v5, 0x20u);
    sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v7);
  }

  else
  {
  }

  v9 = v0[2];
  v10 = enum case for SERXPCInternalErrors.unknownError(_:);
  v11 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = enum case for SERXPCResponse.error(_:);
  v13 = type metadata accessor for SERXPCResponse();
  (*(*(v13 - 8) + 104))(v9, v12, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1002C870C()
{
  v18 = v0;
  v1 = v0[11];

  v2 = v0[13];
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD00000000000003BLL, 0x800000010046B840, &v17);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 360;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v0[2];
  v11 = enum case for SERXPCInternalErrors.unknownError(_:);
  v12 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = enum case for SERXPCResponse.error(_:);
  v14 = type metadata accessor for SERXPCResponse();
  (*(*(v14 - 8) + 104))(v10, v13, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_1002C89B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  return _swift_task_switch(sub_1002C89DC, 0, 0);
}

uint64_t sub_1002C89DC()
{
  if (v0[28] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v2 = v0[27];
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v0[30] = isa;
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v0[31] = v4;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1002C8B5C;
  v5 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004CF4B0;
  v0[14] = v5;
  sub_100055378(v3, 0, isa, v4, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002C8B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1002C8CDC;
  }

  else
  {
    v3 = sub_1002C8C6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C8C6C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002C8CDC()
{
  v30 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  swift_willThrow();

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v4 = v0[32];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509A58);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[32];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[23];
    v14 = Error.localizedDescription.getter();
    v16 = sub_1002FFA0C(v14, v15, &v28);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get SE with reason: %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v17 = v0[32];
  v18 = v0[29];
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v28 = 0xD00000000000001ELL;
  v29 = 0x800000010046B430;
  swift_getErrorValue();
  v20 = v0[18];
  v19 = v0[19];
  v21 = v0[20];
  v22._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v22);

  v23 = v29;
  *v18 = v28;
  v18[1] = v23;
  v24 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
  v25 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v25 - 8) + 104))(v18, v24, v25);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v26 = v0[1];

  return v26();
}

uint64_t sub_1002C8FAC(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[9] = a2;
  v3[7] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for SECMemoryInfo();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = type metadata accessor for SECCredentialInfo();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v13 = type metadata accessor for SECMetadata();
  v3[21] = v13;
  v14 = *(v13 - 8);
  v3[22] = v14;
  v15 = *(v14 + 64) + 15;
  v3[23] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v3[24] = v16;
  v17 = *(v16 - 8);
  v3[25] = v17;
  v18 = *(v17 + 64) + 15;
  v3[26] = swift_task_alloc();
  v19 = type metadata accessor for SECCredentialConfig();
  v3[27] = v19;
  v20 = *(v19 - 8);
  v3[28] = v20;
  v21 = *(v20 + 64) + 15;
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_1002C9254, 0, 0);
}

uint64_t sub_1002C9254()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 240) = qword_10051B858;

  return _swift_task_switch(sub_1002C92EC, v1, 0);
}

uint64_t sub_1002C92EC()
{
  v1 = v0[30];
  v0[31] = sub_100094934();
  v0[32] = 0;

  return _swift_task_switch(sub_1002C9380, 0, 0);
}

uint64_t sub_1002C9380()
{
  v134 = v0;
  if (qword_100501C78 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v1 = v0;
    v0 = *(v0 + 248);
    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_100509A58);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v131 = v1;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v1[31];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      v132 = v7;
      *v6 = 136315138;
      v9 = *(v5 + 16);
      if (v9)
      {
        v115 = v7;
        v116 = v6;
        v119 = v4;
        v121 = v3;
        v10 = v1[31];
        v11 = v1[28];
        v12 = v1[25];
        v133 = _swiftEmptyArrayStorage;
        sub_10019F3C0(0, v9, 0);
        v13 = v133;
        v14 = *(v11 + 16);
        v11 += 16;
        v15 = v10 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
        v127 = *(v11 + 56);
        v129 = v14;
        v125 = (v12 + 8);
        v123 = (v11 - 8);
        do
        {
          v16 = v131[29];
          v18 = v131[26];
          v17 = v131[27];
          v19 = v131[24];
          v129(v16, v15, v17);
          SECCredentialConfig.configUUID.getter();
          v20 = UUID.uuidString.getter();
          v22 = v21;
          (*v125)(v18, v19);
          (*v123)(v16, v17);
          v133 = v13;
          v24 = v13[2];
          v23 = v13[3];
          if (v24 >= v23 >> 1)
          {
            sub_10019F3C0((v23 > 1), v24 + 1, 1);
            v13 = v133;
          }

          v13[2] = v24 + 1;
          v25 = &v13[2 * v24];
          v25[4] = v20;
          v25[5] = v22;
          v15 += v127;
          --v9;
        }

        while (v9);
        v3 = v121;
        v4 = v119;
        v8 = v115;
        v6 = v116;
      }

      v26 = Array.description.getter();
      v0 = v27;

      v28 = sub_1002FFA0C(v26, v0, &v132);

      *(v6 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v3, v4, "Credential Configs on device %s", v6, 0xCu);
      sub_1000752F4(v8);
    }

    v29 = v131[31];
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v131[28];
      v32 = v131[25];
      v133 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v30, 0);
      v33 = v133;
      v34 = *(v31 + 16);
      v31 += 16;
      v35 = v29 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v128 = *(v31 + 56);
      v130 = v34;
      v122 = (v32 + 8);
      v126 = (v31 - 8);
      v36 = v35;
      v120 = v30;
      v37 = v30;
      do
      {
        v38 = v131[29];
        v40 = v131[26];
        v39 = v131[27];
        v41 = v131[24];
        v130(v38, v36, v39);
        SECCredentialConfig.configUUID.getter();
        v42 = UUID.uuidString.getter();
        v44 = v43;
        (*v122)(v40, v41);
        v124 = *v126;
        (*v126)(v38, v39);
        v133 = v33;
        v46 = v33[2];
        v45 = v33[3];
        if (v46 >= v45 >> 1)
        {
          sub_10019F3C0((v45 > 1), v46 + 1, 1);
          v33 = v133;
        }

        v33[2] = v46 + 1;
        v47 = &v33[2 * v46];
        v47[4] = v42;
        v47[5] = v44;
        v36 += v128;
        --v37;
      }

      while (v37);
      v117 = v33;
      v48 = v131[22];
      v133 = _swiftEmptyArrayStorage;
      v49 = v120;
      sub_10019F7C8(0, v120, 0);
      v50 = v133;
      v51 = (v48 + 8);
      do
      {
        v52 = v131[29];
        v53 = v131[27];
        v54 = v131[23];
        v55 = v131[21];
        v130(v52, v35, v53);
        SECCredentialConfig.metadata.getter();
        v0 = SECMetadata.appletInstances.getter();
        (*v51)(v54, v55);
        v124(v52, v53);
        v133 = v50;
        v57 = v50[2];
        v56 = v50[3];
        if (v57 >= v56 >> 1)
        {
          sub_10019F7C8((v56 > 1), v57 + 1, 1);
          v50 = v133;
        }

        v50[2] = v57 + 1;
        v50[v57 + 4] = v0;
        v35 += v128;
        --v49;
      }

      while (v49);
      v58 = v131[31];

      v59 = v117;
    }

    else
    {
      v60 = v131[31];

      v50 = _swiftEmptyArrayStorage;
      v59 = _swiftEmptyArrayStorage;
    }

    v61 = v50[2];
    v62 = _swiftEmptyArrayStorage;
    v118 = v59;
    if (!v61)
    {
      break;
    }

    v63 = 0;
    v64 = v131[18];
    while (v63 < v50[2])
    {
      v65 = v50[v63 + 4];
      v66 = *(v65 + 16);
      v67 = v62[2];
      v0 = v67 + v66;
      if (__OFADD__(v67, v66))
      {
        goto LABEL_51;
      }

      v68 = v50[v63 + 4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v0 > v62[3] >> 1)
      {
        if (v67 <= v0)
        {
          v70 = v67 + v66;
        }

        else
        {
          v70 = v67;
        }

        v62 = sub_10012FAD0(isUniquelyReferenced_nonNull_native, v70, 1, v62);
      }

      v59 = v118;
      if (*(v65 + 16))
      {
        v71 = v62[2];
        if ((v62[3] >> 1) - v71 < v66)
        {
          goto LABEL_53;
        }

        v72 = v131[17];
        v73 = v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v71;
        swift_arrayInitWithCopy();

        if (v66)
        {
          v74 = v62[2];
          v75 = __OFADD__(v74, v66);
          v76 = v74 + v66;
          if (v75)
          {
            goto LABEL_54;
          }

          v62[2] = v76;
        }
      }

      else
      {

        if (v66)
        {
          goto LABEL_52;
        }
      }

      if (v61 == ++v63)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

LABEL_38:

  v77 = v62[2];
  if (v77)
  {
    v78 = v131[18];
    v79 = v131[15];
    v133 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for SERCredentialInfo();
    type metadata accessor for MemoryUsage();
    v80 = *(v78 + 16);
    v78 += 16;
    v114 = v80;
    v81 = v62 + ((*(v78 + 64) + 32) & ~*(v78 + 64));
    v113 = *(v78 + 56);
    v112 = (v78 - 8);
    v82 = (v79 + 8);
    do
    {
      v84 = v131[19];
      v83 = v131[20];
      v85 = v131[16];
      v86 = v131[17];
      v87 = v131[14];
      v114(v83, v81, v86);
      v114(v84, v83, v86);
      SECCredentialInfo.modulesAIDs.getter();
      SECCredentialInfo.packageAid.getter();
      SECCredentialInfo.containerSize.getter();
      SECMemoryInfo.nvmSize.getter();
      SECMemoryInfo.corSize.getter();
      SECMemoryInfo.codSize.getter();
      dispatch thunk of MemoryUsage.__allocating_init(pHeap:cor:cod:usedIndices:)();
      v88 = *v82;
      (*v82)(v85, v87);
      SECCredentialInfo.requiredMemoryForCredential.getter();
      SECMemoryInfo.nvmSize.getter();
      SECMemoryInfo.corSize.getter();
      SECMemoryInfo.codSize.getter();
      dispatch thunk of MemoryUsage.__allocating_init(pHeap:cor:cod:usedIndices:)();
      v88(v85, v87);
      dispatch thunk of SERCredentialInfo.__allocating_init(moduleAIDs:packageAID:containerSize:requiredMemoryForCredential:)();
      v89 = *v112;
      (*v112)(v84, v86);
      v89(v83, v86);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v90 = v133[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v81 += v113;
      --v77;
    }

    while (v77);

    v91 = v133;
    v59 = v118;
  }

  else
  {

    v91 = _swiftEmptyArrayStorage;
  }

  v92 = v131[32];
  sub_1002D7F1C(v59, v91);

  v93 = objc_allocWithZone(type metadata accessor for SERDataSource());
  v94 = SERDataSource.init(credentialSizes:)();
  v131[33] = v94;
  if (v92)
  {
    v96 = v131[10];
    v95 = v131[11];
    v97 = v131[9];
    *v97 = 0xD000000000000031;
    v97[1] = 0x800000010046B230;
    (*(v95 + 104))(v97, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v96);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();

    v98 = v131[29];
    v99 = v131[26];
    v100 = v131[23];
    v102 = v131[19];
    v101 = v131[20];
    v103 = v131[16];
    v105 = v131[12];
    v104 = v131[13];

    v106 = v131[1];

    return v106();
  }

  else
  {
    v108 = v94;
    v109 = swift_task_alloc();
    v131[34] = v109;
    *v109 = v131;
    v109[1] = sub_1002C9E28;
    v110 = v131[7];
    v111 = v131[8];

    return sub_1002CADB8(v108, v110);
  }
}

uint64_t sub_1002C9E28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  if (v1)
  {
    v7 = sub_1002CA4E0;
  }

  else
  {
    v7 = sub_1002C9F64;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C9F64()
{
  v1 = qword_100508D40;
  if (qword_100508D40)
  {
    v2 = v0[36];
LABEL_3:
    v0[37] = v2;
    v0[38] = v1;

    return _swift_task_switch(sub_1002CA17C, v1, 0);
  }

  v3 = v0[36];
  v4 = type metadata accessor for SERPersistenceController();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_100284074();
  if (!v3)
  {
    v1 = v7;
    qword_100508D40 = v7;

    v2 = 0;
    goto LABEL_3;
  }

  v8 = v0[35];
  v9 = v0[33];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  *v12 = 0xD000000000000039;
  v12[1] = 0x800000010046B290;
  (*(v10 + 104))(v12, enum case for SERXPCInternalErrors.internalError(_:), v11);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[23];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[16];
  v20 = v0[12];
  v19 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002CA17C()
{
  v2 = v0[37];
  v1 = v0[38];
  sub_10028115C();
  v0[39] = v3;
  v4 = v0[38];
  if (v2)
  {

    v5 = sub_1002CA7AC;
  }

  else
  {
    v6 = v0[38];

    v5 = sub_1002CA220;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002CA220()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[20];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[12];
  v9 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v9);
  IOObjectRelease(MatchingService);
  v11 = objc_allocWithZone(type metadata accessor for DeviceCapability());
  DeviceCapability.init(supportsUWB:)();
  v12 = objc_allocWithZone(type metadata accessor for SESnapshot());
  v13 = SESnapshot.init(seState:reservationState:stagedCredentials:dataSource:deviceCapability:)();

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1002CA38C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  *v3 = 0xD000000000000043;
  v3[1] = 0x800000010046B1E0;
  (*(v1 + 104))(v3, enum case for SERXPCInternalErrors.internalError(_:), v2);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002CA4E0()
{
  v0[5] = v0[36];
  v1 = v0[13];
  v2 = v0[10];
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v3 = v0[36];
    v4 = v0[33];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];

    (*(v8 + 32))(v5, v6, v7);
    (*(v8 + 16))(v9, v5, v7);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();

    (*(v8 + 8))(v5, v7);
    v10 = v0[5];
  }

  else
  {
    v11 = v0[36];
    v12 = v0[33];
    v13 = v0[10];
    v14 = v0[11];
    v15 = v0[9];
    v16 = v0[5];

    _StringGuts.grow(_:)(24);

    swift_getErrorValue();
    v18 = v0[2];
    v17 = v0[3];
    v19 = v0[4];
    v20._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v20);

    *v15 = 0xD000000000000016;
    v15[1] = 0x800000010046B270;
    (*(v14 + 104))(v15, enum case for SERXPCInternalErrors.internalError(_:), v13);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
  }

  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[23];
  v25 = v0[19];
  v24 = v0[20];
  v26 = v0[16];
  v28 = v0[12];
  v27 = v0[13];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1002CA7AC()
{
  v1 = v0[35];
  v2 = v0[33];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  *v5 = 0xD000000000000039;
  v5[1] = 0x800000010046B290;
  (*(v3 + 104))(v5, enum case for SERXPCInternalErrors.internalError(_:), v4);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002CA930()
{
  v1 = objc_opt_self();
  if (qword_100501C70 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B6E0;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1002CAA98;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100509B40, &qword_100414800);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002D4290;
  v0[13] = &unk_1004CF4D8;
  v0[14] = v3;
  [v1 getWatchSnapshot:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002CAA98()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1002CAB78, 0, 0);
}

uint64_t sub_1002CAB78()
{
  v1 = *(v0 + 192);
  *(v0 + 144) = *(v0 + 176);
  *(v0 + 160) = v1;
  if (*(v0 + 168))
  {
    type metadata accessor for SESnapshot();
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 80);
      v3 = *(v0 + 8);

      return v3(v2);
    }
  }

  else
  {
    sub_100075768(v0 + 144, &qword_100502420, &qword_10040F310);
  }

  v5 = *(v0 + 208);
  _StringGuts.grow(_:)(51);
  v6._object = 0x800000010046B450;
  v6._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *(v0 + 80) = 793;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x800000010046B470;
  String.append(_:)(v9);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v10 = enum case for SERXPCInternalErrors.internalError(_:);
  v11 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002CADB8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for SEStorageCredential();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for SERXPCInternalErrors();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for SEType();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002CAF4C, 0, 0);
}

uint64_t sub_1002CAF4C(uint64_t a1, const char *a2)
{
  v3 = *(v2 + 136);
  v4 = sub_1003AF3C4(*(v2 + 64), a2);
  v5 = [v4 type];

  v6 = *(v3 + 104);
  if ((v5 - 1) > 5)
  {
    v7 = &enum case for SEType.EOSAdv(_:);
  }

  else
  {
    v7 = *(&off_1004CF5F0 + (v5 - 1));
  }

  v9 = *(v2 + 152);
  v8 = *(v2 + 160);
  v11 = *(v2 + 136);
  v10 = *(v2 + 144);
  v12 = *(v2 + 128);
  v6(v9, *v7, v12);
  (*(v11 + 32))(v8, v9, v12);
  v6(v10, enum case for SEType.P61(_:), v12);
  sub_1002D9BE4(&qword_100509B18, &type metadata accessor for SEType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v11 + 8);
  *(v2 + 168) = v13;
  *(v2 + 176) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v12);
  if (*(v2 + 16) == *(v2 + 24) || (v14 = *(v2 + 160), v15 = *(v2 + 144), v16 = *(v2 + 128), v6(v15, enum case for SEType.P73(_:), v16), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v13(v15, v16), *(v2 + 32) == *(v2 + 40)))
  {
    v17 = *(v2 + 160);
    v18 = *(v2 + 128);
    v19 = *(v2 + 104);
    v20 = *(v2 + 112);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_allocError();
    *v21 = 0xD000000000000013;
    v21[1] = 0x800000010046B2D0;
    (*(v20 + 104))(v21, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v19);
    swift_willThrow();
    v13(v17, v18);
    v23 = *(v2 + 152);
    v22 = *(v2 + 160);
    v24 = *(v2 + 144);
    v25 = *(v2 + 120);
    v26 = *(v2 + 96);

    v27 = *(v2 + 8);

    return v27();
  }

  else
  {
    v29 = swift_task_alloc();
    *(v2 + 184) = v29;
    *v29 = v2;
    v29[1] = sub_1002CB2E4;
    v30 = *(v2 + 160);
    v31 = *(v2 + 64);

    return sub_100279C60(v30);
  }
}

uint64_t sub_1002CB2E4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 184);
  v5 = *v3;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1002CBA68, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v5[27] = v6;
    *v6 = v5;
    v6[1] = sub_1002CB45C;
    v7 = v5[9];
    v8 = v5[7];
    v9 = v5[8];

    return sub_1002D14B4(v9, v8);
  }
}

uint64_t sub_1002CB45C(uint64_t a1)
{
  v4 = *(*v2 + 216);
  v5 = *v2;
  v5[28] = a1;
  v5[29] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CBB18, 0, 0);
  }

  else
  {
    v5[6] = a1;
    v6 = swift_task_alloc();
    v5[30] = v6;
    *v6 = v5;
    v6[1] = sub_1002CB5E8;
    v7 = v5[15];
    v8 = v5[9];
    v9 = v5[8];

    return sub_1002D1B98(v9, (v5 + 6), v7);
  }
}

uint64_t sub_1002CB5E8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 224);

    return _swift_task_switch(sub_1002CBBDC, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 248) = v6;
    *v6 = v4;
    v6[1] = sub_1002CB754;

    return sub_1002D82A0();
  }
}

uint64_t sub_1002CB754(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_1002CB854, 0, 0);
}

uint64_t sub_1002CB854()
{
  v1 = v0[8];
  sub_1002F9130(v0[32]);
  v2 = sub_1002D8968(v1);
  if (v2)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    *v3 = v2;
    v6 = v2;
    (*(v4 + 104))(v3, enum case for SEStorageCredential.muirfield(_:), v5);
    v7 = v0[6];
    v8 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10012FAA8(0, v7[2] + 1, 1, v7);
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_10012FAA8(v9 > 1, v10 + 1, 1, v7);
    }

    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];

    v7[2] = v10 + 1;
    (*(v12 + 32))(v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11, v13);
    v0[6] = v7;
  }

  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[21];
  v17 = v0[22];
  v18 = v0[20];
  v19 = v0[16];
  v25 = v0[12];
  (*(v0[17] + 16))(v0[18], v18, v19);
  v20 = v0[6];
  v21 = objc_allocWithZone(type metadata accessor for SEState());
  v22 = SEState.init(seType:freeMemory:seStorageCredentials:memoryInfo:)();
  v16(v18, v19);

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_1002CBA68()
{
  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 160), *(v0 + 128));
  v2 = *(v0 + 208);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002CBB18()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);

  v3(v4, v5);
  v6 = *(v0 + 232);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002CBBDC()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v9 + 32))(v10, v7, v8);

  v4(v5, v6);
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002CBD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SERXPCInternalErrors();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_1002CBE20;

  return sub_1002CC034(a2, v7);
}

uint64_t sub_1002CBE20()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1002CBF58, 0, 0);
  }

  else
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1002CBF58()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CC034(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[10] = v7;
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_1002CC164;

  return sub_1002CF3A0(a1, v7);
}

uint64_t sub_1002CC164()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1002CC7EC;
  }

  else
  {
    v3 = sub_1002CC2A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CC2A4()
{
  *(v0 + 16) = 0;
  v1 = sub_100053D3C(*(v0 + 48));
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v4 = objc_opt_self();
    *(v0 + 24) = 0;
    v5 = v2;
    v6 = [v4 getSPRInspectorAndReturnError:v0 + 24];
    v7 = *(v0 + 24);
    if (v6)
    {
      v8 = v6;
      v9 = *(v0 + 96);
      v10 = *(v0 + 48);
      v11 = v7;
      v13 = sub_1003AF3C4(v10, v12);
      v14 = [v13 seid];

      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *(v0 + 32) = sub_100288788(v15, v17);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      BidirectionalCollection<>.joined(separator:)();
      sub_10006A178(v15, v17);

      v18 = String._bridgeToObjectiveC()();

      *(v0 + 40) = 0;
      LODWORD(v9) = [v8 removeMuirfieldWithForce:0 session:v3 seid:v18 error:v0 + 40];

      v19 = *(v0 + 40);
      if (v9)
      {
        v20 = v19;

LABEL_17:
        v39 = *(v0 + 80);

        v30 = *(v0 + 8);
        goto LABEL_18;
      }

      v32 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v31 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000958E4(v33, qword_100509A58);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "SPR cleanup error: %@", v36, 0xCu);
      sub_100075768(v37, &unk_100503F70, &unk_10040B2E0);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v21 = v2;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_100509A58);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Could not get the NFSecureElementManagerSession for cleanup", v25, 2u);
  }

  v26 = *(v0 + 64);
  v27 = *(v0 + 72);
  v28 = *(v0 + 56);

  *v28 = 0xD00000000000001DLL;
  v28[1] = 0x800000010046B770;
  (*(v27 + 104))(v28, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v26);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();
  v29 = *(v0 + 80);

  v30 = *(v0 + 8);
LABEL_18:

  return v30();
}

uint64_t sub_1002CC7EC()
{
  (*(v0[9] + 32))(v0[7], v0[10], v0[8]);
  v1 = v0[10];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002CC894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[7] = v7;
  v8 = swift_task_alloc();
  v3[8] = v8;
  *v8 = v3;
  v8[1] = sub_1002CC994;

  return sub_1002C89B8(0, 0xF000000000000000, v7);
}

uint64_t sub_1002CC994(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CCC94, 0, 0);
  }

  else
  {
    v12 = (v4[3] + *v4[3]);
    v7 = *(v4[3] + 4);
    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1002CCB80;
    v9 = v4[4];
    v10 = v4[2];

    return v12(v10, a1);
  }
}

uint64_t sub_1002CCB80()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1002CCDE0;
  }

  else
  {
    v3 = sub_1002CCD70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CCC94()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002CCD70()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002CCDE0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002CCE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[7] = v7;
  v8 = swift_task_alloc();
  v3[8] = v8;
  *v8 = v3;
  v8[1] = sub_1002CCF4C;

  return sub_1002C89B8(0, 0xF000000000000000, v7);
}

uint64_t sub_1002CCF4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002D9C60, 0, 0);
  }

  else
  {
    v12 = (v4[3] + *v4[3]);
    v7 = *(v4[3] + 4);
    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1002CD138;
    v9 = v4[4];
    v10 = v4[2];

    return v12(v10, a1);
  }
}

uint64_t sub_1002CD138()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1002D9C70;
  }

  else
  {
    v3 = sub_1002D9C40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CD24C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for SERXPCInternalErrors();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[7] = v6;
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_1002CD348;

  return sub_1002C89B8(0, 0xF000000000000000, v6);
}

uint64_t sub_1002CD348(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CCC94, 0, 0);
  }

  else
  {
    v11 = (v4[3] + *v4[3]);
    v7 = *(v4[3] + 4);
    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1002CD534;
    v9 = v4[4];

    return v11(v4 + 2, a1);
  }
}

uint64_t sub_1002CD534()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1002CCDE0;
  }

  else
  {
    v3 = sub_1002CD648;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CD648()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002CD6C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SERXPCInternalErrors();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_1002CD7BC;

  return sub_1002C89B8(0, 0xF000000000000000, v6);
}

uint64_t sub_1002CD7BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CDABC, 0, 0);
  }

  else
  {
    v11 = (v4[2] + *v4[2]);
    v7 = *(v4[2] + 4);
    v8 = swift_task_alloc();
    v4[9] = v8;
    *v8 = v6;
    v8[1] = sub_1002CD9A8;
    v9 = v4[3];

    return v11(v4 + 11, a1);
  }
}

uint64_t sub_1002CD9A8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1002CDC14;
  }

  else
  {
    v3 = sub_1002CDB9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CDABC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[6];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1002CDB9C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002CDC14()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_1002CDC84()
{
  v1[2] = *v0;
  v2 = type metadata accessor for SECleanup();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002CDD60, 0, 0);
}

uint64_t sub_1002CDD60()
{
  if (SESInternalVariant())
  {
    v1 = v0[2];
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1002CDECC;
    v3 = v0[7];

    return sub_1002CC894(v3, &unk_1004148E0, 0);
  }

  else
  {
    v0[10] = 0;
    v0[11] = 0;
    v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1002CE400;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 15, 0, 0, 0xD00000000000001ALL, 0x800000010046B710, sub_1002CFB1C, 0, &type metadata for Bool);
  }
}

uint64_t sub_1002CDECC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1002CEAC4;
  }

  else
  {
    v3 = sub_1002CDFE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CDFE0()
{
  v41 = v0;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  sub_1001DA29C(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40[0] = v10;
    *v9 = 136315138;
    v11 = type metadata accessor for PropertyListEncoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1002D9BE4(&qword_100509B78, type metadata accessor for SECleanup);
    v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v6)
    {

      object = 0x800000010046B750;
      countAndFlagsBits = 0xD000000000000018;
    }

    else
    {
      v19 = v14;
      v20 = v15;

      v21 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v21._countAndFlagsBits;
      object = v21._object;
      sub_10006A178(v19, v20);
    }

    sub_1001DA300(v0[6]);
    v22 = sub_1002FFA0C(countAndFlagsBits, object, v40);

    *(v9 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v4, v5, "SECleanup pre: %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  else
  {
    v18 = v0[6];

    sub_1001DA300(v18);
  }

  v23 = v0[7];
  v24 = sub_1001D6458();
  v26 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[7];
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40[0] = v32;
    *v31 = 136315138;

    v33 = sub_1001D408C(v24, v26);
    v35 = v34;

    v36 = sub_1002FFA0C(v33, v35, v40);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Result: %s", v31, 0xCu);
    sub_1000752F4(v32);
  }

  sub_1001DA300(v30);
  v0[10] = v24;
  v0[11] = v26;
  v37 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v38 = swift_task_alloc();
  v0[12] = v38;
  *v38 = v0;
  v38[1] = sub_1002CE400;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 15, 0, 0, 0xD00000000000001ALL, 0x800000010046B710, sub_1002CFB1C, 0, &type metadata for Bool);
}

uint64_t sub_1002CE400()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_1002CE4FC, 0, 0);
}

uint64_t sub_1002CE4FC()
{
  if (*(v0 + 120) == 1)
  {
    if (*(v0 + 80))
    {
      v1 = *(v0 + 88);
      v2 = *(v0 + 16);

      v3 = swift_task_alloc();
      *(v0 + 104) = v3;
      *v3 = v0;
      v3[1] = sub_1002CE640;
      v4 = *(v0 + 40);

      return sub_1002CC894(v4, &unk_1004148D0, 0);
    }
  }

  else
  {
    v6 = *(v0 + 88);
    sub_1002D978C(*(v0 + 80));
  }

  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002CE640()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);

    v6 = sub_1002CEB4C;
  }

  else
  {
    v6 = sub_1002CE764;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002CE764()
{
  v37 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[5];
  LOBYTE(v3) = sub_1001D781C();

  if ((v3 & 1) == 0)
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v4 = v0[4];
    v5 = v0[5];
    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_100509A58);
    sub_1001DA29C(v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[14];
      v11 = v0[3];
      v10 = v0[4];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v12 = 136315138;
      v14 = type metadata accessor for PropertyListEncoder();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_1002D9BE4(&qword_100509B78, type metadata accessor for SECleanup);
      v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      if (v9)
      {

        object = 0x800000010046B750;
        countAndFlagsBits = 0xD000000000000018;
      }

      else
      {
        v22 = v17;
        v23 = v18;

        v24 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v24._countAndFlagsBits;
        object = v24._object;
        sub_10006A178(v22, v23);
      }

      sub_1001DA300(v0[4]);
      v25 = sub_1002FFA0C(countAndFlagsBits, object, &v36);

      *(v12 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v7, v8, "SECleanup post: %s", v12, 0xCu);
      sub_1000752F4(v13);
    }

    else
    {
      v21 = v0[4];

      sub_1001DA300(v21);
    }

    v26 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    [v26 requestTapToRadar:v27 client:v28 fullArchive:0];
  }

  sub_1001DA300(v0[5]);
  v29 = v0[11];
  sub_1002D978C(v0[10]);
  v31 = v0[6];
  v30 = v0[7];
  v33 = v0[4];
  v32 = v0[5];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1002CEAC4()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002CEB4C()
{
  v1 = v0[11];
  sub_1002D978C(v0[10]);
  v2 = v0[14];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002CEBDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_1002CECE4;

  return sub_1002C8FAC(a2, v7);
}

uint64_t sub_1002CECE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002CEE78;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1002CEE08;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002CEE08()
{
  v1 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002CEE78()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CEF70()
{
  v1 = objc_opt_self();
  if (qword_100501C70 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B6E0;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1002CF0D8;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100509B40, &qword_100414800);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002D4290;
  v0[13] = &unk_1004CF5C8;
  v0[14] = v3;
  [v1 reclaimUnusedSEMemory:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002CF0D8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1002CF1B8, 0, 0);
}

uint64_t sub_1002CF1B8()
{
  v11 = v0;
  v1 = *(v0 + 192);
  *(v0 + 144) = *(v0 + 176);
  *(v0 + 160) = v1;
  if (*(v0 + 168))
  {
    type metadata accessor for SESnapshot();
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 80);
      goto LABEL_10;
    }
  }

  else
  {
    sub_100075768(v0 + 144, &qword_100502420, &qword_10040F310);
  }

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000022, 0x800000010046B7B0, &v10);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 800;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld failed to generate snapshot for pairedWatch", v6, 0x16u);
    sub_1000752F4(v7);
  }

  v2 = 0;
LABEL_10:
  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1002CF3A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return _swift_task_switch(sub_1002CF3C0, 0, 0);
}

uint64_t sub_1002CF3C0()
{
  v1 = [objc_opt_self() getServer];
  v0[28] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[26];
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_1002CF6B0;
    v4 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100509B88, &qword_100414900);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1002D13E8;
    v0[13] = &unk_1004CF5A0;
    v0[14] = v4;
    [v2 cleanupAppletsWithNoEndpoints:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_100509A58);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SESEndpointAndKeyXPCServer not initalized?", v8, 2u);
    }

    v9 = v0[27];

    *v9 = 0xD000000000000028;
    v9[1] = 0x800000010046B320;
    v10 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
    v11 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1002CF6B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1002CF824;
  }

  else
  {
    v3 = sub_1002CF7C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CF7C0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CF824()
{
  v30 = v0;
  v1 = v0[29];
  swift_willThrow();
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[23];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not cleanup PTA %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[27];
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v28 = 0xD000000000000016;
  v29 = 0x800000010046B790;
  swift_getErrorValue();
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[20];
  v21._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23 = v29;
  *v17 = v28;
  v17[1] = v23;
  v24 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
  v25 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v25 - 8) + 104))(v17, v24, v25);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v26 = v0[1];

  return v26();
}

uint64_t sub_1002CFAFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002D9C5C, 0, 0);
}

void sub_1002CFB1C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100509B80, &qword_1004148E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  v7 = [objc_opt_self() sharedRemoteAdminManager];
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  aBlock = 0xD000000000000010;
  v15 = 0x8000000100465CF0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v3 + 16))(v6, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v6, v2);
  v18 = sub_1002D9860;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001BA05C;
  v17 = &unk_1004CF578;
  v12 = _Block_copy(&aBlock);

  [v7 connectToServer:0 initialClientRequestInfo:isa callback:v12];
  _Block_release(v12);
}

uint64_t sub_1002CFDD8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000958E4(v1, qword_100509A58);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform SE cleanup from TSM: %@", v4, 0xCu);
      sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100068FC4(&qword_100509B80, &qword_1004148E8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_100509A58);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "SE cleanup complete", v11, 2u);
    }

    sub_100068FC4(&qword_100509B80, &qword_1004148E8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002D004C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002D006C, 0, 0);
}

uint64_t sub_1002D006C()
{
  sub_1001D49D4(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D00D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = type metadata accessor for SERXPCInternalErrors();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[6] = v8;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1002D01E0;

  return sub_1002C8FAC(a2, v8);
}

uint64_t sub_1002D01E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002D0390;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_1002D0304;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002D0304()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = SESnapshot.canFit(proposedUsage:)();

  *v4 = v5 & 1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D0390()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D046C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = type metadata accessor for SERXPCInternalErrors();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[9] = v10;
  v11 = swift_task_alloc();
  v5[10] = v11;
  *v11 = v5;
  v11[1] = sub_1002D0584;

  return sub_1002CC034(a2, v10);
}

uint64_t sub_1002D0584()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1002D08BC, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[11] = v5;
    *v5 = v4;
    v5[1] = sub_1002D06F8;
    v6 = v2[8];
    v7 = v2[5];
    v8 = v2[3];

    return sub_1002C8FAC(v8, v6);
  }
}

uint64_t sub_1002D06F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002D09A8;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1002D081C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002D081C()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[4];
  v5 = v0[2];
  v6 = SESnapshot.canFit(proposedUsage:)();

  *v5 = v6 & 1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D08BC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v4 + 32))(v5, v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D09A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v4 + 32))(v5, v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D0A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SERXPCInternalErrors();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002D0B58, 0, 0);
}

uint64_t sub_1002D0B58(uint64_t a1, const char *a2)
{
  v3 = sub_1003AF3C4(*(v2 + 24), a2);
  v4 = [v3 type];

  if ((v4 - 1) > 2)
  {
    v11 = swift_task_alloc();
    *(v2 + 72) = v11;
    *v11 = v2;
    v11[1] = sub_1002D0D08;
    v12 = *(v2 + 64);
    v13 = *(v2 + 40);
    v14 = *(v2 + 24);

    return sub_1002C8FAC(v14, v12);
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_allocError();
    *v7 = 0xD000000000000025;
    v7[1] = 0x800000010046B880;
    (*(v6 + 104))(v7, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v5);
    swift_willThrow();
    v8 = *(v2 + 64);

    v9 = *(v2 + 8);

    return v9();
  }
}

uint64_t sub_1002D0D08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002D0EBC;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_1002D0E2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002D0E2C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];
  v5 = SESnapshot.canFit(proposedESimProfilesUsage:)();

  *v4 = v5 & 1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D0EBC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D0F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = type metadata accessor for SERXPCInternalErrors();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[9] = v10;
  v11 = swift_task_alloc();
  v5[10] = v11;
  *v11 = v5;
  v11[1] = sub_1002D10B0;

  return sub_1002CC034(a2, v10);
}

uint64_t sub_1002D10B0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1002D9C64, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[11] = v5;
    *v5 = v4;
    v5[1] = sub_1002D1224;
    v6 = v2[8];
    v7 = v2[5];
    v8 = v2[3];

    return sub_1002C8FAC(v8, v6);
  }
}

uint64_t sub_1002D1224(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1002D9C68;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1002D1348;
  }

  return _swift_task_switch(v7, 0, 0);
}