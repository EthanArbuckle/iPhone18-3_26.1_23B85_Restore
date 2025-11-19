uint64_t sub_10001CD30(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100235B1C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100237D20(&type metadata accessor for UUID, &qword_1005B0598, &qword_1004D1EE8);
      goto LABEL_12;
    }

    sub_1002387A8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000093F8(&qword_1005A9FC8, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001CFF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000093F8(&qword_1005A9FC8, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10001CD30(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

unint64_t sub_10001D2D8()
{
  result = qword_1005B1A38;
  if (!qword_1005B1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1A38);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SecureLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10001D3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(*(a2 + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  sub_10001D6F0();
}

unint64_t sub_10001D550()
{
  result = qword_1005B1DE8;
  if (!qword_1005B1DE8)
  {
    sub_10004B610(&qword_1005B1DE0, &qword_1004D6080);
    sub_10000A49C(&qword_1005AEB50, type metadata accessor for FriendInfoOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DE8);
  }

  return result;
}

unint64_t sub_10001D604()
{
  result = qword_1005AE828;
  if (!qword_1005AE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10001D6F0()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000D01C(*&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - startMonitoring", v5, 0xCu);
    sub_100004984(v6);
  }

  v7 = type metadata accessor for Transaction();
  __chkstk_darwin(v7);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_10001D8B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_10001DCB4(a1, v5);
}

uint64_t sub_10001D96C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_10002097C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005908A8;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_10001DC6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001DCB4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1002068E0;

  return v6(v2 + 16);
}

uint64_t sub_10001DDC8(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_10001DEE8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10001DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10001E0C8, 0, 0);
}

uint64_t sub_10001DF0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DF54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E0C8()
{
  v1 = *(v0 + 24);
  v2 = *(LocationRequest.toHandles.getter() + 16);

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    v3[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    v6 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
    *v5 = v0;
    v5[1] = sub_10038B66C;
    v7 = *(v0 + 16);

    return withCheckedContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000024, 0x80000001004E8920, sub_100020820, v3, v6);
  }

  else
  {
    v8 = *(v0 + 16);
    *v8 = sub_1002087C4(_swiftEmptyArrayStorage);
    v9 = *(v0 + 8);

    return v9();
  }
}

void sub_10001E230(void *a1, uint64_t a2, void (*a3)(void), id a4)
{
  v213 = type metadata accessor for DispatchWorkItemFlags();
  v212 = *(v213 - 8);
  v8 = *(v212 + 64);
  __chkstk_darwin(v213);
  v209 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for DispatchQoS();
  v210 = *(v211 - 8);
  v10 = *(v210 + 64);
  __chkstk_darwin(v211);
  v208 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for DispatchQoS.QoSClass();
  v206 = *(v207 - 8);
  v12 = *(v206 + 64);
  __chkstk_darwin(v207);
  v205 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v216 = &v192 - v16;
  v17 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v219 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v192 - v22;
  v222 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v24 = *(*(v222 - 1) + 64);
  v25 = __chkstk_darwin(v222);
  v218 = &v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v217 = &v192 - v27;
  v28 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v215 = &v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v221 = &v192 - v33;
  v34 = __chkstk_darwin(v32);
  v214 = &v192 - v35;
  __chkstk_darwin(v34);
  v220 = &v192 - v36;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_10000A6F0(v37, qword_1005DFB98);
  v39 = a1;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v223 = a4;
    v224 = a2;
    v43 = v42;
    v44 = v23;
    v45 = v38;
    v46 = v18;
    v47 = v17;
    v48 = a3;
    v49 = swift_slowAlloc();
    aBlock = v49;
    *v43 = 136446210;
    *(v43 + 4) = sub_10000D01C(*&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s - startMonitoring started block", v43, 0xCu);
    sub_100004984(v49);
    a3 = v48;
    v17 = v47;
    v18 = v46;
    v38 = v45;
    v23 = v44;

    a4 = v223;
    a2 = v224;
  }

  My = type metadata accessor for Feature.FindMy();
  v229 = My;
  v230 = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v51 = sub_10000331C(&aBlock);
  (*(*(My - 8) + 104))(v51, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(&aBlock);
  if ((My & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v52 = sub_100021148();

  if ((v52 & 1) == 0 || v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] != 1)
  {
LABEL_15:
    (*(v18 + 104))(v23, enum case for SecureLocationsStewie.ServiceState.disabled(_:), v17);
    sub_100022084(v23);
    (*(v18 + 8))(v23, v17);
    v66 = v39;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v67, v68))
    {
LABEL_18:

      sub_100022950();
      v72 = type metadata accessor for SecureLocationsStewie.Error();
      sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
      v73 = swift_allocError();
      (*(*(v72 - 8) + 104))(v74, enum case for SecureLocationsStewie.Error.disabled(_:), v72);
      a3(v73);

      goto LABEL_19;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock = v70;
    *v69 = 136446210;
    *(v69 + 4) = sub_10000D01C(*&v66[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v66[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    v71 = "%{public}s - startMonitoring: featureDisabled";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v67, v68, v71, v69, 0xCu);
    sub_100004984(v70);

    goto LABEL_18;
  }

  if (static SystemInfo.isKoreaSKU.getter())
  {
    v53 = type metadata accessor for KoreaFeatureFlag();
    v229 = v53;
    v230 = sub_10001DFF0(&qword_1005AB4D8, &type metadata accessor for KoreaFeatureFlag);
    v54 = sub_10000331C(&aBlock);
    (*(*(v53 - 8) + 104))(v54, enum case for KoreaFeatureFlag.ArcticPlum(_:), v53);
    LOBYTE(v53) = isFeatureEnabled(_:)();
    sub_100004984(&aBlock);
    if ((v53 & 1) == 0)
    {
      (*(v18 + 104))(v23, enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:), v17);
      sub_100022084(v23);
      (*(v18 + 8))(v23, v17);
      v76 = v39;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v67, v68))
      {
        goto LABEL_18;
      }

      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock = v70;
      *v69 = 136446210;
      *(v69 + 4) = sub_10000D01C(*&v76[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v76[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      v71 = "%{public}s - startMonitoring: disabled in geo";
      goto LABEL_17;
    }
  }

  v223 = a4;
  v199 = a3;
  v224 = a2;
  v55 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v56 = v39;
  v57 = v220;
  v201 = *(v18 + 104);
  v204 = v18 + 104;
  v201(v220, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v17);
  v58 = *(v18 + 56);
  v194 = v18 + 56;
  v193 = v58;
  v58(v57, 0, 1, v17);
  v59 = *(v222 + 12);
  v202 = v56;
  v196 = v55;
  v60 = v56 + v55;
  v61 = v217;
  sub_100005F04(v60, v217, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v57, v61 + v59, &qword_1005AB4B0, &unk_1004C5410);
  v62 = *(v18 + 48);
  v63 = v62(v61, 1, v17);
  v197 = v18 + 48;
  v195 = v62;
  if (v63 == 1)
  {
    sub_100002CE0(v57, &qword_1005AB4B0, &unk_1004C5410);
    v64 = v62(v61 + v59, 1, v17);
    v65 = v221;
    if (v64 == 1)
    {
      sub_100002CE0(v61, &qword_1005AB4B0, &unk_1004C5410);
      v200 = 1;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v75 = v214;
  sub_100005F04(v61, v214, &qword_1005AB4B0, &unk_1004C5410);
  if (v62(v61 + v59, 1, v17) == 1)
  {
    sub_100002CE0(v220, &qword_1005AB4B0, &unk_1004C5410);
    (*(v18 + 8))(v75, v17);
    v65 = v221;
LABEL_22:
    sub_100002CE0(v61, &qword_1005AB4A8, &qword_1004C5408);
    v200 = 0;
    goto LABEL_26;
  }

  (*(v18 + 32))(v23, v61 + v59, v17);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
  v200 = dispatch thunk of static Equatable.== infix(_:_:)();
  v77 = v75;
  v78 = *(v18 + 8);
  v78(v23, v17);
  sub_100002CE0(v220, &qword_1005AB4B0, &unk_1004C5410);
  v78(v77, v17);
  sub_100002CE0(v61, &qword_1005AB4B0, &unk_1004C5410);
  v65 = v221;
LABEL_26:
  v201(v65, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v17);
  v193(v65, 0, 1, v17);
  v79 = v17;
  v80 = *(v222 + 12);
  v81 = v218;
  sub_100005F04(v202 + v196, v218, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v65, v81 + v80, &qword_1005AB4B0, &unk_1004C5410);
  v82 = v195;
  v83 = v195(v81, 1, v79);
  v198 = v18;
  v203 = v38;
  if (v83 == 1)
  {
    sub_100002CE0(v65, &qword_1005AB4B0, &unk_1004C5410);
    v84 = v79;
    if (v82(v81 + v80, 1, v79) == 1)
    {
      sub_100002CE0(v81, &qword_1005AB4B0, &unk_1004C5410);
      v85 = 1;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v86 = v215;
  sub_100005F04(v81, v215, &qword_1005AB4B0, &unk_1004C5410);
  if (v82(v81 + v80, 1, v79) == 1)
  {
    sub_100002CE0(v221, &qword_1005AB4B0, &unk_1004C5410);
    v87 = v86;
    v84 = v79;
    (*(v18 + 8))(v87, v79);
LABEL_31:
    sub_100002CE0(v81, &qword_1005AB4A8, &qword_1004C5408);
    v85 = 0;
    goto LABEL_33;
  }

  (*(v18 + 32))(v23, v81 + v80, v79);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
  v85 = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = *(v18 + 8);
  v88(v23, v79);
  sub_100002CE0(v221, &qword_1005AB4B0, &unk_1004C5410);
  v89 = v86;
  v84 = v79;
  v88(v89, v79);
  sub_100002CE0(v81, &qword_1005AB4B0, &unk_1004C5410);
LABEL_33:
  v90 = v202;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    aBlock = v94;
    *v93 = 136446722;
    *(v93 + 4) = sub_10000D01C(*&v90[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v90[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    *(v93 + 12) = 1024;
    v95 = v200;
    *(v93 + 14) = v200 & 1;
    *(v93 + 18) = 1024;
    *(v93 + 20) = v85 & 1;
    _os_log_impl(&_mh_execute_header, v91, v92, "%{public}s - startMonitoring: isPublishInProgress %{BOOL}d isThrottled %{BOOL}d", v93, 0x18u);
    sub_100004984(v94);

    v96 = v84;
    v97 = v198;
  }

  else
  {

    v96 = v84;
    v97 = v198;
    v95 = v200;
  }

  v98 = sub_100021BB4();

  if ((v98 | v95 | v85))
  {
    v99 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_keyManager;
    v100 = *(*&v90[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_keyManager] + 32);

    v101 = v216;
    sub_1004AE5D8(v216);
    v102 = v200;

    v103 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    v104 = (*(*(v103 - 8) + 48))(v101, 1, v103) != 1;
    sub_100002CE0(v101, &qword_1005AB4D0, &unk_1004C45D0);
    if ((v104 | v102 | v85))
    {
      v222 = v96;
      v105 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient;
      v106 = *&v90[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
      if (v106)
      {
        goto LABEL_42;
      }

      v221 = v90;
      v107 = v90;
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = v97;
        v111 = swift_slowAlloc();
        v112 = v23;
        v113 = swift_slowAlloc();
        aBlock = v113;
        *v111 = 136446210;
        *(v111 + 4) = sub_10000D01C(*&v107[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v107[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
        _os_log_impl(&_mh_execute_header, v108, v109, "%{public}s - startMonitoring but we have no data client - creating one", v111, 0xCu);
        sub_100004984(v113);
        v23 = v112;

        v97 = v110;
      }

      v107[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = 0;
      v114 = [objc_allocWithZone(CTStewieDataClient) initWithServices:4 delegate:v107 delegateQueue:*&v107[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue]];
      v90 = v221;
      v115 = *&v221[v105];
      *&v221[v105] = v114;

      v106 = *&v90[v105];
      v102 = v200;
      if (v106)
      {
LABEL_42:
        v116 = v97;
        v117 = v106;
        if ([v117 start])
        {
          v118 = v90;
          sub_1001192AC();
          v222 = [v117 getState];
          sub_100116DE4(v222, 1);
          sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
          v119 = v206;
          v120 = v205;
          v121 = v207;
          (*(v206 + 104))(v205, enum case for DispatchQoS.QoSClass.default(_:), v207);
          v122 = static OS_dispatch_queue.global(qos:)();
          (*(v119 + 8))(v120, v121);
          v123 = swift_allocObject();
          v124 = v223;
          *(v123 + 16) = v199;
          *(v123 + 24) = v124;
          v230 = sub_1000C795C;
          v231 = v123;
          aBlock = _NSConcreteStackBlock;
          v227 = 1107296256;
          v228 = sub_100020828;
          v229 = &unk_100590998;
          v125 = _Block_copy(&aBlock);

          v223 = v117;
          v126 = v208;
          static DispatchQoS.unspecified.getter();
          v225 = _swiftEmptyArrayStorage;
          sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10004B564(&unk_1005A9700, &qword_1004C3820);
          sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
          v127 = v209;
          v128 = v213;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v125);

          (*(v212 + 8))(v127, v128);
          (*(v210 + 8))(v126, v211);

          v129 = v118;
          v130 = Logger.logObject.getter();
          v131 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            aBlock = v133;
            *v132 = 136446210;
            *(v132 + 4) = sub_10000D01C(*&v129[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v129[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
            _os_log_impl(&_mh_execute_header, v130, v131, "%{public}s - started dataclient", v132, 0xCu);
            sub_100004984(v133);
          }
        }

        else
        {
          v156 = v199;
          if (((v85 | v102) & 1) == 0)
          {
            v157 = v222;
            v201(v23, enum case for SecureLocationsStewie.ServiceState.unavailable(_:), v222);
            sub_100022084(v23);
            (*(v116 + 8))(v23, v157);
          }

          v158 = v90;
          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            aBlock = v162;
            *v161 = 136446210;
            *(v161 + 4) = sub_10000D01C(*&v158[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v158[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
            _os_log_impl(&_mh_execute_header, v159, v160, "%{public}s - start dataclient returned false", v161, 0xCu);
            sub_100004984(v162);
          }

          v163 = v223;
          sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
          v164 = v206;
          v165 = v205;
          v166 = v207;
          (*(v206 + 104))(v205, enum case for DispatchQoS.QoSClass.default(_:), v207);
          v167 = static OS_dispatch_queue.global(qos:)();
          (*(v164 + 8))(v165, v166);
          v168 = swift_allocObject();
          *(v168 + 16) = v156;
          *(v168 + 24) = v163;
          v230 = sub_10011EFD0;
          v231 = v168;
          aBlock = _NSConcreteStackBlock;
          v227 = 1107296256;
          v228 = sub_100020828;
          v229 = &unk_100590948;
          v169 = _Block_copy(&aBlock);

          v170 = v208;
          static DispatchQoS.unspecified.getter();
          v225 = _swiftEmptyArrayStorage;
          sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10004B564(&unk_1005A9700, &qword_1004C3820);
          sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
          v171 = v209;
          v172 = v213;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v169);
          (*(v212 + 8))(v171, v172);
          (*(v210 + 8))(v170, v211);
        }
      }

      else
      {
        v173 = v107;
        v174 = Logger.logObject.getter();
        v175 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = v97;
          v177 = swift_slowAlloc();
          v178 = v23;
          v179 = swift_slowAlloc();
          aBlock = v179;
          *v177 = 136446210;
          *(v177 + 4) = sub_10000D01C(*&v173[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v173[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
          _os_log_impl(&_mh_execute_header, v174, v175, "%{public}s - attempting to start monitor but no data client instance available", v177, 0xCu);
          sub_100004984(v179);
          v23 = v178;

          v97 = v176;
        }

        v180 = v199;
        if (((v85 | v200) & 1) == 0)
        {
          v181 = v222;
          v201(v23, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v222);
          sub_100022084(v23);
          (*(v97 + 8))(v23, v181);
        }

        sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
        v182 = v206;
        v183 = v205;
        v184 = v207;
        (*(v206 + 104))(v205, enum case for DispatchQoS.QoSClass.default(_:), v207);
        v185 = static OS_dispatch_queue.global(qos:)();
        (*(v182 + 8))(v183, v184);
        v186 = swift_allocObject();
        v187 = v223;
        *(v186 + 16) = v180;
        *(v186 + 24) = v187;
        v230 = sub_10011FAE8;
        v231 = v186;
        aBlock = _NSConcreteStackBlock;
        v227 = 1107296256;
        v228 = sub_100020828;
        v229 = &unk_1005908F8;
        v188 = _Block_copy(&aBlock);

        v189 = v208;
        static DispatchQoS.unspecified.getter();
        v225 = _swiftEmptyArrayStorage;
        sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10004B564(&unk_1005A9700, &qword_1004C3820);
        sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
        v190 = v209;
        v191 = v213;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v188);

        (*(v212 + 8))(v190, v191);
        (*(v210 + 8))(v189, v211);
      }
    }

    else
    {
      v201(v23, enum case for SecureLocationsStewie.ServiceState.notSetup(_:), v96);
      sub_100022084(v23);
      (*(v97 + 8))(v23, v96);
      v145 = v90;
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        aBlock = v149;
        *v148 = 136446210;
        *(v148 + 4) = sub_10000D01C(*&v145[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v145[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
        _os_log_impl(&_mh_execute_header, v146, v147, "%{public}s - secureLocations not setup. attempting setup before starting monitor", v148, 0xCu);
        sub_100004984(v149);
      }

      v150 = type metadata accessor for SecureLocationsStewie.Error();
      sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
      v151 = swift_allocError();
      (*(*(v150 - 8) + 104))(v152, enum case for SecureLocationsStewie.Error.initialization(_:), v150);
      v199(v151);

      v153 = *&v90[v99];
      v154 = v145;

      sub_1000F7FB4(v155, v154);
    }
  }

  else
  {
    v134 = v219;
    v135 = v96;
    v201(v219, enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:), v96);
    sub_100022084(v134);
    v136 = v90;
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = v97;
      v141 = swift_slowAlloc();
      aBlock = v141;
      *v139 = 136446210;
      *(v139 + 4) = sub_10000D01C(*&v136[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v136[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v137, v138, "%{public}s - startMonitoring: not a location publishing device", v139, 0xCu);
      sub_100004984(v141);
      v97 = v140;
    }

    sub_100022950();
    v142 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
    v143 = swift_allocError();
    (*(*(v142 - 8) + 104))(v144, enum case for SecureLocationsStewie.Error.cannotPublish(_:), v142);
    v199(v143);

    (*(v97 + 8))(v219, v135);
  }

LABEL_19:
  Transaction.capture()();
}

uint64_t sub_1000203B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000203F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v22 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v23 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B2510, &qword_1004D70C0);
  v20[0] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = type metadata accessor for LocationRequest();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[2] = *(a2 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationWorkItemQueue);
  v20[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v13 + 16))(v15, v21, v12);
  (*(v8 + 16))(v11, v22, v7);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v16, v15, v12);
  (*(v8 + 32))(v18 + v17, v11, v20[0]);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1000206C4()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10004B564(&qword_1005B2510, &qword_1004D70C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100020828(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10002086C()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100020988, v2, 0);
}

uint64_t sub_100020988()
{
  v1 = v0[2];
  v2 = v0[35];
  if (v1)
  {
    v3 = v0[35];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[3] = v2;
    v80 = v1 + 64;
    v5 = -1;
    v6 = -1 << *(v1 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v1 + 64);
    v79 = (63 - v6) >> 6;
    v8 = v0[35];
    v81 = v1;

    for (i = 0; ; i = v88)
    {
      v92 = v8;
      v90 = isUniquelyReferenced_nonNull_native;
      if (!v7)
      {
        if (v79 <= i + 1)
        {
          v15 = i + 1;
        }

        else
        {
          v15 = v79;
        }

        while (1)
        {
          v14 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v14 >= v79)
          {
            v88 = v15 - 1;
            v62 = v0[20];
            v63 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
            (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
            v7 = 0;
            goto LABEL_16;
          }

          v7 = *(v80 + 8 * v14);
          ++i;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
      }

      v14 = i;
LABEL_15:
      v16 = v0[20];
      v17 = v0[15];
      v18 = v0[16];
      v19 = v0[14];
      v20 = v0[12];
      v83 = v0[11];
      v87 = v0[18];
      v21 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v22 = v21 | (v14 << 6);
      v23 = *(v81 + 48) + *(v18 + 72) * v22;
      (*(v18 + 16))();
      (*(v20 + 16))(v19, *(v81 + 56) + *(v20 + 72) * v22, v83);
      v24 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v25 = *(v24 + 48);
      (*(v18 + 32))(v16, v87, v17);
      (*(v20 + 32))(v16 + v25, v19, v83);
      (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
      v88 = v14;
LABEL_16:
      v26 = v0[19];
      sub_1000176A8(v0[20], v26, &qword_1005B2438, &qword_1004D68B0);
      v27 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
      v29 = v0[21];
      if (v28 == 1)
      {
        v30 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      }

      else
      {
        v31 = v0[19];
        v33 = v0[15];
        v32 = v0[16];
        v34 = v0[12];
        v84 = v0[11];
        v35 = *(v27 + 48);
        v36 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        v37 = *(v36 + 48);
        (*(v32 + 16))(v29, v31, v33);
        (*(v34 + 16))(v29 + v37, v31 + v35, v84);
        sub_100002CE0(v31, &qword_1005B2440, &qword_1004D68C0);
        (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
      }

      v38 = v0[21];
      v39 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {

        v0[35] = v92;
        v64 = v0[34];
        v65 = v0[7];
        v66 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
        v67 = swift_task_alloc();
        v0[36] = v67;
        *v67 = v0;
        v67[1] = sub_10002086C;
        v68 = v0[24];
        v12 = v0[22];
        v9 = (v0 + 2);
        v10 = v65;
        v11 = v64;

        return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
      }

      v40 = v0[17];
      v42 = v0[12];
      v41 = v0[13];
      v43 = v0[11];
      v44 = *(v39 + 48);
      v82 = *(v0[16] + 32);
      v82(v40, v38, v0[15]);
      v85 = *(v42 + 32);
      v85(v41, v38 + v44, v43);
      v45 = sub_1001FD93C(v40);
      v46 = v92[2];
      v47 = (v10 & 1) == 0;
      v9 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_40;
      }

      v48 = v10;
      if (v92[3] >= v9)
      {
        if ((v90 & 1) == 0)
        {
          sub_1002034E4();
        }
      }

      else
      {
        v49 = v0[17];
        sub_10022D91C(v9, v90 & 1);
        v50 = v0[3];
        v51 = sub_1001FD93C(v49);
        if ((v48 & 1) != (v52 & 1))
        {
          v78 = v0[15];

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v45 = v51;
      }

      v8 = v0[3];
      v54 = v0[16];
      v53 = v0[17];
      v55 = v0[15];
      v57 = v0[12];
      v56 = v0[13];
      v58 = v0[11];
      if (v48)
      {
        (*(v54 + 8))(v0[17], v0[15]);
        v9 = (*(v57 + 40))(v8[7] + *(v57 + 72) * v45, v56, v58);
      }

      else
      {
        v8[(v45 >> 6) + 8] |= 1 << v45;
        v82(v8[6] + *(v54 + 72) * v45, v53, v55);
        v9 = (v85)(v8[7] + *(v57 + 72) * v45, v56, v58);
        v59 = v8[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_41;
        }

        v8[2] = v61;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }
  }

  v70 = v0[32];
  v69 = v0[33];
  v71 = v0[28];
  v72 = v0[21];
  v74 = v0[19];
  v73 = v0[20];
  v86 = v0[18];
  v89 = v0[17];
  v91 = v0[14];
  v93 = v0[13];
  v75 = v0[4];
  (*(v0[23] + 8))(v0[24], v0[22]);
  *v75 = v2;

  v76 = v0[1];

  return v76();
}

uint64_t sub_100021148()
{
  v1 = type metadata accessor for SecureLocationsConfig();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static SystemInfo.isInternalBuild.getter())
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 BOOLForKey:v6];

    if (v7)
    {
      return 1;
    }
  }

  v9 = (v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
  os_unfair_lock_lock(v9);
  v10 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000214CC(v9 + *(v10 + 28), v4, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v9);
  v8 = v4[80];
  sub_10002172C(v4, type metadata accessor for SecureLocationsConfig);
  return v8;
}

uint64_t type metadata accessor for SecureLocationsConfig()
{
  result = qword_1005ADC08;
  if (!qword_1005ADC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000212EC()
{
  v2 = *(type metadata accessor for LocationRequest() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B2510, &qword_1004D70C0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100003690;

  return sub_10002142C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_10002142C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_10038B77C;

  return sub_100021604(a2);
}

uint64_t sub_1000214CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002159C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021604(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for LocationRequest();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002184C, v1, 0);
}

uint64_t sub_10002172C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002178C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000217EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002184C()
{
  v16 = v0;
  v1 = v0[3];
  v2 = *(LocationRequest.toHandles.getter() + 16);

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100028AD8;
    v4 = v0[4];

    return sub_100021A68();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0B28);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E86E0, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s with empty handles", v9, 0xCu);
      sub_100004984(v10);
    }

    v11 = sub_1002087C4(_swiftEmptyArrayStorage);
    v13 = v0[9];
    v12 = v0[10];

    v14 = v0[1];

    return v14(v11);
  }
}

uint64_t sub_100021A68()
{
  v1[3] = v0;
  v2 = type metadata accessor for Friend();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[10] = v9;
  *v9 = v1;
  v9[1] = sub_100021D74;

  return daemon.getter();
}

uint64_t sub_100021BB4()
{
  v1 = *(v0 + 112);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v2 = *(*(qword_1005DFBF8 + 24) + 16);
  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v9;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v8 == 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "LocationSharing: isMyLocationEnabled %{BOOL}d isThisMeDevice %{BOOL}d", v6, 0xEu);
  }

  if (v8 == 1)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021D74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000095A8(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100021F5C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100021F5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v10 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_10037F550;
  }

  else
  {
    v7 = v3[11];
    v8 = v3[3];

    v6 = sub_1000222C0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100022084(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = type metadata accessor for SecureLocationsStewie.ServiceState();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, a1, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
    v17 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
    swift_beginAccess();
    sub_100022364(v6, v1 + v17, &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    return sub_1000223CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000222C0()
{
  *(v0 + 120) = *(*(v0 + 24) + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10002B544();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002B5A8, v2, v1);
}

uint64_t sub_100022364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000223CC()
{
  v1 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v38 = &v36 - v3;
  v4 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v36 = &v36 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v24 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
    swift_beginAccess();
    sub_100005F04(v0 + v24, v7, &qword_1005AB4B0, &unk_1004C5410);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100002CE0(v7, &qword_1005AB4B0, &unk_1004C5410);
      (*(v9 + 104))(v14, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v8);
      v25 = type metadata accessor for TaskPriority();
      v26 = v38;
      (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
      v27 = v37;
      (*(v9 + 16))(v37, v14, v8);
      v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      (*(v9 + 32))(v29 + v28, v27, v8);
      sub_10020D620(0, 0, v26, &unk_1004C5420, v29);
    }

    else
    {
      v30 = *(v9 + 32);
      v31 = v36;
      v30(v36, v7, v8);
      v32 = type metadata accessor for TaskPriority();
      v33 = v38;
      (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
      (*(v9 + 16))(v14, v31, v8);
      v34 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      v30((v35 + v34), v14, v8);
      sub_10020D620(0, 0, v33, &unk_1004C5428, v35);
      v14 = v31;
    }

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000228E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022950()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100023890;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590858;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_100022C20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022C58(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100022CCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = *(v4 + 112);

    v8 = sub_10030B86C;
  }

  else
  {
    *(v4 + 136) = a1;
    v8 = sub_100022E78;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100022DFC(uint64_t a1)
{
  v2 = *(*(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8) + 80);

  return sub_100022C58(a1);
}

uint64_t sub_100022E78()
{
  v27 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 104) + 1;
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = sub_10002310C(sub_1000236EC, v9);

  v11 = sub_10000E19C(v10, v3);

  (*(v7 + 8))(v4, v6);
  if (v8 != v5)
  {
LABEL_5:
    v15 = *(v0 + 96);
    v16 = *(v0 + 104) + 1;
    *(v0 + 104) = v16;
    *(v0 + 112) = v11;
    v17 = *(v0 + 40);
    v18 = *(v0 + 64) + 16;
    v15(*(v0 + 72), *(v0 + 32) + ((*(v0 + 144) + 32) & ~*(v0 + 144)) + *(v0 + 88) * v16, *(v0 + 56));
    v19 = *(v17 + 128);
    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    *v20 = v0;
    v20[1] = sub_100022CCC;
    v21 = *(v0 + 72);

    return sub_10001BBDC(v21);
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_10022BCF4(*(v11 + 16), 0);
    v14 = *(type metadata accessor for Friend() - 8);
    v11 = sub_10023EAA8(&v26, &v13[(*(v14 + 80) + 32) & ~*(v14 + 80)], v12, v11);
    sub_10000E3F8();
    if (v11 != v12)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v23 = *(v0 + 48);
  *(v0 + 24) = v13;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(returning:)();
  v24 = *(v0 + 72);

  v25 = *(v0 + 8);

  return v25();
}

char *sub_10002310C(void (*a1)(char *), uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v40 = type metadata accessor for Friend();
  v33 = *(v40 - 8);
  v9 = *(v33 + 64);
  v10 = __chkstk_darwin(v40);
  v38 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v32 = v31 - v12;
  v13 = type metadata accessor for FriendRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v31 - v20;
  v39 = dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v22 = *(v14 + 48);
  v36 = v14 + 48;
  v37 = v13;
  v35 = v22;
  if (v22(v21, 1, v13) == 1)
  {
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    v34 = (v33 + 48);
    v24 = (v33 + 32);
    v23 = _swiftEmptyArrayStorage;
    v31[0] = a1;
    v31[1] = a2;
    while (1)
    {
      sub_100274934(v21, v17, type metadata accessor for FriendRecord);
      a1(v17);
      if (v2)
      {
        break;
      }

      sub_100274A04(v17, type metadata accessor for FriendRecord);
      v25 = v40;
      if ((*v34)(v8, 1, v40) == 1)
      {
        sub_100002CE0(v8, &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v26 = *v24;
        v27 = v32;
        (*v24)(v32, v8, v25);
        v26(v38, v27, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1001FCB80(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_1001FCB80(v28 > 1, v29 + 1, 1, v23);
        }

        *(v23 + 2) = v29 + 1;
        v26(&v23[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29], v38, v40);
        a1 = v31[0];
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v35(v21, 1, v37) == 1)
      {
        goto LABEL_14;
      }
    }

    sub_100274A04(v17, type metadata accessor for FriendRecord);
  }

LABEL_14:

  return v23;
}

uint64_t sub_100023564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 144);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000236A0(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100023720(_BYTE *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
  *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient] = 0;

  a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = 0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(*&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "%{public}s - stopped monitor", v6, 0xCu);
    sub_100004984(v7);
  }
}

uint64_t sub_100023898@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v23 = type metadata accessor for FriendInfoOption(0);
  v26 = *(v23 - 8);
  v5 = *(v26 + 64);
  v6 = __chkstk_darwin(v23);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v27 = a2;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      sub_100018254(*(v27 + 48) + *(v26 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v10, type metadata accessor for FriendInfoOption);
      sub_100455738(v10, v8, type metadata accessor for FriendInfoOption);
      v19 = v25(v8);
      if (v3)
      {
        sub_100006E68(v8, type metadata accessor for FriendInfoOption);
      }

      if (v19)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_100006E68(v8, type metadata accessor for FriendInfoOption);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v22 = v24;
    sub_100455738(v8, v24, type metadata accessor for FriendInfoOption);
    v21 = v22;
    v20 = 0;
    return (*(v26 + 56))(v21, v20, 1, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v20 = 1;
        v21 = v24;
        return (*(v26 + 56))(v21, v20, 1, v23);
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100023B64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HandleType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ClientOrigin();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100023D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100024320;

  return daemon.getter();
}

uint64_t sub_100023DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInfoOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v53 - v7;
  v8 = type metadata accessor for HandleType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AE988, &qword_1004CF4E8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v53 - v15;
  v17 = type metadata accessor for FriendInfoOption(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FriendRecord(0);
  v23 = *(v3 + v22[34]);
  v62 = a1;
  v65 = a1;
  sub_100023898(sub_100024548, v23, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100002CE0(v16, &qword_1005AE988, &qword_1004CF4E8);
    v24 = 1;
    v25 = v64;
  }

  else
  {
    sub_100023DCC(v16, v21);
    v26 = (v3 + v22[15]);
    v28 = *v26;
    v27 = v26[1];
    v68 = v28;
    v69 = v27;
    v66 = 44;
    v67 = 0xE100000000000000;
    sub_1000246F4();
    v61 = StringProtocol.components<A>(separatedBy:)();
    (*(v9 + 104))(v12, enum case for HandleType.pendingOffer(_:), v8);
    v29 = static HandleType.== infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    v30 = &v21[v17[9]];
    v31 = *(v30 + 1);
    if (v31)
    {
      v32 = *v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v62 = *(v30 + 1);
    }

    else
    {
      v62 = 0;
      if ((v29 & 1) == 0)
      {
        v33 = (v3 + v22[16]);
        v32 = *v33;
        v62 = v33[1];
      }
    }

    v57 = v32;
    v34 = *v3;
    v55 = v3[1];
    v35 = v3[2];
    v36 = v3[3];
    v59 = v34;
    v60 = v35;
    sub_100005F04(v3 + v22[6], v63, &qword_1005AE998, &unk_1004D6030);
    v37 = v22[8];
    v38 = (v3 + v22[7]);
    v39 = v38[1];
    v58 = *v38;
    v40 = *&v21[v17[6]];
    v41 = *(v3 + v37);
    v42 = &v21[v17[10]];
    v43 = *(v42 + 1);
    v56 = *v42;
    v44 = v22[12];
    v54 = *(v3 + v22[11]);
    v45 = *(v3 + v44);
    v46 = v22[14];
    v47 = (v3 + v22[13]);
    v48 = v47[1];
    v53 = *v47;
    v49 = *(v3 + v46);
    v50 = *(v3 + v46 + 8);

    swift_bridgeObjectRetain_n();

    v25 = v64;
    Handle.init(withID:qualifiedIdentifier:serverID:idsStatus:dsid:expiresByGroupId:trackingTimestamp:hashedDSID:favoriteOrder:reachable:pushIdentifiers:prettyName:contactIdentifier:siblingIdentifiers:)();
    sub_100006E08(v21, type metadata accessor for FriendInfoOption);
    v24 = 0;
  }

  v51 = type metadata accessor for Handle();
  return (*(*(v51 - 8) + 56))(v25, v24, 1, v51);
}

uint64_t sub_100024320(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_100024564;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t type metadata accessor for LocationService()
{
  result = qword_1005B20A0;
  if (!qword_1005B20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024564(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B8854, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1004B5788;
    v9 = v4[2];

    return sub_100024748(v9);
  }
}

unint64_t sub_1000246F4()
{
  result = qword_1005A8C98;
  if (!qword_1005A8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C98);
  }

  return result;
}

uint64_t sub_100024748(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100378770;

  return sub_100024AB8();
}

uint64_t sub_1000247D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000046BC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100024AD8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13findmylocated15LocationService_activeStewieClientXPCConnectionIDs;
  swift_beginAccess();
  v0[6] = *(v1 + v2);
  v0[7] = *(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);

  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100025250, v4, v3);
}

uint64_t sub_100024BD8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Friend();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0568, &qword_1004D1EB8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100024EF4(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Friend();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0568, &qword_1004D1EB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100025250()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[8] = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_1000252C0, v2, 0);
}

uint64_t sub_1000252C0()
{
  if (*(v0[6] + 16))
  {

    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1003467A4;
    v2 = v0[8];
    v3 = v0[6];

    return sub_100025688(v2, v3);
  }

  else
  {

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0B28);
    swift_bridgeObjectRetain_n();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[8];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      v12 = v0[8];
      if ((v10 & 0xC000000000000001) != 0)
      {
        if (v12 < 0)
        {
          v13 = v0[8];
        }

        v14 = __CocoaSet.count.getter();
        v15 = v0[8];
      }

      else
      {
        v14 = *(v12 + 16);
      }

      *(v11 + 4) = v14;

      *(v11 + 12) = 2048;
      if (_swiftEmptyArrayStorage >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 14) = v16;

      _os_log_impl(&_mh_execute_header, v7, v8, "All XPC sessions: %ld. Active stewie sessions: %ld", v11, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10002556C()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v7 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v4 = sub_10021C688;
  }

  else
  {
    v5 = *(v2 + 952);

    v4 = sub_100025754;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100025688(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100025778, 0, 0);
}

uint64_t sub_100025754()
{
  v1 = v0[106];
  v0[123] = v0[103];
  return _swift_task_switch(sub_100025A3C, v1, 0);
}

uint64_t sub_100025778()
{
  v0[7] = _swiftEmptyArrayStorage;
  v1 = v0[10];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for LocationServiceClient();
    sub_10002676C(&qword_1005B23F0, type metadata accessor for LocationServiceClient);
    Set.Iterator.init(_cocoa:)();
    result = v0[2];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[6];
    v0[16] = result;
    v0[17] = v3;
    v0[18] = v4;
    v0[19] = _swiftEmptyArrayStorage;
    if (result < 0)
    {
      v20 = __CocoaSet.Iterator.next()();
      if (!v20)
      {
LABEL_19:
        v21 = v0[17];
        v22 = v0[18];
        v24 = v0[15];
        v23 = v0[16];
        v25 = v0[14];
        sub_10000E3F8();

        v26 = v0[1];
        v27 = v0[19];

        return v26(v27);
      }

      v0[9] = v20;
      swift_dynamicCast();
      v15 = v0[8];
      v11 = v5;
      v13 = v6;
LABEL_13:
      v0[21] = v11;
      v0[22] = v13;
      v0[20] = v15;
      if (v15)
      {
        v16 = *(v15 + 112);
        v17 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
        v28 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
        v18 = swift_task_alloc();
        v0[23] = v18;
        *v18 = v0;
        v18[1] = sub_100025FA4;
        v19 = v0[15];

        return v28(v19);
      }

      goto LABEL_19;
    }

    v7 = v4 + 64;
  }

  else
  {
    v8 = -1;
    v9 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v6 = v8 & *(v1 + 56);
    v0[16] = v1;
    v0[17] = v3;
    v7 = 63 - v9;
    v0[18] = ~v9;
    v0[19] = _swiftEmptyArrayStorage;

    v5 = 0;
  }

  v10 = v6;
  v11 = v5;
  if (v6)
  {
LABEL_12:
    v13 = (v10 - 1) & v10;
    v14 = *(*(result + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_13;
  }

  v12 = v5;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= (v7 >> 6))
    {
      goto LABEL_19;
    }

    v10 = *(v3 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100025A3C()
{
  v55 = v0;
  if (*(v0 + 1032) == 1)
  {
    v1 = *(v0 + 904);
    v2 = *(v0 + 896);
    v3 = *(v0 + 888);
    v4 = *(v0 + 840);
    v5 = *(v2 + 104);
    v5(v1, enum case for HandleType.follower(_:), v3);
    LOBYTE(v4) = sub_10026040C(v1, v4);
    v6 = *(v2 + 8);
    v6(v1, v3);
    if (v4)
    {
      goto LABEL_5;
    }

    v7 = *(v0 + 904);
    v8 = *(v0 + 888);
    v9 = *(v0 + 840);
    v5(v7, enum case for HandleType.pendingOffer(_:), v8);
    LOBYTE(v9) = sub_10026040C(v7, v9);
    v6(v7, v8);
    if (v9 & 1) != 0 || (v10 = *(v0 + 904), v11 = *(v0 + 888), v12 = *(v0 + 840), v5(v10, enum case for HandleType.following(_:), v11), LOBYTE(v12) = sub_10026040C(v10, v12), v6(v10, v11), (v12))
    {
LABEL_5:
      v13 = *(v0 + 984);
      v14 = *(v0 + 976);
      v15 = *(v0 + 880);
      v16 = *(v0 + 856);
      static Date.trustedNow.getter(v15);
      v17 = swift_task_alloc();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;

      v18 = sub_100026ABC(sub_100027214, v17, v13);

      v19 = *(v18 + 16);

      if (v19)
      {
        v20 = swift_task_alloc();
        *(v0 + 992) = v20;
        *v20 = v0;
        v20[1] = sub_10021C8D8;
        v21 = *(v0 + 848);

        return sub_1001E17C0(v0 + 16);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }

    v36 = *(v0 + 984);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 840);
    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFF18);
    swift_bridgeObjectRetain_n();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 936);
    if (v41)
    {
      v43 = *(v0 + 888);
      v44 = *(v0 + 840);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54[0] = v46;
      *v45 = 136446466;
      v47 = Array.description.getter();
      v49 = sub_10000D01C(v47, v48, v54);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2048;
      v50 = *(v36 + 16);

      *(v45 + 14) = v50;

      _os_log_impl(&_mh_execute_header, v39, v40, "DataManager load LocalStorage friends with types %{public}s count:%ld", v45, 0x16u);
      sub_100004984(v46);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 840);
    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005DFF18);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 936);
    if (v27)
    {
      v29 = *(v0 + 888);
      v30 = *(v0 + 840);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54[0] = v32;
      *v31 = 136446210;
      v33 = Array.description.getter();
      v35 = sub_10000D01C(v33, v34, v54);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "DataManager load friends not checking expiry with types %{public}s", v31, 0xCu);
      sub_100004984(v32);
    }

    v36 = *(v0 + 984);
  }

  v51 = *(v0 + 904);
  v52 = *(v0 + 880);

  v53 = *(v0 + 8);

  return v53(v36);
}

uint64_t sub_100025FA4()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_1000260A0, 0, 0);
}

uint64_t sub_1000260A0()
{
  v1 = v0[11];
  if (!*(v1 + 16) || (v2 = v0[15], v3 = v0[12], v4 = *(v1 + 40), sub_10002676C(&qword_1005AECC0, &type metadata accessor for UUID), v5 = dispatch thunk of Hashable._rawHashValue(seed:)(), v6 = -1 << *(v1 + 32), v7 = v5 & ~v6, ((*(v1 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) == 0))
  {
LABEL_6:
    (*(v0[13] + 8))(v0[15], v0[12]);
    v18 = v0[20];

    v20 = v0[21];
    v21 = v0[22];
    v22 = v0[16];
    if (v22 < 0)
    {
      v29 = __CocoaSet.Iterator.next()();
      if (!v29)
      {
LABEL_22:
        v36 = v0[17];
        v37 = v0[18];
        v39 = v0[15];
        v38 = v0[16];
        v40 = v0[14];
        sub_10000E3F8();

        v41 = v0[1];
        v42 = v0[19];

        return v41(v42);
      }

      v0[9] = v29;
      type metadata accessor for LocationServiceClient();
      swift_dynamicCast();
      v28 = v0[8];
      v24 = v20;
      v26 = v21;
    }

    else
    {
      v23 = v0[22];
      v24 = v0[21];
      if (!v21)
      {
        v25 = v0[21];
        while (1)
        {
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v24 >= ((v0[18] + 64) >> 6))
          {
            goto LABEL_22;
          }

          v23 = *(v0[17] + 8 * v24);
          ++v25;
          if (v23)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

LABEL_12:
      v26 = (v23 - 1) & v23;
      v27 = *(*(v22 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    }

    v0[21] = v24;
    v0[22] = v26;
    v0[20] = v28;
    if (v28)
    {
      v30 = *(v28 + 112);
      v31 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
      v43 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
      v32 = swift_task_alloc();
      v0[23] = v32;
      *v32 = v0;
      v32[1] = sub_100025FA4;
      v33 = v0[15];

      return v43(v33);
    }

    goto LABEL_22;
  }

  v8 = ~v6;
  v9 = v0[13];
  v10 = *(v9 + 72);
  v11 = *(v9 + 16);
  v12 = v0[11];
  while (1)
  {
    v13 = v0[14];
    v14 = v0[12];
    v15 = v0[13];
    v11(v13, *(v12 + 48) + v7 * v10, v14);
    sub_10002676C(&qword_1005A9FC8, &type metadata accessor for UUID);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = *(v15 + 8);
    v0[24] = v17;
    v17(v13, v14);
    if (v16)
    {
      break;
    }

    v12 = v0[11];
    v7 = (v7 + 1) & v8;
    if (((*(v12 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v34 = swift_task_alloc();
  v0[25] = v34;
  *v34 = v0;
  v34[1] = sub_1004AA928;
  v35 = v0[20];

  return sub_1000267B4();
}

uint64_t static Date.trustedNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v14[-v4];
  if (static SystemInfo.underTest.getter())
  {
    if (qword_1005A85E8 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A6F0(v2, qword_1005B5968);
    swift_beginAccess();
    sub_1000CF974(v6, v5);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      return (*(v8 + 32))(a1, v5, v7);
    }

    sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    valueOf(entitlement:)();
    if (v16)
    {
      if ((swift_dynamicCast() & 1) != 0 && v14[15] == 1)
      {
        return static ReferenceClock.now.getter();
      }
    }

    else
    {
      sub_100002CE0(v15, &qword_1005A9680, &qword_1004C32A0);
    }

    if (qword_1005A85F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0D98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Queried trustedNow but falling back to normal Date()", v13, 2u);
    }
  }

  return Date.init()();
}

uint64_t sub_10002676C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000267D4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  v9 = *(*(v42 - 8) + 64);
  v10 = __chkstk_darwin(v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = &_swiftEmptyArrayStorage;
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, v26[2] + 1, 1);
          v26 = v43;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        v26[2] = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_100026AFC()
{
  v1 = *(v0 + 32);
  v2 = async function pointer to withTimeout<A>(_:block:)[1];

  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10002A5A4;
  v4 = *(v0 + 32);

  return withTimeout<A>(_:block:)(v0 + 16, 0x8AC7230489E80000, 0, &unk_1004DD408, v4, &type metadata for String);
}

uint64_t sub_100026BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_100027234;
  }

  else
  {
    v6 = sub_100393868;
  }

  return _swift_task_switch(v6, v5, 0);
}

BOOL sub_100026CFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Friend();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Handle();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  Friend.handle.getter();
  v17 = Handle.expiresByGroupId.getter();
  v20 = *(v13 + 8);
  v18 = v13 + 8;
  v19 = v20;
  v20(v16, v12);
  v59 = a2;
  v21 = sub_1000272A4(sub_100027ABC, v58, v17);

  v22 = *(v21 + 16);

  if (!v22)
  {
    v49 = v18;
    v51 = v19;
    v52 = v12;
    v53 = 0;
    v54 = v2;
    v23 = v55;
    v24 = v56;
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005DFF18);
    v26 = *(v23 + 16);
    v50 = v11;
    v27 = v11;
    v28 = v57;
    v26(v27, v57, v24);
    v26(v9, v28, v24);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v60 = v57;
      *v31 = 136447235;
      *(v31 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E5950, &v60);
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      v48 = v30;
      v32 = v50;
      Friend.handle.getter();
      v33 = Handle.identifier.getter();
      v46 = v9;
      v47 = v29;
      v35 = v34;
      v51(v16, v52);
      v36 = *(v23 + 8);
      v36(v32, v24);
      v37 = sub_10000D01C(v33, v35, &v60);

      *(v31 + 24) = v37;
      *(v31 + 32) = 2160;
      *(v31 + 34) = 1752392040;
      *(v31 + 42) = 2081;
      v38 = v46;
      Friend.handle.getter();
      Handle.expiresByGroupId.getter();
      v51(v16, v52);
      type metadata accessor for GroupID();
      type metadata accessor for Date();
      sub_1000093F8(&qword_1005AE908, &type metadata accessor for GroupID);
      v39 = Dictionary.description.getter();
      v41 = v40;

      v36(v38, v24);
      v42 = sub_10000D01C(v39, v41, &v60);

      *(v31 + 44) = v42;
      v43 = v47;
      _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s expired Friend:%{private,mask.hash}s\nexpiresByGroupId:%{private,mask.hash}s", v31, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v44 = *(v23 + 8);
      v44(v9, v24);
      v44(v50, v24);
    }

    v22 = v53;
  }

  return v22 == 0;
}

uint64_t sub_100027234()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1000272A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_100027540(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_10023C938(v11, v7, a3, v5);

  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_100027424()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10002789C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1003A8090;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100027540(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v45 = a4;
  v34 = a2;
  v35 = a1;
  v44 = type metadata accessor for Date();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupID();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v46 = a3;
  v15 = *(a3 + 64);
  v36 = 0;
  v37 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 16;
  v41 = v11 + 16;
  v42 = v11;
  v43 = v5;
  v38 = (v5 + 8);
  v39 = (v11 + 8);
  while (v18)
  {
    v48 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
    v21 = v47;
LABEL_11:
    v24 = v46;
    (*(v42 + 16))(v13, v46[6] + *(v42 + 72) * v20, v8);
    v25 = v20;
    v26 = v24[7] + *(v43 + 72) * v20;
    v27 = v8;
    v28 = v44;
    (*(v43 + 16))(v21, v26, v44);
    v29 = v49;
    v30 = v45(v13, v21);
    v49 = v29;
    if (v29)
    {
      (*v38)(v21, v28);
      return (*v39)(v13, v27);
    }

    v31 = v30;
    (*v38)(v21, v28);
    result = (*v39)(v13, v27);
    v8 = v27;
    v18 = v48;
    if (v31)
    {
      *(v35 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_100027BC4(v35, v34, v36, v46);
      }
    }
  }

  v22 = v14;
  v21 = v47;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_100027BC4(v35, v34, v36, v46);
    }

    v23 = *(v37 + 8 * v14);
    ++v22;
    if (v23)
    {
      v48 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002789C()
{
  v15 = v0;
  v1 = v0[6];

  v2 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E89F0, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  sub_100027AC8(v2);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100027AC8(uint64_t a1)
{
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  type metadata accessor for SecureLocationsError(0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    swift_errorRetain();
    if (!swift_dynamicCast())
    {

      sub_1000284BC();
      a1 = swift_allocError();
      *v2 = 5;
      return a1;
    }
  }

  swift_errorRetain();

  return a1;
}

uint64_t sub_100027BC4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = type metadata accessor for Date();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = __chkstk_darwin(v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = v47 - v11;
  v12 = type metadata accessor for GroupID();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10004B564(&qword_1005B0580, &qword_1004D1ED0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_1000093F8(&qword_1005AE908, &type metadata accessor for GroupID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
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

uint64_t sub_10002807C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1000281B0, v4, 0);
}

uint64_t sub_1000281B0()
{
  v34 = v0;
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[5];
    v33 = _swiftEmptyArrayStorage;
    sub_10000E8E0(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v31 = *(v4 + 56);
    v32 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[9];
      v10 = v0[6];
      v11 = v0[4];
      v32(v10, v7, v11);
      Friend.handle.getter();
      (*v8)(v10, v11);
      v33 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_10000E8E0(v12 > 1, v13 + 1, 1);
        v5 = v33;
      }

      v14 = v0[9];
      v15 = v0[7];
      v5[2] = v13 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      v7 += v31;
      --v2;
    }

    while (v2);
    v16 = v0[18];
  }

  else
  {
    v17 = v0[18];

    v5 = _swiftEmptyArrayStorage;
  }

  v18 = v5[2];

  if (v18)
  {
    v19 = v0[13];
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005E0B28);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[13];
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v33);
      _os_log_impl(&_mh_execute_header, v21, v22, "Not %{public}s to server since no followings", v25, 0xCu);
      sub_100004984(v26);
    }
  }

  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29(v18 != 0);
}

unint64_t sub_1000284BC()
{
  result = qword_1005A92E0;
  if (!qword_1005A92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A92E0);
  }

  return result;
}

void sub_100028510(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100028574()
{
  v35 = v0;
  if (*(v0 + 236) == 1)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0B28);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v34 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E86E0, &v34);
      _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
      sub_100004984(v5);
    }

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = type metadata accessor for TaskPriority();
    *(v0 + 104) = v13;
    v14 = *(v13 - 8);
    v15 = *(v14 + 56);
    *(v0 + 112) = v15;
    *(v0 + 120) = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v15(v6, 1, 1, v13);
    v16 = *(v9 + 16);
    *(v0 + 128) = v16;
    *(v0 + 136) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v7, v12, v10);
    v17 = sub_1000095A8(&qword_1005B23E0, type metadata accessor for LocationService);
    *(v0 + 144) = v17;
    v18 = *(v9 + 80);
    *(v0 + 232) = v18;
    v19 = (v18 + 40) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 2) = v11;
    *(v20 + 3) = v17;
    *(v20 + 4) = v11;
    v21 = *(v9 + 32);
    *(v0 + 152) = v21;
    *(v0 + 160) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(&v20[v19], v7, v10);
    swift_retain_n();
    sub_10020D620(0, 0, v6, &unk_1004D6DF8, v20);

    v22 = async function pointer to daemon.getter[1];
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v23[1] = sub_100028BF0;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005E0B28);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E86E0, &v34);
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s should not schedule legacyRefresh", v27, 0xCu);
      sub_100004984(v28);
    }

    v29 = sub_1002087C4(_swiftEmptyArrayStorage);
    v31 = *(v0 + 72);
    v30 = *(v0 + 80);

    v32 = *(v0 + 8);

    return v32(v29);
  }
}

uint64_t sub_100028A04()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100028AD8(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 236) = a1;

  return _swift_task_switch(sub_100028574, v3, 0);
}

uint64_t sub_100028BF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CommandManager();
  v9 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000095A8(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v6 = v12;
  v6[1] = sub_100028EA8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t type metadata accessor for CommandManager()
{
  result = qword_1005A8F68;
  if (!qword_1005A8F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100028E18(uint64_t a1)
{
  v2 = sub_100028E54();

  return Error<>._domain.getter(a1, v2);
}

unint64_t sub_100028E54()
{
  result = qword_1005B24B0;
  if (!qword_1005B24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24B0);
  }

  return result;
}

uint64_t sub_100028EA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_100382340, v7, 0);
  }

  else
  {
    v8 = v4[22];

    v9 = swift_task_alloc();
    v4[26] = v9;
    *v9 = v6;
    v9[1] = sub_10038202C;
    v10 = v4[3];

    return sub_100029038(v10);
  }
}

uint64_t sub_100029038(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for LocationRequest();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v2[16] = Priority;
  v7 = *(Priority - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100029298, v1, 0);
}

uint64_t sub_100029164(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationRequest() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_10002952C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10002925C(uint64_t a1)
{
  v2 = sub_100028E54();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100029298()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[11];
  v6 = v0[12];
  LocationRequest.priority.getter();
  v26 = LocatePriority.rawValue.getter();
  v7 = *(v4 + 8);
  v7(v1, v3);
  v8 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  swift_beginAccess();
  (*(v4 + 16))(v2, v6 + v8, v3);
  v9 = LocatePriority.rawValue.getter();
  v7(v2, v3);
  if (v9 < v26)
  {
    v10 = v0[19];
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[11];
    LocationRequest.priority.getter();
    swift_beginAccess();
    (*(v12 + 40))(v6 + v8, v10, v11);
    swift_endAccess();
  }

  v14 = v0[12];
  (*(v0[14] + 16))(v0[15], v0[11], v0[13]);
  v15 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  v16 = *(v14 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1000295F4(0, v16[2] + 1, 1, v16);
    *(v14 + v15) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1000295F4(v18 > 1, v19 + 1, 1, v16);
  }

  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[13];
  v16[2] = v19 + 1;
  (*(v21 + 32))(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);
  *(v14 + v15) = v16;
  swift_endAccess();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_10007CFD4;
  v24 = v0[12];

  return sub_1000298AC();
}

uint64_t sub_10002952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10002954C, a4, 0);
}

uint64_t sub_10002954C()
{
  v1 = v0[3];
  v2 = LocationRequest.toHandles.getter();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1003826B8;
  v4 = v0[2];

  return sub_100029620(v2);
}

uint64_t sub_100029620(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = type metadata accessor for Handle();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_100029AE4;

  return daemon.getter();
}

uint64_t sub_100029738(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000297BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000297FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003690;

  return sub_100029CC0(a1, v1);
}

uint64_t sub_1000298AC()
{
  v1[202] = v0;
  v1[203] = *v0;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[204] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[205] = v3;
  v4 = *(v3 - 8);
  v1[206] = v4;
  v5 = *(v4 + 64) + 15;
  v1[207] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v1[208] = Priority;
  v7 = *(Priority - 8);
  v1[209] = v7;
  v8 = *(v7 + 64) + 15;
  v1[210] = swift_task_alloc();
  v1[211] = swift_task_alloc();
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  v1[212] = refreshed;
  v10 = *(refreshed - 8);
  v1[213] = v10;
  v11 = *(v10 + 64) + 15;
  v1[214] = swift_task_alloc();
  v1[215] = swift_task_alloc();
  v1[216] = swift_task_alloc();
  v1[217] = swift_task_alloc();
  v1[218] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v1[219] = v13;
  *v13 = v1;
  v13[1] = sub_10002A3C4;

  return daemon.getter();
}

uint64_t sub_100029AE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000095A8(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100029D88;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100029CC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100029CE0, 0, 0);
}

uint64_t sub_100029CE0()
{
  v1 = *(*(v0 + 24) + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + 1);
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + async function pointer to dispatch thunk of FM.XPCSession.connection.getter);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100029EB8;

  return v5();
}

uint64_t sub_100029D88(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[16];
  v11 = *v2;
  v4[17] = v1;

  if (v1)
  {
    v6 = v4[9];
    v7 = sub_100381FBC;
  }

  else
  {
    v8 = v4[15];
    v9 = v4[9];

    v7 = sub_100029FB8;
    v6 = v9;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100029EB8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10002A324, 0, 0);
}

uint64_t sub_100029FB8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_10002A170();
  if (*(v1 + 16))
  {
    v4 = v0[8];

    v3 = v0[8];
  }

  v5 = *(v3 + 2);
  if (v5)
  {
    v6 = v0[12];
    v7 = v3;
    sub_10002B3C0(0, v5, 0);
    v8 = *(v6 + 16);
    v6 += 16;
    v9 = &v7[(*(v6 + 64) + 32) & ~*(v6 + 64)];
    v21 = *(v6 + 56);
    v22 = v8;
    v10 = (v6 - 8);
    do
    {
      v11 = v0[13];
      v12 = v0[11];
      v22(v11, v9, v12);
      v13 = Handle.identifier.getter();
      v15 = v14;
      (*v10)(v11, v12);
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10002B3C0((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v9 += v21;
      --v5;
    }

    while (v5);
  }

  v19 = v0[6];
  v0[18] = _swiftEmptyArrayStorage;
  v0[19] = v19;

  return _swift_task_switch(sub_10002B3E0, v19, 0);
}

char *sub_10002A170()
{
  v18 = &_swiftEmptySetSingleton;
  v1 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_10002B8E4(v12))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + 24 * (v10 | (v9 << 6)));
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v13 = v18[2];
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = sub_10002C714(v18[2], 0);
      v15 = *(type metadata accessor for Handle() - 8);
      v16 = sub_10002C73C(&v17, &v14[(*(v15 + 80) + 32) & ~*(v15 + 80)], v13, v18);
      sub_10000E3F8();
      if (v16 != v13)
      {
        __break(1u);
LABEL_14:

        return _swiftEmptyArrayStorage;
      }

      return v14;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A324()
{
  v1 = v0[5];
  v2 = NSXPCConnection.codeSigningIdentity.getter();
  v4 = v3;

  v5 = v0[2];
  *v5 = v2;
  v5[1] = v4;
  v6 = v0[1];

  return v6();
}

uint64_t sub_10002A3C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1752);
  v12 = *v1;
  v3[220] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[221] = v6;
  v7 = type metadata accessor for Daemon();
  v3[222] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100008FC0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[223] = v9;
  v10 = sub_100008FC0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10002A6C0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10002A5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1004AA3B0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10002A838;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002A6C0(uint64_t a1)
{
  v3 = *(*v2 + 1768);
  v4 = *v2;
  v4[224] = a1;
  v4[225] = v1;

  if (v1)
  {
    v5 = v4[202];

    return _swift_task_switch(sub_10007E4F8, v5, 0);
  }

  else
  {
    v6 = v4[220];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[226] = v8;
    *v8 = v4;
    v8[1] = sub_10002AB70;

    return daemon.getter();
  }
}

uint64_t sub_10002A838()
{
  v23 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2 == 0xD000000000000018 && 0x80000001004EB620 == v1;
  if (v3 || (v4 = v0[2], v5 = v0[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v6 = static SystemInfo.isInternalBuild.getter();
  }

  else
  {
    if (qword_1005A84C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0B10);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000D01C(v2, v1, &v22);
      _os_log_impl(&_mh_execute_header, v11, v12, "Checking if %s is running", v13, 0xCu);
      sub_100004984(v14);
    }

    v15 = v0[6];
    v16 = sub_10002AD84(v2, v1);

    if (v15)
    {
      if (qword_1005A84C0 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v10, qword_1005E0B10);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138543362;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "RunningBoardProcess threw an error: %{public}@", v19, 0xCu);
        sub_100002CE0(v20, &qword_1005A9670, &unk_1004C2480);
      }

      else
      {
      }

      v6 = 0;
    }

    else
    {
      v6 = v16;
    }
  }

  v7 = v0[1];
  v8 = v6 & 1;

  return v7(v8);
}

uint64_t sub_10002AB70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1808);
  v5 = *v1;
  v3[227] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[228] = v7;
  v8 = type metadata accessor for LocationService();
  v9 = sub_100008FC0(&qword_1005A9308, type metadata accessor for LocationService);
  *v7 = v5;
  v7[1] = sub_10002B128;
  v10 = v3[223];
  v11 = v3[222];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

char *sub_10002AD24()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005AB8C8, &qword_1004C5728);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10002AD54()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005AB8D0, &unk_1004C5730);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

BOOL sub_10002AD84(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() predicateMatchingBundleIdentifier:v5];

  v25 = 0;
  v7 = [v4 statesForPredicate:v6 withDescriptor:0 error:&v25];

  v8 = v25;
  if (!v7)
  {
    v13 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v14;
  }

  sub_1004AACAC();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v8;

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v11 = *(v9 + 32);
    }

    v12 = v11;

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005E0B10);
  v16 = v12;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10000D01C(a1, a2, &v25);
    *(v19 + 12) = 2080;
    if (v12)
    {
      [v16 taskState];
    }

    sub_10004B564(&qword_1005B5AC0, &qword_1004DD410);
    v20 = String.init<A>(describing:)();
    v22 = sub_10000D01C(v20, v21, &v25);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "RunningBoardProcess: %s %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  if (v12)
  {
    if ([v16 taskState] == 2)
    {

      return 1;
    }

    else
    {
      v23 = [v16 taskState];

      return v23 == 4;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B128(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1824);
  v6 = *v2;
  v4[229] = a1;
  v4[230] = v1;

  if (v1)
  {
    v7 = v4[202];

    return _swift_task_switch(sub_10007E5E4, v7, 0);
  }

  else
  {
    v8 = v4[227];

    v9 = swift_task_alloc();
    v4[231] = v9;
    *v9 = v6;
    v9[1] = sub_10007D140;

    return sub_100021A68();
  }
}

char *sub_10002B2B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10002B3C0(char *a1, int64_t a2, char a3)
{
  result = sub_10002B2B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10002B3E0()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_100381D04;
  v7 = v0[19];

  return sub_10001C61C(v5, 1);
}

unint64_t sub_10002B544()
{
  result = qword_1005B24A0;
  if (!qword_1005B24A0)
  {
    sub_10004B610(&qword_1005B2498, &qword_1004D6A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24A0);
  }

  return result;
}

uint64_t sub_10002B5A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 24);
  *(v0 + 152) = dispatch thunk of XPCClientConnectionPool.isEmpty.getter() & 1;

  return _swift_task_switch(sub_10002B61C, v2, 0);
}

uint64_t sub_10002B61C()
{
  v20 = v0;
  if (*(v0 + 152))
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005E0B28);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 104);
    if (!v4)
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v19);
    v8 = "Not %{public}s to server since no clients connected";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v2, v3, v8, v6, 0xCu);
    sub_100004984(v7);

LABEL_15:

    v15 = *(v0 + 72);
    v16 = *(v0 + 48);

    v17 = *(v0 + 8);

    return v17(0);
  }

  v9 = *(v0 + 24);
  v10 = *(sub_10002A170() + 2);

  if (!v10)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0B28);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v2, v3);
    v14 = *(v0 + 104);
    if (!v13)
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v19);
    v8 = "Not %{public}s to server since no client is interested legacy refresh";
    goto LABEL_14;
  }

  v11 = *(v0 + 104);

  return _swift_task_switch(sub_10002C754, v11, 0);
}

uint64_t sub_10002B8E4(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v24 - v9;
  result = __chkstk_darwin(v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_10002BAF4(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BAF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000093F8(&qword_1005A91B8, &type metadata accessor for Handle);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10002BDD4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10002BDD4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002C3B8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100237D20(&type metadata accessor for Handle, &qword_1005B05E0, &qword_1004D1F28);
      goto LABEL_12;
    }

    sub_10002C09C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000093F8(&qword_1005A91B8, &type metadata accessor for Handle);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002C09C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Handle();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B05E0, &qword_1004D1F28);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10002C3B8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Handle();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B05E0, &qword_1004D1F28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10002C754()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_10002807C;
  v7 = v0[13];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_10002C8B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 912);
  v12 = *v1;
  *(v3 + 920) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 928) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10002CA94;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10002CA94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 928);
  v9 = *v2;
  v3[117] = a1;
  v3[118] = v1;

  if (v1)
  {
    v5 = v3[106];
    v6 = sub_10021D11C;
  }

  else
  {
    v7 = v3[115];

    v6 = sub_10002CBBC;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002CBBC()
{
  v1 = v0[117];
  v2 = v0[105];
  v3 = swift_task_alloc();
  v0[119] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[120] = v5;
  v6 = sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  v0[121] = v6;
  *v5 = v0;
  v5[1] = sub_10002556C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 103, 0, 0, 0x2873646E65697266, 0xEC000000293A666FLL, sub_10002CEF8, v3, v6);
}

uint64_t sub_10002CCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v15 = *(a3 + 136);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10002CF00(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002CF28(uint64_t a1)
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

uint64_t sub_10002CF44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005F6C(a1, a2);
  }

  return a1;
}

uint64_t sub_10002CF58()
{
  v1 = *(v0 + 8);
  sub_10002CF44(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_10002CF8C(uint64_t a1)
{
  v79 = type metadata accessor for ClientID();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v61 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_100030004(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_10002FFEC(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_10000E3F8();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_10024B0F0(v16, v77);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_100002CE0(v39, &qword_1005B0690, &qword_1004D2018);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_100030004(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_10024B0F0(v16, v78);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_100002CE0(v45, &qword_1005B0690, &qword_1004D2018);
LABEL_33:
        v76 = v4;
        *(v18 + 2) = v4;
        v39 = v77;
        sub_10024B0F0(v16, v77);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          goto LABEL_33;
        }

        sub_100002CE0(v16, &qword_1005B0690, &qword_1004D2018);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_10024B0F0(v16, v78);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_100002CE0(v16, &qword_1005B0690, &qword_1004D2018);
    sub_10000E3F8();
    result = sub_100002CE0(v39, &qword_1005B0690, &qword_1004D2018);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D650(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002D668()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 88);
  (*(v1 + 16))(v2, *(v0 + 192), v3);
  (*(v1 + 56))(v2, 0, 1, v3);
  LOBYTE(v3) = sub_10002E2C8(v2, v4);
  sub_100002CE0(v2, &qword_1005A96E0, &qword_1004C2A80);
  if ((v3 & 1) == 0)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);

    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    goto LABEL_5;
  }

  v5 = *(v0 + 232);
  v6 = *(v0 + 192);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v10 = *(v0 + 96);
  *(swift_task_alloc() + 16) = v6;
  sub_10003002C(sub_10002E2A8, v10, v9);
  *(v0 + 272) = v5;

  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100002CE0(*(v0 + 136), &qword_1005B0690, &qword_1004D2018);
LABEL_15:
    v33 = swift_task_alloc();
    *(v0 + 280) = v33;
    *v33 = v0;
    v33[1] = sub_1004AA55C;
    v34 = *(v0 + 240);

    return sub_1000267B4();
  }

  v22 = *(v0 + 288);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v25 = *(v0 + 144);
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 112);
  (*(v24 + 32))(v23, *(v0 + 136), v25);
  ClientID.connectionType.getter();
  (*(v29 + 104))(v27, v22, v28);
  LOBYTE(v22) = static ClientID.ConnectionType.== infix(_:_:)();
  v30 = *(v29 + 8);
  v30(v27, v28);
  v30(v26, v28);
  (*(v24 + 8))(v23, v25);
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  v31 = *(v0 + 240);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v32 = *(v0 + 240);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v12 = *(v0 + 272);
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    *(v0 + 224) = *(v0 + 56);
LABEL_5:
    *(v0 + 232) = v12;
    v15 = *(v0 + 200);
    if (v15 < 0)
    {
      break;
    }

    v16 = v13;
    v17 = v14;
    if (v13)
    {
LABEL_11:
      v19 = (v16 - 1) & v16;
      v20 = *(*(v15 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

      goto LABEL_20;
    }

    v18 = v14;
    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v17 >= ((*(v0 + 216) + 64) >> 6))
      {
        goto LABEL_24;
      }

      v16 = *(*(v0 + 208) + 8 * v17);
      ++v18;
      if (v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_28:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v36 = __CocoaSet.Iterator.next()();
  if (!v36)
  {
    goto LABEL_24;
  }

  *(v0 + 72) = v36;
  type metadata accessor for LocationServiceClient();
  swift_dynamicCast();
  v21 = *(v0 + 64);
  v17 = v14;
  v19 = v13;
LABEL_20:
  *(v0 + 248) = v17;
  *(v0 + 256) = v19;
  *(v0 + 240) = v21;
  if (v21)
  {
    v37 = *(v21 + 112);
    v38 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
    v52 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
    v39 = swift_task_alloc();
    *(v0 + 264) = v39;
    *v39 = v0;
    v39[1] = sub_10002E68C;
    v40 = *(v0 + 192);

    return v52(v40);
  }

LABEL_24:
  v41 = *(v0 + 208);
  v42 = *(v0 + 216);
  v44 = *(v0 + 192);
  v43 = *(v0 + 200);
  v46 = *(v0 + 160);
  v45 = *(v0 + 168);
  v48 = *(v0 + 128);
  v47 = *(v0 + 136);
  v49 = *(v0 + 120);
  sub_10000E3F8();

  v50 = *(v0 + 8);
  v51 = *(v0 + 224);

  return v50(v51);
}

uint64_t sub_10002DB88@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v5 = v4;
  v34 = a1;
  v30 = a4;
  v40 = a3(0);
  v7 = *(*(v40 - 8) + 64);
  v8 = __chkstk_darwin(v40);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v33 = &v30 - v11;
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v35 = v10 + 32;
  v36 = v10;
  v31 = (v10 + 8);
  v32 = v10 + 16;
  v37 = a2;

  v18 = 0;
  v19 = v33;
  if (v15)
  {
    while (1)
    {
      v38 = v5;
      v20 = v18;
LABEL_9:
      v21 = v36;
      v22 = v40;
      (*(v36 + 16))(v19, *(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v15)) | (v20 << 6)), v40);
      v23 = *(v21 + 32);
      v24 = v39;
      v23(v39, v19, v22);
      v25 = v38;
      v26 = v34(v24);
      v5 = v25;
      if (v25)
      {
        (*v31)(v39, v40);
      }

      if (v26)
      {
        break;
      }

      v15 &= v15 - 1;
      result = (*v31)(v39, v40);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v29 = v30;
    v23(v30, v39, v40);
    v28 = v29;
    v27 = 0;
    return (*(v36 + 56))(v28, v27, 1, v40);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        v27 = 1;
        v28 = v30;
        return (*(v36 + 56))(v28, v27, 1, v40);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v38 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002DE4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v28 - v17;
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  ClientID.xpcConnectionID.getter();
  (*(v4 + 16))(v18, a2, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v21 = *(v8 + 56);
  sub_100005F04(v20, v11, &qword_1005A96E0, &qword_1004C2A80);
  sub_100005F04(v18, &v11[v21], &qword_1005A96E0, &qword_1004C2A80);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    sub_100005F04(v11, v29, &qword_1005A96E0, &qword_1004C2A80);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v24 = &v11[v21];
      v25 = v28;
      (*(v4 + 32))(v28, v24, v3);
      sub_10001AEBC(&qword_1005A9FC8, 255, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v4 + 8);
      v26(v25, v3);
      sub_100002CE0(v18, &qword_1005A96E0, &qword_1004C2A80);
      sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
      v26(v29, v3);
      sub_100002CE0(v11, &qword_1005A96E0, &qword_1004C2A80);
      return v23 & 1;
    }

    sub_100002CE0(v18, &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
    (*(v4 + 8))(v29, v3);
    goto LABEL_6;
  }

  sub_100002CE0(v18, &qword_1005A96E0, &qword_1004C2A80);
  sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
  if (v22(&v11[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_100002CE0(v11, &qword_1005B0B70, &qword_1004D6B30);
    v23 = 0;
    return v23 & 1;
  }

  sub_100002CE0(v11, &qword_1005A96E0, &qword_1004C2A80);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10002E2C8(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v33 = &v26 - v10;
  v28 = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  v11 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_100005F04(v16, v13, &qword_1005A96E0, &qword_1004C2A80);
    sub_100005F04(v32, &v13[v19], &qword_1005A96E0, &qword_1004C2A80);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_100005F04(v13, v33, &qword_1005A96E0, &qword_1004C2A80);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_1000094D0(&qword_1005A9FC8, &type metadata accessor for UUID);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_100002CE0(v13, &qword_1005A96E0, &qword_1004C2A80);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_100002CE0(v13, &qword_1005B0B70, &qword_1004D6B30);
    goto LABEL_5;
  }

  sub_100002CE0(v13, &qword_1005A96E0, &qword_1004C2A80);
  return 1;
}

uint64_t sub_10002E68C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10002D668, 0, 0);
}

uint64_t sub_10002E788()
{
  *(v0 + 56) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 80);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for LocationServiceClient();
    sub_10002676C(&qword_1005B23F0, type metadata accessor for LocationServiceClient);
    Set.Iterator.init(_cocoa:)();
    result = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v4 = 0;
  }

  *(v0 + 200) = result;
  *(v0 + 208) = v3;
  *(v0 + 288) = enum case for ClientID.ConnectionType.background(_:);
  *(v0 + 216) = v5;
  *(v0 + 224) = _swiftEmptyArrayStorage;
  *(v0 + 232) = 0;
  if (result < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_20:
      v21 = *(v0 + 208);
      v22 = *(v0 + 216);
      v24 = *(v0 + 192);
      v23 = *(v0 + 200);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v28 = *(v0 + 128);
      v27 = *(v0 + 136);
      v29 = *(v0 + 120);
      sub_10000E3F8();

      v30 = *(v0 + 8);
      v31 = *(v0 + 224);

      return v30(v31);
    }

    *(v0 + 72) = v16;
    type metadata accessor for LocationServiceClient();
    swift_dynamicCast();
    v15 = *(v0 + 64);
    v11 = v4;
    v13 = v6;
LABEL_16:
    *(v0 + 248) = v11;
    *(v0 + 256) = v13;
    *(v0 + 240) = v15;
    if (v15)
    {
      v17 = *(v15 + 112);
      v18 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
      v32 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
      v19 = swift_task_alloc();
      *(v0 + 264) = v19;
      *v19 = v0;
      v19[1] = sub_10002E68C;
      v20 = *(v0 + 192);

      return v32(v20);
    }

    goto LABEL_20;
  }

  v10 = v6;
  v11 = v4;
  if (v6)
  {
LABEL_13:
    v13 = (v10 - 1) & v10;
    v14 = *(*(result + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_16;
  }

  v12 = v4;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= ((v5 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = *(v3 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = type metadata accessor for ClientID.ConnectionType();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005B0690, &qword_1004D2018) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = type metadata accessor for ClientID();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v3[22] = v12;
  v13 = *(v12 - 8);
  v3[23] = v13;
  v14 = *(v13 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10002E788, 0, 0);
}

uint64_t sub_10002EC84()
{
  v1 = v0[2];
  v2 = sub_10002F198();
  v0[12] = v2;
  v3 = sub_10002ED98(v2);
  v0[13] = v3;

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100345ECC;
  v5 = v0[11];

  return sub_10002EA8C(v5, v3, v2);
}

void *sub_10002ED98(uint64_t a1)
{
  v45 = type metadata accessor for ClientID();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v44 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v35 - v8;
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v42 = v9;
    v35[1] = v1;
    v48 = _swiftEmptyArrayStorage;
    sub_10002F158(0, v10, 0);
    v47 = v48;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v14 = result;
    v15 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v36 = a1 + 64;
    v37 = v10;
    v38 = v3;
    v39 = a1 + 56;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v46 = *(a1 + 36);
      v19 = *(a1 + 48) + *(v3 + 72) * v14;
      v20 = v44;
      v21 = a1;
      v22 = v45;
      (*(v3 + 16))(v44, v19, v45);
      v23 = v42;
      ClientID.xpcConnectionID.getter();
      (*(v3 + 8))(v20, v22);
      v24 = v47;
      v48 = v47;
      v26 = v47[2];
      v25 = v47[3];
      if (v26 >= v25 >> 1)
      {
        sub_10002F158(v25 > 1, v26 + 1, 1);
        v24 = v48;
      }

      v24[2] = v26 + 1;
      v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v47 = v24;
      result = sub_1000176A8(v23, v24 + v27 + *(v43 + 72) * v26, &qword_1005A96E0, &qword_1004C2A80);
      v16 = 1 << *(v21 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      a1 = v21;
      v12 = v39;
      v28 = *(v39 + 8 * v18);
      if ((v28 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (v46 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v14 & 0x3F));
      if (v29)
      {
        v16 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v37;
        v3 = v38;
      }

      else
      {
        v30 = v18 << 6;
        v31 = v18 + 1;
        v17 = v37;
        v32 = (v36 + 8 * v18);
        v3 = v38;
        while (v31 < (v16 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_10002F14C(v14, v46, 0);
            v16 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v14, v46, 0);
      }

LABEL_4:
      ++v15;
      v14 = v16;
      if (v15 == v17)
      {
        return v47;
      }
    }

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

uint64_t sub_10002F14C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

size_t sub_10002F158(size_t a1, int64_t a2, char a3)
{
  result = sub_10023A074(a1, a2, a3, *v3, &qword_1005B0610, &qword_1004D1F40, &qword_1005A96E0, &qword_1004C2A80);
  *v3 = result;
  return result;
}

void *sub_10002F198()
{
  v39 = &_swiftEmptySetSingleton;
  v1 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v4 = sub_100341140(v3);

  sub_10034137C(v4, &v39);

  v5 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v38 = _swiftEmptyArrayStorage;
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v37 = v6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
LABEL_6:
  if (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (*(v37 + 56) + 24 * (v14 | (v13 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = 1 << *(*v15 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v22 = 0;
    while (v20)
    {
      v23 = v22;
LABEL_20:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = *(*(v17 + 56) + ((v23 << 9) | (8 * v24)));

      sub_10002CF8C(v26);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        swift_bridgeObjectRelease_n();

        sub_10002FFC0(_swiftEmptyArrayStorage);
        v12 = v13;
        goto LABEL_6;
      }

      v20 = *(v17 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        sub_10002F894(v38);

        if (qword_1005A84C8 != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_23:
  v27 = type metadata accessor for Logger();
  sub_10000A6F0(v27, qword_1005E0B28);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136446210;
    swift_beginAccess();
    type metadata accessor for ClientID();
    sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID);

    v32 = Set.description.getter();
    v34 = v33;

    v35 = sub_10000D01C(v32, v34, &v38);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Active clients: %{public}s", v30, 0xCu);
    sub_100004984(v31);
  }

  swift_beginAccess();
  return v39;
}

uint64_t sub_10002F5B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000093F8(&qword_1005AE9D8, &type metadata accessor for ClientID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10002F9DC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10002F894(uint64_t a1)
{
  v2 = type metadata accessor for ClientID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_10002F5B4(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10002F9DC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100236530(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100237D20(&type metadata accessor for ClientID, &qword_1005B05E8, &qword_1004D6100);
      goto LABEL_12;
    }

    sub_10002FCA4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000093F8(&qword_1005AE9D8, &type metadata accessor for ClientID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002FCA4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for ClientID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B05E8, &qword_1004D6100);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100030060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD980, &qword_1004CAE98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100031AD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v49 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v49 = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v49 = 4;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v49 = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  v49 = 7;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 8;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  v49 = 9;
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  v49 = 10;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v25;
  v49 = 11;
  KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v27;
  v49 = 12;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 13;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 14;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 15;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = 16;
  KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v29;
  v49 = 17;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 18;
  KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v30;
  v49 = 19;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = 20;
  KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v31;
  v37 = v14 & 1;
  v48 &= 1u;
  v45 &= 1u;
  v46 &= 1u;
  v32 = v44 & 1;
  v33 = v39 & 1;
  (*(v6 + 8))(v9, v5);
  result = sub_100004984(a1);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v37;
  *(a2 + 24) = v16;
  *(a2 + 32) = v47;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20;
  *(a2 + 56) = v48;
  *(a2 + 64) = v22;
  *(a2 + 72) = v24;
  *(a2 + 80) = v26;
  *(a2 + 88) = v28;
  v35 = v45;
  *(a2 + 96) = v46;
  *(a2 + 97) = v35;
  *(a2 + 98) = v32;
  *(a2 + 99) = v43;
  *(a2 + 104) = v42;
  *(a2 + 112) = v41;
  *(a2 + 120) = v40;
  *(a2 + 128) = v33;
  *(a2 + 136) = v38;
  return result;
}

uint64_t sub_100030588()
{
  v0 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v34 - v5;
  v7 = type metadata accessor for Row();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v34 - v13;
  __chkstk_darwin(v12);
  v16 = v34 - v15;
  v17 = v43;
  result = Connection.prepare(_:)();
  if (!v17)
  {
    v42 = v11;
    v36 = v14;
    v37 = v16;
    v38 = v6;
    v19 = result;

    v20 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_100032AE8(0, v20 & ~(v20 >> 63), 0);
    v21 = v46;
    v34[1] = v19;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v43 = result;
    if (v20 < 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (v20)
    {
      v39 = (v35 + 16);
      v40 = (v35 + 8);
      v41 = (v35 + 48);
      do
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v41)(v4, 1, v7);
        if (result == 1)
        {
          goto LABEL_17;
        }

        v22 = v42;
        (*v39)(v42, v4, v7);
        sub_100030AA8(v22, v45);
        (*v40)(v4, v7);
        v46 = v21;
        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          sub_100032AE8((v23 > 1), v24 + 1, 1);
          v21 = v46;
        }

        v21[2] = v24 + 1;
        memcpy(&v21[60 * v24 + 4], v45, 0x1E0uLL);
      }

      while (--v20);
    }

    v25 = v38;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v26 = v35;
    v41 = *(v35 + 48);
    v42 = (v35 + 48);
    if ((v41)(v25, 1, v7) != 1)
    {
      v28 = *(v26 + 32);
      v27 = v26 + 32;
      v39 = (v27 - 24);
      v40 = v28;
      do
      {
        v29 = v37;
        (v40)(v37, v25, v7);
        v30 = v36;
        (*(v27 - 16))(v36, v29, v7);
        sub_100030AA8(v30, v44);
        (*v39)(v29, v7);
        v46 = v21;
        v31 = v7;
        v33 = v21[2];
        v32 = v21[3];
        if (v33 >= v32 >> 1)
        {
          sub_100032AE8((v32 > 1), v33 + 1, 1);
          v21 = v46;
        }

        v21[2] = v33 + 1;
        memcpy(&v21[60 * v33 + 4], v44, 0x1E0uLL);
        v25 = v38;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v7 = v31;
      }

      while ((v41)(v25, 1, v31) != 1);
    }

    sub_100002CE0(v25, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005B1DA0, &qword_1004D6018);
    result = swift_allocObject();
    *(result + 16) = v21;
  }

  return result;
}

void *sub_100030AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_10003170C(v66);
  if (qword_1005A82F0 != -1)
  {
    swift_once();
  }

  v6 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v6, qword_1005E05B8);
  Row.subscript.getter();
  if (*(&__src[0] + 1) >> 60 == 15)
  {
    v62 = v66[6];
    v63 = v66[7];
    v64 = v66[8];
    v65 = v66[9];
    v58 = v66[2];
    v59 = v66[3];
    v60 = v66[4];
    v61 = v66[5];
    v7 = v66[0];
    v8 = v66[1];
  }

  else
  {
    v9 = type metadata accessor for PropertyListDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    sub_10033C018();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {
      v12 = type metadata accessor for Row();
      (*(*(v12 - 8) + 8))(a1, v12);

      return sub_10001A794(*&__src[0], *(&__src[0] + 1));
    }

    sub_10001A794(*&__src[0], *(&__src[0] + 1));

    v62 = __src[6];
    v63 = __src[7];
    v64 = __src[8];
    v65 = __src[9];
    v58 = __src[2];
    v59 = __src[3];
    v60 = __src[4];
    v61 = __src[5];
    v7 = __src[0];
    v8 = __src[1];
  }

  v56 = v7;
  v57 = v8;
  if (qword_1005A82F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v6, qword_1005E05D0);
  Row.subscript.getter();
  if (*(&v42 + 1) >> 60 == 15)
  {
    sub_10017E0C8(&v47);
  }

  else
  {
    v14 = type metadata accessor for PropertyListDecoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_10033BF94();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v42, *(&v42 + 1));

      sub_10017E0C8(__src);
      v3 = 0;
    }

    else
    {
      sub_10001A794(v42, *(&v42 + 1));

      __src[6] = v36;
      __src[7] = v37;
      __src[8] = v38;
      __src[2] = v32;
      __src[3] = v33;
      __src[4] = v34;
      __src[5] = v35;
      __src[0] = v30;
      __src[1] = v31;
    }

    v53 = __src[6];
    v54 = __src[7];
    v55 = __src[8];
    v49 = __src[2];
    v50 = __src[3];
    v51 = __src[4];
    v52 = __src[5];
    v47 = __src[0];
    v48 = __src[1];
  }

  if (qword_1005A8300 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v6, qword_1005E05E8);
  Row.subscript.getter();
  v17 = *(&__src[0] + 1);
  if (*(&__src[0] + 1) >> 60 == 15)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
  }

  else
  {
    v18 = *&__src[0];
    v19 = type metadata accessor for PropertyListDecoder();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    sub_10033BF10();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v3)
    {
      v22 = type metadata accessor for Row();
      (*(*(v22 - 8) + 8))(a1, v22);
      sub_100002CE0(&v56, &qword_1005A9328, &unk_1004C7F20);

      return sub_10001A794(v18, v17);
    }

    sub_10001A794(v18, v17);

    v44 = __src[2];
    v45 = __src[3];
    v46 = __src[4];
    v42 = __src[0];
    v43 = __src[1];
  }

  v23 = type metadata accessor for PropertyListDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1005A82E8 != -1)
  {
    swift_once();
  }

  v26 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v26, qword_1005E05A0);
  Row.subscript.getter();
  v27 = v40;
  v28 = v41;
  sub_1000325D0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v29 = type metadata accessor for Row();
  (*(*(v29 - 8) + 8))(a1, v29);
  if (v3)
  {
    sub_100002CE0(&v42, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(&v56, &qword_1005A9328, &unk_1004C7F20);
    sub_1000049D0(v27, v28);
  }

  else
  {

    sub_1000049D0(v27, v28);
    __src[2] = v32;
    __src[3] = v33;
    __src[4] = v34;
    __src[5] = v35;
    __src[0] = v30;
    __src[1] = v31;
    __src[14] = v64;
    __src[15] = v65;
    __src[12] = v62;
    __src[13] = v63;
    __src[10] = v60;
    __src[11] = v61;
    __src[8] = v58;
    __src[9] = v59;
    __src[6] = v56;
    __src[7] = v57;
    __src[22] = v53;
    __src[23] = v54;
    __src[18] = v49;
    __src[19] = v50;
    __src[20] = v51;
    __src[21] = v52;
    __src[16] = v47;
    __src[17] = v48;
    __src[26] = v43;
    __src[27] = v44;
    __src[28] = v45;
    __src[29] = v46;
    __src[24] = v55;
    __src[25] = v42;
    return memcpy(a2, __src, 0x1E0uLL);
  }
}

uint64_t sub_1000311A8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD960, &qword_1004CAE90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100031B24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v39) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v33 = v11;
  LOBYTE(v34) = 1;
  sub_100032528();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v39;
  LOBYTE(v39) = 2;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v14;
  v32 = v15;
  LOBYTE(v39) = 3;
  *&v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v29 + 1) = v16;
  LOBYTE(v39) = 4;
  *&v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v28 + 1) = v17;
  sub_10004B564(&qword_1005AD940, &qword_1004CAE80);
  v48 = 5;
  sub_10017E3D0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v27 = v49;
  v34 = v28;
  v18 = v31;
  LOBYTE(v35) = v31;
  v19 = v30;
  *(&v35 + 1) = v49;
  *&v36 = v30;
  v20 = v32;
  v21 = v33;
  *(&v36 + 1) = v32;
  *&v37 = v33;
  *(&v37 + 1) = v13;
  v38 = v29;
  v22 = *(&v29 + 1);
  sub_100032100(&v34, &v39);
  sub_100004984(a1);
  v39 = v28;
  v40 = v18;
  v41 = v27;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v45 = v13;
  v46 = v29;
  v47 = v22;
  result = sub_1000320D0(&v39);
  v24 = v37;
  a2[2] = v36;
  a2[3] = v24;
  a2[4] = v38;
  v25 = v35;
  *a2 = v34;
  a2[1] = v25;
  return result;
}

__n128 sub_1000315FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000311A8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_100031648@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100030060(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000316A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

double sub_10003170C(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t storeEnumTagSinglePayload for ServerStatusCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000317D8(char a1)
{
  result = 0x6F6C6C6F4678616DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      v3 = 5;
      goto LABEL_11;
    case 4:
      result = 0x6E6569724678616DLL;
      break;
    case 5:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
    case 18:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
    case 17:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x464D466B636F6C62;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      v3 = 13;
LABEL_11:
      result = v3 | 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000022;
      break;
    case 16:
      result = 0x6E6F697461636F6CLL;
      break;
    case 20:
      result = 0x5465636172474C65;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

__n128 sub_100031AA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

unint64_t sub_100031AD0()
{
  result = qword_1005AD920;
  if (!qword_1005AD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD920);
  }

  return result;
}

unint64_t sub_100031B24()
{
  result = qword_1005AD930;
  if (!qword_1005AD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD930);
  }

  return result;
}

uint64_t sub_100031B78@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD958, &qword_1004CAE88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000328C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v46[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v39 = v11;
  LOBYTE(v46[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v38 + 1) = v15;
  *&v38 = v14;
  LOBYTE(v46[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  LOBYTE(v46[0]) = 3;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  LOBYTE(v40) = 4;
  sub_10001CCC4(&qword_1005A9E80);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v46[0];
  LOBYTE(v46[0]) = 5;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v19;
  LOBYTE(v46[0]) = 6;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v18;
  v32 = v20;
  v56 = 7;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v21;
  v37 &= 1u;
  v23 = v37;
  v32 &= 1u;
  (*(v6 + 8))(v9, v5);
  v24 = v39;
  *&v40 = v39;
  *(&v40 + 1) = v13;
  v25 = v38;
  v41 = v38;
  *&v42 = v17;
  BYTE8(v42) = v23;
  *&v43 = v36;
  *(&v43 + 1) = v34;
  *&v44 = v35;
  LOBYTE(v23) = v32;
  BYTE8(v44) = v32;
  v26 = v33;
  *&v45 = v33;
  *(&v45 + 1) = v22;
  sub_100032B38(&v40, v46);
  sub_100004984(a1);
  v46[0] = v24;
  v46[1] = v13;
  v47 = __PAIR128__(*(&v38 + 1), v25);
  v48 = v17;
  v49 = v37;
  v50 = v36;
  v51 = v34;
  v52 = v35;
  v53 = v23;
  v54 = v26;
  v55 = v22;
  result = sub_100032B08(v46);
  v28 = v43;
  a2[2] = v42;
  a2[3] = v28;
  v29 = v45;
  a2[4] = v44;
  a2[5] = v29;
  v30 = v41;
  *a2 = v40;
  a2[1] = v30;
  return result;
}

uint64_t sub_100032138@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B320, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

double sub_1000321FC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100031B78(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_10003224C()
{
  v1 = *v0;
  v2 = 0x61636F4C65646968;
  v3 = 0xD000000000000013;
  v4 = 0x457972616D697270;
  if (v1 != 4)
  {
    v4 = 0x657469726F766166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100032324()
{
  v1 = *v0;
  v2 = 0x6449656369766564;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x656369766544656DLL;
  }

  v4 = 0x736C69616D65;
  if (v1 != 4)
  {
    v4 = 0x6D614E7473726966;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6954656369766564;
  if (v1 != 2)
  {
    v5 = 0x656C626967696C65;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for IDSMessageValidityMetric.Field(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1000324D4()
{
  result = qword_1005AD9B0;
  if (!qword_1005AD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9B0);
  }

  return result;
}

unint64_t sub_100032528()
{
  result = qword_1005AD968;
  if (!qword_1005AD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD968);
  }

  return result;
}

uint64_t sub_10003257C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000325D0()
{
  result = qword_1005AD828;
  if (!qword_1005AD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD828);
  }

  return result;
}

__n128 sub_100032624(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsPushCommands(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for SecureLocationsCachedSharedKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureLocationsPushCommands(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SecureLocationsCachedSharedKey.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000328C0()
{
  result = qword_1005AD910;
  if (!qword_1005AD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD910);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IDSMessageValidityMetric.Field(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_1000329C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B0530, &qword_1004D1E68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 480);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[480 * v8])
    {
      memmove(v12, v13, 480 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100032AE8(char *a1, int64_t a2, char a3)
{
  result = sub_1000329C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100032E74()
{
  v118 = v0;
  v1 = static SystemInfo.isInternalBuild.getter();
  v2 = *(v0 + 8336);
  if (v1)
  {
    sub_100005F04(v0 + 4816, v0 + 16, &qword_1005A90D8, &unk_1004C6AB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_100002CE0(v0 + 4816, &qword_1005A90D8, &unk_1004C6AB0);
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_29;
    }

    v115 = v4;
    v5 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v5 = 141559811;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    memcpy((v0 + 2896), (v0 + 4816), 0x1E0uLL);
    v6 = sub_100033B90(v0 + 2896);
    if (v6 == 1)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      v13 = *(v0 + 2944);
      *(v0 + 7664) = *(v0 + 2928);
      *(v0 + 7680) = v13;
      v14 = *(v0 + 2976);
      *(v0 + 7696) = *(v0 + 2960);
      *(v0 + 7712) = v14;
      v15 = *(v0 + 2912);
      *(v0 + 7632) = *(v0 + 2896);
      *(v0 + 7648) = v15;
      v7 = sub_100032B70(v6);
      v8 = v16;
    }

    v17 = (v0 + 5776);
    v18 = sub_10000D01C(v7, v8, &v117);

    *(v5 + 14) = v18;
    *(v5 + 22) = 2160;
    *(v5 + 24) = 1752392040;
    *(v5 + 32) = 2081;
    memcpy((v0 + 3376), (v0 + 4816), 0x1E0uLL);
    v19 = sub_100033B90(v0 + 3376);
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    if (v19 != 1)
    {
      v25 = *(v0 + 3792);
      v26 = *(v0 + 3824);
      *(v0 + 8176) = *(v0 + 3808);
      *(v0 + 0x2000) = v26;
      *(v0 + 8208) = *(v0 + 3840);
      *(v0 + 8144) = *(v0 + 3776);
      *(v0 + 8160) = v25;
      sub_100005F04(v0 + 8144, v0 + 8224, &qword_1005AD7A8, &qword_1004CA280);
      v20 = *(v0 + 8144);
      v21 = *(v0 + 8160);
      v22 = *(v0 + 8176);
      v23 = *(v0 + 0x2000);
      v24 = *(v0 + 8208);
    }

    v27 = (v0 + 7344);
    *(v0 + 7904) = v20;
    *(v0 + 7920) = v21;
    *(v0 + 7936) = v22;
    *(v0 + 7952) = v23;
    *(v0 + 7968) = v24;
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    v28 = String.init<A>(describing:)();
    v30 = sub_10000D01C(v28, v29, &v117);

    *(v5 + 34) = v30;
    *(v5 + 42) = 2160;
    *(v5 + 44) = 1752392040;
    *(v5 + 52) = 2081;
    memcpy((v0 + 3856), (v0 + 4816), 0x1E0uLL);
    if (sub_100033B90(v0 + 3856) == 1)
    {
      sub_10003170C(v17);
    }

    else
    {
      v49 = *(v0 + 4064);
      *(v0 + 6032) = *(v0 + 4048);
      *(v0 + 6048) = v49;
      v50 = *(v0 + 4096);
      *(v0 + 6064) = *(v0 + 4080);
      *(v0 + 6080) = v50;
      v51 = *(v0 + 4000);
      *(v0 + 5968) = *(v0 + 3984);
      *(v0 + 5984) = v51;
      v52 = *(v0 + 4032);
      *(v0 + 6000) = *(v0 + 4016);
      *(v0 + 6016) = v52;
      v53 = *(v0 + 3968);
      *(v0 + 5936) = *(v0 + 3952);
      *(v0 + 5952) = v53;
      sub_100005F04(v0 + 5936, v0 + 6096, &qword_1005A9328, &unk_1004C7F20);
      v54 = *(v0 + 6048);
      *(v0 + 5872) = *(v0 + 6032);
      *(v0 + 5888) = v54;
      v55 = *(v0 + 6080);
      *(v0 + 5904) = *(v0 + 6064);
      *(v0 + 5920) = v55;
      v56 = *(v0 + 5984);
      *(v0 + 5808) = *(v0 + 5968);
      *(v0 + 5824) = v56;
      v57 = *(v0 + 6016);
      *(v0 + 5840) = *(v0 + 6000);
      *(v0 + 5856) = v57;
      v58 = *(v0 + 5952);
      *v17 = *(v0 + 5936);
      *(v0 + 5792) = v58;
    }

    v59 = *(v0 + 5888);
    *(v0 + 6512) = *(v0 + 5872);
    *(v0 + 6528) = v59;
    v60 = *(v0 + 5920);
    *(v0 + 6544) = *(v0 + 5904);
    *(v0 + 6560) = v60;
    v61 = *(v0 + 5824);
    *(v0 + 6448) = *(v0 + 5808);
    *(v0 + 6464) = v61;
    v62 = *(v0 + 5856);
    *(v0 + 6480) = *(v0 + 5840);
    *(v0 + 6496) = v62;
    v63 = *(v0 + 5792);
    *(v0 + 6416) = *v17;
    *(v0 + 6432) = v63;
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    v64 = String.init<A>(describing:)();
    v66 = sub_10000D01C(v64, v65, &v117);

    *(v5 + 54) = v66;
    *(v5 + 62) = 2160;
    *(v5 + 64) = 1752392040;
    *(v5 + 72) = 2081;
    memcpy((v0 + 4336), (v0 + 4816), 0x1E0uLL);
    if (sub_100033B90(v0 + 4336) == 1)
    {
      sub_10017E0C8(v0 + 7344);
    }

    else
    {
      v85 = *(v0 + 4672);
      v86 = *(v0 + 4704);
      *(v0 + 7440) = *(v0 + 4688);
      *(v0 + 7456) = v86;
      *(v0 + 7472) = *(v0 + 4720);
      v87 = *(v0 + 4608);
      v88 = *(v0 + 4640);
      *(v0 + 7376) = *(v0 + 4624);
      *(v0 + 7392) = v88;
      *(v0 + 7408) = *(v0 + 4656);
      *(v0 + 7424) = v85;
      *v27 = *(v0 + 4592);
      *(v0 + 7360) = v87;
    }

    v89 = *(v0 + 7456);
    *(v0 + 7584) = *(v0 + 7440);
    *(v0 + 7600) = v89;
    *(v0 + 7616) = *(v0 + 7472);
    v90 = *(v0 + 7392);
    *(v0 + 7520) = *(v0 + 7376);
    *(v0 + 7536) = v90;
    v91 = *(v0 + 7424);
    *(v0 + 7552) = *(v0 + 7408);
    *(v0 + 7568) = v91;
    v92 = *(v0 + 7360);
    *(v0 + 7488) = *v27;
    *(v0 + 7504) = v92;
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    v93 = String.init<A>(describing:)();
    v95 = sub_10000D01C(v93, v94, &v117);

    *(v5 + 74) = v95;
    v96 = "Read LocalStorage serverSettings:\nmyInfo: %{private,mask.hash}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s";
    v97 = v115;
    v98 = v3;
    v99 = v5;
    v100 = 82;
  }

  else
  {
    sub_100005F04(v0 + 4816, v0 + 5296, &qword_1005A90D8, &unk_1004C6AB0);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_100002CE0(v0 + 4816, &qword_1005A90D8, &unk_1004C6AB0);
    if (!os_log_type_enabled(v3, v9))
    {
      goto LABEL_29;
    }

    v116 = v9;
    v10 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v10 = 136447747;
    memcpy((v0 + 976), (v0 + 4816), 0x1E0uLL);
    if (sub_100033B90(v0 + 976) == 1)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      v31 = *(v0 + 1024);
      *(v0 + 7760) = *(v0 + 1008);
      *(v0 + 7776) = v31;
      v32 = *(v0 + 1056);
      *(v0 + 7792) = *(v0 + 1040);
      *(v0 + 7808) = v32;
      v33 = *(v0 + 992);
      *(v0 + 7728) = *(v0 + 976);
      *(v0 + 7744) = v33;
      v11 = sub_100171264();
      v12 = v34;
    }

    v35 = (v0 + 6256);
    v36 = sub_10000D01C(v11, v12, &v117);

    *(v10 + 4) = v36;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    memcpy((v0 + 1456), (v0 + 4816), 0x1E0uLL);
    v37 = sub_100033B90(v0 + 1456);
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    if (v37 != 1)
    {
      v43 = *(v0 + 1872);
      v44 = *(v0 + 1904);
      *(v0 + 8016) = *(v0 + 1888);
      *(v0 + 8032) = v44;
      *(v0 + 8048) = *(v0 + 1920);
      *(v0 + 7984) = *(v0 + 1856);
      *(v0 + 8000) = v43;
      sub_100005F04(v0 + 7984, v0 + 7824, &qword_1005AD7A8, &qword_1004CA280);
      v38 = *(v0 + 7984);
      v39 = *(v0 + 8000);
      v40 = *(v0 + 8016);
      v41 = *(v0 + 8032);
      v42 = *(v0 + 8048);
    }

    v45 = (v0 + 7056);
    *(v0 + 8064) = v38;
    *(v0 + 8080) = v39;
    *(v0 + 8096) = v40;
    *(v0 + 8112) = v41;
    *(v0 + 8128) = v42;
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    v46 = String.init<A>(describing:)();
    v48 = sub_10000D01C(v46, v47, &v117);

    *(v10 + 24) = v48;
    *(v10 + 32) = 2160;
    *(v10 + 34) = 1752392040;
    *(v10 + 42) = 2081;
    memcpy((v0 + 1936), (v0 + 4816), 0x1E0uLL);
    if (sub_100033B90(v0 + 1936) == 1)
    {
      sub_10003170C(v35);
    }

    else
    {
      v67 = *(v0 + 2144);
      *(v0 + 6832) = *(v0 + 2128);
      *(v0 + 6848) = v67;
      v68 = *(v0 + 2176);
      *(v0 + 6864) = *(v0 + 2160);
      *(v0 + 6880) = v68;
      v69 = *(v0 + 2080);
      *(v0 + 6768) = *(v0 + 2064);
      *(v0 + 6784) = v69;
      v70 = *(v0 + 2112);
      *(v0 + 6800) = *(v0 + 2096);
      *(v0 + 6816) = v70;
      v71 = *(v0 + 2048);
      *(v0 + 6736) = *(v0 + 2032);
      *(v0 + 6752) = v71;
      sub_100005F04(v0 + 6736, v0 + 6896, &qword_1005A9328, &unk_1004C7F20);
      v72 = *(v0 + 6848);
      *(v0 + 6352) = *(v0 + 6832);
      *(v0 + 6368) = v72;
      v73 = *(v0 + 6880);
      *(v0 + 6384) = *(v0 + 6864);
      *(v0 + 6400) = v73;
      v74 = *(v0 + 6784);
      *(v0 + 6288) = *(v0 + 6768);
      *(v0 + 6304) = v74;
      v75 = *(v0 + 6816);
      *(v0 + 6320) = *(v0 + 6800);
      *(v0 + 6336) = v75;
      v76 = *(v0 + 6752);
      *v35 = *(v0 + 6736);
      *(v0 + 6272) = v76;
    }

    v77 = *(v0 + 6368);
    *(v0 + 6672) = *(v0 + 6352);
    *(v0 + 6688) = v77;
    v78 = *(v0 + 6400);
    *(v0 + 6704) = *(v0 + 6384);
    *(v0 + 6720) = v78;
    v79 = *(v0 + 6304);
    *(v0 + 6608) = *(v0 + 6288);
    *(v0 + 6624) = v79;
    v80 = *(v0 + 6336);
    *(v0 + 6640) = *(v0 + 6320);
    *(v0 + 6656) = v80;
    v81 = *(v0 + 6272);
    *(v0 + 6576) = *v35;
    *(v0 + 6592) = v81;
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    v82 = String.init<A>(describing:)();
    v84 = sub_10000D01C(v82, v83, &v117);

    *(v10 + 44) = v84;
    *(v10 + 52) = 2160;
    *(v10 + 54) = 1752392040;
    *(v10 + 62) = 2081;
    memcpy((v0 + 2416), (v0 + 4816), 0x1E0uLL);
    if (sub_100033B90(v0 + 2416) == 1)
    {
      sub_10017E0C8(v45);
    }

    else
    {
      v101 = *(v0 + 2752);
      v102 = *(v0 + 2784);
      *(v0 + 7152) = *(v0 + 2768);
      *(v0 + 7168) = v102;
      *(v0 + 7184) = *(v0 + 2800);
      v103 = *(v0 + 2688);
      v104 = *(v0 + 2720);
      *(v0 + 7088) = *(v0 + 2704);
      *(v0 + 7104) = v104;
      *(v0 + 7120) = *(v0 + 2736);
      *(v0 + 7136) = v101;
      *v45 = *(v0 + 2672);
      *(v0 + 7072) = v103;
    }

    v105 = *(v0 + 7168);
    *(v0 + 7296) = *(v0 + 7152);
    *(v0 + 7312) = v105;
    *(v0 + 7328) = *(v0 + 7184);
    v106 = *(v0 + 7104);
    *(v0 + 7232) = *(v0 + 7088);
    *(v0 + 7248) = v106;
    v107 = *(v0 + 7136);
    *(v0 + 7264) = *(v0 + 7120);
    *(v0 + 7280) = v107;
    v108 = *(v0 + 7072);
    *(v0 + 7200) = *v45;
    *(v0 + 7216) = v108;
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    v109 = String.init<A>(describing:)();
    v111 = sub_10000D01C(v109, v110, &v117);

    *(v10 + 64) = v111;
    v96 = "Read LocalStorage serverSettings:\nmyInfo: %{public}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s";
    v97 = v116;
    v98 = v3;
    v99 = v10;
    v100 = 72;
  }

  _os_log_impl(&_mh_execute_header, v98, v97, v96, v99, v100);
  swift_arrayDestroy();

LABEL_29:

  v112 = *(v0 + 8328);
  memcpy((v0 + 496), (v0 + 4816), 0x1E0uLL);
  sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0);
  CheckedContinuation.resume(returning:)();
  v113 = *(v0 + 8);

  return v113();
}