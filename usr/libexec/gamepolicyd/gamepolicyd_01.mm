uint64_t sub_100018970()
{
  sub_10001836C();

  return _swift_deallocClassInstance(v0, 132, 7);
}

uint64_t sub_1000189C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = GameModeStatus.enabled.getter() & 1;
  swift_beginAccess();
  v11 = *(a2 + 56);
  v12 = GameModeStatus.enabled.getter() & 1;

  v13 = *(a2 + 56);
  *(a2 + 56) = a1;
  v14 = a1;

  if (v10 != v12)
  {
    v15 = (v6 + 8);
    if (GameModeStatus.enabled.getter())
    {
      static os_signpost_type_t.begin.getter();
    }

    else
    {
      static os_signpost_type_t.end.getter();
    }

    v16 = static Logger.stateTracking.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*v15)(v9, v5);
  }

  swift_beginAccess();
  *v19 = *(a2 + 32);
}

uint64_t sub_100018B80(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[2];
  [v11 lock];
  swift_beginAccess();
  v12 = v1[10];
  v1[10] = a1;
  v26 = a1;

  swift_beginAccess();
  v13 = v1[4];

  [v11 unlock];
  v14 = v1[3];
  aBlock[4] = sub_10001B984;
  v29 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004DC00;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10001B9A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v25 + 8))(v6, v3);
  (*(v23 + 8))(v10, v24);

  if (!(v13 >> 62))
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v17 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v13 + 8 * i + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v27 updateStatus:0 :v26 :0 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  __break(1u);
  return result;
}

__n128 sub_100018FCC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100018FE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100019028(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100019088()
{
  v1 = v0;
  v2 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v62 = v57 - v4;
  v5 = sub_100003870(&qword_100054428, &qword_10003E778);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v57 - v10;
  v64 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v61 = *(v64 - 8);
  v12 = *(v61 + 64);
  v13 = __chkstk_darwin(v64);
  v59 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v60 = v57 - v15;
  __chkstk_darwin(v14);
  v63 = v57 - v16;
  v17 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  __chkstk_darwin(v17);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + 24);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v29 = *(v1 + 16);
  [v29 lock];
  swift_beginAccess();
  v30 = *(v1 + 80);
  dispatch thunk of ModelManagerGameAssertionStatus.config.getter();

  [v29 unlock];
  v69[3] = &type metadata for GamePolicyCoordinatorFF;
  v69[4] = sub_10001B9F4();
  LOBYTE(v30) = isFeatureEnabled(_:)();
  sub_100003964(v69);
  if (v30)
  {
    ModelManagerGameAssertionStatus.Config.policy.getter();
    v31 = v61;
    v32 = *(v61 + 48);
    v33 = v64;
    if (v32(v11, 1, v64) == 1)
    {
      sub_1000096E8(v11, &qword_100054428, &qword_10003E778);
      goto LABEL_5;
    }

    v58 = v20;
    v38 = *(v31 + 32);
    v38(v63, v11, v33);
    v39 = *(v1 + 120);
    if (v39)
    {
      v57[1] = v31 + 32;

      Assertion.policy.getter();
      v40 = v64;
      ModelManagerGameAssertionPolicy.init(rawValue:)();
      if (v32(v9, 1, v40) == 1)
      {

        (*(v31 + 8))(v63, v40);
        (*(v65 + 8))(v58, v66);
        return sub_1000096E8(v9, &qword_100054428, &qword_10003E778);
      }

      v38(v60, v9, v40);
      sub_10001BF5C(&qword_100054470, &type metadata accessor for ModelManagerGameAssertionPolicy);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v41 = v63;
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v69[0] == v67 && v69[1] == v68)
      {

LABEL_16:

        v43 = *(v31 + 8);
        v44 = v64;
        v43(v60, v64);
        v43(v41, v44);
        return (*(v65 + 8))(v58, v66);
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
        goto LABEL_16;
      }

      v45 = *(v1 + 120);
      *(v1 + 120) = 0;

      v46 = type metadata accessor for TaskPriority();
      v47 = v62;
      (*(*(v46 - 8) + 56))(v62, 1, 1, v46);
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v39;

      v31 = v61;
      sub_100018680(0, 0, v47, &unk_10003E7E8, v48);

      v49 = v64;
      (*(v31 + 8))(v60, v64);
      v33 = v49;
    }

    v50 = type metadata accessor for TaskPriority();
    v51 = v62;
    (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
    v52 = v59;
    (*(v31 + 16))(v59, v63, v33);
    v53 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v54 = (v12 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = v33;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    v38((v56 + v53), v52, v55);
    *(v56 + v54) = v1;

    sub_100018680(0, 0, v51, &unk_10003E7D8, v56);

    (*(v31 + 8))(v63, v55);
    return (*(v65 + 8))(v58, v66);
  }

LABEL_5:
  v34 = *(v1 + 120);
  if (v34)
  {
    *(v1 + 120) = 0;
    v35 = type metadata accessor for TaskPriority();
    v36 = v62;
    (*(*(v35 - 8) + 56))(v62, 1, 1, v35);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v34;

    sub_100018680(0, 0, v36, &unk_10003E7C8, v37);

    sub_100019C74();
  }

  return (*(v65 + 8))(v20, v66);
}

uint64_t sub_100019904@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of SustainedExecutionStatus.enabled.getter() & 1;
  swift_beginAccess();
  v11 = *(a2 + 64);
  v12 = dispatch thunk of SustainedExecutionStatus.enabled.getter() & 1;

  v13 = *(a2 + 64);
  *(a2 + 64) = a1;
  v14 = a1;

  if (v10 != v12)
  {
    v15 = (v6 + 8);
    if (dispatch thunk of SustainedExecutionStatus.enabled.getter())
    {
      static os_signpost_type_t.begin.getter();
    }

    else
    {
      static os_signpost_type_t.end.getter();
    }

    v16 = static Logger.stateTracking.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*v15)(v9, v5);
  }

  swift_beginAccess();
  *v19 = *(a2 + 32);
}

uint64_t sub_100019ABC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = DynamicSplitterStatus.enabled.getter() & 1;
  swift_beginAccess();
  v11 = *(a2 + 72);
  v12 = DynamicSplitterStatus.enabled.getter() & 1;

  v13 = *(a2 + 72);
  *(a2 + 72) = a1;
  v14 = a1;

  if (v10 != v12)
  {
    v15 = (v6 + 8);
    if (DynamicSplitterStatus.enabled.getter())
    {
      static os_signpost_type_t.begin.getter();
    }

    else
    {
      static os_signpost_type_t.end.getter();
    }

    v16 = static Logger.stateTracking.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*v15)(v9, v5);
  }

  swift_beginAccess();
  *v19 = *(a2 + 32);
}

uint64_t sub_100019C74()
{
  v1 = type metadata accessor for String.Encoding();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003870(&qword_100054428, &qword_10003E778);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v24 = *(v0 + 128);
  if (!v24)
  {
    return result;
  }

  if (!*(v0 + 120))
  {
    goto LABEL_6;
  }

  Assertion.policy.getter();
  ModelManagerGameAssertionPolicy.init(rawValue:)();
  v25 = v31;
  if ((*(v31 + 48))(v8, 1, v9) != 1)
  {
    (*(v25 + 32))(v15, v8, v9);
    (*(v25 + 16))(v13, v15, v9);
    v26 = (*(v25 + 88))(v13, v9);
    if (v26 == enum case for ModelManagerGameAssertionPolicy.standardGameMode(_:))
    {
      v27 = 1;
LABEL_11:
      notify_set_state(v24, v27);

      (*(v25 + 8))(v15, v9);
      goto LABEL_12;
    }

    if (v26 == enum case for ModelManagerGameAssertionPolicy.aaaGameMode(_:))
    {
      v27 = 2;
      goto LABEL_11;
    }

LABEL_18:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  sub_1000096E8(v8, &qword_100054428, &qword_10003E778);
LABEL_6:
  notify_set_state(v24, 0);
LABEL_12:
  v34 = 0xD00000000000003DLL;
  v35 = 0x80000001000416B0;
  static String.Encoding.utf8.getter();
  sub_100009790();
  v28 = StringProtocol.cString(using:)();
  (*(v32 + 8))(v4, v33);
  if (v28)
  {
    v29 = (v28 + 32);
  }

  else
  {
    v29 = 0;
  }

  notify_post(v29);
}

uint64_t sub_10001A0A4()
{
  v1 = async function pointer to Assertion.invalidate()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10001A138;

  return Assertion.invalidate()();
}

uint64_t sub_10001A138()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();
  v12 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v5[24] = v12;
  v13 = *(v12 - 8);
  v5[25] = v13;
  v5[26] = *(v13 + 64);
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10001A3AC, 0, 0);
}

uint64_t sub_10001A3AC()
{
  v1 = *(v0 + 128);
  type metadata accessor for Assertion();
  v2 = ModelManagerGameAssertionPolicy.rawValue.getter();
  v4 = v3;
  v5 = async function pointer to Assertion.__allocating_init(policy:description:)[1];
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_10001A484;

  return Assertion.__allocating_init(policy:description:)(v2, v4, 0xD000000000000015, 0x8000000100040B60);
}

uint64_t sub_10001A484(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_10001A88C;
  }

  else
  {
    *(v4 + 240) = a1;
    v7 = sub_10001A5AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001A5AC()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v22 = v0[22];
  v23 = v0[21];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[18];
  v6 = v0[16];
  v20 = *(v0[17] + 24);
  v21 = v0[19];
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v3, v6, v4);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v1;
  (*(v5 + 32))(v9 + v8, v3, v4);
  v0[12] = sub_10001BEF8;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100024520;
  v0[11] = &unk_10004DD40;
  v10 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = &_swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10001B9A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v10);
  (*(v21 + 8))(v18, v19);
  (*(v22 + 8))(v17, v23);
  v11 = v0[13];

  v12 = v0[27];
  v13 = v0[23];
  v14 = v0[20];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10001A88C()
{
  v1 = v0[29];
  v2 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v12 = v0[20];
  v13 = v0[18];
  v14 = *(v0[17] + 24);
  v15 = v0[19];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v0[6] = sub_10001BE24;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100024520;
  v0[5] = &unk_10004DCF0;
  v5 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = &_swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10001B9A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v5);

  (*(v15 + 8))(v12, v13);
  (*(v16 + 8))(v2, v17);
  v6 = v0[7];

  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001AB10()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to create ModelManager assertion: %{public}@", v7, 0xCu);
    sub_1000096E8(v8, &unk_100053C00, &qword_10003E810);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100019C74();
  }

  return result;
}

uint64_t sub_10001ACF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_100003870(&qword_100054428, &qword_10003E778);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *(result + 120);
    *(result + 120) = a2;

    sub_100019C74();
    sub_100019088();
    if (v18)
    {

      Assertion.policy.getter();
      ModelManagerGameAssertionPolicy.init(rawValue:)();
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {

        return sub_1000096E8(v10, &qword_100054428, &qword_10003E778);
      }

      else
      {
        (*(v12 + 32))(v15, v10, v11);
        sub_10001BF5C(&qword_100054478, &type metadata accessor for ModelManagerGameAssertionPolicy);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          v19 = *(v17 + 120);
          *(v17 + 120) = v18;

          v20 = type metadata accessor for TaskPriority();
          (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
          v21 = swift_allocObject();
          v21[2] = 0;
          v21[3] = 0;
          v21[4] = a2;

          sub_100018680(0, 0, v6, &unk_10003E808, v21);

          sub_100019C74();
        }

        else
        {
          v22 = type metadata accessor for TaskPriority();
          (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
          v23 = swift_allocObject();
          v23[2] = 0;
          v23[3] = 0;
          v23[4] = v18;

          sub_100018680(0, 0, v6, &unk_10003E7F8, v23);
        }

        return (*(v12 + 8))(v15, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10001B180(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001B278;

  return v7(a1);
}

uint64_t sub_10001B278()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001B378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003870(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001B3E0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_10001B4E4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_10001B3E0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_100026320(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_100026320(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_10001B70C(char a1, int a2, uint64_t a3, void (**a4)(void, void, void))
{
  v19 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  _Block_copy(a4);
  static Logger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = v19 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "launchGameOverlay conditional=%{BOOL}d fallbackToGamesApp=%{BOOL}d", v14, 0xEu);
  }

  (*(v7 + 8))(v10, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v16 = *(Strong + 56), v17 = v16, swift_unknownObjectRelease(), v16))
  {
    sub_100033E48(a1 & 1, v19 & 1, sub_10001B964, v11);
  }

  else
  {
    a4[2](a4, 0, 0);
  }
}

uint64_t sub_10001B92C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001B9A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000085E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001B9F4()
{
  result = qword_100054468;
  if (!qword_100054468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054468);
  }

  return result;
}

uint64_t sub_10001BA4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A138;

  return sub_10001A0A4();
}

uint64_t sub_10001BB00()
{
  v1 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001BBD8(uint64_t a1)
{
  v4 = *(type metadata accessor for ModelManagerGameAssertionPolicy() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001C4B0;

  return sub_10001A22C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10001BCF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001C4B0;

  return sub_1000185EC();
}

uint64_t sub_10001BDAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BDE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001BE24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10001AB10();
}

uint64_t sub_10001BE2C()
{
  v1 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001BEF8()
{
  v1 = *(*(type metadata accessor for ModelManagerGameAssertionPolicy() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_10001ACF8(v2, v3);
}

uint64_t sub_10001BF5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001BFA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001C4B0;

  return sub_1000185EC();
}

uint64_t sub_10001C058()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001C4B0;

  return sub_1000185EC();
}

uint64_t sub_10001C10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C17C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C1B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C4B0;

  return sub_10001B180(a1, v5);
}

uint64_t sub_10001C26C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A138;

  return sub_10001B180(a1, v5);
}

uint64_t sub_10001C324()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C364()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001C4B0;

  return sub_1000185EC();
}

unint64_t sub_10001C42C()
{
  result = qword_100054480;
  if (!qword_100054480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054480);
  }

  return result;
}

uint64_t sub_10001C4C0()
{
  swift_weakDestroy();

  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = *(v0 + 128);

  return v0;
}

uint64_t sub_10001C548()
{
  sub_10001C4C0();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10001C5A0()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C5F4()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 64);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C648()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 72);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C69C()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 80);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C6F0()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 48);
  [*(v1 + 24) unlock];
  return v2;
}

uint64_t sub_10001C738()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 88);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C78C()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 104);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C7E0()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 112);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C834()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 96);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C888()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 120);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C8DC()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 128);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

Swift::Int sub_10001C944()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001C9B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_10001C9FC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10001CA20(uint64_t a1, char a2)
{
  v3 = v2;
  v57 = type metadata accessor for OSSignpostID();
  v55 = *(v57 - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(v57);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v52 - v13;
  v53 = type metadata accessor for String.Encoding();
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v53);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + 16);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    if (*(v3 + 48) != (a1 & 1) || (a2 & 1) != 0)
    {
      *(v3 + 48) = a1 & 1;
      v26 = *(v3 + 24);
      swift_beginAccess();
      if (v26[12])
      {
        v52 = a1;
        if (a1)
        {
          v27 = sub_10001EA40(0xFFFFFFFFFFFFFFFELL) + 1;
          *(v3 + 56) = v27;
          swift_beginAccess();
          notify_set_state(v26[13], v27);
          v60 = 0xD000000000000029;
          v61 = 0x8000000100041330;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v28 = StringProtocol.cString(using:)();
          v29 = *(v14 + 8);
          v30 = v53;
          v29(v17, v53);
          if (v28)
          {
            v31 = (v28 + 32);
          }

          else
          {
            v31 = 0;
          }

          notify_post(v31);
        }

        else
        {
          swift_beginAccess();
          notify_set_state(v26[14], *(v3 + 56));
          v60 = 0xD000000000000027;
          v61 = 0x8000000100041360;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v35 = StringProtocol.cString(using:)();
          v29 = *(v14 + 8);
          v30 = v53;
          v29(v17, v53);
          if (v35)
          {
            v36 = (v35 + 32);
          }

          else
          {
            v36 = 0;
          }

          notify_post(v36);

          *(v3 + 56) = 0;
        }

        v37 = v52;
        notify_set_state(v26[12], v52 & 1);
        v60 = 0xD000000000000027;
        v61 = 0x8000000100041300;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v38 = StringProtocol.cString(using:)();
        v29(v17, v30);
        if (v38)
        {
          v39 = (v38 + 32);
        }

        else
        {
          v39 = 0;
        }

        notify_post(v39);

        v40 = v54;
        static Logger.daemon.getter();
        swift_retain_n();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v60 = v44;
          *v43 = 136446466;
          if (v37)
          {
            v45 = 0x657669746361;
          }

          else
          {
            v45 = 0x6576697463616E69;
          }

          if (v37)
          {
            v46 = 0xE600000000000000;
          }

          else
          {
            v46 = 0xE800000000000000;
          }

          v47 = sub_100034C38(v45, v46, &v60);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2048;
          v48 = *(v3 + 56);

          *(v43 + 14) = v48;

          _os_log_impl(&_mh_execute_header, v41, v42, "Gaming session is now %{public}s with ID %llu.", v43, 0x16u);
          sub_100003964(v44);
        }

        else
        {
        }

        (*(v58 + 8))(v40, v59);
        v49 = (v55 + 8);
        if (v37)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v50 = static Logger.stateTracking.getter();
        v51 = v56;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v49)(v51, v57);
      }

      else
      {
        static Logger.daemon.getter();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Unable to post game session darwin notification - token is invalid!", v34, 2u);
        }

        return (*(v58 + 8))(v12, v59);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D13C(uint64_t a1, char a2)
{
  v3 = v2;
  v57 = type metadata accessor for OSSignpostID();
  v55 = *(v57 - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(v57);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v52 - v13;
  v53 = type metadata accessor for String.Encoding();
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v53);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + 16);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    if (*(v3 + 34) != (a1 & 1) || (a2 & 1) != 0)
    {
      *(v3 + 34) = a1 & 1;
      v26 = *(v3 + 24);
      swift_beginAccess();
      if (v26[12])
      {
        v52 = a1;
        if (a1)
        {
          v27 = sub_10001EA40(0xFFFFFFFFFFFFFFFELL) + 1;
          *(v3 + 40) = v27;
          swift_beginAccess();
          notify_set_state(v26[10], v27);
          v61 = 0xD000000000000034;
          v62 = 0x8000000100041280;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v28 = StringProtocol.cString(using:)();
          v29 = *(v14 + 8);
          v30 = v53;
          v29(v17, v53);
          if (v28)
          {
            v31 = (v28 + 32);
          }

          else
          {
            v31 = 0;
          }

          notify_post(v31);
        }

        else
        {
          swift_beginAccess();
          notify_set_state(v26[11], *(v3 + 40));
          v61 = 0xD000000000000032;
          v62 = 0x80000001000412C0;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v35 = StringProtocol.cString(using:)();
          v29 = *(v14 + 8);
          v30 = v53;
          v29(v17, v53);
          if (v35)
          {
            v36 = (v35 + 32);
          }

          else
          {
            v36 = 0;
          }

          notify_post(v36);

          *(v3 + 40) = 0;
        }

        swift_beginAccess();
        v37 = v52;
        notify_set_state(v26[9], v52 & 1);
        v60[0] = 0xD000000000000032;
        v60[1] = 0x8000000100041240;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v38 = StringProtocol.cString(using:)();
        v29(v17, v30);
        if (v38)
        {
          v39 = (v38 + 32);
        }

        else
        {
          v39 = 0;
        }

        notify_post(v39);

        v40 = v54;
        static Logger.daemon.getter();
        swift_retain_n();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v60[0] = v44;
          *v43 = 136446466;
          if (v37)
          {
            v45 = 0x657669746361;
          }

          else
          {
            v45 = 0x6576697463616E69;
          }

          if (v37)
          {
            v46 = 0xE600000000000000;
          }

          else
          {
            v46 = 0xE800000000000000;
          }

          v47 = sub_100034C38(v45, v46, v60);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2048;
          v48 = *(v3 + 40);

          *(v43 + 14) = v48;

          _os_log_impl(&_mh_execute_header, v41, v42, "Full screen gaming session is now %{public}s with ID %llu.", v43, 0x16u);
          sub_100003964(v44);
        }

        else
        {
        }

        (*(v58 + 8))(v40, v59);
        v49 = (v55 + 8);
        if (v37)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v50 = static Logger.stateTracking.getter();
        v51 = v56;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v49)(v51, v57);
      }

      else
      {
        static Logger.daemon.getter();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Unable to post fullscreen game session darwin notification - token is invalid!", v34, 2u);
        }

        return (*(v58 + 8))(v12, v59);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D870(char a1, int a2)
{
  v49 = a2;
  v46 = type metadata accessor for OSSignpostID();
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v46);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v43 - v11;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + 16);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    if (*(v2 + 32) != (a1 & 1) || (v49 & 1) != 0)
    {
      *(v2 + 32) = a1 & 1;
      v25 = *(v2 + 24);
      swift_beginAccess();
      v26 = *(v25 + 20);
      if (v26)
      {
        notify_set_state(v26, a1 & 1);
        v50[0] = 0xD00000000000002FLL;
        v50[1] = 0x8000000100041170;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v27 = StringProtocol.cString(using:)();
        (*(v13 + 8))(v16, v12);
        if (v27)
        {
          v28 = (v27 + 32);
        }

        else
        {
          v28 = 0;
        }

        notify_post(v28);

        v29 = v43;
        static Logger.daemon.getter();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v50[0] = v33;
          *v32 = 136446210;
          if (a1)
          {
            v34 = 0x6C62616C69617661;
          }

          else
          {
            v34 = 0x616C696176616E75;
          }

          if (a1)
          {
            v35 = 0xE900000000000065;
          }

          else
          {
            v35 = 0xEB00000000656C62;
          }

          v36 = sub_100034C38(v34, v35, v50);

          *(v32 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v30, v31, "Game mode is now %{public}s.", v32, 0xCu);
          sub_100003964(v33);
        }

        (*(v47 + 8))(v29, v48);
        v37 = (v44 + 8);
        if (a1)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v41 = static Logger.stateTracking.getter();
        v42 = v45;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v37)(v42, v46);
      }

      else
      {
        static Logger.daemon.getter();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Unable to post game mode available darwin notification - token is invalid!", v40, 2u);
        }

        return (*(v47 + 8))(v10, v48);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DE04(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v39 - v11;
  v12 = type metadata accessor for String.Encoding();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    if (*(v3 + 64) != a1 || (a2 & 1) != 0)
    {
      *(v3 + 64) = a1;
      v24 = *(v3 + 24);
      swift_beginAccess();
      v25 = *(v24 + 24);
      if (v25)
      {
        notify_set_state(v25, a1);
        v44[0] = 0xD000000000000029;
        v44[1] = 0x80000001000411A0;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v26 = StringProtocol.cString(using:)();
        (*(v39 + 8))(v15, v12);
        if (v26)
        {
          v27 = (v26 + 32);
        }

        else
        {
          v27 = 0;
        }

        notify_post(v27);

        v28 = v40;
        static Logger.daemon.getter();

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v44[0] = v32;
          *v31 = 136446210;
          v43 = *(v3 + 64);
          v33 = String.init<A>(describing:)();
          v35 = sub_100034C38(v33, v34, v44);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "Game mode status is now %{public}s.", v31, 0xCu);
          sub_100003964(v32);
        }

        return (*(v41 + 8))(v28, v42);
      }

      else
      {
        static Logger.daemon.getter();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Unable to post game mode available darwin notification - token is invalid!", v38, 2u);
        }

        return (*(v41 + 8))(v10, v42);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E284(char a1, int a2)
{
  v49 = a2;
  v46 = type metadata accessor for OSSignpostID();
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v46);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v42 - v11;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + 16);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    if (*(v2 + 33) != (a1 & 1) || (v49 & 1) != 0)
    {
      *(v2 + 33) = a1 & 1;
      v25 = *(v2 + 24);
      swift_beginAccess();
      if (*(v25 + 20))
      {
        swift_beginAccess();
        notify_set_state(*(v25 + 32), a1 & 1);
        v50[0] = 0xD000000000000025;
        v50[1] = 0x8000000100041210;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v26 = StringProtocol.cString(using:)();
        (*(v13 + 8))(v16, v12);
        if (v26)
        {
          v27 = (v26 + 32);
        }

        else
        {
          v27 = 0;
        }

        notify_post(v27);

        v28 = v43;
        static Logger.daemon.getter();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v50[0] = v32;
          *v31 = 136446210;
          if (a1)
          {
            v33 = 1702195828;
          }

          else
          {
            v33 = 0x65736C6166;
          }

          if (a1)
          {
            v34 = 0xE400000000000000;
          }

          else
          {
            v34 = 0xE500000000000000;
          }

          v35 = sub_100034C38(v33, v34, v50);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "Game Policy active games is now %{public}s.", v31, 0xCu);
          sub_100003964(v32);
        }

        (*(v47 + 8))(v28, v48);
        v36 = (v44 + 8);
        if (a1)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v40 = static Logger.stateTracking.getter();
        v41 = v45;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v36)(v41, v46);
      }

      else
      {
        static Logger.daemon.getter();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Unable to post active games darwin notification - token is invalid!", v39, 2u);
        }

        return (*(v47 + 8))(v10, v48);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E818()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 65, 7);
}

uint64_t getEnumTagSinglePayload for GamePolicyMobileAssetRetriever.Status.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GamePolicyMobileAssetRetriever.Status.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001E9EC()
{
  result = qword_100054940;
  if (!qword_100054940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054940);
  }

  return result;
}

unint64_t sub_10001EA40(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001EACC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10001EB78()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = qword_100053488;
    v3 = *(v0 + 48);

    if (v2 != -1)
    {
      swift_once();
    }

    v4 = off_1000541F8;
    v5 = *(off_1000541F8 + 2);

    [v5 lock];
    sub_1000173E8(v4, v1);
    [v5 unlock];
  }

  sub_10000B4A8(v0 + 32);
  v6 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 56, 7);
}

void sub_10001ED1C()
{
  type metadata accessor for GamePolicyCoordinatorObserver();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = &off_10004DF68;
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + 48);
  *(v0 + 48) = v1;

  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v3 = off_1000541F8;
  v4 = *(off_1000541F8 + 2);

  [v4 lock];
  sub_1000170B8(v3, v1);
  [v4 unlock];

  sub_10001C4BC(v15, v5);

  v6 = [*(v0 + 16) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003870(&qword_100054458, &qword_10003E7B0);
  if (swift_dynamicCast())
  {
    v7 = v15[1];
    v9 = v15[2];
    v8 = v15[3];
    v10 = v15[0];
    v11 = v8;
    v12 = v7;
    v13 = v9;
    [v14 updateStatus:v10 :v11 :v12 :v13];

    swift_unknownObjectRelease();
    sub_10001B150(v15);
  }

  else
  {
    sub_10001B150(v15);
  }
}

uint64_t sub_10001F1E0(int a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, void *))
{
  v6 = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  _Block_copy(v6);

  a5(v7, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

id sub_10001F32C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10001F414(void *a1, char a2)
{
  v4 = type metadata accessor for GameModeCCUIStatusState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v23[-v10];
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C4BC(v25, v12);

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  if (a2)
  {
    v14 = GameModeStatus.allGameBundleIdentifiers.getter();
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v24[0] = v13;
  sub_1000208EC(v14);
  v15 = sub_100021664(v24[0]);

  v16 = *(v5 + 104);
  if (v26 == 2)
  {
    v16(v11, enum case for GameModeCCUIStatusState.forcedOff(_:), v4);
    if (*(v15 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (v26 == 1)
  {
    v16(v11, enum case for GameModeCCUIStatusState.forcedOn(_:), v4);
    if (*(v15 + 16))
    {
      goto LABEL_15;
    }

LABEL_17:
    sub_100003870(&qword_100054B30, &unk_10003EBF0);
    v17 = swift_allocObject();
    v17[1] = xmmword_10003EB40;
    v22 = objc_allocWithZone(type metadata accessor for GameModeCCUIStatusBundleInfo());
    *(v17 + 4) = GameModeCCUIStatusBundleInfo.init(executableDisplayName:bundleIdentifier:isSystemService:isAAAGame:usedRecently:state:)();
    goto LABEL_16;
  }

  v16(v11, enum case for GameModeCCUIStatusState.enabled(_:), v4);
LABEL_15:
  v17 = &_swiftEmptyArrayStorage;
LABEL_16:
  sub_10001B118(v25, v24);

  v18 = sub_100020B54(v15, v25);

  sub_10001B150(v25);

  (*(v5 + 16))(v9, v11, v4);
  v24[0] = v17;
  sub_1000207FC(v18);
  v19 = objc_allocWithZone(type metadata accessor for GameModeCCUIStatusInfo());
  v20 = GameModeCCUIStatusInfo.init(state:bundles:)();
  sub_10001B150(v25);
  (*(v5 + 8))(v11, v4);
  return v20;
}

uint64_t sub_10001F97C(uint64_t a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);

  a5(v8, v10, a1, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_10001FA3C(uint64_t a1, int a2, uint64_t a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);

  a6(a3, v10, v12, a1, v9);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_10001FC64(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001FD0C;

  return sub_100022400();
}

uint64_t sub_10001FD0C(unsigned int a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1, (a1 >> 8) & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10001FFCC(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100020080;

  return sub_100022674(a1);
}

uint64_t sub_100020080(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

void sub_1000201C0(int a1, int a2, void *aBlock, uint64_t (*a4)(uint64_t))
{
  v5 = _Block_copy(aBlock);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v7 = a4(v6);

  v5[2](v5, v7);
  _Block_release(v5);
}

void sub_100020298(int a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t))
{
  v7 = _Block_copy(aBlock);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  a5(v8, a3);

  v7[2](v7, 1);

  _Block_release(v7);
}

uint64_t sub_100020370(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001C4B0;

  return v7();
}

uint64_t sub_100020458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10001A138;

  return v8();
}

uint64_t sub_100020540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10001C10C(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000219F4(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000219F4(a3);

    return v23;
  }

LABEL_8:
  sub_1000219F4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000207FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000256F4();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000393B8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000208EC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100023ABC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000209E0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100020A38(uint64_t a1, uint64_t a2)
{
  sub_100021724();

  v4 = sub_10001F32C(a1, a2, 0);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = v5, v7 = [v5 applicationState], v8 = objc_msgSend(v7, "isValid"), v7, v8))
  {
    v9 = [v6 localizedName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 9666786;
  }

  return v10;
}

void *sub_100020B54(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v35 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = v2 + 56;
    v7 = -1 << *(v2 + 32);
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v33 = *(v2 + 36);
    v30 = *(a2 + 24);
    v31 = v2;
    v27 = v2 + 64;
    v28 = v3;
    v29 = v2 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v33 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v32 = v9;
      v13 = (*(v2 + 48) + 16 * v8);
      v15 = *v13;
      v14 = v13[1];

      v16 = ModelManagerGameAssertionStatus.aaaBundleIdentifiers.getter();
      v34[0] = v15;
      v34[1] = v14;
      __chkstk_darwin(v16);
      v26[2] = v34;
      sub_10001EACC(sub_1000216FC, v26, v16);

      sub_100020A38(v15, v14);
      v17 = objc_allocWithZone(type metadata accessor for GameModeCCUIStatusBundleInfo());
      GameModeCCUIStatusBundleInfo.init(executableDisplayName:bundleIdentifier:isSystemService:isAAAGame:usedRecently:state:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = v35[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v2 = v31;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v10 = 1 << *(v2 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v6 = v29;
      v19 = *(v29 + 8 * v12);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (v33 != *(v2 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v28;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v27 + 8 * v12);
        v11 = v28;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_100021718(v8, v33, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_100021718(v8, v33, 0);
      }

LABEL_4:
      v9 = v32 + 1;
      v8 = v10;
      if (v32 + 1 == v11)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100020FC4(char a1, char a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a3);
  static Logger.tool.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "requestLaunchGameOverlay", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v14 = off_1000541F8;
  _Block_copy(a3);

  sub_10001B70C(a1 & 1, a2 & 1, v14, a3);
  _Block_release(a3);

  _Block_release(a3);
}

void sub_100021190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v6 = dispatch thunk of GlobalPreferences.semAllowList.getter();

  v13[0] = a1;
  v13[1] = a2;
  v12[2] = v13;

  v7 = sub_10001EACC(sub_100022B90, v12, v6);

  if ((v7 & 1) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100023ABC(0, *(v6 + 16) + 1, 1, v6);
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_100023ABC((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 16 * v9;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
  }

  dispatch thunk of static GlobalPreferences.shared.getter();

  dispatch thunk of GlobalPreferences.semAllowList.setter();

  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10002130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1000213AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v6 = dispatch thunk of GlobalPreferences.semAllowList.getter();

  v33[0] = a1;
  v33[1] = a2;
  v32 = v33;

  v7 = sub_10001EACC(sub_100022B90, v31, v6);

  if ((v7 & 1) == 0)
  {
LABEL_16:
    dispatch thunk of static GlobalPreferences.shared.getter();

    dispatch thunk of GlobalPreferences.semAllowList.setter();

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa);

    return;
  }

  v8 = sub_10002130C(v6, a1, a2);
  if (v9)
  {
    v10 = *(v6 + 16);
    v11 = v10;
    goto LABEL_8;
  }

  v11 = v8;
  v12 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v30 = a3;
    v13 = *(v6 + 16);

    if (v12 == v13)
    {
LABEL_6:

      v10 = *(v6 + 16);
      if (v10 >= v11)
      {
        a3 = v30;
        if ((v11 & 0x8000000000000000) == 0)
        {
LABEL_8:
          if (!__OFADD__(v10, v11 - v10))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v33[0] = v6;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v11 > *(v6 + 24) >> 1)
            {
              if (v10 <= v11)
              {
                v15 = v11;
              }

              else
              {
                v15 = v10;
              }

              v33[0] = sub_100023ABC(isUniquelyReferenced_nonNull_native, v15, 1, v6);
            }

            sub_10002597C(v11, v10, 0);
            goto LABEL_16;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v17 = 16 * v11;
      while (v12 < v13)
      {
        v20 = *(v6 + v17 + 48);
        v21 = *(v6 + v17 + 56);
        if (v20 != a1 || v21 != a2)
        {
          v23 = *(v6 + v17 + 48);
          v24 = *(v6 + v17 + 56);
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (v12 != v11)
            {
              if (v11 >= v13)
              {
                goto LABEL_37;
              }

              v25 = (v6 + 32 + 16 * v11);
              v26 = *v25;
              v27 = v25[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_10002579C(v6);
              }

              v28 = v6 + 16 * v11;
              v29 = *(v28 + 40);
              *(v28 + 32) = v20;
              *(v28 + 40) = v21;

              if (v12 >= *(v6 + 16))
              {
                goto LABEL_38;
              }

              v18 = v6 + v17;
              v19 = *(v6 + v17 + 56);
              *(v18 + 48) = v26;
              *(v18 + 56) = v27;
            }

            ++v11;
          }
        }

        ++v12;
        v13 = *(v6 + 16);
        v17 += 16;
        if (v12 == v13)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_100021664(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100035DFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100021718(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_100021724()
{
  result = qword_100054B38;
  if (!qword_100054B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054B38);
  }

  return result;
}

uint64_t sub_100021770()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000217B0()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A138;

  return sub_10001FFCC(v2, v4);
}

uint64_t sub_100021868()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001C4B0;

  return sub_100020370(v2, v3, v5);
}

uint64_t sub_100021928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C4B0;

  return sub_100020458(a1, v4, v5, v7);
}

uint64_t sub_1000219F4(uint64_t a1)
{
  v2 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021A5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021A94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C4B0;

  return sub_10001B180(a1, v5);
}

uint64_t sub_100021B4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A138;

  return sub_10001B180(a1, v5);
}

void sub_100021C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003870(&qword_100055270, " Y");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EB50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_10001F414(inited, 0);
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = dispatch thunk of GameModeCCUIStatusInfo.bundles.getter();

  if (v10 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v18 = a4;
    a4 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (dispatch thunk of GameModeCCUIStatusBundleInfo.bundleIdentifier.getter() == a1 && v16 == a2)
      {

        goto LABEL_15;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_15;
      }

      ++v12;
      if (v15 == i)
      {
        v14 = 0;
LABEL_15:
        a4 = v18;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v14 = 0;
LABEL_20:

  (*(a4 + 16))(a4, v14);
}

void sub_100021DE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (**aBlock)(void, void))
{
  if ((a1 - 1) < 2)
  {
    GameModeCCUIStatusBundleState.rawValue.getter();
    GameModeCCUIStatusBundleState.rawValue.getter();
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    sub_100003870(&qword_100055270, " Y");
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10003EB50;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;

    dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

    v9 = [objc_opt_self() defaultCenter];
    if (qword_100053480 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_100056600 object:0];

    goto LABEL_7;
  }

  if (!a1 || a1 == 3)
  {
LABEL_7:
    sub_100003870(&qword_100055270, " Y");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10003EB50;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v11 = sub_10001F414(inited, 1);
    swift_setDeallocating();
    v12 = *(inited + 16);
    swift_arrayDestroy();
    (aBlock)[2](aBlock, v11);

    return;
  }

  _Block_release(aBlock);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_100021FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003870(&qword_100055270, " Y");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EB50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_10001F414(inited, 0);
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = dispatch thunk of GameModeCCUIStatusInfo.bundles.getter();

  if (v10 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (dispatch thunk of GameModeCCUIStatusBundleInfo.bundleIdentifier.getter() == a1 && v16 == a2)
      {

LABEL_15:

        v18 = dispatch thunk of GameModeCCUIStatusBundleInfo.revlock.getter();

        goto LABEL_20;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_15;
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v18 = 0;
LABEL_20:
  (*(a4 + 16))(a4, v18);
}

void sub_1000221E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (**aBlock)(void, void))
{
  if ((a1 - 1) < 2)
  {
    GameModeCCUIStatusBundleState.rawValue.getter();
    GameModeCCUIStatusBundleState.rawValue.getter();
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    sub_100003870(&qword_100055270, " Y");
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10003EB50;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;

    dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

    v9 = [objc_opt_self() defaultCenter];
    if (qword_100053480 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_100056600 object:0];

    goto LABEL_7;
  }

  if (!a1 || a1 == 3)
  {
LABEL_7:
    sub_100003870(&qword_100055270, " Y");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10003EB50;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v11 = sub_10001F414(inited, 1);
    swift_setDeallocating();
    v12 = *(inited + 16);
    swift_arrayDestroy();
    v13 = dispatch thunk of GameModeCCUIStatusInfo.revlock.getter();

    (aBlock)[2](aBlock, v13);
    return;
  }

  _Block_release(aBlock);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_100022400()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000224BC, 0, 0);
}

uint64_t sub_1000224BC()
{
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v1 = v0[4];

  v3 = sub_10001C48C(v2);

  v4 = *(GameModeStatus.gameBundleIdentifiers.getter() + 16);

  v5 = GameModeStatus.enabled.getter();
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v4 != 0;
    *(v8 + 8) = 1024;
    *(v8 + 10) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "requestGameMode(%{BOOL}d %{BOOL}d)", v8, 0xEu);
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  (*(v10 + 8))(v9, v11);

  if (v5)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  if (v4)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_100022674(char a1)
{
  *(v1 + 40) = a1;
  v2 = type metadata accessor for Logger();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_100022734, 0, 0);
}

uint64_t sub_100022734()
{
  v24 = v0;
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);

  v3 = sub_10001C48C(v2);

  GameModeStatus.gameBundleIdentifiers.getter();
  static Logger.daemon.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);
  if (v6)
  {
    v21 = *(v0 + 32);
    v10 = *(v0 + 40);
    v22 = v3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 67109378;
    *(v11 + 4) = v10;
    *(v11 + 8) = 2080;
    v13 = Array.description.getter();
    v15 = sub_100034C38(v13, v14, &v23);

    *(v11 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "gameModeEnabled:(%{BOOL}d for:%s", v11, 0x12u);
    sub_100003964(v12);

    v3 = v22;

    (*(v8 + 8))(v21, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v16 = *(v0 + 40);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

  v17 = [objc_opt_self() defaultCenter];
  if (qword_100053480 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 32);
  [v17 postNotificationName:qword_100056600 object:{0, v21}];

  v19 = *(v0 + 8);

  return v19(1);
}

uint64_t sub_1000229FC()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022A3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001C4B0;

  return sub_10001FC64(v2);
}

uint64_t sub_100022AE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100022B28(void *a1)
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

uint64_t sub_100022BAC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v42);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000234A0();
  static DispatchQoS.unspecified.getter();
  v48 = &_swiftEmptyArrayStorage;
  sub_100023504();
  sub_100003870(&qword_100054438, &qword_10003E788);
  sub_10002355C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 16) = v13;
  *(v1 + 56) = 0;
  *(v1 + 64) = 2;
  v14 = type metadata accessor for GamePolicyToolCoordinator();
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock;
  v17 = objc_allocWithZone(NSLock);
  v18 = v13;
  *&v15[v16] = [v17 init];
  *&v15[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_toolProxies] = &_swiftEmptyArrayStorage;
  *&v15[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_privilegedToolProxies] = &_swiftEmptyArrayStorage;
  *&v15[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_queue] = v18;
  v47.receiver = v15;
  v47.super_class = v14;
  *(v1 + 24) = objc_msgSendSuper2(&v47, "init");
  v19 = objc_allocWithZone(NSXPCListener);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithMachServiceName:v20];

  *(v1 + 32) = v21;
  [v21 setDelegate:*(v1 + 24)];
  [*(v1 + 32) resume];
  v22 = *(v1 + 16);
  v23 = type metadata accessor for GamePolicyAppCoordinator();
  v24 = objc_allocWithZone(v23);
  v25 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock;
  v26 = objc_allocWithZone(NSLock);
  v27 = v22;
  *&v24[v25] = [v26 init];
  *&v24[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_apps] = &_swiftEmptyArrayStorage;
  *&v24[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_privilegedApps] = &_swiftEmptyArrayStorage;
  *&v24[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_delegateQueue] = v27;
  v46.receiver = v24;
  v46.super_class = v23;
  *(v1 + 40) = objc_msgSendSuper2(&v46, "init");
  v28 = objc_allocWithZone(NSXPCListener);
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 initWithMachServiceName:v29];

  *(v1 + 48) = v30;
  [v30 setDelegate:*(v1 + 40)];
  v31 = v43;
  [*(v1 + 48) resume];
  static Logger.daemon.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "GamePolicyDaemon has initialized!", v34, 2u);
  }

  (*(v44 + 8))(v31, v45);
  if (sub_100023178() & 1) != 0 || (type metadata accessor for GlobalPreferences(), dispatch thunk of static GlobalPreferences.shared.getter(), v35 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter(), , (v35))
  {
    v36 = *(v1 + 16);
    v37 = objc_allocWithZone(type metadata accessor for EmbeddedGameProcessMonitor());
    v38 = sub_100026980(v36);
    v39 = *(v1 + 56);
    *(v1 + 56) = v38;

    if (qword_100053488 != -1)
    {
      swift_once();
    }

    *(off_1000541F8 + 6) = &off_10004E0D0;
    swift_unknownObjectWeakAssign();
  }

  return v1;
}

uint64_t sub_100023178()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_100001E44();
    *(v0 + 64) = v1;
  }

  return v1 & 1;
}

void sub_1000231A4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "startup", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_1000234A0();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023398;
  aBlock[3] = &unk_10004E0F0;
  v11 = _Block_copy(aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v10, v11);
  _Block_release(v11);

  v12 = *(v1 + 56);
  if (v12)
  {
    v13 = v12;
    sub_100031A3C();
  }
}

uint64_t sub_100023398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000233F8()
{

  return _swift_deallocClassInstance(v0, 65, 7);
}

unint64_t sub_1000234A0()
{
  result = qword_100053B00;
  if (!qword_100053B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053B00);
  }

  return result;
}

uint64_t sub_1000234EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100023504()
{
  result = qword_100054430;
  if (!qword_100054430)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054430);
  }

  return result;
}

unint64_t sub_10002355C()
{
  result = qword_100054440;
  if (!qword_100054440)
  {
    sub_1000085E0(&qword_100054438, &qword_10003E788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054440);
  }

  return result;
}

Swift::Int _s11gamepolicyd30GamePolicyMobileAssetRetrieverC14RetrievalErrorO9hashValueSivg_0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t GamePolicyMobileAssetRetriever.Status.description.getter()
{
  _StringGuts.grow(_:)(66);
  v1._object = 0x80000001000421A0;
  v1._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v1);
  v7 = *(v0 + 16);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x3D726F72726520;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v8 = *(v0 + 24);
  swift_errorRetain();
  sub_100003870(&qword_100054C48, &qword_10003ED00);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3D746C7573657220;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v9 = *(v0 + 32);

  sub_100003870(&qword_100054C50, &qword_10003ED08);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  return 0;
}

uint64_t GamePolicyMobileAssetRetriever.Status.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t GamePolicyMobileAssetRetriever.Status.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t GamePolicyMobileAssetRetriever.assetType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

id GamePolicyMobileAssetRetriever.registerCompletionHandler(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  [*(v2 + 56) lock];
  if (*(*(v2 + 40) + 16))
  {
    v6 = *(v2 + 40);

    a1(v7);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    swift_beginAccess();
    v9 = *(v3 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 48) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100023BC8(0, v9[2] + 1, 1, v9);
      *(v3 + 48) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100023BC8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[2 * v12];
    v13[4] = sub_100023A08;
    v13[5] = v8;
    *(v3 + 48) = v9;
    swift_endAccess();
  }

  return [*(v3 + 56) unlock];
}

uint64_t sub_1000239D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023A08(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t GamePolicyMobileAssetRetriever.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t GamePolicyMobileAssetRetriever.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 64, 7);
}

char *sub_100023ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100055270, " Y");
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

void *sub_100023BC8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003870(&qword_100054EB0, &qword_10003EF18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003870(&qword_100054EB8, &unk_10003EF20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100023D00()
{
  result = qword_100054C58;
  if (!qword_100054C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C58);
  }

  return result;
}

unint64_t sub_100023D58()
{
  result = qword_100054C60;
  if (!qword_100054C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GamePolicyMobileAssetRetriever.RetrievalError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GamePolicyMobileAssetRetriever.RetrievalError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_100023F68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100054EA8, &qword_10003EF10);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10002406C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100055290, &qword_10003F0F0);
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

void sub_1000241E4()
{
  [*(v0 + 16) auditToken];
  v1 = *(v0 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 40) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v1 = sub_100023F68(0, *(v1 + 2) + 1, 1, v1);
    *(v0 + 40) = v1;
  }

  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  if (v4 >= v3 >> 1)
  {
    v1 = sub_100023F68((v3 > 1), v4 + 1, 1, v1);
  }

  *(v1 + 2) = v4 + 1;
  v5 = &v1[32 * v4];
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *(v0 + 40) = v1;
  v6 = [objc_opt_self() defaultCenter];
  v7 = v6;
  if (qword_100053458 != -1)
  {
    swift_once();
    v6 = v7;
  }

  [v6 addObserver:v0 selector:? name:? object:?];
}

uint64_t sub_100024378()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100024520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100024564(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "acceptNewAgentConnection %@", v12, 0xCu);
    sub_1000255D0(v13);
  }

  (*(v5 + 8))(v8, v4);
  v15 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_delegateQueue);
  type metadata accessor for GamePolicyAppProxy();
  v16 = swift_allocObject();
  v16[4] = _swiftEmptyArrayStorage;
  v16[5] = _swiftEmptyArrayStorage;
  v16[2] = v9;
  v16[3] = v15;
  type metadata accessor for GamePolicyAppXPC();
  v17 = v9;
  v18 = v15;
  v19 = static GamePolicyAppXPC.GamePolicyAppClientInterface()();
  [v17 setRemoteObjectInterface:v19];

  v20 = static GamePolicyAppXPC.GamePolicyAppServerInterface()();
  [v17 setExportedInterface:v20];

  [v17 setExportedObject:v16];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v17;
  v37 = sub_100025EF4;
  v38 = v22;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100024520;
  v36 = &unk_10004E378;
  v23 = _Block_copy(&aBlock);
  v24 = v17;

  [v24 setInvalidationHandler:v23];
  _Block_release(v23);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  v37 = sub_100025F34;
  v38 = v26;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100024520;
  v36 = &unk_10004E3C8;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  [v28 setInterruptionHandler:v27];
  _Block_release(v27);
  v29 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock);
  [v29 lock];
  v30 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_apps;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v32 = *((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v29 unlock];
  [v28 resume];

  return 1;
}

uint64_t sub_1000249F8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "acceptNewPrivilegedAgentConnection %@", v12, 0xCu);
    sub_1000255D0(v13);
  }

  (*(v5 + 8))(v8, v4);
  v15 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_delegateQueue);
  type metadata accessor for GamePolicyPrivilegedAppProxy();
  v16 = swift_allocObject();
  v17 = qword_100053450;
  v18 = v15;
  if (v17 != -1)
  {
    v33 = v18;
    swift_once();
    v18 = v33;
  }

  v16[4] = qword_1000538A0;
  v16[5] = &_swiftEmptySetSingleton;
  v16[2] = v9;
  v16[3] = v18;
  type metadata accessor for GamePolicyPrivilegedAppXPC();
  v19 = v9;

  v20 = static GamePolicyPrivilegedAppXPC.GamePolicyPrivilegedAppClientInterface()();
  [v19 setRemoteObjectInterface:v20];

  v21 = static GamePolicyPrivilegedAppXPC.GamePolicyPrivilegedAppServerInterface()();
  [v19 setExportedInterface:v21];

  [v19 setExportedObject:v16];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v19;
  v39 = sub_100025538;
  v40 = v23;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100024520;
  v38 = &unk_10004E2D8;
  v24 = _Block_copy(&aBlock);
  v25 = v19;

  [v25 setInvalidationHandler:v24];
  _Block_release(v24);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v39 = sub_100025590;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100024520;
  v38 = &unk_10004E328;
  v28 = _Block_copy(&aBlock);
  v29 = v25;

  [v29 setInterruptionHandler:v28];
  _Block_release(v28);
  v30 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock);
  [v30 lock];
  v31 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_privilegedApps;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*(v2 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v30 unlock];
  [v29 resume];

  return 1;
}

void sub_100024ED8(uint64_t a1, void *a2, const char *a3, uint64_t *a4, void (*a5)(void))
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    static Logger.appCoordinator.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, a3, v18, 2u);
    }

    (*(v10 + 8))(v13, v9);
    v19 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock;
    [*&v15[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock] lock];
    v20 = *a4;
    swift_beginAccess();
    v21 = a2;
    v22 = sub_100025A3C(&v15[v20]);

    v23 = *&v15[v20];
    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v25 = *&v15[v20];
      }

      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24 >= v22)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24 >= v22)
      {
LABEL_6:
        sub_10002586C(v22, v24, sub_1000256F8, a5);
        swift_endAccess();
        [*&v15[v19] unlock];

        return;
      }
    }

    __break(1u);
  }
}

void sub_100025138(uint64_t a1, void *a2, const char *a3, uint64_t *a4, void (*a5)(void))
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    static Logger.appCoordinator.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, a3, v18, 2u);
    }

    (*(v10 + 8))(v13, v9);
    v19 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock;
    [*&v15[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock] lock];
    v20 = *a4;
    swift_beginAccess();
    v21 = a2;
    v22 = sub_100025A3C(&v15[v20]);

    v23 = *&v15[v20];
    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v25 = *&v15[v20];
      }

      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24 >= v22)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24 >= v22)
      {
LABEL_6:
        sub_10002586C(v22, v24, sub_1000256F8, a5);
        swift_endAccess();
        [*&v15[v19] unlock];
        [v21 invalidate];

        return;
      }
    }

    __break(1u);
  }
}

id sub_100025438()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamePolicyAppCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000254FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000255D0(uint64_t a1)
{
  v2 = sub_100003870(&unk_100053C00, &qword_10003E810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100025638(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000256F8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000257B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10002586C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_100025C9C(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10002597C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100025A3C(unint64_t *a1)
{
  v3 = *a1;
  v4 = sub_100025DA0(*a1);
  v6 = v4;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v9 = *(v3 + 8 * v7 + 32);

LABEL_16:
    sub_100025EA8();
    v10 = *(v9 + 16);
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v14)
          {
            goto LABEL_46;
          }

          if (v7 >= v14)
          {
            goto LABEL_47;
          }

          v12 = *(v3 + 32 + 8 * v6);
          v13 = *(v3 + 32 + 8 * v7);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1000257B0(v3);
          v15 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v3 & 0xFFFFFFFFFFFFFF8;
        v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v13;

        if ((v3 & 0x8000000000000000) != 0 || v15)
        {
          v3 = sub_1000257B0(v3);
          v16 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_44;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v12;

        *a1 = v3;
      }

LABEL_8:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_43;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
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
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100025C9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100025DA0(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    sub_100025EA8();
    v6 = *(v5 + 16);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_100025EA8()
{
  result = qword_100055020;
  if (!qword_100055020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100055020);
  }

  return result;
}

uint64_t sub_100025F74(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = [a1 serviceName];
  if (!v10)
  {
    goto LABEL_7;
  }

  v37 = v7;
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0xD000000000000019 && 0x80000001000423F0 == v14)
  {

    goto LABEL_16;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v7 = v37;
  if (v16)
  {
LABEL_16:
    sub_100024564(a1);
    goto LABEL_19;
  }

LABEL_7:
  v17 = [a1 serviceName];
  if (!v17)
  {
LABEL_13:
    static Logger.toolCoordinator.getter();
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v25, v26))
    {
      v30 = 0;
      v9 = v7;
      goto LABEL_24;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "GamePolicyToolCoordinator: rejecting incoming connection %@", v27, 0xCu);
    v30 = 0;
    v9 = v7;
    goto LABEL_21;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == 0xD000000000000024 && 0x8000000100042170 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_1000249F8(a1);
LABEL_19:
  static Logger.toolCoordinator.getter();
  v31 = a1;
  v25 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v25, v32))
  {
    v30 = 1;
    goto LABEL_24;
  }

  v33 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *v33 = 138412290;
  *(v33 + 4) = v31;
  *v28 = v31;
  v34 = v31;
  _os_log_impl(&_mh_execute_header, v25, v32, "GamePolicyToolCoordinator: accepting incoming connection %@", v33, 0xCu);
  v30 = 1;
LABEL_21:
  sub_1000255D0(v28);

LABEL_24:

  (*(v3 + 8))(v9, v2);
  return v30;
}

uint64_t sub_100026338(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for EmbeddedGameProcess();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1000351E0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
    }
  }

  return 0;
}

uint64_t sub_1000263E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000264E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static CLPCSustainableModeOptions.debugDescriptions.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static CLPCSustainableModeOptions.debugDescriptions = a1;
}

uint64_t CLPCSustainableModeOptions.description.getter(uint64_t a1)
{
  swift_beginAccess();
  v2 = static CLPCSustainableModeOptions.debugDescriptions;
  v3 = static CLPCSustainableModeOptions.debugDescriptions + 4;
  v4 = static CLPCSustainableModeOptions.debugDescriptions[2];

  v6 = 0;
LABEL_2:
  v7 = &v3[3 * v6];
  while (v4 != v6)
  {
    if (v6 >= v2[2])
    {
      __break(1u);
      return result;
    }

    ++v6;
    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & ~a1) == 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v11;
      if ((result & 1) == 0)
      {
        result = sub_100035554(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100035554((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      v14[4] = v9;
      v14[5] = v23;
      v14[6] = v10;
      goto LABEL_2;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100035534(0, v15, 0);
    v16 = &_swiftEmptyArrayStorage[6];
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];

      if (v20 >= v19 >> 1)
      {
        sub_100035534((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      *(v21 + 4) = v18;
      *(v21 + 5) = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  sub_100003870(&qword_100055038, &unk_10003EFD0);
  sub_10003B0A0(&qword_100055040, &qword_100055038, &unk_10003EFD0);
  v22 = BidirectionalCollection<>.joined(separator:)();

  return v22;
}

uint64_t sub_100026980(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicSplitterStatus.Config();
  v91 = *(v4 - 8);
  v92 = v4;
  v5 = *(v91 + 64);
  __chkstk_darwin(v4);
  v90 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SustainedExecutionStatus.Config();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  __chkstk_darwin(v7);
  v87 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003870(&qword_100054428, &qword_10003E778);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v84 = &v78 - v12;
  v13 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = *(v85 + 64);
  __chkstk_darwin(v13);
  v83 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v78 - v21;
  v82 = type metadata accessor for GameModeStatus.Config();
  v81 = *(v82 - 8);
  v23 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_ignoredProcesses] = &_swiftEmptySetSingleton;
  v25 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  *&v2[v25] = sub_100039A18(&_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction] = 0;
  v26 = &v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotification];
  *v26 = 0xD000000000000025;
  v26[1] = 0x8000000100042DB0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotificationToken] = 0;
  v27 = &v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotification];
  *v27 = 0xD000000000000032;
  v27[1] = 0x8000000100042DE0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotificationToken] = 0;
  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisible] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_observationist] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_interface] = 0;
  type metadata accessor for GamePolicyNotificationTokens();
  swift_allocObject();
  v28 = sub_10000B890();
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens] = v28;
  type metadata accessor for GamePolicyStateManager();
  v29 = swift_allocObject();
  *(v29 + 32) = 0;
  *(v29 + 34) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  *(v29 + 16) = a1;
  *(v29 + 24) = v28;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_stateManager] = v29;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue] = a1;
  v30 = objc_allocWithZone(NSOperationQueue);
  v78 = a1;

  v31 = [v30 init];
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_operationQueue] = v31;
  if (sub_100001E44())
  {
    v32 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v32 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v33 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsGameMode;
  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsGameMode] = v32 & 1;
  if (sub_100001E4C())
  {
    v34 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v34 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v35 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsModelManagerGameAssertion;
  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsModelManagerGameAssertion] = v34 & 1;
  if (sub_10000259C())
  {
    v36 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v36 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v79 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter;
  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter] = v36 & 1;
  if (sub_100002C90())
  {
    v37 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v37 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v38 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionMode;
  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionMode] = v37 & 1;
  if (sub_100003394())
  {
    v39 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v39 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionModeAutomaticEnrollment] = v39 & 1;
  v40 = type metadata accessor for Date();
  v41 = *(*(v40 - 8) + 56);
  v41(v22, 1, 1, v40);
  v41(v20, 1, 1, v40);
  v42 = v2[v33];
  v43 = v80;
  GameModeStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:jettisonCameraS2R:gameBundleIdentifiers:previousGameBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:allGameBundleIdentifiers:previousAllGameBundleIdentifiers:enablementStrategy:perfomanceGamingModeEnabled:)();
  (*(v81 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig], v43, v82);
  v44 = type metadata accessor for ModelManagerGameAssertionPolicy();
  (*(*(v44 - 8) + 56))(v84, 1, 1, v44);
  v41(v22, 1, 1, v40);
  v41(v20, 1, 1, v40);
  v45 = v2[v35];
  v46 = v83;
  ModelManagerGameAssertionStatus.Config.init(policy:enablementDate:disablementDate:deviceSupported:aaaBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:policyStrategy:)();
  (*(v85 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_modelManagerGameAssertionStatusConfig], v46, v86);
  v41(v22, 1, 1, v40);
  v41(v20, 1, 1, v40);
  v47 = v2[v38];
  v48 = v87;
  SustainedExecutionStatus.Config.init(activePolicy:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  (*(v88 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_sustainedExecutionStatusConfig], v48, v89);
  v41(v22, 1, 1, v40);
  v41(v20, 1, 1, v40);
  v49 = v2[v79];
  v50 = v90;
  DynamicSplitterStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  (*(v91 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dynamicSplitterStatusConfig], v50, v92);
  v51 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [v51 setValues:17];
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_assertionDescriptor] = v51;
  v98 = nullsub_1;
  v99 = 0;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_10003B1C4;
  v97 = &unk_10004E930;
  v52 = _Block_copy(&aBlock);
  v53 = objc_opt_self();
  v54 = v51;
  v55 = [v53 monitorWithConfiguration:v52];
  _Block_release(v52);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_processMonitor] = v55;
    v57 = [objc_opt_self() nullDisplay];
    v58 = [objc_opt_self() keyboardFocusEnvironment];
    v59 = [objc_allocWithZone(BKSHIDEventDeliveryChainObserver) initWithDisplay:v57 environment:v58];

    v60 = type metadata accessor for EmbeddedGameProcessMonitor();
    v93.receiver = v2;
    v93.super_class = v60;
    v61 = objc_msgSendSuper2(&v93, "init");
    v62 = [v59 addChainObserver:v61];
    v63 = *&v61[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_observationist];
    *&v61[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_observationist] = v62;
    swift_unknownObjectRelease();
    v65 = *&v61[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotification];
    v64 = *&v61[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotification + 8];
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v98 = sub_10003B0E8;
    v99 = v66;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_1000276C0;
    v97 = &unk_10004E958;
    v67 = _Block_copy(&aBlock);
    v68 = v78;

    v69 = String.utf8CString.getter();

    v70 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotificationToken;
    swift_beginAccess();
    notify_register_dispatch((v69 + 32), &v61[v70], v68, v67);
    swift_endAccess();

    _Block_release(v67);

    v72 = *&v61[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotification];
    v71 = *&v61[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotification + 8];
    sub_100009748(0, &qword_100053B00, OS_dispatch_queue_ptr);

    v73 = static OS_dispatch_queue.main.getter();
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v98 = sub_10003B0F0;
    v99 = v74;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_1000276C0;
    v97 = &unk_10004E980;
    v75 = _Block_copy(&aBlock);

    v76 = String.utf8CString.getter();

    v77 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotificationToken;
    swift_beginAccess();
    notify_register_dispatch((v76 + 32), &v61[v77], v73, v75);
    swift_endAccess();

    _Block_release(v75);

    return v61;
  }

  return result;
}

void sub_10002766C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000315F4();
  }
}

uint64_t sub_1000276C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100027714(int a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    state64 = 0;
    if (!notify_get_state(a1, &state64))
    {
      v3[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisible] = state64 == 1;
    }
  }
}

id sub_1000277C0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "com.apple.GamePolicyAngel.notification.service Shutdown", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection;
  v11 = *&v1[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection];
  if (v11)
  {
    [v11 invalidate];
    v12 = *&v1[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v1[v10] = 0;

  v13 = type metadata accessor for EmbeddedGameProcessMonitor();
  v15.receiver = v1;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "dealloc");
}

void sub_100027B9C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget);
  *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget) = a1;

  if (a1)
  {
    v55 = v9;
    v57 = v4;
    v58 = v3;
    LODWORD(v62) = [a1 pid];
    v14 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
    swift_beginAccess();
    v15 = *(v1 + v14);
    v59 = v12;
    v60 = v7;
    v56 = v8;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v20 = -1 << *(v15 + 32);
      v17 = ~v20;
      v16 = v15 + 64;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v18 = v22 & *(v15 + 64);
      v19 = v15;
    }

    v23 = 0;
    v61 = v17;
    v24 = (v17 + 64) >> 6;
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v25 = v23;
    v26 = v18;
    v27 = v23;
    if (v18)
    {
LABEL_13:
      v28 = (v26 - 1) & v26;
      v29 = (v27 << 9) | (8 * __clz(__rbit64(v26)));
      v30 = *(*(v19 + 56) + v29);
      v31 = *(*(v19 + 48) + v29);

      if (v31)
      {
        while (1)
        {

          v35 = EmbeddedGameProcess.processHandle.getter();
          v36 = [v35 pid];

          if (v36 == v62)
          {
            break;
          }

          v23 = v27;
          v18 = v28;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          v32 = __CocoaDictionary.Iterator.next()();
          if (v32)
          {
            v34 = v33;
            v63 = v32;
            sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
            swift_dynamicCast();
            v31 = v64;
            v63 = v34;
            type metadata accessor for EmbeddedGameProcess();
            swift_dynamicCast();
            v30 = v64;
            v27 = v23;
            v28 = v18;
            if (v31)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        v37 = v59;
        static Date.now.getter();
        dispatch thunk of EmbeddedGameProcess.lastFocused.setter();
        v38 = v60;
        static Logger.daemon.getter();

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v54 = v39;
          v42 = v41;
          v62 = swift_slowAlloc();
          v63 = v30;
          v64 = v62;
          *v42 = 136380931;
          type metadata accessor for EmbeddedGameProcess();
          v53 = v40;
          sub_100038D38(&qword_100055240, &type metadata accessor for EmbeddedGameProcess);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = sub_100034C38(v43, v44, &v64);

          *(v42 + 4) = v45;
          *(v42 + 12) = 2081;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          sub_100038D38(&qword_100055248, &type metadata accessor for Date);
          v46 = v56;
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          (*(v55 + 8))(v37, v46);
          v50 = sub_100034C38(v47, v49, &v64);

          *(v42 + 14) = v50;
          v51 = v54;
          _os_log_impl(&_mh_execute_header, v54, v53, "Last played for %{private}s == %{private}s", v42, 0x16u);
          swift_arrayDestroy();

          sub_10001B370();

          (*(v57 + 8))(v60, v58);
        }

        else
        {

          sub_10001B370();

          (*(v57 + 8))(v38, v58);
        }
      }

      else
      {
LABEL_20:
        sub_10001B370();
      }
    }

    else
    {
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          goto LABEL_20;
        }

        v26 = *(v16 + 8 * v27);
        ++v25;
        if (v26)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_100028174(int a1, id a2)
{
  v2 = [a2 deferringPath];
  sub_100009748(0, &qword_1000553E8, BKSHIDEventDeferringTarget_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    v8 = 0;
    goto LABEL_11;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v7 = *(v3 + 8 * v6 + 32);
LABEL_8:
  v9 = v7;

  v8 = v9;
LABEL_11:
  v10 = v8;
  sub_100027B9C(v8);
}

void sub_100028314(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  v7 = v6;
  v275 = a6;
  v286 = a5;
  v288 = a4;
  v287 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v259 = &v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v246 - v16;
  __chkstk_darwin(v15);
  v19 = &v246 - v18;
  v268 = type metadata accessor for OSSignpostID();
  v272 = *(v268 - 8);
  v20 = *(v272 + 64);
  __chkstk_darwin(v268);
  v267 = &v246 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for String.Encoding();
  v270 = *(v271 - 8);
  v22 = *(v270 + 64);
  __chkstk_darwin(v271);
  v269 = &v246 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for Logger();
  v276 = *(v277 - 8);
  v24 = *(v276 + 64);
  v25 = __chkstk_darwin(v277);
  v261 = &v246 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v265 = &v246 - v28;
  v29 = __chkstk_darwin(v27);
  v260 = &v246 - v30;
  v31 = __chkstk_darwin(v29);
  v264 = &v246 - v32;
  v33 = __chkstk_darwin(v31);
  v266 = &v246 - v34;
  __chkstk_darwin(v33);
  v273 = &v246 - v35;
  v36 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v262 = &v246 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v263 = &v246 - v40;
  v41 = type metadata accessor for GameModeStatus.Config();
  v42 = *(v41 - 8);
  v43 = v42[8];
  v44 = __chkstk_darwin(v41);
  __chkstk_darwin(v44);
  v47 = &v246 - v46;
  if (*(v7 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsGameMode) != 1)
  {
    return;
  }

  v248 = v45;
  v246 = v17;
  v251 = v19;
  v252 = v11;
  v253 = v10;
  v48 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig;
  swift_beginAccess();
  v50 = (v42 + 2);
  v49 = v42[2];
  v49(v47, v7 + v48, v41);
  LODWORD(v274) = GameModeStatus.Config.enabled.getter();
  v52 = v42[1];
  v51 = v42 + 1;
  v52(v47, v41);
  v49(v47, v7 + v48, v41);
  v255 = GameModeStatus.Config.jettisonCameraS2R.getter();
  v52(v47, v41);
  v282 = v49;
  v49(v47, v7 + v48, v41);
  v258 = GameModeStatus.Config.impactedBundleIdentifiers.getter();
  v279 = v47;
  v280 = v41;
  v278 = v51;
  v284 = v52;
  v52(v47, v41);
  swift_beginAccess();
  GameModeStatus.Config.enabled.setter();
  GameModeStatus.Config.jettisonCameraS2R.setter();
  swift_endAccess();
  v281 = a1;
  v53 = a2;
  v54 = v287;
  v257 = v287 >> 62;
  if (v287 >> 62)
  {
    goto LABEL_176;
  }

  v55 = *((v287 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v283 = v7;
  v285 = v48;
  if (v55)
  {
    v290 = &_swiftEmptyArrayStorage;
    sub_100035534(0, v55 & ~(v55 >> 63), 0);
    if (v55 < 0)
    {
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v56 = v290;
    if ((v54 & 0xC000000000000001) != 0)
    {
      v57 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v58 = EmbeddedGameProcess.bundleIdentifier.getter();
        v60 = v59;
        swift_unknownObjectRelease();
        v290 = v56;
        v62 = *(v56 + 16);
        v61 = *(v56 + 24);
        v51 = (v62 + 1);
        if (v62 >= v61 >> 1)
        {
          sub_100035534((v61 > 1), v62 + 1, 1);
          v56 = v290;
        }

        ++v57;
        *(v56 + 16) = v51;
        v63 = v56 + 16 * v62;
        *(v63 + 32) = v58;
        *(v63 + 40) = v60;
      }

      while (v55 != v57);
    }

    else
    {
      v51 = (v54 + 32);
      do
      {
        v64 = *v51;

        v65 = EmbeddedGameProcess.bundleIdentifier.getter();
        v67 = v66;

        v290 = v56;
        v69 = *(v56 + 16);
        v68 = *(v56 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_100035534((v68 > 1), v69 + 1, 1);
          v56 = v290;
        }

        *(v56 + 16) = v69 + 1;
        v70 = v56 + 16 * v69;
        *(v70 + 32) = v65;
        *(v70 + 40) = v67;
        ++v51;
        --v55;
      }

      while (v55);
    }

    v7 = v283;
    v48 = v285;
  }

  v254 = v53;
  swift_beginAccess();
  GameModeStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C490(v71);

  swift_beginAccess();
  GameModeStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  v72 = v279;
  v73 = v280;
  v282(v279, v7 + v48, v280);
  GameModeStatus.Config.allGameBundleIdentifiers.getter();
  v284(v72, v73);
  swift_beginAccess();
  GameModeStatus.Config.previousAllGameBundleIdentifiers.setter();
  swift_endAccess();
  v74 = v286;
  v75 = v286 >> 62;
  if (v286 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v76 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v76)
  {
    v290 = &_swiftEmptyArrayStorage;
    sub_100035534(0, v76 & ~(v76 >> 63), 0);
    if (v76 < 0)
    {
      goto LABEL_202;
    }

    v77 = v290;
    if ((v74 & 0xC000000000000001) != 0)
    {
      v78 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v79 = EmbeddedGameProcess.bundleIdentifier.getter();
        v81 = v80;
        swift_unknownObjectRelease();
        v290 = v77;
        v83 = *(v77 + 16);
        v82 = *(v77 + 24);
        v51 = (v83 + 1);
        if (v83 >= v82 >> 1)
        {
          sub_100035534((v82 > 1), v83 + 1, 1);
          v77 = v290;
        }

        ++v78;
        *(v77 + 16) = v51;
        v84 = v77 + 16 * v83;
        *(v84 + 32) = v79;
        *(v84 + 40) = v81;
      }

      while (v76 != v78);
    }

    else
    {
      v51 = (v74 + 32);
      do
      {
        v85 = *v51;

        v86 = EmbeddedGameProcess.bundleIdentifier.getter();
        v88 = v87;

        v290 = v77;
        v90 = *(v77 + 16);
        v89 = *(v77 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_100035534((v89 > 1), v90 + 1, 1);
          v77 = v290;
        }

        *(v77 + 16) = v90 + 1;
        v91 = v77 + 16 * v90;
        *(v91 + 32) = v86;
        *(v91 + 40) = v88;
        ++v51;
        --v76;
      }

      while (v76);
    }

    v7 = v283;
    v48 = v285;
  }

  swift_beginAccess();
  GameModeStatus.Config.allGameBundleIdentifiers.setter();
  swift_endAccess();
  v250 = v288 >> 62;
  if (v288 >> 62)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v92 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = &_swiftEmptyArrayStorage;
  v247 = v75;
  if (v92)
  {
    v290 = &_swiftEmptyArrayStorage;
    sub_100035534(0, v92 & ~(v92 >> 63), 0);
    if (v92 < 0)
    {
      goto LABEL_203;
    }

    v93 = v290;
    if ((v288 & 0xC000000000000001) != 0)
    {
      v94 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v95 = EmbeddedGameProcess.bundleIdentifier.getter();
        v97 = v96;
        swift_unknownObjectRelease();
        v290 = v93;
        v99 = v93[2];
        v98 = v93[3];
        if (v99 >= v98 >> 1)
        {
          sub_100035534((v98 > 1), v99 + 1, 1);
          v93 = v290;
        }

        ++v94;
        v93[2] = v99 + 1;
        v100 = &v93[2 * v99];
        *(v100 + 4) = v95;
        *(v100 + 5) = v97;
      }

      while (v92 != v94);
    }

    else
    {
      v101 = (v288 + 32);
      do
      {
        v102 = *v101;

        v103 = EmbeddedGameProcess.bundleIdentifier.getter();
        v105 = v104;

        v290 = v93;
        v107 = v93[2];
        v106 = v93[3];
        if (v107 >= v106 >> 1)
        {
          sub_100035534((v106 > 1), v107 + 1, 1);
          v93 = v290;
        }

        v93[2] = v107 + 1;
        v108 = &v93[2 * v107];
        *(v108 + 4) = v103;
        *(v108 + 5) = v105;
        ++v101;
        --v92;
      }

      while (v92);
    }

    v7 = v283;
    v48 = v285;
  }

  v256 = v274 ^ v281;
  v109 = v7 + v48;
  v110 = v279;
  v111 = v280;
  v112 = v282;
  v282(v279, v109, v280);
  v113 = GameModeStatus.Config.gameBundleIdentifiers.getter();
  v114 = v284;
  v284(v110, v111);
  v115 = v7;
  v116 = sub_100034B20(v113, v93);

  v274 = v50;
  v249 = v116;
  if (v116)
  {

    v48 = v287;
    v53 = v273;
    if (v256)
    {
      v51 = v285;
      v117 = v253;
      v118 = v252;
      v119 = v115;
      if ((v281 & 1) == 0)
      {
LABEL_52:
        v120 = v248;
        v121 = v280;
        v282(v248, v51 + v119, v280);
        v122 = v262;
        GameModeStatus.Config.enablementDate.getter();
        v284(v120, v121);
        LODWORD(v121) = (*(v118 + 48))(v122, 1, v117);
        sub_1000096E8(v122, &qword_1000552E0, &qword_10003E780);
        if (v121 == 1)
        {

LABEL_63:
          v50 = v249 ^ 1u;
          goto LABEL_64;
        }

        v126 = v263;
        Date.init()();
        (*(v118 + 56))(v126, 0, 1, v117);
        swift_beginAccess();
        GameModeStatus.Config.disablementDate.setter();
        GameModeStatus.Config.previouslyImpactedBundleIdentifiers.setter();
LABEL_62:
        swift_endAccess();
        goto LABEL_63;
      }

LABEL_56:

      v124 = v263;
      Date.init()();
      v125 = *(v118 + 56);
      v125(v124, 0, 1, v117);
      swift_beginAccess();
      GameModeStatus.Config.enablementDate.setter();
      v125(v124, 1, 1, v117);
      GameModeStatus.Config.disablementDate.setter();
      goto LABEL_62;
    }

    if (v275)
    {
      v50 = 0;
      v51 = v285;
      v119 = v115;
LABEL_64:
      static Logger.daemon.getter();
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();
      v129 = os_log_type_enabled(v127, v128);
      v130 = v281;
      if (v129)
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v290 = v132;
        *v131 = 136446210;
        if (v130)
        {
          v133 = 0x64656C62616E65;
        }

        else
        {
          v133 = 0x64656C6261736964;
        }

        if (v130)
        {
          v134 = 0xE700000000000000;
        }

        else
        {
          v134 = 0xE800000000000000;
        }

        v135 = sub_100034C38(v133, v134, &v290);
        v130 = v281;

        *(v131 + 4) = v135;
        v119 = v283;
        _os_log_impl(&_mh_execute_header, v127, v128, "Game mode %{public}s.", v131, 0xCu);
        sub_100003964(v132);
      }

      v136 = *(v276 + 8);
      v136(v53, v277);
      v53 = v266;
      v292 = &type metadata for Feature;
      v293 = sub_100039FD4();
      LOBYTE(v290) = 0;
      v137 = isFeatureEnabled(_:)();
      sub_100003964(&v290);
      if (v137)
      {
        sub_1000036FC(v130 & 1);
        v138 = *(v119 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
        swift_beginAccess();
        v139 = *(v138 + 16);
        if (v139)
        {
          notify_set_state(v139, v130 & 1);
          v290 = 0xD000000000000025;
          v291 = 0x8000000100041140;
          v140 = v269;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v141 = StringProtocol.cString(using:)();
          (*(v270 + 8))(v140, v271);
          if (v141)
          {
            v142 = (v141 + 32);
          }

          else
          {
            v142 = 0;
          }

          notify_post(v142);

          v143 = (v272 + 8);
          if (v130)
          {
            static os_signpost_type_t.begin.getter();
          }

          else
          {
            static os_signpost_type_t.end.getter();
          }

          v147 = static Logger.stateTracking.getter();
          v148 = v267;
          static OSSignpostID.exclusive.getter();
          os_signpost(_:dso:log:name:signpostID:)();

          (*v143)(v148, v268);
        }

        else
        {
          static Logger.daemon.getter();
          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v144, v145))
          {
            v146 = swift_slowAlloc();
            *v146 = 0;
            _os_log_impl(&_mh_execute_header, v144, v145, "Unable to post game mode darwin notification - token is invalid!", v146, 2u);
          }

          v136(v53, v277);
        }

        v149 = *(v119 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_stateManager);

        sub_10001DE04(v130 & 1, 0);
      }

      goto LABEL_87;
    }

    v50 = 0;
    v51 = v285;
  }

  else
  {
    v123 = v285;
    v112(v110, v285 + v115, v111);
    GameModeStatus.Config.gameBundleIdentifiers.getter();
    v114(v110, v111);
    swift_beginAccess();
    GameModeStatus.Config.previousGameBundleIdentifiers.setter();
    GameModeStatus.Config.gameBundleIdentifiers.setter();
    swift_endAccess();
    v51 = v123;
    v119 = v115;
    if (v256)
    {
      v117 = v253;
      v118 = v252;
      v48 = v287;
      v53 = v273;
      if ((v281 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    v53 = v273;
    v50 = 1;
    if (v275)
    {
      v48 = v287;
      goto LABEL_64;
    }

    v48 = v287;
  }

LABEL_87:
  if (v257)
  {
    v150 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v150 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = 0;
  v7 = v48 & 0xC000000000000001;
  while (1)
  {
    if (v150 == v54)
    {
      goto LABEL_100;
    }

    if (v7)
    {
      break;
    }

    if (v54 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_176:
      v55 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_4;
    }

    v151 = *(v48 + 8 * v54 + 32);

    if (__OFADD__(v54, 1))
    {
      goto LABEL_99;
    }

LABEL_95:
    v152 = EmbeddedGameProcess.requiresiPhonePerformanceGamingTier.getter();

    ++v54;
    if (v152)
    {
      v153 = v281;
      goto LABEL_101;
    }
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (!__OFADD__(v54, 1))
  {
    goto LABEL_95;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  v153 = 0;
LABEL_101:
  v154 = v283;
  v155 = v279;
  v156 = v280;
  v282(v279, v51 + v283, v280);
  v157 = GameModeStatus.Config.perfomanceGamingModeEnabled.getter();
  v284(v155, v156);
  v158 = v153 ^ v157;
  swift_beginAccess();
  GameModeStatus.Config.perfomanceGamingModeEnabled.setter();
  swift_endAccess();
  if ((v153 ^ v157) & 1) != 0 || (v275)
  {
    v159 = v50;
    v50 = v264;
    static Logger.daemon.getter();
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v290 = v163;
      *v162 = 136446210;
      if (v153)
      {
        v164 = 0x64656C62616E65;
      }

      else
      {
        v164 = 0x64656C6261736964;
      }

      if (v153)
      {
        v165 = 0xE700000000000000;
      }

      else
      {
        v165 = 0xE800000000000000;
      }

      v166 = sub_100034C38(v164, v165, &v290);

      *(v162 + 4) = v166;
      v156 = v280;
      v154 = v283;
      _os_log_impl(&_mh_execute_header, v160, v161, "Performance gaming mode %{public}s.", v162, 0xCu);
      sub_100003964(v163);
    }

    v167 = *(v276 + 8);
    v167(v50, v277);
    v168 = *(v154 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
    swift_beginAccess();
    v169 = *(v168 + 64);
    LODWORD(v50) = v159;
    if (v169)
    {
      notify_set_state(v169, v153 & 1);
      v290 = 0xD000000000000030;
      v291 = 0x80000001000413D0;
      v170 = v269;
      static String.Encoding.utf8.getter();
      sub_100009790();
      v171 = StringProtocol.cString(using:)();
      (*(v270 + 8))(v170, v271);
      if (v171)
      {
        v172 = (v171 + 32);
      }

      else
      {
        v172 = 0;
      }

      notify_post(v172);

      v173 = (v272 + 8);
      v51 = v285;
      if (v158)
      {
        static os_signpost_type_t.begin.getter();
      }

      else
      {
        static os_signpost_type_t.end.getter();
      }

      v181 = static Logger.stateTracking.getter();
      v182 = v267;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (*v173)(v182, v268);
    }

    else
    {
      v174 = v156;
      v175 = v154;
      v176 = v260;
      static Logger.daemon.getter();
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();
      v179 = os_log_type_enabled(v177, v178);
      v51 = v285;
      if (v179)
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&_mh_execute_header, v177, v178, "Unable to post performance gaming mode darwin notification - token is invalid!", v180, 2u);
      }

      v167(v176, v277);
      v154 = v175;
      v156 = v174;
    }
  }

  v183 = v254;
  v184 = v282;
  if ((v255 ^ v254) & 1) != 0 || (v275)
  {
    LODWORD(v287) = v50;
    v185 = v265;
    static Logger.daemon.getter();
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.default.getter();
    v188 = v184;
    if (os_log_type_enabled(v186, v187))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v290 = v190;
      *v189 = 136446210;
      if (v281)
      {
        v191 = 0x64656C62616E65;
      }

      else
      {
        v191 = 0x64656C6261736964;
      }

      if (v281)
      {
        v192 = 0xE700000000000000;
      }

      else
      {
        v192 = 0xE800000000000000;
      }

      v193 = sub_100034C38(v191, v192, &v290);

      *(v189 + 4) = v193;
      v156 = v280;
      v154 = v283;
      _os_log_impl(&_mh_execute_header, v186, v187, "Jettison Camera S2R %{public}s.", v189, 0xCu);
      sub_100003964(v190);
    }

    v194 = *(v276 + 8);
    v194(v185, v277);
    v195 = *(v154 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
    swift_beginAccess();
    v196 = *(v195 + 28);
    if (v196)
    {
      notify_set_state(v196, v183 & 1);
      v290 = 0xD000000000000039;
      v291 = 0x80000001000411D0;
      v197 = v269;
      static String.Encoding.utf8.getter();
      sub_100009790();
      v198 = StringProtocol.cString(using:)();
      (*(v270 + 8))(v197, v271);
      if (v198)
      {
        v199 = (v198 + 32);
      }

      else
      {
        v199 = 0;
      }

      notify_post(v199);

      v200 = (v272 + 8);
      if (v183)
      {
        static os_signpost_type_t.begin.getter();
      }

      else
      {
        static os_signpost_type_t.end.getter();
      }

      v207 = static Logger.stateTracking.getter();
      v208 = v267;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (*v200)(v208, v268);
    }

    else
    {
      v201 = v156;
      v202 = v154;
      v203 = v261;
      static Logger.daemon.getter();
      v204 = Logger.logObject.getter();
      v205 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 0;
        _os_log_impl(&_mh_execute_header, v204, v205, "Unable to post game mode camera jettison S2R darwin notification - token is invalid!", v206, 2u);
      }

      v194(v203, v277);
      v154 = v202;
      v156 = v201;
    }

    v184 = v188;
    if (v287)
    {
      goto LABEL_146;
    }

    while (1)
    {
LABEL_161:
      v221 = v51 + v154;
      v51 = v279;
      v184(v279, v221, v156);
      v222 = objc_allocWithZone(type metadata accessor for GameModeStatus());
      v223 = GameModeStatus.init(config:)();
      v224 = off_1000541F8;
      v225 = *(off_1000541F8 + 2);

      [v225 lock];
      v287 = v223;
      v277 = v224;
      sub_1000189C8(v223, v224, &v290);
      [v225 unlock];
      v226 = v290;
      if (v290 >> 62)
      {
        v227 = _CocoaArrayWrapper.endIndex.getter();
        if (!v227)
        {
LABEL_180:

          goto LABEL_181;
        }
      }

      else
      {
        v227 = *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v227)
        {
          goto LABEL_180;
        }
      }

      if (v227 >= 1)
      {
        break;
      }

LABEL_204:
      __break(1u);
LABEL_205:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v209 = v253;
      v210 = v252;
LABEL_153:
      v212 = EmbeddedGameProcess.bundleIdentifier.getter();
      v214 = v213;

      Date.init()();
      type metadata accessor for GlobalPreferences();
      dispatch thunk of static GlobalPreferences.shared.getter();
      if (v281)
      {
        dispatch thunk of GlobalPreferences.gameModeOnBannerDefaultTime.getter();
      }

      else
      {
        dispatch thunk of GlobalPreferences.gameModeOffBannerDefaultTime.getter();
      }

      v216 = v215;

      if (v216 <= 0.0)
      {
        goto LABEL_158;
      }

      dispatch thunk of static GlobalPreferences.shared.getter();
      v217 = v259;
      dispatch thunk of GlobalPreferences.gameModeLastBannerDate(bundleIdentifier:)();

      v218 = v246;
      static Date.+ infix(_:_:)();
      v219 = *(v210 + 8);
      v219(v217, v209);
      LOBYTE(v217) = static Date.< infix(_:_:)();
      v219(v218, v209);
      if (v217)
      {
LABEL_158:
        dispatch thunk of static GlobalPreferences.shared.getter();
        v220 = v251;
        dispatch thunk of GlobalPreferences.setGameModeLastBannerDate(_:bundleIdentifier:)();

        v154 = v283;
        sub_10003A31C(v212, v214, v281 & 1);

        (*(v210 + 8))(v220, v209);
      }

      else
      {
        v219(v251, v209);

        v154 = v283;
      }

      v156 = v280;
      v184 = v282;
    }

    for (i = 0; i != v227; ++i)
    {
      if ((v226 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v229 = *(v226 + 8 * i + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v231 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v289 updateStatus:v287 :0 :0 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v154 = v283;
    v156 = v280;
    v51 = v279;
LABEL_181:

    v232 = v282;
    v282(v51, v285 + v154, v156);
    GameModeStatus.Config.enablementStrategy.getter();
    v284(v51, v156);
    v233 = ModeEnablementStrategy.rawValue.getter();
    if (v233 != ModeEnablementStrategy.rawValue.getter())
    {
      v232(v51, v285 + v154, v156);
      GameModeStatus.Config.enablementStrategy.getter();
      v284(v51, v156);
      v234 = ModeEnablementStrategy.rawValue.getter();
      if (v234 != ModeEnablementStrategy.rawValue.getter())
      {
        if (v250)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_188:
            v292 = &type metadata for Feature;
            v235 = sub_100039FD4();
            v293 = v235;
            LOBYTE(v290) = 0;
            v236 = isFeatureEnabled(_:)();
            sub_100003964(&v290);
            if (v236)
            {
              v237 = *(v154 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_stateManager);

              sub_10001D870(v281 & 1, 0);
            }

            v238 = v285;
            v232(v51, v285 + v154, v156);
            GameModeStatus.Config.enablementStrategy.getter();
            v239 = v284;
            v284(v51, v156);
            v240 = ModeEnablementStrategy.rawValue.getter();
            v241 = 1;
            if (v240 != ModeEnablementStrategy.rawValue.getter())
            {
              v232(v51, &v238[v283], v156);
              GameModeStatus.Config.enablementStrategy.getter();
              v239(v51, v156);
              v242 = ModeEnablementStrategy.rawValue.getter();
              if (v242 == ModeEnablementStrategy.rawValue.getter())
              {
                v241 = 1;
              }

              else
              {
                if (v247)
                {
                  v243 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v243 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v241 = v243 != 0;
              }
            }

            v292 = &type metadata for Feature;
            v293 = v235;
            LOBYTE(v290) = 0;
            v244 = isFeatureEnabled(_:)();
            sub_100003964(&v290);
            if (v244)
            {
              v245 = *(v283 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_stateManager);

              sub_10001E284(v241, 0);
            }

            return;
          }
        }

        else if (!*((v288 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_188;
        }
      }
    }

    v281 = 1;
    goto LABEL_188;
  }

  if ((v50 & 1) == 0)
  {
    goto LABEL_161;
  }

LABEL_146:
  if (v250)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_161;
    }
  }

  else if (!*((v288 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_161;
  }

  if ((v288 & 0xC000000000000001) != 0)
  {
    goto LABEL_205;
  }

  v209 = v253;
  v210 = v252;
  if (*((v288 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v211 = *(v288 + 32);

    goto LABEL_153;
  }

  __break(1u);

  [v184 unlock];
  __break(1u);
}

uint64_t sub_10002A5E4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v155 = a2;
  v159 = a1;
  v6 = type metadata accessor for OSSignpostID();
  v147 = *(v6 - 8);
  v148 = v6;
  v7 = *(v147 + 64);
  __chkstk_darwin(v6);
  v146 = v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v142 = v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v143 = v136 - v13;
  v14 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v15 = *(v14 - 8);
  v157 = v14;
  v158 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v145 = v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v136 - v19;
  v21 = sub_100003870(&qword_1000552E8, qword_10003F128);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = v136 - v23;
  v25 = sub_100003870(&qword_100054428, &qword_10003E778);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v144 = v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v153 = v136 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = v136 - v32;
  __chkstk_darwin(v31);
  v35 = v136 - v34;
  v36 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = __chkstk_darwin(v36);
  v140 = v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v156 = v136 - v42;
  result = __chkstk_darwin(v41);
  v45 = v136 - v44;
  if (*(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsModelManagerGameAssertion) != 1)
  {
    return result;
  }

  LODWORD(v138) = a3;
  v46 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_modelManagerGameAssertionStatusConfig;
  swift_beginAccess();
  v47 = v37[2];
  v154 = v46;
  v152 = v4;
  v149 = v47;
  v150 = v37 + 2;
  v47(v45, v4 + v46, v36);
  ModelManagerGameAssertionStatus.Config.policy.getter();
  v48 = v37[1];
  v151 = v36;
  v141 = v37 + 1;
  v48(v45, v36);
  v49 = v48;
  v50 = *(v21 + 48);
  sub_100039F6C(v35, v24, &qword_100054428, &qword_10003E778);
  sub_100039F6C(v159, &v24[v50], &qword_100054428, &qword_10003E778);
  v51 = v157;
  v52 = v158 + 48;
  v53 = *(v158 + 48);
  v54 = v53(v24, 1, v157);
  v137 = v53;
  if (v54 != 1)
  {
    sub_100039F6C(v24, v33, &qword_100054428, &qword_10003E778);
    if (v53(&v24[v50], 1, v51) != 1)
    {
      v67 = v158;
      (*(v158 + 32))(v20, &v24[v50], v51);
      sub_100038D38(&qword_1000552F0, &type metadata accessor for ModelManagerGameAssertionPolicy);
      v68 = v52;
      v69 = dispatch thunk of static Equatable.== infix(_:_:)();
      v70 = *(v67 + 8);
      v71 = v20;
      v55 = v69;
      v70(v71, v51);
      sub_1000096E8(v35, &qword_100054428, &qword_10003E778);
      v70(v33, v51);
      v52 = v68;
      goto LABEL_25;
    }

    sub_1000096E8(v35, &qword_100054428, &qword_10003E778);
    (*(v158 + 8))(v33, v51);
LABEL_7:
    sub_1000096E8(v24, &qword_1000552E8, qword_10003F128);
    v139 = 0;
LABEL_8:
    v56 = v151;
    v57 = v152;
    v58 = v159;
    goto LABEL_9;
  }

  sub_1000096E8(v35, &qword_100054428, &qword_10003E778);
  v55 = 1;
  if (v53(&v24[v50], 1, v51) != 1)
  {
    goto LABEL_7;
  }

LABEL_25:
  result = sub_1000096E8(v24, &qword_100054428, &qword_10003E778);
  v139 = v55;
  if ((v55 & 1) == 0)
  {
    goto LABEL_8;
  }

  v56 = v151;
  v57 = v152;
  v58 = v159;
  if ((v138 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v136[1] = v52;
  v59 = v156;
  v149(v156, v57 + v154, v56);
  v138 = ModelManagerGameAssertionStatus.Config.impactedBundleIdentifiers.getter();
  v136[0] = v49;
  v49(v59, v56);
  sub_100039F6C(v58, v153, &qword_100054428, &qword_10003E778);
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.policy.setter();
  swift_endAccess();
  v160 = &_swiftEmptyArrayStorage;
  v60 = v155;
  if (v155 >> 62)
  {
LABEL_29:
    v61 = _CocoaArrayWrapper.endIndex.getter();
    if (v61)
    {
      goto LABEL_11;
    }

LABEL_30:
    v66 = &_swiftEmptyArrayStorage;
    if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    goto LABEL_31;
  }

  v61 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v61)
  {
    goto LABEL_30;
  }

LABEL_11:
  v62 = 0;
  while ((v60 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_21;
    }

LABEL_17:
    if (EmbeddedGameProcess.requiresModelManagerAssertion.getter())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v65 = *(v160 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v62;
    if (v64 == v61)
    {
      goto LABEL_22;
    }
  }

  if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v63 = *(v60 + 8 * v62 + 32);

  v64 = v62 + 1;
  if (!__OFADD__(v62, 1))
  {
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v66 = v160;
  if ((v160 & 0x8000000000000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_31:
  if ((v66 & 0x4000000000000000) != 0)
  {
    goto LABEL_90;
  }

  v72 = *(v66 + 16);
  while (2)
  {
    v73 = &_swiftEmptyArrayStorage;
    if (v72)
    {
      v74 = v66 & 0xC000000000000001;
      v153 = &_swiftEmptyArrayStorage;
      v75 = 0;
      if ((v66 & 0xC000000000000001) == 0)
      {
        goto LABEL_38;
      }

LABEL_48:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      for (i = v75 + 1; !__OFADD__(v75, 1); i = v75 + 1)
      {
        v78 = EmbeddedGameProcess.processHandle.getter();
        v79 = [v78 bundle];

        if (v79 && (v80 = [v79 identifier], v79, v80))
        {
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_100023ABC(0, *(v153 + 2) + 1, 1, v153);
          }

          v85 = *(v153 + 2);
          v84 = *(v153 + 3);
          if (v85 >= v84 >> 1)
          {
            v153 = sub_100023ABC((v84 > 1), v85 + 1, 1, v153);
          }

          v86 = v153;
          *(v153 + 2) = v85 + 1;
          v87 = &v86[16 * v85];
          *(v87 + 4) = v81;
          *(v87 + 5) = v83;
          if (i == v72)
          {
            goto LABEL_52;
          }

          v75 = i;
          if (v74)
          {
            goto LABEL_48;
          }
        }

        else
        {

          ++v75;
          if (i == v72)
          {
            goto LABEL_52;
          }

          if (v74)
          {
            goto LABEL_48;
          }
        }

LABEL_38:
        if (v75 >= *(v66 + 16))
        {
          goto LABEL_86;
        }

        v76 = *(v66 + 8 * v75 + 32);
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v72 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

  v153 = &_swiftEmptyArrayStorage;
LABEL_52:

  v88 = v152;
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.aaaBundleIdentifiers.setter();
  swift_endAccess();
  v160 = &_swiftEmptyArrayStorage;
  if (!v61)
  {
    goto LABEL_65;
  }

  v66 = 0;
  v89 = v155;
  while (2)
  {
    if ((v89 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v91 = (v66 + 1);
      if (__OFADD__(v66, 1))
      {
        break;
      }

      goto LABEL_59;
    }

    if (v66 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_87;
    }

    v90 = *(v89 + 8 * v66 + 32);

    v91 = (v66 + 1);
    if (!__OFADD__(v66, 1))
    {
LABEL_59:
      if (dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.getter())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v92 = *(v160 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v66;
      if (v91 == v61)
      {
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:
  v73 = v160;
LABEL_65:
  if ((v73 & 0x8000000000000000) != 0 || (v73 & 0x4000000000000000) != 0)
  {
    v93 = _CocoaArrayWrapper.endIndex.getter();
    if (!v93)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v93 = *(v73 + 16);
    if (!v93)
    {
      goto LABEL_92;
    }
  }

  v61 = v73 & 0xC000000000000001;
  v66 = &_swiftEmptyArrayStorage;
  v94 = 0;
  if ((v73 & 0xC000000000000001) != 0)
  {
LABEL_82:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v96 = v94 + 1;
    if (!__OFADD__(v94, 1))
    {
      goto LABEL_74;
    }

    goto LABEL_88;
  }

  while (1)
  {
    while (1)
    {
      if (v94 >= *(v73 + 16))
      {
        goto LABEL_89;
      }

      v95 = *(v73 + 8 * v94 + 32);

      v96 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_88;
      }

LABEL_74:
      v97 = EmbeddedGameProcess.processHandle.getter();
      v98 = [v97 bundle];

      if (v98)
      {
        v99 = [v98 identifier];

        if (v99)
        {
          break;
        }
      }

      ++v94;
      if (v96 == v93)
      {
        goto LABEL_92;
      }

      if (v61)
      {
        goto LABEL_82;
      }
    }

    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_100023ABC(0, *(v66 + 16) + 1, 1, v66);
    }

    v104 = *(v66 + 16);
    v103 = *(v66 + 24);
    if (v104 >= v103 >> 1)
    {
      v66 = sub_100023ABC((v103 > 1), v104 + 1, 1, v66);
    }

    *(v66 + 16) = v104 + 1;
    v105 = (v66 + 16 * v104);
    *(v105 + 4) = v100;
    *(v105 + 5) = v102;
    if (v96 == v93)
    {
      break;
    }

    v94 = v96;
    if (v61)
    {
      goto LABEL_82;
    }
  }

LABEL_92:

  v106 = v154;
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v107 = &off_100054000;

  sub_10001C49C(v108);

  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.policyStrategy.setter();
  swift_endAccess();
  v109 = v151;
  if (v139)
  {
  }

  else
  {
    v110 = v144;
    sub_100039F6C(v159, v144, &qword_100054428, &qword_10003E778);
    v111 = v157;
    if (v137(v110, 1, v157) == 1)
    {
      sub_1000096E8(v110, &qword_100054428, &qword_10003E778);
      v112 = v140;
      v149(v140, v88 + v106, v109);
      v113 = v142;
      ModelManagerGameAssertionStatus.Config.enablementDate.getter();
      (v136[0])(v112, v109);
      v114 = type metadata accessor for Date();
      v115 = *(v114 - 8);
      v116 = (*(v115 + 48))(v113, 1, v114);
      sub_1000096E8(v113, &qword_1000552E0, &qword_10003E780);
      if (v116 == 1)
      {
      }

      else
      {
        v128 = v143;
        Date.init()();
        (*(v115 + 56))(v128, 0, 1, v114);
        swift_beginAccess();
        ModelManagerGameAssertionStatus.Config.disablementDate.setter();
        ModelManagerGameAssertionStatus.Config.previouslyImpactedBundleIdentifiers.setter();
        swift_endAccess();
      }

      v130 = v147;
      v129 = v148;
      v131 = v146;
      static os_signpost_type_t.end.getter();
      v132 = static Logger.stateTracking.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (*(v130 + 8))(v131, v129);
    }

    else
    {

      v117 = v158;
      (*(v158 + 32))(v145, v110, v111);
      v118 = v143;
      Date.init()();
      v119 = type metadata accessor for Date();
      v120 = *(*(v119 - 8) + 56);
      v120(v118, 0, 1, v119);
      swift_beginAccess();
      ModelManagerGameAssertionStatus.Config.enablementDate.setter();
      v120(v118, 1, 1, v119);
      ModelManagerGameAssertionStatus.Config.disablementDate.setter();
      swift_endAccess();
      static os_signpost_type_t.begin.getter();
      v121 = static Logger.stateTracking.getter();
      sub_100003870(&qword_1000552C8, &unk_10003F118);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_10003EB50;
      v123 = v145;
      v124 = ModelManagerGameAssertionPolicy.rawValue.getter();
      v126 = v125;
      *(v122 + 56) = &type metadata for String;
      *(v122 + 64) = sub_100039F18();
      *(v122 + 32) = v124;
      *(v122 + 40) = v126;
      v127 = v146;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();

      (*(v147 + 8))(v127, v148);
      (*(v117 + 8))(v123, v157);
      v107 = &off_100054000;
    }
  }

  v149(v156, v88 + v106, v109);
  v133 = objc_allocWithZone(type metadata accessor for ModelManagerGameAssertionStatus());
  v134 = ModelManagerGameAssertionStatus.init(config:)();
  v135 = v107[63];

  sub_100018B80(v134);
}

void sub_10002B738(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v151 = type metadata accessor for String.Encoding();
  v150 = *(v151 - 8);
  v8 = *(v150 + 64);
  __chkstk_darwin(v151);
  v149 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_name = type metadata accessor for Logger();
  v11 = *(p_name - 8);
  v12 = *(v11 + 8);
  v13 = __chkstk_darwin(p_name);
  v155 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v147 = &v129 - v16;
  v17 = __chkstk_darwin(v15);
  v152 = &v129 - v18;
  __chkstk_darwin(v17);
  v154 = &v129 - v19;
  v20 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v146 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v148 = &v129 - v24;
  v25 = type metadata accessor for SustainedExecutionStatus.Config();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v145 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v129 - v30;
  if (*(v3 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionMode) != 1)
  {
    return;
  }

  v32 = SEMPolicy.rawValue.getter();
  if (v32 == SEMPolicy.rawValue.getter() && !*(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionModeAutomaticEnrollment))
  {
    a1 = 0;
  }

  v33 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_sustainedExecutionStatusConfig;
  swift_beginAccess();
  v34 = v26[2];
  v153 = v33;
  v144 = v26 + 2;
  v143 = v34;
  v34(v31, v4 + v33, v25);
  SustainedExecutionStatus.Config.activePolicy.getter();
  v35 = v26[1];
  v141 = v26 + 1;
  v140 = v35;
  v35(v31, v25);
  v36 = SEMPolicy.rawValue.getter();
  v37 = SEMPolicy.rawValue.getter();
  if (v36 == v37 && (a3 & 1) == 0)
  {
    return;
  }

  v135 = v37;
  v136 = v36;
  v143(v31, v4 + v153, v25);
  v134 = SustainedExecutionStatus.Config.impactedBundleIdentifiers.getter();
  v140(v31, v25);
  swift_beginAccess();
  v142 = a1;
  SustainedExecutionStatus.Config.activePolicy.setter();
  swift_endAccess();
  v157[0] = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v138 = v25;
    v133 = p_name;
    v137 = v11;
    v132 = v31;
    if (i)
    {
      v11 = 0;
      p_name = a2 & 0xC000000000000001;
      v31 = (a2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (p_name)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v40 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_101;
          }

          v39 = *(a2 + 8 * v11 + 32);

          v40 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            a2 = v157[0];
            if ((v157[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_104;
          }
        }

        if (dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v25 = *(v157[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v40 == i)
        {
          goto LABEL_21;
        }
      }
    }

    a2 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_104;
    }

LABEL_24:
    if ((a2 & 0x4000000000000000) != 0)
    {
LABEL_104:
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v41 = *(a2 + 16);
    }

    v131 = v4;
    if (!v41)
    {
      break;
    }

    v4 = a2 & 0xC000000000000001;
    v139 = _swiftEmptyArrayStorage;
    p_name = &stru_100051FF8.name;
    v11 = 0;
    if ((a2 & 0xC000000000000001) != 0)
    {
LABEL_41:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_33;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    while (v11 < *(a2 + 16))
    {
      v42 = *(a2 + 8 * v11 + 32);

      v31 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_101;
      }

LABEL_33:
      v43 = EmbeddedGameProcess.processHandle.getter();
      v25 = [v43 bundle];

      if (v25 && (v44 = [v25 identifier], v25, v44))
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v130 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_100023ABC(0, *(v139 + 2) + 1, 1, v139);
        }

        v25 = *(v139 + 2);
        v47 = *(v139 + 3);
        if (v25 >= v47 >> 1)
        {
          v139 = sub_100023ABC((v47 > 1), v25 + 1, 1, v139);
        }

        v48 = v139;
        *(v139 + 2) = v25 + 1;
        v49 = &v48[16 * v25];
        v50 = v130;
        *(v49 + 4) = v45;
        *(v49 + 5) = v50;
        if (v31 == v41)
        {
          goto LABEL_45;
        }

        v11 = v31;
        if (v4)
        {
          goto LABEL_41;
        }
      }

      else
      {

        ++v11;
        if (v31 == v41)
        {
          goto LABEL_45;
        }

        if (v4)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  v139 = _swiftEmptyArrayStorage;
LABEL_45:

  v51 = v131;
  v52 = v153;
  swift_beginAccess();
  SustainedExecutionStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C494(v53);

  swift_beginAccess();
  SustainedExecutionStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  v54 = v138;
  if (v136 == v135)
  {
    goto LABEL_53;
  }

  v55 = SEMPolicy.rawValue.getter();
  if (v55 == SEMPolicy.rawValue.getter() || (v56 = SEMPolicy.rawValue.getter(), v56 == SEMPolicy.rawValue.getter()))
  {

    v57 = v148;
    Date.init()();
    v58 = type metadata accessor for Date();
    v59 = *(*(v58 - 8) + 56);
    v59(v57, 0, 1, v58);
    swift_beginAccess();
    SustainedExecutionStatus.Config.enablementDate.setter();
    v59(v57, 1, 1, v58);
    SustainedExecutionStatus.Config.disablementDate.setter();
    goto LABEL_51;
  }

  v60 = v145;
  v143(v145, v51 + v52, v54);
  v61 = v146;
  SustainedExecutionStatus.Config.enablementDate.getter();
  v140(v60, v54);
  v62 = type metadata accessor for Date();
  v63 = *(v62 - 8);
  v64 = (*(v63 + 48))(v61, 1, v62);
  sub_1000096E8(v61, &qword_1000552E0, &qword_10003E780);
  if (v64 == 1)
  {
LABEL_53:
  }

  else
  {
    v128 = v148;
    Date.init()();
    (*(v63 + 56))(v128, 0, 1, v62);
    swift_beginAccess();
    SustainedExecutionStatus.Config.disablementDate.setter();
    SustainedExecutionStatus.Config.previouslyImpactedBundleIdentifiers.setter();
LABEL_51:
    swift_endAccess();
  }

  v65 = objc_opt_self();
  v157[0] = 0;
  v66 = [v65 createClient:v157];
  v67 = v154;
  if (!v66)
  {
    v83 = v157[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_62;
  }

  v68 = v66;
  v69 = v157[0];
  v70 = SEMPolicy.rawValue.getter();
  v71 = 1;
  if (v70 != SEMPolicy.rawValue.getter())
  {
    v72 = SEMPolicy.rawValue.getter();
    v71 = v72 == SEMPolicy.rawValue.getter();
  }

  v73 = SEMPolicy.rawValue.getter();
  v74 = v73 == SEMPolicy.rawValue.getter();
  v157[0] = 0;
  v75 = [v68 setSustainableMode:v71 options:v74 error:v157];
  v76 = v157[0];
  if (!v75)
  {
    v84 = v157[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_62:
    v82 = 0;
    v80 = v155;
LABEL_63:
    static Logger.daemon.getter();
    swift_errorRetain();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138543362;
      swift_errorRetain();
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 4) = v89;
      *v88 = v89;
      _os_log_impl(&_mh_execute_header, v85, v86, "(CLPC) Unable to set sustained execution mode: %{public}@", v87, 0xCu);
      sub_1000096E8(v88, &unk_100053C00, &qword_10003E810);
    }

    else
    {
    }

    v90 = v133;
    (*(v137 + 1))(v80, v133);
    goto LABEL_67;
  }

  v157[0] = 0;
  v77 = v76;
  v78 = [v68 isInSustainableMode:v157];
  v79 = v157[0];
  v80 = v155;
  if (v157[0])
  {
    swift_willThrow();
    v81 = v79;
    swift_unknownObjectRelease();
    v82 = 0;
    goto LABEL_63;
  }

  if (v136 == v135)
  {
    swift_unknownObjectRelease();
    v82 = 0;
    v90 = v133;
  }

  else
  {
    v120 = v78;
    static Logger.daemon.getter();
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v157[0] = v124;
      *v123 = 134349314;
      *(v123 + 4) = v120;
      *(v123 + 12) = 2082;
      v125 = CLPCSustainableModeOptions.description.getter(v74);
      v127 = sub_100034C38(v125, v126, v157);

      *(v123 + 14) = v127;
      _os_log_impl(&_mh_execute_header, v121, v122, "(CLPC) Set sustained execution mode to %{public}lu with options %{public}s", v123, 0x16u);
      sub_100003964(v124);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v90 = v133;
    (*(v137 + 1))(v67, v133);
    v82 = 0;
  }

LABEL_67:
  v91 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens;
  v92 = *(v51 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
  swift_beginAccess();
  if (*(v92 + 60))
  {
    v93 = SEMPolicy.rawValue.getter();
    if (v93 == SEMPolicy.rawValue.getter())
    {
      v94 = 1;
    }

    else
    {
      v99 = SEMPolicy.rawValue.getter();
      v94 = 2 * (v99 == SEMPolicy.rawValue.getter());
    }

    v100 = *(v51 + v91);
    swift_beginAccess();
    notify_set_state(*(v100 + 60), v94);
    v157[0] = 0xD000000000000031;
    v157[1] = 0x8000000100041390;
    v101 = v149;
    static String.Encoding.utf8.getter();
    sub_100009790();
    v102 = StringProtocol.cString(using:)();
    (*(v150 + 8))(v101, v151);
    if (v102)
    {
      v103 = (v102 + 32);
    }

    else
    {
      v103 = 0;
    }

    notify_post(v103);

    v95 = v152;
    static Logger.daemon.getter();
    v96 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v157[0] = v106;
      *v105 = 136446210;
      v107 = SEMPolicy.description.getter();
      v155 = 0;
      v109 = sub_100034C38(v107, v108, v157);

      *(v105 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v96, v104, "Sustained execution mode set to %{public}s.", v105, 0xCu);
      sub_100003964(v106);

      v82 = v155;
      (*(v137 + 1))(v95, v90);
      goto LABEL_79;
    }
  }

  else
  {
    v95 = v147;
    static Logger.daemon.getter();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Unable to post game mode darwin notification - token is invalid!", v98, 2u);
    }
  }

  (*(v137 + 1))(v95, v90);
LABEL_79:
  v143(v132, v51 + v153, v138);
  v110 = objc_allocWithZone(type metadata accessor for SustainedExecutionStatus());
  v111 = SustainedExecutionStatus.init(config:)();
  v112 = off_1000541F8;
  v113 = *(off_1000541F8 + 2);

  [v113 lock];
  v154 = v112;
  v155 = v111;
  sub_100019904(v111, v112, v157);
  if (v82)
  {

    [v113 unlock];
    __break(1u);
  }

  else
  {
    [v113 unlock];
    v114 = v157[0];
    if (v157[0] >> 62)
    {
      v115 = _CocoaArrayWrapper.endIndex.getter();
      if (v115)
      {
LABEL_82:
        if (v115 < 1)
        {
          __break(1u);
        }

        for (j = 0; j != v115; ++j)
        {
          if ((v114 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v117 = *(v114 + 8 * j + 32);
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v119 = [*(Strong + 16) remoteObjectProxy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100003870(&qword_100054458, &qword_10003E7B0);
            if (swift_dynamicCast())
            {
              [v156 updateStatus:0 :0 :v155 :0];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v115 = *((v157[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v115)
      {
        goto LABEL_82;
      }
    }
  }
}

uint64_t sub_10002CA74(int a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v104 - v14;
  v16 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v121 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v104 - v20;
  v21 = type metadata accessor for DynamicSplitterStatus.Config();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  result = __chkstk_darwin(v23);
  v28 = &v104 - v27;
  if (v4[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter] != 1)
  {
    return result;
  }

  v108 = v26;
  v110 = a3;
  v106 = v15;
  v111 = v13;
  v112 = v9;
  v113 = v8;
  p_name = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dynamicSplitterStatusConfig;
  v30 = v25;
  swift_beginAccess();
  v31 = *(v30 + 16);
  v31(v28, &v4[p_name], v21);
  v116 = DynamicSplitterStatus.Config.enabled.getter();
  v32 = *(v30 + 8);
  v32(v28, v21);
  v118 = v31;
  v119 = v30 + 16;
  v31(v28, &v4[p_name], v21);
  v115 = DynamicSplitterStatus.Config.impactedBundleIdentifiers.getter();
  v114 = v28;
  v109 = v30 + 8;
  v107 = v32;
  v32(v28, v21);
  swift_beginAccess();
  LODWORD(v125) = a1;
  DynamicSplitterStatus.Config.enabled.setter();
  swift_endAccess();
  v128[0] = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v124 = p_name;
    v126 = a2;
    v117 = v4;
    v120 = v21;
    if (i)
    {
      v34 = 0;
      p_name = a2 & 0xC000000000000001;
      v35 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (p_name)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v34 >= *(v35 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v36 = *(a2 + 8 * v34 + 32);

          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v21 = v128[0];
            if ((v128[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_42;
          }
        }

        if (dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v38 = *(v128[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v34;
        a2 = v126;
        if (v37 == i)
        {
          goto LABEL_16;
        }
      }
    }

    v21 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_19:

    v39 = *(v21 + 16);
    if (!v39)
    {
      goto LABEL_43;
    }

LABEL_21:
    v40 = v21 & 0xC000000000000001;
    v123 = _swiftEmptyArrayStorage;
    p_name = &stru_100051FF8.name;
    v41 = 0;
    if ((v21 & 0xC000000000000001) != 0)
    {
LABEL_35:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v43 = v41 + 1;
      if (!__OFADD__(v41, 1))
      {
        goto LABEL_27;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    while (v41 < *(v21 + 16))
    {
      v42 = *(v21 + 8 * v41 + 32);

      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_39;
      }

LABEL_27:
      v4 = EmbeddedGameProcess.processHandle.getter();
      a2 = [v4 bundle];

      if (a2 && (v4 = [a2 identifier], a2, v4))
      {
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v45;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_100023ABC(0, *(v123 + 2) + 1, 1, v123);
        }

        a2 = *(v123 + 2);
        v46 = *(v123 + 3);
        if (a2 >= v46 >> 1)
        {
          v123 = sub_100023ABC((v46 > 1), a2 + 1, 1, v123);
        }

        v47 = v123;
        *(v123 + 2) = a2 + 1;
        v48 = &v47[16 * a2];
        v49 = v105;
        *(v48 + 4) = v44;
        *(v48 + 5) = v49;
        if (v43 == v39)
        {
          goto LABEL_44;
        }

        v41 = v43;
        if (v40)
        {
          goto LABEL_35;
        }
      }

      else
      {

        ++v41;
        if (v43 == v39)
        {
          goto LABEL_44;
        }

        if (v40)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:
  v39 = _CocoaArrayWrapper.endIndex.getter();
  if (v39)
  {
    goto LABEL_21;
  }

LABEL_43:
  v123 = _swiftEmptyArrayStorage;
LABEL_44:

  LODWORD(v50) = v116 ^ v125;
  v51 = v117;
  v52 = v124;
  swift_beginAccess();
  DynamicSplitterStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    goto LABEL_96;
  }

LABEL_45:

  sub_10001C498(v53);

  swift_beginAccess();
  DynamicSplitterStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  if ((v50 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v125)
  {

    v54 = v122;
    Date.init()();
    v55 = type metadata accessor for Date();
    v56 = *(*(v55 - 8) + 56);
    v56(v54, 0, 1, v55);
    swift_beginAccess();
    DynamicSplitterStatus.Config.enablementDate.setter();
    v56(v54, 1, 1, v55);
    DynamicSplitterStatus.Config.disablementDate.setter();
    goto LABEL_51;
  }

  v57 = v108;
  v58 = v120;
  v118(v108, &v51[v52], v120);
  v59 = v121;
  DynamicSplitterStatus.Config.enablementDate.getter();
  v107(v57, v58);
  v60 = type metadata accessor for Date();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 48))(v59, 1, v60);
  sub_1000096E8(v59, &qword_1000552E0, &qword_10003E780);
  if (v62 != 1)
  {
    v63 = v122;
    Date.init()();
    (*(v61 + 56))(v63, 0, 1, v60);
    swift_beginAccess();
    DynamicSplitterStatus.Config.disablementDate.setter();
    DynamicSplitterStatus.Config.previouslyImpactedBundleIdentifiers.setter();
LABEL_51:
    swift_endAccess();
  }

  else
  {
LABEL_49:
  }

  v64 = objc_opt_self();
  v128[0] = 0;
  v65 = [v64 createClient:v128];
  v66 = v128[0];
  if (!v65)
  {
    v75 = v128[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_72;
  }

  v67 = v65;
  if (((v50 | v110) & 1) == 0)
  {
    v76 = v128[0];
    if (!i)
    {
      goto LABEL_79;
    }

LABEL_59:
    v77 = 0;
    v78 = v126 & 0xC000000000000001;
    v52 = v126 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v78)
      {
        v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v50 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v77 >= *(v52 + 16))
        {
          goto LABEL_95;
        }

        v80 = *(v126 + 8 * v77 + 32);

        v50 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          swift_once();
          goto LABEL_45;
        }
      }

      if (v125)
      {
        v79 = dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter();
      }

      else
      {
        v79 = 0;
      }

      sub_10002D8D0(v79 & 1, v80, v67);

      ++v77;
      if (v50 == i)
      {
        goto LABEL_79;
      }
    }
  }

  v128[0] = 0;
  v68 = v66;
  v69 = [v67 setGameMode:v125 & 1 options:0 error:v128];
  v70 = v128[0];
  if (v69)
  {
    v128[0] = 0;
    v71 = v70;
    v72 = [v67 isInGameMode:v128];
    v73 = v128[0];
    if (v128[0])
    {
      swift_willThrow();
      v74 = v73;
      goto LABEL_71;
    }

    v90 = v72;
    static Logger.daemon.getter();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      LODWORD(v50) = v93;
      *v93 = 134349056;
      *(v93 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v91, v92, "Set DPS to %{public}lu", v93, 0xCu);
    }

    (*(v112 + 8))(v106, v113);
    if (!i)
    {
LABEL_79:
      swift_unknownObjectRelease();
      v86 = v114;
      goto LABEL_80;
    }

    goto LABEL_59;
  }

  v81 = v128[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_71:
  swift_unknownObjectRelease();
LABEL_72:
  v82 = v111;
  static Logger.daemon.getter();
  swift_errorRetain();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();

  v85 = os_log_type_enabled(v83, v84);
  v86 = v114;
  if (v85)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 138543362;
    swift_errorRetain();
    v89 = _swift_stdlib_bridgeErrorToNSError();
    *(v87 + 4) = v89;
    *v88 = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "Unable to set DPS: %{public}@", v87, 0xCu);
    sub_1000096E8(v88, &unk_100053C00, &qword_10003E810);
  }

  else
  {
  }

  (*(v112 + 8))(v82, v113);
LABEL_80:
  v118(v86, &v51[v124], v120);
  v94 = objc_allocWithZone(type metadata accessor for DynamicSplitterStatus());
  v95 = DynamicSplitterStatus.init(config:)();
  v96 = off_1000541F8;
  v97 = *(off_1000541F8 + 2);

  [v97 lock];
  v126 = v95;
  sub_100019ABC(v95, v96, v128);
  [v97 unlock];
  v98 = v128[0];
  if (v128[0] >> 62)
  {
    v99 = _CocoaArrayWrapper.endIndex.getter();
    if (v99)
    {
LABEL_82:
      if (v99 < 1)
      {
        __break(1u);
      }

      v125 = v96;
      for (j = 0; j != v99; ++j)
      {
        if ((v98 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v101 = *(v98 + 8 * j + 32);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v103 = [*(Strong + 16) remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100003870(&qword_100054458, &qword_10003E7B0);
          if (swift_dynamicCast())
          {
            [v127 updateStatus:0 :0 :0 :v126];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v99 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v99)
    {
      goto LABEL_82;
    }
  }
}