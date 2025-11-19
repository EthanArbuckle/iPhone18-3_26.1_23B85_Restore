void sub_1000019EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, NSErrorUserInfoKey a11, NSErrorUserInfoKey a12, uint64_t a13, uint64_t a14, const __CFString *a15)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = v16;
    if (v15)
    {
      a13 = v16;
      a10 = NSUnderlyingErrorKey;
      a11 = NSDebugDescriptionErrorKey;
      v18 = [v16 userInfo];
      v19 = v18;
      v20 = &__NSDictionary0__struct;
      if (v18)
      {
        v20 = v18;
      }

      a14 = v20;
      a12 = NSLocalizedFailureReasonErrorKey;
      v21 = [v17 reason];
      v22 = v21;
      v23 = @"???";
      if (v21)
      {
        v23 = v21;
      }

      a15 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&a13 forKeys:&a10 count:3];

      v25 = [v17 name];
      *v15 = [NSError errorWithDomain:v25 code:0 userInfo:v24];
    }

    objc_end_catch();
    JUMPOUT(0x1000019A8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, NSErrorUserInfoKey a11, NSErrorUserInfoKey a12, uint64_t a13, uint64_t a14, const __CFString *a15)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = v16;
    if (v15)
    {
      a13 = v16;
      a10 = NSUnderlyingErrorKey;
      a11 = NSDebugDescriptionErrorKey;
      v18 = [v16 userInfo];
      v19 = v18;
      v20 = &__NSDictionary0__struct;
      if (v18)
      {
        v20 = v18;
      }

      a14 = v20;
      a12 = NSLocalizedFailureReasonErrorKey;
      v21 = [v17 reason];
      v22 = v21;
      v23 = @"???";
      if (v21)
      {
        v23 = v21;
      }

      a15 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&a13 forKeys:&a10 count:3];

      v25 = [v17 name];
      *v15 = [NSError errorWithDomain:v25 code:0 userInfo:v24];
    }

    objc_end_catch();
    JUMPOUT(0x100001B6CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100001CE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100058158);
  sub_100006C6C(v0, qword_100058158);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100001D84()
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v9 = &_swiftEmptyArrayStorage;
  sub_100007BE0(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100001FDC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002024(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002080()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_1000020BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10000211C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 128);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1000021B0;
}

void sub_1000021B0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 128) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100002270(int a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_100002308()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  return swift_unknownObjectRetain();
}

uint64_t sub_100002340(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000023DC()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  return swift_unknownObjectRetain();
}

uint64_t sub_100002414(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000024AC()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000024E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10000257C()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000025B4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(v1 + 168) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100002664@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100002710(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10000276C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000027E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000282C()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd11FileMonitor_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100002870(char a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd11FileMonitor_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100002920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1000067FC(a1, a2, a3);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_100002984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000067FC(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1000029B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000029DC, v2, 0);
}

uint64_t sub_1000029DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 176);
  v4 = swift_unknownObjectRetain();
  v3(v4, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100002A90()
{
  v1 = (*(**(v0 + 16) + 312))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100002B18()
{
  v1 = v0;
  v2 = (*(*(sub_100001FDC(&qword_100056880, &qword_100046FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v34 - v3;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006C6C(v5, qword_100058158);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136446210;
    v10 = URL.absoluteString.getter();
    v12 = sub_10000604C(v10, v11, &v35);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "state = .initial %{public}s", v8, 0xCu);
    sub_100006D94(v9);
  }

  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url);
  v14 = v13;
  [v13 fileSystemRepresentation];
  v15 = v14;
  v16 = open(_:_:)();
  v17 = *(*v1 + 200);
  v18 = v17(v16);
  v19 = *(*v1 + 192);
  if ((v19(v18) & 0x80000000) != 0)
  {
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL);
    v26 = v25;
    [v25 fileSystemRepresentation];
    v27 = v26;
    v28 = open(_:_:)();
    v29 = v17(v28);
    v30 = v19(v29);
    v31 = *v1 + 320;
    if (v30 < 0)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    (*(*v1 + 320))(v32);
    v33 = *(*v1 + 392);

    return v33();
  }

  else
  {
    (*(*v1 + 320))(1);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor);
    v22 = swift_allocObject();
    v22[2] = v1;
    v22[3] = v21;
    v22[4] = v1;
    swift_retain_n();
    sub_10000326C(0, 0, v4, &unk_100045848, v22);

    return (*(*v1 + 392))(v23);
  }
}

uint64_t sub_100002F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100002FA8, a4, 0);
}

uint64_t sub_100002FA8()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_100003140;
    v8 = *(v0 + 24);

    return v11(v8, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100003140()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100007EC4, v3, 0);
}

uint64_t sub_10000326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001FDC(&qword_100056880, &qword_100046FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000071DC(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007E2C(v11, &qword_100056880, &qword_100046FE0);
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

      sub_100001FDC(&unk_100056AE0, &qword_100045830);
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

      sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);

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

  sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100001FDC(&unk_100056AE0, &qword_100045830);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100003570()
{
  v1 = v0;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v47 - 8);
  v2 = *(v52 + 64);
  __chkstk_darwin();
  v50 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin();
  v48 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_source.FileSystemEvent();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006C6C(v10, qword_100058158);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136446210;
    v15 = URL.absoluteString.getter();
    v17 = sub_10000604C(v15, v16, &aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "state = .monitorFile %{public}s", v13, 0xCu);
    sub_100006D94(v14);
  }

  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  v18 = *(*v0 + 192);
  v45[1] = v18();
  sub_100001FDC(&qword_100056AF0, &qword_100045850);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 1) = xmmword_100045570;
  static OS_dispatch_source.FileSystemEvent.attrib.getter();
  static OS_dispatch_source.FileSystemEvent.extend.getter();
  static OS_dispatch_source.FileSystemEvent.write.getter();
  aBlock = v21;
  sub_100007BE0(&qword_100056AF8, &type metadata accessor for OS_dispatch_source.FileSystemEvent);
  sub_100001FDC(&qword_100056B00, &qword_100045858);
  sub_100007C28(&qword_100056B08, &qword_100056B00, &qword_100045858);
  v22 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v1[14];
  v24 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
  v25 = *(v6 + 8);
  v25(v9, v22);
  v26 = (*(*v1 + 224))(v24);
  (v18)(v26);
  static OS_dispatch_source.FileSystemEvent.delete.getter();
  v27 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
  v25(v9, v22);
  v28 = (*(*v1 + 248))(v27);
  v29 = *(*v1 + 216);
  v30 = v29(v28);
  v31 = v47;
  if (v30)
  {
    swift_getObjectType();
    v57 = sub_100007634;
    v58 = v1;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1000040C8;
    v56 = &unk_100051618;
    v32 = _Block_copy(&aBlock);

    v33 = v48;
    static DispatchQoS.unspecified.getter();
    v34 = v50;
    sub_10000410C();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v32);
    swift_unknownObjectRelease();
    (*(v52 + 8))(v34, v31);
    (*(v49 + 8))(v33, v51);
  }

  v35 = *(*v1 + 240);
  v36 = v35(v30);
  if (v36)
  {
    swift_getObjectType();
    v46 = v35;
    v57 = sub_100007654;
    v58 = v1;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1000040C8;
    v56 = &unk_100051640;
    v37 = _Block_copy(&aBlock);

    v38 = v29;
    v39 = v31;
    v40 = v48;
    static DispatchQoS.unspecified.getter();
    v41 = v50;
    sub_10000410C();
    v35 = v46;
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v37);
    swift_unknownObjectRelease();
    v42 = v39;
    v29 = v38;
    (*(v52 + 8))(v41, v42);
    (*(v49 + 8))(v40, v51);
  }

  v43 = v29(v36);
  if (v43)
  {
    swift_getObjectType();
    OS_dispatch_source.resume()();
    v43 = swift_unknownObjectRelease();
  }

  result = v35(v43);
  if (result)
  {
    swift_getObjectType();
    OS_dispatch_source.resume()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100003D0C(uint64_t a1)
{
  v2 = (*(*(sub_100001FDC(&qword_100056880, &qword_100046FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v13 - v3;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006C6C(v5, qword_100058158);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "didObserveChange in File", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a1;
  swift_retain_n();
  sub_10000326C(0, 0, v4, &unk_100045870, v11);
}

uint64_t sub_100003F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100003F30, a4, 0);
}

uint64_t sub_100003F30()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_100003140;
    v8 = *(v0 + 24);

    return v11(v8, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000040C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000410C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007BE0(&unk_100056B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001FDC(&unk_100057C20, &qword_100045860);
  sub_100007C28(&qword_100056B20, &unk_100057C20, &qword_100045860);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000041E4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin();
  v63 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  v5 = *(v62 + 64);
  __chkstk_darwin();
  v61 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_source.FileSystemEvent();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  v9 = __chkstk_darwin();
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v0 + 192);
  if (((v12)(v9) & 0x80000000) == 0)
  {
    v13 = v12();
    close(v13);
  }

  (*(*v0 + 224))(0);
  URL._bridgeToObjectiveC()(&unk_10005B000);
  v15 = v14;
  [v14 fileSystemRepresentation];
  v16 = v15;
  v17 = open(_:_:)();
  (*(*v1 + 200))(v17);
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006C6C(v18, qword_100058158);
  swift_retain_n();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v60 = v2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446466;
    v24 = URL.absoluteString.getter();
    v26 = sub_10000604C(v24, v25, &aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 1026;
    v28 = (v12)(v27);

    *(v22 + 14) = v28;

    _os_log_impl(&_mh_execute_header, v19, v20, "state = .monitorEnclosingFolder %{public}s = %{public}d", v22, 0x12u);
    sub_100006D94(v23);
  }

  else
  {
  }

  if (((v12)(v29) & 0x80000000) != 0)
  {
    (*(*v1 + 320))(3);
    v56 = *(*v1 + 392);

    return v56();
  }

  else
  {
    sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
    v57[3] = v12();
    sub_100001FDC(&qword_100056AF0, &qword_100045850);
    v30 = v58;
    v31 = *(v58 + 72);
    v32 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v33 = swift_allocObject();
    *(v33 + 1) = xmmword_100045580;
    static OS_dispatch_source.FileSystemEvent.extend.getter();
    static OS_dispatch_source.FileSystemEvent.write.getter();
    static OS_dispatch_source.FileSystemEvent.attrib.getter();
    static OS_dispatch_source.FileSystemEvent.link.getter();
    aBlock = v33;
    sub_100007BE0(&qword_100056AF8, &type metadata accessor for OS_dispatch_source.FileSystemEvent);
    sub_100001FDC(&qword_100056B00, &qword_100045858);
    sub_100007C28(&qword_100056B08, &qword_100056B00, &qword_100045858);
    v34 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v1[14];
    v36 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
    v37 = *(v30 + 8);
    v37(v11, v34);
    v38 = (*(*v1 + 272))(v36);
    (v12)(v38);
    static OS_dispatch_source.FileSystemEvent.delete.getter();
    v39 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
    v37(v11, v34);
    v40 = (*(*v1 + 248))(v39);
    v41 = (*v1 + 264);
    v42 = *v41;
    v43 = (*v41)(v40);
    v44 = v60;
    if (v43)
    {
      swift_getObjectType();
      v70 = sub_1000078D8;
      v71 = v1;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_1000040C8;
      v69 = &unk_100051690;
      v45 = _Block_copy(&aBlock);

      v46 = v61;
      static DispatchQoS.unspecified.getter();
      v47 = v63;
      sub_10000410C();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v45);
      swift_unknownObjectRelease();
      (*(v65 + 8))(v47, v44);
      (*(v62 + 8))(v46, v64);
    }

    v48 = *(*v1 + 240);
    v49 = v48(v43);
    if (v49)
    {
      swift_getObjectType();
      v59 = v48;
      v70 = sub_1000078E0;
      v71 = v1;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_1000040C8;
      v69 = &unk_1000516B8;
      v50 = _Block_copy(&aBlock);

      v51 = v44;
      v52 = v61;
      static DispatchQoS.unspecified.getter();
      v53 = v63;
      sub_10000410C();
      v48 = v59;
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v50);
      swift_unknownObjectRelease();
      (*(v65 + 8))(v53, v51);
      (*(v62 + 8))(v52, v64);
    }

    v54 = v42(v49);
    if (v54)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
      v54 = swift_unknownObjectRelease();
    }

    result = v48(v54);
    if (result)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100004B3C(uint64_t a1)
{
  v2 = (*(*(sub_100001FDC(&qword_100056880, &qword_100046FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v22 - v3;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006C6C(v5, qword_100058158);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "didObserveChange in enclosing Folder", v8, 2u);
  }

  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url);
  v10 = v9;
  [v9 fileSystemRepresentation];
  v11 = v10;
  result = open(_:_:)();
  if ((result & 0x80000000) == 0)
  {
    v13 = result;
    v14 = (*(*a1 + 192))();
    close(v14);
    (*(*a1 + 200))(v13);
    (*(*a1 + 320))(1);
    (*(*a1 + 272))(0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "didObserveChange in File", v17, 2u);
    }

    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor);
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v19;
    v20[4] = a1;
    swift_retain_n();
    sub_10000326C(0, 0, v4, &unk_100045880, v20);

    return (*(*a1 + 392))(v21);
  }

  return result;
}

uint64_t sub_100004EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100004F1C, a4, 0);
}

uint64_t sub_100004F1C()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_1000050B4;
    v8 = *(v0 + 24);

    return v11(v8, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000050B4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1000051E0, v3, 0);
}

uint64_t sub_100005208()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  (__chkstk_darwin)();
  v56 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  v5 = *(v55 + 64);
  (__chkstk_darwin)();
  v54 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  (__chkstk_darwin)();
  v51 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  v12 = (__chkstk_darwin)();
  v47 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = v46 - v14;
  v15 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006C6C(v20, qword_100058158);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    v25 = URL.absoluteString.getter();
    v27 = sub_10000604C(v25, v26, aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "state = .periodicallyCheckForEnclosingFolder %{public}s", v23, 0xCu);
    sub_100006D94(v24);
  }

  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  v28 = *(v0 + 112);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100007BE0(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100001FDC(&qword_100056B30, &unk_100045BF0);
  sub_100007C28(&qword_100056B38, &qword_100056B30, &unk_100045BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v16 + 8))(v19, v15);
  v30 = (*(*v1 + 296))(v29);
  v31 = (*v1 + 288);
  v32 = *v31;
  if ((*v31)(v30))
  {
    swift_getObjectType();
    v33 = v47;
    static DispatchTime.now()();
    v46[0] = v32;
    v34 = v48;
    + infix(_:_:)();
    v46[1] = v31;
    v35 = v50;
    v36 = *(v49 + 8);
    v36(v33, v50);
    v38 = v51;
    v37 = v52;
    *v51 = 0;
    v39 = v53;
    (*(v37 + 104))(v38, enum case for DispatchTimeInterval.nanoseconds(_:), v53);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v38, v39);
    v40 = v34;
    v32 = v46[0];
    v36(v40, v35);
  }

  v41 = v32();
  if (v41)
  {
    swift_getObjectType();
    aBlock[4] = sub_100007C7C;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000040C8;
    aBlock[3] = &unk_100051708;
    v42 = _Block_copy(aBlock);

    v43 = v54;
    static DispatchQoS.unspecified.getter();
    v44 = v56;
    sub_10000410C();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v42);
    swift_unknownObjectRelease();
    (*(v58 + 8))(v44, v59);
    (*(v55 + 8))(v43, v57);
  }

  result = (v32)(v41);
  if (result)
  {
    swift_getObjectType();
    OS_dispatch_source.activate()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100005958()
{
  v1 = (*(*v0 + 312))();
  if (v1 > 1)
  {
    if (v1 == 2)
    {

      return sub_1000041E4();
    }

    else
    {

      return sub_100005208();
    }
  }

  else if (v1)
  {

    return sub_100003570();
  }

  else
  {

    return sub_100002B18();
  }
}

uint64_t sub_100005A08()
{
  v1 = v0;
  v2 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v21 - v5;
  v7 = (*(*v0 + 216))(v4);
  if (v7)
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v7 = swift_unknownObjectRelease();
  }

  v8 = (*(*v0 + 240))(v7);
  if (v8)
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v8 = swift_unknownObjectRelease();
  }

  if ((*(*v0 + 264))(v8))
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006C6C(v9, qword_100058158);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    type metadata accessor for URL();
    sub_100007BE0(&qword_100056890, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10000604C(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Stopped Monitoring file: %{public}s", v12, 0xCu);
    sub_100006D94(v13);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor);
  v19 = swift_allocObject();
  v19[2] = v1;
  v19[3] = v18;
  v19[4] = v1;
  swift_retain_n();
  sub_10000326C(0, 0, v6, &unk_1000455B8, v19);
}

uint64_t sub_100005D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100005DB4, a4, 0);
}

uint64_t sub_100005DB4()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_100003140;
    v8 = *(v0 + 24);

    return v11(v8, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100005F4C()
{
  sub_100006DE0(v0 + 120);
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = *(v0 + 152);
  swift_unknownObjectRelease();
  v3 = *(v0 + 160);
  swift_unknownObjectRelease();
  v4 = *(v0 + 168);
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url, v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100006014()
{
  sub_100005F4C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000604C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006118(v11, 0, 0, 1, a1, a2);
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
    sub_10000717C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D94(v11);
  return v7;
}

unint64_t sub_100006118(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006224(a5, a6);
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

char *sub_100006224(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006270(a1, a2);
  sub_1000063A0(&off_1000513F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006270(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000648C(v5, 0);
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
        v7 = sub_10000648C(v10, 0);
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

uint64_t sub_1000063A0(uint64_t result)
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

  result = sub_100006500(result, v12, 1, v3);
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

void *sub_10000648C(uint64_t a1, uint64_t a2)
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

  sub_100001FDC(&qword_100056E90, &unk_1000468B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006500(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FDC(&qword_100056E90, &unk_1000468B0);
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

uint64_t sub_1000065F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000066E8;

  return v6(v2 + 32);
}

uint64_t sub_1000066E8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000067FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v28 = a1;
  v4 = (*(*(sub_100001FDC(&unk_100056B40, &unk_100045890) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v29 = v23 - v5;
  v6 = type metadata accessor for URL();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin();
  v27 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v14 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  swift_defaultActor_initialize();
  v15 = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  v23[1] = &unk_1000436E0;
  v23[2] = v15;
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_100007BE0(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  *(v3 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 136) = -1;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_state) = 0;
  v16 = v25;
  v17 = v26;
  v18 = *(v25 + 16);
  v19 = v28;
  v18(v3 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url, v28, v26);
  swift_beginAccess();
  *(v3 + 128) = v30;
  swift_unknownObjectWeakAssign();
  v20 = v29;
  v18(v29, v19, v17);
  (*(v16 + 56))(v20, 0, 1, v17);
  v21 = v27;
  URL.init(fileURLWithPath:relativeTo:)();
  (*(v16 + 8))(v19, v17);
  sub_100007E2C(v20, &unk_100056B40, &unk_100045890);
  (*(v16 + 32))(v3 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL, v21, v17);
  return v3;
}

uint64_t sub_100006C6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for FileMonitor()
{
  result = qword_100058370;
  if (!qword_100058370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006CF4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EAC;

  return sub_100005D94(a1, v5, v6, v4);
}

uint64_t sub_100006D94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100006E0C()
{
  result = qword_100056898;
  if (!qword_100056898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056898);
  }

  return result;
}

__n128 sub_100006E6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100006EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100006F30()
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

uint64_t getEnumTagSinglePayload for FileMonitor.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FileMonitor.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000717C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000071DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000724C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007284(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007EAC;

  return sub_1000065F4(a1, v5);
}

uint64_t sub_10000733C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000073F4;

  return sub_1000065F4(a1, v5);
}

uint64_t sub_1000073F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_1000074E8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000754C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EAC;

  return sub_100002F88(a1, v5, v6, v4);
}

uint64_t sub_1000075EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000763C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007654()
{
  v1 = v0;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_100058158);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "monitored file was deleted", v5, 2u);
  }

  if ((*(*v1 + 216))())
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  (*(*v1 + 200))(0xFFFFFFFFLL);
  (*(*v1 + 320))(2);
  (*(*v1 + 248))(0);
  v6 = *(*v1 + 392);

  return v6();
}

uint64_t sub_100007838(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EAC;

  return sub_100003F10(a1, v5, v6, v4);
}

uint64_t sub_1000078E0()
{
  v1 = v0;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_100058158);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "monitored folder was deleted", v5, 2u);
  }

  v6 = (*(*v1 + 264))();
  if (v6)
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v6 = swift_unknownObjectRelease();
  }

  v7 = (*(*v1 + 192))(v6);
  close(v7);
  (*(*v1 + 200))(0xFFFFFFFFLL);
  (*(*v1 + 320))(3);
  (*(*v1 + 248))(0);
  v8 = *(*v1 + 392);

  return v8();
}

uint64_t sub_100007B00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007B40(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000073F4;

  return sub_100004EFC(a1, v5, v6, v4);
}

uint64_t sub_100007BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007C28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007C7C()
{
  v1 = v0;
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL);
  v3 = v2;
  [v2 fileSystemRepresentation];
  v4 = v3;
  v5 = open(_:_:)();
  v6 = (*(*v1 + 200))(v5);
  result = (*(*v1 + 192))(v6);
  if ((result & 0x80000000) == 0)
  {
    if ((*(*v1 + 288))())
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    (*(*v1 + 296))(0);
    (*(*v1 + 320))(2);
    v8 = *(*v1 + 392);

    return v8();
  }

  return result;
}

uint64_t sub_100007E2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007F28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100007F7C(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v2 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  sub_100008014(a1, a2, sub_100007F28);
  v6 = sub_10002CA28(a1, v3);
  sub_100008014(a1, a2, sub_10000803C);
  return v6;
}

uint64_t sub_100008014(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v3 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return a3(a1, v4);
}

uint64_t sub_10000803C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008090(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  v3 = 0x676F6C5F736FLL;
  v4 = 0x725F6D617374656ALL;
  if (v2 != 2)
  {
    v4 = 0x65725F63696E6170;
  }

  if (v2)
  {
    v3 = 0x65725F6873617263;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100008118()
{
  v1 = (*(v0 + 8) >> 60) & 3;
  v2 = 0x676F6C5F736FLL;
  v3 = 0x725F6D617374656ALL;
  if (v1 != 2)
  {
    v3 = 0x65725F63696E6170;
  }

  if (v1)
  {
    v2 = 0x65725F6873617263;
  }

  if (((*(v0 + 8) >> 60) & 3u) <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000081A4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000081CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000081D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000081F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100008254()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100058408);
  sub_100006C6C(v0, qword_100058408);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000082E0(char **a1)
{
  v221 = a1;
  v215 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v217 = *(v215 - 8);
  v1 = *(v217 + 64);
  v2 = __chkstk_darwin(v215);
  v214 = &v182 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v222 = &v182 - v5;
  v6 = __chkstk_darwin(v4);
  v213 = &v182 - v7;
  __chkstk_darwin(v6);
  v185 = &v182 - v8;
  v9 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *&v196 = &v182 - v11;
  v12 = sub_100001FDC(&unk_100056C20, &unk_100045BC8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v199 = &v182 - v14;
  v198 = type metadata accessor for URLResourceValues();
  v216 = *(v198 - 1);
  v15 = v216[8];
  __chkstk_darwin(v198);
  v205 = (&v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v212 = &v182 - v19;
  v230 = type metadata accessor for URL();
  v192 = *(v230 - 8);
  v20 = *(v192 + 8);
  v21 = __chkstk_darwin(v230);
  v23 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v182 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v182 - v28;
  v30 = __chkstk_darwin(v27);
  v228 = &v182 - v31;
  v32 = __chkstk_darwin(v30);
  v211 = &v182 - v33;
  __chkstk_darwin(v32);
  v224 = &v182 - v34;
  v189 = type metadata accessor for NSFastEnumerationIterator();
  v188 = *(v189 - 8);
  v35 = *(v188 + 64);
  __chkstk_darwin(v189);
  v227 = &v182 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  v39 = *(v38 + 8);
  v40 = __chkstk_darwin(v37);
  v203 = &v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = (&v182 - v43);
  v45 = __chkstk_darwin(v42);
  v47 = &v182 - v46;
  v48 = __chkstk_darwin(v45);
  v190 = &v182 - v49;
  v50 = __chkstk_darwin(v48);
  v186 = &v182 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v182 - v53;
  __chkstk_darwin(v52);
  v56 = &v182 - v55;
  v218 = [objc_opt_self() defaultManager];
  sub_100001FDC(&qword_100056C30, &qword_100045BD8);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100045B50;
  *(v57 + 32) = NSURLCreationDateKey;
  v58 = NSURLCreationDateKey;
  static Date.now.getter();
  v204 = v56;
  Date.addingTimeInterval(_:)();
  v191 = v38;
  v59 = *(v38 + 1);
  v229 = v37;
  v225 = v38 + 8;
  v223 = v59;
  (v59)(v54, v37);
  if (qword_100058400 != -1)
  {
LABEL_65:
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v219 = sub_100006C6C(v60, qword_100058408);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Requested to prune crashes", v63, 2u);
  }

  v64 = v221;
  v65 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v66 = v205;
  if (v65)
  {
    v187 = v65;
    NSEnumerator.makeIterator()();
    NSFastEnumerationIterator.next()();
    v202 = v23;
    v201 = v29;
    v226 = v47;
    v200 = v44;
    if (!v233)
    {
      v221 = 0;
      v68 = &_swiftEmptyArrayStorage;
      goto LABEL_35;
    }

    v221 = 0;
    v220 = v192 + 56;
    v210 = (v192 + 32);
    v209 = v216 + 7;
    v195 = v216 + 4;
    v194 = (v191 + 48);
    v193 = v216 + 1;
    v207 = (v192 + 16);
    v208 = v192 + 8;
    v184 = (v191 + 32);
    v183 = (v191 + 16);
    v68 = &_swiftEmptyArrayStorage;
    *&v67 = 136446210;
    v197 = v67;
    v69 = v199;
    v70 = v198;
    v71 = v212;
    v72 = v224;
    v206 = v57;
    while (2)
    {
      v216 = v68;
      while (1)
      {
        v73 = swift_dynamicCast();
        v74 = *v220;
        if (v73)
        {
          break;
        }

        v74(v71, 1, 1, v230);
        sub_100007E2C(v71, &unk_100056B40, &unk_100045890);
LABEL_9:
        NSFastEnumerationIterator.next()();
        if (!v233)
        {
          v68 = v216;
          goto LABEL_35;
        }
      }

      v75 = v230;
      v74(v71, 0, 1, v230);
      (*v210)(v72, v71, v75);

      sub_1000108D0(v76);

      v77 = v221;
      URL.resourceValues(forKeys:)();
      if (v77)
      {

        (*v209)(v69, 1, 1, v70);
        sub_100007E2C(v69, &unk_100056C20, &unk_100045BC8);
        v221 = 0;
LABEL_15:
        v72 = v224;
        v79 = v211;
        v80 = v230;
        (*v207)(v211, v224, v230);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = v79;
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v231 = v85;
          *v84 = v197;
          v86 = URL.path(percentEncoded:)(1);
          v87 = *v208;
          (*v208)(v83, v80);
          v88 = sub_10000604C(v86._countAndFlagsBits, v86._object, &v231);
          v66 = v205;

          *(v84 + 4) = v88;
          _os_log_impl(&_mh_execute_header, v81, v82, "Failed to fetch creation date for crash at path %{public}s", v84, 0xCu);
          sub_100006D94(v85);
          v69 = v199;

          v87(v224, v80);
          v72 = v224;
          v70 = v198;
        }

        else
        {

          v89 = *v208;
          (*v208)(v79, v80);
          v89(v72, v80);
        }

        v47 = v226;
        v71 = v212;
        v57 = v206;
        goto LABEL_9;
      }

      v221 = 0;

      (*v209)(v69, 0, 1, v70);
      (*v195)(v66, v69, v70);
      v78 = v196;
      URLResourceValues.creationDate.getter();
      if ((*v194)(v78, 1, v229) == 1)
      {
        (*v193)(v66, v70);
        sub_100007E2C(v78, &qword_100056C18, &qword_100045BC0);
        goto LABEL_15;
      }

      (*v184)(v186, v78, v229);
      v72 = v224;
      if (URL.pathExtension.getter() == 7565417 && v90 == 0xE300000000000000)
      {

        goto LABEL_23;
      }

      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v91)
      {
LABEL_23:
        v92 = *(v215 + 48);
        v93 = v185;
        (*v183)(v185, v186, v229);
        (*v207)((v93 + v92), v72, v230);
        v94 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10000DCF4(0, v94[2] + 1, 1, v94);
        }

        v216 = v94;
        v96 = v94[2];
        v95 = v94[3];
        if (v96 >= v95 >> 1)
        {
          v216 = sub_10000DCF4(v95 > 1, v96 + 1, 1, v216);
        }

        (v223)(v186, v229);
        (*v193)(v66, v70);
        (*v208)(v72, v230);
        v97 = v216;
        v216[2] = v96 + 1;
        sub_10001098C(v185, v97 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v96);
      }

      else
      {
        (v223)(v186, v229);
        (*v193)(v66, v70);
        (*v208)(v72, v230);
      }

      NSFastEnumerationIterator.next()();
      v71 = v212;
      v68 = v216;
      if (v233)
      {
        continue;
      }

      break;
    }

LABEL_35:
    (*(v188 + 8))(v227, v189);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_100010594(v68);
    }

    v29 = v192;
    v23 = v191;
    v105 = v190;
    v106 = v68[2];
    v212 = v68 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
    v232[0] = v212;
    v232[1] = v106;
    sub_10000E2A0(v232);
    v107 = v68[2];
    if (v107 <= 0x64)
    {
      v107 = 100;
    }

    v108 = (v107 - 100);
    v109 = *(v23 + 2);
    v211 = v23 + 16;
    v210 = v109;
    (v109)(v105, v204, v229);
    v44 = v68;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v227 = v108;
      v113 = v112;
      v114 = swift_slowAlloc();
      v232[0] = v114;
      *v113 = 136446978;
      sub_100011094(&qword_100056C38, &type metadata accessor for Date);
      v115 = v229;
      v116 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v117;
      v118 = v115;
      v47 = v226;
      (v223)(v105, v118);
      v119 = sub_10000604C(v116, v57, v232);

      *(v113 + 4) = v119;
      *(v113 + 12) = 2048;
      *(v113 + 14) = 100;
      *(v113 + 22) = 2048;
      *(v113 + 24) = v44[2];
      *(v113 + 32) = 2048;
      v120 = v227;
      *(v113 + 34) = v227;
      _os_log_impl(&_mh_execute_header, v110, v111, "Pruning crashes created before %{public}s or more than max crashes (%ld). Found %ld; deleting at least %ld", v113, 0x2Au);
      sub_100006D94(v114);
      v29 = v192;

      v26 = v120;
    }

    else
    {

      (v223)(v105, v229);
      v26 = v108;
    }

    v209 = v44[2];
    if (v209)
    {
      v208 = *(v215 + 48);
      v207 = (v23 + 32);
      v206 = (v29 + 32);
      v221 = v29 + 8;
      v205 = (v29 + 16);

      v121 = 0;
      *&v122 = 136446466;
      v197 = v122;
      *&v122 = 136446722;
      v196 = v122;
      v216 = v44;
      while (1)
      {
        if (v121 >= v44[2])
        {
          __break(1u);
          goto LABEL_65;
        }

        v128 = *(v217 + 72);
        v220 = v121;
        v129 = v213;
        sub_10001102C(&v212[v128 * v121], v213, &qword_100056C10, &qword_100045BB8);
        v130 = v215;
        v131 = *(v215 + 48);
        v132 = *v207;
        v133 = v47;
        v134 = v222;
        (*v207)(v222, v129, v229);
        v227 = v26;
        v135 = *v206;
        v23 = v230;
        (*v206)(v134 + v131, &v208[v129], v230);
        v136 = v214;
        sub_10001102C(v134, v214, &qword_100056C10, &qword_100045BB8);
        v137 = *(v130 + 48);
        v138 = v133;
        v139 = v229;
        v132(v138, v136, v229);
        v224 = *v221;
        (v224)(v136 + v137, v23);
        sub_10001102C(v134, v136, &qword_100056C10, &qword_100045BB8);
        v135(v228, (v136 + *(v130 + 48)), v23);
        v140 = v227;
        (v223)(v136, v139);
        if (!v140)
        {
          sub_100011094(&qword_100056C48, &type metadata accessor for Date);
          if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
          {

            (v224)(v228, v230);
            v180 = v229;
            v181 = v223;
            (v223)(v226, v229);
            sub_100007E2C(v222, &qword_100056C10, &qword_100045BB8);
            v181(v204, v180);
          }
        }

        URL._bridgeToObjectiveC()(v141);
        v143 = v142;
        v232[0] = 0;
        v144 = [v218 removeItemAtURL:v142 error:v232];

        v145 = v232[0];
        if (v144)
        {
          v146 = v201;
          (*v205)(v201, v228, v230);
          v147 = v200;
          v47 = v226;
          (v210)(v200, v226, v229);
          v148 = v145;
          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = v146;
            v29 = swift_slowAlloc();
            v232[0] = v29;
            *v151 = v197;
            v153 = URL.path(percentEncoded:)(1);
            v23 = v221;
            (v224)(v152, v230);
            v154 = sub_10000604C(v153._countAndFlagsBits, v153._object, v232);

            *(v151 + 4) = v154;
            *(v151 + 12) = 2082;
            sub_100011094(&qword_100056C38, &type metadata accessor for Date);
            v155 = v229;
            v156 = dispatch thunk of CustomStringConvertible.description.getter();
            v57 = v157;
            v158 = v223;
            (v223)(v147, v155);
            v159 = sub_10000604C(v156, v57, v232);

            *(v151 + 14) = v159;
            _os_log_impl(&_mh_execute_header, v149, v150, "Removed crash at path %{public}s of age %{public}s", v151, 0x16u);
            swift_arrayDestroy();

            (v224)(v228, v230);
            v158(v226, v155);
            v47 = v226;
          }

          else
          {

            v123 = v229;
            v124 = v223;
            (v223)(v147, v229);
            v125 = v146;
            v126 = v230;
            v29 = v221;
            v57 = v224;
            (v224)(v125, v230);
            (v57)(v228, v126);
            v124(v47, v123);
          }
        }

        else
        {
          v160 = v232[0];
          _convertNSErrorToError(_:)();
          v23 = v228;
          v161 = v229;
          v162 = v226;

          swift_willThrow();
          v163 = v202;
          (*v205)(v202, v23, v230);
          v164 = v203;
          (v210)(v203, v162, v161);
          swift_errorRetain();
          v165 = Logger.logObject.getter();
          v166 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v165, v166))
          {

            v176 = v223;
            (v223)(v164, v161);
            v177 = v163;
            v178 = v230;
            v29 = v221;
            v57 = v224;
            (v224)(v177, v230);
            (v57)(v23, v178);
            v176(v162, v161);
            sub_100007E2C(v222, &qword_100056C10, &qword_100045BB8);
            v47 = v162;
            goto LABEL_46;
          }

          v167 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          v232[0] = v199;
          *v167 = v196;
          v168 = URL.path(percentEncoded:)(1);
          v169 = v163;
          v29 = v221;
          (v224)(v169, v230);
          v170 = sub_10000604C(v168._countAndFlagsBits, v168._object, v232);

          *(v167 + 4) = v170;
          *(v167 + 12) = 2082;
          sub_100011094(&qword_100056C38, &type metadata accessor for Date);
          v171 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = v172;
          v23 = v223;
          (v223)(v164, v161);
          v173 = sub_10000604C(v171, v57, v232);

          *(v167 + 14) = v173;
          *(v167 + 22) = 2114;
          swift_errorRetain();
          v174 = _swift_stdlib_bridgeErrorToNSError();
          *(v167 + 24) = v174;
          v175 = v198;
          *v198 = v174;
          _os_log_impl(&_mh_execute_header, v165, v166, "Failed to delete crash at path %{public}s of age %{public}s with error: %{public}@", v167, 0x20u);
          sub_100007E2C(v175, &qword_100056C40, &unk_100045BE0);

          swift_arrayDestroy();

          (v224)(v228, v230);
          v47 = v226;
          (v23)(v226, v161);
        }

        sub_100007E2C(v222, &qword_100056C10, &qword_100045BB8);
LABEL_46:
        v44 = v216;
        v121 = (v220 + 1);
        v127 = v227;
        if (v227 <= 1)
        {
          v127 = 1;
        }

        v26 = (v127 - 1);
        if (v209 == v121)
        {

          break;
        }
      }
    }

    (v223)(v204, v229);
  }

  else
  {

    v98 = v192;
    (*(v192 + 2))(v26, v64, v230);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v232[0] = v102;
      *v101 = 136446210;
      v103 = URL.path(percentEncoded:)(1);
      v98[1](v26, v230);
      v104 = sub_10000604C(v103._countAndFlagsBits, v103._object, v232);

      *(v101 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v99, v100, "Failed to create enumerator at crash dir: %{public}s", v101, 0xCu);
      sub_100006D94(v102);
    }

    else
    {

      v98[1](v26, v230);
    }

    return (v223)(v204, v229);
  }
}

uint64_t sub_100009FE0(double a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_10000A018(double a1)
{
  result = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = a1;
  return result;
}

void sub_10000A028()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v95 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  __chkstk_darwin(v5);
  v91 = (&v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for DispatchTime();
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  v9 = __chkstk_darwin(v90);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v80 - v11;
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  __chkstk_darwin(v12);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  __chkstk_darwin(v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v94 = type metadata accessor for DispatchQoS();
  v86 = *(v94 - 8);
  v21 = *(v86 + 64);
  __chkstk_darwin(v94);
  v101 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL.DirectoryHint();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v80 - v30;
  v32 = type metadata accessor for URL();
  isa = v32[-1].isa;
  v104 = v32;
  v33 = *(isa + 8);
  v34 = __chkstk_darwin(v32);
  v85 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v35;
  __chkstk_darwin(v34);
  v102 = &v80 - v36;
  if ((sub_10002BEAC() & 1) == 0)
  {
    if (qword_100058400 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100006C6C(v74, qword_100058408);
    v104 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v104, v75))
    {
      goto LABEL_23;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Not configured to own crash deletion, so not setting deletion timer";
    goto LABEL_22;
  }

  v83 = v2;
  v81 = v1;
  v82 = v0;
  sub_10002C098();
  if (v37)
  {
    (*(isa + 7))(v31, 1, 1, v104);
    (*(v24 + 104))(v27, enum case for URL.DirectoryHint.inferFromPath(_:), v23);
    URL.init(filePath:directoryHint:relativeTo:)();
    v80 = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100011094(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100001FDC(&qword_100056870, &qword_100045590);
    sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v96 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v97);
    v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
    aBlock = &_swiftEmptyArrayStorage;
    sub_100011094(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags);
    sub_100001FDC(&qword_100056B30, &unk_100045BF0);
    sub_100007C28(&qword_100056B38, &qword_100056B30, &unk_100045BF0);
    v39 = v98;
    v40 = v100;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v99 + 8))(v39, v40);
    v42 = v82;
    v43 = *(v82 + 24);
    *(v82 + 24) = v41;
    swift_unknownObjectRelease();
    if (qword_100058400 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006C6C(v44, qword_100058408);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = *(v42 + 16);
      _os_log_impl(&_mh_execute_header, v45, v46, "Scheduling crash deletion for every %f seconds", v47, 0xCu);
    }

    if (!*(v42 + 24))
    {
      goto LABEL_16;
    }

    v48 = *(v42 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v49 = v87;
    static DispatchTime.now()();
    v50 = *(v42 + 16);
    v100 = v38;
    v51 = v88;
    + infix(_:_:)();
    v52 = *(v89 + 8);
    v53 = v90;
    v52(v49, v90);
    v54 = v91;
    *v91 = 0;
    v56 = v92;
    v55 = v93;
    (*(v92 + 104))(v54, enum case for DispatchTimeInterval.nanoseconds(_:), v93);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    (*(v56 + 8))(v54, v55);
    v57 = v51;
    v38 = v100;
    v52(v57, v53);
    if (!*(v42 + 24))
    {
      goto LABEL_16;
    }

    v58 = *(v42 + 24);
    swift_getObjectType();
    v59 = isa;
    v60 = v85;
    v61 = v104;
    (*(isa + 2))(v85, v102, v104);
    v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v63 = swift_allocObject();
    (*(v59 + 4))(v63 + v62, v60, v61);
    v109 = sub_100010A84;
    v110 = v63;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_1000040C8;
    v108 = &unk_100051810;
    v64 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v65 = v101;
    static DispatchQoS.unspecified.getter();
    v66 = v95;
    sub_10000AEDC();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v64);
    swift_unknownObjectRelease();
    v67 = *(v83 + 8);
    v83 += 8;
    v67(v66, v81);
    v68 = *(v86 + 8);
    v68(v65, v94);

    if (!*(v42 + 24))
    {
      goto LABEL_16;
    }

    v69 = *(v42 + 24);
    swift_getObjectType();
    v109 = sub_10000ADF4;
    v110 = 0;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_1000040C8;
    v108 = &unk_100051838;
    v70 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v71 = v101;
    static DispatchQoS.unspecified.getter();
    v72 = v95;
    sub_10000AEDC();
    OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
    _Block_release(v70);
    swift_unknownObjectRelease();
    v67(v72, v81);
    v68(v71, v94);
    if (*(v42 + 24))
    {
      v73 = *(v42 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.activate()();

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_16:
    }

    (*(isa + 1))(v102, v104);
    return;
  }

  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_100006C6C(v78, qword_100058408);
  v104 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v104, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Failed to get crash dir from OSAnalytics, not setting deletion timer";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v104, v75, v77, v76, 2u);
  }

LABEL_23:
  v79 = v104;
}

void sub_10000ADF4()
{
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100058408);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Crash deletion timer source cancelled", v2, 2u);
  }
}

uint64_t sub_10000AEDC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100011094(&unk_100056B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001FDC(&unk_100057C20, &qword_100045860);
  sub_100007C28(&qword_100056B20, &unk_100057C20, &qword_100045860);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000AFB4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10000AFD4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000B00C()
{
  v1 = v0 + OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_10000B05C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10000B0C8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10000B168;
}

void sub_10000B168(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10000B200(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v70 = &v65 - v6;
  v7 = type metadata accessor for Date();
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = a1;
  v74 = &v65 - v15;
  URL.init(fileURLWithPath:)();
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006C6C(v16, qword_100058408);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v72 = v7;
  if (v19)
  {
    v20 = a2;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v77 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_10000604C(v73, v20, &v77);
    _os_log_impl(&_mh_execute_header, v17, v18, "Formatting crash report at path: %{public}s", v21, 0xCu);
    sub_100006D94(v22);

    a2 = v20;
  }

  type metadata accessor for CrashReport();
  (*(v75 + 16))(v14, v74, v76);
  if (!IPSReport.__allocating_init(reportPath:)())
  {
    v26 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v29, "Failed to initialize crash report", v30, 2u);
    }

    goto LABEL_11;
  }

  dispatch thunk of CrashReport.prepareReportForSubmission()();

  v23 = dispatch thunk of IPSReport.reportData.getter();
  v25 = v24;

  if (v25 >> 60 == 15)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_15;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to redact crash report", v28, 2u);

LABEL_11:

LABEL_15:
    (*(v75 + 8))(v74, v76);
    return 0;
  }

  v31 = sub_10002CD18(v23, v25);
  v68 = v25;
  if (v31)
  {
    v32 = v31;
    goto LABEL_32;
  }

  if (qword_100058400 != -1)
  {
    swift_once();
  }

  sub_100006C6C(v16, qword_100058408);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  v36 = os_log_type_enabled(v34, v35);
  v66 = a2;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v77 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10000604C(v73, a2, &v77);
    _os_log_impl(&_mh_execute_header, v34, v35, "Failed to decode crash report. Sending failure breadcrumb for path %s", v37, 0xCu);
    sub_100006D94(v38);

    v25 = v68;
  }

  if ((sub_10002ECA4() & 1) == 0)
  {
    v42 = sub_100010724(v23, v25);
    if (!v43)
    {
      v81 = v23;
      v82 = v25;
      sub_100007F28(v23, v25);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50(v79, &v77);
        sub_100010C68(&v77, v78);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_100010C68(&v77, v78);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v41 = *(&v79[0] + 1);
          v40 = *&v79[0];
          sub_100006D94(&v77);
          goto LABEL_31;
        }

        sub_100006D94(&v77);
      }

      else
      {
        v80 = 0;
        memset(v79, 0, sizeof(v79));
        sub_100007E2C(v79, &qword_100056C90, &qword_1000471D0);
      }

      v42 = sub_10000FDA4(v23, v25);
    }

    v40 = v42;
    v41 = v43;
    goto LABEL_31;
  }

  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  *&v77 = 0xD00000000000002ELL;
  *(&v77 + 1) = 0x8000000100043920;
  v39._countAndFlagsBits = v73;
  v39._object = v66;
  String.append(_:)(v39);
  v41 = *(&v77 + 1);
  v40 = v77;
LABEL_31:
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7065526873617263;
  v45 = inited + 32;
  *(inited + 16) = xmmword_100045B50;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEB0000000074726FLL;
  *(inited + 48) = v40;
  *(inited + 56) = v41;
  v32 = sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(v45, &unk_100056C80, &unk_1000468A0);
  a2 = v66;
LABEL_32:
  v46 = sub_10002BE40();
  v67 = v23;
  v48 = a2;
  if (v47)
  {
    v78 = &type metadata for String;
    *&v77 = v46;
    *(&v77 + 1) = v47;
    sub_100010C40(&v77, v79);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v32;
    sub_100010234(v79, 0x6C6169726573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v32 = v81;
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_100045B60;
  *(v50 + 32) = 0x746E657665;
  *(v50 + 40) = 0xE500000000000000;
  v51 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v50 + 48) = v32;
  *(v50 + 72) = v51;
  *(v50 + 80) = 0x656372756F73;
  *(v50 + 120) = &type metadata for String;
  v52 = v73;
  *(v50 + 88) = 0xE600000000000000;
  *(v50 + 96) = v52;
  *(v50 + 104) = v48;

  v53 = sub_100010AFC(v50);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  v54 = v70;
  sub_10002D128(v52, v48, v70);
  v56 = v71;
  v55 = v72;
  if ((*(v71 + 48))(v54, 1, v72) == 1)
  {
    sub_100007E2C(v54, &qword_100056C18, &qword_100045BC0);
  }

  else
  {
    v57 = v69;
    (*(v56 + 32))(v69, v54, v55);
    Date.timeIntervalSince1970.getter();
    v78 = &type metadata for Double;
    *&v77 = v58;
    sub_100010C40(&v77, v79);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v53;
    sub_100010234(v79, 1701669236, 0xE400000000000000, v59);
    (*(v56 + 8))(v57, v55);
  }

  v60 = v67;
  v61 = v68;
  v62 = sub_10002C584();
  v64 = v63;
  sub_100010C2C(v60, v61);

  (*(v75 + 8))(v74, v76);
  if (v64 >> 60 == 15)
  {
    return 0;
  }

  return v62;
}

uint64_t sub_10000BC14(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v67 = &v61 - v6;
  v7 = type metadata accessor for Date();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100006C6C(v15, qword_100058408);

  v70 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = v11;
    v21 = v10;
    v22 = swift_slowAlloc();
    *&v75 = v22;
    *v19 = 136446210;
    *(v19 + 4) = sub_10000604C(a1, a2, &v75);
    _os_log_impl(&_mh_execute_header, v17, v18, "Formatting jetsam report at path: %{public}s", v19, 0xCu);
    sub_100006D94(v22);
    v10 = v21;
    v11 = v20;
  }

  URL.init(fileURLWithPath:)();
  v23 = Data.init(contentsOf:options:)();
  v64 = v24;
  v65 = v23;
  v25 = sub_10002CD18(v23, v24);
  if (v25)
  {
    v26 = v25;
    v27 = sub_10002BE40();
    if (!v28)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v70 = v11;
    v47 = v10;
    v48 = v46;
    *&v75 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_10000604C(a1, a2, &v75);
    _os_log_impl(&_mh_execute_header, v43, v44, "Failed to decode jetsam report. Sending raw data for path %{public}s", v45, 0xCu);
    sub_100006D94(v48);
    v10 = v47;
    v11 = v70;
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = 0x65526D617374656ALL;
  v62 = inited + 32;
  v63 = inited;
  *(inited + 40) = 0xEC00000074726F70;
  v51 = v64;
  v50 = v65;
  sub_100007F28(v65, v64);
  v52 = sub_100010724(v50, v51);
  if (v53)
  {
    v54 = v53;
    v55 = v51;
    v56 = v52;
    sub_10000803C(v50, v55);
    goto LABEL_24;
  }

  v73 = v50;
  v74 = v51;
  sub_100007F28(v50, v51);
  sub_100001FDC(&unk_1000578A0, &unk_100045C10);
  if (swift_dynamicCast())
  {
    v70 = v10;
    sub_100010C50(v71, &v75);
    sub_100010C68(&v75, v76);
    if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
    {
      sub_10000803C(v65, v64);
      sub_100010C68(&v75, v76);
      dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
      v54 = *(&v71[0] + 1);
      v56 = *&v71[0];
      sub_100006D94(&v75);
      v10 = v70;
      goto LABEL_24;
    }

    sub_100006D94(&v75);
    v10 = v70;
    v51 = v64;
    v50 = v65;
  }

  else
  {
    v72 = 0;
    memset(v71, 0, sizeof(v71));
    sub_100007E2C(v71, &qword_100056C90, &qword_1000471D0);
  }

  v57 = sub_10000FDA4(v50, v51);
  v54 = v58;
  v59 = v51;
  v56 = v57;
  sub_10000803C(v50, v59);
LABEL_24:
  v60 = v63;
  *(v63 + 72) = &type metadata for String;
  *(v60 + 48) = v56;
  *(v60 + 56) = v54;
  v26 = sub_100010AFC(v60);
  swift_setDeallocating();
  sub_100007E2C(v62, &unk_100056C80, &unk_1000468A0);
  v27 = sub_10002BE40();
  if (v28)
  {
LABEL_7:
    v76 = &type metadata for String;
    *&v75 = v27;
    *(&v75 + 1) = v28;
    sub_100010C40(&v75, v71);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v26;
    sub_100010234(v71, 0x6C6169726573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v26 = v73;
  }

LABEL_8:
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_100045B60;
  *(v30 + 32) = 0x746E657665;
  *(v30 + 40) = 0xE500000000000000;
  v31 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v30 + 48) = v26;
  *(v30 + 72) = v31;
  *(v30 + 80) = 0x656372756F73;
  *(v30 + 120) = &type metadata for String;
  *(v30 + 88) = 0xE600000000000000;
  *(v30 + 96) = a1;
  *(v30 + 104) = a2;

  v32 = sub_100010AFC(v30);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  v33 = v67;
  sub_10002D128(a1, a2, v67);
  v35 = v68;
  v34 = v69;
  if ((*(v68 + 48))(v33, 1, v69) == 1)
  {
    sub_100007E2C(v33, &qword_100056C18, &qword_100045BC0);
  }

  else
  {
    v36 = v66;
    (*(v35 + 32))(v66, v33, v34);
    Date.timeIntervalSince1970.getter();
    v76 = &type metadata for Double;
    *&v75 = v37;
    sub_100010C40(&v75, v71);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v32;
    sub_100010234(v71, 1701669236, 0xE400000000000000, v38);
    (*(v35 + 8))(v36, v34);
  }

  v39 = sub_10002C584();
  v41 = v40;

  sub_10000803C(v65, v64);
  (*(v11 + 8))(v14, v10);
  if (v41 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v39;
  }
}

uint64_t sub_10000C5C4()
{
  v1 = v0;
  sub_100001FDC(&unk_100056C98, &unk_100045C20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100045B50;
  *(v2 + 32) = 3747891;
  *(v2 + 40) = 0xE300000000000000;
  if (sub_10002BC78())
  {
    v2 = sub_10000DFE8(1, 2, 1, v2);
    *(v2 + 16) = 2;
    *(v2 + 48) = 3684658;
    *(v2 + 56) = 0xE300000000000000;
  }

  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006C6C(v3, qword_100058408);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;

    v8 = Array.description.getter();
    v10 = v9;

    v11 = sub_10000604C(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Registering for logs of types: %s", v6, 0xCu);
    sub_100006D94(v7);
  }

  sub_10002C314(v1, v2);

  (*(**(v1 + OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_deleter) + 128))(v12);
}

id sub_10000C804(double a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CrashDeleter();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  *&v3[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_deleter] = v4;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_10000C890(double a1)
{
  *&v1[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CrashDeleter();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_deleter] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CrashMonitor();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000C90C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000C9A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrashMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000CA24(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, NSObject *a8)
{
  v65 = a3;
  v66 = a1;
  v13 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = &v61 - v15;
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006C6C(v16, qword_100058408);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v67 = a8;
  v63 = a2;
  v64 = a5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_10000604C(v66, a2, &v68);
    *(v20 + 12) = 2082;
    if (a6)
    {
      v21 = a6;
    }

    else
    {
      a5 = 7104878;
      v21 = 0xE300000000000000;
    }

    v22 = sub_10000604C(a5, v21, &v68);

    *(v20 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received OSAnalyticsObserver callback with bugType: %{public}s, path: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v25 = 136446467;
    *(v25 + 4) = sub_10000604C(v65, a4, &v68);
    *(v25 + 12) = 2081;
    v26 = Dictionary.description.getter();
    v28 = sub_10000604C(v26, v27, &v68);

    *(v25 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v23, v24, "Additional args: logID: %{public}s, logInfo: %{private}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  if (v67)
  {
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68 = v32;
      *v31 = 136380675;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_10000604C(v33, v34, &v68);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received error in OSAnalyticsObserver handler: %{private}s", v31, 0xCu);
      sub_100006D94(v32);
    }

    else
    {
    }

    return;
  }

  if (!a6)
  {
    return;
  }

  v36 = v63;
  if (v66 == 3684658 && v63 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (sub_10002BC78())
    {
      v37 = (*((swift_isaMask & *v62) + 0x88))(v64, a6);
      if (v39)
      {
        return;
      }

      v40 = v37;
      v41 = v38;
      v42 = type metadata accessor for TaskPriority();
      v43 = v61;
      (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
      v44 = swift_allocObject();
      v44[2] = 0;
      v44[3] = 0;
      v45 = v62;
      v44[4] = v62;
      v44[5] = v40;
      v44[6] = v41;
      v46 = v45;
      v47 = &unk_100045C48;
LABEL_35:
      sub_10000326C(0, 0, v43, v47, v44);

      return;
    }

    v67 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "Received bug type 298 (Jetsam) on customer build!";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v67, v48, v50, v49, 2u);
    }
  }

  else
  {
    v52 = v64;
    if (v66 == 3747891 && v36 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v53 = (*((swift_isaMask & *v62) + 0x80))(v52, a6);
      if (v55)
      {
        return;
      }

      v56 = v53;
      v57 = v54;
      v58 = type metadata accessor for TaskPriority();
      v43 = v61;
      (*(*(v58 - 8) + 56))(v61, 1, 1, v58);
      v44 = swift_allocObject();
      v44[2] = 0;
      v44[3] = 0;
      v59 = v62;
      v44[4] = v62;
      v44[5] = v56;
      v44[6] = v57;
      v60 = v59;
      v47 = &unk_100045C38;
      goto LABEL_35;
    }

    v67 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "Received unexpected bugType, not handling";
      goto LABEL_26;
    }
  }

  v51 = v67;
}

uint64_t sub_10000D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10000D20C, 0, 0);
}

uint64_t sub_10000D20C()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0x60))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_10000D3B4;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);

    return v12(v9, v8, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10000D3B4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100011100, 0, 0);
}

uint64_t sub_10000D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10000D4F0, 0, 0);
}

uint64_t sub_10000D4F0()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0x60))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_10000D698;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);

    return v12(v9, v8, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10000D698()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10000D7B0, 0, 0);
}

uint64_t sub_10000D8FC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D974(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D9F4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000DA38()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000DA74()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000DAC8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000DB3C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000DBC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000DC0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000DC38(uint64_t a1)
{
  v2 = sub_100011094(&qword_100056E78, type metadata accessor for URLResourceKey);
  v3 = sub_100011094(&unk_100056E80, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

size_t sub_10000DCF4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100001FDC(&qword_100056E98, &qword_100045EA0);
  v10 = *(sub_100001FDC(&qword_100056C10, &qword_100045BB8) - 8);
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
  v15 = *(sub_100001FDC(&qword_100056C10, &qword_100045BB8) - 8);
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

char *sub_10000DEE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FDC(&qword_100056EA8, &unk_100045EB0);
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

char *sub_10000DFE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FDC(&unk_100056C98, &unk_100045C20);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000E0F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_10000F818(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

Swift::Int sub_10000E2A0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001FDC(&qword_100056C10, &qword_100045BB8);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100001FDC(&qword_100056C10, &qword_100045BB8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000E624(v8, v9, a1, v4);
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
    return sub_10000E3E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v8 = *(*(v36 - 8) + 64);
  v9 = __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_10001102C(v23, v17, &qword_100056C10, &qword_100045BB8);
      sub_10001102C(v20, v13, &qword_100056C10, &qword_100045BB8);
      v24 = static Date.< infix(_:_:)();
      sub_100007E2C(v13, &qword_100056C10, &qword_100045BB8);
      result = sub_100007E2C(v17, &qword_100056C10, &qword_100045BB8);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10001098C(v23, v35);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10001098C(v25, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000E624(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v102 = a1;
  v115 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v9 = *(v115 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v115);
  v105 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v114 = &v98 - v14;
  v15 = __chkstk_darwin(v13);
  v117 = &v98 - v16;
  result = __chkstk_darwin(v15);
  v116 = &v98 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_94:
    a4 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_128:
      result = sub_10000F498(v4);
    }

    v118 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      v94 = v9;
      while (*a3)
      {
        v95 = *(result + 16 * v4);
        v96 = result;
        v9 = *(result + 16 * (v4 - 1) + 40);
        sub_10000EF08(*a3 + *(v94 + 72) * v95, *a3 + *(v94 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v94 + 72) * v9, a4);
        if (v6)
        {
        }

        if (v9 < v95)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_10000F498(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_122;
        }

        v97 = &v96[16 * v4];
        *v97 = v95;
        *(v97 + 1) = v9;
        v118 = v96;
        sub_10000F40C(v4 - 1);
        result = v118;
        v4 = *(v118 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = &_swiftEmptyArrayStorage;
  v101 = a4;
  v103 = a3;
  v99 = v9;
  while (1)
  {
    v22 = v20 + 1;
    v106 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v23 = v20;
      v24 = *a3;
      v112 = v24;
      v25 = *(v9 + 72);
      v26 = v24 + v25 * v22;
      v27 = v116;
      sub_10001102C(v26, v116, &qword_100056C10, &qword_100045BB8);
      v28 = v24 + v25 * v23;
      v29 = v117;
      sub_10001102C(v28, v117, &qword_100056C10, &qword_100045BB8);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_100007E2C(v29, &qword_100056C10, &qword_100045BB8);
      result = sub_100007E2C(v27, &qword_100056C10, &qword_100045BB8);
      v100 = v23;
      v4 = v23 + 2;
      v113 = v25;
      v30 = v112 + v25 * (v23 + 2);
      while (v19 != v4)
      {
        v31 = v116;
        v112 = v6;
        sub_10001102C(v30, v116, &qword_100056C10, &qword_100045BB8);
        v32 = v117;
        sub_10001102C(v26, v117, &qword_100056C10, &qword_100045BB8);
        v33 = static Date.< infix(_:_:)() & 1;
        sub_100007E2C(v32, &qword_100056C10, &qword_100045BB8);
        v6 = v112;
        result = sub_100007E2C(v31, &qword_100056C10, &qword_100045BB8);
        ++v4;
        v30 += v113;
        v26 += v113;
        if ((v111 & 1) != v33)
        {
          v19 = v4 - 1;
          break;
        }
      }

      v20 = v100;
      a4 = v101;
      a3 = v103;
      v9 = v99;
      if (v111)
      {
        if (v19 < v100)
        {
          goto LABEL_125;
        }

        if (v100 < v19)
        {
          v111 = v19;
          v112 = v6;
          v4 = v113 * (v19 - 1);
          v34 = v19 * v113;
          v35 = v19;
          v36 = v100;
          v37 = v100 * v113;
          do
          {
            if (v36 != --v35)
            {
              v38 = *v103;
              if (!*v103)
              {
                goto LABEL_131;
              }

              sub_10001098C(v38 + v37, v105);
              if (v37 < v4 || v38 + v37 >= (v38 + v34))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10001098C(v105, v38 + v4);
            }

            ++v36;
            v4 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v36 < v35);
          v19 = v111;
          v6 = v112;
          a3 = v103;
          v9 = v99;
          v20 = v100;
          a4 = v101;
        }
      }
    }

    v39 = a3[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_124;
      }

      if (v19 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_126;
        }

        if ((v20 + a4) < v39)
        {
          v39 = v20 + a4;
        }

        if (v39 < v20)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v19 < v20)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v106;
    }

    else
    {
      result = sub_10000DEE4(0, *(v106 + 2) + 1, 1, v106);
      v21 = result;
    }

    v4 = *(v21 + 2);
    v50 = *(v21 + 3);
    a4 = v4 + 1;
    if (v4 >= v50 >> 1)
    {
      result = sub_10000DEE4((v50 > 1), v4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = a4;
    v51 = &v21[16 * v4];
    *(v51 + 4) = v20;
    *(v51 + 5) = v19;
    v107 = v19;
    if (!*v102)
    {
      goto LABEL_133;
    }

    if (v4)
    {
      v52 = *v102;
      while (1)
      {
        v53 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v54 = *(v21 + 4);
          v55 = *(v21 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_62:
          if (v57)
          {
            goto LABEL_112;
          }

          v70 = &v21[16 * a4];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_115;
          }

          v76 = &v21[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_119;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = a4 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v80 = &v21[16 * a4];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_76:
        if (v75)
        {
          goto LABEL_114;
        }

        v83 = &v21[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_117;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_83:
        v4 = v53 - 1;
        if (v53 - 1 >= a4)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v91 = v21;
        a4 = *&v21[16 * v4 + 32];
        v92 = *&v21[16 * v53 + 40];
        sub_10000EF08(*a3 + *(v9 + 72) * a4, *a3 + *(v9 + 72) * *&v21[16 * v53 + 32], *a3 + *(v9 + 72) * v92, v52);
        if (v6)
        {
        }

        if (v92 < a4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_10000F498(v91);
        }

        if (v4 >= *(v91 + 2))
        {
          goto LABEL_109;
        }

        v93 = &v91[16 * v4];
        *(v93 + 4) = a4;
        *(v93 + 5) = v92;
        v118 = v91;
        v4 = &v118;
        result = sub_10000F40C(v53);
        v21 = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v21[16 * a4 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_110;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_111;
      }

      v65 = &v21[16 * a4];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_113;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_116;
      }

      if (v69 >= v61)
      {
        v87 = &v21[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_120;
        }

        if (v56 < v90)
        {
          v53 = a4 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v107;
    a4 = v101;
    if (v107 >= v19)
    {
      goto LABEL_94;
    }
  }

  v107 = v39;
  v40 = *a3;
  v41 = *(v9 + 72);
  v42 = *a3 + v41 * (v19 - 1);
  v43 = -v41;
  v100 = v20;
  v44 = v20 - v19;
  v112 = v6;
  v113 = v40;
  v104 = v41;
  a4 = v40 + v19 * v41;
LABEL_33:
  v110 = v42;
  v111 = v19;
  v108 = a4;
  v109 = v44;
  v45 = v42;
  while (1)
  {
    v4 = v116;
    sub_10001102C(a4, v116, &qword_100056C10, &qword_100045BB8);
    v46 = v117;
    sub_10001102C(v45, v117, &qword_100056C10, &qword_100045BB8);
    v47 = static Date.< infix(_:_:)();
    sub_100007E2C(v46, &qword_100056C10, &qword_100045BB8);
    result = sub_100007E2C(v4, &qword_100056C10, &qword_100045BB8);
    if ((v47 & 1) == 0)
    {
LABEL_32:
      v19 = v111 + 1;
      v42 = v110 + v104;
      v44 = v109 - 1;
      a4 = v108 + v104;
      if (v111 + 1 != v107)
      {
        goto LABEL_33;
      }

      v6 = v112;
      a3 = v103;
      v9 = v99;
      v20 = v100;
      v19 = v107;
      goto LABEL_41;
    }

    if (!v113)
    {
      break;
    }

    v48 = v114;
    sub_10001098C(a4, v114);
    swift_arrayInitWithTakeFrontToBack();
    sub_10001098C(v48, v45);
    v45 += v43;
    a4 += v43;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_10000EF08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v8 = *(*(v44 - 8) + 64);
  v9 = __chkstk_darwin(v44);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v45 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v30 = a3;
          v38 = v24;
          a3 += v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_10001102C(v31, v45, &qword_100056C10, &qword_100045BB8);
          v33 = v28;
          v34 = v46;
          sub_10001102C(v33, v46, &qword_100056C10, &qword_100045BB8);
          v35 = static Date.< infix(_:_:)();
          sub_100007E2C(v34, &qword_100056C10, &qword_100045BB8);
          sub_100007E2C(v32, &qword_100056C10, &qword_100045BB8);
          if (v35)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            a1 = v40;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v30 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v30 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v14;
        v21 = v45;
        sub_10001102C(a2, v45, &qword_100056C10, &qword_100045BB8);
        v22 = v46;
        sub_10001102C(a4, v46, &qword_100056C10, &qword_100045BB8);
        v23 = static Date.< infix(_:_:)();
        sub_100007E2C(v22, &qword_100056C10, &qword_100045BB8);
        sub_100007E2C(v21, &qword_100056C10, &qword_100045BB8);
        v14 = v20;
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_58:
  sub_10000F4AC(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_10000F40C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000F498(v3);
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

uint64_t sub_10000F4AC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10000F59C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001FDC(&qword_100056EA0, &qword_100045EA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10000F818(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10000F59C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10000FA00();
      goto LABEL_16;
    }

    sub_10000FB50(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for URLResourceKey();
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10000FA00()
{
  v1 = v0;
  sub_100001FDC(&qword_100056EA0, &qword_100045EA8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10000FB50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001FDC(&qword_100056EA0, &qword_100045EA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10000FDA4(uint64_t a1, unint64_t a2)
{
  sub_100007F28(a1, a2);
  v4 = *(sub_1000105A8(a1, a2) + 2);
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_10000FE10@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000FE4C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000FEC4(a1, a2, v6);
}

unint64_t sub_10000FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000FF7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001FDC(&qword_100057750, &unk_100045E90);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100010C40(v25, v37);
      }

      else
      {
        sub_10000717C(v25, v37);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100010C40(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_100010234(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000FE4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000103F0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000FF7C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000FE4C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100006D94(v23);

    return sub_100010C40(a1, v23);
  }

  else
  {
    sub_100010384(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100010384(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100010C40(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1000103F0()
{
  v1 = v0;
  sub_100001FDC(&qword_100057750, &unk_100045E90);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000717C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010C40(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000105A8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_10000803C(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_10000648C(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_10000803C(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100010724(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_1000108D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey();
  sub_100011094(&qword_100056E78, type metadata accessor for URLResourceKey);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000E0F4(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001098C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000109FC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100010A84()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1000082E0(v2);
}

uint64_t sub_100010AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100010AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FDC(&qword_100057750, &unk_100045E90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001102C(v4, &v13, &unk_100056C80, &unk_1000468A0);
      v5 = v13;
      v6 = v14;
      result = sub_10000FE4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010C40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_100010C2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000803C(a1, a2);
  }

  return a1;
}

_OWORD *sub_100010C40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100010C50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100010C68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010CF8(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v2 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_10000803C(a1, v3);
}

uint64_t sub_100010D1C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000073F4;

  return sub_10000D4CC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_100010DD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_100010CF8(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100010E18(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007EAC;

  return sub_10000D1E8(a1, v7, v8, v4, v5, v6);
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_100056E58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100056E58);
    }
  }
}

uint64_t sub_100010FF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001102C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011104()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100058728);
  sub_100006C6C(v0, qword_100058728);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100011190(char a1)
{
  if (!a1)
  {
    return 0x6465776F6C6C41;
  }

  if (a1 == 1)
  {
    return 0x6465696E6544;
  }

  return 0x6574696475416E55;
}

uint64_t sub_1000111E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6465696E6544;
  if (v2 != 1)
  {
    v4 = 0x6574696475416E55;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6465776F6C6C41;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6465696E6544;
  if (*a2 != 1)
  {
    v8 = 0x6574696475416E55;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465776F6C6C41;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000112EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011390()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100011420()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000114C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100013870(*a1);
  *a2 = result;
  return result;
}

void sub_1000114F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6465696E6544;
  if (v2 != 1)
  {
    v5 = 0x6574696475416E55;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465776F6C6C41;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100011618(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_100011668(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051990, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000116C8(char a1)
{
  if (!a1)
  {
    return 0x6174537469647541;
  }

  if (a1 == 1)
  {
    return 0x746E656D75677241;
  }

  return 0xD000000000000013;
}

uint64_t sub_100011734(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746E656D75677241;
  v4 = 0xED000073656D614ELL;
  v5 = 0x8000000100043980;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000100043980;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6174537469647541;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA00000000006574;
  }

  v8 = 0x746E656D75677241;
  if (*a2 == 1)
  {
    v5 = 0xED000073656D614ELL;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6174537469647541;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEA00000000006574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100011848()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011900()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000119A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100011A58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011668(*a1);
  *a2 = result;
  return result;
}

void sub_100011A88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006574;
  v4 = 0xED000073656D614ELL;
  v5 = 0x746E656D75677241;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000100043980;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6174537469647541;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100011AFC()
{
  v1 = 0x746E656D75677241;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6174537469647541;
  }
}

unint64_t sub_100011B6C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100011668(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100011B94(uint64_t a1)
{
  v2 = sub_1000155A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100011BD0(uint64_t a1)
{
  v2 = sub_1000155A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100011C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000138BC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100011C68(uint64_t *a1)
{
  result = sub_100013AD8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100011CBC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_100011CF0(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_100011D40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000519F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100011D8C(char a1)
{
  if (!a1)
  {
    return 0x745374616D726F46;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000012;
}

uint64_t sub_100011DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x80000001000439B0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001000439B0;
  }

  else
  {
    v6 = 0x80000001000439D0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x745374616D726F46;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED000073676E6972;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v4 = 0x80000001000439D0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x745374616D726F46;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED000073676E6972;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100011EE4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011FA0()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100012048()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100012100@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011D40(*a1);
  *a2 = result;
  return result;
}

void sub_100012130(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000073676E6972;
  v4 = 0x80000001000439B0;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001000439D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x745374616D726F46;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000121A8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x745374616D726F46;
  }
}

unint64_t sub_10001221C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100011D40(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100012250(uint64_t a1)
{
  v2 = sub_10001554C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001228C(uint64_t a1)
{
  v2 = sub_10001554C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000122C8(uint64_t *a1)
{
  result = sub_100013D84(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000122F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100013D84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100012320(uint64_t *a1)
{
  result = sub_10001405C(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t sub_100012350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001405C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100012388(uint64_t *a1)
{
  result = sub_100014308(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000123D8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_100012444(uint64_t a1, char a2)
{
  result = sub_100015648(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

BOOL sub_100012488(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051A60, v2);

  return v3 != 0;
}

BOOL sub_1000124D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051A98, v2);

  return v3 != 0;
}

Swift::Int sub_100012538()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000125A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000125F4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100051AD0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100012664@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100051B08, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000126C8(uint64_t a1)
{
  v2 = sub_1000154F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100012704(uint64_t a1)
{
  v2 = sub_1000154F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100012740(uint64_t *a1)
{
  result = sub_1000145EC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_10001276C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000145EC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1000127A0()
{
  v1 = *(v0 + 16);
  sub_1000145E0(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1000127D8(char *a1)
{
  v2 = swift_allocObject();
  sub_100012828(a1);
  return v2;
}

void *sub_100012828(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058720 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006C6C(v10, qword_100058728);
  (*(v6 + 16))(v9, a1, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v4;
    v30 = v15;
    v34 = v15;
    *v14 = 136446210;
    v16 = URL.path(percentEncoded:)(0);
    v31 = a1;
    v17 = *(v6 + 8);
    v17(v9, v5);
    v18 = sub_10000604C(v16._countAndFlagsBits, v16._object, &v34);
    a1 = v31;

    *(v14 + 4) = v18;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Creating audit table at path: %{public}s", v14, 0xCu);
    sub_100006D94(v30);

    v2 = v33;
  }

  else
  {

    v19 = *(v6 + 8);
    v19(v9, v5);
  }

  v20 = v36;
  v21 = Data.init(contentsOf:options:)();
  if (v20)
  {
    v19(a1, v5);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v21;
    v24 = v22;
    v36 = v19;
    v25 = type metadata accessor for PropertyListDecoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100014764();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v36(a1, v5);

    sub_10000803C(v23, v24);
    v29 = v35;
    v2[2] = v34;
    *(v2 + 24) = v29;
  }

  return v2;
}

uint64_t sub_100012BD4(void *a1)
{
  v2 = *(v1 + 16);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_10;
    }

LABEL_12:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  v3 = a1[3];
  v4 = a1[4];
  sub_100010C68(a1, v3);
  v6 = (*(v4 + 16))(v3, v4);
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!*(v2 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

  v8 = sub_10000FE4C(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(v2 + 56) + 32 * v8;
  v12 = *v11;
  if ((*(v11 + 24) & 1) == 0)
  {
    return v12 & 1;
  }

  v14 = *(v11 + 8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v15 = *(v11 + 8);

    if ((sub_1000147B8(a1, v13) & 1) == 0)
    {
LABEL_8:

      goto LABEL_11;
    }
  }

  else
  {
    v17 = *(v11 + 8);
  }

  v18 = a1[3];
  v19 = a1[4];
  sub_100010C68(a1, v18);
  v20 = (*(v19 + 24))(v18, v19);
  if (!v21)
  {
LABEL_20:

    goto LABEL_8;
  }

  if (!*(v12 + 16))
  {

    goto LABEL_22;
  }

  v22 = sub_10000FE4C(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  if (*(*(v12 + 56) + 16 * v22))
  {
    if (*(*(v12 + 56) + 16 * v22) == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v25 = 1;
LABEL_23:
  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_8;
  }

  if (!v14)
  {

    goto LABEL_28;
  }

  v27 = sub_1000147B8(a1, v14);

  if (v27)
  {
LABEL_10:
    LOBYTE(v12) = 1;
    return v12 & 1;
  }

LABEL_28:
  if (v25)
  {

    goto LABEL_10;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v28 & 1;
}

uint64_t sub_100012EA0(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100010C68(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    v9 = a1[3];
    v10 = a1[4];
    sub_100010C68(a1, v9);
    v11 = (*(v10 + 24))(v9, v10);
    if (v12)
    {
      v13 = v12;
      if ((*(v1 + 24) & 1) != 0 && (v14 = *(v1 + 16), *(v14 + 16)))
      {
        v15 = v11;
        v16 = sub_10000FE4C(v8, v7);
        v18 = v17;

        if (v18)
        {
          v19 = (*(v14 + 56) + 32 * v16);
          if (v19[24] == 1)
          {
            v20 = *v19;
            if (*(*v19 + 16))
            {

              v21 = sub_10000FE4C(v15, v13);
              v23 = v22;

              if (v23)
              {
                v24 = (*(v20 + 56) + 16 * v21);
                v25 = *(v24 + 1);
                v26 = *v24;

                return v26;
              }
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_100013020(void *a1)
{
  v1 = sub_100012EA0(a1);
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = v1 >> 8;
    v5 = BYTE1(v1);
    sub_100014AC0(v1, v2);
    if (v4 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5 ^ 1;
    }
  }

  return v3 & 1;
}

uint64_t sub_100013074(void *a1)
{
  v2 = sub_100012EA0(a1);
  if (v3 < 2)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = *(v3 + 16);
  v7 = a1[3];
  v8 = a1[4];
  sub_100010C68(a1, v7);
  v9 = (*(v8 + 56))(v7, v8);
  v10 = v9;
  if (v9 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_100014AD4(_swiftEmptyArrayStorage);
  if (v10 < 0)
  {
    goto LABEL_31;
  }

  v13 = v12;
  v46 = v4;
  if (!v11)
  {
    v15 = v5;
LABEL_24:
    sub_100014AC0(v46, v15);
    return v13;
  }

  v14 = 0;
  v15 = v5;
  v16 = (v5 + 40);
  v17 = a1;
  v47 = a1;
  v48 = v5;
  while (v14 < *(v15 + 16))
  {
    v21 = *(v16 - 1);
    v20 = *v16;
    v50 = v16;
    v22 = v17[3];
    v23 = v17[4];
    sub_100010C68(v17, v22);
    v24 = *(v23 + 72);

    v25 = v24(v14, v22, v23);
    if (!v26)
    {
      sub_100014AC0(v46, v48);

      return 0;
    }

    v49 = v26;
    v27 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v21;
    v31 = sub_10000FE4C(v21, v20);
    v32 = v13[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_29;
    }

    v35 = v30;
    v36 = v20;
    if (v13[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v39 = v49;
        if (v30)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1000136F8();
        v39 = v49;
        if (v35)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_100013438(v34, isUniquelyReferenced_nonNull_native);
      v37 = sub_10000FE4C(v29, v20);
      if ((v35 & 1) != (v38 & 1))
      {
        goto LABEL_32;
      }

      v31 = v37;
      v39 = v49;
      if (v35)
      {
LABEL_8:

        v18 = (v13[7] + 16 * v31);
        v19 = v18[1];
        *v18 = v27;
        v18[1] = v39;

        goto LABEL_9;
      }
    }

    v13[(v31 >> 6) + 8] |= 1 << v31;
    v40 = (v13[6] + 16 * v31);
    *v40 = v29;
    v40[1] = v36;
    v41 = (v13[7] + 16 * v31);
    *v41 = v27;
    v41[1] = v39;
    v42 = v13[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_30;
    }

    v13[2] = v44;
LABEL_9:
    ++v14;
    v16 = v50 + 2;
    v17 = v47;
    v15 = v48;
    if (v11 == v14)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100013350()
{
  sub_100015648(*(v0 + 16), *(v0 + 24));

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t sub_10001338C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100013438(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001FDC(&unk_100057740, &unk_100046680);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1000136F8()
{
  v1 = v0;
  sub_100001FDC(&unk_100057740, &unk_100046680);
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

unint64_t sub_100013870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051928, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000138BC(uint64_t *a1)
{
  v3 = sub_100001FDC(&qword_100057040, &unk_1000466C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_100010C68(a1, a1[3]);
  sub_1000155A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006D94(a1);
  }

  else
  {
    v12[30] = 0;
    sub_100015950();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v12[31];
    sub_100001FDC(&qword_100057030, &unk_1000469E0);
    v12[15] = 1;
    sub_1000158D4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12[14] = 2;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100006D94(a1);
    return v9 | (v10 << 8);
  }
}

uint64_t sub_100013AD8(uint64_t *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v9 = sub_100010C68(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_5;
  }

  sub_100010C68(v14, v15);
  if ((dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1) == 0)
  {
    sub_100010C68(v14, v15);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    (*(v4 + 16))(v10, v7, v3);
    (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
    sub_100006D94(v14);
LABEL_5:
    sub_100006D94(a1);
    return v9;
  }

  v9 = 1;
  sub_100006D94(v14);
  sub_100006D94(a1);
  return v9;
}

uint64_t sub_100013D84(uint64_t *a1)
{
  v2 = sub_100001FDC(&qword_100056FF8, &qword_1000466A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100010C68(a1, a1[3]);
  sub_10001554C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100001FDC(&qword_100057000, &qword_1000466A8);
  v11 = 0;
  sub_1000157FC(&qword_100057008, &qword_100057000, &qword_1000466A8, sub_1000157A8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v12;
  sub_100001FDC(&qword_100057018, &unk_1000466B0);
  v11 = 1;
  sub_1000157FC(&qword_100057020, &qword_100057018, &unk_1000466B0, sub_100015880);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100006D94(a1);
  return v9;
}

uint64_t sub_10001405C(uint64_t *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v8 = a1[4];
  sub_100010C68(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_5;
  }

  sub_100010C68(v14, v15);
  if ((dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1) == 0)
  {
    sub_100010C68(v14, v15);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    (*(v4 + 16))(v10, v7, v3);
    (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
    sub_100006D94(v14);
LABEL_5:
    sub_100006D94(a1);
    return v3;
  }

  v3 = 1;
  sub_100006D94(v14);
  sub_100006D94(a1);
  return v3;
}

uint64_t sub_100014308(uint64_t *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v9 = sub_100010C68(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_5;
  }

  sub_100010C68(v14, v15);
  if ((dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1) == 0)
  {
    sub_100010C68(v14, v15);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    (*(v4 + 16))(v10, v7, v3);
    (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
    sub_100006D94(v14);
LABEL_5:
    sub_100006D94(a1);
    return v9;
  }

  v9 = 1;
  sub_100006D94(v14);
  sub_100006D94(a1);
  return v9;
}

uint64_t sub_1000145E0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1000145EC(uint64_t *a1)
{
  v3 = sub_100001FDC(&qword_100056FC8, &qword_100046690);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100010C68(a1, a1[3]);
  sub_1000154F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006D94(a1);
  }

  else
  {
    sub_1000156AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100006D94(a1);
  }

  return v9;
}

unint64_t sub_100014764()
{
  result = qword_100056EB0;
  if (!qword_100056EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EB0);
  }

  return result;
}

uint64_t sub_1000147B8(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_100010C68(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  if (!v7)
  {
    goto LABEL_18;
  }

  v38 = v6;
  v39 = v7;
  v40 = 42;
  v41 = 0xE100000000000000;
  if (!*(a2 + 16))
  {
    goto LABEL_17;
  }

  v8 = v6;
  v9 = v7;

  v10 = sub_10000FE4C(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 56) + 16 * v10;
  v14 = *v13;
  if ((*(v13 + 8) & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = a1[3];
  v16 = a1[4];
  sub_100010C68(a1, v15);
  v17 = *(v16 + 48);

  v18 = v17(v15, v16);
  if (!v19)
  {
    sub_100015648(v14, 1);
    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_8:
    v21 = v40;
    v22 = v41;

    v23 = sub_10000FE4C(v21, v22);
    v25 = v24;

    if (v25)
    {
      v26 = *(a2 + 56) + 16 * v23;
      v14 = *v26;
      if (*(v26 + 8) == 1)
      {
        v27 = a1[3];
        v28 = a1[4];
        sub_100010C68(a1, v27);
        v29 = *(v28 + 48);

        v30 = v29(v27, v28);
        if (v31)
        {
          v36 = v30;
          v37 = v31;
          __chkstk_darwin(v30);
          v35 = &v36;
          v32 = sub_10001338C(sub_100015654, v34, v14);
          sub_100015648(v14, 1);

          if (v32)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_100015648(v14, 1);
        }

        goto LABEL_17;
      }

LABEL_13:
      swift_arrayDestroy();
      return v14 & 1;
    }

LABEL_17:
    swift_arrayDestroy();
LABEL_18:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v36 = v18;
  v37 = v19;
  __chkstk_darwin(v18);
  v35 = &v36;
  v20 = sub_10001338C(sub_100015654, v34, v14);
  sub_100015648(v14, 1);

  if ((v20 & 1) == 0)
  {
LABEL_7:
    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

LABEL_12:
  swift_arrayDestroy();
  LOBYTE(v14) = 1;
  return v14 & 1;
}

uint64_t sub_100014AC0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100014AD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FDC(&unk_100057740, &unk_100046680);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000FE4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100014BEC()
{
  result = qword_100056EB8;
  if (!qword_100056EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EB8);
  }

  return result;
}

unint64_t sub_100014C44()
{
  result = qword_100056EC0;
  if (!qword_100056EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EC0);
  }

  return result;
}

unint64_t sub_100014C9C()
{
  result = qword_100056EC8;
  if (!qword_100056EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EC8);
  }

  return result;
}

unint64_t sub_100014CF4()
{
  result = qword_100056ED0;
  if (!qword_100056ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056ED0);
  }

  return result;
}

unint64_t sub_100014D4C()
{
  result = qword_100056ED8;
  if (!qword_100056ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056ED8);
  }

  return result;
}

unint64_t sub_100014DA4()
{
  result = qword_100056EE0;
  if (!qword_100056EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EE0);
  }

  return result;
}

unint64_t sub_100014DFC()
{
  result = qword_100056EE8;
  if (!qword_100056EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EE8);
  }

  return result;
}

unint64_t sub_100014E54()
{
  result = qword_100056EF0;
  if (!qword_100056EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EF0);
  }

  return result;
}

unint64_t sub_100014EAC()
{
  result = qword_100056EF8;
  if (!qword_100056EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EF8);
  }

  return result;
}

unint64_t sub_100014F04()
{
  result = qword_100056F00;
  if (!qword_100056F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056F00);
  }

  return result;
}

uint64_t sub_100014F70(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100014FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_100015048(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 sub_100015078(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001508C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000150D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14splunkloggingd10AuditStateOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14splunkloggingd10AuditStateOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100015280(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100015294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000152DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100015354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000153A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for _AuditTable.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _AuditTable.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1000154F8()
{
  result = qword_100056FA8;
  if (!qword_100056FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FA8);
  }

  return result;
}

unint64_t sub_10001554C()
{
  result = qword_100056FB0;
  if (!qword_100056FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FB0);
  }

  return result;
}

unint64_t sub_1000155A0()
{
  result = qword_100056FB8;
  if (!qword_100056FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FB8);
  }

  return result;
}

unint64_t sub_1000155F4()
{
  result = qword_100056FC0;
  if (!qword_100056FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FC0);
  }

  return result;
}

uint64_t sub_100015648(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100015654(void *a1)
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

unint64_t sub_1000156AC()
{
  result = qword_100056FD0;
  if (!qword_100056FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FD0);
  }

  return result;
}

unint64_t sub_100015700()
{
  result = qword_100056FE8;
  if (!qword_100056FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FE8);
  }

  return result;
}

unint64_t sub_100015754()
{
  result = qword_100056FF0;
  if (!qword_100056FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FF0);
  }

  return result;
}