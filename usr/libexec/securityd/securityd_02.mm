uint64_t sub_1000255E0()
{
  v1 = v0[2] + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v0[3] = v2;

  os_unfair_lock_unlock(v1);
  if (v2)
  {
    v3 = async function pointer to AuthenticatedSession.quotaAvailable()[1];

    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1000256E0;

    return AuthenticatedSession.quotaAvailable()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000256E0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100025860;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1000257FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000257FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100025860()
{
  v1 = v0[3];

  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  sub_100011920(v3, qword_10039B220);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error while calling dummy Operation on SignOut: %@", v7, 0xCu);
    sub_10002C6F4(v8, &qword_10039B248, &qword_1002941A8);
  }

  v10 = v0[5];
  v11 = v0[3];

  swift_willThrow();

  v12 = v0[1];
  v13 = v0[5];

  return v12();
}

uint64_t sub_100025B80(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100025C28;

  return sub_1000255C0();
}

uint64_t sub_100025C28()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

void sub_100025DAC(_OWORD *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100011920(v8, qword_10039B220);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidation Context Get: Might be missing KCSharingCloudCoreDelegate reference", v11, 2u);
    }

    goto LABEL_9;
  }

  v3 = Strong;
  v4 = String._bridgeToObjectiveC()();
  *&v22 = 0;
  v5 = [v3 fetchCloudCoreMetadataValueWithErrorForKey:v4 error:&v22];

  v6 = v22;
  if (v5)
  {
    v7 = v22;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v12 = v6;
  }

  v24 = v22;
  v25 = v23;
  if (!v6)
  {
    swift_unknownObjectRelease();
    v22 = v24;
    v23 = v25;
    if (*(&v25 + 1))
    {
      if (swift_dynamicCast())
      {
        return;
      }
    }

    else
    {
      sub_10002C6F4(&v22, &qword_10039B398, &qword_1002943D8);
    }

LABEL_9:
    *a1 = xmmword_100294180;
    return;
  }

  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100011920(v13, qword_10039B220);
  v14 = v6;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = a1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v22 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_10002A710(0xD00000000000001ALL, 0x80000001002C13D0, &v22);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v6;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Invalidation Context Get: Error while fetching value for key: %s with error: %@", v17, 0x16u);
    sub_10002C6F4(v18, &qword_10039B248, &qword_1002941A8);
    a1 = v21;

    sub_10002C620(v19);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10002C6F4(&v24, &qword_10039B398, &qword_1002943D8);
  *a1 = xmmword_100294180;
}

uint64_t KCSharingCloudCoreUtilities.fetchShareParticipants(for:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_1000261C0, 0, 0);
}

uint64_t sub_1000261C0()
{
  v1 = v0[6] + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v0[7] = v2;

  os_unfair_lock_unlock(v1);
  if (v2)
  {
    v0[4] = v2;
    v3 = async function pointer to Session.shareParticipants(for:)[1];

    v4 = swift_task_alloc();
    v0[8] = v4;
    v5 = type metadata accessor for AuthenticatedSession();
    v6 = sub_10002C6AC(&qword_10039B240, &type metadata accessor for AuthenticatedSession);
    *v4 = v0;
    v4[1] = sub_100026314;
    v7 = v0[5];

    return Session.shareParticipants(for:)(v7, v5, v6);
  }

  else
  {
    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_100026314(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v8 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  v5 = v3[7];

  if (v1)
  {
    v6 = sub_100026644;
  }

  else
  {
    v6 = sub_100026438;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100026438()
{
  v1 = *(v0 + 72);
  sub_10002ACB8(&qword_10039B250, &qword_1002941B0);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v6 = v1 + 64;
  v5 = *(v1 + 64);
  v30 = v1;
  v31 = result;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v29 = result + 64;
  if ((v8 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v4 << 6);
      v15 = *(*(v30 + 48) + 8 * v14);
      v16 = *(v30 + 56) + 16 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = type metadata accessor for TResult();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtC9securityd7TResult_result];
      *v21 = v17;
      v21[8] = v18;
      v22 = v15;
      sub_100020FBC(v17, v18);
      v32[1].receiver = v20;
      v32[1].super_class = v19;
      result = objc_msgSendSuper2(v32 + 1, "init");
      *(v29 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v31;
      *(v31[6] + 8 * v14) = v22;
      *(v31[7] + 8 * v14) = result;
      v23 = v31[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v31[2] = v25;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    super_class = v32[4].super_class;
    v27 = v32[3].super_class;

    v28 = v32->super_class;

    return v28(v3);
  }

  return result;
}

uint64_t sub_100026644()
{
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_100011920(v2, qword_10039B220);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got errror in fetchShareParticipants: %@", v6, 0xCu);
    sub_10002C6F4(v7, &qword_10039B248, &qword_1002941A8);
  }

  v9 = v0[10];
  v10 = v0[7];

  swift_willThrow();

  v11 = v0[1];
  v12 = v0[10];

  return v11();
}

id TResult.__allocating_init<A>(_:)(uint64_t a1, char a2)
{
  v4 = sub_10002B8FC(a1, a2 & 1);
  sub_10002BB48(a1, a2 & 1);
  return v4;
}

uint64_t sub_1000269B8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_10002C274(0, &qword_10039B368, CKUserIdentityLookupInfo_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_100026AA4;

  return KCSharingCloudCoreUtilities.fetchShareParticipants(for:)(v5);
}

uint64_t sub_100026AA4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v10 = a1;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_3;
  }

  v12 = *(v5 + 32);
  type metadata accessor for TResult();
  sub_10002BF6C(&qword_10039B370, &qword_10039B368, CKUserIdentityLookupInfo_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = isa;
  v10 = 0;
  a1 = isa;
LABEL_6:
  v14 = *(v5 + 24);
  (v14)[2](v14, v11, v10);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t KCSharingCloudCoreUtilities.acceptCKShares(_:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100026CA8, 0, 0);
}

uint64_t sub_100026CA8()
{
  v1 = v0[5] + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v0[6] = v2;

  os_unfair_lock_unlock(v1);
  if (v2)
  {
    v3 = async function pointer to AuthenticatedSession.accept(_:)[1];

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_100026DB4;
    v5 = v0[4];

    return AuthenticatedSession.accept(_:)(v5);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_100026DB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v8 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1000270DC;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_100026ED0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100026ED0()
{
  v1 = *(v0 + 64);
  sub_10002ACB8(&qword_10039B260, &qword_1002941C0);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v6 = v1 + 64;
  v5 = *(v1 + 64);
  v30 = v1;
  v31 = result;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v29 = result + 64;
  if ((v8 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v4 << 6);
      v15 = *(*(v30 + 48) + 8 * v14);
      v16 = *(v30 + 56) + 16 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = type metadata accessor for TResult();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtC9securityd7TResult_result];
      *v21 = v17;
      v21[8] = v18;
      v22 = v15;
      sub_100020FBC(v17, v18);
      v32[1].receiver = v20;
      v32[1].super_class = v19;
      result = objc_msgSendSuper2(v32 + 1, "init");
      *(v29 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v31;
      *(v31[6] + 8 * v14) = v22;
      *(v31[7] + 8 * v14) = result;
      v23 = v31[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v31[2] = v25;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    receiver = v32[4].receiver;
    v27 = v32[3].receiver;

    super_class = v32->super_class;

    return super_class(v3);
  }

  return result;
}

uint64_t sub_1000270DC()
{
  v1 = v0[6];

  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100011920(v3, qword_10039B220);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Got errror in acceptCKShares: %@", v7, 0xCu);
    sub_10002C6F4(v8, &qword_10039B248, &qword_1002941A8);
  }

  v10 = v0[9];
  v11 = v0[6];

  swift_willThrow();

  v12 = v0[1];
  v13 = v0[9];

  return v12();
}

uint64_t sub_100027410(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_10002C274(0, &qword_10039B348, CKShareMetadata_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_1000274FC;

  return KCSharingCloudCoreUtilities.acceptCKShares(_:)(v5);
}

uint64_t sub_1000274FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v10 = a1;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_3;
  }

  v12 = *(v5 + 32);
  type metadata accessor for TResult();
  sub_10002BF6C(&qword_10039B350, &qword_10039B348, CKShareMetadata_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = isa;
  v10 = 0;
  a1 = isa;
LABEL_6:
  v14 = *(v5 + 24);
  (v14)[2](v14, v11, v10);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t KCSharingCloudCoreUtilities.fetchCKShareMetadatas(_:invitationTokensByShareURL:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for URL();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000277A4, 0, 0);
}

uint64_t sub_1000277A4()
{
  v1 = v0[7] + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v0[11] = v2;

  os_unfair_lock_unlock(v1);
  if (v2)
  {
    v0[4] = v2;
    v3 = async function pointer to Session.shareMetadatas(for:invitationTokensByShareURL:)[1];

    v4 = swift_task_alloc();
    v0[12] = v4;
    v5 = type metadata accessor for AuthenticatedSession();
    v6 = sub_10002C6AC(&qword_10039B240, &type metadata accessor for AuthenticatedSession);
    *v4 = v0;
    v4[1] = sub_100027900;
    v7 = v0[5];
    v8 = v0[6];

    return Session.shareMetadatas(for:invitationTokensByShareURL:)(v7, v8, v5, v6);
  }

  else
  {
    v9 = v0[10];

    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_100027900(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v8 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  v5 = v3[11];

  if (v1)
  {
    v6 = sub_100027CA0;
  }

  else
  {
    v6 = sub_100027A24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100027A24()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  sub_10002ACB8(&qword_10039B268, &qword_1002941D0);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v31 = v2;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v30 = result + 64;
  v32 = result;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v34 = (v8 - 1) & v8;
LABEL_10:
      v13 = v10 | (v5 << 6);
      receiver = v33[5].receiver;
      v36 = receiver;
      v37 = v33[4].receiver;
      v35 = *(v31 + 72) * v13;
      v15 = *(v1 + 48) + v35;
      (*(v31 + 16))();
      v16 = *(v1 + 56) + 16 * v13;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = type metadata accessor for TResult();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtC9securityd7TResult_result];
      *v21 = v17;
      v21[8] = v18;
      sub_100020FBC(v17, v18);
      v33[1].receiver = v20;
      v33[1].super_class = v19;
      v22 = objc_msgSendSuper2(v33 + 1, "init");
      *(v30 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v4 = v32;
      result = (*(v31 + 32))(v32[6] + v35, v36, v37);
      *(v32[7] + 8 * v13) = v22;
      v23 = v32[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v32[2] = v25;
      v8 = v34;
      if (!v34)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v5 >= v9)
      {
        break;
      }

      v12 = *(v1 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v34 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    super_class = v33[6].super_class;
    v27 = v33[5].super_class;

    v28 = v33[5].receiver;

    v29 = v33->super_class;

    return v29(v4);
  }

  return result;
}

uint64_t sub_100027CA0()
{
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  sub_100011920(v2, qword_10039B220);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got errror in fetchCKShareMetadatas: %@", v6, 0xCu);
    sub_10002C6F4(v7, &qword_10039B248, &qword_1002941A8);
  }

  v9 = v0[14];
  v11 = v0[10];
  v10 = v0[11];

  swift_willThrow();

  v12 = v0[1];
  v13 = v0[14];

  return v12();
}

uint64_t sub_100027FDC(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  sub_10002C274(0, &qword_10039B358, CKDeviceToDeviceShareInvitationToken_ptr);
  v4[6] = sub_10002C07C(&qword_10039B360, &type metadata accessor for URL);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4[7] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_100028140;

  return KCSharingCloudCoreUtilities.fetchCKShareMetadatas(_:invitationTokensByShareURL:)(v6, v7);
}

uint64_t sub_100028140(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 16);
  v10 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v11 = a1;
LABEL_3:
    v12 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v11 = 0;
    goto LABEL_3;
  }

  v13 = v5[6];
  v14 = v5[4];
  type metadata accessor for TResult();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = isa;
  v11 = 0;
  a1 = isa;
LABEL_6:
  v16 = v5[3];
  (v16)[2](v16, v12, v11);

  _Block_release(v16);
  v17 = *(v10 + 8);

  return v17();
}

uint64_t KCSharingCloudCoreUtilities.declineCKShares(_:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100028344, 0, 0);
}

uint64_t sub_100028344()
{
  v1 = v0[5] + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v0[6] = v2;

  os_unfair_lock_unlock(v1);
  if (v2)
  {
    v3 = async function pointer to AuthenticatedSession.decline(_:)[1];

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_100028450;
    v5 = v0[4];

    return AuthenticatedSession.decline(_:)(v5);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_100028450(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v8 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1000287CC;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_10002856C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002856C()
{
  receiver = v0[4].receiver;
  sub_10002ACB8(&qword_10039B260, &qword_1002941C0);
  result = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  v4 = receiver + 64;
  v35 = receiver;
  v5 = 1 << receiver[32];
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(receiver + 8);
  v8 = (v5 + 63) >> 6;
  v38 = result;
  v33 = v0;
  v34 = result + 64;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v36 = (v7 - 1) & v7;
LABEL_10:
      v12 = v9 | (v3 << 6);
      v13 = *(*(v35 + 6) + 8 * v12);
      v14 = *(v35 + 7) + 16 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = type metadata accessor for TResult();
      v18 = objc_allocWithZone(v17);
      v37 = v13;
      if (v16)
      {
        sub_10002B94C(v15, 1);
        v19 = v13;
        sub_10002B94C(v15, 1);
        v20 = v15;
        v21 = &selRef_handleCircleMessagesAndReturnHandledCopy_err_;
      }

      else
      {
        v22 = objc_allocWithZone(type metadata accessor for TResult.VoidWrapper());
        v23 = v13;
        v21 = &selRef_handleCircleMessagesAndReturnHandledCopy_err_;
        v24 = v22;
        v0 = v33;
        v20 = [v24 init];
      }

      v25 = &v18[OBJC_IVAR____TtC9securityd7TResult_result];
      *v25 = v20;
      v25[8] = v16;
      v0[1].receiver = v18;
      v0[1].super_class = v17;
      v26 = objc_msgSendSuper2(v0 + 1, v21[113]);
      result = sub_10002B958(v15, v16);
      *(v34 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v38[6] + 8 * v12) = v37;
      *(v38[7] + 8 * v12) = v26;
      v27 = v38[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v38[2] = v29;
      v7 = v36;
      if (!v36)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v3 >= v8)
      {
        break;
      }

      v11 = *&v4[8 * v3];
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v36 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    v30 = v0[4].receiver;
    v31 = v0[3].receiver;

    super_class = v0->super_class;

    return super_class(v38);
  }

  return result;
}

uint64_t sub_1000287CC()
{
  v1 = v0[6];

  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100011920(v3, qword_10039B220);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Got errror in declineCKShares: %@", v7, 0xCu);
    sub_10002C6F4(v8, &qword_10039B248, &qword_1002941A8);
  }

  v10 = v0[9];
  v11 = v0[6];

  swift_willThrow();

  v12 = v0[1];
  v13 = v0[9];

  return v12();
}

id TResult.__allocating_init(voidResult:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  if (a2)
  {
    swift_errorRetain();
    v6 = a1;
  }

  else
  {
    v6 = [objc_allocWithZone(type metadata accessor for TResult.VoidWrapper()) init];
  }

  v7 = &v5[OBJC_IVAR____TtC9securityd7TResult_result];
  *v7 = v6;
  v8 = a2 & 1;
  v7[8] = v8;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_10002B958(a1, v8);
  return v9;
}

uint64_t sub_100028BB0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_10002C274(0, &qword_10039B348, CKShareMetadata_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_10002CB24;

  return KCSharingCloudCoreUtilities.declineCKShares(_:)(v5);
}

id TResult.init<A>(_:)(uint64_t a1, char a2)
{
  v4 = sub_10002B82C(a1, a2 & 1);
  sub_10002BB48(a1, a2 & 1);
  return v4;
}

uint64_t sub_100028D44@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

id TResult.__allocating_init<A>(success:)(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for TResult());
  v3 = sub_10002B82C(a1, 0);
  swift_unknownObjectRelease();
  return v3;
}

id TResult.__allocating_init(failure:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for TResult();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC9securityd7TResult_result];
  *v6 = a1;
  v6[8] = 1;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id TResult.init(failure:)(uint64_t a1)
{
  v2 = type metadata accessor for TResult();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9securityd7TResult_result];
  *v4 = a1;
  v4[8] = 1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id TResult.init(voidResult:)(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = a1;
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for TResult.VoidWrapper()) init];
  }

  v6 = &v2[OBJC_IVAR____TtC9securityd7TResult_result];
  *v6 = v5;
  v7 = a2 & 1;
  v6[8] = v7;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TResult();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_10002B958(a1, v7);
  return v8;
}

uint64_t TResult.success.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9securityd7TResult_result);
  if ((*(v0 + OBJC_IVAR____TtC9securityd7TResult_result + 8) & 1) == 0)
  {
    return swift_unknownObjectRetain();
  }

  v3 = *(v0 + OBJC_IVAR____TtC9securityd7TResult_result);
  sub_10002ACB8(&qword_10039B270, &qword_1002941E0);
  swift_willThrowTypedImpl();
  return 0;
}

uint64_t TResult.failure.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9securityd7TResult_result + 8) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9securityd7TResult_result);
  swift_errorRetain();
  return v1;
}

BOOL TResult.isVoid.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9securityd7TResult_result + 8))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9securityd7TResult_result);
  type metadata accessor for TResult.VoidWrapper();
  return swift_dynamicCastClass() != 0;
}

id sub_1000294EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100029550(char a1)
{
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011920(v2, qword_10039B220);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10002A710(0xD00000000000002FLL, 0x80000001002C13A0, v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s going for session invalidation", v5, 0xCu);
    sub_10002C620(v6);
  }

  v7 = type metadata accessor for SessionReadinessError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for SessionReadinessError.accountUnauthenticated(_:), v7);
  v12 = sub_10002ACB8(&qword_10039B300, &qword_100294290);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = v18 - v14;
  v16 = type metadata accessor for SessionInvalidationContext();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_100023CDC(v11, v15, a1 & 1);
  sub_10002C6F4(v15, &qword_10039B300, &qword_100294290);
  return (*(v8 + 8))(v11, v7);
}

void sub_10002987C()
{
  v1 = v0;
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011920(v2, qword_10039B220);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10002A710(0xD000000000000018, 0x80000001002C1380, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s setting nil databases", v5, 0xCu);
    sub_10002C620(v6);
  }

  v7 = v1 + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  os_unfair_lock_lock(v7);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  v9 = *(v7 + 24);
  *(v7 + 24) = 0;

  os_unfair_lock_unlock(v7);
}

uint64_t sub_100029A48(uint64_t a1)
{
  v2 = sub_10002C07C(&qword_10039B3B8, type metadata accessor for KCSharingError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100029AB4(uint64_t a1)
{
  v2 = sub_10002C07C(&qword_10039B3B8, type metadata accessor for KCSharingError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100029B24(uint64_t a1)
{
  v2 = sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100029B98(uint64_t a1)
{
  v2 = sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100029C04(uint64_t a1)
{
  v2 = sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100029C70(void *a1, uint64_t a2)
{
  v4 = sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100029D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100029DA0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100029E00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100029E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_100029EA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100029F60(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002CB20;

  return v7();
}

uint64_t sub_10002A048(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10002A130;

  return v8();
}

uint64_t sub_10002A130()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10002ACB8(&qword_10039B340, &qword_1002942B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10002BD94(a3, v24 - v10, &qword_10039B340, &qword_1002942B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002C6F4(v11, &qword_10039B340, &qword_1002942B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10002C6F4(a3, &qword_10039B340, &qword_1002942B0);

    return v22;
  }

LABEL_8:
  sub_10002C6F4(a3, &qword_10039B340, &qword_1002942B0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10002A520(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002A618;

  return v7(a1);
}

uint64_t sub_10002A618()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002A710(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002A7DC(v11, 0, 0, 1, a1, a2);
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
    sub_10002BA70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002C620(v11);
  return v7;
}

unint64_t sub_10002A7DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002A8E8(a5, a6);
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

char *sub_10002A8E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002A934(a1, a2);
  sub_10002AA64(&off_1003336D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002A934(uint64_t a1, unint64_t a2)
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

  v6 = sub_10002AB50(v5, 0);
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
        v7 = sub_10002AB50(v10, 0);
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

uint64_t sub_10002AA64(uint64_t result)
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

  result = sub_10002ABC4(result, v12, 1, v3);
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

void *sub_10002AB50(uint64_t a1, uint64_t a2)
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

  sub_10002ACB8(&qword_10039B2F8, &qword_100294288);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002ABC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002ACB8(&qword_10039B2F8, &qword_100294288);
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

uint64_t sub_10002ACB8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10002AD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

id sub_10002ADA8()
{
  if (&class metadata base offset for AuthenticatedSession)
  {
    v1 = &protocol conformance descriptor for AuthenticatedSession == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || &protocol conformance descriptor for AuthenticatedSession == 0 || &protocol witness table for AuthenticatedSession == 0 || &type metadata accessor for AuthenticatedSession == 0 || &type metadata for AuthenticatedSession == 0 || &metaclass for AuthenticatedSession == 0 || &nominal type descriptor for AuthenticatedSession == 0)
  {
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100011920(v12, qword_10039B220);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "CloudCoreInternal.framework appears to not be linked. Cannot enable KCSharing (on pain of crash).", v15, 2u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    ObjectType = swift_getObjectType();
    memset(v17, 0, 24);
    swift_unknownObjectWeakInit();
    v18 = 0;
    LODWORD(v19[0]) = 0;
    memset(v19 + 8, 0, 33);
    sub_10002C754(v17, v19 + 8);
    v9 = &v0[OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex];
    v10 = v19[1];
    *v9 = v19[0];
    *(v9 + 1) = v10;
    *(v9 + 25) = *(&v19[1] + 9);
    v16.receiver = v0;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, "init");
  }

  return result;
}

uint64_t sub_10002AFB4(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = a1;
    v5 = a2;
    return a1;
  }

  if (!a1)
  {
    v15._countAndFlagsBits = 0xD000000000000011;
    v15._object = 0x80000001002C13F0;
    String.append(_:)(v15);
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v16._object = 0x80000001002C1410;
    v16._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v16);
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_10002ACB8(&qword_10039B328, &qword_100294298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100294190;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  v9 = @"KCSharingErrorDomain";
  _StringGuts.grow(_:)(57);
  v10._countAndFlagsBits = 0xD000000000000017;
  v10._object = 0x80000001002C1430;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000020;
  v12._object = 0x80000001002C1450;
  String.append(_:)(v12);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_10001196C(inited);
  swift_setDeallocating();
  sub_10002C6F4(inited + 32, &qword_10039B330, &qword_1002942A0);
  v13 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 initWithDomain:v9 code:38 userInfo:isa];

  return swift_willThrow();
}

void sub_10002B1E4(void *a1, uint64_t a2)
{
  v40 = a1;
  v3 = type metadata accessor for SessionInvalidationContext();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002ACB8(&qword_10039B300, &qword_100294290);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v39 - v9;
  sub_10002BD94(a2, v39 - v9, &qword_10039B300, &qword_100294290);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_10002C6F4(v10, &qword_10039B300, &qword_100294290);
    v11 = 0;
    isa = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    (*(v4 + 32))(v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v3);
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_100011920(v14, qword_10039B220);
    __chkstk_darwin(v15);
    v16 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v16, v16, v3);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      v41 = v39[0];
      *v19 = 136380675;
      sub_10002C6AC(&qword_10039B320, &type metadata accessor for SessionInvalidationContext);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v39[1] = v39;
      v22 = v21;
      v23 = *(v4 + 8);
      v23(v16, v3);
      v24 = sub_10002A710(v20, v22, &v41);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalidation Context Set: Setting Invalidation Context to %{private}s", v19, 0xCu);
      sub_10002C620(v39[0]);
    }

    else
    {

      v23 = *(v4 + 8);
      v23(v16, v3);
    }

    v25 = type metadata accessor for JSONEncoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_10002C6AC(&qword_10039B318, &type metadata accessor for SessionInvalidationContext);
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v13 = v28;
    v23(v6, v3);

    if (v13 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }
  }

  v29 = String._bridgeToObjectiveC()();
  v41 = 0;
  v30 = [v40 setCloudCoreMetadataValue:isa forKey:v29 error:&v41];
  swift_unknownObjectRelease();

  if (v30)
  {
    v31 = v41;
    sub_10002BAD0(v11, v13);
  }

  else
  {
    v32 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10039B218 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100011920(v33, qword_10039B220);
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
      _os_log_impl(&_mh_execute_header, v34, v35, "Invalidation Context Set: Got error while storing invalidation context: %@", v36, 0xCu);
      sub_10002C6F4(v37, &qword_10039B248, &qword_1002941A8);

      sub_10002BAD0(v11, v13);
    }

    else
    {
      sub_10002BAD0(v11, v13);
    }
  }
}

id sub_10002B82C(uint64_t a1, char a2)
{
  v8 = a1;
  v9 = a2 & 1;
  sub_10002C7C8(&qword_10039B270, &qword_1002941E0);
  v3 = type metadata accessor for Result();
  sub_100028D44(sub_10002C7BC, v3, &v10);
  v4 = v11;
  v5 = &v2[OBJC_IVAR____TtC9securityd7TResult_result];
  *v5 = v10;
  v5[8] = v4;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TResult();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_10002B94C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10002B958(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10002B9AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10002BA08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002BA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002BAD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002BAE4(a1, a2);
  }

  return a1;
}

uint64_t sub_10002BAE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_10002BB38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002BB48(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10002BB54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002CB20;

  return sub_100028BB0(v2, v3, v4);
}

uint64_t sub_10002BC08()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002CB20;

  return sub_100029F60(v2, v3, v5);
}

uint64_t sub_10002BCC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002CB20;

  return sub_10002A048(a1, v4, v5, v7);
}

uint64_t sub_10002BD94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002ACB8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002BDFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002CB20;

  return sub_10002A520(a1, v5);
}

uint64_t sub_10002BEB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002A130;

  return sub_10002A520(a1, v5);
}

uint64_t sub_10002BF6C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002C274(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002BFBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002CB20;

  return sub_100027FDC(v2, v3, v5, v4);
}

uint64_t sub_10002C07C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C0C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002A130;

  return sub_100027410(v2, v3, v4);
}

uint64_t sub_10002C178()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C1C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002CB20;

  return sub_1000269B8(v2, v3, v4);
}

uint64_t sub_10002C274(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10002C2BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002CB20;

  return sub_100025B80(v2, v3);
}

uint64_t sub_10002C368()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10002CB20;

  return sub_1000248B8(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10002C43C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002C47C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002CB20;

  return sub_100023928(a1, a2, v6);
}

void *sub_10002C528(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_10002C56C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002C5D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10002C620(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_10002C66C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_10002C6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C6F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002ACB8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002C7C8(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_10002C810(uint64_t a1, uint64_t *a2)
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

unint64_t sub_10002CA3C()
{
  result = qword_10039B3E0;
  if (!qword_10039B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039B3E0);
  }

  return result;
}

uint64_t sub_10002CB48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

uint64_t sub_10002CC8C()
{
  sub_10002ACB8(&qword_10039B430, &qword_100294698);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100294190;
  _StringGuts.grow(_:)(18);

  v2 = *(v0 + OBJC_IVAR____TtC9securityd17KCSharingPingPong_ping);
  v3 = *(v0 + OBJC_IVAR____TtC9securityd17KCSharingPingPong_ping + 8);

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A676E6F50202CLL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC9securityd17KCSharingPingPong_pong);
  v7 = *(v0 + OBJC_IVAR____TtC9securityd17KCSharingPingPong_pong + 8);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x203A676E6950;
  *(v1 + 40) = 0xE600000000000000;
  print(_:separator:terminator:)();
}

id sub_10002CE28(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id sub_10002CE84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KCSharingPingPong();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002D04C()
{
  sub_10002ACB8(&qword_10039B430, &qword_100294698);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100294190;
  _StringGuts.grow(_:)(18);

  v2 = *(v0 + OBJC_IVAR____TtC9securityd8PingPong_ping);
  v3 = *(v0 + OBJC_IVAR____TtC9securityd8PingPong_ping + 8);

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A676E6F50202CLL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC9securityd8PingPong_pong);
  v7 = *(v0 + OBJC_IVAR____TtC9securityd8PingPong_pong + 8);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x203A676E6950;
  *(v1 + 40) = 0xE600000000000000;
  print(_:separator:terminator:)();
}

id sub_10002D1E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PingPong();
  return objc_msgSendSuper2(&v2, "dealloc");
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_10039DB00 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_10039DB00, 0, qword_10039DB08, qword_10039DB10, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_10039DB00 - a3;
    if (qword_10039DB00 < a3)
    {
      v6 = 0;
    }

    qword_10039DB00 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_10039DB00, 0, qword_10039DB08, qword_10039DB10, v9, a5, v7);
  }

  return result;
}

uint64_t sub_10002D408(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  if (byte_10039B471 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(sub_10002DB38, &v8, a1, a2, &byte_10039B471, 1);
  if (v4)
  {
    if (byte_10039B471 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    sub_10002D890();
    v6 = 70;
  }

  if (v6 >= byte_10039B471 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v4 = byte_10039B471;
  if (byte_10039B471 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = byte_10039B471;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(sub_10002DB38, &v10, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= byte_10039B471 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void sub_10002D890()
{
  if (byte_10039B471 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_10039DB1C, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  byte_10039B471 = output;
  if (output <= 0x1EuLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002E1A0();
LABEL_12:
    v0 = byte_10039B471;
  }

  if (v0 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t sub_10002DB38(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10039B471 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002DABC();
    sub_10002DA98();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_10002DCFC();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_10002DEB0(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_10039B471 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002DB2C();
    sub_10002DAD4();
    sub_10002DA88();
    sub_10002DA98();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_10002DCFC()
{
  if (byte_10039B471 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002DA58();
    sub_10002DA98();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_10039DB18)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_10039DB1C);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_10039DB18 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_10039B471 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002DB2C();
    sub_10002DAD4();
    sub_10002DA88();
    sub_10002DA98();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t sub_10002DEB0(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10039B471 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002DA70();
    sub_10002DA4C();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v44 = v21;
      v22 = IOConnectCallStructMethod(dword_10039DB1C, 0, v19, inputStructCnt, a6, &v44);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (byte_10039B471 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10002DA70();
          sub_10002DB14();
          v49 = v25;
          v50 = v23;
          v51 = v25;
          v52 = v23;
          sub_10002DA4C();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (byte_10039B471 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10002DA70();
          sub_10002DB14();
          sub_10002DA4C();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v44;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= byte_10039B471 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v46 = 136315650;
    v47 = "ACMLib";
    sub_10002DAA4();
    v48 = "performCommand";
    sub_10002DA3C();
    sub_10002DA4C();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  return v23;
}

void sub_10002E1A0()
{
  sub_10002DAD4();
  sub_10002DA98();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

void *sub_10002E374()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

BOOL sub_10002E3EC(id a1, __OpaqueSecDbConnection *a2)
{
  v2 = sub_100006274("keychain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Keychain initialized!", v4, 2u);
  }

  return 1;
}

void sub_10002E66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

void sub_10002E698(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v7 isEqualToString:@"allowed-runtime"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[4] = [v5 longValue];
    }

    else if ([v7 isEqualToString:@"reset-period"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[5] = [v5 longValue];
    }

    else if ([v7 isEqualToString:@"check-period"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[6] = [v5 longValue];
    }

    else if ([v7 isEqualToString:@"graceful-exit-time"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[8] = [v5 longValue];
    }

    else
    {
      [*(a1 + 32) addObject:v7];
    }
  }
}

void sub_10002EB60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained runWatchdog];
    WeakRetained = v2;
  }
}

void sub_10002EE70(id a1)
{
  v1 = sub_100006274("SecCritical");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SecWatchdog: watchdog has failed to exit securityd/secd gracefully - exiting ungracefully", v2, 2u);
  }

  exit(1);
}

void sub_10002EF48(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
    v1 = 1;
  }

  else
  {
    v1 = info.numer / info.denom;
  }

  qword_10039DB38 = v1;
}

uint64_t sub_10002F0F4(uint64_t a1)
{
  qword_10039DB20 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10002F248(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100011AB0(a2);
  (*(v2 + 16))(v2, v3);
}

void sub_10002F354(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_10002F468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_10002F7D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100011AB0(a2);
  (*(v2 + 16))(v2, v3);
}

void sub_10002F8E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100011AB0(a2);
  (*(v2 + 16))(v2, v3);
}

void sub_10002FB04(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10002FC48(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10002FD8C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10002FED0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100011AB0(a2);
  (*(v2 + 16))(v2, v3);
}

void sub_10002FFF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100011AB0(a2);
  (*(v2 + 16))(v2, v3);
}

void sub_100030120(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100030264(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000303A8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000304EC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100030614(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_100011AB0(a3);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10003073C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100011AB0(a2);
  (*(v2 + 16))(v2, v3);
}

id sub_100030E04(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (a2 >= v4)
  {
    if (a2 - v4 < [*(*(a1 + 32) + 8) count])
    {
      v7 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:v3 - *(a1 + 40)];
      v8 = [v7 pointerValue];

      return v8;
    }

    *a3 = 1;
  }

  return 0;
}

id sub_100031160(void *a1)
{
  v1 = a1;
  v2 = [v1 zoneName];
  v3 = [v2 hasPrefix:@"group-"];

  if (v3)
  {
    v4 = [v1 zoneName];
    v5 = [v4 substringFromIndex:{objc_msgSend(@"group-", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100031204(void *a1, void *a2)
{
  v3 = a1;
  v5 = [a2 displayName];
  v4 = [v3 encryptedValues];

  [v4 setObject:v5 forKeyedSubscript:@"displayName"];
}

id sub_100031284(void *a1)
{
  v1 = a1;
  v2 = [v1 userIdentity];
  v3 = [v2 lookupInfo];

  v17 = [KCSharingParticipant alloc];
  v4 = [v1 userIdentity];
  v5 = [v4 userRecordID];
  v6 = [v5 recordName];
  v7 = sub_100031428(v3);
  v8 = v1;
  if ([v8 role] == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = [v8 role] == 2 || objc_msgSend(v8, "permission") == 3;
  }

  v10 = [v8 isCurrentUser];
  v11 = [v8 acceptanceStatus] - 1;
  if (v11 > 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1002949B0[v11];
  }

  v13 = [v8 invitationToken];

  v14 = [v13 sharingInvitationData];
  v15 = [v17 initWithParticipantID:v6 handle:v7 permissionLevel:v9 isCurrentUser:v10 inviteStatus:v12 sharingInvitationData:v14];

  return v15;
}

id sub_100031428(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 emailAddress];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = [v2 phoneNumber];
      v7 = v6;
      if (v6)
      {
        if ([v6 hasPrefix:@"+"])
        {
          v8 = v7;
        }

        else
        {
          v8 = [@"+" stringByAppendingString:v7];
        }

        v5 = v8;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000314F8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = [v1 participants];
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = sub_100031284(*(*(&v20 + 1) + 8 * i));
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v5);
    }

    v9 = [v1 recordID];
    v10 = [v9 zoneID];
    v11 = sub_100031160(v10);

    if (v11)
    {
      v12 = [KCSharingGroup alloc];
      v13 = [v1 encryptedValues];
      v14 = [v13 objectForKeyedSubscript:@"displayName"];
      v15 = [v1 URL];
      v16 = [v12 initWithGroupID:v11 participants:v2 displayName:v14 shareURL:v15];
    }

    else
    {
      v13 = KCSharingLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = [v1 recordID];
        v19 = [v18 zoneID];
        *buf = 138412290;
        v25 = v19;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Zone ID %@ did not contain KCSharingGroupID", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    v2 = KCSharingLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Can't create a KCSharingGroup without a CKShare", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

void sub_100031A80(uint64_t a1)
{
  v2 = KCSharingLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 32) clientConnections];
    *buf = 138543362;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "calling accountChanged to connections %{public}@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 32) clientConnections];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) connection];
        v9 = [v8 remoteObjectProxy];
        [v9 accountChanged];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_100031C98(uint64_t a1)
{
  v2 = KCSharingLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 32) clientConnections];
    *buf = 138412290;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "calling groupsUpdated to connections %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 32) clientConnections];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) connection];
        v9 = [v8 remoteObjectProxy];
        [v9 groupsUpdated];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_1000323E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_100032430(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained connectionWasInterrupted:v2];
}

void sub_100032494(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained connectionWasInvalidated:v2];
}

void sub_10003284C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v2 = objc_alloc_init(KCSharingXPCListenerDelegate);
    v3 = qword_10039DB48;
    qword_10039DB48 = v2;

    v4 = qword_10039DB48;
    v5 = +[KCSharingSyncController sharedInstance];
    [v5 setXpcListenerDelegate:v4];

    v6 = qword_10039DB48;
    v7 = +[KCSharingDaemonGroupManager sharedInstance];
    [v7 setXpcListenerDelegate:v6];
  }

  else
  {
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KCSharing is unavailable, you don't get an xpc delegate", v9, 2u);
    }
  }

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_100034F1C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v164) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v164 & 0x7F) << v5;
        if ((v164 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      if ([a2 hasError])
      {
        v7 = 0;
      }

LABEL_14:
      if (([a2 hasError] & 1) != 0 || (v7 & 7) == 4)
      {
        break;
      }

      switch((v7 >> 3))
      {
        case 1u:
          v12 = PBReaderReadString();
          v13 = 72;
          goto LABEL_178;
        case 2u:
          v83 = 0;
          v84 = 0;
          v85 = 0;
          *(a1 + 200) |= 0x10u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v86 = [a2 position] + 1;
            if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
            {
              v88 = [a2 data];
              [v88 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v85 |= (v164 & 0x7F) << v83;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v83 += 7;
            v11 = v84++ >= 9;
            if (v11)
            {
              v89 = 0;
              goto LABEL_273;
            }
          }

          if ([a2 hasError])
          {
            v89 = 0;
          }

          else
          {
            v89 = v85;
          }

LABEL_273:
          v156 = 48;
          goto LABEL_282;
        case 3u:
          v12 = PBReaderReadData();
          v13 = 96;
          goto LABEL_178;
        case 4u:
          v12 = PBReaderReadString();
          v13 = 176;
          goto LABEL_178;
        case 5u:
          v12 = PBReaderReadData();
          v13 = 88;
          goto LABEL_178;
        case 6u:
          v12 = PBReaderReadData();
          v13 = 168;
          goto LABEL_178;
        case 7u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 200) |= 8u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v93 = [a2 position] + 1;
            if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
            {
              v95 = [a2 data];
              [v95 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v92 |= (v164 & 0x7F) << v90;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v11 = v91++ >= 9;
            if (v11)
            {
              v89 = 0;
              goto LABEL_277;
            }
          }

          if ([a2 hasError])
          {
            v89 = 0;
          }

          else
          {
            v89 = v92;
          }

LABEL_277:
          v156 = 40;
          goto LABEL_282;
        case 8u:
          v96 = 0;
          v97 = 0;
          v98 = 0;
          *(a1 + 200) |= 2u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v99 = [a2 position] + 1;
            if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
            {
              v101 = [a2 data];
              [v101 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v98 |= (v164 & 0x7F) << v96;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v96 += 7;
            v11 = v97++ >= 9;
            if (v11)
            {
              v89 = 0;
              goto LABEL_281;
            }
          }

          if ([a2 hasError])
          {
            v89 = 0;
          }

          else
          {
            v89 = v98;
          }

LABEL_281:
          v156 = 24;
LABEL_282:
          *(a1 + v156) = v89;
          goto LABEL_316;
        case 9u:
          *(a1 + 200) |= 1u;
          v164 = 0;
          v123 = [a2 position] + 8;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v164 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v159 = v164;
          v160 = 16;
          goto LABEL_326;
        case 0xAu:
          *(a1 + 200) |= 0x20u;
          v164 = 0;
          v121 = [a2 position] + 8;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v164 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v159 = v164;
          v160 = 56;
          goto LABEL_326;
        case 0xCu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 200) |= 0x10000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v164 & 0x7F) << v39;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_249;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v41;
          }

LABEL_249:
          v155 = 140;
          goto LABEL_315;
        case 0xDu:
          *(a1 + 200) |= 0x40u;
          v164 = 0;
          v71 = [a2 position] + 8;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 8, v72 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v164 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v159 = v164;
          v160 = 64;
          goto LABEL_326;
        case 0xEu:
          *(a1 + 200) |= 4u;
          v164 = 0;
          v57 = [a2 position] + 8;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 8, v58 <= objc_msgSend(a2, "length")))
          {
            v158 = [a2 data];
            [v158 getBytes:&v164 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v159 = v164;
          v160 = 32;
LABEL_326:
          *(a1 + v160) = v159;
          goto LABEL_316;
        case 0xFu:
          v12 = PBReaderReadString();
          v13 = 184;
          goto LABEL_178;
        case 0x10u:
          v102 = 0;
          v103 = 0;
          v104 = 0;
          *(a1 + 200) |= 0x400000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v105 = [a2 position] + 1;
            if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
            {
              v107 = [a2 data];
              [v107 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v104 |= (v164 & 0x7F) << v102;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v102 += 7;
            v11 = v103++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_286;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v104;
          }

LABEL_286:
          v155 = 164;
          goto LABEL_315;
        case 0x11u:
          v108 = 0;
          v109 = 0;
          v110 = 0;
          *(a1 + 200) |= 0x80000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v111 = [a2 position] + 1;
            if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
            {
              v113 = [a2 data];
              [v113 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v110 |= (v164 & 0x7F) << v108;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v108 += 7;
            v11 = v109++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_290;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v110;
          }

LABEL_290:
          v155 = 152;
          goto LABEL_315;
        case 0x12u:
          v131 = 0;
          v132 = 0;
          v133 = 0;
          *(a1 + 200) |= 0x100000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v134 = [a2 position] + 1;
            if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
            {
              v136 = [a2 data];
              [v136 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v133 |= (v164 & 0x7F) << v131;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v131 += 7;
            v11 = v132++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_302;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v133;
          }

LABEL_302:
          v155 = 156;
          goto LABEL_315;
        case 0x13u:
          v125 = 0;
          v126 = 0;
          v127 = 0;
          *(a1 + 200) |= 0x40000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v128 = [a2 position] + 1;
            if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
            {
              v130 = [a2 data];
              [v130 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v127 |= (v164 & 0x7F) << v125;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v125 += 7;
            v11 = v126++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_298;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v127;
          }

LABEL_298:
          v155 = 148;
          goto LABEL_315;
        case 0x14u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 200) |= 0x200000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v164 & 0x7F) << v14;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_233;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_233:
          v155 = 160;
          goto LABEL_315;
        case 0x15u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 200) |= 0x800000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v164 & 0x7F) << v59;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_261;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v61;
          }

LABEL_261:
          v155 = 192;
          goto LABEL_315;
        case 0x16u:
          v137 = 0;
          v138 = 0;
          v139 = 0;
          *(a1 + 200) |= 0x20000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v140 = [a2 position] + 1;
            if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
            {
              v142 = [a2 data];
              [v142 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v139 |= (v164 & 0x7F) << v137;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v137 += 7;
            v11 = v138++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_306;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v139;
          }

LABEL_306:
          v155 = 144;
          goto LABEL_315;
        case 0x17u:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 200) |= 0x1000000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v164 & 0x7F) << v21;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_237;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_237:
          v155 = 196;
          goto LABEL_315;
        case 0x18u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 200) |= 0x200u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v164 & 0x7F) << v51;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_257;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v53;
          }

LABEL_257:
          v155 = 112;
          goto LABEL_315;
        case 0x19u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 200) |= 0x80u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v164 & 0x7F) << v33;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_245;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v35;
          }

LABEL_245:
          v155 = 104;
          goto LABEL_315;
        case 0x1Au:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          *(a1 + 200) |= 0x100u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v76 = [a2 position] + 1;
            if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
            {
              v78 = [a2 data];
              [v78 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v75 |= (v164 & 0x7F) << v73;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v11 = v74++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_269;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v75;
          }

LABEL_269:
          v155 = 108;
          goto LABEL_315;
        case 0x1Bu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 200) |= 0x400u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v164 & 0x7F) << v27;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_241;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_241:
          v155 = 116;
          goto LABEL_315;
        case 0x1Cu:
          v149 = 0;
          v150 = 0;
          v151 = 0;
          *(a1 + 200) |= 0x2000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v152 = [a2 position] + 1;
            if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
            {
              v154 = [a2 data];
              [v154 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v151 |= (v164 & 0x7F) << v149;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v149 += 7;
            v11 = v150++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_314;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v151;
          }

LABEL_314:
          v155 = 128;
          goto LABEL_315;
        case 0x1Du:
          v143 = 0;
          v144 = 0;
          v145 = 0;
          *(a1 + 200) |= 0x800u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v146 = [a2 position] + 1;
            if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
            {
              v148 = [a2 data];
              [v148 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v145 |= (v164 & 0x7F) << v143;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v143 += 7;
            v11 = v144++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_310;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v145;
          }

LABEL_310:
          v155 = 120;
          goto LABEL_315;
        case 0x1Eu:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 200) |= 0x4000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v164 & 0x7F) << v45;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_253;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v47;
          }

LABEL_253:
          v155 = 132;
          goto LABEL_315;
        case 0x1Fu:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 200) |= 0x8000u;
          while (1)
          {
            LOBYTE(v164) = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v164 & 0x7F) << v65;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_265;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v67;
          }

LABEL_265:
          v155 = 136;
          goto LABEL_315;
        case 0x20u:
          v114 = 0;
          v115 = 0;
          v116 = 0;
          *(a1 + 200) |= 0x1000u;
          break;
        case 0x21u:
          v12 = PBReaderReadData();
          v13 = 80;
LABEL_178:
          v120 = *(a1 + v13);
          *(a1 + v13) = v12;

          goto LABEL_316;
        default:
          if (!*(a1 + 8))
          {
            v79 = objc_alloc_init(PBUnknownFields);
            v80 = *(a1 + 8);
            *(a1 + 8) = v79;

            v81 = *(a1 + 8);
          }

          result = PBUnknownFieldAdd();
          if (!result)
          {
            return result;
          }

          goto LABEL_316;
      }

      while (1)
      {
        LOBYTE(v164) = 0;
        v117 = [a2 position] + 1;
        if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
        {
          v119 = [a2 data];
          [v119 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v116 |= (v164 & 0x7F) << v114;
        if ((v164 & 0x80) == 0)
        {
          break;
        }

        v114 += 7;
        v11 = v115++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_294;
        }
      }

      v20 = [a2 hasError] ? 0 : v116;
LABEL_294:
      v155 = 124;
LABEL_315:
      *(a1 + v155) = v20;
LABEL_316:
      v157 = [a2 position];
    }

    while (v157 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100037E04(id a1)
{
  v4[0] = @"payload";
  v4[1] = @"type";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DB50;
  qword_10039DB50 = v2;
}

void sub_100038140(id a1)
{
  v4[0] = kSecAttrUUID;
  v4[1] = @"zone";
  v4[2] = @"ownr";
  v4[3] = @"type";
  v4[4] = @"deln";
  v4[5] = kSecValueData;
  v1 = [NSArray arrayWithObjects:v4 count:6];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DB60;
  qword_10039DB60 = v2;
}

void sub_10003C638(id a1)
{
  v4[0] = kSecAttrAccessGroup;
  v4[1] = kSecAttrSharingGroup;
  v4[2] = kSecAttrAccount;
  v4[3] = kSecAttrProtocol;
  v4[4] = kSecAttrServer;
  v4[5] = kSecAttrPort;
  v4[6] = kSecAttrPath;
  v4[7] = kSecAttrAuthenticationType;
  v4[8] = kSecValueData;
  v4[9] = kSecAttrCreationDate;
  v4[10] = kSecAttrModificationDate;
  v4[11] = kSecAttrComment;
  v4[12] = kSecAttrLabel;
  v4[13] = kSecAttrAccessible;
  v4[14] = kSecAttrSyncViewHint;
  v4[15] = kSecAttrSecurityDomain;
  v4[16] = kSecDataInetExtraNotes;
  v4[17] = kSecDataInetExtraHistory;
  v4[18] = kSecDataInetExtraClientDefined0;
  v4[19] = kSecDataInetExtraClientDefined1;
  v4[20] = kSecDataInetExtraClientDefined2;
  v4[21] = kSecDataInetExtraClientDefined3;
  v4[22] = kSecAttrCreator;
  v4[23] = kSecAttrType;
  v4[24] = kSecAttrDescription;
  v4[25] = kSecAttrAlias;
  v4[26] = kSecAttrIsInvisible;
  v4[27] = kSecAttrIsNegative;
  v4[28] = kSecAttrHasCustomIcon;
  v4[29] = kSecAttrScriptCode;
  v1 = [NSArray arrayWithObjects:v4 count:30];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DB70;
  qword_10039DB70 = v2;
}

id sub_10003C968(id a1, SecDbItem *a2, id *a3)
{
  v12 = 0;
  v5 = [(KCSharingOutgoingRow *)[KCSharingOutgoingEntry alloc] initWithOutgoingDatabaseItem:a2 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if (sub_100061E7C(v6))
  {
    v8 = [(KCSharingOutgoingRow *)[KCSharingOutgoingDeletion alloc] initWithOutgoingDatabaseItem:a2 error:a3];
    goto LABEL_5;
  }

  if (a3)
  {
    v11 = v7;
    v9 = 0;
    *a3 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_6:

  return v9;
}

id sub_10003CA8C(id a1, SecDbItem *a2, id *a3)
{
  v12 = 0;
  v5 = [(KCSharingIncomingRow *)[KCSharingIncomingEntry alloc] initWithIncomingDatabaseItem:a2 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if (sub_100061E7C(v6))
  {
    v8 = [(KCSharingIncomingRow *)[KCSharingIncomingDeletion alloc] initWithIncomingDatabaseItem:a2 error:a3];
    goto LABEL_5;
  }

  if (a3)
  {
    v11 = v7;
    v9 = 0;
    *a3 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_6:

  return v9;
}

id sub_10003CBB0(id a1, SecDbItem *a2, id *a3)
{
  v3 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:a2 error:a3];

  return v3;
}

uint64_t sub_10003CEC0(id *a1, uint64_t a2, void *a3)
{
  v6 = [[KCSharingRowMapper alloc] initWithModel:a1[6]];
  v7 = [(KCSharingRowMapper *)v6 columnNamesWithTableName:0];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [a1[6] databaseItemClass];
  v10 = *v9;
  if (a1[4])
  {
    v11 = @"AND zone = ?2";
  }

  else
  {
    v11 = &stru_100348050;
  }

  v12 = [NSString stringWithFormat:@"SELECT %1$@ FROM %2$@ WHERE uuid = ?1 %3$@", v8, *v9, v11];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003D040;
  v17[3] = &unk_100333F30;
  v13 = a1[4];
  v21 = a2;
  v18 = v13;
  v19 = v6;
  v20 = a1[5];
  v14 = v6;
  v15 = sub_100069BC0(a2, v12, a3, v17);

  return v15;
}

uint64_t sub_10003D040(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  if (!sub_100069E14(a2, 1, CKRecordNameZoneWideShare, a3))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@%@", @"group-", v6];
    v8 = sub_100069E14(a2, 2, v7, a3);

    if (!v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003D188;
  v12[3] = &unk_1003341D8;
  v13 = *(a1 + 40);
  v15 = a2;
  v14 = *(a1 + 48);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_10003D188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) mapResultRow:*(a1 + 48) startingAt:0 error:a3];
  if (v5)
  {
    v6 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v5 error:a3];
    v7 = v6;
    if (v6 && ([(KCSharingMirrorEntry *)v6 record], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = *(a1 + 40);
      v11 = [(KCSharingMirrorEntry *)v7 record];
      [v10 addObject:v11];

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_10003D374(id *a1, uint64_t a2, void *a3)
{
  v6 = [[KCSharingRowMapper alloc] initWithModel:a1[6]];
  v7 = [(KCSharingRowMapper *)v6 columnNamesWithTableName:0];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SELECT %@ FROM %@", v8, *[a1[6] databaseItemClass]);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003D4D8;
  v13[3] = &unk_1003345A0;
  v17 = a2;
  v14 = v6;
  v16 = a1[5];
  v15 = a1[4];
  v10 = v6;
  v11 = sub_100069BC0(a2, v9, a3, v13);

  return v11;
}

uint64_t sub_10003D4D8(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003D5B4;
  v9[3] = &unk_100334578;
  v10 = *(a1 + 32);
  v13 = a2;
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  v7 = sub_100069E74(v6, a2, a3, v9);

  return v7;
}

BOOL sub_10003D5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) mapResultRow:*(a1 + 56) startingAt:0 error:a3];
  if (v4)
  {
    v5 = (*(*(a1 + 48) + 16))();
    v6 = v5 != 0;
    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10003D8E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SELECT %@, COUNT(*) FROM %@ WHERE agrp = ? GROUP BY %@", @"type", *[*(a1 + 48) databaseItemClass], @"type");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003D9DC;
  v10[3] = &unk_100333E08;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v12 = a2;
  v11 = v7;
  v8 = sub_100069BC0(a2, v6, a3, v10);

  return v8;
}

uint64_t sub_10003D9DC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003DADC;
  v12[3] = &unk_100334200;
  v14 = a2;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_10003DADC(uint64_t a1)
{
  v2 = sqlite3_column_int64(*(a1 + 40), 0);
  v3 = sqlite3_column_int64(*(a1 + 40), 1);
  v4 = [NSNumber numberWithLongLong:v2];
  v5 = [NSNumber numberWithLongLong:v3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];

  return 1;
}

void sub_10003DE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003DEBC(void *a1, CFStringRef **a2, _BYTE *a3)
{
  result = sub_1000171B0(a2, a1[6], (*(a1[4] + 8) + 24), &stru_100334528);
  if ((result & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_10003E134(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 40);

  return sub_100069E74(v9, a2, a3, &stru_1003344C8);
}

uint64_t sub_10003E510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003E528(void *a1)
{
  v2 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003E5DC;
  v6[3] = &unk_100333DB8;
  v6[4] = v2;
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 withConnection:v6 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

uint64_t sub_10003E5DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003E670;
  v5[3] = &unk_100333D90;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  v3 = sub_10006A0DC(a2, a3, v5);
  if (v3)
  {
    sub_10017E868();
  }

  return v3;
}

uint64_t sub_10003E670(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v37 = 0;
  v6 = [v4 wipeLocalPrivateKeysInTransaction:v5 error:&v37];
  v11 = v37;
  if ((v6 & 1) == 0)
  {
    v32 = @"Wiping private keys";
LABEL_7:
    sub_100061EE8(a2, 32, v11, v32, v7, v8, v9, v10, v34);
    v31 = 0;
    goto LABEL_12;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v36 = v11;
  v14 = [v12 wipeLocalPasswordsInTransaction:v13 error:&v36];
  v15 = v36;

  if ((v14 & 1) == 0)
  {
    sub_100061EE8(a2, 32, v15, @"Wiping passwords", v16, v17, v18, v19, v34);
    v31 = 0;
    v11 = v15;
    goto LABEL_12;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v35 = v15;
  v22 = [v20 resetSyncTablesInTransaction:v21 error:&v35];
  v11 = v35;

  if ((v22 & 1) == 0)
  {
    v32 = @"Resetting sync tables";
    goto LABEL_7;
  }

  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v34 = v11;
  v25 = [v23 resetMetadataInTransaction:v24 error:&v34];
  v26 = v34;

  if (v25)
  {
    v31 = 1;
  }

  else
  {
    sub_100061EE8(a2, 32, v26, @"Resetting metadata", v27, v28, v29, v30, v34);
    v31 = 0;
  }

  v11 = v26;
LABEL_12:

  return v31;
}

void sub_10003E8F4(void *a1)
{
  v2 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003E9A8;
  v6[3] = &unk_100333DB8;
  v6[4] = v2;
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 withConnection:v6 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

uint64_t sub_10003E9A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003EA24;
  v4[3] = &unk_100333D90;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return sub_10006A0DC(a2, a3, v4);
}

uint64_t sub_10003EA24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v23 = 0;
  v6 = [v4 resetSyncTablesInTransaction:v5 error:&v23];
  v11 = v23;
  if (v6)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v22 = v11;
    v14 = [v12 resetMetadataInTransaction:v13 error:&v22];
    v15 = v22;

    if (v14)
    {
      v20 = 1;
    }

    else
    {
      sub_100061EE8(a2, 31, v15, @"Resetting metadata", v16, v17, v18, v19, v22);
      v20 = 0;
    }

    v11 = v15;
  }

  else
  {
    sub_100061EE8(a2, 31, v11, @"Resetting sync tables", v7, v8, v9, v10, v22);
    v20 = 0;
  }

  return v20;
}

uint64_t sub_10003EC18(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if ((sub_100069E14(a2, 1, v7, a3) & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [*(a1 + 40) zoneID];
  v9 = [v8 ownerName];
  if (!sub_100069E14(a2, 2, v9, a3))
  {
LABEL_7:

LABEL_8:
    return 0;
  }

  v10 = [*(a1 + 40) zoneID];
  v11 = [v10 zoneName];
  if (!sub_100069E14(a2, 3, v11, a3))
  {

    goto LABEL_7;
  }

  v12 = [*(a1 + 40) recordName];
  v16 = sub_100069E14(a2, 4, v12, a3);

  if (!v16)
  {
    return 0;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003EDE8;
  v17[3] = &unk_100334200;
  v19 = a2;
  v13 = *(a1 + 56);
  v18 = *(a1 + 48);
  v14 = sub_100069E74(v13, a2, a3, v17);

  return v14;
}

BOOL sub_10003EDE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sqlite3_column_int64(*(a1 + 40), 0);
  v6 = objc_opt_class();
  v7 = sub_10003EE74(v6, v5, a3);
  if (v7)
  {
    v8 = [*(a1 + 32) itemsToDelete];
    [v8 addObject:v7];
  }

  return v7 != 0;
}

id sub_10003EE74(void *a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v5 = [a1 databaseItemClass];
  v6 = sub_10001A690(v5, &__NSDictionary0__struct, dword_10039E2F8, &v11);
  v7 = v6;
  if (v6 && (sub_10001BF68(v6, a2, &v11) & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v9 = v11;
    if (a3)
    {
      v8 = 0;
      *a3 = v11;
      v11 = 0;
    }

    else
    {
      if (v11)
      {
        v11 = 0;
        CFRelease(v9);
      }

      v8 = 0;
    }
  }

  return v8;
}

uint64_t sub_10003EFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F080;
  v8[3] = &unk_100333FD0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = a2;
  v6 = sub_10006A0DC(a2, a3, v8);

  return v6;
}

void sub_10003F40C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemsToDelete];
  [v3 addObject:a2];
}

void sub_10003F460(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemsToDelete];
  [v3 addObject:a2];
}

void sub_10003F4B4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemsToDelete];
  [v3 addObject:a2];
}

void sub_10003F508(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemsToDelete];
  [v3 addObject:a2];
}

uint64_t sub_10003F608(uint64_t a1, uint64_t a2, void *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F6A8;
  v8[3] = &unk_100333FD0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = a2;
  v6 = sub_10006A0DC(a2, a3, v8);

  return v6;
}

uint64_t sub_10003F78C(uint64_t a1, uint64_t a2, void *a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003F850;
  v9[3] = &unk_100334020;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v12 = a2;
  v11 = *(a1 + 48);
  v7 = sub_10006A0DC(a2, a3, v9);

  return v7;
}

id sub_10003F850(uint64_t a1, void *a2)
{
  v46 = [*(a1 + 32) plan];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v45 = *v58;
    while (2)
    {
      v6 = 0;
      v7 = v5;
      do
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v57 + 1) + 8 * v6);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v51 = sub_10003FB78;
        v52 = &unk_100334020;
        v53 = *(a1 + 32);
        v54 = v8;
        v56 = *(a1 + 56);
        v55 = v46;
        v9 = v50;
        v10 = objc_autoreleasePoolPush();
        v61 = 0;
        v11 = (v51)(v9, &v61);
        v12 = v61;
        objc_autoreleasePoolPop(v10);
        v13 = v7;
        if ((v11 & 1) == 0)
        {
          v14 = v12;
          v13 = v12;
        }

        v5 = v13;
        if (!v11)
        {

          v19 = @"Moving saved records to mirror";
          goto LABEL_20;
        }

        v6 = v6 + 1;
        v7 = v5;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v20 = v5;

  v21 = *(a1 + 56);
  v22 = [*(a1 + 32) accessGroups];
  v49 = v20;
  v23 = [v46 applyInTransaction:v21 withAccessGroups:v22 error:&v49];
  v5 = v49;

  if (v23)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    v26 = *(a1 + 56);
    v48 = 0;
    v27 = [v24 dropDeletionsForRecordIDs:v25 inTransaction:v26 error:&v48];
    v32 = v48;
    if (v27)
    {
      v33 = *(a1 + 32);
      v34 = *(a1 + 56);
      v47 = 0;
      v35 = [v33 resolveConflictingPrimaryKeysInTransaction:v34 error:&v47];
      v40 = v47;
      if ((v35 & 1) == 0)
      {
        sub_100061EE8(a2, 30, v40, @"Resolving primary key conflicts", v36, v37, v38, v39, v42);
      }
    }

    else
    {
      sub_100061EE8(a2, 30, v32, @"Dropping entries for deleted records from mirror", v28, v29, v30, v31, v42);
      v35 = 0;
    }
  }

  else
  {
    v19 = @"Moving entries for saved records to mirror";
LABEL_20:
    sub_100061EE8(a2, 30, v5, v19, v15, v16, v17, v18, v42);
    v35 = 0;
  }

  return v35;
}

BOOL sub_10003FB78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) recordID];
  v6 = [v4 fetchOutgoingDatabaseItemWithRecordID:v5 inTransaction:*(a1 + 56) error:a2];

  if (v6)
  {
    v7 = [(KCSharingOutgoingRow *)[KCSharingOutgoingEntry alloc] initWithOutgoingDatabaseItem:v6 error:a2];
    v8 = v7;
    v9 = v7 != 0;
    if (!v7)
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = [(KCSharingOutgoingEntry *)v7 type];
    if ((v10 - 1) >= 2)
    {
      if (v10)
      {
        if (v10 == 3)
        {
          v11 = [*(a1 + 32) accessGroups];
          v12 = [(KCSharingOutgoingEntry *)v8 shareWithAccessGroups:v11 error:0];
LABEL_9:
          v13 = v12;

          if ([v13 isFullyDecoded])
          {
            v14 = 0;
          }

          else
          {
            v14 = 2;
          }

          goto LABEL_15;
        }

        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

LABEL_15:
      v15 = [[KCSharingMirrorEntry alloc] initWithSavedRecord:*(a1 + 40) forOutgoingEntry:v8 flags:v14];
      v16 = [*(a1 + 48) insertIntoMirror];
      [v16 addObject:v15];

      v17 = [*(a1 + 48) itemsToDelete];
      [v17 addObject:v6];

      goto LABEL_16;
    }

    v11 = [*(a1 + 32) accessGroups];
    v12 = [(KCSharingOutgoingEntry *)v8 remoteItemWithAccessGroups:v11 error:0];
    goto LABEL_9;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

uint64_t sub_100040068(uint64_t a1, sqlite3_stmt *a2, void *a3, void *a4)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = *v22;
    v8 = 1;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        v10 = v8;
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [*(a1 + 32) keyset];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v11 ownerName];
        if (!sub_100069E14(a2, v10, v14, a4))
        {
          goto LABEL_14;
        }

        v15 = [v11 zoneName];
        if ((sub_100069E14(a2, (v10 + 1), v15, a4) & 1) == 0)
        {

LABEL_14:
LABEL_15:

          v8 = 0xFFFFFFFFLL;
          goto LABEL_16;
        }

        v16 = sub_100069E14(a2, (v10 + 2), v13, a4);

        if ((v16 & 1) == 0)
        {
          goto LABEL_15;
        }

        v8 = (v10 + 3);
      }

      v8 = (v10 + 3);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_16:

  return v8;
}

BOOL sub_100040254(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v7 = [*(a1 + 32) mapResultRow:a2 startingAt:0 error:a4];
  if (v7)
  {
    v37 = 0;
    v8 = [(KCSharingOutgoingRow *)[KCSharingOutgoingEntry alloc] initWithOutgoingDatabaseItem:v7 error:&v37];
    v9 = v37;
    v10 = v9;
    if (v8)
    {
      v11 = [(KCSharingOutgoingEntry *)v8 record];
      v12 = [v11 size];

      v13 = *(a1 + 72);
      v14 = *(*(a1 + 64) + 8);
      v15 = &v12[*(v14 + 24)];
      if ((v13 & 0x8000000000000000) != 0 || v15 <= v13)
      {
        *(v14 + 24) = v15;
        v26 = *(a1 + 56);
        v27 = [(KCSharingOutgoingEntry *)v8 record];
        [v26 addObject:v27];

        v28 = [(KCSharingOutgoingEntry *)v8 record];
        v29 = [v28 recordID];
        v30 = [v29 recordName];
        v31 = *(a1 + 48);
        v32 = [(KCSharingOutgoingEntry *)v8 record];
        v33 = [v32 recordID];
        v34 = [v33 zoneID];
        [v31 setObject:v30 forKeyedSubscript:v34];

        v16 = 1;
      }

      else
      {
        v16 = 1;
        *a3 = 1;
      }
    }

    else if (sub_100061E7C(v9))
    {
      v17 = [(KCSharingOutgoingRow *)[KCSharingOutgoingDeletion alloc] initWithOutgoingDatabaseItem:v7 error:a4];
      v18 = v17;
      v16 = v17 != 0;
      if (v17)
      {
        v19 = *(a1 + 40);
        v20 = [(KCSharingOutgoingDeletion *)v17 recordID];
        [v19 addObject:v20];

        v21 = [(KCSharingOutgoingDeletion *)v18 recordID];
        v22 = [v21 recordName];
        v23 = *(a1 + 48);
        v24 = [(KCSharingOutgoingDeletion *)v18 recordID];
        v25 = [v24 zoneID];
        [v23 setObject:v22 forKeyedSubscript:v25];
      }
    }

    else if (a4)
    {
      v35 = v10;
      v16 = 0;
      *a4 = v10;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1000404D4(uint64_t a1, uint64_t a2, void *a3)
{
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 1;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = sub_10003E510;
  v99 = sub_10003E520;
  v100 = 0;
  v6 = [*(a1 + 32) fetchBehavior];
  if (v6 == 1)
  {
    v23 = [*(a1 + 32) keyset];
    v22 = [v23 allKeys];

    v24 = [v22 count];
    v25 = *(a1 + 32);
    if (v24)
    {
      v26 = [v25 keyset];
      v27 = [v26 allKeys];
      v28 = sqlite3_limit(*(a2 + 64), 9, -1);
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v75 = sub_100040DDC;
      v76 = &unk_100334420;
      v77 = *(a1 + 32);
      v78 = *(a1 + 40);
      v82 = &v101;
      v29 = *(a1 + 64);
      v84 = *(a1 + 72);
      v85 = a2;
      v83 = &v95;
      v30 = v29;
      v31 = *(a1 + 56);
      v79 = *(a1 + 48);
      v80 = v30;
      v32 = v31;
      v33 = *(a1 + 80);
      v81 = v32;
      v86 = v33;
      v34 = v27;
      v35 = v74;
      v36 = [v34 count];
      v37 = (v28 & ~(v28 >> 31)) - 2;
      if (v37 >= 3 && v36)
      {
        v105 = 0;
        v38 = [v34 count];
        if (v38 >= v37 / 3)
        {
          v39 = v37 / 3;
        }

        else
        {
          v39 = v38;
        }

        v40 = [v34 subarrayWithRange:{0, v39}];
        v75(v35, v40, &v105);
      }

      v41 = v77;
    }

    else
    {
      v42 = [v25 databaseScope];
      if (v42 == 2)
      {
        v49 = [*(a1 + 40) columnNamesWithTableName:@"o"];
        v50 = [v49 componentsJoinedByString:{@", "}];
        v41 = [NSString stringWithFormat:@"SELECT %1$@                                   FROM sharingOutgoingQueue o                                   WHERE (o.agrp, o.ownr) = (?1, ?2)                                   ORDER BY o.zone, o.uuid                                   LIMIT %2$ld", v50, *(a1 + 72)];

        v51 = v96;
        v52 = v96[5];
        v93 = a2;
        v94 = v52;
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_100040B94;
        v91[3] = &unk_100333FA8;
        v53 = *(a1 + 56);
        v91[4] = *(a1 + 48);
        v92 = v53;
        v54 = sub_100069BC0(a2, v41, &v94, v91);
        objc_storeStrong(v51 + 5, v94);
        *(v102 + 24) = v54;
        v48 = v92;
      }

      else
      {
        if (v42 != 3)
        {
          v57 = +[NSAssertionHandler currentHandler];
          v58 = *(a1 + 80);
          v59 = *(a1 + 48);
          [*(a1 + 32) databaseScope];
          v60 = CKDatabaseScopeString();
          [v57 handleFailureInMethod:v58 object:v59 file:@"KCSharingStore.m" lineNumber:2487 description:{@"Can't fetch initial batch of outgoing changes in all zones for database with %@ scope", v60}];

          goto LABEL_26;
        }

        v43 = [*(a1 + 40) columnNamesWithTableName:@"o"];
        v44 = [v43 componentsJoinedByString:{@", "}];
        v41 = [NSString stringWithFormat:@"SELECT %1$@                                   FROM sharingOutgoingQueue o                                   WHERE o.agrp = ?1 AND                                         o.ownr <> ?2                                   ORDER BY o.ownr, o.zone, o.uuid                                   LIMIT %2$ld", v44, *(a1 + 72)];

        v45 = v96;
        v90 = v96[5];
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_100040CB8;
        v87[3] = &unk_100333FA8;
        v46 = *(a1 + 56);
        v87[4] = *(a1 + 48);
        v89 = a2;
        v88 = v46;
        v47 = sub_100069BC0(a2, v41, &v90, v87);
        objc_storeStrong(v45 + 5, v90);
        *(v102 + 24) = v47;
        v48 = v88;
      }
    }
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_25;
    }

    v7 = [*(a1 + 32) keyset];
    v8 = [v7 allKeys];
    v9 = sqlite3_limit(*(a2 + 64), 9, -1);
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v62 = sub_100041204;
    v63 = &unk_100334420;
    v64 = *(a1 + 32);
    v65 = *(a1 + 40);
    v69 = &v101;
    v10 = *(a1 + 64);
    v71 = *(a1 + 72);
    v72 = a2;
    v70 = &v95;
    v11 = v10;
    v12 = *(a1 + 56);
    v66 = *(a1 + 48);
    v67 = v11;
    v13 = v12;
    v14 = *(a1 + 80);
    v68 = v13;
    v73 = v14;
    v15 = v8;
    v16 = v61;
    v17 = [v15 count];
    v18 = (v9 & ~(v9 >> 31)) - 2;
    if (v18 >= 3 && v17)
    {
      v105 = 0;
      v19 = [v15 count];
      if (v19 >= v18 / 3)
      {
        v20 = v18 / 3;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v15 subarrayWithRange:{0, v20}];
      v62(v16, v21, &v105);
    }

    v22 = v64;
  }

LABEL_25:
  if (v102[3])
  {
LABEL_26:
    v55 = 1;
    goto LABEL_29;
  }

  v55 = 0;
  if (a3)
  {
    *a3 = v96[5];
  }

LABEL_29:
  _Block_object_dispose(&v95, 8);

  _Block_object_dispose(&v101, 8);
  return v55;
}

void sub_100040B5C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100040B94(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 2, CKCurrentUserDefaultName, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100041BC8;
  v12[3] = &unk_100333F80;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = a2;
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_100040CB8(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 2, CKCurrentUserDefaultName, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100041BAC;
  v12[3] = &unk_100333F80;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = a2;
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

void sub_100040DDC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) databaseScope];
  if (v6 == 3)
  {
    v25 = [v5 count];
    for (i = [NSMutableArray arrayWithCapacity:v25];
    {
      [i addObject:{@"(?, ?, ?)"}];
    }

    v27 = [i copy];

    v28 = [v27 componentsJoinedByString:{@", "}];
    v29 = [*(a1 + 40) columnNamesWithTableName:@"o"];
    v30 = [v29 componentsJoinedByString:{@", "}];
    v13 = [NSString stringWithFormat:@"WITH keyset(ownr, zone, uuid) AS (VALUES %1$@)                                   SELECT %2$@                                   FROM sharingOutgoingQueue o                                   LEFT JOIN keyset k ON (k.ownr, k.zone) = (o.ownr, o.zone)                                   WHERE o.agrp = ? AND                                         o.ownr <> ? AND                                         (k.uuid IS NULL OR o.uuid > k.uuid)                                   ORDER BY o.ownr, o.zone, o.uuid                                   LIMIT %3$ld", v28, v30, *(a1 + 88)];

    v31 = *(*(a1 + 80) + 8);
    v32 = *(v31 + 40);
    v15 = (v31 + 40);
    v33 = *(a1 + 96);
    v46 = v32;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100041A30;
    v42[3] = &unk_1003343F8;
    v18 = &v44;
    v44 = *(a1 + 56);
    v19 = v43;
    v34 = v5;
    v35 = *(a1 + 48);
    v43[0] = v34;
    v43[1] = v35;
    v45[1] = *(a1 + 96);
    v22 = v45;
    v45[0] = *(a1 + 64);
    v23 = sub_100069BC0(v33, v13, &v46, v42);
    v24 = v46;
LABEL_9:
    v36 = v24;
    v37 = *v15;
    *v15 = v36;

    *(*(*(a1 + 72) + 8) + 24) = v23;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6 == 2)
  {
    v7 = [v5 count];
    for (j = [NSMutableArray arrayWithCapacity:v7];
    {
      [j addObject:{@"(?, ?, ?)"}];
    }

    v9 = [j copy];

    v10 = [v9 componentsJoinedByString:{@", "}];
    v11 = [*(a1 + 40) columnNamesWithTableName:@"o"];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v13 = [NSString stringWithFormat:@"WITH keyset(ownr, zone, uuid) AS (VALUES %1$@)                                   SELECT %2$@                                   FROM sharingOutgoingQueue o                                   LEFT JOIN keyset k ON (k.ownr, k.zone) = (o.ownr, o.zone)                                   WHERE (o.agrp, o.ownr) = (?, ?) AND                                         (k.uuid IS NULL OR o.uuid > k.uuid)                                   ORDER BY o.zone, o.uuid                                   LIMIT %3$ld", v10, v12, *(a1 + 88)];

    v14 = *(*(a1 + 80) + 8);
    v16 = *(v14 + 40);
    v15 = (v14 + 40);
    v17 = *(a1 + 96);
    v51 = v16;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000418EC;
    v47[3] = &unk_1003343F8;
    v18 = &v49;
    v49 = *(a1 + 56);
    v19 = v48;
    v20 = v5;
    v21 = *(a1 + 48);
    v48[0] = v20;
    v48[1] = v21;
    v50[1] = *(a1 + 96);
    v22 = v50;
    v50[0] = *(a1 + 64);
    v23 = sub_100069BC0(v17, v13, &v51, v47);
    v24 = v51;
    goto LABEL_9;
  }

  v38 = +[NSAssertionHandler currentHandler];
  v39 = *(a1 + 104);
  v40 = *(a1 + 48);
  [*(a1 + 32) databaseScope];
  v41 = CKDatabaseScopeString();
  [v38 handleFailureInMethod:v39 object:v40 file:@"KCSharingStore.m" lineNumber:2571 description:{@"Can't fetch next batch of outgoing changes in all zones for database with %@ scope", v41}];

LABEL_12:
  *a3 = 1;
LABEL_13:
}

void sub_100041204(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) databaseScope];
  if (v6 == 3)
  {
    v25 = [v5 count];
    for (i = [NSMutableArray arrayWithCapacity:v25];
    {
      [i addObject:{@"(?, ?, ?)"}];
    }

    v27 = [i copy];

    v28 = [v27 componentsJoinedByString:{@", "}];
    v29 = [*(a1 + 40) columnNamesWithTableName:@"o"];
    v30 = [v29 componentsJoinedByString:{@", "}];
    v13 = [NSString stringWithFormat:@"WITH keyset(ownr, zone, uuid) AS (VALUES %1$@)                                   SELECT %2$@                                   FROM sharingOutgoingQueue o                                   JOIN keyset k ON (k.ownr, k.zone) = (o.ownr, o.zone) AND                                                    o.uuid > k.uuid                                   WHERE o.agrp = ? AND                                         o.ownr <> ?                                   ORDER BY o.ownr, o.zone, o.uuid                                   LIMIT %3$ld", v28, v30, *(a1 + 88)];

    v31 = *(*(a1 + 80) + 8);
    v32 = *(v31 + 40);
    v15 = (v31 + 40);
    v33 = *(a1 + 96);
    v46 = v32;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100041770;
    v42[3] = &unk_1003343F8;
    v18 = &v44;
    v44 = *(a1 + 56);
    v19 = v43;
    v34 = v5;
    v35 = *(a1 + 48);
    v43[0] = v34;
    v43[1] = v35;
    v45[1] = *(a1 + 96);
    v22 = v45;
    v45[0] = *(a1 + 64);
    v23 = sub_100069BC0(v33, v13, &v46, v42);
    v24 = v46;
LABEL_9:
    v36 = v24;
    v37 = *v15;
    *v15 = v36;

    *(*(*(a1 + 72) + 8) + 24) = v23;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6 == 2)
  {
    v7 = [v5 count];
    for (j = [NSMutableArray arrayWithCapacity:v7];
    {
      [j addObject:{@"(?, ?, ?)"}];
    }

    v9 = [j copy];

    v10 = [v9 componentsJoinedByString:{@", "}];
    v11 = [*(a1 + 40) columnNamesWithTableName:@"o"];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v13 = [NSString stringWithFormat:@"WITH keyset(ownr, zone, uuid) AS (VALUES %1$@)                                   SELECT %2$@                                   FROM sharingOutgoingQueue o                                   JOIN keyset k ON (k.ownr, k.zone) = (o.ownr, o.zone) AND                                                    o.uuid > k.uuid                                   WHERE (o.agrp, o.ownr) = (?, ?)                                   ORDER BY o.zone, o.uuid                                   LIMIT %3$ld", v10, v12, *(a1 + 88)];

    v14 = *(*(a1 + 80) + 8);
    v16 = *(v14 + 40);
    v15 = (v14 + 40);
    v17 = *(a1 + 96);
    v51 = v16;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10004162C;
    v47[3] = &unk_1003343F8;
    v18 = &v49;
    v49 = *(a1 + 56);
    v19 = v48;
    v20 = v5;
    v21 = *(a1 + 48);
    v48[0] = v20;
    v48[1] = v21;
    v50[1] = *(a1 + 96);
    v22 = v50;
    v50[0] = *(a1 + 64);
    v23 = sub_100069BC0(v17, v13, &v51, v47);
    v24 = v51;
    goto LABEL_9;
  }

  v38 = +[NSAssertionHandler currentHandler];
  v39 = *(a1 + 104);
  v40 = *(a1 + 48);
  [*(a1 + 32) databaseScope];
  v41 = CKDatabaseScopeString();
  [v38 handleFailureInMethod:v39 object:v40 file:@"KCSharingStore.m" lineNumber:2651 description:{@"Can't fetch batch of outgoing changes in desired zones for database with %@ scope", v41}];

LABEL_12:
  *a3 = 1;
LABEL_13:
}

uint64_t sub_10004162C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = (*(*(a1 + 48) + 16))();
  if ((v7 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = [*(a1 + 40) accessGroups];
  v10 = [v9 entryAccessGroup];
  if (!sub_100069E14(a2, v8, v10, a3))
  {

    return 0;
  }

  v11 = sub_100069E14(a2, (v8 + 1), CKCurrentUserDefaultName, a3);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000418D0;
  v15[3] = &unk_100333F80;
  v12 = *(a1 + 64);
  v16 = *(a1 + 56);
  v17 = a2;
  v13 = sub_100069E74(v12, a2, a3, v15);

  return v13;
}

uint64_t sub_100041770(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = (*(*(a1 + 48) + 16))();
  if ((v7 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = [*(a1 + 40) accessGroups];
  v10 = [v9 entryAccessGroup];
  if (!sub_100069E14(a2, v8, v10, a3))
  {

    return 0;
  }

  v11 = sub_100069E14(a2, (v8 + 1), CKCurrentUserDefaultName, a3);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000418B4;
  v15[3] = &unk_100333F80;
  v12 = *(a1 + 64);
  v16 = *(a1 + 56);
  v17 = a2;
  v13 = sub_100069E74(v12, a2, a3, v15);

  return v13;
}

uint64_t sub_1000418EC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = (*(*(a1 + 48) + 16))();
  if ((v7 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = [*(a1 + 40) accessGroups];
  v10 = [v9 entryAccessGroup];
  if (!sub_100069E14(a2, v8, v10, a3))
  {

    return 0;
  }

  v11 = sub_100069E14(a2, (v8 + 1), CKCurrentUserDefaultName, a3);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100041B90;
  v15[3] = &unk_100333F80;
  v12 = *(a1 + 64);
  v16 = *(a1 + 56);
  v17 = a2;
  v13 = sub_100069E74(v12, a2, a3, v15);

  return v13;
}

uint64_t sub_100041A30(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = (*(*(a1 + 48) + 16))();
  if ((v7 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = [*(a1 + 40) accessGroups];
  v10 = [v9 entryAccessGroup];
  if (!sub_100069E14(a2, v8, v10, a3))
  {

    return 0;
  }

  v11 = sub_100069E14(a2, (v8 + 1), CKCurrentUserDefaultName, a3);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100041B74;
  v15[3] = &unk_100333F80;
  v12 = *(a1 + 64);
  v16 = *(a1 + 56);
  v17 = a2;
  v13 = sub_100069E74(v12, a2, a3, v15);

  return v13;
}

void sub_100041D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100041D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) fetchOutgoingDatabaseItemWithRecordID:*(a1 + 40) inTransaction:a2 error:a3];
  if (v5)
  {
    v6 = [(KCSharingOutgoingRow *)[KCSharingOutgoingEntry alloc] initWithOutgoingDatabaseItem:v5 error:a3];
    v7 = v6;
    v8 = v6 != 0;
    if (v6)
    {
      v9 = [(KCSharingOutgoingEntry *)v6 record];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100041ED0(void *a1, uint64_t a2, void *a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041F84;
  v9[3] = &unk_100333E08;
  v5 = a1[4];
  v6 = a1[6];
  v9[4] = a1[5];
  v11 = a2;
  v10 = v6;
  v7 = sub_100069BC0(a2, v5, a3, v9);

  return v7;
}

uint64_t sub_100041F84(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3) || !sub_100069E14(a2, 2, CKCurrentUserDefaultName, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 3, CKRecordNameZoneWideShare, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000420CC;
  v12[3] = &unk_100334200;
  v14 = a2;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_1000420CC(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 40), 0)];
  v3 = [[CKRecordZoneID alloc] initWithZoneName:v2 ownerName:CKCurrentUserDefaultName];
  [*(a1 + 32) addObject:v3];

  return 1;
}

uint64_t sub_10004225C(void *a1, uint64_t a2, void *a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100042310;
  v9[3] = &unk_100333E08;
  v5 = a1[4];
  v6 = a1[6];
  v9[4] = a1[5];
  v11 = a2;
  v10 = v6;
  v7 = sub_100069BC0(a2, v5, a3, v9);

  return v7;
}

uint64_t sub_100042310(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3) || !sub_100069E14(a2, 2, CKCurrentUserDefaultName, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 3, CKRecordNameZoneWideShare, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100042458;
  v12[3] = &unk_100334200;
  v14 = a2;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_100042458(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 40), 0)];
  v3 = [[CKRecordZoneID alloc] initWithZoneName:v2 ownerName:CKCurrentUserDefaultName];
  v4 = [[CKRecordZone alloc] initWithZoneID:v3];
  [v4 setCapabilities:8];
  [v4 setEncryptionScope:1];
  [*(a1 + 32) addObject:v4];

  return 1;
}

void sub_1000426F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100042718(void *a1, void *a2, _BYTE *a3)
{
  v26 = a2;
  v4 = [v26 count];
  for (i = [NSMutableArray arrayWithCapacity:v4];
  {
    [i addObject:{@"(?, ?, ?)"}];
  }

  v6 = [i copy];

  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [NSString stringWithFormat:@"WITH recordIDs(ownr, zone, uuid) AS (VALUES %1$@)               DELETE FROM sharingOutgoingQueue               WHERE rowid IN(                  SELECT o.rowid FROM sharingOutgoingQueue o                   JOIN recordIDs d ON (d.ownr, d.zone, d.uuid) = (o.ownr, o.zone, o.uuid)                   WHERE o.agrp = ?              )", v7];

  v9 = [v26 count];
  for (j = [NSMutableArray arrayWithCapacity:v9];
  {
    [j addObject:{@"(?, ?, ?)"}];
  }

  v11 = [j copy];

  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [NSString stringWithFormat:@"WITH recordIDs(ownr, zone, uuid) AS (VALUES %1$@)               DELETE FROM sharingMirror               WHERE rowid IN(                  SELECT m.rowid FROM sharingMirror m                   JOIN recordIDs d ON (d.ownr, d.zone, d.uuid) = (m.ownr, m.zone, m.uuid)                   WHERE m.agrp = ?              )", v12];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = v8;
  v36[0] = v8;
  v36[1] = v13;
  v14 = [NSArray arrayWithObjects:v36 count:2];
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v33 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v32 + 1) + 8 * v18);
      v20 = a1[7];
      v21 = *(a1[6] + 8);
      obj = *(v21 + 40);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100042A54;
      v27[3] = &unk_100333E08;
      v22 = v26;
      v23 = a1[4];
      v28 = v22;
      v29 = v23;
      v30 = a1[7];
      LOBYTE(v19) = sub_100069BC0(v20, v19, &obj, v27);
      objc_storeStrong((v21 + 40), obj);
      *(*(a1[5] + 8) + 24) = v19;
      LODWORD(v19) = *(*(a1[5] + 8) + 24);

      if (v19 != 1)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v16)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

uint64_t sub_100042A54(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a1;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v31)
  {
    v32 = *v34;
    v6 = 1;
    v28 = v5;
    while (2)
    {
      v7 = 0;
      do
      {
        v8 = v6;
        if (*v34 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v7);
        v10 = [v9 zoneID];
        v11 = [v10 ownerName];
        if (!sub_100069E14(a2, v8, v11, a3))
        {
          goto LABEL_16;
        }

        v12 = [v9 zoneID];
        v13 = [v12 zoneName];
        v14 = v8 + 1;
        if (!sub_100069E14(a2, (v8 + 1), v13, a3))
        {

LABEL_16:
LABEL_17:

          return 0;
        }

        v30 = v8;
        v15 = [v9 recordName];
        v16 = a3;
        v17 = v15;
        v18 = v8 + 2;
        v19 = a2;
        v20 = a2;
        v21 = v16;
        v22 = sub_100069E14(v20, (v14 + 1), v17, v16);

        if (!v22)
        {
          goto LABEL_17;
        }

        v7 = v7 + 1;
        v6 = (v18 + 1);
        a3 = v21;
        a2 = v19;
      }

      while (v31 != v7);
      v6 = (v30 + 3);
      v5 = v28;
      v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 1;
  }

  v23 = [*(v5 + 40) accessGroups];
  v24 = [v23 entryAccessGroup];
  v25 = a3;
  v26 = sub_100069E14(a2, v6, v24, a3);

  if (v26)
  {
    return sub_100069E74(*(v5 + 48), a2, v25, &stru_100334330);
  }

  else
  {
    return 0;
  }
}

void sub_100042EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100042EE0(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if ((sub_100069E14(a2, 1, v7, a3) & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [*(a1 + 40) zoneID];
  v9 = [v8 ownerName];
  if (!sub_100069E14(a2, 2, v9, a3))
  {
LABEL_7:

LABEL_8:
    return 0;
  }

  v10 = [*(a1 + 40) zoneID];
  v11 = [v10 zoneName];
  if (!sub_100069E14(a2, 3, v11, a3))
  {

    goto LABEL_7;
  }

  v12 = [*(a1 + 40) recordName];
  v17 = sub_100069E14(a2, 4, v12, a3);

  if (!v17)
  {
    return 0;
  }

  v13 = *(a1 + 64);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000430C0;
  v19[3] = &unk_1003342E8;
  v18 = *(a1 + 48);
  v14 = v18;
  v20 = v18;
  v21 = a2;
  v15 = sub_100069E74(v13, a2, a3, v19);

  return v15;
}

BOOL sub_1000430C0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) mapResultRow:*(a1 + 48) startingAt:0 error:a3];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    *a2 = 1;
  }

  return v8 != 0;
}

uint64_t sub_1000431B0(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004329C;
  v12[3] = &unk_100334298;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v12[5] = a2;
  v12[6] = v10;
  return sub_100069E74(v9, a2, a3, v12);
}

uint64_t sub_10004329C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    **(a1 + 32) = sqlite3_column_int(*(a1 + 40), 0) == 1;
  }

  if (*(a1 + 48))
  {
    **(a1 + 48) = sqlite3_column_int(*(a1 + 40), 1) == 1;
  }

  return 1;
}

uint64_t sub_1000433B4(uint64_t a1, uint64_t a2, void *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100043458;
  v8[3] = &unk_100333FD0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v10 = a2;
  v9 = v5;
  v6 = sub_10006A0DC(a2, a3, v8);

  return v6;
}

uint64_t sub_100043458(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = a1[6];
  v54 = 0;
  v6 = [v4 restageUnappliedMirrorEntriesInTransaction:v5 error:&v54];
  v11 = v54;
  if (v6)
  {
    v53 = 0;
    v12 = a1[4];
    v13 = a1[6];
    v52 = 0;
    v14 = [v12 hasIncomingEntries:&v53 + 1 deletions:&v53 inTransaction:v13 error:&v52];
    v19 = v52;
    if (v14)
    {
      if ((v53 & 0x100) != 0)
      {
        if ((v53 & 1) == 0)
        {
          v20 = a1[4];
          v21 = a1[6];
          v51 = 0;
          v22 = [v20 resolveMergeConflictsInTransaction:v21 error:&v51];
          v27 = v51;
          if (v22)
          {
            v29 = a1[5];
            v28 = a1[6];
            v30 = a1[4];
            v50 = v27;
            v31 = [v30 applyIncomingEntriesInTransaction:v28 updateInfos:v29 error:&v50];
            v32 = v50;

            if ((v31 & 1) == 0)
            {
              sub_100061EE8(a2, 28, v32, @"Applying incoming entries", v33, v34, v35, v36, v45);
              v40 = 0;
              v27 = v32;
              goto LABEL_17;
            }

            v37 = a1[4];
            v38 = a1[6];
            v49 = v32;
            v39 = [v37 resolveConflictingPrimaryKeysInTransaction:v38 error:&v49];
            v27 = v49;

            if (v39)
            {
              v40 = 1;
LABEL_17:

              goto LABEL_18;
            }

            v43 = @"Resolving primary key conflicts";
          }

          else
          {
            v43 = @"Resolving merge conflicts";
          }

          sub_100061EE8(a2, 28, v27, v43, v23, v24, v25, v26, v45);
          v40 = 0;
          goto LABEL_17;
        }
      }

      else if ((v53 & 1) == 0)
      {
        v40 = 1;
        goto LABEL_18;
      }

      v41 = a1[4];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000436C0;
      v47[3] = &unk_100333FD0;
      v47[4] = v41;
      v46 = *(a1 + 5);
      v42 = v46;
      v48 = v46;
      v40 = [v41 withLocalFingerprintsTable:v47 inTransaction:a1[6] error:a2];
    }

    else
    {
      sub_100061EE8(a2, 28, v19, @"Checking for incoming rows", v15, v16, v17, v18, v45);
      v40 = 0;
    }

LABEL_18:

    goto LABEL_19;
  }

  sub_100061EE8(a2, 28, v11, @"Restaging unapplied mirror entries", v7, v8, v9, v10, v45);
  v40 = 0;
LABEL_19:

  return v40;
}

uint64_t sub_1000436C0(void *a1, void *a2)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = a1[5];
  v40 = 0;
  v7 = [v5 applyIncomingShareDeletionsInTransaction:v4 updateInfos:v6 error:&v40];
  v12 = v40;
  if ((v7 & 1) == 0)
  {
    v32 = @"Applying incoming share deletions";
LABEL_8:
    sub_100061EE8(a2, 28, v12, v32, v8, v9, v10, v11, v35);
    v31 = 0;
    goto LABEL_11;
  }

  v13 = a1[4];
  v14 = a1[6];
  v39 = v12;
  v15 = [v13 resolveMergeConflictsInTransaction:v14 error:&v39];
  v16 = v39;

  if ((v15 & 1) == 0)
  {
    v33 = @"Resolving merge conflicts";
LABEL_10:
    sub_100061EE8(a2, 28, v16, v33, v17, v18, v19, v20, v35);
    v31 = 0;
    v12 = v16;
    goto LABEL_11;
  }

  v21 = a1[4];
  v22 = a1[6];
  v38 = v16;
  v23 = [v21 applyIncomingDeletionsInTransaction:v22 error:&v38];
  v12 = v38;

  if ((v23 & 1) == 0)
  {
    v32 = @"Applying incoming deletions";
    goto LABEL_8;
  }

  v25 = a1[5];
  v24 = a1[6];
  v26 = a1[4];
  v37 = v12;
  v27 = [v26 applyIncomingEntriesInTransaction:v24 updateInfos:v25 error:&v37];
  v16 = v37;

  if ((v27 & 1) == 0)
  {
    v33 = @"Applying incoming entries";
    goto LABEL_10;
  }

  v28 = a1[4];
  v29 = a1[6];
  v36 = v16;
  v30 = [v28 resolveConflictingPrimaryKeysInTransaction:v29 error:&v36];
  v12 = v36;

  if ((v30 & 1) == 0)
  {
    v32 = @"Resolving primary key conflicts";
    goto LABEL_8;
  }

  v31 = 1;
LABEL_11:

  return v31;
}

uint64_t sub_100043A24(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100043B3C;
  v12[3] = &unk_1003341D8;
  v13 = *(a1 + 40);
  v15 = a2;
  v14 = *(a1 + 48);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

BOOL sub_100043B3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v23 = 0;
  v7 = [v5 mapResultRow:v6 startingAt:0 error:&v23];
  v12 = v23;
  if (v7)
  {
    v22 = v12;
    v13 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v7 error:&v22];
    v14 = v22;

    v19 = v13 != 0;
    if (v13)
    {
      v20 = [*(a1 + 40) reinsertIntoLocal];
      [v20 addObject:v13];
    }

    else
    {
      sub_100061EE8(a3, 26, v14, @"Creating unapplied mirror entry", v15, v16, v17, v18, v22);
    }
  }

  else
  {
    sub_100061EE8(a3, 25, v12, @"Creating database item for unapplied mirror entry", v8, v9, v10, v11, v22);
    v19 = 0;
    v14 = v12;
  }

  return v19;
}

uint64_t sub_100043CCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100043D54;
  v5[3] = &unk_100334250;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  v5[6] = v3;
  v6 = *(a1 + 48);
  return sub_10006A0DC(a2, a3, v5);
}

id sub_100043D54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v20 = 0;
  v8 = [v4 reprocessAlreadyAppliedMirrorEntriesInTransaction:v5 forEntryType:v6 withFixUpPlan:v7 error:&v20];
  v9 = v20;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      v25[0] = NSLocalizedDescriptionKey;
      v25[1] = NSUnderlyingErrorKey;
      v26[0] = @"Failed to reprocess already successfully applied mirror entries";
      v26[1] = v9;
      v11 = v26;
      v12 = v25;
      v13 = 2;
    }

    else
    {
      v23 = NSLocalizedDescriptionKey;
      v24 = @"Failed to reprocess already successfully applied mirror entries";
      v11 = &v24;
      v12 = &v23;
      v13 = 1;
    }

    v14 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:v13];
    v15 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:44 userInfo:v14];

    v16 = [*(a1 + 32) getLoggingIdentifer];
    v17 = KCSharingLogObject();

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Final Reprocess Error: %@", buf, 0xCu);
    }

    if (a2)
    {
      v18 = v15;
      *a2 = v15;
    }
  }

  return v8;
}

uint64_t sub_1000442E4(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044404;
  v15[3] = &unk_1003341B0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v12 = *(a1 + 64);
  v19 = a2;
  v20 = v12;
  v18 = *(a1 + 48);
  v13 = sub_100069E74(v9, a2, a3, v15);

  return v13;
}

BOOL sub_100044404(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v29 = 0;
  v7 = [v5 mapResultRow:v6 startingAt:0 error:&v29];
  v8 = v29;
  if (v7)
  {
    v28 = v8;
    v9 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v7 error:&v28];
    v10 = v28;

    v11 = v9 != 0;
    if (v9)
    {
      if (!*(a1 + 64) || [(KCSharingMirrorEntry *)v9 type]== **(a1 + 64))
      {
        [*(a1 + 40) logMirrorEntryInfoWithMirrorEntry:v9];
        v12 = [*(a1 + 40) getLoggingIdentifer];
        v13 = KCSharingLogObject();

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Trying reinserting into local; already applied mirror item/share entry: %{private}@", buf, 0xCu);
        }

        v14 = [*(a1 + 48) reinsertIntoLocal];
        [v14 addObject:v9];
      }
    }

    else
    {
      v21 = [*(a1 + 40) getLoggingIdentifer];
      v22 = KCSharingLogObject();

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Error while mirror transforming DBItem to mirror entry", buf, 2u);
      }

      sub_100061EE8(a3, 26, v10, @"Creating already applied mirror entry", v23, v24, v25, v26, v28);
    }
  }

  else
  {
    v15 = [*(a1 + 40) getLoggingIdentifer];
    v16 = KCSharingLogObject();

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Error while extracting mirror DBItem", buf, 2u);
    }

    sub_100061EE8(a3, 25, v8, @"Creating database item for already applied mirror entry", v17, v18, v19, v20, v28);
    v11 = 0;
    v10 = v8;
  }

  return v11;
}

uint64_t sub_100044C5C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100044F54;
  v12[3] = &unk_1003341D8;
  v13 = *(a1 + 40);
  v15 = a2;
  v14 = *(a1 + 48);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_100044D74(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100044E8C;
  v12[3] = &unk_1003341D8;
  v13 = *(a1 + 40);
  v15 = a2;
  v14 = *(a1 + 48);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

BOOL sub_100044E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) mapResultRow:*(a1 + 48) startingAt:0 error:a3];
  if (v5)
  {
    v6 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v5 error:a3];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [[KCSharingMirrorEntry alloc] initWithMirrorEntry:v6 flags:4];
      v9 = [*(a1 + 40) insertIntoMirror];
      [v9 addObject:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_100044F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) mapResultRow:*(a1 + 48) startingAt:0 error:a3];
  if (v5)
  {
    v6 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v5 error:a3];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [*(a1 + 40) reinsertIntoLocal];
      [v8 addObject:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100045234(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000454F0;
  v14[3] = &unk_1003341D8;
  v17 = a2;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  v12 = sub_100069E74(v9, a2, a3, v14);

  return v12;
}

uint64_t sub_100045360(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100045460;
  v12[3] = &unk_100334200;
  v14 = a2;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

BOOL sub_100045460(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_class();
  v6 = sqlite3_column_int64(*(a1 + 40), 0);
  v7 = sub_10003EE74(v5, v6, a3);
  if (v7)
  {
    v8 = [*(a1 + 32) itemsToDelete];
    [v8 addObject:v7];
  }

  return v7 != 0;
}

uint64_t sub_1000454F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_class();
  v6 = sqlite3_column_int64(*(a1 + 48), 0);
  v7 = sub_10003EE74(v5, v6, a3);
  if (v7)
  {
    v8 = [*(a1 + 32) itemsToDelete];
    [v8 addObject:v7];

    v9 = objc_opt_class();
    v10 = sqlite3_column_int64(*(a1 + 48), 1);
    v11 = sub_10003EE74(v9, v10, a3);
    if (v11)
    {
      v12 = [*(a1 + 32) itemsToDelete];
      [v12 addObject:v11];

      v13 = sqlite3_column_int64(*(a1 + 48), 2);
      if (v13 == 2)
      {
        v22 = sqlite3_column_int64(*(a1 + 48), 4);
        v23 = objc_opt_class();
        v24 = sub_10003EE74(v23, v22, a3);
        if (v24)
        {
          v17 = v24;
          v25 = *(*(a1 + 40) + 16);
          v19 = KCSharingLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 134217984;
            v29 = v22;
            v20 = "Preparing to delete inet rowid=%lli because of an incoming item deletion";
            goto LABEL_12;
          }

LABEL_13:

          v26 = [*(a1 + 32) itemsToDelete];
          [v26 addObject:v17];

          goto LABEL_14;
        }
      }

      else
      {
        if (v13 != 1)
        {
LABEL_14:
          v21 = 1;
LABEL_16:

          goto LABEL_17;
        }

        v14 = sqlite3_column_int64(*(a1 + 48), 3);
        v15 = objc_opt_class();
        v16 = sub_10003EE74(v15, v14, a3);
        if (v16)
        {
          v17 = v16;
          v18 = *(*(a1 + 40) + 16);
          v19 = KCSharingLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 134217984;
            v29 = v14;
            v20 = "Preparing to delete keys rowid=%lli because of an incoming item deletion";
LABEL_12:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &v28, 0xCu);
            goto LABEL_13;
          }

          goto LABEL_13;
        }
      }
    }

    v21 = 0;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:

  return v21;
}

uint64_t sub_10004592C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100045A6C;
  v12[3] = &unk_1003341D8;
  v13 = *(a1 + 40);
  v15 = a2;
  v14 = *(a1 + 48);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

BOOL sub_100045A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) mapResultRow:*(a1 + 48) startingAt:0 error:a3];
  if (v5)
  {
    v6 = [(KCSharingIncomingRow *)[KCSharingIncomingEntry alloc] initWithIncomingDatabaseItem:v5 error:a3];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [*(a1 + 40) insertIntoLocalAndMirror];
      [v8 addObject:v6];

      v9 = [*(a1 + 40) itemsToDelete];
      [v9 addObject:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100045F68(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000468F4;
  v11[3] = &unk_100334188;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v11[5] = a2;
  v11[6] = v9;
  return sub_100069E74(v9, a2, a3, v11);
}

uint64_t sub_100046050(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000466A8;
  v15[3] = &unk_100333DE0;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v12 = *(a1 + 48);
  v18 = a2;
  v19 = v12;
  v13 = sub_100069E74(v9, a2, a3, v15);

  return v13;
}

uint64_t sub_100046180(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (sub_100069E14(a2, 1, v7, a3))
  {
    v8 = sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3);

    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004650C;
      v11[3] = &unk_100334188;
      v9 = *(a1 + 40);
      v11[4] = *(a1 + 32);
      v11[5] = a2;
      v11[6] = v9;
      return sub_100069E74(v9, a2, a3, v11);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100046290(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000463DC;
  v14[3] = &unk_1003341B0;
  v15 = *(a1 + 40);
  v18 = a2;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v19 = *(a1 + 56);
  v12 = sub_100069E74(v9, a2, a3, v14);

  return v12;
}

id sub_1000463DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) mapResultRow:*(a1 + 56) startingAt:0 error:a3];
  if (v5)
  {
    v6 = [*(a1 + 40) mapResultRow:*(a1 + 56) startingAt:objc_msgSend(*(a1 + 32) error:{"columnCount"), a3}];
    if (v6)
    {
      v7 = [[KCSharingMergeConflict alloc] initWithRemotelyChangedIncomingDatabaseItem:v5 locallyChangedOutgoingDatabaseItem:v6];
      v8 = [*(a1 + 48) accessGroups];
      v9 = [(KCSharingMergeConflict *)v7 resolveWithAccessGroups:v8 error:a3];

      if (v9)
      {
        v10 = *(a1 + 64);
        v11 = [*(a1 + 48) accessGroups];
        v12 = [v9 applyInTransaction:v10 withAccessGroups:v11 error:a3];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_10004650C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_class();
  v6 = sqlite3_column_int64(*(a1 + 40), 0);
  v7 = sub_10003EE74(v5, v6, a3);
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = sqlite3_column_int64(*(a1 + 40), 1);
    v10 = sub_10003EE74(v8, v9, a3);
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = sqlite3_column_int64(*(a1 + 40), 2);
      v13 = sub_10003EE74(v11, v12, a3);
      if (v13)
      {
        v14 = [[KCSharingMergeConflict alloc] initWithRemotelyDeletedIncomingDatabaseItem:v7 locallyChangedOutgoingDatabaseItem:v10 mirrorDatabaseItem:v13];
        v15 = [*(a1 + 32) accessGroups];
        v16 = [(KCSharingMergeConflict *)v14 resolveWithAccessGroups:v15 error:a3];

        if (v16)
        {
          v17 = *(a1 + 48);
          v18 = [*(a1 + 32) accessGroups];
          v19 = [v16 applyInTransaction:v17 withAccessGroups:v18 error:a3];
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_1000466A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) mapResultRow:*(a1 + 48) startingAt:0 error:a3];
  if (v5)
  {
    v6 = sqlite3_column_blob(*(a1 + 48), [*(a1 + 32) columnCount] + 1);
    v7 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v6, sqlite3_column_bytes(*(a1 + 48), [*(a1 + 32) columnCount] + 1));
    v8 = objc_opt_class();
    v9 = sqlite3_column_int64(*(a1 + 48), [*(a1 + 32) columnCount]);
    v10 = v7;
    v24 = 0;
    v11 = [v8 databaseItemClass];
    v12 = sub_10001A690(v11, &__NSDictionary0__struct, dword_10039E2F8, &v24);
    v13 = v12;
    if (v12 && (sub_10001BF68(v12, v9, &v24) & 1) != 0 && (v14 = sub_100016514([v8 databaseItemClass], 9, &v24)) != 0 && (sub_1000154A0(v13, v14, v10, &v24) & 1) != 0)
    {
      v15 = v13;
    }

    else
    {
      v16 = v24;
      if (a3)
      {
        v15 = 0;
        *a3 = v24;
        v24 = 0;
      }

      else
      {
        if (v24)
        {
          v24 = 0;
          CFRelease(v16);
        }

        v15 = 0;
      }
    }

    if (v15)
    {
      v18 = [[KCSharingMergeConflict alloc] initWithRemotelyChangedIncomingDatabaseItem:v5 locallyDeletedOutgoingDatabaseItem:v15];
      v19 = [*(a1 + 40) accessGroups];
      v20 = [(KCSharingMergeConflict *)v18 resolveWithAccessGroups:v19 error:a3];

      if (v20)
      {
        v21 = *(a1 + 56);
        v22 = [*(a1 + 40) accessGroups];
        v17 = [v20 applyInTransaction:v21 withAccessGroups:v22 error:a3];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1000468F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_class();
  v6 = sqlite3_column_int64(*(a1 + 40), 0);
  v7 = sub_10003EE74(v5, v6, a3);
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = sqlite3_column_int64(*(a1 + 40), 1);
    v10 = sub_10003EE74(v8, v9, a3);
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = sqlite3_column_int64(*(a1 + 40), 2);
      v13 = sub_10003EE74(v11, v12, a3);
      if (v13)
      {
        v14 = [[KCSharingMergeConflict alloc] initWithRemotelyDeletedIncomingDatabaseItem:v7 locallyDeletedOutgoingDatabaseItem:v10 mirrorDatabaseItem:v13];
        v15 = [*(a1 + 32) accessGroups];
        v16 = [(KCSharingMergeConflict *)v14 resolveWithAccessGroups:v15 error:a3];

        if (v16)
        {
          v17 = *(a1 + 48);
          v18 = [*(a1 + 32) accessGroups];
          v19 = [v16 applyInTransaction:v17 withAccessGroups:v18 error:a3];
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_100046D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

void sub_100046DC0(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 count];
  for (i = [NSMutableArray arrayWithCapacity:v6];
  {
    [i addObject:@"?"];
  }

  v8 = [i copy];

  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [NSString stringWithFormat:@"SELECT lpk.rowid               FROM keys lpk               WHERE lpk.ggrp IN (%1$@)", v9];

  v11 = a1[8];
  v12 = *(a1[7] + 8);
  v37[0] = *(v12 + 40);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000470D4;
  v32[3] = &unk_1003345A0;
  v13 = v5;
  v36 = a1[8];
  v14 = a1[4];
  v15 = a1[5];
  v33 = v13;
  v34 = v14;
  v35 = v15;
  LOBYTE(v11) = sub_100069BC0(v11, v10, v37, v32);
  objc_storeStrong((v12 + 40), v37[0]);
  *(*(a1[6] + 8) + 24) = v11;
  if (*(*(a1[6] + 8) + 24))
  {
    v16 = [v13 count];
    for (j = [NSMutableArray arrayWithCapacity:v16];
    {
      [j addObject:@"?"];
    }

    v18 = [j copy];

    v19 = [v18 componentsJoinedByString:{@", "}];
    v20 = [NSString stringWithFormat:@"SELECT lip.rowid               FROM inet lip               WHERE lip.ggrp IN (%1$@)", v19];

    v21 = a1[8];
    v22 = *(a1[7] + 8);
    obj = *(v22 + 40);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100047280;
    v26[3] = &unk_1003345A0;
    v23 = v13;
    v30 = a1[8];
    v24 = a1[4];
    v25 = a1[5];
    v27 = v23;
    v28 = v24;
    v29 = v25;
    LOBYTE(v21) = sub_100069BC0(v21, v20, &obj, v26);
    objc_storeStrong((v22 + 40), obj);
    *(*(a1[6] + 8) + 24) = v21;
    if ((*(*(a1[6] + 8) + 24) & 1) == 0)
    {
      *a3 = 1;
    }
  }

  else
  {
    *a3 = 1;
  }
}

uint64_t sub_1000470D4(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = 1;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!sub_100069E14(a2, v10, *(*(&v20 + 1) + 8 * v11), a3))
        {

          return 0;
        }

        v10 = (v10 + 1);
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100047544;
  v17[3] = &unk_100334138;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v19 = a2;
  v17[4] = v12;
  v18 = v13;
  v15 = sub_100069E74(v14, a2, a3, v17);

  return v15;
}

uint64_t sub_100047280(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = 1;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!sub_100069E14(a2, v10, *(*(&v20 + 1) + 8 * v11), a3))
        {

          return 0;
        }

        v10 = (v10 + 1);
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004742C;
  v17[3] = &unk_100334138;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v19 = a2;
  v17[4] = v12;
  v18 = v13;
  v15 = sub_100069E74(v14, a2, a3, v17);

  return v15;
}

BOOL sub_10004742C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sqlite3_column_int64(*(a1 + 48), 0);
  v6 = objc_opt_class();
  v7 = sub_10003EE74(v6, v5, a3);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 16);
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preparing to delete inet rowid=%lli because we deleted its ggrp", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  return v7 != 0;
}

BOOL sub_100047544(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sqlite3_column_int64(*(a1 + 48), 0);
  v6 = objc_opt_class();
  v7 = sub_10003EE74(v6, v5, a3);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 16);
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preparing to delete keys rowid=%lli because we deleted its ggrp", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  return v7 != 0;
}

void sub_10004786C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100047894(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 count];
  for (i = [NSMutableArray arrayWithCapacity:v5];
  {
    [i addObject:{@"(?, ?)"}];
  }

  v7 = [i copy];

  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"WITH zoneIDs(ownr, zone) AS (VALUES %1$@)               SELECT r.rowid               FROM %2$@ r               JOIN zoneIDs d ON (d.ownr, d.zone) = (r.ownr, r.zone)               WHERE r.agrp = ?", v8, *[*(a1 + 72) databaseItemClass]);

  v10 = *(a1 + 80);
  v11 = *(*(a1 + 64) + 8);
  v20 = *(v11 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100047A4C;
  v15[3] = &unk_1003340E8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = v12;
  v17 = v13;
  v19 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v18 = v14;
  LOBYTE(v10) = sub_100069BC0(v10, v9, &v20, v15);
  objc_storeStrong((v11 + 40), v20);
  *(*(*(a1 + 56) + 8) + 24) = v10;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

uint64_t sub_100047A4C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = 1;
    v23 = v5;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        v11 = v9;
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 ownerName];
        if ((sub_100069E14(a2, v11, v13, a3) & 1) == 0)
        {

LABEL_15:
          v21 = 0;

          return v21;
        }

        v14 = [v12 zoneName];
        v15 = sub_100069E14(a2, (v11 + 1), v14, a3);

        if (!v15)
        {
          goto LABEL_15;
        }

        v9 = (v11 + 2);
      }

      v9 = (v11 + 2);
      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      v5 = v23;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

  v16 = [*(v5 + 40) accessGroups];
  v17 = [v16 entryAccessGroup];
  v18 = sub_100069E14(a2, v9, v17, a3);

  if (!v18)
  {
    return 0;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100047CAC;
  v25[3] = &unk_100334098;
  v20 = *(v5 + 56);
  v19 = *(v5 + 64);
  v27 = a2;
  v28 = v19;
  v26 = *(v5 + 48);
  v21 = sub_100069E74(v20, a2, a3, v25);

  return v21;
}

BOOL sub_100047CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sqlite3_column_int64(*(a1 + 40), 0);
  v6 = sub_10003EE74(*(a1 + 48), v5, a3);
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  return v6 != 0;
}

uint64_t sub_100047E9C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3) || !sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 3, @"group-", a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000481A8;
  v12[3] = &unk_100333F80;
  v14 = a2;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_100047FE0(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3) || !sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 3, @"group-", a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100048124;
  v12[3] = &unk_100333F80;
  v14 = a2;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

BOOL sub_100048124(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sqlite3_column_int64(*(a1 + 40), 0);
  v6 = objc_opt_class();
  v7 = sub_10003EE74(v6, v5, a3);
  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }

  return v7 != 0;
}

BOOL sub_1000481A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sqlite3_column_int64(*(a1 + 40), 0);
  v6 = objc_opt_class();
  v7 = sub_10003EE74(v6, v5, a3);
  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }

  return v7 != 0;
}

uint64_t sub_100048328(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100048454;
  v13[3] = &unk_100334098;
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v15 = a2;
  v16 = v9;
  v14 = *(a1 + 40);
  v11 = sub_100069E74(v10, a2, a3, v13);

  return v11;
}

uint64_t sub_100048454(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sqlite3_column_int64(*(a1 + 40), 0);
  v6 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 40), 1)];
  v7 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 40), 2)];
  v8 = sub_10003EE74(*(a1 + 48), v5, a3);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [*(a1 + 48) databaseItemClass];
  if (v9 == sub_100007604(@"sharingIncomingQueue", &qword_10039E0D0, &unk_10039E0C8))
  {
    v13 = 0;
    if (sub_10001A768(v8, @"zone", v6, &v13))
    {
      if (sub_10001A768(v8, kSecAttrUUID, v7, &v13) & 1) != 0 && (sub_10001A768(v8, @"deln", &off_100363EF8, &v13))
      {
        goto LABEL_3;
      }

      v11 = v13;
      if (a3)
      {
        *a3 = v13;
LABEL_13:
        v10 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = v13;
      if (a3)
      {
        *a3 = v13;
        v13 = 0;
        goto LABEL_13;
      }
    }

    if (v11)
    {
      v13 = 0;
      CFRelease(v11);
    }

    goto LABEL_13;
  }

LABEL_3:
  (*(*(a1 + 32) + 16))();
  v10 = 1;
LABEL_14:

  return v10;
}

void sub_1000488D0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemsToDelete];
  [v3 addObject:a2];
}

void sub_100048924(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemsToDelete];
  [v3 addObject:a2];
}

void sub_100048978(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemsToDelete];
  [v3 addObject:a2];
}

uint64_t sub_100048A9C(uint64_t a1, uint64_t a2, void *a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100048B5C;
  v9[3] = &unk_100334020;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = a2;
  v7 = sub_10006A0DC(a2, a3, v9);

  return v7;
}

id sub_100048B5C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) plan];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[KCSharingOutgoingEntry alloc] initWithShare:*(*(&v29 + 1) + 8 * v9)];
        v11 = [v4 insertIntoOutgoing];
        [v11 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = *(a1 + 48);
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        v18 = [KCSharingOutgoingDeletion alloc];
        v19 = [(KCSharingOutgoingDeletion *)v18 initWithDeletedRecord:v17, v25];
        v20 = [v4 insertIntoOutgoing];
        [v20 addObject:v19];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  v21 = *(a1 + 56);
  v22 = [*(a1 + 32) accessGroups];
  v23 = [v4 applyInTransaction:v21 withAccessGroups:v22 error:a2];

  return v23;
}

uint64_t sub_100048F28(uint64_t a1, uint64_t a2, void *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048FC8;
  v8[3] = &unk_100333FD0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = a2;
  v6 = sub_10006A0DC(a2, a3, v8);

  return v6;
}

id sub_100048FC8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) plan];
  v5 = [v4 insertIntoIncoming];
  [v5 addObject:*(a1 + 40)];

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) accessGroups];
  v8 = [v4 applyInTransaction:v6 withAccessGroups:v7 error:a2];

  return v8;
}

BOOL sub_10004924C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v23 = 0;
  v6 = [v5 mapResultRow:a2 startingAt:0 error:&v23];
  v11 = v23;
  if (v6)
  {
    v22 = v11;
    v12 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v6 error:&v22];
    v13 = v22;

    v18 = v12 != 0;
    if (v12)
    {
      v19 = [[KCSharingOutgoingDeletion alloc] initWithDeletedLocalItemForMirrorEntry:v12];
      v20 = [*(a1 + 40) insertIntoOutgoing];
      [v20 addObject:v19];
    }

    else
    {
      sub_100061EE8(a3, 26, v13, @"Creating mirror entry for outgoing deletion", v14, v15, v16, v17, v22);
    }
  }

  else
  {
    sub_100061EE8(a3, 25, v11, @"Creating mirror database item for outgoing deletion", v7, v8, v9, v10, v22);
    v18 = 0;
    v13 = v11;
  }

  return v18;
}

uint64_t sub_100049384(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100049480;
  v12[3] = &unk_100333F80;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = a2;
  v10 = sub_100069E74(v9, a2, a3, v12);

  return v10;
}

uint64_t sub_10004960C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3) || !sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 3, @"group-", a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004976C;
  v14[3] = &unk_100333F08;
  v18 = a2;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 48);
  v12 = sub_100069E74(v9, a2, a3, v14);

  return v12;
}

uint64_t sub_10004976C(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 56), 0)];
  v3 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 56), 1)];
  v4 = [[CKRecordZoneID alloc] initWithZoneName:v3 ownerName:v2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v17 = 0;
  v7 = [v5 mapResultRow:v6 startingAt:2 error:&v17];
  v8 = v17;
  if (v7)
  {
    v16 = v8;
    v9 = [[KCSharingLocalItem alloc] initPasswordWithInternetPasswordDatabaseItem:v7 error:&v16];
    v10 = v16;

    if (v9)
    {
      v11 = [[KCSharingOutgoingEntry alloc] initWithNewLocalItem:v9 zoneID:v4];
      v12 = [*(a1 + 48) insertIntoOutgoing];
      [v12 addObject:v11];
    }

    else
    {
      v14 = *(*(a1 + 40) + 16);
      v11 = KCSharingLogObject();
      if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v19 = v7;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&_mh_execute_header, &v11->super.super, OS_LOG_TYPE_ERROR, "Failed to create local item from databaseItem=%{private}@ for outgoing new password with error=%@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = *(*(a1 + 40) + 16);
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create password database item for outgoing new password with error=%@", buf, 0xCu);
    }

    v10 = v8;
  }

  return 1;
}

uint64_t sub_100049BDC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100049D24;
  v18[3] = &unk_100333EB8;
  v10 = *(a1 + 40);
  v21 = a2;
  *&v11 = v10;
  *(&v11 + 1) = *(a1 + 32);
  v17 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v19 = v17;
  v20 = v14;
  v15 = sub_100069E74(v9, a2, a3, v18);

  return v15;
}