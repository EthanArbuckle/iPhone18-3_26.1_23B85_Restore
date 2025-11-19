id userInfoForStateUpdate(void *a1)
{
  v1 = a1;
  v2 = [v1 state];
  v3 = applicationStateForProcessState(v2);

  v4 = [v1 process];
  v5 = [v4 bundle];
  v6 = [v5 identifier];

  if (v6)
  {
    v12[0] = GKApplicationStateKey;
    v7 = [NSNumber numberWithUnsignedInt:v3];
    v13[0] = v7;
    v13[1] = v6;
    v12[1] = GKApplicationStateDisplayIDKey;
    v12[2] = GKApplicationStatePIDKey;
    v8 = [v1 process];
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pid]);
    v13[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t applicationStateForProcessState(void *a1)
{
  v1 = a1;
  v2 = [v1 endowmentNamespaces];
  v3 = [v2 containsObject:FBSSceneVisibilityEndowmentNamespace];

  v4 = [v1 taskState];
  result = 0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      return 2;
    }

    if (v4 != 4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v4 == 1)
  {
    return 1;
  }

  if (v4 == 2)
  {
LABEL_7:
    if (v3)
    {
      return 8;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

uint64_t GKGetApplicationStateForBundleID(void *a1)
{
  v1 = a1;
  if (shouldNotCheckApplicationState(v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v1];
    v14 = 0;
    v4 = [RBSProcessHandle handleForPredicate:v3 error:&v14];
    v5 = v14;

    if (v5)
    {
      v6 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
        v6 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v16 = "GKApplicationState GKGetApplicationStateForBundleID(NSString *__strong)";
        v17 = 2112;
        v18 = v1;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s bundleID=%@ error=%@", buf, 0x20u);
      }

      v2 = 0;
    }

    else
    {
      v8 = [v4 currentState];
      v2 = applicationStateForProcessState(v8);

      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      v10 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = [NSNumber numberWithUnsignedInt:v2];
        *buf = 136315650;
        v16 = "GKApplicationState GKGetApplicationStateForBundleID(NSString *__strong)";
        v17 = 2112;
        v18 = v1;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s bundleID=%@ state=%@", buf, 0x20u);
      }
    }
  }

  return v2;
}

uint64_t shouldNotCheckApplicationState(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1003B9368 != -1)
    {
      sub_1002930BC();
    }

    v2 = [qword_1003B9360 containsObject:v1];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

id sub_100003D3C()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for Logger();
  sub_1000043C4();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A6C04(&qword_1003B5810);
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = objc_allocWithZone(type metadata accessor for GKLRUCache());
  *&v0[OBJC_IVAR___GKCodeSigningManager_cache] = GKLRUCache.init(capacity:)(1024);
  static OnDiskCodeRequirement.anyOf(requirement:)();
  v5 = type metadata accessor for OnDiskCodeRequirement();
  sub_1001A9674(v3, 0, 1, v5);
  sub_1001A97AC(v3, &v0[OBJC_IVAR___GKCodeSigningManager_devSignedRequirement]);
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

id GKLRUCache.init(capacity:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin();
  sub_1000043B4();
  v7 = v6 - v5;
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  sub_1000043B4();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  sub_1000043B4();
  *&v1[OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode] = 0;
  *&v1[OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode] = 0;
  v8 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_cache;
  type metadata accessor for GKLRUDequeNode();
  *&v1[v8] = Dictionary.init(dictionaryLiteral:)();
  *&v1[OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_capacity] = a1;
  sub_1000049AC();
  static DispatchQoS.default.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_1000049F0();
  sub_1001A6C04(&qword_1003B5588);
  sub_100004A48();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *&v1[OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_1000042A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000042C4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000042F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100004354(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100004374(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_100004394@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_1000043D8()
{
}

BOOL sub_1000044B4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100004558(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000045AC()
{
  *(*(v0 + 352) + 112) = 0;
}

void sub_10000463C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000467C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

BOOL sub_100004760(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000047A4()
{
}

uint64_t sub_100004804()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100004838()
{

  return swift_once();
}

void sub_100004894(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_1000048F8()
{
  v5 = *(v3 + 2456);

  return [v0 v5];
}

uint64_t sub_100004968()
{

  return swift_dynamicCast();
}

unint64_t sub_1000049AC()
{
  result = qword_1003B5578;
  if (!qword_1003B5578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B5578);
  }

  return result;
}

unint64_t sub_1000049F0()
{
  result = qword_1003B5580;
  if (!qword_1003B5580)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5580);
  }

  return result;
}

unint64_t sub_100004A48()
{
  result = qword_1003B5590;
  if (!qword_1003B5590)
  {
    sub_1001A6C4C(&qword_1003B5588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5590);
  }

  return result;
}

uint64_t sub_100004ACC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100004B04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for GameServicesEnvironment();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivacyVersions();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = objc_opt_self();
  [v14 currentVersion];
  [v14 currentGamesPrivacyNoticeVersion];
  [v14 currentGamesCrossUseNoticeVersion];
  PrivacyVersions.init(gdpr:gamesPrivacy:gamesCrossUse:)();
  result = [objc_opt_self() shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = result;
  [result cacheTTLOverride];

  v17 = sub_100005144(a1);
  [a1 isInDebugMode];
  v24 = a1;
  result = [a1 locale];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    sub_100004EB4(result);
    (*(v8 + 16))(v11, v13, v7);
    v20 = v25;
    GameServicesEnvironment.init(cacheTTLOverride:hostBundleId:isDebugMode:defaultLocale:deviceUDID:currentPrivacyVersions:)();
    v21 = type metadata accessor for DaemonGameServicesSupport(0);
    (*(v26 + 32))(a2 + *(v21 + 20), v20, v27);
    v22 = [objc_allocWithZone(NSNotificationCenter) init];

    result = (*(v8 + 8))(v13, v7);
    *(a2 + *(v21 + 24)) = v22;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100004EB4(void *a1)
{
  v2 = [a1 udid];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100005558();
}

char *sub_100004F2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006508(a1, a2);
  sub_100005058(&off_10036A7B0);
  return v3;
}

uint64_t sub_100005058(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1001CEABC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

uint64_t sub_100005144(void *a1)
{
  v1 = [a1 originalBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000052E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return sub_1001B6ACC();
  }

  sub_1001B6954();
  if (sub_1001B6A84())
  {
    return sub_1001B6ACC();
  }

  v8 = sub_1001B6A84();
  if (v8)
  {
    return sub_1001B6ACC();
  }

  v12 = sub_1001B6A40(v8, v9, v10, v11, a3, a4);
  result = sub_1001B6A40(v12, v13, v14, v15, a1, a2);
  v17 = result;
  v18 = *(v12 + 16);
  if (!v18)
  {

    v19 = 0;
LABEL_22:
    if (v19 >= v18)
    {
    }

    else
    {
      sub_1001D2108(v19, v18, v12);

      v28 = sub_1001B6ACC();
      sub_1001A6C04(v28);
      sub_1001AC7E4(&qword_1003B5C30, &qword_1003B5C28);
      BidirectionalCollection<>.joined(separator:)();
      swift_unknownObjectRelease();
    }

    return sub_1001B6ACC();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *(result + 16);
  while (2)
  {
    if (v21 < v18)
    {
      v23 = (v12 + 32 + 16 * v21);
      while (1)
      {
        if (v20 >= v22)
        {
          __break(1u);
          goto LABEL_27;
        }

        v24 = v20;
        result = *v23;
        v25 = (v17 + 32 + 16 * v20);
        if (*v23 == *v25 && v23[1] == v25[1])
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        v20 = 0;
        v19 = v21;
        if (!v24)
        {
          v19 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_30;
          }

          v20 = 0;
          ++v21;
          goto LABEL_19;
        }
      }

      if (__OFADD__(v21++, 1))
      {
        goto LABEL_28;
      }

      v20 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      if (v21 < v18)
      {
        continue;
      }

      goto LABEL_22;
    }

    break;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_100005570(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100005590()
{

  return sub_1002749DC(v0, type metadata accessor for AppMetadataCache.InsertInvalidRequest);
}

uint64_t sub_1000055B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonGameServicesSupport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005624(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100005668(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000056D0()
{
  sub_1001D1B98();
  v1(0);
  sub_100005780();
  v2 = sub_1001B6ACC();
  v3(v2);
  return v0;
}

void sub_100005730(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t sub_10000575C()
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100005790()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100005808()
{

  return swift_slowAlloc();
}

uint64_t sub_1000058BC()
{
  sub_100005BE0(v0);
}

id sub_100005920()
{

  return sub_100245618(0x656D686361747461, 0xEC000000315F746ELL, v0, 1);
}

uint64_t sub_100005998()
{

  return sub_10027BBE8(v3, v1, (v5 - 88), v2, v4, v0);
}

uint64_t sub_100005AE4()
{

  return swift_slowAlloc();
}

uint64_t sub_100005B28()
{

  return swift_slowAlloc();
}

uint64_t sub_100005B50()
{

  return swift_slowAlloc();
}

id sub_100005B98()
{

  return sub_100250B68(v1, v0);
}

uint64_t sub_100005BE0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

_OWORD *sub_100005C2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005C3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_1001B6A34();
  v9 = sub_100005CFC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_100006244(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100005BE0(v14);
  return v10;
}

unint64_t sub_100005CFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100004F2C(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

void sub_100005FC8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_100005FF4(uint64_t a1)
{
  *(v1 - 128) = a1;

  return dispatch thunk of SetAlgebra.intersection(_:)();
}

uint64_t sub_100006034(uint64_t a1, uint64_t a2)
{

  return DashboardClientProxy.showInGameBanner(data:sceneIdentifier:usingLocalEndPoint:)(a1, a2, 0, 0, 1);
}

uint64_t sub_1000060C0()
{
  sub_100005BE0(v0);
}

uint64_t sub_1000060F4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100006148(uint64_t a1)
{

  return sub_1001A974C(a1, v1);
}

uint64_t sub_100006190()
{

  return swift_dynamicCast();
}

void sub_1000061C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a17 + 8 * (v17 >> 6) + 64) |= 1 << v17;
  v20 = (*(a17 + 48) + 16 * v17);
  *v20 = v19;
  v20[1] = v18;
}

uint64_t sub_100006244(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  sub_100005534();
  (*v3)(a2);
  return a2;
}

uint64_t *sub_1000062C8(char a1)
{

  return sub_10020FF8C(a1, v3, v1, v2);
}

unint64_t sub_1000062F4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = 0xD000000000000014;
  *(v1 + 24) = (a1 - 32) | 0x8000000000000000;

  return sub_1001B6954();
}

void sub_100006358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *(a13 + 56);
  v17 = *(v16 + 8 * v14);
  *(v16 + 8 * v14) = v13;
}

void sub_100006378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1001CEE10(a10, 0, a1, v10);
}

void *sub_100006454(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_100006498(uint64_t a1, uint64_t a2)
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

  sub_1001A6C04(&qword_1003B6098);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100006508(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100006498(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

BOOL sub_100006A60(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100006A7C(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000011;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_100006ABC()
{
}

uint64_t sub_100006B04()
{

  return sub_10020F3F8(v1 - 128, v0);
}

uint64_t sub_100006BB0(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

void sub_100006BE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_100006C40(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_100006CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100006D80()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100006E40(uint64_t a1)
{
  v2 = type metadata accessor for DaemonGameServicesSupport(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100006F64(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  if ([a3 gameServicesActorSystem])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1001A974C(v11, &qword_1003B5808);
    goto LABEL_8;
  }

  type metadata accessor for GameServicesActorSystem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = type metadata accessor for GameServicesActorSystemError();
    sub_1001B69A8(&qword_1003B5C38, &type metadata accessor for GameServicesActorSystemError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for GameServicesActorSystemError.systemUnavailable(_:), v6);
    v8 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v8);

    goto LABEL_9;
  }

  GameServicesActorSystem.routeToLocalActor(invocationData:completionHandler:)();

LABEL_9:

  _Block_release(a4);
}

uint64_t sub_10000716C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000071F8(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v5);
  sub_100006454(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100005BE0(v5);

  return v3;
}

uint64_t GKDaemonGameServices.actorSystem.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices__actorSystem);
  a1[3] = type metadata accessor for GameServicesActorSystem();
  *a1 = v3;
}

uint64_t sub_1000072CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100007324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for GameServicesEnvironment();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1000073A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100007690(uint64_t a1, int a2)
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

uint64_t sub_1000076B0(uint64_t result, int a2, int a3)
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

uint64_t sub_100007720()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007758()
{

  sub_100005BE0(v0 + 40);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000077A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

BOOL sub_1000077E8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100007888()
{
  swift_unknownObjectWeakDestroy();
  sub_1001AFA5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000078BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007900()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007944()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007984(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007994()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000079CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007A1C()
{
  v1 = type metadata accessor for NWBrowser.State();
  sub_1000043C4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100007B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameServicesEnvironment();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_1001A969C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100007BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameServicesEnvironment();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_1001A9674(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

__n128 *sub_100007C98(uint64_t a1, __n128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  a2[2].n128_u64[0] = *(a1 + 32);
  return sub_1001D1A50(v2, v3, a1, a2);
}

uint64_t sub_100007CD0()
{
  v1 = type metadata accessor for OnboardingState();
  sub_1000043C4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100007D88()
{
  v25 = sub_1001A6C04(&qword_1003B6260);
  sub_1000043C4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  type metadata accessor for DaemonGameServicesSupport(0);
  sub_1001D1BBC();
  v9 = *(v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v12 = *(v11 + 64);
  v24 = type metadata accessor for PrivacyVersions();
  sub_1000043C4();
  v14 = v13;
  v16 = v15;
  v17 = *(v14 + 80);
  v18 = (v10 + v12 + v17) & ~v17;
  v19 = v4 | v9 | v17;
  v20 = (v18 + *(v16 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v25);
  swift_unknownObjectWeakDestroy();
  v21 = *(v0 + 28);
  type metadata accessor for GameServicesEnvironment();
  sub_100005780();
  (*(v22 + 8))(v1 + v10 + v21);

  (*(v14 + 8))(v1 + v18, v24);

  return _swift_deallocObject(v1, v20 + 16, v19 | 7);
}

uint64_t sub_100007F7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000802C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000080F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008158()
{
  swift_unknownObjectRelease();

  sub_1001E43DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100008238()
{
  swift_unknownObjectRelease();

  sub_100005BE0(v0 + 72);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100008280()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100005BE0(v0 + 88);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000082D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008308()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100005BE0(v0 + 112);

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_100008394()
{
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000083EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008424()
{

  sub_1001E404C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100008498()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000084F4()
{
  _Block_release(*(v0 + 24));

  sub_1001F7388();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100008538()
{
  v1 = type metadata accessor for NWBrowser.Result();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008604()
{

  v0 = sub_1001F7598();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000863C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008674()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000086BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008814@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001FD980();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001FD6D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000088A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001FD6C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008908()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10020D3C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100008950()
{
  _Block_release(*(v0 + 48));
  _Block_release(*(v0 + 56));

  v1 = sub_10020D440();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000089A8()
{

  v0 = sub_10020D3C0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000089E0()
{
  sub_1001A6C04(&unk_1003B6C00);
  sub_100005780();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008A6C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100008AC4()
{
  swift_unknownObjectRelease();

  v1 = sub_10020D440();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100008B3C()
{
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008B9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008BD4()
{

  v1 = sub_10020D440();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100008C24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008CC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10020F734();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008D20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10020F728();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008D88()
{
  swift_unknownObjectRelease();

  v1 = sub_10020D430();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100008DC0()
{

  v0 = sub_1001F7598();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100008DF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008E4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008E84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008ECC()
{
  sub_1001A6C04(&qword_1003B7478);
  sub_1000047C0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008F54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008F8C()
{
  v1 = type metadata accessor for NWConnection.State();
  sub_1000043C4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10000904C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009094()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000090DC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009180(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000091AC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009208()
{
  v1 = type metadata accessor for URL();
  sub_1000043C4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1001A6C04(&qword_1003B7688);
  sub_1000043C4();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 16) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_10000935C()
{
  _Block_release(*(v0 + 24));
  sub_1001F7388();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100009398()
{
  sub_1001F7388();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000094A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000953C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100009534(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100009568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B7850);

  return sub_1001A969C(a1, a2, v4);
}

uint64_t sub_1000095BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B7850);

  return sub_1001A9674(a1, a2, a2, v4);
}

uint64_t sub_100009614()
{
  sub_100006184();
  result = sub_100238890();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100009698()
{
  sub_100006184();
  result = sub_10023AD3C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000096F4()
{
  sub_100006184();
  result = sub_10023AE1C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100009750()
{
  sub_100006184();
  result = sub_10023AE60();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000097AC()
{
  sub_100006184();
  result = sub_10023B074();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100009808()
{
  sub_100006184();
  v0 = sub_10023B220();
  return sub_100005B8C(v0);
}

uint64_t sub_100009870()
{
  sub_100006184();
  v0 = sub_10023B22C();
  return sub_100005B8C(v0);
}

uint64_t sub_1000098D8()
{
  sub_100006184();
  result = sub_10023B238();
  *v0 = result;
  return result;
}

uint64_t sub_100009944()
{
  sub_100006184();
  result = sub_10023B258();
  *v0 = result;
  return result;
}

uint64_t sub_100009994()
{
  sub_100006184();
  result = sub_10023B4E4();
  *v0 = result;
  return result;
}

uint64_t sub_100009A00()
{
  sub_100006184();
  v0 = sub_10023B740();
  return sub_100005B8C(v0);
}

uint64_t sub_100009A68()
{
  sub_100006184();
  v0 = sub_10023B74C();
  return sub_100005B8C(v0);
}

uint64_t sub_100009AD0()
{
  sub_100006184();
  result = sub_100239D48();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100009B78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009BB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009BF8()
{
  v1 = type metadata accessor for NWListener.State();
  sub_1000043C4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100009CB8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100009DA0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_100009E60()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1001A6C04(&qword_1003B7E90);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100009E90()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100009EF8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009F48()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100009FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsFieldsProviderCategory();

  return sub_1001A969C(a1, a2, v4);
}

uint64_t sub_100009FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsFieldsProviderCategory();

  return sub_1001A9674(a1, a2, a2, v4);
}

uint64_t sub_10000A034()
{
  swift_unknownObjectUnownedDestroy();
  sub_1001AFA5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000A068()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000A0D4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000A13C()
{
  _Block_release(*(v0 + 16));
  sub_1001AFA5C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000A178()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A1D8()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A230()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A268()
{
  _Block_release(*(v0 + 72));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000A2C8()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A328()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000A38C()
{
  _Block_release(*(v0 + 88));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000A408()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A454()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A49C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A4D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000A514();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000A5D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10026CB30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000A630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10026CFA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000A690@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002722F0();
  *a1 = result;
  return result;
}

uint64_t sub_10000A738(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100276A78();
  }

  type metadata accessor for Date();
  v5 = sub_100276AC0(*(a3 + 20));

  return sub_1001A969C(v5, v6, v7);
}

void sub_10000A7AC()
{
  sub_100276ACC();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_100276AC0(*(v4 + 20));

    sub_1001A9674(v5, v6, v0, v7);
  }
}

uint64_t sub_10000A81C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100276A78();
  }

  type metadata accessor for Date();
  v5 = sub_100276AC0(*(a3 + 24));

  return sub_1001A969C(v5, v6, v7);
}

void sub_10000A890()
{
  sub_100276ACC();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_100276AC0(*(v4 + 24));

    sub_1001A9674(v5, v6, v0, v7);
  }
}

uint64_t sub_10000A900()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A9BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A9F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000AA3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AA74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AAAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AAEC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AB24()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_1001A969C(v9, a2, v8);
  }
}

uint64_t sub_10000AC1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_1001A9674(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000AC9C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ACE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AD2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AD64()
{
  v1 = sub_1001A6C04(&qword_1003B8D80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000AE0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AE44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AE7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AEB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000AF18(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_10000B178(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_10000B30C(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_10000B500(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_10000B680(uint64_t a1)
{
  v1 = *(&off_100374800 + ((-39 * (dword_1003B9030 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * (dword_1003B9030 ^ 0x42 ^ qword_1003B9018))] ^ 0x50]) + 86);
  v2 = *(v1 - 4);
  v3 = *(&off_100374800 + (byte_1002D9618[(byte_1002D54E4[(-39 * ((qword_1003B9018 + v2) ^ 0x42)) - 4] ^ 0x7D) - 8] ^ (-39 * ((qword_1003B9018 + v2) ^ 0x42))) - 71);
  v4 = &v6[v2 + *(v3 - 4)];
  *(v1 - 4) = 329992409 * (v4 - 0x3F921ABBB7B42942);
  *(v3 - 4) = 329992409 * (v4 ^ 0x3F921ABBB7B42942);
  v8 = a1;
  v7[0] = (2066391179 * ((1417960136 - (v7 | 0x54845AC8) + (v7 | 0xAB7BA537)) ^ 0x45C272F)) ^ 0x1AB;
  LOBYTE(v3) = -39 * ((*(v3 - 4) - *(v1 - 4)) ^ 0x42);
  (*(*(&off_100374800 + ((-39 * ((qword_1003B9018 + dword_1003B9030) ^ 0x42)) ^ byte_1002D53E0[byte_1002D2360[(-39 * ((qword_1003B9018 + dword_1003B9030) ^ 0x42))] ^ 0x80]) - 69) + (byte_1002CD9DC[(byte_1002D9718[v3 - 8] ^ 0x72) - 12] ^ v3) + 2191))(v7);
  return v7[1];
}

uint64_t sub_10000BA00(uint64_t a1)
{
  v1 = *(&off_100374800 + (byte_1002D9618[(byte_1002D54E4[(-39 * (dword_1003B9078 ^ 0x42 ^ qword_1003B9018)) - 4] ^ 0xAB) - 8] ^ (-39 * (dword_1003B9078 ^ 0x42 ^ qword_1003B9018))) + 43);
  v2 = *(&off_100374800 + (byte_1002D2464[(byte_1002CDAD0[(-39 * ((qword_1003B9018 + *v1) ^ 0x42))] ^ 0xB) - 4] ^ (-39 * ((qword_1003B9018 + *v1) ^ 0x42))) - 125);
  v3 = (*(v2 - 4) + *v1) ^ &v5;
  *v1 = 329992409 * v3 - 0x3B9C76CF2798770ELL;
  *(v2 - 4) = 329992409 * (v3 ^ 0x3F921ABBB7B42942);
  v6 = a1;
  v7 = 100 - 210068311 * ((386832458 - (&v6 | 0x170E984A) + (&v6 | 0xE8F167B5)) ^ 0x7A275811);
  LOBYTE(v2) = -39 * (*v1 ^ 0x42 ^ *(v2 - 4));
  return (*(*(&off_100374800 + ((-39 * ((qword_1003B9018 - dword_1003B9078) ^ 0x42)) ^ byte_1002D9610[byte_1002D54E0[(-39 * ((qword_1003B9018 - dword_1003B9078) ^ 0x42))] ^ 0x38]) - 8) + (byte_1002CD8D0[byte_1002D9514[v2 - 4] ^ 0x50] ^ v2) + 2270))(&v6);
}

uint64_t sub_10000BD40(uint64_t a1)
{
  v1 = *(&off_100374800 + ((-39 * (dword_1003B9028 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002CD9D0[byte_1002D9710[(-39 * (dword_1003B9028 ^ 0x42 ^ qword_1003B9018))] ^ 0x1E]) + 7);
  v2 = *(&off_100374800 + ((-39 * (*v1 ^ qword_1003B9018 ^ 0x42)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * (*v1 ^ qword_1003B9018 ^ 0x42))] ^ 0x89]) - 64);
  v3 = &v5[*(v2 - 4) ^ *v1];
  *v1 = 329992409 * v3 + 0x3F921ABBB7B42942;
  *(v2 - 4) = 329992409 * (v3 ^ 0x3F921ABBB7B42942);
  v6 = a1;
  v7 = 213 - 1388665877 * (&v6 ^ 0x8DAD62EC);
  LOBYTE(v2) = -39 * (*v1 ^ 0x42 ^ *(v2 - 4));
  return (*(*(&off_100374800 + ((-39 * (dword_1003B9028 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002D9610[byte_1002D54E0[(-39 * (dword_1003B9028 ^ 0x42 ^ qword_1003B9018))] ^ 0x3B]) - 217) + (byte_1002D9618[(byte_1002D54E4[v2 - 4] ^ 0x38) - 8] ^ v2) + 2322))(&v6);
}

uint64_t sub_10000C084(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) ^ (-6989 * ((2 * (result & 0xEB8A) - result + 5237) ^ 0xF855));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x26;
  v3 = v2 ^ 0x26;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = 1637757341;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0x4D817BE4C509F36CLL;
    *(v1 + 80) = 0xB27E841B3AF60C93;
    *(v1 + 92) = v4;
  }

  *result = 1705165756;
  return result;
}

uint64_t sub_10000C2FC()
{
  v1 = LODWORD(STACK[0x2B8]) + 207;
  v2 = STACK[0x320];
  v3 = LODWORD(STACK[0x2B8]) - 350;
  LODWORD(STACK[0x324]) = LODWORD(STACK[0x320]) + 64;
  v4 = LODWORD(STACK[0x524]) - 1146542964;
  v5 = v2 + 637092030 > v4;
  if ((v2 + 637092030) < 0x25F9407E != v4 < (v1 ^ 0x2D6u) + 637091795 + v3)
  {
    v5 = (v2 + 637092030) < 0x25F9407E;
  }

  return (*(v0 + 8 * ((!v5 | (4 * !v5)) ^ v1)))();
}

void sub_10000C3F0(uint64_t a1)
{
  v1 = 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_10000C608(uint64_t a1, uint64_t a2, int a3)
{
  v9 = v4 + 8;
  *(v7 + (a2 ^ v9) + v3) = *(v6 + (a2 ^ v9) + v3);
  return (*(v8 + 8 * (((a1 != v9) * a3) ^ v5)))();
}

uint64_t sub_10000C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v18 = v14 - 131;
  v19 = (v14 + 979) | 0x141;
  v20 = v14 + 689;
  v21 = 1037613739 * ((&a10 & 0xBF808BE6 | ~(&a10 | 0xBF808BE6)) ^ 0x917D5966);
  a11 = v15;
  a12 = &a9;
  a13 = (v14 - 435) ^ v21;
  a14 = (v17 ^ 0xABBE3B93) - v21 + ((2 * v17) & 0x26) + 2094655359;
  a10 = v21 + 136528025;
  v22 = (*(v16 + 8 * (v14 + 1840)))(&a10);
  return (*(v16 + 8 * ((1126 * (*(v15 + 24) == (v19 ^ 0xE8A0EB43) + v20)) ^ v18)))(v22);
}

uint64_t sub_10000C740(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = (a3 - 695) | 0x10;
  v14 = (*(v11 + 4 * v12) ^ v8) + v10;
  *(v11 + 4 * v12) = v8 + v13 + 622 + v14 - (v9 & (2 * v14)) - 934;
  return (*(v7 + 8 * (((HIDWORD(v14) == 0) * a7) ^ v13)))();
}

uint64_t sub_10000C838(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10000C890@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = *(a1 + v5) - ((v3 - 96) & (2 * *(a1 + v5))) + 51;
  return (*(v4 + 8 * ((1696 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_10000C94C()
{
  v2 = STACK[0x400];
  v3 = ((v0 + 1222072426) & 0xB728A3B5 ^ LODWORD(STACK[0x360]) ^ 0xFBFFFF7FEB8DFF76) + ((2 * LODWORD(STACK[0x360])) & 0x1D71BF98ELL) + 0x400008014720338 + 1;
  STACK[0x3E8] = v3;
  LODWORD(v3) = v3 != (v0 - 826) - 1111;
  return (*(v1 + 8 * ((v3 | (8 * v3)) ^ v0)))(&STACK[0x350], v2);
}

uint64_t sub_10000C9C4@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v12 = (&a3 ^ 0xD1022D7F) * a1;
  a3 = v12 + 150239061;
  a4 = v7;
  a5 = &a2;
  a6 = (v10 - 333) ^ v12;
  a7 = v9 - v12 + ((((v10 - 971707867) & 0x39EB179F) + 29959569) ^ (v10 + 1365));
  v13 = (*(v8 + 8 * (v10 + 1942)))(&a3);
  return (*(v8 + 8 * ((1401 * (*(v7 + 24) == v11)) ^ v10)))(v13);
}

uint64_t sub_10000CA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20)
{
  *a6 = 0;
  *a7 = 0;
  a19 = -542396526 - 1388665877 * (((&a19 | 0x50BA22F9) - (&a19 & 0x50BA22F9)) ^ 0xDD174015);
  v22 = (*(v21 + 18744))(&a19);
  return (*(v21 + 8 * ((730 * (a20 == v20)) ^ 0x456u)))(v22);
}

uint64_t sub_10000CB08(uint64_t a1, uint64_t a2, void *a3)
{
  a3[27] = a1;
  LODWORD(STACK[0x46C]) = v4;
  v6 = a3[44];
  a3[25] = 335;
  *(v6 + 335) = (&STACK[0x418] ^ 0xBA) * (&STACK[0x418] + 17);
  return (*(v5 + 8 * (((a3[25] == 0) * (((((124 * (v3 ^ 0x1CC) - 352) | 0x88) + 902) | 8) - 305)) ^ ((124 * (v3 ^ 0x1CC) - 352) | 0x88))))();
}

uint64_t sub_10000CBEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44)
{
  v47 = 2066391179 * (((((v46 - 168) | 0x25591024) ^ 0xFFFFFFFE) - (~(v46 - 168) | 0xDAA6EFDB)) ^ 0x75816DC3);
  *(v46 - 168) = v45 - v47 + 1293;
  *(v46 - 164) = a20 - v47;
  STACK[0x2C0] = a2;
  v48 = (*(v44 + 8 * (v45 ^ 0x936)))(v46 - 168);
  v49 = a44 & (((v45 - 1041488914) & 0x3E13DECEu) - 653);
  *(&a35 + v49) = -77;
  return (*(v44 + 8 * ((1182 * (v49 > v45 + 40)) ^ v45)))(v48);
}

uint64_t sub_10000CCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = 1037613739 * ((2 * ((v20 - 136) & 0xEF0C0E8) - (v20 - 136) + 1896824592) ^ 0xA00D126F);
  *(v20 - 120) = v21 + v17 + 1685;
  *(v20 - 128) = &a17;
  *(v20 - 136) = ((v19 ^ 0x4FFFB7FB) - 8521418 + ((v19 << (v17 - 101)) & 0x9FFF6FF6)) ^ v21;
  (*(v18 + 8 * (v17 + 1975)))(v20 - 136);
  *(v20 - 128) = a15;
  *(v20 - 120) = a16;
  *(v20 - 136) = (v17 + 1824) ^ (843532609 * ((~((v20 - 136) | 0xE929DDCB) + ((v20 - 136) & 0xE929DDCB)) ^ 0x4A9B76B1));
  v22 = (*(v18 + 8 * (v17 + 1970)))(v20 - 136);
  return (*(v18 + 8 * (((*(v20 - 132) <= ((v17 + 179) ^ 0x2D3u) + 645501868) * (3 * ((v17 + 179) ^ 0x2D3) - 565)) ^ (v17 + 179))))(v22);
}

uint64_t sub_10000CE2C@<X0>(int a1@<W8>)
{
  v6 = *(v4 + 4 * (v2 - 1));
  *(v4 + 4 * v2) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v4 + 4 * v2)) - v2;
  v7 = 1361651671 * ((~((v5 - 152) | 0xA62E3BB3CABC43) + ((v5 - 152) & 0xA62E3BB3CABC43)) ^ 0x2CF4A2FD9F17B330);
  *(v5 - 112) = -1695099416 - v7 + a1;
  *(v5 - 144) = ((a1 + 53590892) ^ 0x7A) + v7;
  *(v5 - 136) = ((a1 + 53590892) ^ 0x33) - v7;
  *(v5 - 132) = a1 + 53590892 - v7;
  STACK[0x5A8] = 623 - v7;
  STACK[0x5C8] = v2 + 1 - v7;
  *(v5 - 128) = -1361651671 * ((~((v5 - 152) | 0xB3CABC43) + ((v5 - 152) & 0xB3CABC43)) ^ 0x9F17B330);
  v8 = (*(v3 + 8 * (a1 ^ (v1 + 2361))))(v5 - 152);
  return (*(v3 + 8 * *(v5 - 140)))(v8);
}

uint64_t sub_10000CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * (&a14 ^ 0x1E228D55);
  a14 = &a10;
  a15 = v22 + v21 - 147;
  a16 = v22 + 1842520862;
  a17 = &a13;
  a18 = v19;
  v23 = (*(v20 + 8 * (v21 ^ 0x9DB)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == v18) * (v21 + v21 + 985 + 220)) ^ v21)))(v23);
}

uint64_t sub_10000D1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
{
  v43 = (v39 - 1375735318) & 0xFF4DCCBF;
  v44 = (*(v40 + 8 * (v39 + 808)))(a39 + 4, 0);
  v45 = a39[4] + 754552832 - ((2 * a39[4]) & 0x59F32000);
  a39[1] = a39[6] + 754552832 - ((v43 ^ 0xF4BEE4A8) & (2 * a39[6]));
  a39[2] = v45;
  v46 = v39 + 784;
  v47 = (*(v40 + 8 * v46))(v44);
  a39[3] = v47 + 754552832 - ((2 * v47) & 0x59F32000);
  v48 = (*(v40 + 8 * v46))();
  *a39 = v48 + 754552832 - ((2 * v48) & 0x59F32000);
  v54 = (v42 - 152) | 0x402811898D0AA2AELL;
  v49 = (1664525 * (*v41 ^ (*v41 >> 30))) ^ v41[1];
  v41[1] = (((*a39 ^ 0xBF3DE44D) + 1086462899) ^ ((*a39 ^ 0xA4EC42CE) + 1528020274) ^ ((*a39 ^ 0x37283683) - 925382275)) - 1693020593 + (((v49 ^ 0xF990E7DB) + 1752426092) ^ ((v49 ^ 0x4EBD25F6) - 547478457) ^ ((v49 ^ 0xB72DC22D) + 651084702));
  v50 = 1361651671 * ((0xBFD7EE7672F55D51 - ((v42 - 152) | 0xBFD7EE7672F55D51) + v54) ^ 0x938562B05E285222);
  STACK[0x5A8] = 623 - v50;
  v51 = v43 + 1141204578 - v50;
  *(v42 - 144) = ((v43 + 1141204578) ^ 0x1C) + v50;
  *(v42 - 136) = v51 + 33;
  *(v42 - 132) = v51;
  *(v42 - 112) = -1695099416 - v50 + v43;
  STACK[0x5C8] = 2 - v50;
  *(v42 - 128) = -1361651671 * ((1928682833 - ((v42 - 152) | 0x72F55D51) + v54) ^ 0x5E285222);
  v52 = (*(v40 + 8 * (v43 + 1387414689)))(v42 - 152);
  return (*(v40 + 8 * *(v42 - 140)))(v52);
}

uint64_t sub_10000D4E4@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x6666666666666666;
  v5.i64[1] = 0x6666666666666666;
  v6.i64[0] = 0x3333333333333333;
  v6.i64[1] = 0x3333333333333333;
  v7 = vaddq_s8(vsubq_s8(*(v1 + v4 - 12), vandq_s8(vaddq_s8(*(v1 + v4 - 12), *(v1 + v4 - 12)), v5)), v6);
  *(v1 + a1 - 32) = vaddq_s8(vsubq_s8(*(v1 + v4 - 28), vandq_s8(vaddq_s8(*(v1 + v4 - 28), *(v1 + v4 - 28)), v5)), v6);
  *(v1 + a1 - 16) = v7;
  return (*(v3 + 8 * ((((v1 & 0xE0) == 32) * (44 * (v2 ^ 0x750) - 1321)) ^ (v2 - 335))))();
}

uint64_t sub_10000D58C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  v18 = ((a8 + a2 + 674) ^ 0xB92F1E34) + v17;
  v19 = v18 < 0xB92F1A2D;
  v20 = v18 > a16;
  if (a16 < 0xB92F1A2D != v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  return (*(v16 + 8 * ((!v21 | (8 * !v21)) ^ (a8 + a2 + 478))))();
}

uint64_t sub_10000D63C@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W5>, uint64_t a5@<X8>)
{
  v8 = 44 * (v5 ^ 0x441);
  v9 = *(v7 + 40);
  v10 = *(a5 + 72);
  *(v9 + (v8 ^ 0x5E2BEA46u) - 1579936502) = (a2 ^ HIBYTE(v10)) - ((2 * (a2 ^ HIBYTE(v10))) & 0x66) + 51;
  *(v9 + (v8 ^ 0x5E2BEA46u) - 1579936501) = (BYTE2(v10) ^ 0x4C) - ((v10 >> 15) & 0x66) + 51;
  *(v9 + (v8 ^ 0x5E2BEA46u) - 1579936500) = (BYTE1(v10) ^ a3) - 2 * ((BYTE1(v10) ^ a3) & a4 ^ BYTE1(v10) & 4) + 51;
  *(v9 + (v8 ^ 0x5E2BEA46u) - 1579936499) = v10 ^ a1;
  return (*(v6 + 8 * ((1269 * (*(a5 + 92) > 4u)) ^ v8)))(186);
}

uint64_t sub_10000D730@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v9 = v6 - 1;
  *(a1 + v9) = *(v8 + v9) ^ *(a3 + (v9 & 0xF)) ^ *((v9 & 0xF) + v4 + 2) ^ ((v9 & 0xF) * ((v5 ^ a2) - 8)) ^ *(v3 + (v9 & 0xF)) ^ 0x33;
  return (*(v7 + 8 * (((4 * (v9 == 0)) | (8 * (v9 == 0))) ^ v5)))();
}

uint64_t sub_10000D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a18 = &a14;
  a19 = 2066391179 * ((&a17 & 0x4C17B005 | ~(&a17 | 0x4C17B005)) ^ 0x1CCFCDE2) + 1194;
  v22 = (*(v21 + 18504))(&a17);
  return (*(v21 + 8 * ((3151 * (a17 == v19)) ^ v20)))(v22);
}

uint64_t sub_10000D85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 + 264) = ((12 * (v68 ^ 0x885u)) ^ 0xFFFFFFFFFFFFF824) + a68;
  LODWORD(STACK[0x43C]) = a8;
  return (*(v69 + 8 * (((*(STACK[0x240] + 360) > 1u) * ((4 * v68) ^ 0x224B)) ^ v68)))();
}

uint64_t sub_10000D91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a11;
  a17 = v17 + 2066391179 * ((&a15 & 0xECE18704 | ~(&a15 | 0xECE18704)) ^ 0xBC39FAE3) + 182;
  v19 = (*(v18 + 8 * (v17 + 1301)))(&a15);
  return (*(v18 + 8 * ((2041 * (a15 == ((v17 - 102925333) & 0x815D64F7 ^ 0x69FD8F53) + ((v17 - 408476799) & 0x5FE))) ^ v17)))(v19);
}

uint64_t sub_10000D9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, char *a20, unsigned int a21)
{
  v25 = 1564307779 * ((&a16 & 0x90CE2B9F | ~(&a16 | 0x90CE2B9F)) ^ 0xF83C1873);
  a18 = v24 - v25 - 2013066999;
  a19 = 806660835 - v25;
  a20 = &a14;
  a16 = a11;
  a21 = (a10 ^ 0xBCFFF5BB) - v25 + 2 * a10 + (v23 ^ 0x7F9AFFE3);
  v26 = (*(v22 + 8 * (v24 ^ 0x936)))(&a16);
  return (*(v22 + 8 * ((1135 * (a17 == v21)) ^ v24)))(v26);
}

uint64_t sub_10000DB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, _DWORD *a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v68 = (v65 - 1387412312) ^ 0x31D;
  *a32 = v65 - 1387412312 + v63;
  v69 = (v68 - 1658039452) & ((v62 ^ (v62 >> 11)) << 7) ^ v62 ^ (v62 >> 11);
  v70 = ((v65 - 1387412312) ^ v64) & (v69 << 15) ^ v69 ^ ((((v65 - 1387412312) ^ v64) & (v69 << 15) ^ v69) >> 18);
  v71 = &a62 + (a31 - 1);
  v72 = -1908612391 * ((*(*v67 + (*a36 & 0x1A318808)) ^ v71) & 0x7FFFFFFF);
  v73 = -1908612391 * (v72 ^ HIWORD(v72));
  v74 = *(*(&off_100374800 + v68 - 693) + (v73 >> 24) - 5);
  v75 = *(*(&off_100374800 + ((v65 - 1387412312) ^ 0x5C)) + (v73 >> 24));
  v76 = (((v68 + 570) ^ 0x56) + v68 - 210 + v70 - ((2 * v70) & 0x6E) - 19) ^ *(*(&off_100374800 + ((v65 - 1387412312) ^ 0x4D)) + (v73 >> 24) - 4) ^ v74 ^ v75 ^ v73 ^ (97 * (v73 >> 24));
  LODWORD(v73) = ((((((v65 - 88) ^ 0x1D) + 58) ^ 0x56) + ((v65 - 88) ^ 0x1D) + 46 + v70 - ((2 * v70) & 0x6E) - 19) ^ *(*(&off_100374800 + ((v65 - 1387412312) ^ 0x4D)) + (v73 >> 24) - 4) ^ v74 ^ v75 ^ v73 ^ (97 * BYTE3(v73)));
  *v71 = v76 ^ 0x37;
  return (*(v66 + 8 * ((70 * (a31 == (v73 != 55))) ^ v68)))();
}

uint64_t sub_10000DC8C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v5 < v3;
  if (v7 == (v4 + 1) > 0xFFFFFFFF1CD0F31DLL)
  {
    v7 = v3 + v4 + ((a3 + 2006188560) & 0x886BFDBB) + 80 - 256 < v5;
  }

  return (*(v6 + 8 * ((19 * v7) ^ a3)))();
}

uint64_t sub_10000DD00@<X0>(unsigned int a1@<W8>)
{
  v8 = v3 - 2;
  v9 = v2 + 2;
  *(v8 + a1) = (v9 ^ v5) * (v9 + 17);
  *(v8 + 27) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v4 == 2) * v6) ^ v1)))();
}

uint64_t sub_10000DD10(_DWORD *a1)
{
  v2 = 742307843 * ((-547177076 - (a1 | 0xDF62BD8C) + (a1 | 0x209D4273)) ^ 0x3EBFCF26);
  v3 = a1[12] + v2;
  v4 = a1[11] + v2;
  v9[1] = v3 - 742307843 * ((2 * (v9 & 0x738C99C0) - v9 + 208889406) ^ 0x1251EB6B) + 542045597;
  v5 = *(&off_100374800 + (v3 ^ 0xE3C8E400)) - 8;
  result = (*&v5[8 * (v3 + 473376064)])(v9);
  if (v4 > 214679615)
  {
    if (v4 == 499892287)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 214679616)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((102 * ((*&v5[8 * (v3 + 473376051)])(*(*(&off_100374800 + (v3 ^ 0xE3C8E42A)) + 6 * v7 + 2) + (v3 ^ 0x7DEC4FB), 0x100004077774924) != 0)) ^ (v3 + 473374053))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 214679612)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 214679615)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[2] = 392145732;
  return result;
}

uint64_t sub_10000DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = 1564307779 * ((v72 - 1776637086 - 2 * ((v72 - 200) & 0x961AAC2A)) ^ 0x1176039);
  v71[4] = a68;
  *(v72 - 172) = (((2 * v68) & 0xE59DE352) + (v68 ^ 0xF2CEF1A9) + ((2 * v70) ^ 0x6FF33EAE)) ^ v73;
  v71[1] = &STACK[0x430];
  *v71 = &STACK[0x478];
  *(v72 - 184) = v73 + v70 + 1277;
  *(v72 - 180) = v73 + a56;
  v75 = (*(v69 + 8 * (v70 ^ 0x9A2)))(v72 - 200);
  v76 = *(v72 - 176);
  LODWORD(STACK[0x4EC]) = v76;
  return (*(v69 + 8 * ((358 * (v76 == -392105736)) ^ v70)))(v75, a2);
}

uint64_t sub_10000E07C()
{
  *(v2 - 120) = &v5;
  *(v2 - 104) = v4;
  *(v2 - 112) = (v1 + 595) ^ (1785193651 * ((((2 * (v2 - 120)) | 0xCECB16D2) - (v2 - 120) + 412775575) ^ 0xF4B96749));
  return (*(v0 + 8 * (v1 + 1680)))(v2 - 120);
}

uint64_t sub_10000E26C(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 ^ 0x8C3)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1922)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 4) = v5;
  return result;
}

uint64_t sub_10000E2EC()
{
  v4 = *(v3 + 392);
  v5 = 1785193651 * ((((v2 - 200) | 0xB54064B9) + (~(v2 - 200) | 0x4ABF9B46)) ^ 0xA69C8898);
  *(v2 - 196) = v0 - 562358948 + v5 + 13;
  *(v2 - 184) = v5 ^ 0x942D0C24;
  *(v2 - 192) = v4;
  v6 = (*(v1 + 8 * (v0 ^ 0x957)))(v2 - 200);
  STACK[0x4C0] = *(v1 + 8 * v0);
  v7 = STACK[0x288];
  STACK[0x518] = v4;
  LODWORD(STACK[0x524]) = 1783634947;
  STACK[0x2D0] = v7;
  return (*(v1 + 8 * ((((*(v4 + 68) & 0x3F) + 1783634947 + ((37 * ((v0 + 38) ^ 0x61)) ^ 0x95AFE0B6) > 0xFFFFFFBF) * (((v0 + 1191452501) & 0xB8FBE6D7) - 1428)) ^ (v0 + 38))))(v6);
}

void sub_10000E39C(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + dword_1003B90D0) ^ 0x42)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * ((qword_1003B9018 + dword_1003B90D0) ^ 0x42))] ^ 0x33]) - 228);
  v4 = *(v3 - 4);
  v5 = *(&off_100374800 + ((-39 * ((qword_1003B9018 - v4) ^ 0x42)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * ((qword_1003B9018 - v4) ^ 0x42))] ^ 3]) - 111);
  v6 = &v9[v4 + *(v5 - 4)];
  *(v3 - 4) = 329992409 * v6 - 0x3B9C76CF2798770ELL;
  *(v5 - 4) = 329992409 * (v6 ^ 0x3F921ABBB7B42942);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1785193651 * ((v11 & 0x4B900E85 | ~(v11 | 0x4B900E85)) ^ 0xA7B31D5A);
  v14 = v6 ^ 0x942D0C24;
  v13 = v10;
  v12 = v6 - 562358852;
  LODWORD(v5) = 329992409 * (*(v3 - 4) ^ 0xB7B42942 ^ *(v5 - 4));
  v7 = *(&off_100374800 + ((-39 * ((qword_1003B9018 - dword_1003B90D0) ^ 0x42)) ^ byte_1002D9610[byte_1002D54E0[(-39 * ((qword_1003B9018 - dword_1003B90D0) ^ 0x42))] ^ 0x38]) - 8) - 8;
  (*&v7[8 * (byte_1002D53E8[(byte_1002D2360[v5] ^ 0x80) - 8] ^ v5) + 17656])(v11);
  v8 = *(a2 + 16) - 2004488372 + (v10[68] & 0x3Fu) < 0xFFFFFFC0;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10000E644(uint64_t a1, signed int a2, uint64_t a3, int a4)
{
  if (a2 > v4)
  {
    v4 = a2;
  }

  return (*(v5 + 8 * ((8 * (((a4 + 52) ^ (v4 > ((a4 - 99223916) & 0x5EA059Fu) + 2147482355)) & 1)) & 0xDF | (32 * (((a4 + 52) ^ (v4 > ((a4 - 99223916) & 0x5EA059Fu) + 2147482355)) & 1)) | a4)))();
}

uint64_t sub_10000E6A4()
{
  v3 = STACK[0x2B8];
  v4 = v2[1];
  v5 = v2[(281 * (LODWORD(STACK[0x2B8]) ^ 0x177u)) ^ 0x2C6] ^ v1 ^ ((v4 & 0x7FFFFFFE | *v2 & 0x80000000) >> 1) ^ *(&STACK[0x17B8] + (v4 & 1));
  v6 = v2[398] ^ v1 ^ ((v2[2] & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ *(&STACK[0x17B8] + (v2[2] & 1));
  *v2 = v5;
  v2[1] = v6;
  return (*(v0 + 8 * (v3 ^ 0x233)))();
}

uint64_t sub_10000E6AC@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  v10 = v9 + v5 < v1;
  if (v1 < v3 != v9 + v5 < (v4 ^ (v3 + 1713)))
  {
    v10 = v1 < v3;
  }

  return (*(v8 + 8 * ((!v10 * v6) ^ v4)))();
}

uint64_t sub_10000E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 + 264) = a67;
  LODWORD(STACK[0x4EC]) = v67;
  return sub_1000227C4(a1, a66, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10000E7E0()
{
  result = (*(v1 + 8 * (v3 + 1524)))(*v4);
  *v2 = 0;
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 192438812;
  return result;
}

uint64_t sub_10000E824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v23 = 1037613739 * ((488507783 - (&a15 | 0x1D1E0987) + (&a15 | 0xE2E1F678)) ^ 0x33E3DB07);
  a16 = a11;
  a17 = v19;
  a18 = (v22 - 474) ^ v23;
  a19 = ((2 * v21) & 0xDD9FFAFE) + (v21 ^ 0xEECFFD7F) + ((v22 - 384) ^ 0x37FEF466) + v23;
  v24 = (*(v20 + 8 * (v22 + 886)))(&a15);
  return (*(v20 + 8 * ((3392 * (a15 == -392105736)) ^ v22)))(v24);
}

uint64_t sub_10000E930@<X0>(uint64_t a1@<X8>)
{
  v8 = v3;
  v7 = v2 + 50899313 * ((2 * (&v5 & 0x5D7B4198) - &v5 - 1568358815) ^ 0xB6AB23FA) + 1340;
  v5 = a1;
  v6 = v3;
  return (*(v1 + 8 * (v2 ^ 0xB2C)))(&v5);
}

uint64_t sub_10000EF18@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v4 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v3 + 8 * ((25 * (371 * (v2 ^ 0x171u) - 1823 != (v1 & 0xFFFFFFE0))) ^ (v2 - 134))))();
}

uint64_t sub_10000EFE0@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * (((v6 == 0) * v5) ^ v3)))();
}

uint64_t sub_10000F1A8@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = ((7 * ((v2 - 207) ^ a1)) ^ 0xA8703E96) + a2;
  v6 = v4 < -2051767422 || v4 >= SLODWORD(STACK[0x288]);
  return (*(v3 + 8 * ((449 * v6) ^ (v2 - 207))))();
}

uint64_t sub_10000F404(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 5 * ((LODWORD(STACK[0x2B8]) + 282) ^ 0x283);
  v12 = (*(*(v10 + 400) + 1516) ^ ((v11 + 63) | v8) ^ 0xBA) - (**(v10 + 48) - 117);
  return (*(v9 + 8 * ((((v6 & (2 * v12)) + (v12 ^ (((v11 + a6) & v7) + a1)) == a1 + 372) * a2) ^ v11)))();
}

uint64_t sub_10000F48C(int8x8_t a1, int8x8_t a2)
{
  v10 = v2 + 8;
  *(v5 + v10) = vadd_s8(vsub_s8(*(v9 + v10), vand_s8(vadd_s8(*(v9 + v10), *(v9 + v10)), a1)), a2);
  return (*(v8 + 8 * (((((v4 == v10) ^ v6) & 1) * v7) | v3)))();
}

uint64_t sub_10000F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 128) = v17;
  *(v22 - 120) = &a17;
  *(v22 - 136) = (v20 + 180) ^ (((2 * ((v22 - 136) & 0x1E23C890) - (v22 - 136) - 505661585) ^ 0xBD9163EA) * v21);
  v23 = (*(v18 + 8 * (v20 ^ 0xECA)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 132) > (((v20 - 926) | 0x38B) ^ (v19 - 173))) * ((v20 + 742921261) & 0xD3B7E6D5 ^ 0xD6E)) ^ v20)))(v23);
}

uint64_t sub_10000F658@<X0>(int a1@<W6>, int a2@<W8>)
{
  if (a1 == (a2 ^ 0x297) - 1361)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((v4 * (a2 + 2100)) ^ a2)))();
}

uint64_t sub_10000F688()
{
  v3 = (LODWORD(STACK[0x2B8]) + 251);
  *v2 = v3 & 0x9C972901 ^ v2[623] ^ (((((~v3 + v1) ^ (v0 - v3)) - 1) & (v3 - v1)) >> 63);
  return sub_100023B9C(v3 ^ 0x26F);
}

uint64_t sub_10000F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18)
{
  LODWORD(a15) = (v18 + 604) ^ (50899313 * (((&a15 | 0xDD28EFA9) - &a15 + (&a15 & 0x22D71050)) ^ 0xC9077232));
  a16 = a12;
  a18 = &a14;
  (*(v19 + 8 * (v18 + 1569)))(&a15);
  a16 = a12;
  a18 = &a11;
  LODWORD(a15) = (v18 + 604) ^ (50899313 * (((&a15 | 0x2DF3E9A5) - &a15 + (&a15 & 0xD20C1658)) ^ 0x39DC743E));
  (*(v19 + 8 * (v18 + 1569)))(&a15);
  a15 = a12;
  HIDWORD(a16) = (v18 + 1455) ^ ((((&a15 | 0xEB83F8A5) - (&a15 & 0xEB83F8A5)) ^ 0x662E9A49) * v20);
  v22 = (*(v19 + 8 * (v18 + 1529)))(&a15);
  return (*(v19 + 8 * (((16 * (a16 == (v18 ^ v21) - 1806802185)) | (32 * (a16 == (v18 ^ v21) - 1806802185))) ^ v18)))(v22);
}

uint64_t sub_10000F8E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = v7 + 8;
  *(a1 + (v12 ^ a3 ^ v9) + v6) = vadd_s8(vsub_s8(*(v10 + (v12 ^ a3 ^ v9) + v6), vand_s8(vadd_s8(*(v10 + (v12 ^ a3 ^ v9) + v6), *(v10 + (v12 ^ a3 ^ v9) + v6)), a5)), a6);
  return (*(v11 + 8 * (((a2 != v12) * a4) ^ v8)))();
}

void sub_10000F974()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *(v0 + 20) ^ (2066391179 * ((-2 - ((~v0 | 0xD86E0A28) + (v0 | 0x2791F5D7))) ^ 0x77498830));
  __asm { BRAA            X8, X17 }
}

void sub_10000FAD0()
{
  *v7 = *v2;
  *v6 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x47DE771547DE7715;
  v3 = (v0 - 246032417) & 0xEAA27FE ^ 0xFFFFFA06;
  v4 = *(v2 + 24);
  v5 = *(v2 + 20) & v3;
  *(v2 + 16) = 1235252677;
  *(v2 + 20) = v5;
  *(v8 + 24) = v4;
}

uint64_t sub_10000FBC0()
{
  v7 = (v1 + 1985723289) & 0xDDF6CF53;
  *v0 = v11 ^ v5 ^ v7;
  v12 = v7 - 1414695214 - ((&v12 & 0xD517D837 | ~(&v12 | 0xD517D837)) ^ 0xA7454524) * v4;
  v13 = v10;
  (*(v3 + 8 * (v7 - 1414694129)))(&v12);
  v12 = -1414695214 - ((((2 * &v12) | 0xEE8F6516) - &v12 - 2001187467) ^ 0xFAEAD067) * v4 + v7;
  v13 = v9;
  (*(v3 + 8 * (v7 ^ (v6 - 1540))))(&v12);
  return v2 ^ 0xE8A0F0F8;
}

uint64_t sub_10000FCEC()
{
  v4 = 3 * (v0 ^ 0x483);
  v9 = v7;
  v8 = v0 - (&v8 ^ 0x8DAD62EC) * v1 + 201;
  (*(v2 + 8 * (v0 ^ 0xD1A)))(&v8);
  v8 = v4 - ((-1632603331 - (&v8 | 0x9EB0733D) + (&v8 | 0x614F8CC2)) ^ 0xECE2EE2E) * v1 + 824;
  v9 = v6;
  (*(v2 + 8 * (v4 ^ 0x88B)))(&v8);
  return v3 ^ 0xE8A0F0F8;
}

uint64_t sub_10000FE8C(uint64_t a1)
{
  v7 = (v2 + 4 * (a1 + v5));
  *v7 = __ROR4__(*(v7 - 3) ^ v3 ^ *(v7 - 8) ^ *(v7 - 14) ^ *(v7 - 16), 31) ^ 0xAC395023;
  return (*(v4 + 8 * ((52 * (a1 + 1 != v6 + 80)) ^ v1)))();
}

void sub_10000FEFC(uint64_t a1)
{
  (*(v1 + 19368))();
  (*(v1 + 18792))(a1);
  JUMPOUT(0x10000C148);
}

uint64_t sub_10000FF7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = v8 + 32;
  v13 = (a1 ^ v12) + v7;
  v14 = *(v6 + v13 - 15);
  v15 = *(v6 + v13 - 31);
  v16 = a5 + v13;
  *(v16 - 15) = v14;
  *(v16 - 31) = v15;
  return (*(v11 + 8 * (((v10 == v12) * a2) ^ (a6 + v9 + 921))))();
}

uint64_t sub_100010004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v5 ^ (v3 + 2220) ^ 0xFFFFFFFFFFFFF894) + v4;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((2 * (v7 == 0)) | (4 * (v7 == 0))) ^ (v2 + v5 + 546))))();
}

uint64_t sub_1000100B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v30 - 120) = (v29 - 78) ^ (((v30 + 2026338352 - 2 * ((v30 - 144) & 0x78C778C0)) ^ 0x6B1B94E0) * v25);
  *(v30 - 144) = &a25;
  *(v30 - 136) = &a17;
  *(v30 - 128) = v28;
  *(v30 - 112) = &a25;
  *(v30 - 104) = v27;
  v31 = (*(v26 + 8 * (v29 ^ 0xAB4)))(v30 - 144);
  return (*(v26 + 8 * ((((a11 - 2054041575) > 0x7FFFFFFE) | (8 * ((a11 - 2054041575) > 0x7FFFFFFE))) ^ (v29 - 396))))(v31);
}

uint64_t sub_1000105E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  v28 = a27 + 1787046674 > a20;
  if (a20 < a19 != a27 + 1787046674 < ((43 * (a3 ^ 0x2C)) ^ 0x6A8422C2u))
  {
    v28 = a27 + 1787046674 < ((43 * (a3 ^ 0x2C)) ^ 0x6A8422C2u);
  }

  return (*(v27 + 8 * ((7 * !v28) | (a3 + 1788))))();
}

uint64_t sub_100010674(uint64_t a1, unint64_t a2)
{
  v9 = (v5 - 1) & 0xF;
  v10 = -v7 - v5 + 1;
  v12 = a2 >= 0x10 && (v10 + v2 + v9) >= 0x10 && (v10 + v3 + v9) >= 0x10;
  v13 = v10 + v4 + v9;
  v15 = !v12 || v13 < ((((v6 + 2016922510) & 0x87C832DB) - 202) ^ 0x1E8uLL);
  return (*(v8 + 8 * ((60 * v15) ^ v6)))();
}

uint64_t sub_100010AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 112) = &a15;
  *(v19 - 120) = (v15 - 209) ^ (1785193651 * ((2 * ((v19 - 128) & 0x1F5BA7F8) - (v19 - 128) + 1621383168) ^ 0x7378B420));
  *(v19 - 128) = a12;
  (*(v16 + 8 * (v15 + 876)))(v19 - 128);
  *(v19 - 128) = (v15 + 702) ^ (((((v19 - 128) | 0x75957541) + (~(v19 - 128) | 0x8A6A8ABE)) ^ 0x29D821C5) * v17);
  *(v19 - 120) = v18;
  *(v19 - 112) = a12;
  v20 = (*(v16 + 8 * (v15 + 848)))(v19 - 128);
  return (*(v16 + 8 * (((*(v19 - 124) > (v15 ^ 0x267991BEu)) * ((127 * (v15 ^ 0x5CB)) ^ 0x220)) ^ v15)))(v20);
}

uint64_t sub_100010BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44)
{
  v52 = (a3 + 1896016628) ^ 0x7102E35D;
  v46 = (a3 + 1896016628) & 0x8EFD14FD;
  v47 = 2066391179 * ((2 * ((v45 - 160) & 0x44E44088) - (v45 - 160) + 991674225) ^ 0x943C3D69);
  *(v45 - 160) = a3 - v47 + 1266;
  *(v45 - 156) = a15 - v47;
  *(v45 - 152) = a5;
  v48 = (*(v44 + 8 * (a3 ^ 0x913)))(v45 - 160);
  v49 = a44 & 0x3F;
  *(&a35 + v49) = -77;
  return (*(v44 + 8 * ((1482 * (v49 > ((v52 - 2072) ^ v46))) ^ a3)))(v48);
}

uint64_t sub_100010D30@<X0>(int a1@<W8>, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v11 = ((&a3 + 2087359745 - 2 * (&a3 & 0x7C6A9501)) ^ 0xAD68B87E) * a1;
  a6 = (v9 - 333) ^ v11;
  a7 = 681059102 - v11;
  a3 = v11 + 687109973;
  a4 = v7;
  a5 = &a2;
  v12 = (*(v8 + 8 * (v9 ^ 0x8BE)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v10) * ((v9 + 453) ^ 0x1F4)) ^ v9)))(v12);
}

uint64_t sub_100010E20@<X0>(int a1@<W8>)
{
  v6 = (v1 + 554441119) & 0xDEF3E7ED;
  v7 = (v6 ^ 0x2D7F2B79) - v4;
  if (v5 > v7)
  {
    v7 = v5;
  }

  *(*(v2 + 8) + 4 * (((v6 + 153619176) & 0xF6D7F7FF ^ 0xFFFFF953) + v7 + a1)) = *(*(v2 + 8) + 4 * (((v6 + 153619176) & 0xF6D7F7FF ^ 0xFFFFFFFFFFFFF953) + v7));
  return (*(v3 + 8 * ((29 * (v7 > 1)) ^ v6)))();
}

uint64_t sub_100010EEC(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v13 = v9 + 2;
  v14 = v10 + 2;
  v15 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a5)), a6);
  v14[-1] = vaddq_s8(vsubq_s8(v13[-1], vandq_s8(vaddq_s8(v13[-1], v13[-1]), a5)), a6);
  *v14 = v15;
  return (*(v12 + 8 * ((975 * ((v8 ^ (v6 + v11 - 32 == 0)) & 1)) ^ v7)))();
}

uint64_t sub_100011134@<X0>(uint64_t a1@<X1>, int a2@<W2>, int8x16_t *a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>)
{
  v16 = (v13 - 16) & 0xF;
  v18.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v18.i64[1] = a6;
  v19 = vrev64q_s8(vmulq_s8(v18, a7));
  *a3 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v10 + v16 - 15), *a3), *(v12 + v16 - 15)), *(((v14 + 1461) | 6u) + v16 + v11 - 2069)), vextq_s8(v19, v19, 8uLL));
  return (*(v15 + 8 * (((a1 == 16) * a2) ^ v14)))();
}

uint64_t sub_100011140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v28 - 144) = (v27 + 66) ^ (1037613739 * ((((v28 - 144) | 0x3F8A34F) - (v28 - 144) + ((v28 - 144) & 0xFC075CB0)) ^ 0xD2FA8E30));
  *(v28 - 136) = &a24;
  *(v28 - 128) = v25;
  *(v28 - 120) = &a24;
  *(v28 - 112) = a12;
  (*(v24 + 8 * (v27 ^ 0xDC3)))(v28 - 144);
  *(v28 - 144) = (v27 + 66) ^ (1037613739 * ((((v28 - 144) | 0x81651CDD) - (v28 - 144) + ((v28 - 144) & 0x7E9AE320)) ^ 0x506731A2));
  *(v28 - 136) = &a24;
  *(v28 - 128) = a11;
  *(v28 - 120) = &a24;
  *(v28 - 112) = a12;
  (*(v24 + 8 * (v27 ^ 0xDC3)))(v28 - 144);
  *(v28 - 120) = &a24;
  *(v28 - 112) = a12;
  *(v28 - 144) = (v27 + 66) ^ (1037613739 * ((((2 * (v28 - 144)) | 0x13FBDEE6) - (v28 - 144) + 1979846797) ^ 0x58FFC20C));
  *(v28 - 136) = &a24;
  *(v28 - 128) = a11;
  (*(v24 + 8 * (v27 + 1089)))(v28 - 144);
  v29 = 210068311 * ((((v28 - 144) | 0xF48E529) + (~(v28 - 144) | 0xF0B71AD6)) ^ 0x9D9EDA8C);
  *(v28 - 128) = a13;
  *(v28 - 136) = v27 - v29 - 633;
  *(v28 - 144) = ((v26 - 2054041576) ^ 0x6FDD86DB) + ((2 * (v26 - 2054041576)) & 0xDFBB0DB6) + ((v27 - 222) ^ 0xFDBEFA0D) + v29;
  v30 = (*(v24 + 8 * (v27 ^ 0xDF4)))(v28 - 144);
  v31 = *(v28 - 140) == v27 - 1611312069;
  return (*(v24 + 8 * (((8 * v31) | (16 * v31)) ^ v27)))(v30);
}

uint64_t sub_100011384()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 != 0) * v1) ^ v0)))();
}

uint64_t sub_1000114A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a14 = &a9;
  a15 = 2066391179 * ((&a13 + 1368849345 - 2 * (&a13 & 0x5196FBC1)) ^ 0xFEB179D9) + 1194;
  v16 = (*(v15 + 18504))(&a13);
  return (*(v15 + 8 * ((25 * (a13 == -392105736)) ^ 0xC4u)))(v16);
}

uint64_t sub_10001155C@<X0>(char a1@<W1>, int8x16_t *a2@<X2>, int a3@<W3>, int a4@<W6>, uint64_t a5@<X8>)
{
  v8.i64[0] = 0x6666666666666666;
  v8.i64[1] = 0x6666666666666666;
  v9.i64[0] = 0x3333333333333333;
  v9.i64[1] = 0x3333333333333333;
  v10 = (v7 - 220 + a5);
  v11 = vaddq_s8(vsubq_s8(a2[1], vandq_s8(vaddq_s8(a2[1], a2[1]), v8)), v9);
  *v10 = vaddq_s8(vsubq_s8(*a2, vandq_s8(vaddq_s8(*a2, *a2), v8)), v9);
  v10[1] = v11;
  return (*(v6 + 8 * ((1847 * (80 * (v5 ^ (a3 - 11)) - 1008 == (a1 & 0x60))) ^ (a4 + v5 + 552))))();
}

uint64_t sub_100011648@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v4 = a1;
  *v3 = v2;
  v6 = (a2 - 204) | 0x89;
  v11 = v9;
  v10 = a2 + 203 - 1388665877 * ((-1802128933 - (&v10 | 0x9495B1DB) + (&v10 | 0x6B6A4E24)) ^ 0xE6C72CC8) + 776;
  (*(v5 + 8 * ((a2 + 203) ^ 0x8DB)))(&v10);
  v11 = v8;
  v10 = v6 - 1388665877 * (((&v10 | 0xA43E382C) - &v10 + (&v10 & 0x5BC1C7D0)) ^ 0x29935AC0) + 1046;
  (*(v5 + 8 * (v6 + 2131)))(&v10);
  return 0;
}

uint64_t sub_1000117A0()
{
  v5.i64[0] = 0x3333333333333333;
  v5.i64[1] = 0x3333333333333333;
  v6 = v0 + v2 - 1;
  v7 = veorq_s8(*(v1 + v2 - 1 - 31), v5);
  *(v6 - 15) = veorq_s8(*(v1 + v2 - 1 - 15), v5);
  *(v6 - 31) = v7;
  return (*(v4 + 8 * ((73 * (((v3 + 1320) ^ 0x721) != (v2 & 0xFFFFFFE0))) ^ (v3 + 1503))))();
}

uint64_t sub_10001184C@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x6666666666666666;
  v5.i64[1] = 0x6666666666666666;
  v6.i64[0] = 0x3333333333333333;
  v6.i64[1] = 0x3333333333333333;
  v7 = *(a1 + v2 - 1 - 31);
  v8 = v1 + v2 - 1;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(a1 + v2 - 1 - 15), vandq_s8(vaddq_s8(*(a1 + v2 - 1 - 15), *(a1 + v2 - 1 - 15)), v5)), v6);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v5)), v6);
  return (*(v4 + 8 * ((2217 * ((v3 ^ 0xB1) == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_100011968(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = (v14 + v12 + v15 - 16);
  v18 = vaddq_s8(vsubq_s8(*(a12 + v12 - 16), vandq_s8(vaddq_s8(*(a12 + v12 - 16), *(a12 + v12 - 16)), a4)), a5);
  v17[-1] = vaddq_s8(vsubq_s8(*(a12 + v12 - 16 - 16), vandq_s8(vaddq_s8(*(a12 + v12 - 16 - 16), *(a12 + v12 - 16 - 16)), a4)), a5);
  *v17 = v18;
  return (*(v16 + 8 * ((((v12 & 0xFFFFFFE0) == 32) * ((v13 ^ 0x3C3) - 1816)) ^ v13)))();
}

uint64_t sub_100011A04@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 2252));

  return v3(v1);
}

uint64_t sub_100011B6C()
{
  *(v6 - 136) = (v0 + 757) ^ (210068311 * (v4 ^ 0x92D63FA4));
  *(v6 - 128) = v3;
  *(v6 - 120) = v2;
  v7 = (*(v1 + 8 * (v0 ^ 0xCFE)))(v6 - 136);
  return (*(v1 + 8 * ((((123 * (((v0 - 1041) | 0x28) ^ 0x1E8)) ^ 0x2AA) * (v5 == 1)) ^ v0)))(v7);
}

uint64_t sub_100011C8C@<X0>(int a1@<W3>, int a2@<W5>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  v60 = v58[396] ^ (((((a3 - 1351631033) & 0xFDDDFDEB) - 760071338) & *v58 | v58[623] & 0x80000000) >> 1);
  v58[623] = (v60 + v59 - ((a2 + 1127) & (2 * v60))) ^ *(&a57 + ((((a3 - 2008778453) | 0x25094408) ^ (a1 + 1)) & *v58));
  return (*(v57 + 8 * ((3858 * (a37 > 0x26F)) ^ a3)))();
}

void sub_100011D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0x9749220A) + 1316497637) ^ v10 ^ ((v10 ^ 0xD84D1C52) + 24909501) ^ ((v10 ^ 0xF7B134B7) + 780156506) ^ ((((v11 ^ 0x67B) - 1410062851) & 0x540BD7BB ^ 0x474AF68B) + (v10 ^ 0x9E7BFFFE));
  *a9 = (HIBYTE(v12) ^ 0x26) - ((2 * (HIBYTE(v12) ^ 0x26)) & 0x66) + 51;
  a9[1] = (BYTE2(v12) ^ 0xCE) - ((2 * (BYTE2(v12) ^ 0xCE)) & 0x66) + 51;
  a9[2] = (BYTE1(v12) ^ 0xF5) - ((2 * (BYTE1(v12) ^ 0xF5)) & 0x66) + 51;
  a9[3] = ((v10 ^ 0xA) - 27) ^ v10 ^ ((v10 ^ 0x52) - 67) ^ ((v10 ^ 0xB7) + 90) ^ ((((v11 ^ 0x7B) - 3) & 0xBB ^ 0x8B) + (v10 ^ 0xFE)) ^ 0x22;
  v13 = v9 - ((2 * v9) & 0xA3A96787B03BD956) - 0x2E2B4C3C27E21355;
  a9[4] = (HIBYTE(v13) ^ 0xD1) - 2 * ((HIBYTE(v13) ^ 0xD1) & 0xBB ^ HIBYTE(v13) & 8) + 51;
  a9[5] = (BYTE6(v13) ^ 0xD4) - ((2 * (BYTE6(v13) ^ 0xD4)) & 0x66) + 51;
  a9[6] = (BYTE5(v13) ^ 0xB3) - 2 * ((BYTE5(v13) ^ 0xB3) & 0x37 ^ BYTE5(v13) & 4) + 51;
  a9[7] = (BYTE4(v13) ^ 0xC3) - 2 * ((BYTE4(v13) ^ 0xC3) & 0x37 ^ BYTE4(v13) & 4) + 51;
  a9[8] = (((v9 - ((2 * v9) & 0xB03BD956) - 669127509) >> 24) ^ 0xD8) - 2 * ((((v9 - ((2 * v9) & 0xB03BD956) - 669127509) >> 24) ^ 0xD8) & 0x37 ^ ((v9 - ((2 * v9) & 0xB03BD956) - 669127509) >> 24) & 4) + 51;
  a9[9] = (BYTE2(v13) ^ 0x1D) - ((2 * (BYTE2(v13) ^ 0x1D)) & 0x66) + 51;
  a9[10] = (BYTE1(v13) ^ 0xEC) - ((2 * (BYTE1(v13) ^ 0xEC)) & 0x66) + 51;
  a9[11] = v13 ^ 0x98;
  sub_10003A9B8();
}

uint64_t sub_100011F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  a17 = -542396526 - 1388665877 * (((&a17 | 0xCA7AEBAC) - (&a17 & 0xCA7AEBAC)) ^ 0x47D78940);
  v19 = (*(v18 + 18744))(&a17);
  return (*(v18 + 8 * ((88 * (a18 == -392105736)) ^ 0x419u)))(v19);
}

uint64_t sub_100012070(int a1)
{
  v7 = v4 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v6 + 8 * ((15 * (v7 == 0)) | (a1 - 148))))();
}

uint64_t sub_100012138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, int a15, unsigned int a16, char *a17, unsigned int a18)
{
  v20 = 1564307779 * ((&a13 & 0xE6D88B7E | ~(&a13 | 0xE6D88B7E)) ^ 0x8E2AB892);
  a17 = &a11;
  a18 = 1016788250 - v20;
  a15 = v19 - v20 - 2013067355;
  a16 = 1508903840 - v20;
  a13 = a9;
  v21 = (*(v18 + 8 * (v19 + 1486)))(&a13);
  return (*(v18 + 8 * (((a14 == ((v19 + 1576201400) & 0x54529E19) - 1806802185) * (((v19 - 559) | 0x214) - 757)) ^ v19)))(v21);
}

uint64_t sub_100012218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = a11 + (a10 ^ 0x6F1 ^ (v12 + 1610));
  v15 = v14 + v13 - 2131746947;
  v16 = (a10 ^ 0x4B2) - 1663436537 + v14 > v15;
  if (v14 > 0x6326015D != v15 < 0x9CD9FEA2)
  {
    v16 = v14 > 0x6326015D;
  }

  return (*(v11 + 8 * ((v16 * (((a10 ^ 0x6F1) + 200) ^ 0x895)) ^ a10 ^ 0x6F1)))();
}

void sub_100012354()
{
  if (v0 == 1691815454)
  {
    v2 = -392105736;
  }

  else
  {
    v2 = 392145696;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_10001241C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t, char *, uint64_t, uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  v42 = a15 | 2u;
  v43 = (a2 + v36);
  *v43 = v37;
  v43[1] = v38;
  *(v36 + a2 + v42 - 36) = v35;
  v43[3] = v39;
  v44 = 2066391179 * ((((v41 - 168) | 0x4AACDF) - ((v41 - 168) & 0x4AACDF)) ^ 0xAF6D2EC7);
  *(v41 - 168) = v42 - v44 + 1270;
  *(v41 - 164) = 574624316 - v44;
  STACK[0x2C0] = a2;
  (*(v40 + 8 * (v42 ^ 0x91F)))(v41 - 168);
  return a18(19, &a35, 1639, 51);
}

void sub_100012594(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a5 = v8 + 50899313 * (&a3 ^ 0x142F9D9B) + 1303;
  a6 = v7;
  a3 = a1;
  a4 = v7;
  (*(v6 + 8 * (v8 ^ 0xB51)))(&a3);
  sub_100031160();
}

uint64_t sub_100012664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  a17 = v17 - 1;
  v22 = *(v19 + 48 * (*(&a17 + 6 * (v17 + a8) + 2) + v21) + 36) != ((v18 + 1037433837) & 0xCFFBC9F3 ^ 0x622924DD);
  return (*(v20 + 8 * (((4 * v22) | (32 * v22)) ^ v18)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100012700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30)
{
  v34 = 742307843 * ((((2 * (v33 - 152)) | 0xBCA20E114CFCED68) - (v33 - 152) + 0x21AEF8F75981894CLL) ^ 0x6DCDDA63B85CFBE1);
  *a30 = 89408770;
  v35 = *v31;
  v36 = v30 - 870603556 + v34;
  *(v33 - 112) = v36;
  *(v33 - 136) = v36 - 3;
  *(v33 - 132) = (v30 - 643332360) ^ v34;
  *(v33 - 152) = v34 ^ 1;
  STACK[0x5B0] = v34 + 5119;
  *(v33 - 128) = v36 - 128;
  STACK[0x5C8] = v35 - v34;
  v37 = (*(v32 + 8 * (a5 + v30 + 2353)))(v33 - 152);
  return (*(v32 + 8 * *(v33 - 108)))(v37);
}

uint64_t sub_100012708(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = (v7 - 1) & 0xF;
  v14 = a3 < 0x10 || v5 - v8 - v7 + v10 + 1 < ((v3 - 441662099) & 0x1A533C5E) - 2122 || v4 - v8 - v7 + v10 + 6 < ((v3 - 441662099) ^ 0xE5ACCBEBuLL) || (v6 - v8 - v7 + v10 + 3) < 0x10;
  return (*(v9 + 8 * ((23 * v14) ^ v3)))();
}

uint64_t sub_1000127AC()
{
  v5 = (v3 + v0 + 567) | 0x80;
  HIDWORD(v11) = (v3 + v0 + 1926) ^ (((-1355062117 - (&v10 | 0xAF3B649B) + (&v10 | 0x50C49B64)) ^ 0xDD69F988) * v2);
  v10 = v8;
  (*(v1 + 8 * (v3 + v0 + 2000)))(&v10);
  v11 = v8;
  LODWORD(v10) = v3 - ((&v10 & 0x82431BD9 | ~(&v10 | 0x82431BD9)) ^ 0xF01186CA) * v2 + v0 + 918;
  (*(v1 + 8 * (v0 ^ (v4 + 47))))(&v10);
  LODWORD(v10) = v5 - (((&v10 | 0x5DF6FF68) - &v10 + (&v10 & 0xA2090090)) ^ 0xD05B9D84) * v2 + 223;
  v11 = v7;
  (*(v1 + 8 * (v5 ^ 0xAE4)))(&v10);
  return v9 ^ 0xE8A0F0F8;
}

uint64_t sub_100012928(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v14 = a4 - 8;
  v15 = ((31 * (v11 ^ 0x3FFu)) ^ a6) & (v9 + v14 - 1);
  v17.val[0].i64[0] = v15;
  v17.val[0].i64[1] = (v9 + v14 + 14) & 0xF;
  v17.val[1].i64[0] = (v9 + v14 + 13) & 0xF;
  v17.val[1].i64[1] = (v9 + v14 + 12) & 0xF;
  v17.val[2].i64[0] = (v9 + v14 + 11) & 0xF;
  v17.val[2].i64[1] = (v9 + v14 + 10) & 0xF;
  v17.val[3].i64[0] = (v9 + v14 + 9) & 0xF;
  v17.val[3].i64[1] = (v9 + v14) & 0xF ^ 8;
  *(v10 - 8 + v9) = veor_s8(veor_s8(veor_s8(*(v6 + v15 - 7), *(a5 - 8 + v9)), veor_s8(*(v7 + v15 - 7), *(v8 + v15 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v13 + 8 * ((2046 * (v12 == v14)) ^ v11)))();
}

uint64_t sub_10001294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int32x4_t a20, int32x4_t a21)
{
  v23 = (a5 - 69);
  a20 = vdupq_n_s32(0xF9467F82);
  a21 = a20;
  v24 = ((a5 - 1271657869) & 0xBCBF1EDu) - 356;
  v25 = *(v22 + 8 * ((60 * (v24 == (v21 & 0xFFFFFFF8))) ^ v23));
  return v25(a1, v24, v23, &a20, v25, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void sub_1000129B0()
{
  v9 = *(v6 + 8);
  v10 = ((v5 + 1268) ^ (v1 - 1898) ^ *(v9 + 4 * (v8 - 1))) >> v2;
  *(v9 + 4 * v4) = v10 + v1 - (v3 & (2 * v10));
  if (*(*(v6 + 8) + 4 * v4) == v1)
  {
    v11 = 1040149695;
  }

  else
  {
    v11 = 1040149696;
  }

  v12 = v11 + v0;
  if ((*(v6 + 4) + v7) >= 0x7FFFFFFF)
  {
    v12 = 1526616442 - v12;
  }

  *(v6 + 4) = v12;
}

uint64_t sub_100012AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v25 = 1564307779 * (((&a17 | 0xC2C1B9EF) - (&a17 & 0xC2C1B9EF)) ^ 0x55CC75FC);
  a22 = 1016788250 - v25;
  a21 = &a15;
  a19 = v23 - v25 - 2013066925;
  a20 = -1307001141 - v25;
  a17 = a14;
  v26 = (*(v24 + 8 * (v23 + 1916)))(&a17);
  v27 = a18 == v22 + ((v23 + 655) | 4) - 1044;
  return (*(v24 + 8 * ((v27 | (8 * v27)) ^ v23)))(v26);
}

uint64_t sub_100012C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40)
{
  v44 = a33 & 0x47A307FE;
  if (((v41 | ~(v43 + 1387412315)) & (v43 + 1387412315 - v41) | v41 & ~(v43 + 1387412315)) >= 0)
  {
    v45 = 981052133;
  }

  else
  {
    v45 = 981052134;
  }

  *a40 ^= v44 ^ 0x3A79AF26 ^ (a35 + v45);
  return (*(v42 + 8 * ((3391 * (v40 + 1387412313 + (v44 ^ 0xAD4DC156) == 2)) ^ v44)))();
}

uint64_t sub_100012C9C@<X0>(uint64_t a1@<X8>)
{
  v8 = a1 + 2;
  v9 = v2 - 2;
  *(v9 + 1242) = ((v4 + v8) ^ v5) * (v4 + v8 + 17);
  *(v9 + v3) = ((v4 + v8) ^ 0xBB) * (v4 + v8 + 18);
  return (*(v7 + 8 * (((v8 != 30) * v6) ^ v1)))();
}

uint64_t sub_100012CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int32x4_t a20, int32x4_t a21)
{
  v23 = a6 & 0xFFFFFFF8;
  a20 = vdupq_n_s32(0xF9467F82);
  a21 = a20;
  v24 = *(v22 + 8 * (((v23 == 8) * (v21 + 520)) ^ (v21 - 70)));
  return v24(a1, a2, a3, a4, v23, a6, &a20, v24, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_10001305C@<X0>(int a1@<W8>)
{
  v14 = (a1 + v4) & v5;
  v15 = v2 - 3811511523;
  v16 = **v3 - (v14 ^ (v9 + 34) ^ v11 ^ *v1);
  v18 = (v16 ^ v13) + (v6 & (2 * v16)) + v7 != v10 || v15 == 0;
  return (*(v12 + 8 * ((v18 * v8) ^ v14)))();
}

uint64_t sub_1000130F8@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 ^ 0x88E));
  v9 = *(v6 + 8 * (a1 ^ 0x8AB));
  v10 = *v8;
  v11 = *(v9 - 4);
  v21[0] = *v11 - 64;
  v21[1] = v11[1] - 64;
  v21[2] = v11[2] - 64;
  v21[3] = v11[3] - 64;
  v21[4] = v11[4] - 64;
  v21[5] = v11[5] - 64;
  v21[6] = v11[6] - 64;
  v21[7] = v11[7] - 64;
  v21[8] = v11[8] - 64;
  v21[9] = v11[9] - 64;
  v21[10] = v11[10] - 64;
  v21[11] = v11[11] - 64;
  v21[12] = v11[12] - 64;
  v21[13] = v11[13] - 64;
  v21[14] = v11[14] - 64;
  v21[15] = v11[15] - 64;
  v21[16] = v11[16] - 64;
  v21[17] = v11[17] - 64;
  v21[18] = v11[18] - 64;
  v21[19] = v11[19] - 64;
  v12 = *(v9 - 4);
  v21[20] = v12[20] - 64;
  v21[21] = v12[21] - 64;
  v21[22] = v12[22] - 64;
  v21[23] = v12[23] - 64;
  v21[24] = v12[24] - 64;
  v21[25] = v12[25] - 64;
  v21[26] = v12[26] - 64;
  v21[27] = v12[27] - 64;
  v21[28] = v12[28] - 64;
  v21[29] = v12[29] - 64;
  result = (*(v4 + 8 * (a1 + 356)))(v10, v21, v2);
  if (result == 1102)
  {
    v14 = *v8;
    v15 = *(v6 + 8 * (v5 ^ 0x866));
    v16 = *(v15 - 4);
    v22[0] = ((43 * (v5 ^ 0x1A)) ^ 0xBE) - 93 * *v16;
    v22[1] = -93 * v16[1] + 12;
    v22[2] = -93 * v16[2] + 12;
    v22[3] = -93 * v16[3] + 12;
    v22[4] = -93 * v16[4] + 12;
    v22[5] = -93 * v16[5] + 12;
    v22[6] = -93 * v16[6] + 12;
    v22[7] = -93 * v16[7] + 12;
    v22[8] = -93 * v16[8] + 12;
    v22[9] = -93 * v16[9] + 12;
    v22[10] = -93 * v16[10] + 12;
    v22[11] = -93 * v16[11] + 12;
    v22[12] = -93 * v16[12] + 12;
    v22[13] = -93 * v16[13] + 12;
    v22[14] = -93 * v16[14] + 12;
    v22[15] = -93 * v16[15] + 12;
    v22[16] = -93 * v16[16] + 12;
    v17 = *(v15 - 4);
    v22[17] = -93 * v17[17] + 12;
    v22[18] = -93 * v17[18] + 12;
    v22[19] = -93 * v17[19] + 12;
    v18 = *(v4 + 8 * ((1172 * ((*(v4 + 8 * (v5 ^ 0x17C)))(v14, v22, v2) == 0)) ^ (v5 - 1114)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v20 = 392145856;
  }

  else
  {
    *(v7 + 352) |= (v5 - 1114) ^ 0x3B8;
    *(v7 + 52) = 192438812;
    result = (*(v4 + 8 * (v5 + 373)))(*v2, v7 + 340, v7 + 344, v7 + 348, v3);
    v19 = *(v1 + 16);
    *(*(v1 + 24) - 0x6F65BB927020922BLL) = *v2;
    *(v19 - 0x7EBFE2D7880B2674) = *v3 + ((v5 + 784343571) & 0xD13FDDEC ^ 0xC350135C) - ((2 * *v3) & 0x86A036A0);
    v20 = -392105736;
  }

  *(v1 + 8) = v20;
  return result;
}

uint64_t sub_100013554(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = (a4 ^ (a4 - 1361) ^ 0x2DBA5853) + v17;
  v21 = v20 < 0x2DBA5CE0;
  v22 = v20 > a17;
  if (a17 < 0x2DBA5CE0 != v21)
  {
    v22 = v21;
  }

  return (*(v18 + 8 * ((v22 * (a16 & 0x7C4C9DF5 ^ 0x507)) ^ (a7 + a4 + 1555))))(v19 - 220, 775, a15);
}

uint64_t sub_10001362C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - v4 + a1 - 7 - 1) = *(v2 - 7 + v3 - v4);
  v6 = v4 + (v5 ^ 0x406u) - 1179 == (v3 & 0xFFFFFFF8);
  return (*(v1 + 8 * ((v6 | (8 * v6)) ^ v5)))();
}

uint64_t sub_100013678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = 2066391179 * ((((v15 - 128) | 0x121ACDB7) - (v15 - 128) + ((v15 - 128) & 0xEDE53248)) ^ 0xBD3D4FAF);
  *(v15 - 120) = v15 - 228;
  *(v15 - 128) = v14 - v16 + 1263;
  *(v15 - 124) = a13 - v16 + (((v14 ^ 0x6C8) - a8 - 1326) ^ 0x3E2890F0);
  v17 = (*(v13 + 8 * (v14 + 2316)))(v15 - 128);
  v18 = *(v15 - 160);
  *(v15 - 228 + (v18 & 0x3F)) = -77;
  return (*(v13 + 8 * ((2199 * ((v18 & 0x3Fu) > 0x37)) ^ v14)))(v17, 2498662708);
}

uint64_t sub_1000138FC()
{
  *(v7 - 136) = v6;
  *(v7 - 128) = v2;
  *(v7 - 144) = (v5 + 116) ^ (1037613739 * ((~((v7 - 144) | 0xDA26ED99) + ((v7 - 144) & 0xDA26ED99)) ^ 0xF4DB3F19));
  *(v7 - 120) = v6;
  *(v7 - 112) = v1;
  (*(v3 + 8 * (v5 + 1139)))(v7 - 144);
  v8 = 210068311 * ((v7 - 144) ^ 0x92D63FA4);
  *(v7 - 128) = v0;
  *(v7 - 144) = v8 + v4 - 215068454;
  *(v7 - 136) = v5 - v8 - 583;
  v9 = (*(v3 + 8 * (v5 ^ 0xDAA)))(v7 - 144);
  return (*(v3 + 8 * ((54 * (*(v7 - 140) == -1611310844)) ^ v5)))(v9);
}

uint64_t sub_100013A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v25 = 1082434553 * ((v24 + 1761615036 - 2 * ((v24 - 160) & 0x69001D5C)) ^ 0xF247EBD6);
  STACK[0x230] = &a21;
  STACK[0x258] = &a15;
  STACK[0x250] = &a19;
  STACK[0x240] = &a17;
  STACK[0x260] = a13;
  *(v24 - 136) = v25 + v23 + 1256;
  *(v24 - 148) = v25 + v21 + ((v23 + 88098927) | 0x8918090) - 165357642;
  v26 = (*(v22 + 8 * (v23 + 2160)))(v24 - 160);
  return (*(v22 + 8 * ((1819 * (*(v24 - 152) == (((v23 + 596) | 0xC0) ^ 0xE8A0F33F))) ^ v23)))(v26);
}

uint64_t sub_100013B2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  HIDWORD(v17) = a1 ^ a6;
  LODWORD(v17) = a1 ^ v16;
  v18 = (v17 >> 27) + (a8 ^ v15 ^ a7 ^ v9) + (((v10 ^ 0x9C521B37) + 1672340681) ^ ((v10 ^ 0xEB9390D6) + 342650666) ^ ((v10 ^ 0xD58D5B8C) + 712156276)) + 30683490 + (((*(v14 + 4 * (a2 + v11)) ^ 0xEF15DA14) + 283780588) ^ ((*(v14 + 4 * (a2 + v11)) ^ 0xFBD236C6) + 70109498) ^ ((*(v14 + 4 * (a2 + v11)) ^ 0xFC671C2A) + 60351446));
  return (*(v13 + 8 * ((86 * (a2 + 1 != v12 + 24)) ^ v8)))(v18 ^ ((v18 ^ 0xE030C462) + 398704578) ^ ((v18 ^ 0x39600279) - 829195813) ^ ((v18 ^ 0x2AE3BDB8) - 586103268) ^ ((v18 ^ 0xFBBFFFFF) + 206341213) ^ 0xAA405431);
}

uint64_t sub_100013CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v42 = v40 + v38;
  v43 = (a35 + 1) & 0xF;
  v44 = v36 + v43 + 1 - v38;
  v45 = v36 + v43 + 1;
  v46 = v43 - v38 + v35 + 4;
  v47 = v35 + v43 + ((v39 - 956414254) ^ 0xC6FE47EFLL);
  v48 = v43 - v38 + v37 + 6;
  v49 = v37 + v43 + ((v39 - 956414254) & 0x3901BAD6 ^ 0x2C4);
  v51 = v45 > v40 && v44 < v42;
  if (v46 < v42 && v47 > v40)
  {
    v51 = 1;
  }

  v54 = v48 < v42 && v49 > v40 || v51;
  return (*(v41 + 8 * ((82 * (v54 ^ 1)) ^ v39)))();
}

uint64_t sub_100013DB8@<X0>(unint64_t a1@<X2>, _DWORD *a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = (a2[1] ^ v10) + (v13 ^ HIDWORD(a1)) + v14 * (*(*(a10 + 8) + 4) ^ v10);
  *a2 = (v19 + v11 - ((v19 << (v18 - 11)) & (v12 + 268))) ^ v16;
  return (*(v15 + 8 * (((a3 == 2) * v17) ^ v18)))();
}

uint64_t sub_100013E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v28 = &a17;
  HIDWORD(a18) = -843532609 * (((v28 | 0x5CE7917D) - (v28 & 0x5CE7917D)) ^ 0xAAC5F8) + 1265912287 * v26 + 441172865;
  LODWORD(a19) = (843532609 * (((v28 | 0x5CE7917D) - (v28 & 0x5CE7917D)) ^ 0xAAC5F8)) ^ 0x720;
  a17 = a14;
  (*(v27 + 18752))(&a17);
  v29 = 843532609 * (((&a17 | 0x53487D05) + (~&a17 | 0xACB782FA)) ^ 0xF052981);
  HIDWORD(a18) = 1265912287 * v25 - v29 + 441172865;
  LODWORD(a19) = v29 ^ 0x720;
  a17 = a14;
  (*(v27 + 18752))(&a17);
  v30 = 1037613739 * ((((2 * &a17) | 0xD297D334) - &a17 - 1766582682) ^ 0xB849C4E5);
  a18 = a14;
  a19 = a12;
  a20 = v30 ^ 0x39A;
  a21 = (v24 ^ 0xAECFF7D9) + ((2 * v24) & 0x5D9FEFB2) + 2013199672 + v30;
  (*(v27 + 18256))(&a17);
  v31 = 1037613739 * (((&a17 | 0x2919829F) - (&a17 & 0x2919829F)) ^ 0xF81BAFE0);
  a18 = a14;
  a19 = v23;
  a20 = v31 ^ 0x39A;
  a21 = (a13 ^ 0x3FCEFD75) + ((2 * a13) & 0x7F9DFAEA) - 419432548 + v31;
  (*(v27 + 18256))(&a17);
  v32 = 1037613739 * (&a17 ^ 0xD1022D7F);
  a20 = v32 ^ 0x39A;
  a21 = (v22 ^ 0xEECFFF73) + ((2 * v22) & 0xDD9FFEE6) + 939455902 + v32;
  a18 = a14;
  a19 = v21;
  v33 = (*(v27 + 18256))(&a17);
  return (*(v27 + 8 * ((766 * (a17 == -392105736)) ^ 0x181u)))(v33);
}

uint64_t sub_100014104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((~((v17 - 144) | 0x4E6BB728) + ((v17 - 144) & 0x4E6BB728)) ^ 0x23427773) * v14;
  *(v17 - 144) = v18 + v15 + 251 + (((v15 ^ 0x8591D023) + v16) ^ 0xEDBCA4FB) + ((2 * ((v15 ^ 0x8591D023) + v16)) & 0xDB7949F6) + 2145376912;
  *(v17 - 136) = v15 - v18 + 533;
  *(v17 - 128) = a13;
  v19 = (*(v13 + 8 * (v15 + 2306)))(v17 - 144);
  return (*(v13 + 8 * ((4 * (*(v17 - 140) == -1611310844)) | ((*(v17 - 140) == -1611310844) << 6) | v15)))(v19);
}

uint64_t sub_10001421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  v44 = 1361651671 * (((v37 | 0xF07A883A91530C94) - (v37 & 0xF07A883A91530C94)) ^ 0x23D7FB034271FC18);
  *(v43 - 132) = v40 - v44;
  *(v43 - 128) = -1361651671 * (((v37 | 0x91530C94) - (v37 & 0x91530C94)) ^ 0x4271FC18);
  STACK[0x5A8] = 3 - v44;
  STACK[0x5C8] = (v42 + 1) - v44;
  *(v43 - 112) = 1212455568 - v44;
  *(v43 - 136) = (a37 ^ ((((((v41 - 1387411690) ^ v38) & v38) >> (__clz((v41 - 1387411690) ^ v38 | 1) ^ 0x1F)) & 1) == 0)) - v44;
  *(v43 - 144) = v44 + v40 - 19;
  v45 = (*(v39 + 19016))(v43 - 152);
  return (*(v39 + 8 * *(v43 - 140)))(v45);
}

uint64_t sub_100014318(uint64_t a1)
{
  v5 = *(v3 + 344);
  v6 = (*(a1 + 16) ^ v1) - 346670653;
  if (v5 > 0xDBE871DE != v6 < 0x24178E21)
  {
    v7 = v5 > 0xDBE871DE;
  }

  else
  {
    v7 = v5 + 605523489 > v6;
  }

  return (*(v2 + 8 * ((!v7 * (((v4 + 474) ^ 0x6AC) - 180)) ^ v4)))();
}

uint64_t sub_100014428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v65 = v62 ^ 0xEA02B769;
  v66 = *a27;
  if ((*a27 & 3) != ((v63 + (v62 ^ 0xEA02B769) - 796) ^ 0xAD4DC4A8) || (v67 = *(&off_100374800 + v62 + 368921534), v69 = *(v67 - 4), v68 = (v67 - 4), v69))
  {
    *a16 = 392145735;
    return sub_100028674(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
  }

  else
  {
    v70 = (v65 - 254869693) & 0xF30FFEA;
    *v68 = v66;
    **(&off_100374800 + (v62 ^ 0xEA02B466)) = 255;
    *v66 |= (v66[*v66 & 0x3ELL] ^ (v70 - 587)) << 16;
    v66[4] |= ~v66[v66[4] & 0x3ELL] << 16;
    v66[8] |= ~v66[v66[8] & 0x3ELL] << 16;
    v66[12] |= ~v66[v66[12] & 0x3ELL] << 16;
    v66[16] |= ~v66[v66[16] & 0x3ELL] << 16;
    v66[20] |= ~v66[v66[20] & 0x3ELL] << 16;
    v66[24] |= ~v66[v66[24] & 0x3ELL] << 16;
    v66[28] |= ~v66[v66[28] & 0x3ELL] << 16;
    v66[32] |= ~v66[v66[32] & 0x3ELL] << 16;
    v66[36] |= ~v66[v66[36] & 0x3ELL] << 16;
    v66[40] |= ~v66[v66[40] & 0x3ELL] << 16;
    v66[44] |= ~v66[v66[44] & 0x3ELL] << 16;
    v66[48] |= ~v66[v66[48] & 0x3ELL] << 16;
    v66[52] |= ~v66[v66[52] & 0x3ELL] << 16;
    v66[56] |= ~v66[v66[56] & 0x3ELL] << 16;
    v66[60] |= ~v66[v66[60] & 0x3ELL] << 16;
    v71 = (*(v64 + 8 * (v65 + 1588)))(&a62, 0, 1024);
    return (*(v64 + 8 * ((((((v70 - 46) | 0x100) ^ 0x33C) == 32) * (((v70 + 604832310) | 0x8940C028) + 1387415118)) ^ v70)))(v71);
  }
}

uint64_t sub_100014834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v29 = *(v28 - 156);
  if (v29 == 1)
  {
    v33 = *(v28 - 188);
    v32 = *(v28 - 184);
    *(v28 - 196) = (8 * (((a3 - 76) & 0xBC ^ 0x1A) + v32 + (~(2 * v32) | 5))) ^ 0x5B;
    *(v28 - 195) = (v32 >> 5) ^ 0x33;
    *(v28 - 194) = (v32 >> 13) ^ 0x33;
    *(v28 - 193) = (v32 >> 21) ^ 0x33;
    *(v28 - 192) = ((__PAIR64__(v33, v32) >> 29) - ((2 * (__PAIR64__(v33, v32) >> 29)) & 0xB0) - 40) ^ 0xEB;
    *(v28 - 191) = (v33 >> 5) ^ 0x33;
    *(v28 - 190) = (v33 >> 13) ^ 0x33;
    v31 = (v33 >> 21) ^ 0x33;
    goto LABEL_5;
  }

  if (v29 == 2)
  {
    v31 = *(v28 - 188);
    v30 = *(v28 - 184);
    *(v28 - 196) = (v31 >> 21) - ((v31 >> 20) & 0x66) + 51;
    *(v28 - 195) = (v31 >> 13) + (~(v31 >> 13 << ((a5 + a3 - 50) ^ 0xB5)) | 0x99) + 52;
    *(v28 - 194) = (v31 >> 5) - ((v31 >> 4) & 0x66) + 51;
    *(v28 - 193) = (__PAIR64__(v31, v30) >> 29) - ((2 * (__PAIR64__(v31, v30) >> 29)) & 0x66) + 51;
    *(v28 - 192) = (v30 >> 21) - ((v30 >> 20) & 0x66) + 51;
    *(v28 - 191) = (v30 >> 13) - ((v30 >> 12) & 0x66) + 51;
    *(v28 - 190) = (v30 >> 5) - ((v30 >> 4) & 0x66) + 51;
    LOBYTE(v31) = (8 * (v30 - ((2 * v30) & 0x1A)) - 24) ^ 0xDB;
LABEL_5:
    *(v28 - 189) = v31;
  }

  return sub_10004970C(a1, a12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_100014A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(a2 + v7) ^ 0x33;
  return (*(v6 + 8 * (((v7 != (v4 ^ 0x43F)) * v5) ^ v2)))();
}

uint64_t sub_100014B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v16 = v11 ^ a6;
  v17 = a6 ^ a4;
  v18 = a1 ^ a5 ^ 0x60FC956F0B03D8E4;
  v19 = (v18 ^ 0xF5511DB044F3027CLL) & (a4 ^ 0xC1DA0EBD84DCA991);
  v20 = a5 & 0xF66FF2ACF4FF80A4 ^ 0x3643122020A70024 ^ (v18 ^ 0xFCC110E34FF37D27) & (a5 ^ 0x3ED3123228A71A6FLL);
  v21 = (a6 ^ 0x8A8587244583130DLL) & (a4 ^ 0x495F9796651A16AFLL) ^ a6 & 0x2AAA435C8873B7DBLL;
  v22 = v17 & 0x8000000;
  v23 = (v16 ^ 0x2608BE41A8BBD983) + v20 - 2 * ((v16 ^ 0x2608BE41A8BBD983) & v20);
  v24 = (__ROR8__(__ROR8__(v16 ^ 0xA9454EEB8E5F652, 58) ^ 0x191881D15AF79182, 6) ^ 0x5FAEADC52209442FLL) & (a5 ^ 0xC12CEDCDD758E590) ^ a5 & 0x84A9DA9288C34A47;
  if ((v24 & v17 & 0x8000000) != 0)
  {
    v22 = -v22;
  }

  v25 = (v22 + (v24 ^ 0x8028C88080404000)) ^ v17 & 0xFFFFFFFFF7FFFFFFLL;
  v26 = (v13 + 407);
  v27 = (v26 + 0x5DD02588964AF217) & v18;
  v28 = v21 ^ v18;
  v29 = v19 ^ a5 ^ 0x60FC956F0B03D8E4 ^ v27 ^ v23;
  v30 = __ROR8__(__ROR8__(a4 ^ v28 ^ v16 & 0xF35BA98AF4E601E9 ^ (v16 ^ 0x2608BE41A8BBD983) & (v17 ^ 0x1A2BFA645C0CB390) ^ 0xFF9848B43D1987E0, 49) ^ 0x6AD33ABD16F18106, 15);
  return (*(v15 + 8 * (((a8 > ((v26 - 586 + v26 - 434 - 1544) & (2 * v12)) + (v12 ^ 1u)) * v14) ^ v26)))((v28 >> 6) ^ (v28 >> 1) ^ v28 ^ 0xE7927A322DD8C13DLL ^ ((v28 ^ 0xE7927A322DD8C13DLL) << 58) ^ ((v28 << 63) | 0x427362B35C85E5BLL) ^ 0x81F50075EA9922F0, a2, a3, v30 ^ 0x505453D4DF8156A8 ^ ((v30 ^ 0x505453D4DF8156A8) << 47) ^ v10 ^ ((v30 >> 17) ^ (v30 >> 10) | ((v30 ^ 0x505453D4DF8156A8) << 54)), v8 ^ __ROR8__((((v29 >> 51) & 0x3FF ^ 0xADEB377E075F8443) & (((v29 ^ 0xFC90F0AFA56AC364) << 13) ^ 0xC08D8F848E1997FFLL) | ((v29 ^ 0xFC90F0AFA56AC364) << 13) & 0x5214C881F8A06000) ^ __ROR8__(v29 ^ __ROR8__(v29 ^ 0xFC90F0AFA56AC364, 39) ^ (((v29 ^ 0xFC90F0AFA56AC364) >> 61) | 0x222EF02A7307C2A8) ^ 0x2B59A9B2D09A011, 54) ^ v9, 10), ((v25 ^ 0xBBAF810DA22B01A4) << 23) ^ 0x5ACA992D9078B028 ^ (((v25 ^ 0xBBAF810DA22B01A4) >> 41) | ((v25 ^ 0xBBAF810DA22B01A4) << 57)) ^ (((v25 ^ 0xBBAF810DA22B01A4) >> 7) + (v25 ^ 0xBBAF810DA22B01A4) - 2 * (((v25 ^ 0xBBAF810DA22B01A4) >> 7) & (v25 ^ 0xBBAF810DA22B01A4))));
}

uint64_t sub_100014F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = 2066391179 * ((((v14 - 120) | 0xCE837F2) - ((v14 - 120) & 0xCE837F2)) ^ 0xA3CFB5EA);
  *(v14 - 112) = v14 - 220;
  *(v14 - 120) = v13 - v15 + 1240;
  *(v14 - 116) = a12 - v15 - 1429863996;
  v16 = (*(v12 + 8 * (v13 ^ 0x97D)))(v14 - 120);
  v17 = *(v14 - 152);
  *(v14 - 220 + (v17 & 0x3F)) = -77;
  return (*(v12 + 8 * ((((v17 & 0x3Fu) > 0x37) * ((v13 - 71311573) & 0x6FE5F7FE ^ 0x6BA5D209)) ^ v13)))(v16);
}

uint64_t sub_1000150A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v27 = &a18 | 0xF62481BB;
  a18 = a13;
  HIDWORD(a19) = -843532609 * ((-165379653 - v27 + (&a18 | 0x9DB7E44)) ^ 0x55962AC1) + 1265912287 * v24 + ((v25 + 68662165) & 0xBEF) + 441171954;
  LODWORD(a20) = (v25 + 790) ^ (843532609 * ((-165379653 - v27 + (&a18 | 0x9DB7E44)) ^ 0x55962AC1));
  (*(v26 + 8 * (v25 + 1310)))(&a18);
  v28 = 1037613739 * ((2 * (&a18 & 0x2AFE6FD8) - &a18 - 721317851) ^ 0x403BD5A);
  a21 = (v25 - 112) ^ v28;
  a22 = (v23 ^ 0x6EFFF531) + ((2 * v23) & 0xDDFFEA62) - 1211170848 + v28;
  a19 = a13;
  a20 = v22;
  (*(v26 + 8 * (v25 ^ 0xCE0)))(&a18);
  v29 = 1037613739 * (((&a18 | 0xFD42BF29) - &a18 + (&a18 & 0x2BD40D0)) ^ 0x2C409256);
  a19 = a13;
  a20 = a11;
  a21 = (v25 - 112) ^ v29;
  a22 = (a10 ^ 0x7ECFF55D) + ((2 * a10) & 0xFD9FEABA) - 1476460620 + v29;
  v30 = (*(v26 + 8 * (v25 + 1248)))(&a18);
  return (*(v26 + 8 * ((530 * (a18 == -392105736)) ^ v25)))(v30);
}

uint64_t sub_1000152A4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (a8 + 4 * v9);
  *v13 = a1;
  v13[1] = a1;
  return (*(v12 + 8 * (((v10 == v9) * v8) ^ v11)))();
}

uint64_t sub_1000152CC@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5.i64[0] = 0x6666666666666666;
  v5.i64[1] = 0x6666666666666666;
  v6.i64[0] = 0x3333333333333333;
  v6.i64[1] = 0x3333333333333333;
  v7 = ((a1 - 270812221) & 0x1FFBA7FE ^ 0xFFFFFFFFFFFFFC43) + v4;
  v8 = *(v3 + v7 - 15);
  v9 = *(v3 + v7 - 31);
  v10 = a2 + v7;
  *(v10 - 15) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v5)), v6);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v5)), v6);
  return (*(v2 + 8 * ((924 * ((v4 & 0xFFFFFFE0) == 32)) ^ (a1 + 265774558))))();
}

uint64_t sub_1000153B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((13 * (v5 == ((v3 - 338785587) & 0x143173DE ^ 0x96))) ^ (v3 - 58))))();
}

uint64_t sub_100015404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *(v17 - 120) = v14;
  *(v17 - 136) = v13;
  *(v17 - 128) = (v16 - 941) ^ (1785193651 * ((2 * ((v17 - 136) & 0x32ADCBD0) - (v17 - 136) - 850250711) ^ 0xDE8ED809));
  v18 = (*(v15 + 8 * (v16 + 144)))(v17 - 136);
  return (*(v15 + 8 * ((59 * (a13 < 1)) ^ (v16 - 966))))(v18);
}

uint64_t sub_10001552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v23 - 104) = &a18;
  *(v23 - 112) = &a16;
  *(v23 - 120) = (v19 + 1314) ^ (((~((v23 - 120) | v20) + ((v23 - 120) & v20)) ^ 0x80B5AD69) * v21);
  v24 = (*(v18 + 8 * (v19 + 1460)))(v23 - 120);
  return (*(v18 + 8 * (((((v19 ^ (*(v23 - 116) > v22)) & 1) == 0) * ((v19 ^ 0x76A) - 1018)) ^ v19)))(v24);
}

uint64_t sub_100015738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25)
{
  v29 = (a23 ^ (a5 + 10 * a15 - 2270)) + a24;
  v27 = a18 < a17;
  if (v27 == v29 > 0xE4FE71E0)
  {
    v27 = ((10 * a15) ^ 0x893) + 1066 + v29 + 453085608 < a18;
  }

  return (*(v26 + 8 * ((50 * !v27) ^ (10 * a15))))(a1, a25 + (v25 ^ a5), a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100015894(int8x16_t a1, int8x16_t a2, int32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v39 = *(v35 + 8 * v31);
  v40 = *(v38 - 180);
  v42 = *(v38 - 172);
  v41 = *(v38 - 168);
  v43 = *(v38 - 156);
  if (v43 == 2)
  {
    v86 = vld4q_s8(v32);
    v58 = veorq_s8(v86.val[1], a1);
    _Q21 = vmovl_high_u8(v58);
    _Q20 = vmovl_u8(*v58.i8);
    v61 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v62 = vmovl_u8(*&veorq_s8(v86.val[2], a1)).u64[0];
    v86.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v86.val[3], a1)));
    v63 = vorrq_s8(vorrq_s8(vorrq_s8(v61, vshll_n_u16(v62, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v86.val[0], a1))), 0x18uLL)), v86.val[2]);
    v86.val[2] = veorq_s8(vandq_s8(v63, a2), (*&v86.val[2] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v36 = vaddq_s32(vsubq_s32(v63, vaddq_s32(v86.val[2], v86.val[2])), a3).u32[0];
    v64 = &v36[v33 + 1901376183];
    *v64 = HIDWORD(a23) ^ __ROR4__(*(v64 - 3) ^ v37 ^ *(v64 - 8) ^ *(v64 - 14) ^ *(v64 - 16), 31);
    return (*(v35 + 8 * ((1162 * (v34 == 1901376120)) ^ a24)))(v40);
  }

  else if (v43 == 1)
  {
    v87 = vld4q_s8(v32);
    v44 = a8 + a6 - 498;
    v45 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v87.val[0], a1)));
    v46 = veorq_s8(v87.val[2], a1);
    _Q25 = vmovl_u8(*v46.i8);
    _Q24 = vmovl_high_u8(v46);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v87.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v87.val[3], a1))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v87.val[1], a1)), 8uLL), v45));
    v55 = veorq_s8(vandq_s8(v87.val[2], a2), (*&v45 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v36 = vaddq_s32(vsubq_s32(v87.val[2], vaddq_s32(v55, v55)), a3).u32[0];
    v56 = *(v35 + 8 * ((1828 * (a25 + 1 == v34)) ^ v44));
    return v56(v56, v44 ^ 0x20Cu, 3979919086, 3747905153, a25 + 1, 1901376183, v41, 6 * (v44 ^ 0x20Cu), a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v39, a23, a24, a25, a26, a27, a28, a29, a30, a31);
  }

  else
  {
    v65 = (((v40 ^ 0x44F4D351) - 1156895569) ^ ((v40 ^ 0xC48F7B68) + 997229720) ^ ((v40 ^ 0x22377854) - 574060628)) + (((*(v38 - 180) ^ 0xB4154015) + 1273675755) ^ ((*(v38 - 180) ^ 0xE1EDA989) + 504518263) ^ ((*(v38 - 180) ^ 0xF7B439F1) + 139183631)) - 1155342335;
    v66 = (v65 ^ 0x974B2DD) & (2 * (v65 & 0x8976C0D9)) ^ v65 & 0x8976C0D9;
    v67 = ((2 * (v65 ^ 0xB5932FD)) ^ 0x45FE448) & (v65 ^ 0xB5932FD) ^ (2 * (v65 ^ 0xB5932FD)) & 0x822FF224;
    v68 = v67 ^ 0x82201224;
    v69 = (v67 ^ 0xF0000) & (4 * v66) ^ v66;
    v70 = ((4 * v68) ^ 0x8BFC890) & v68 ^ (4 * v68) & 0x822FF224;
    v71 = (v70 ^ 0x2FC000) & (16 * v69) ^ v69;
    v72 = ((16 * (v70 ^ 0x82003224)) ^ 0x22FF2240) & (v70 ^ 0x82003224) ^ (16 * (v70 ^ 0x82003224)) & 0x822FF220;
    v73 = v71 ^ 0x822FF224 ^ (v72 ^ 0x22F2200) & (v71 << 8);
    v74 = (((*(v38 - 176) ^ 0x67372F53) - 1731669843) ^ ((*(v38 - 176) ^ 0x20646273) - 543449715) ^ ((*(v38 - 176) ^ 0xE51F9D4D) + 450912947)) + (((*(v38 - 176) ^ 0x4193A5A5) - 1100195237) ^ ((*(v38 - 176) ^ 0x6EC67C35) - 1858501685) ^ ((*(v38 - 176) ^ 0x8D1909FD) + 1927738883)) + 1209719385;
    *(v38 - 180) = v65 ^ (2 * ((v73 << 16) & 0x22F0000 ^ v73 ^ ((v73 << 16) ^ 0x72240000) & (((v72 ^ 0x8000D024) << 8) & 0x22F0000 ^ 0xD0000 ^ (((v72 ^ 0x8000D024) << 8) ^ 0x2FF20000) & (v72 ^ 0x8000D024)))) ^ 0x2B2DF4FC;
    *(v38 - 176) = v74 ^ ((v74 ^ 0xD0E340C3) + 748521028) ^ ((v74 ^ 0x930162B) - 179384148) ^ ((v74 ^ 0xA1A99068) + 1574393577) ^ ((v74 ^ 0x7BFBFFFF) - 2021312128) ^ 0xA1CDE912;
    v75 = (((v42 ^ 0x857A1514) + 2055596780) ^ ((v42 ^ 0xB06DFCEF) + 1334969105) ^ ((v42 ^ 0x975B3996) + 1755629162)) + (((*(v38 - 172) ^ 0xC205) - 49669) ^ ((*(v38 - 172) ^ 0xD9C3C1E0) + 641482272) ^ ((*(v38 - 172) ^ 0x7B8FD388) - 2073023368)) - 1158980062;
    v76 = (v75 ^ 0x458F3237) & (2 * (v75 & 0x89AE42B8)) ^ v75 & 0x89AE42B8;
    v77 = ((2 * (v75 ^ 0x56C3B627)) ^ 0xBEDBE93E) & (v75 ^ 0x56C3B627) ^ (2 * (v75 ^ 0x56C3B627)) & 0xDF6DF49E;
    v78 = v77 ^ 0x41241481;
    v79 = (v77 ^ 0xE490000) & (4 * v76) ^ v76;
    v80 = ((4 * v78) ^ 0x7DB7D27C) & v78 ^ (4 * v78) & 0xDF6DF49C;
    v81 = (v80 ^ 0x5D25D000) & (16 * v79) ^ v79;
    v82 = ((16 * (v80 ^ 0x82482483)) ^ 0xF6DF49F0) & (v80 ^ 0x82482483) ^ (16 * (v80 ^ 0x82482483)) & 0xDF6DF490;
    v83 = v81 ^ 0xDF6DF49F ^ (v82 ^ 0xD64D4000) & (v81 << 8);
    v84 = (v83 << 16) ^ 0x749F0000;
    v85 = (((v41 ^ 0x63CC5B2) - 104646066) ^ ((v41 ^ 0x1A9378CE) - 445872334) ^ ((v41 ^ 0xBEE36D11) + 1092391663)) + (((*(v38 - 168) ^ 0x27B00175) - 665846133) ^ ((*(v38 - 168) ^ 0x6168FFD7) - 1634271191) ^ ((*(v38 - 168) ^ 0xE4942ECF) + 460050737)) - 1345259783;
    *(v38 - 172) = v75 ^ (2 * ((v83 << 16) & 0x5F6D0000 ^ v83 ^ v84 & (((v82 ^ 0x920B40F) << 8) & 0x5F6D0000 ^ 0x12090000 ^ (((v82 ^ 0x920B40F) << 8) ^ 0x6DF40000) & (v82 ^ 0x920B40F)))) ^ 0x3D237BEB;
    *(v38 - 168) = v85 ^ ((v85 ^ 0xD8209570) + 1290288273) ^ ((v85 ^ 0xED54886D) + 2040275342) ^ ((v85 ^ 0xA1DCBC7D) + 890508702) ^ ((v85 ^ 0xFF9FF77F) + 1800887968) ^ 0xC97B8672;
    return v39(v84, a5, a6, a7, a8, 1600978944, 2181050916, v42, a12, a13, a14);
  }
}

void sub_100015F4C(int a1@<W8>)
{
  v3 = (((a1 ^ 0xABDBBDCE) + 1411662386) ^ ((a1 ^ 0x90720C1) - 151462081) ^ ((a1 ^ 0x904D62) - 9456994)) - 1958119761 + (((*(v2 - 164) ^ 0x50E3047) - 84815943) ^ ((*(v2 - 164) ^ 0xE114C61F) + 518732257) ^ ((*(v2 - 164) ^ 0xE37F8476 ^ (v1 - 403723745) & 0xBD39F6FF) - 1180050997));
  *(v2 - 164) = v3 ^ ((v3 ^ 0xB66E3FB0) + 255727003) ^ ((v3 ^ 0x978F445D) + 786394744) ^ ((v3 ^ 0x19B151E7) - 1595835442) ^ ((v3 ^ 0x7EFFFFDF) - 944777738) ^ 0xE4E305B8;
  JUMPOUT(0x1000160B4);
}

void sub_100016708(int a1@<W8>)
{
  if (a1 == ((v2 + 2009525000) & 0x883915DB ^ (v4 + 41)))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *v1 = v7;
  *(v3 + 8) = *(v5 + 24);
}

uint64_t sub_100016774()
{
  v6 = 22 * ((v2 + 197505206) & 0xF43A4DF6 ^ 0x58D);
  **(v0 + 8) = (**(v0 + 8) ^ 0x6B9807D) + 1 + v3 - ((v5 + v6 - 1073 - 313) & (2 * ((**(v0 + 8) ^ 0x6B9807D) + 1)));
  return (*(v4 + 8 * ((216 * (v1 != 1)) ^ v6)))();
}

uint64_t sub_10001689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a15 = 2066391179 * ((((2 * &a13) | 0x9FD4A0A4) - &a13 + 806727598) ^ 0x60CDD24A) + 1194;
  a14 = &a11;
  v18 = (*(v16 + 18504))(&a13);
  return (*(v16 + 8 * ((1527 * (a13 == v15 - 380)) ^ v17)))(v18);
}

uint64_t sub_100016A20@<X0>(int a1@<W8>)
{
  v8 = v5 + v2;
  v9 = v5 - 1;
  *(*v6 + (v1 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == v3) * v4) ^ a1)))();
}

uint64_t sub_100016A54@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D2>)
{
  v5 = (v3 ^ 0x483) - 16;
  a2.i32[0] = *(v2 - 3 + v5);
  v6 = vmovl_u8(a2).u64[0];
  *(a1 - 3 + v5) = vuzp1_s8(vadd_s16(vsub_s16(v6, vand_s8(vadd_s16(v6, v6), 0x66006600660066)), 0x33003300330033), 0x66006600660066).u32[0];
  return (*(v4 + 8 * (v3 ^ 0xC)))();
}

uint64_t sub_100016BE4()
{
  v4 = (v0 + 332) | 0x100;
  v5 = (*(v1 + 8 * (v0 + 2112)))(*v3);
  return (*(v1 + 8 * ((106 * (*v2 != ((2 * (v4 ^ 0x763)) ^ 0x892))) ^ v4)))(v5);
}

uint64_t sub_100016C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v38 - 192) = v39;
  v40 = v36 ^ 0x1AE;
  v41 = v36;
  v42 = *(&off_100374800 + v36 - 368) - 8;
  v43 = v42[v35[5] ^ 0xE2];
  v44 = *(&off_100374800 + v36 - 360) - 8;
  v45 = v44[v35[15] ^ 0x92];
  *(v38 - 156) = v37;
  v46 = v42[v35[13] ^ 0xB9];
  v47 = -119 * v40;
  *(v38 - 116) = 137 * v40;
  v48 = v44[((v35[7] & 0xC0 ^ 0x3D554B6805F66595) & (v35[7] & 0x3F ^ 0xFD7FCB7F5DFE75DDLL) | v35[7] & 0x2A) ^ 0x3D554B6805F66526];
  v49 = ((v46 << (v47 - 2)) ^ 0xCAC1B80F) & (v45 ^ 0xFFFFF9B7) | v45 & 0xF0;
  v50 = *(&off_100374800 + v41 - 389) - 4;
  v51 = (v48 ^ 0xFFFFFFFC) & ((v43 << 16) ^ 0x645D2A4D) | v48 & 0xB2;
  v52 = ((-1459617792 * v50[v35[4] ^ 0x57] - 1694498816) ^ 0x11D1A0DD) & (v51 ^ 0x9B4AD920);
  v53 = v51 & 0x42E0222;
  v54 = -87 * v50[v35[12] ^ 0x68] - 101;
  v55 = *(&off_100374800 + (v41 ^ 0x1D7));
  LOBYTE(v43) = *(v55 + (v35[14] ^ 0xD6)) + 25;
  v56 = ((*(v55 + (v35[6] ^ 0x87)) + 25) ^ 0x30) << 8;
  v57 = (v56 & 0xC800 | (v53 ^ 0x7EDE958F ^ v52) & ~v56) ^ 0x10273770;
  v58 = (((v54 << 24) ^ 0x3A1F2274) & ~((v43 ^ 0x27) << 8) & 0xE2051900 | ((v43 ^ 0x27) << 8) & 0x1900) ^ 0x2D8E21D8 ^ ((((v54 << 24) ^ 0x3A1F2274) & ~((v43 ^ 0x27) << 8) | ((v43 ^ 0x27) << 8) & 0xDDDD) ^ 0x79E0C48B) & (v49 ^ 0xD7815EE9);
  v59 = ((v44[v35[3] ^ 0x29] ^ 0x43) & 0xFFFF00FF | ((v42[v35[1] ^ 8] ^ 0x64) << 16) | (((-87 * v50[*v35 ^ 0xE1] - 101) ^ 0xDA) << 24) | (((*(v55 + (v35[2] ^ 0x8FLL)) + 25) ^ 0xD8) << 8)) ^ 0x1B;
  v60 = (((-87 * v50[v35[8] ^ 0xB9] - 101) ^ 0xBC) << 24) | ((v42[v35[9] ^ 0x3BLL] ^ 0x95) << 16) | v44[v35[11] ^ 0x62] | (((*(v55 + (v35[10] ^ 0xB7)) + 25) ^ 0xE7) << 8);
  v61 = *(&off_100374800 + v41 - 299);
  v62 = *(&off_100374800 + v41 - 281) - 8;
  v63 = *(v61 + 4 * (BYTE2(v58) ^ 0xBAu)) ^ *&v62[4 * (v43 ^ 0x7E)] ^ 0x7E1467BC;
  *(v38 - 128) = v41;
  v64 = *(&off_100374800 + (v41 ^ 0x1D0));
  v65 = *(&off_100374800 + (v41 ^ 0x123));
  LODWORD(v45) = *(v65 + 4 * (v45 ^ 0xDD));
  v66 = (v63 - ((2 * v63) & 0x1285E35C) - 1992101458) ^ *(v64 + 4 * (v54 ^ 0x88u));
  *(v38 - 208) = v59;
  LODWORD(v45) = v45 ^ v59 ^ (v66 - ((2 * v66) & 0xB6EF3A56) - 612917973);
  *(v38 - 200) = v60;
  *(v38 - 196) = v57;
  v67 = v45 ^ v57;
  v68 = v45;
  *(v38 - 256) = v45;
  LODWORD(v45) = v45 ^ v57 ^ v60;
  v69 = v67;
  v565 = v67;
  LOBYTE(v67) = v45 ^ v58;
  v70 = v45;
  v559 = v45;
  LODWORD(v45) = v45 ^ v58 ^ 0xF83672DE;
  v561 = v67;
  v71 = *(v65 + 4 * (v67 ^ 0x35u));
  *(v38 - 164) = BYTE1(v45);
  v72 = v71 ^ 0xE1640531 ^ *&v62[4 * (BYTE1(v45) ^ 0x9E)];
  v73 = BYTE3(v45);
  v74 = (v72 - ((2 * v72) & 0x1285E35C) - 1992101458) ^ *(v64 + 4 * (BYTE3(v45) ^ 0x86));
  LODWORD(v45) = BYTE2(v45);
  *(v38 - 252) = v45;
  *(v38 - 248) = v73;
  v75 = v61;
  LODWORD(v45) = v68 ^ *(v61 + 4 * (v45 ^ 0xBA)) ^ (v74 - ((2 * v74) & 0x880FFF4C) + 1141374886);
  v564 = BYTE2(v69) ^ 0x5B;
  v76 = v45 ^ v69 ^ 0xA25B684D;
  *(v38 - 212) = v76;
  v77 = v45;
  *(v38 - 240) = v45;
  v78 = v76 ^ 0xF73EC34E;
  *(v38 - 204) = v58;
  v79 = v76 ^ 0xF73EC34E ^ v58;
  v80 = v79 ^ 0x7E4FB786;
  v81 = (v79 ^ 0x7E4FB786) >> 24;
  *(v38 - 176) = v81;
  v82 = *(v64 + 4 * (v81 ^ 0x86));
  LODWORD(v45) = ((v79 ^ 0x7E4FB786) >> 16);
  *(v38 - 224) = v45;
  v83 = *(v61 + 4 * (v45 ^ 0xBA)) ^ v82;
  v84 = ((v79 ^ 0xB786) >> 8);
  *(v38 - 232) = v84;
  LODWORD(v55) = ((v83 ^ 0xCD450E08) - 2 * ((v83 ^ 0xCD450E08) & 0x3A13981E ^ v83 & 4) + 974362650) ^ *&v62[4 * (v84 ^ 0x9E)];
  *(v38 - 160) = v79;
  v85 = v77 ^ *(v65 + 4 * (v79 ^ 0x6Du)) ^ (v55 - ((2 * v55) & 0xB6EF3A56) - 612917973);
  *(v38 - 124) = v85;
  *(v38 - 120) = 0;
  v85 ^= 0xFEB4AEEu;
  v86 = v85 ^ v70 ^ 0xF83672DE;
  *(v38 - 168) = v86;
  LODWORD(v55) = v86 ^ v80;
  v87 = ((v86 ^ v80) >> 16);
  *(v38 - 172) = v87;
  v554 = BYTE1(v55);
  v88 = *&v62[4 * (BYTE1(v55) ^ 0x9E)] ^ *(v61 + 4 * (v87 ^ 0xBAu));
  v552 = BYTE3(v55);
  v89 = ((v88 ^ 0x7E1467BC) - 2 * ((v88 ^ 0x7E1467BC) & 0x942F1AF ^ v88 & 1) - 1992101458) ^ *(v64 + 4 * (BYTE3(v55) ^ 0x86));
  v557 = v55;
  v533 = BYTE2(v85);
  LODWORD(v61) = v85 ^ *(v65 + 4 * (v55 ^ 0xEBu)) ^ (v89 - ((2 * v89) & 0xB6EF3A56) - 612917973);
  v491 = v78 ^ v70 ^ 0xF83672DE;
  *(v38 - 132) = v61 ^ v491;
  v90 = v61 ^ v491 ^ 0x598844C8;
  LODWORD(v42) = v90 ^ v55;
  v453 = v61 ^ v491 ^ 0xC8;
  v505 = v90 ^ v55;
  v475 = (v90 ^ v55 ^ 0xCD2CB9A0) >> 24;
  v91 = *(v65 + 4 * ((v90 ^ v55) ^ 0x83u)) ^ *(v64 + 4 * (v475 ^ 0x86)) ^ 0x52356C85;
  v503 = ((v90 ^ v55 ^ 0xCD5DCD68) >> 16);
  v92 = (v91 - ((2 * v91) & 0x880FFF4C) + 1141374886) ^ *(v75 + 4 * (v503 ^ 0xBAu));
  v457 = ((v90 ^ v55 ^ 0xCD68) >> 8);
  v93 = (v92 - ((2 * v92) & 0x74273034) + 974362650) ^ *&v62[4 * (v457 ^ 0x9E)];
  v534 = v85 ^ v78;
  v94 = v85 ^ v78 ^ 0x7E4FB786;
  *(v38 - 140) = v94;
  v527 = v93 ^ v94;
  v95 = v93 ^ v94 ^ 0xF39A3E26;
  v524 = v95 ^ v55;
  v529 = ((v95 ^ v55) >> 16);
  v96 = *(v75 + 4 * (v529 ^ 0xBAu)) ^ *(v64 + 4 * (((v95 ^ v55) >> (v61 & 0x18) >> (v61 & 0x18 ^ 0x18)) ^ 0x86u));
  v522 = ((v95 ^ v55) >> 8);
  v97 = ((v96 ^ 0xCD450E08) - 2 * ((v96 ^ 0xCD450E08) & 0x3A13981E ^ v96 & 4) + 974362650) ^ *&v62[4 * (v522 ^ 0x9E)];
  v517 = v93 ^ v61;
  v521 = BYTE2(v95);
  v98 = v95 ^ v90;
  v512 = v95 ^ v90;
  v99 = v517 ^ *(v65 + 4 * ((v95 ^ v90 ^ v90 ^ v55 ^ 0x68) ^ 0x83u)) ^ (v97 - ((2 * v97) & 0xB6EF3A56) - 612917973);
  LODWORD(v45) = v99 ^ 0x53DB0D92 ^ v95;
  v538 = v99 ^ 0x92;
  v100 = v45 ^ 0xF73EC34E;
  *(v38 - 148) = v45;
  LODWORD(v45) = v45 ^ 0xF73EC34E ^ v42 ^ 0xCD5DCD68;
  v101 = v45 ^ 0xBF7FF0FA;
  v494 = ((v45 ^ 0xBF7FF0FA) >> 16);
  v551 = v45;
  LODWORD(v45) = *(v75 + 4 * (v494 ^ 0xBAu)) ^ *(v65 + 4 * (v45 ^ 0x11u)) ^ 0x9F70628D;
  v102 = HIBYTE(v101);
  LODWORD(v45) = (v45 - ((2 * v45) & 0x1285E35C) - 1992101458) ^ *(v64 + 4 * (HIBYTE(v101) ^ 0x86));
  v499 = BYTE1(v101);
  LODWORD(v42) = (v45 - ((2 * v45) & 0x74273034) + 974362650) ^ *&v62[4 * (BYTE1(v101) ^ 0x9E)] ^ v99 ^ 0x53DB0D92;
  *(v38 - 144) = v42;
  v516 = BYTE2(v98) ^ 0x5D;
  v103 = v100 ^ v98 ^ 0xCD5DCD68;
  v450 = v42 ^ 0x85DB0D92 ^ v99 ^ 0x53DB0D92 ^ v95;
  v465 = BYTE2(v42) ^ 0xDB;
  v468 = v450 ^ 0x484133B4 ^ v103;
  LODWORD(v45) = v468 ^ 0xBDE5CEDC ^ v101;
  v466 = (v45 ^ 0x29A3E26) >> 24;
  v485 = ((v45 ^ 0x3E26) >> 8);
  v104 = *(v64 + 4 * (v466 ^ 0x86)) ^ *&v62[4 * (v485 ^ 0x9E)] ^ 0xB35169B4;
  v461 = ((v45 ^ 0x29A3E26) >> 16);
  v105 = (v104 - ((2 * v104) & 0x880FFF4C) + 1141374886) ^ *(v75 + 4 * (v461 ^ 0xBAu));
  v445 = v468 ^ 0xDC ^ v101;
  v441 = v105 - ((2 * v105) & 0xB6EF3A56) - 612917973;
  v469 = v42 ^ 0x85DB0D92 ^ *(v65 + 4 * (v445 ^ 0xCDu));
  LODWORD(v44) = v469 ^ v441 ^ v450 ^ 0x484133B4;
  *(v38 - 152) = v44;
  *(v38 - 136) = v469 ^ v441;
  LODWORD(v44) = v44 ^ 0x19868409;
  v434 = v44 ^ v468 ^ 0xBDE5CEDC;
  v549 = v44;
  v433 = (v434 ^ 0xC130088F ^ v45 ^ 0x29A3E26 ^ 0x7B68C86) >> 24;
  v437 = ((v434 ^ 0x88F ^ v45 ^ 0x3E26 ^ 0x8C86) >> 8);
  v106 = *(v64 + 4 * (v433 ^ 0x86)) ^ *&v62[4 * (v437 ^ 0x9E)] ^ 0xB35169B4;
  v107 = ((v434 ^ 0xC130088F ^ v45 ^ 0x29A3E26 ^ 0x7B68C86) >> 16);
  v547 = v434 ^ 0xC130088F ^ v45 ^ 0x29A3E26 ^ 0x7B68C86;
  v108 = (v106 - ((2 * v106) & 0x880FFF4C) + 1141374886) ^ *(v75 + 4 * (v107 ^ 0xBAu));
  v440 = v434 ^ 0x8F ^ v45 ^ 0x26;
  v460 = v469 ^ v441 ^ *(v65 + 4 * (v440 ^ 0x6Du)) ^ (v108 - ((2 * v108) & 0xB6EF3A56) - 612917973);
  v543 = v460 ^ 0x7B68C86;
  v451 = v460 ^ 0x7B68C86 ^ v44;
  v455 = v451 ^ v434 ^ 0xC130088F;
  v545 = v455 ^ 0xC104CD8D;
  LODWORD(v45) = v455 ^ 0xC104CD8D ^ v547 ^ 0xA91877A2;
  v480 = v455 ^ 0x8D ^ v547;
  v477 = BYTE3(v45);
  v109 = *(v65 + 4 * (v480 ^ 0x49u)) ^ 0x52356C85 ^ *(v64 + 4 * (v477 ^ 0x86));
  v483 = BYTE1(v45);
  v110 = (v109 - ((2 * v109) & 0x74273034) + 974362650) ^ *&v62[4 * (BYTE1(v45) ^ 0x9E)];
  v472 = BYTE2(v45);
  v541 = (v110 - ((2 * v110) & 0x880FFF4C) + 1141374886) ^ *(v75 + 4 * (BYTE2(v45) ^ 0xBAu));
  v111 = v561 ^ 0xEF;
  v112 = *(v38 - 128);
  v113 = *(&off_100374800 + (v112 ^ 0x199)) - 4;
  v114 = (((v70 ^ 0xF83672DE) >> 16) ^ 0xFD84E2EE) - 1207405559 + *&v113[4 * (((v70 ^ 0xF83672DE) >> 16) ^ 0x7E)];
  v115 = *(&off_100374800 + v112 - 423);
  LODWORD(v42) = *(v38 - 256);
  BYTE1(v561) = BYTE1(v42) ^ 0x6F;
  v116 = (((v42 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (((v42 ^ 0x6AB66F6C) >> 16) ^ 0x7B)];
  LODWORD(v64) = ((v564 ^ 0xFD84E273) - 1207405559 + *&v113[4 * (v564 ^ 0xE3)]) ^ (-1974868763 * *(v115 + 4 * (HIBYTE(v565) ^ 0xE7)) - 199687950);
  v117 = *(&off_100374800 + (v112 ^ 0x1D1)) - 4;
  v118 = *(v115 + 4 * ((v42 >> 24) ^ 0xCB));
  LODWORD(v42) = (v114 - ((2 * v114) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v559 ^ 0x33)];
  v119 = *(&off_100374800 + (v112 ^ 0x196)) - 8;
  v120 = (v64 - ((2 * v64) & 0xCF128378) + 1737048508) ^ *&v119[4 * (BYTE1(v565) ^ 0x4B)];
  v121 = (((-1974868763 * v118 - 199687950) ^ v116) - ((2 * ((-1974868763 * v118 - 199687950) ^ v116)) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (*(v38 - 256) ^ 0x1C)];
  *(v38 - 256) = v120 - ((2 * v120) & 0x33BAF4C);
  v122 = (*(v38 - 252) ^ 0xFD84E215) - 1207405559 + *&v113[4 * (*(v38 - 252) ^ 0x85)];
  v536 = *&v119[4 * (BYTE1(v559) ^ 0xE4)] ^ (-1974868763 * *(v115 + 4 * (HIBYTE(v559) ^ 0x54)) - 199687950) ^ (v42 - ((2 * v42) & 0xCF128378) + 1737048508);
  LODWORD(v42) = (-1974868763 * *(v115 + 4 * (*(v38 - 248) ^ 0xBEu)) - 199687950) ^ *&v117[4 * v111] ^ (v122 - ((2 * v122) & 0x33BAF4C) + 27121574);
  *(v38 - 252) = v121 - ((2 * v121) & 0xCF128378);
  v560 = v42 - ((2 * v42) & 0xCF128378);
  v123 = (((v99 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 1207405559 + *&v113[4 * (((v99 ^ 0xB89A99EC) >> 16) ^ 0x34)];
  v124 = *(v115 + 4 * (HIBYTE(v103) ^ 0xD2));
  v125 = ((((v103 ^ 0xBFAB50FA) >> 16) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (((v103 ^ 0xBFAB50FA) >> 16) ^ 0x7B)]) ^ *&v117[4 * (v103 ^ 0x5F)] ^ (-1974868763 * v124 - ((9685450 * v124 + 3277284) & 0x33BAF4C) - 172566376);
  v509 = v565 ^ 0x25;
  LODWORD(v42) = *(v115 + 4 * (v102 ^ 0xB6));
  v126 = (-1974868763 * v42 - ((345229770 * v42 - 399375900) & 0xCF128378) + 1537360558) ^ *&v119[4 * (v499 ^ 0x25)];
  *(v38 - 248) = v126 - ((2 * v126) & 0x33BAF4C);
  v127 = *&v119[4 * ((v99 ^ 0x99EC) >> 8)] ^ (v123 - ((2 * v123) & 0xCF128378) + 1737048508);
  v128 = *(v38 - 148);
  v129 = (((v128 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 1207405559 + *&v113[4 * (((v128 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v566 = v127 - ((2 * v127) & 0x33BAF4C);
  v130 = (v129 - ((2 * v129) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v128 ^ 0xA4)] ^ (-1974868763 * *(v115 + 4 * (HIBYTE(v128) ^ 0x40)) - 199687950);
  v496 = v130 - ((2 * v130) & 0xCF128378);
  v500 = v125 - ((2 * v125) & 0xCF128378);
  v562 = (v494 ^ 0xFD84E217) - 1207405559 + *&v113[4 * (v494 ^ 0x87)];
  v471 = BYTE1(v61) ^ 0x36;
  v131 = (((v61 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 1207405559 + *&v113[4 * (((v61 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v489 = v61 ^ *(v38 - 140);
  v132 = *(v115 + 4 * (HIBYTE(v489) ^ 0x39));
  v133 = (-1974868763 * v132 - 199687950 - 2 * ((-1974868763 * v132 - 199687950) & 0x678941BD ^ (-339929893 * v132) & 1) + 1737048508) ^ *&v119[4 * ((v489 ^ 0xDA26) >> 8)];
  LODWORD(v75) = (v503 ^ 0xFD84E284) - 1207405559 + *&v113[4 * (v503 ^ 0x14)];
  v134 = (v131 - ((2 * v131) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v61 ^ 0x7D)] ^ (-1974868763 * *(v115 + 4 * (BYTE3(v61) ^ 0x5D)) - 199687950);
  v448 = *(v38 - 132) ^ 0xAF58D76C;
  LODWORD(v61) = (BYTE2(v448) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (BYTE2(v448) ^ 0x7B)];
  v495 = v133 - ((2 * v133) & 0x33BAF4C);
  v135 = (v61 - ((2 * v61) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v453 ^ 0xD4)];
  HIDWORD(v452) = v135 - ((2 * v135) & 0xCF128378);
  v504 = (((v489 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (((v489 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  v136 = (v75 - ((2 * v75) & 0xCF128378) + 1737048508) ^ *&v119[4 * (v457 ^ 0xE5)] ^ (-1974868763 * *(v115 + 4 * (v475 ^ 0xF0)) - 199687950);
  LODWORD(v449) = v134 - ((2 * v134) & 0xCF128378);
  v458 = v505 ^ 0xC3;
  v476 = v136 - ((2 * v136) & 0x33BAF4C);
  v137 = *(v38 - 232) ^ 0x93;
  LODWORD(v62) = *(v38 - 240);
  *(v38 - 232) = v62 ^ 0xD1;
  v138 = (*(v38 - 224) ^ 0xFD84E219) - 1207405559 + *&v113[4 * (*(v38 - 224) ^ 0x89)];
  v139 = (v138 - ((2 * v138) & 0xCF128378) + 1737048508) ^ *&v119[4 * v137];
  *(v38 - 224) = v139 + 27121574 + (~(2 * v139) | 0xFCC450B3);
  v140 = *(v115 + 4 * (HIBYTE(v491) ^ 0xDE));
  LODWORD(v44) = *(v38 - 212);
  LODWORD(v61) = (((v44 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (((v44 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  v141 = (v61 - ((2 * v61) & 0xCF128378) + 1737048508) ^ *&v119[4 * ((v44 ^ 0x30D) >> 8)];
  v436 = BYTE1(v62) ^ 0x9D;
  v142 = ((BYTE2(v491) ^ 0xFD84E243) - 1207405559 + *&v113[4 * (BYTE2(v491) ^ 0xD3)]) ^ *&v119[4 * (BYTE1(v491) ^ 0xDB)] ^ (-1974868763 * v140 - ((345229770 * v140 - 399375900) & 0xCF128378) + 1537360558);
  v506 = (((v62 ^ 0x37B09DC8) >> 16) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (((v62 ^ 0x37B09DC8) >> 16) ^ 0x7B)];
  v446 = v141 - ((2 * v141) & 0x33BAF4C);
  v431 = (v62 >> 24) ^ 0x96;
  v443 = v491 ^ 0x6A;
  *(v38 - 240) = v142 - ((2 * v142) & 0x33BAF4C);
  v143 = (-1974868763 * *(v115 + 4 * (v433 ^ 0xAC)) - 199687950) ^ ((v107 ^ 0xFD84E2A8) - 1207405559 + *&v113[4 * (v107 ^ 0x38)]);
  v144 = (v143 - ((2 * v143) & 0xCF128378) + 1737048508) ^ *&v119[4 * (v437 ^ 0xD9)];
  v145 = (BYTE2(v434) ^ 0xFD84E256) - 1207405559 + *&v113[4 * (BYTE2(v434) ^ 0xC6)];
  LODWORD(v61) = *(v115 + 4 * ((v469 ^ ~v441) >> 24));
  LODWORD(v42) = -1974868763 * v61 - ((345229770 * v61 - 399375900) & 0xCF128378) + 1537360558;
  LODWORD(v61) = *(v38 - 136) ^ 0xDDA7A6D4;
  v146 = v42 ^ *&v119[4 * BYTE1(v61)];
  v147 = (v145 - ((2 * v145) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v434 ^ 0x67)] ^ (-1974868763 * *(v115 + 4 * (HIBYTE(v434) ^ 0x3E)) - 199687950);
  LODWORD(v442) = v144 - ((2 * v144) & 0x33BAF4C);
  v438 = v440 ^ 0xF9;
  HIDWORD(v439) = v146 - ((2 * v146) & 0x33BAF4C);
  v148 = *(v115 + 4 * (HIBYTE(*(v38 - 152)) ^ 0xCDu));
  v149 = *&v117[4 * (*(v38 - 152) ^ 0xC9)] ^ (-1974868763 * v148 - ((9685450 * v148 + 3277284) & 0x33BAF4C) - 172566376);
  HIDWORD(v432) = v149 - ((2 * v149) & 0xCF128378);
  LODWORD(v470) = (BYTE2(v61) ^ 0xFD84E2A5) - 1207405559 + *&v113[4 * (BYTE2(v61) ^ 0x35)];
  v427 = BYTE1(v434) ^ 0x4F;
  LODWORD(v430) = v147 - ((2 * v147) & 0xCF128378);
  v492 = (BYTE2(*(v38 - 152)) ^ 0xFD84E2FB) - 1207405559 + *&v113[4 * (BYTE2(*(v38 - 152)) ^ 0x6B)];
  v150 = (BYTE2(v450) ^ 0xFD84E271) - 1207405559 + *&v113[4 * (BYTE2(v450) ^ 0xE1)];
  v151 = (v150 - ((2 * v150) & 0xCF128378) + 1737048508) ^ *&v119[4 * (BYTE1(v450) ^ 0x28)];
  LODWORD(v432) = v450 ^ 0xAE;
  v152 = *(v115 + 4 * (HIBYTE(v468) ^ 0x22));
  v153 = (-1974868763 * v152 - 199687950 - 2 * ((-1974868763 * v152 - 199687950) & 0x678941BD ^ (-339929893 * v152) & 1) + 1737048508) ^ *&v119[4 * ((v468 ^ 0x4AFA) >> 8)];
  v429 = v450 ^ 0xB4 ^ v103 ^ 0xE4;
  LODWORD(v444) = v151 - ((2 * v151) & 0x33BAF4C);
  LODWORD(v435) = v153 - ((2 * v153) & 0x33BAF4C);
  HIDWORD(v467) = (((v468 ^ 0xBF864AFA) >> 16) ^ 0xFD84E2A5) - 1207405559 + *&v113[4 * (((v468 ^ 0xBF864AFA) >> 16) ^ 0x35)];
  v423 = v466 ^ 0x67;
  LODWORD(v467) = (v461 ^ 0xFD84E291) - 1207405559 + *&v113[4 * (v461 ^ 1)];
  v154 = *(v38 - 144);
  LODWORD(v42) = *(v115 + 4 * (HIBYTE(v154) ^ 0x82));
  v155 = ((v465 ^ 0xFD84E2FE) - 1207405559 + *&v113[4 * (v465 ^ 0x6E)]) ^ *&v119[4 * (BYTE1(v154) ^ 5)] ^ (-1974868763 * v42 - 199687950 - 2 * ((-1974868763 * v42 - 199687950) & 0x678941BD ^ (-339929893 * v42) & 1) + 1737048508);
  v464 = v155 - ((2 * v155) & 0x33BAF4C);
  v156 = (((v451 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 1207405559 + *&v113[4 * (((v451 ^ 0x23AAC875) >> 16) ^ 0x27)];
  v426 = v485 ^ 0x72;
  v157 = (v156 - ((2 * v156) & 0xCF128378) + 1737048508) ^ *&v119[4 * ((v451 ^ 0xC875) >> 8)];
  LODWORD(v417) = v455 ^ 0x68D34E2A;
  v158 = *(v115 + 4 * (HIBYTE(v455) ^ 0x27));
  v159 = (-1974868763 * v158 - ((9685450 * v158 + 3277284) & 0x33BAF4C) - 172566376) ^ *&v117[4 * (v455 ^ 0x5A)];
  v462 = v451 ^ 5;
  v486 = v157 - ((2 * v157) & 0x33BAF4C);
  v422 = BYTE1(v460) ^ 0x82;
  v160 = (((v460 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (((v460 ^ 0xC1698200) >> 16) ^ 0x7B)];
  v456 = HIBYTE(v451) ^ 0x82;
  v161 = (-1974868763 * *(v115 + 4 * (HIBYTE(v460) ^ 0x60)) - 199687950) ^ *&v117[4 * (v460 ^ 0x72)] ^ (v160 - ((2 * v160) & 0x33BAF4C) + 27121574);
  v162 = *(v115 + 4 * (v477 ^ 0x21));
  v163 = *&v117[4 * (v480 ^ 0x12)] ^ ((v472 ^ 0xFD84E2A2) - 1207405559 + *&v113[4 * (v472 ^ 0x32)]) ^ (-1974868763 * v162 - ((9685450 * v162 + 3277284) & 0x33BAF4C) - 172566376);
  v164 = (v44 >> 24) ^ 0xE6;
  v424 = v44 ^ 0x7D;
  v478 = v483 ^ 0x7D;
  LODWORD(v420) = v161 - ((2 * v161) & 0xCF128378);
  LODWORD(v419) = v159 - ((2 * v159) & 0xCF128378);
  HIDWORD(v419) = v163 - ((2 * v163) & 0xCF128378);
  v481 = (BYTE2(v417) ^ 0xFD84E2EB) - 1207405559 + *&v113[4 * (BYTE2(v417) ^ 0x7B)];
  v165 = *(v38 - 176) ^ 0x32;
  v166 = (BYTE2(v517) ^ 0xFD84E2A2) - 1207405559 + *&v113[4 * (BYTE2(v517) ^ 0x32)];
  LODWORD(v61) = (v516 ^ 0xFD84E216) - 1207405559 + *&v113[4 * (v516 ^ 0x86)];
  v473 = v522 ^ 0x6E;
  LODWORD(v42) = (v61 - ((2 * v61) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v512 ^ 0x15)];
  v167 = (v521 ^ 0xFD84E2B1) - 1207405559 + *&v113[4 * (v521 ^ 0x21)];
  v168 = (v166 - ((2 * v166) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v517 ^ 0x54)] ^ (-1974868763 * *(v115 + 4 * (HIBYTE(v517) ^ 0xEA)) - 199687950);
  LODWORD(v452) = BYTE1(v517) ^ 0x83;
  LODWORD(v416) = v42 - ((2 * v42) & 0xCF128378);
  HIDWORD(v416) = v168 - ((2 * v168) & 0xCF128378);
  LODWORD(v418) = v524 ^ 0x81;
  HIDWORD(v417) = v527 ^ 0xB;
  LODWORD(v42) = (v167 - ((2 * v167) & 0xCF128378) + 1737048508) ^ *&v119[4 * (BYTE1(v527) ^ 0x56)] ^ (-1974868763 * *(v115 + 4 * (HIBYTE(v527) ^ 0x6D)) - 199687950);
  HIDWORD(v418) = v42 - ((2 * v42) & 0x33BAF4C);
  *(v38 - 176) = (v529 ^ 0xFD84E2DC) - 1207405559 + *&v113[4 * (v529 ^ 0x4C)];
  LODWORD(v42) = (*(v38 - 172) ^ 0xFD84E246) - 1207405559 + *&v113[4 * (*(v38 - 172) ^ 0xD6)];
  LODWORD(v61) = v42 - ((2 * v42) & 0xCF128378);
  v169 = *(v38 - 124);
  LODWORD(v42) = (-1974868763 * *(v115 + 4 * (HIBYTE(v169) ^ 0x41)) - 199687950) ^ ((v533 ^ 0xFD84E273) - 1207405559 + *&v113[4 * (v533 ^ 0xE3)]);
  v170 = (v42 - ((2 * v42) & 0xCF128378) + 1737048508) ^ *&v119[4 * (BYTE1(v169) ^ 0x6F)];
  v171 = BYTE1(v534) ^ 0x74;
  LODWORD(v42) = BYTE2(*(v38 - 140));
  LODWORD(v42) = (v42 ^ 0xFD84E2B8) - 1207405559 + *&v113[4 * (v42 ^ 0x28)];
  LODWORD(v42) = (v42 - ((2 * v42) & 0x33BAF4C) + 27121574) ^ *&v117[4 * (v534 ^ 0xCE)];
  v172 = v42 - ((2 * v42) & 0xCF128378);
  v173 = *(v38 - 168);
  v174 = *(v115 + 4 * (HIBYTE(v173) ^ 0x18));
  LODWORD(v62) = *(v115 + 4 * (HIBYTE(v99) ^ 0x48));
  v175 = *(v115 + 4 * (HIBYTE(*(v38 - 132)) ^ 0xEu));
  LODWORD(v44) = *(v115 + 4 * v431);
  v176 = *(v115 + 4 * v164);
  v177 = *(v115 + 4 * v165);
  v178 = *(v115 + 4 * v423);
  LODWORD(v75) = *(v115 + 4 * (HIBYTE(v450) ^ 0xD7));
  LODWORD(v42) = *(v115 + 4 * v456);
  v179 = *(v115 + 4 * (HIBYTE(v512) ^ 0x5B));
  v180 = *(v115 + 4 * (HIBYTE(v524) ^ 0x17));
  v181 = *(v115 + 4 * (v552 ^ 7));
  LODWORD(v115) = *(v115 + 4 * (HIBYTE(v534) ^ 0x2E));
  HIDWORD(v459) = -1974868763 * v62 - 199687950;
  *(v38 - 212) = -1974868763 * v175 - 199687950;
  v553 = -1974868763 * v44 - 199687950;
  *(v38 - 172) = -1974868763 * v176 - 199687950;
  v528 = -1974868763 * v178 - 199687950;
  HIDWORD(v430) = -1974868763 * v75 - 199687950;
  v535 = -1974868763 * v42 - 199687950;
  v514 = -1974868763 * v179 - 199687950;
  v508 = -1974868763 * v180 - 199687950;
  v484 = -1974868763 * v115 - 199687950;
  HIDWORD(v454) = *&v119[4 * BYTE1(v561)];
  LODWORD(v454) = *&v119[4 * (*(v38 - 164) ^ 0xD0)];
  *(v38 - 164) = *&v119[4 * (BYTE1(v103) ^ 0x50)];
  v518 = *&v119[4 * (BYTE1(*(v38 - 148)) ^ 0x2D)];
  *(v38 - 148) = *&v119[4 * BYTE1(v448)];
  HIDWORD(v421) = *&v119[4 * v471];
  LODWORD(v44) = (-1974868763 * v174 - ((9685450 * v174 + 3277284) & 0x33BAF4C) - 172566376) ^ *&v117[4 * (v173 ^ 0xBC)];
  HIDWORD(v420) = *&v119[4 * v436];
  v532 = *&v119[4 * (BYTE1(*(v38 - 152)) ^ 0x9E)];
  v530 = *&v119[4 * v427];
  v525 = *&v119[4 * v426];
  v519 = *&v119[4 * v422];
  v523 = *&v119[4 * v478];
  LODWORD(v42) = *&v119[4 * BYTE1(v417)];
  v182 = *&v119[4 * (v554 ^ 0xB0)] ^ (-1974868763 * v181 - 199687950);
  v479 = *&v119[4 * v473];
  v501 = *&v119[4 * v452];
  v513 = *&v119[4 * (BYTE1(v512) ^ 0xCC)];
  *(v38 - 152) = *&v119[4 * v171];
  v183 = v170 - ((2 * v170) & 0x33BAF4C);
  LODWORD(v474) = *&v119[4 * (BYTE1(v173) ^ 0xF4)];
  LODWORD(v428) = *(v38 - 252) + 1737048508;
  HIDWORD(v425) = v560 + 1737048508;
  LODWORD(v452) = v500 + 1737048508;
  HIDWORD(v449) = v496 + 1737048508;
  HIDWORD(v435) = HIDWORD(v432) + 1737048508;
  HIDWORD(v447) = v430 + 1737048508;
  HIDWORD(v470) = v172 + 1737048508;
  v497 = v44 - ((2 * v44) & 0xCF128378) + 1737048508;
  LODWORD(v44) = *&v113[4 * (BYTE2(v173) ^ 0xF4)];
  v555 = *&v117[4 * v509];
  v184 = *&v117[4 * (v551 ^ 0xBF)];
  v185 = *&v117[4 * (v538 ^ 0xE)];
  v490 = *&v117[4 * (v489 ^ 0x3D)];
  LODWORD(v459) = *&v117[4 * v458];
  v186 = *&v117[4 * *(v38 - 232)];
  v187 = *&v117[4 * (*(v38 - 160) ^ 0xC9)];
  *(v38 - 168) = *&v117[4 * v424];
  *(v38 - 160) = *&v117[4 * v443];
  LODWORD(v439) = *&v117[4 * v438];
  v188 = *&v117[4 * (*(v38 - 136) ^ 0x1C)];
  LODWORD(v425) = *&v117[4 * (v445 ^ 0x97)];
  v189 = *&v117[4 * v432];
  HIDWORD(v442) = *&v117[4 * v429];
  LODWORD(v432) = *&v117[4 * (*(v38 - 144) ^ 0x33)];
  *(v38 - 144) = (BYTE2(v173) ^ 0xFD84E264) - 1207405559 + v44;
  v539 = *&v117[4 * v462];
  v510 = *&v117[4 * v418];
  HIDWORD(v428) = *&v117[4 * HIDWORD(v417)];
  HIDWORD(v444) = *&v117[4 * (*(v38 - 124) ^ 0x45)];
  LODWORD(v463) = *&v117[4 * (v557 ^ 0xF2)];
  LODWORD(v117) = ((v61 + 1737048508) ^ v182) - ((2 * ((v61 + 1737048508) ^ v182)) & 0x33BAF4C);
  LODWORD(v61) = *(v38 - 256) + 27121574;
  v190 = *(v38 - 248) + 27121574;
  LODWORD(v421) = v476 + 27121574;
  LODWORD(v447) = v446 + 27121574;
  HIDWORD(v474) = *(v38 - 240) + 27121574;
  v191 = v464 + 27121574;
  LODWORD(v75) = v486 + 27121574;
  HIDWORD(v463) = v183 + 27121574;
  v487 = v117 + 27121574;
  v192 = (v419 + 1737048508) ^ v42 ^ v481 ^ 0xC38F08C7;
  LODWORD(v64) = v187 ^ (-1974868763 * v177 - 199687950) ^ 0xADE18B96 ^ (*(v38 - 224) + 1);
  v193 = *(v38 - 128);
  v194 = *(&off_100374800 + v193 - 351) - 4;
  v195 = *(&off_100374800 + v193 - 401);
  v196 = *(&off_100374800 + v193 - 364) - 8;
  v197 = (((*(v195 + (*(v38 - 111) ^ 0xD5)) - 12) ^ 0xED) << 16) | ((v196[*(v38 - 112) ^ 1] ^ 0xAAAAAAAA) << 24);
  LODWORD(v117) = ((v194[*(v38 - 102) ^ 0x49] ^ 0xB7) << 8) & 0xFF00FFFF | (((*(v195 + (*(v38 - 103) ^ 0xB3)) - 12) ^ 0x59) << 16);
  v198 = (((*(v195 + (*(v38 - 99) ^ 0xDLL)) - 12) ^ 0xA9) << 16) | ((v196[*(v38 - 100) ^ 0xCALL] ^ 0x38) << 24);
  v199 = ((v194[*(v38 - 106) ^ 0xD5] ^ 0x94) << 8) | ((v196[*(v38 - 108) ^ 0xC2] ^ 0x60) << 24);
  v200 = *(v38 - 107) ^ 0x45;
  *(v38 - 232) = v195;
  *(v38 - 224) = v194;
  v201 = v199 & 0xFF00FFFF | (((*(v195 + v200) - 12) ^ 0x16) << 16);
  v202 = *(&off_100374800 + (v193 ^ 0x1B0)) - 8;
  v203 = v198 & 0xFFFFFF00 | ((v194[*(v38 - 98) ^ 0xC6] ^ 0xEA) << 8) | (53 * v202[*(v38 - 97) ^ 0xCBLL] + 95) ^ 0x79;
  v204 = v197 & 0xFFFFFF00 | ((v194[*(v38 - 110) ^ 0xE7] ^ 0xE) << 8) | (53 * v202[*(v38 - 109) ^ 0x8ALL] + 95) ^ 0xC9;
  v205 = v201 & 0xFFFFFF00 | (53 * v202[*(v38 - 105) ^ 0xB9] + 95) ^ 0x3C;
  v206 = *(v38 - 104) ^ 0x8ALL;
  v207 = *(v38 - 101) ^ 6;
  *(v38 - 248) = v202;
  *(v38 - 240) = v196;
  LOBYTE(v207) = v202[v207];
  *(v38 - 252) = 95;
  LODWORD(v117) = v117 & 0xFFFFFF00 | (53 * v207 + 95) ^ 0x87 | ((v196[v206] ^ 0x47) << 24);
  *(v38 - 136) = v204 ^ 0x37373737;
  *(v38 - 132) = v203 ^ 0x37373737;
  *(v38 - 128) = v205 ^ 0x37373737;
  *(v38 - 140) = v117 ^ 0x37373737;
  *(v38 - 256) = (HIDWORD(v439) + 27121574) ^ v188 ^ v470;
  v563 = v190 ^ v184 ^ v562;
  v558 = HIDWORD(v420) ^ v186 ^ v506 ^ v553;
  v556 = v61 ^ v555;
  LODWORD(v196) = v536 - ((2 * v536) & 0xABA4B5A6);
  *(v38 - 124) = (((*(v38 - 156) ^ 0x6604FE99) - 1039317320) ^ ((*(v38 - 156) ^ 0x4E23603F) - 366290926) ^ ((*(v38 - 156) ^ 0x680A3018) - 872183753)) - 1502488690;
  LODWORD(v44) = v541 ^ v549;
  LODWORD(v119) = v541 ^ v549 ^ 0xB9EF8AB;
  v550 = v547 ^ v119 ^ 0xB7778D02;
  v548 = v44 ^ 0xB530938F;
  v546 = v545 ^ v119 ^ 0xB2CF6573;
  v544 = v543 ^ v541 ^ 0xD960783;
  v542 = v519 ^ (v420 + 1737048508);
  v540 = v539 ^ v75 ^ v535;
  v537 = v523 ^ (HIDWORD(v419) + 1737048508);
  HIDWORD(v531) = v532 ^ (HIDWORD(v432) + 1737048508) ^ v492;
  LODWORD(v531) = (v430 + 1737048508) ^ v530;
  HIDWORD(v526) = v425 ^ v525 ^ v528 ^ v467;
  LODWORD(v526) = HIDWORD(v442) ^ HIDWORD(v467) ^ (v435 + 27121574);
  HIDWORD(v520) = v432 ^ v191;
  LODWORD(v520) = (v500 + 1737048508) ^ *(v38 - 164);
  HIDWORD(v515) = v518 ^ HIDWORD(v449);
  LODWORD(v515) = v513 ^ (v416 + 1737048508) ^ v514;
  HIDWORD(v511) = HIDWORD(v428) ^ (HIDWORD(v418) + 27121574);
  LODWORD(v511) = v479 ^ v510 ^ v508 ^ *(v38 - 176);
  HIDWORD(v507) = v501 ^ (HIDWORD(v416) + 1737048508);
  LODWORD(v507) = v459 ^ v421;
  HIDWORD(v502) = v490 ^ v504 ^ (v495 + 27121574);
  LODWORD(v502) = *(v38 - 148) ^ *(v38 - 212) ^ (HIDWORD(v452) + 1737048508);
  HIDWORD(v498) = HIDWORD(v444) ^ HIDWORD(v463);
  LODWORD(v498) = v474 ^ *(v38 - 144) ^ v497;
  HIDWORD(v493) = v463 ^ v487;
  LODWORD(v493) = *(v38 - 152) ^ HIDWORD(v470) ^ v484;
  HIDWORD(v488) = *(v38 - 168) ^ v447 ^ *(v38 - 172);
  LODWORD(v488) = *(v38 - 160) ^ HIDWORD(v474);
  *(v38 - 212) = v64;
  v208 = *(v38 - 116);
  LODWORD(v482) = v196 + 1439849171;
  LODWORD(v196) = *(v38 - 120);
  HIDWORD(v482) = 46032142 - v64 - v192;
  HIDWORD(a35) = HIDWORD(v482) ^ v192;
  *(v38 - 120) = v196;
  *(v38 - 176) = 0;
  *(v38 - 144) = *(v38 - 124) < 0x8A95EE1F;
  *(v38 - 148) = v208 ^ 0x2A8;
  v209 = (*(v38 - 184) + v196);
  v211 = *(v38 - 240);
  v210 = *(v38 - 232);
  v212 = *(v38 - 224);
  v213 = *(v38 - 248);
  LODWORD(v206) = *(v38 - 252);
  v214 = v209[7] ^ 0xBFLL;
  v215 = (((*(v210 + (v209[5] ^ 0x87)) - 12) ^ ((v208 ^ 0xA8) - 70)) << 16) | ((*(v211 + (v209[4] ^ 2)) ^ 0x70) << 24) | ((*(v212 + (v209[6] ^ 0xE2)) ^ 0xC8) << 8) | (v206 + 53 * *(v213 + v214)) ^ 0xFA;
  v216 = ((v206 + 53 * *(v213 + (v209[15] ^ 0x3CLL))) ^ 0x68 | ((*(v212 + (v209[14] ^ 8)) ^ 0x8C) << 8)) & 0xFF00FFFF | ((*(v211 + (v209[12] ^ 0xBDLL)) ^ 0x58) << 24) | (((*(v210 + (v209[13] ^ 0xCALL)) - 12) ^ 0xFD) << 16);
  v217 = (v206 + 53 * *(v213 + (v209[3] ^ 0x19))) ^ 0x38 | ((*(v211 + (*v209 ^ 0x50)) ^ 0x45) << 24) | (((*(v210 + (v209[1] ^ 0x1ELL)) - 12) ^ 0x68) << 16) | ((*(v212 + (v209[2] ^ 6)) ^ 0xF0) << 8);
  v218 = ((*(v211 + v209[8]) ^ 0x7B) << 24) | (((*(v210 + (v209[9] ^ 0xB0)) - 12) ^ 0x86) << 16) | ((*(v212 + (v209[10] ^ 0x42)) ^ 0xD) << 8) | (v206 + 53 * *(v213 + (v209[11] ^ 0x60))) ^ 0xDA;
  if ((((v206 + 53 * *(v213 + v214)) ^ 0xFA) & 2) != 0)
  {
    v219 = -2;
  }

  else
  {
    v219 = 2;
  }

  *(v38 - 168) = v215;
  *(v38 - 164) = v216;
  v220 = v548 ^ (v219 + v215);
  *(v38 - 160) = v218;
  *(v38 - 172) = v217;
  v221 = v544 ^ v217;
  v222 = *(&off_100374800 + (v208 ^ 0x141)) - 12;
  v223 = *&v222[4 * ((v546 ^ v218) >> 8)];
  HIDWORD(v225) = v223 ^ 0x1315;
  LODWORD(v225) = v223 ^ 0x51714000;
  v224 = v225 >> 14;
  v226 = *(&off_100374800 + v208 - 224) - 12;
  v227 = *&v222[4 * BYTE1(v221)];
  HIDWORD(v225) = v227 ^ 0x1315;
  LODWORD(v225) = v227 ^ 0x51714000;
  v228 = *&v226[4 * HIBYTE(v220)] - 861551250;
  *(v38 - 116) = v208;
  v229 = *(&off_100374800 + (v208 ^ 0x1B0)) - 8;
  v230 = (-21582785 * *&v229[4 * (v546 ^ v218)] + 2027828368) ^ v228;
  v231 = (-21582785 * *&v229[4 * (v548 ^ (v219 + v215))] + 2027828368) ^ v224;
  v232 = *(&off_100374800 + v208 - 169) - 8;
  v233 = (*&v226[4 * ((v546 ^ v218) >> 24)] - 861551250) ^ (v225 >> 14);
  v234 = *&v232[4 * BYTE2(v220)];
  v235 = v230 + 1439849171 - ((2 * v230) & 0xABA4B5A6);
  v236 = *&v222[4 * BYTE1(v220)];
  HIDWORD(v225) = v236 ^ 0x1315;
  LODWORD(v225) = v236 ^ 0x51714000;
  v237 = (v233 + 1439849171 - ((2 * v233) & 0xABA4B5A6)) ^ v234 ^ (-21582785 * *&v229[4 * (v550 ^ v216)] + 2027828368);
  v238 = (*&v226[4 * ((v550 ^ v216) >> 24)] - 861551250) ^ (v225 >> 14);
  v239 = *&v222[4 * ((v550 ^ v216) >> 8)];
  HIDWORD(v225) = v239 ^ 0x1315;
  LODWORD(v225) = v239 ^ 0x51714000;
  v240 = v238 ^ (-21582785 * *&v229[4 * v221] + 2027828368);
  v241 = HIDWORD(a35) ^ (v237 + HIDWORD(v482) - 2 * (v237 & HIDWORD(v482)));
  v242 = v542 ^ *&v232[4 * ((v550 ^ v216) >> 16)] ^ (*&v226[4 * HIBYTE(v221)] - 861551250) ^ 0x8E1E9161 ^ (v231 + 1439849171 - ((2 * v231) & 0xABA4B5A6));
  v243 = v540 ^ *&v232[4 * BYTE2(v221)] ^ (v225 >> 14) ^ v235 ^ 0x7A8BED94;
  v244 = v537 ^ *&v232[4 * ((v546 ^ v218) >> 16)] ^ 0x342D1067 ^ (v240 + 1439849171 - ((2 * v240) & 0xABA4B5A6));
  v245 = *&v222[4 * ((v241 ^ 0xAB13) >> 8)];
  HIDWORD(v225) = v245 ^ 0x1315;
  LODWORD(v225) = v245 ^ 0x51714000;
  v246 = *&v226[4 * HIBYTE(v243)];
  v247 = (v225 >> 14) ^ (*&v226[4 * HIBYTE(v242)] - 861551250);
  v248 = (2 * v247) & 0xABA4B5A6;
  v249 = v247 + 1439849171;
  v250 = *&v232[4 * BYTE2(v242)];
  v251 = v249 - v248;
  v252 = v246 + 578297921 - ((2 * v246 - 1723102500) & 0xABA4B5A6);
  v253 = *&v222[4 * BYTE1(v244)];
  HIDWORD(v225) = v253 ^ 0x1315;
  LODWORD(v225) = v253 ^ 0x51714000;
  v254 = v225 >> 14;
  v255 = *&v226[4 * ((v241 ^ 0xC04AB13u) >> 24)];
  v256 = (-21582785 * *&v229[4 * v242] + 2027828368) ^ (*&v226[4 * HIBYTE(v244)] - 861551250);
  v257 = *&v222[4 * BYTE1(v242)];
  HIDWORD(v225) = v257 ^ 0x1315;
  LODWORD(v225) = v257 ^ 0x51714000;
  v258 = v225 >> 14;
  v259 = *&v222[4 * BYTE1(v243)];
  HIDWORD(v225) = v259 ^ 0x1315;
  LODWORD(v225) = v259 ^ 0x51714000;
  v260 = *(v38 - 256) ^ *&v232[4 * BYTE2(v244)] ^ (-21582785 * *&v229[4 * v243] + 2027828368) ^ v251;
  v261 = v439 ^ (v442 + 27121574) ^ *&v232[4 * (BYTE2(v241) ^ 4)] ^ (v225 >> 14) ^ 0xD9D684A ^ (v256 + 1439849171 - ((2 * v256) & 0xABA4B5A6));
  v262 = HIDWORD(v531) ^ v250 ^ v252 ^ v254 ^ 0x87DD46DC ^ (-21582785 * *&v229[4 * (v241 ^ 0x33)] + 2027828368);
  v263 = v531 ^ *&v232[4 * BYTE2(v243)] ^ (-21582785 * *&v229[4 * v244] + 2027828368) ^ v258 ^ 0x96521C3F ^ (v255 + 578297921 - ((2 * v255 - 1723102500) & 0xABA4B5A6));
  v264 = *&v222[4 * ((v260 ^ 0xB36B) >> 8)];
  HIDWORD(v225) = v264 ^ 0x1315;
  LODWORD(v225) = v264 ^ 0x51714000;
  v265 = v225 >> 14;
  v266 = *&v222[4 * BYTE1(v261)];
  v267 = -21582785 * *&v229[4 * v262] + 2027828368;
  HIDWORD(v225) = v266 ^ 0x1315;
  LODWORD(v225) = v266 ^ 0x51714000;
  v268 = v225 >> 14;
  v269 = *&v222[4 * BYTE1(v262)];
  HIDWORD(v225) = v269 ^ 0x1315;
  LODWORD(v225) = v269 ^ 0x51714000;
  v270 = (-21582785 * *&v229[4 * v261] + 2027828368) ^ v265;
  v271 = (*&v226[4 * HIBYTE(v262)] - 861551250) ^ v268 ^ (-21582785 * *&v229[4 * v263] + 2027828368);
  v272 = (*&v226[4 * HIBYTE(v261)] - 861551250) ^ (v225 >> 14);
  v273 = *&v222[4 * BYTE1(v263)];
  HIDWORD(v225) = v273 ^ 0x1315;
  LODWORD(v225) = v273 ^ 0x51714000;
  v274 = v272 ^ (-21582785 * *&v229[4 * (v260 ^ 0x6B)] + 2027828368);
  v275 = *&v226[4 * HIBYTE(v263)] - 861551250;
  v276 = *&v232[4 * BYTE2(v263)];
  v277 = (v444 + 27121574) ^ v189 ^ HIDWORD(v430) ^ *&v232[4 * ((v260 ^ 0x2F7BB36B) >> 16)] ^ (v271 + 1439849171 - ((2 * v271) & 0xABA4B5A6));
  v278 = HIDWORD(v526) ^ v276 ^ 0x6C5D5347 ^ (v274 + 1439849171 - ((2 * v274) & 0xABA4B5A6));
  v279 = v526 ^ *&v232[4 * BYTE2(v262)] ^ v275 ^ 0xD8A932B2 ^ (v270 + 1439849171 - ((2 * v270) & 0xABA4B5A6));
  BYTE2(v262) = BYTE2(v277) ^ 0x6F;
  v280 = HIDWORD(v520) ^ *&v232[4 * BYTE2(v261)] ^ (*&v226[4 * (HIBYTE(v260) ^ 0xEE)] - 861551250) ^ 0xDBC82169 ^ (((v225 >> 14) ^ v267) + 1439849171 - ((2 * ((v225 >> 14) ^ v267)) & 0xABA4B5A6));
  v281 = *&v232[4 * BYTE2(v278)];
  v282 = *&v222[4 * (((v444 - 10330) ^ v189 ^ WORD2(v430) ^ *&v232[4 * ((v260 ^ 0x2F7BB36B) >> 16)] ^ (v271 + 23251 - ((2 * v271) & 0xB5A6)) ^ 0x9E59) >> 8)];
  v283 = *&v222[4 * BYTE1(v280)];
  HIDWORD(v225) = v282 ^ 0x1315;
  LODWORD(v225) = v282 ^ 0x51714000;
  v284 = v225 >> 14;
  HIDWORD(v225) = v283 ^ 0x1315;
  LODWORD(v225) = v283 ^ 0x51714000;
  v285 = *&v222[4 * BYTE1(v278)];
  v286 = (*&v226[4 * ((v277 ^ 0xD16F9E59) >> 24)] - 861551250) ^ (-21582785 * *&v229[4 * v279] + 2027828368) ^ (v285 >> 14);
  v287 = (*&v226[4 * HIBYTE(v278)] - 861551250) ^ v284 ^ (-21582785 * *&v229[4 * v280] + 2027828368);
  v288 = (v225 >> 14) ^ (*&v226[4 * HIBYTE(v279)] - 861551250) ^ (-21582785 * *&v229[4 * v278] + 2027828368);
  v289 = *&v229[4 * (v277 ^ 0x79)];
  v290 = -21582785 * v289 - 827289757 - ((-43165570 * v289 - 239310560) & 0xABA4B5A6);
  v291 = *&v222[4 * BYTE1(v279)];
  HIDWORD(v225) = v291 ^ 0x1315;
  LODWORD(v225) = v291 ^ 0x51714000;
  v292 = v563 ^ *&v232[4 * BYTE2(v279)] ^ (v287 + 1439849171 - ((2 * v287) & 0xABA4B5A6));
  BYTE2(v291) = BYTE2(v292) ^ 0x34;
  v293 = v520 ^ *&v232[4 * BYTE2(v262)] ^ 0xF4361671 ^ (v288 + 1439849171 - ((2 * v288) & 0xABA4B5A6));
  v294 = (v566 + 27121574) ^ v185 ^ HIDWORD(v459) ^ v281 ^ (*&v226[4 * HIBYTE(v280)] - 861551250) ^ (v225 >> 14) ^ v290;
  v295 = HIDWORD(v515) ^ *&v232[4 * BYTE2(v280)] ^ 0x7E1E5010 ^ ((v286 ^ (v285 << 18) ^ 0x4C5545C5) + 1439849171 - 2 * ((v286 ^ (v285 << 18) ^ 0x4C5545C5) & 0x55D25ADB ^ v286 & 8));
  v296 = (-21582785 * *&v229[4 * (v292 ^ 0x8E)] + 2027828368) ^ (*&v226[4 * HIBYTE(v293)] - 861551250);
  v297 = *&v226[4 * ((v292 ^ 0xE0349DAE) >> 24)];
  v298 = *&v232[4 * BYTE2(v295)];
  v299 = *&v222[4 * ((v292 ^ 0x9DAE) >> 8)];
  HIDWORD(v225) = v299 ^ 0x1315;
  LODWORD(v225) = v299 ^ 0x51714000;
  v300 = v225 >> 14;
  v301 = v296 + 1439849171 - ((2 * v296) & 0xABA4B5A6);
  v302 = *&v232[4 * BYTE2(v293)];
  v303 = v297 + 578297921 - ((2 * v297 - 1723102500) & 0xABA4B5A6);
  v304 = *&v222[4 * BYTE1(v295)];
  HIDWORD(v225) = v304 ^ 0x1315;
  LODWORD(v225) = v304 ^ 0x51714000;
  v305 = v225 >> 14;
  v306 = *&v222[4 * ((v294 ^ 0x500A) >> 8)];
  v307 = v300 ^ (-21582785 * *&v229[4 * v293] + 2027828368) ^ (*&v226[4 * HIBYTE(v295)] - 861551250);
  HIDWORD(v225) = v306 ^ 0x1315;
  LODWORD(v225) = v306 ^ 0x51714000;
  v308 = v225 >> 14;
  v309 = *&v222[4 * BYTE1(v293)];
  HIDWORD(v225) = v309 ^ 0x1315;
  LODWORD(v225) = v309 ^ 0x51714000;
  v310 = (-21582785 * *&v229[4 * v295] + 2027828368) ^ (*&v226[4 * ((v294 ^ 0x6754500Au) >> 24)] - 861551250) ^ (v225 >> 14);
  v311 = *&v232[4 * BYTE2(v291)];
  v312 = v515 ^ v298 ^ v301 ^ v308 ^ 0x541774FA;
  v313 = HIDWORD(v511) ^ *&v232[4 * ((v294 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v307 + 1439849171 - ((2 * v307) & 0xABA4B5A6));
  v314 = v511 ^ v302 ^ v303 ^ (-21582785 * *&v229[4 * (v294 ^ 0x2A)] + 2027828368) ^ 0x31E19BF8 ^ v305;
  v315 = HIDWORD(v507) ^ v311 ^ 0x8EB61C45 ^ (v310 + 1439849171 - ((2 * v310) & 0xABA4B5A6));
  v316 = *&v222[4 * BYTE1(v313)];
  v317 = *&v229[4 * ((BYTE4(v511) ^ v232[4 * ((v294 ^ 0x6754500Au) >> 16)]) ^ 0x82 ^ (v307 - 45 - ((2 * v307) & 0xA6)))];
  HIDWORD(v225) = v316 ^ 0x1315;
  LODWORD(v225) = v316 ^ 0x51714000;
  v318 = (v225 >> 14) + 1439849171 - ((2 * (v225 >> 14)) & 0xABA4B5A6);
  v319 = *&v222[4 * BYTE1(v315)];
  HIDWORD(v225) = v319 ^ 0x1315;
  LODWORD(v225) = v319 ^ 0x51714000;
  v320 = *&v232[4 * BYTE2(v312)];
  v321 = *&v229[4 * (v312 - ((2 * v312) & 0x40)) + 128];
  v322 = (v225 >> 14) ^ (*&v226[4 * HIBYTE(v312)] - 861551250);
  v323 = 2027828368 - 2097485968 * v321 + 2075903183 * v321 + 1439849171 - 2 * ((2027828368 - 2097485968 * v321 + 2075903183 * v321) & 0x55D25ADB ^ (2075903183 * v321) & 8);
  v324 = *&v222[4 * BYTE1(v312)];
  v325 = -21582785 * v317 - 827289757 - ((-239310560 - 43165570 * v317) & 0xABA4B5A6);
  HIDWORD(v225) = v324 ^ 0x1315;
  LODWORD(v225) = v324 ^ 0x51714000;
  v326 = v225 >> 14;
  v327 = *&v222[4 * BYTE1(v314)];
  HIDWORD(v225) = v327 ^ 0x1315;
  LODWORD(v225) = v327 ^ 0x51714000;
  v328 = HIDWORD(v421) ^ (v449 + 1737048508) ^ *&v232[4 * BYTE2(v314)] ^ v326 ^ (*&v226[4 * HIBYTE(v315)] - 861551250) ^ v325;
  v329 = v507 ^ v320 ^ (*&v226[4 * HIBYTE(v314)] - 861551250) ^ v318 ^ (-21582785 * *&v229[4 * v315] + 2027828368) ^ 0x7C892C4A;
  v330 = HIDWORD(v502) ^ *&v232[4 * BYTE2(v315)] ^ (*&v226[4 * HIBYTE(v313)] - 861551250) ^ (v225 >> 14) ^ 0x190B7FE4 ^ v323;
  v331 = v502 ^ *&v232[4 * BYTE2(v313)] ^ (-21582785 * *&v229[4 * v314] + 2027828368) ^ 0xCFA132BA ^ (v322 + 1439849171 - ((2 * v322) & 0xABA4B5A6));
  v332 = v328 ^ 0x402CF460;
  v333 = *&v232[4 * BYTE2(v331)];
  v334 = *&v222[4 * BYTE1(v329)];
  v335 = (v328 ^ 0x402CF460u) >> 24;
  HIDWORD(v225) = v334 ^ 0x1315;
  LODWORD(v225) = v334 ^ 0x51714000;
  v336 = v225 >> 14;
  v337 = *&v222[4 * BYTE1(v331)];
  HIDWORD(v225) = v337 ^ 0x1315;
  LODWORD(v225) = v337 ^ 0x51714000;
  v338 = *&v229[4 * (v328 ^ 0x40)];
  v339 = 2027828368 - 2097485968 * v338 + 2075903183 * v338 + 1439849171 - 2 * ((2027828368 - 2097485968 * v338 + 2075903183 * v338) & 0x55D25ADF ^ (2075903183 * v338) & 0xC);
  v340 = (-21582785 * *&v229[4 * v330] + 2027828368) ^ (v225 >> 14) ^ (*&v226[4 * v335] - 861551250);
  v341 = *&v222[4 * BYTE1(v330)];
  HIDWORD(v225) = v341 ^ 0x1315;
  LODWORD(v225) = v341 ^ 0x51714000;
  v342 = v225 >> 14;
  v343 = (*&v226[4 * HIBYTE(v330)] - 861551250) ^ v336 ^ (-21582785 * *&v229[4 * v331] + 2027828368);
  v344 = (-21582785 * *&v229[4 * v329] + 2027828368) ^ (*&v226[4 * HIBYTE(v331)] - 861551250);
  v345 = v344 + 1439849171 - ((2 * v344) & 0xABA4B5A6);
  v346 = *&v222[4 * BYTE1(v332)];
  HIDWORD(v225) = v346 ^ 0x1315;
  LODWORD(v225) = v346 ^ 0x51714000;
  v347 = HIDWORD(v498) ^ *&v232[4 * BYTE2(v329)] ^ 0x2655A6B2 ^ (v340 + 1439849171 - ((2 * v340) & 0xABA4B5A6));
  v348 = v498 ^ *&v232[4 * BYTE2(v330)] ^ (v225 >> 14) ^ 0x354150DE ^ v345;
  v349 = HIDWORD(v493) ^ v333 ^ v342 ^ (*&v226[4 * HIBYTE(v329)] - 861551250) ^ 0x6005D395 ^ v339;
  v350 = v493 ^ *&v232[4 * BYTE2(v332)] ^ 0xD6EF510D ^ (v343 + 1439849171 - ((2 * v343) & 0xABA4B5A6));
  v351 = *&v232[4 * BYTE2(v347)];
  v352 = *&v222[4 * BYTE1(v349)];
  HIDWORD(v225) = v352 ^ 0x1315;
  LODWORD(v225) = v352 ^ 0x51714000;
  v353 = (v225 >> 14) + 1439849171 - ((2 * (v225 >> 14)) & 0xABA4B5A6);
  v354 = *&v226[4 * HIBYTE(v347)];
  v355 = (-21582785 * *&v229[4 * v347] + 2027828368) ^ (*&v226[4 * HIBYTE(v349)] - 861551250);
  v356 = v354 + 578297921 - ((2 * v354 - 1723102500) & 0xABA4B5A6);
  v357 = *&v229[4 * v349];
  v358 = 2027828368 - 2097485968 * v357 + 2075903183 * v357 + 1439849171 - 2 * ((2027828368 - 2097485968 * v357 + 2075903183 * v357) & 0x55D25AD7 ^ (2075903183 * v357) & 4);
  v359 = *&v222[4 * BYTE1(v348)];
  HIDWORD(v225) = v359 ^ 0x1315;
  LODWORD(v225) = v359 ^ 0x51714000;
  v360 = v225 >> 14;
  v361 = *&v222[4 * BYTE1(v347)];
  HIDWORD(v225) = v361 ^ 0x1315;
  LODWORD(v225) = v361 ^ 0x51714000;
  v362 = v225 >> 14;
  v363 = *&v222[4 * BYTE1(v350)];
  HIDWORD(v225) = v363 ^ 0x1315;
  LODWORD(v225) = v363 ^ 0x51714000;
  v364 = *&v226[4 * HIBYTE(v348)] - 861551250;
  v365 = -21582785 * *&v229[4 * v348] + 2027828368;
  v366 = *&v232[4 * BYTE2(v348)] ^ *(v38 - 212) ^ (v225 >> 14) ^ (v355 + 1439849171 - ((2 * v355) & 0xABA4B5A6));
  v367 = v558 ^ *&v232[4 * BYTE2(v349)] ^ v360 ^ v356 ^ (-21582785 * *&v229[4 * v350] + 2027828368);
  v368 = HIDWORD(v488) ^ v351 ^ (*&v226[4 * HIBYTE(v350)] - 861551250) ^ v365 ^ 0xDE12593A ^ v353;
  v369 = v488 ^ v364 ^ *&v232[4 * BYTE2(v350)] ^ v362 ^ 0x8D19C5A6 ^ v358;
  v370 = *&v222[4 * BYTE1(v369)];
  HIDWORD(v225) = v370 ^ 0x1315;
  LODWORD(v225) = v370 ^ 0x51714000;
  v371 = -21582785 * *&v229[4 * (v366 ^ 0x30)] + 2027828368;
  v372 = *&v232[4 * ((v367 ^ 0x5FCCBF7C) >> 16)];
  v373 = *&v232[4 * ((v366 ^ 0x911C5930) >> 16)];
  v374 = (v225 >> 14) + 1439849171 - ((2 * (v225 >> 14)) & 0xABA4B5A6);
  v375 = *&v222[4 * ((v366 ^ 0x5930) >> 8)];
  HIDWORD(v225) = v375 ^ 0x1315;
  LODWORD(v225) = v375 ^ 0x51714000;
  v376 = (v225 >> 14) + 1439849171 - ((2 * (v225 >> 14)) & 0xABA4B5A6);
  v377 = (*&v226[4 * (HIBYTE(v366) ^ 0x50)] - 861551250) ^ (-21582785 * *&v229[4 * (v367 ^ 0x7C)] + 2027828368);
  v378 = *&v222[4 * ((v367 ^ 0xBF7C) >> 8)];
  HIDWORD(v225) = v378 ^ 0x1315;
  LODWORD(v225) = v378 ^ 0x51714000;
  v379 = v225 >> 14;
  v380 = *&v226[4 * (HIBYTE(v367) ^ 0x9E)] - 861551250;
  v381 = *&v222[4 * BYTE1(v368)];
  HIDWORD(v225) = v381 ^ 0x1315;
  LODWORD(v225) = v381 ^ 0x51714000;
  v382 = v556 ^ v372 ^ (*&v226[4 * HIBYTE(v368)] - 861551250) ^ (-21582785 * *&v229[4 * v369] + 2027828368) ^ v376;
  LODWORD(v226) = (*&v226[4 * HIBYTE(v369)] - 861551250) ^ v482 ^ v379 ^ *&v232[4 * BYTE2(v368)] ^ v371;
  v383 = v428 ^ HIDWORD(v454) ^ v373 ^ (-21582785 * *&v229[4 * v368] + 2027828368) ^ v380 ^ v374;
  v384 = HIDWORD(v425) ^ v454 ^ *&v232[4 * BYTE2(v369)] ^ (v225 >> 14) ^ (v377 + 1439849171 - ((2 * v377) & 0xABA4B5A6));
  v385 = v384 ^ 0x644667A6;
  LODWORD(v222) = v383 ^ 0x7EC2C88;
  v386 = *(v38 - 116);
  v387 = *(&off_100374800 + (v386 ^ 0x1B6));
  v388 = *(v387 + 4 * ((v384 ^ 0x644667A6u) >> 24));
  HIDWORD(v225) = v388 ^ 0x12;
  LODWORD(v225) = v388 ^ 0x9C4B5280;
  v389 = *(&off_100374800 + v386 - 200) - 12;
  *(v38 - 152) = *&v389[4 * ((v383 ^ 0x7EC2C88u) >> 16)];
  v390 = *(&off_100374800 + (v386 ^ 0x125)) - 8;
  v391 = ((v383 ^ 0x88) + 1323475497 - 2 * ((v383 ^ 0x7EC2C88) & 0x3D ^ v383 & 0x14)) ^ *&v390[4 * (v383 ^ 0xDB)] ^ (v225 >> 7);
  v392 = *&v389[4 * ((v384 ^ 0x644667A6u) >> 16)];
  *(v38 - 156) = ((2 * v392) & 0xBB708860 ^ 0xD5CF77DF) + 315992770 + (((v392 ^ 0x3FE13D23) - 1071725859) ^ ((v392 ^ 0x652C7C2A) - 1697414186) ^ ((v392 ^ 0xEFD02798) + 271571048));
  v393 = v391 - 1256364399 - ((2 * v391) & 0x6A3ACD22u);
  v394 = *&v389[4 * ((v226 ^ 0xAD089B63) >> 16)];
  v395 = *&v389[4 * ((v382 ^ 0x9A25D878) >> 16)];
  v396 = *(&off_100374800 + (v386 ^ 0x17A)) - 4;
  v397 = ((v384 ^ 0xA6) + 1323475497 - ((2 * (v384 ^ 0x644667A6)) & 0x52)) ^ (BYTE1(v222) + 1490609358 - ((v222 >> 7) & 0x19C)) ^ *&v390[4 * (v384 ^ 0xF5)] ^ *&v396[4 * (BYTE1(v222) ^ 0xF5)];
  LODWORD(v389) = v397 - 1256364399 - ((2 * v397) & 0x6A3ACD22);
  v398 = *(v387 + 4 * ((v382 ^ 0x9A25D878) >> 24));
  HIDWORD(v225) = v398 ^ 0x12;
  LODWORD(v225) = v398 ^ 0x9C4B5280;
  v399 = (v225 >> 7) - 1256364399 - ((2 * (v225 >> 7)) & 0x6A3ACD22);
  v400 = *(v387 + 4 * ((v226 >> 24) ^ 0xBD));
  HIDWORD(v225) = v400 ^ 0x12;
  LODWORD(v225) = v400 ^ 0x9C4B5280;
  v401 = v225 >> 7;
  v402 = BYTE1(v385) + 1490609358 - ((v385 >> 7) & 0x19C);
  v403 = *&v396[4 * (BYTE1(v385) ^ 0xF5)];
  v404 = *(v387 + 4 * (v222 >> 24));
  HIDWORD(v225) = v404 ^ 0x12;
  LODWORD(v225) = v404 ^ 0x9C4B5280;
  v405 = *(v38 - 140) ^ *(v38 - 200) ^ v395 ^ v401 ^ v389;
  v406 = *(v38 - 136) ^ *(v38 - 208) ^ (((v226 ^ 0x9B63) >> 8) + 1490609358 - (((v226 ^ 0xAD089B63) >> 7) & 0x19C)) ^ ((v382 ^ 0x78) + 1323475497 - 2 * ((v382 ^ 0x9A25D878) & 0x2D ^ v382 & 4)) ^ *&v390[4 * (v382 ^ 0x2B)] ^ *&v396[4 * (((v226 ^ 0x9B63) >> 8) ^ 0xF5)] ^ (v225 >> 7) ^ *(v38 - 156);
  LODWORD(v222) = *(v38 - 132) ^ *(v38 - 204) ^ (((v382 ^ 0xD878) >> 8) + 1490609358 - (((v382 ^ 0x9A25D878) >> 7) & 0x19C)) ^ v394 ^ *&v396[4 * (((v382 ^ 0xD878) >> 8) ^ 0xF5)] ^ v393;
  v407 = *(v38 - 128) ^ *(v38 - 196) ^ ((v226 ^ 0x63) + 1323475497 - 2 * ((v226 ^ 0xAD089B63) & 0x2D ^ v226 & 4)) ^ v402 ^ *(v38 - 152) ^ *&v390[4 * (v226 ^ 0x30)] ^ v403 ^ v399;
  v408 = *(&off_100374800 + (v386 ^ 0x103));
  v209[3] = *(v408 + (v406 ^ 0xDFLL)) ^ 0x5E;
  v409 = *(&off_100374800 + v386 - 240);
  v209[4] = (*(v409 + (HIBYTE(v407) ^ 0x2CLL)) - 123) ^ 0x78;
  *v209 = (*(v409 + (HIBYTE(v406) ^ 0x57)) - 123) ^ 0xC8;
  v410 = *(&off_100374800 + (v386 ^ 0x18E)) - 12;
  v209[13] = (v410[BYTE2(v222) ^ 0x5CLL] + 123) ^ 0xC7;
  v209[11] = *(v408 + (v405 ^ 0x46)) ^ 0x1A;
  v411 = *(&off_100374800 + v386 - 146) - 4;
  v209[14] = ((BYTE1(v222) ^ 0xEE) + (~(2 * (BYTE1(v222) ^ 0xEE)) | 0xD7) + 21) ^ 0x75 ^ v411[BYTE1(v222)];
  v209[2] = ((BYTE1(v406) ^ 3) - ((v406 >> 7) & 0x28) + 20) ^ 0x8B ^ v411[BYTE1(v406) ^ 0xE6];
  v209[10] = ((BYTE1(v405) ^ 0xAB) - ((v405 >> 7) & 0x28) + 20) ^ 0x6D ^ v411[BYTE1(v405) ^ 0x84];
  v209[15] = *(v408 + (v222 ^ 0x11)) ^ 0xAD;
  v209[5] = (v410[BYTE2(v407) ^ 0x44] + 123) ^ 0xE2;
  v209[8] = (*(v409 + (HIBYTE(v405) ^ 0x26)) - 123) ^ 0xA2;
  v209[7] = *(v408 + (v407 ^ 0x3DLL)) ^ 0xA7;
  v209[12] = (*(v409 + ((v222 >> 24) ^ 0x44)) - 123) ^ 0x23;
  v412 = BYTE2(v406);
  v413 = *(v38 - 148);
  v209[1] = (v410[v412 ^ 0xA3] + 123) ^ 0x17;
  LODWORD(v412) = *(v38 - 120);
  v209[6] = (BYTE1(v407) - ((v407 >> 7) & 0x28) + 20) ^ 0xD0 ^ v411[BYTE1(v407) ^ 0x58];
  v209[9] = (v410[BYTE2(v405) ^ 0xF8] + 123) ^ 0x90;
  v414 = (v412 - 1969885649) < *(v38 - 124);
  if (*(v38 - 144) != (v412 - 1969885649) < 0x8A95EE1F)
  {
    v414 = *(v38 - 144);
  }

  LODWORD(v430) = v420 + 1737048508;
  HIDWORD(v432) = HIDWORD(v419) + 1737048508;
  LODWORD(v444) = HIDWORD(v418) + 27121574;
  LODWORD(v449) = v416 + 1737048508;
  HIDWORD(v452) = HIDWORD(v416) + 1737048508;
  return (*(*(v38 - 192) + 8 * ((69 * v414) ^ v386)))(v393, v413, v402, v209, v399, v386, v403, 412, a9, v416, v417, v418, v419, v420, v421, v425, v428, v430, v432, v435, v439, v442, v444, v447, v449, v452, v454, v459, v463, v467, v470, v474, a33, a34, a35, v482, v488, v493, v498, v502, v507, v511, v515, v520, v526, v531);
}

uint64_t sub_10001AA30()
{
  v4 = 87 * (v2 ^ 0x18D);
  LODWORD(v10) = (v2 + 1007) ^ (50899313 * ((((&v10 | 0xB59804AC) ^ 0xFFFFFFFE) - (~&v10 | 0x4A67FB53)) ^ 0x5E4866C8));
  v12 = &v7;
  v11 = v9;
  (*(v3 + 8 * (v2 ^ 0x8B4u)))(&v10);
  v10 = v9;
  HIDWORD(v11) = (v2 + 1858) ^ ((((&v10 | 0xA24A845E) - (&v10 & 0xA24A845E)) ^ 0x2FE7E6B2) * v1);
  (*(v3 + 8 * (v2 ^ 0x88Cu)))(&v10);
  if (v11 == v0 + v4 - 1044)
  {
    v5 = v7;
  }

  else
  {
    v5 = v11;
  }

  v11 = v9;
  LODWORD(v10) = v2 - (((&v10 ^ 0xA2566C3F) + 1103370475 - 2 * ((&v10 ^ 0xA2566C3F) & 0x41C418EB)) ^ 0x6E3F1638) * v1 + 850;
  (*(v3 + 8 * (v2 ^ 0x891u)))(&v10);
  v11 = v8;
  LODWORD(v10) = v4 - ((&v10 & 0x5BE8CA5C | ~(&v10 | 0x5BE8CA5C)) ^ 0x29BA574F) * v1 + 191;
  (*(v3 + 8 * (v4 ^ 0xD04)))(&v10);
  return v5 ^ v0;
}

uint64_t sub_10001AC18@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  HIDWORD(v17) = a1 ^ a3;
  LODWORD(v17) = a1 ^ v15;
  v18 = (a4 ^ 0x5DB32F92) & (a5 ^ 0xF18BB251) ^ a4 & ((v6 + 270) ^ 0xAC389B02);
  v19 = (a4 ^ v14) & (a5 ^ 0x29CC7F91) ^ a4 & 0x8B80AFFC;
  v20 = (a2 ^ v14) + (v17 >> 27) + (*(v13 + 4 * (v7 + v8)) ^ v12) - 1399154582 + (v19 & 0x86A9FF58 ^ 0xFB5680EF ^ (v18 & 0x56335D9E ^ 0x2B5550BB ^ (v18 ^ 0xF3CFF27D) & (a6 ^ 0xF47F8DF3)) & (v19 ^ 0x7DFF7F93));
  v21 = (v20 ^ 0xEA818070) & (2 * (v20 & 0xE2812472)) ^ v20 & 0xE2812472;
  v22 = ((2 * (v20 ^ 0x6A818814)) ^ 0x100158CC) & (v20 ^ 0x6A818814) ^ (2 * (v20 ^ 0x6A818814)) & v10;
  v23 = v22 ^ (v10 - 2116);
  v24 = (v22 ^ 0x40) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0x2002B198) & v23 ^ (4 * v23) & (v10 - 2);
  v26 = (v25 ^ 0xA000) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x88000C66)) ^ 0x800AC660) & (v25 ^ 0x88000C66) ^ (16 * (v25 ^ 0x88000C66)) & (v10 - 6);
  v28 = v26 ^ v10 ^ (v27 ^ 0x80008400) & (v26 << 8);
  return (*(v11 + 8 * ((3359 * (v7 + 1 == v9 + 44)) ^ v6)))(v20 ^ (2 * ((v28 << 16) & 0x8000000 ^ v28 ^ ((v28 << 16) ^ 0x2C660000) & (((v27 ^ 0x8002806) << 8) & 0x88000000 ^ (((v27 ^ 0x8002806) << 8) ^ 0xAC0000) & (v27 ^ 0x8002806) ^ 0x8000000))) ^ 0x40CCACD3);
}

uint64_t sub_10001AE74@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v3 = 1145954339 - (((a2 ^ 0xA5B6262) - 173761122) ^ ((a2 ^ 0x693C2FA4) - 1765552036) ^ ((((v2 - 348) | 0x509) ^ 0x743847CB) + (a2 ^ 0x8BC7BD3E)));
  **(result + 8) = v3 ^ ((v3 ^ 0xEFDD4F56) + 1020118827) ^ ((v3 ^ 0xABF61C2D) + 2028377170) ^ ((v3 ^ 0xD73B9B13) + 69931888) ^ ((v3 ^ 0xBFFFBFEB) + 1827616664) ^ 0xC44F877B;
  return result;
}

uint64_t sub_10001AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = 843532609 * ((2 * ((v16 - 128) & 0x2497EEA8) - (v16 - 128) + 1533546833) ^ 0x72545D4);
  *(v16 - 120) = &a13;
  *(v16 - 128) = (((32 * v15) ^ 0x9F33F3F5) + 1845493216 + ((v15 << (((v13 - 44) | 0x22) ^ 0xB8)) & 0x3E67E7C0)) ^ v17;
  *(v16 - 124) = v13 - v17 - 371;
  v18 = (*(v14 + 8 * (v13 ^ 0xCF2)))(v16 - 128);
  v19 = (*(a10 + 4) - 763308222) < 0x7FFFFFFF;
  return (*(v14 + 8 * ((2 * v19) | (4 * v19) | v13)))(v18);
}

uint64_t sub_10001B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v25 - 120) = (v24 - 205) ^ (1785193651 * ((2 * ((v25 - 144) & 0xFC96240) - (v25 - 144) + 1882627516) ^ 0x63EA719C));
  *(v25 - 144) = v19;
  *(v25 - 136) = &a19;
  *(v25 - 112) = v19;
  *(v25 - 104) = v23;
  *(v25 - 128) = v22;
  v26 = (*(v21 + 8 * (v24 + 1261)))(v25 - 144);
  return (*(v21 + 8 * ((((v20 + a11 + 2) > 0x7FFFFFFE) | (8 * ((v20 + a11 + 2) > 0x7FFFFFFE))) ^ (v24 - 523))))(v26);
}

uint64_t sub_10001B53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, char *a19, unsigned int a20)
{
  a19 = &a16;
  a20 = v20 + 2066391179 * (&a18 ^ 0xAF278218) + 145;
  v22 = (*(v21 + 8 * (v20 ^ 0xD10)))(&a18);
  return (*(v21 + 8 * ((149 * (a18 == ((v20 + 828) ^ 0xE8A0F7AD))) ^ v20)))(v22);
}

uint64_t sub_10001B6C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v33 = *(v32 - 132);
  if (v33 == 1)
  {
    v35 = a8 + a2 + 417;
    v39 = *(v32 - 164);
    v38 = *(v32 - 160);
    *(v32 - 172) = (8 * (v38 - ((v38 << ((a8 + a2 - 95) ^ 0x59)) & 0x14)) + 80) ^ 0x63;
    *(v32 - 171) = (v38 >> 5) ^ 0x33;
    *(v32 - 170) = (v38 >> 13) ^ 0x33;
    *(v32 - 169) = (v38 >> 21) ^ 0x33;
    *(v32 - 168) = ((__PAIR64__(v39, v38) >> 29) - ((2 * (__PAIR64__(v39, v38) >> 29)) & 0xEC) + 118) ^ 0x45;
    *(v32 - 167) = (v39 >> 5) ^ 0x33;
    *(v32 - 166) = (v39 >> 13) ^ 0x33;
    v37 = (v39 >> 21) ^ 0x33;
    goto LABEL_5;
  }

  v34 = -1796304588;
  if (v33 == 2)
  {
    v35 = 2 * (a2 ^ (a2 - 156));
    v37 = *(v32 - 164);
    v36 = *(v32 - 160);
    *(v32 - 172) = (v37 >> 21) - ((v37 >> 21 << (2 * (a2 ^ (a2 + 100)) - 87)) & 0x66) + 51;
    *(v32 - 171) = (v37 >> 13) - ((v37 >> 12) & 0x66) + 51;
    *(v32 - 170) = (v37 >> 5) - ((v37 >> 4) & 0x66) + 51;
    *(v32 - 169) = (__PAIR64__(v37, v36) >> 29) - ((2 * (__PAIR64__(v37, v36) >> 29)) & 0x66) + 51;
    *(v32 - 168) = (v36 >> 21) - ((v36 >> 20) & 0x66) + 51;
    *(v32 - 167) = (v36 >> 13) - ((v36 >> 12) & 0x66) + 51;
    *(v32 - 166) = (v36 >> 5) - ((v36 >> 4) & 0x66) + 51;
    LOBYTE(v37) = (8 * (v36 - ((2 * v36) & 0x12)) - 56) ^ 0xFB;
LABEL_5:
    v34 = a2 + v35 - 856;
    *(v32 - 165) = v37;
  }

  return sub_1000309F4(a2, a8, a8 + v34 - 363, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_10001B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v36 - 120) = (v35 - 78) ^ ((((v36 - 144) & 0x26C03F73 | ~((v36 - 144) | 0x26C03F73)) ^ 0xCAE32CAC) * v31);
  *(v36 - 112) = &a25;
  *(v36 - 104) = v33;
  *(v36 - 144) = &a25;
  *(v36 - 136) = &a31;
  *(v36 - 128) = v34;
  v37 = (*(v32 + 8 * (v35 + 1388)))(v36 - 144);
  return (*(v32 + 8 * ((((a11 - 2054041575) > 0x7FFFFFFE) | (8 * ((a11 - 2054041575) > 0x7FFFFFFE))) ^ (v35 - 396))))(v37);
}

uint64_t sub_10001B924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v24 = 1564307779 * (((&a17 ^ 0x8409CD38 | 0x6A5940E9) - (&a17 ^ 0x8409CD38) + ((&a17 ^ 0x8409CD38) & 0x95A6BF10)) ^ 0x795D41C2);
  a17 = a12;
  a22 = (a9 ^ 0xBEFAFFDF) - v24 + 2 * a9 + 2107635002;
  a21 = &a13;
  a19 = v22 - v24 - 2013067451;
  a20 = -1293716133 - v24;
  v25 = (*(v23 + 8 * (v22 ^ 0xB72)))(&a17);
  return (*(v23 + 8 * (((a18 != v22 - 392106647) * ((v22 - 1834536340) & 0x4B9F ^ 0x61E)) ^ v22)))(v25);
}

uint64_t sub_10001BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(va + a5) = HIDWORD(a2) + v8 - ((v9 + 15 + a1) & (2 * HIDWORD(a2)));
  return sub_10005197C(a1, va, v9 + 15);
}

uint64_t sub_10001BBA0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = v6 - v5;
  if (a2 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2;
  }

  return (*(v7 + 8 * (((((a5 + 1899) ^ 0xDDC) - 1041) * ((v9 + 1) > 0x23)) ^ a5)))();
}

uint64_t sub_10001BC34(uint64_t a1, int a2, uint64_t a3, int8x16_t a4, double a5, double a6, int8x16_t a7)
{
  v11 = (a3 + (v8 + v7));
  v12 = *v11;
  v13 = v11[1];
  v14 = (a1 + v8);
  *v14 = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a7)), a4);
  v14[1] = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a7)), a4);
  return (*(v10 + 8 * (((((v9 - 1275) ^ 0x1FLL) + v8 == 64) * a2) ^ v9)))();
}

uint64_t sub_10001BC90@<X0>(uint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a3 + v6);
  return (*(v5 + 8 * ((990 * (v6 == ((v4 + 1406997050) & 0x425FD2E ^ 0x40ALL))) ^ (a2 + v4 + 1174))))();
}

uint64_t sub_10001C080(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 26214;
  a1.n128_u8[2] = 102;
  a1.n128_u8[3] = 102;
  a1.n128_u8[4] = 102;
  a1.n128_u8[5] = 102;
  a1.n128_u8[6] = 102;
  a1.n128_u8[7] = 102;
  a2.n128_u16[0] = 13107;
  a2.n128_u8[2] = 51;
  a2.n128_u8[3] = 51;
  a2.n128_u8[4] = 51;
  a2.n128_u8[5] = 51;
  a2.n128_u8[6] = 51;
  a2.n128_u8[7] = 51;
  return sub_10001C0A8(a1, a2);
}

uint64_t sub_10001C0E8@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v27 = (a16 + 24 * v21);
  *v27 = v22;
  v27[1] = a1;
  *&v24[6 * v21 + 4] = v25;
  v27[4] = a19;
  *v24 = v20 + 1;
  return (*(v23 + 8 * ((((a2 + 340549451) & 0xEBB3A6BF ^ 0x94) * ((v19 + v26) < 0x80000003)) ^ a2)))();
}

uint64_t sub_10001C15C()
{
  v0 = *(&off_100374800 + (byte_1002D9610[byte_1002D54E0[(-39 * (dword_1003B90C8 ^ 0x42 ^ qword_1003B9018))] ^ 0xAB] ^ (-39 * (dword_1003B90C8 ^ 0x42 ^ qword_1003B9018))) + 35);
  v1 = *(v0 - 4);
  v2 = *(&off_100374800 + (byte_1002D52E0[byte_1002D2260[(-39 * ((qword_1003B9018 + v1) ^ 0x42))] ^ 0xE1] ^ (-39 * ((qword_1003B9018 + v1) ^ 0x42))) - 132);
  v3 = (*(v2 - 4) ^ v1) - &v10;
  v4 = 329992409 * (v3 - 0x3F921ABBB7B42942);
  v5 = 329992409 * (v3 ^ 0x3F921ABBB7B42942);
  *(v0 - 4) = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = -39 * ((v5 + *(v0 - 4)) ^ 0x42);
  v12 = *(&off_100374800 + (byte_1002CD8D0[byte_1002D9514[v5 - 4] ^ 0x89] ^ v5) + 67);
  v11[0] = (2066391179 * ((v11 - 1802693901 - 2 * (v11 & 0x948D12F3)) ^ 0x3BAA90EB)) ^ 0x1AB;
  v6 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + dword_1003B90C8) ^ 0x42)) ^ byte_1002D53E0[byte_1002D2360[(-39 * ((qword_1003B9018 + dword_1003B90C8) ^ 0x42))] ^ 0x80]) - 69) - 8;
  (*&v6[8 * ((-39 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x42)) ^ byte_1002D52E0[byte_1002D2260[(-39 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x42))] ^ 0xE1]) + 17800])(v11);
  v11[0] = (2066391179 * (((v11 | 0x10507E6B) - (v11 & 0x10507E6B)) ^ 0xBF77FC73)) ^ 0x1AB;
  v7 = -39 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x42);
  v12 = *(&off_100374800 + (byte_1002CD9DC[(byte_1002D9718[v7 - 8] ^ 0x72) - 12] ^ v7) - 42);
  (*&v6[8 * ((-39 * (*(v0 - 4) ^ 0x42 ^ *(v2 - 4))) ^ byte_1002D9610[byte_1002D54E0[(-39 * (*(v0 - 4) ^ 0x42 ^ *(v2 - 4)))] ^ 0xAB]) + 17912])(v11);
  v8 = 50899313 * (((v11 | 0x4BC8480C) - v11 + (v11 & 0xB437B7F0)) ^ 0x5FE7D597);
  LOBYTE(v11[0]) = 30 - v8;
  v11[1] = 2194 - v8;
  return (*&v6[8 * (byte_1002D53E8[(byte_1002D2360[(-39 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x42))] ^ 0x4E) - 8] ^ (-39 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x42))) + 16872])(v11);
}

void sub_10001C5B8(int a1@<W8>)
{
  v4 = (v3 - 347081713) & 0x14B00F9E;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v4 - 225642256) & (2 * v2)) - 112820350;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_10001C60C()
{
  STACK[0x288] = v0;
  v3 = LODWORD(STACK[0x2B8]) + 1411;
  v4 = STACK[0x3A4];
  v5 = (v4 ^ 0x96B00946) & (2 * ((v3 ^ 0x9432AE91) & v4)) ^ (v3 ^ 0x9432AE91) & v4;
  v6 = ((2 * (v4 ^ 0xBEB45986)) ^ 0x550DE3C0) & (v4 ^ 0xBEB45986) ^ (2 * (v4 ^ 0xBEB45986)) & 0x2A86F1E0;
  v7 = v6 ^ 0x2A821020;
  v8 = (v6 ^ 0xA04F180) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xAA1BC780) & v7 ^ (4 * v7) & 0x2A86F1E0;
  v10 = (v9 ^ 0x2A02C180) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x843060)) ^ 0xA86F1E00) & (v9 ^ 0x843060) ^ (16 * (v9 ^ 0x843060)) & 0x2A86F1E0;
  v12 = v10 ^ 0x2A86F1E0 ^ (v11 ^ 0x28061000) & (v10 << 8);
  *(*(v2 + 488) + 4 * (((LODWORD(STACK[0x3A4]) ^ (2 * ((v12 << 16) & 0x2A860000 ^ v12 ^ ((v12 << 16) ^ 0x71E00000) & (((v11 ^ 0x280E1E0) << 8) & 0x2A860000 ^ 0x28060000 ^ (((v11 ^ 0x280E1E0) << 8) ^ 0x6F10000) & (v11 ^ 0x280E1E0))))) >> 2) ^ 0x200FD2E9)) = v1;
  return sub_10001FCA0(v3);
}

uint64_t sub_10001CB28()
{
  v3 = v1 ^ 0xAB2;
  v4 = (v2 ^ 0x93) & (2 * (v2 & 0xDB)) ^ v2 & 0xDB;
  v5 = ((2 * (((((v1 ^ 0xB2) + 44) | 0x90) - 104) ^ v2)) ^ 0xD0) & (((((v1 ^ 0xB2) + 44) | 0x90) - 104) ^ v2) ^ (2 * (((((v1 ^ 0xB2) + 44) | 0x90) - 104) ^ v2)) & 0xE8;
  v6 = (v2 ^ (2 * (((4 * (v5 ^ 0x28)) & 0xE0 ^ ((4 * (v5 ^ 0x28)) ^ 0xA0) & (v5 ^ 0x28) ^ 0x20) & (16 * (v5 & (4 * v4) ^ v4)) ^ v5 & (4 * v4) ^ v4))) & 0x7F;
  v8 = v6 != 91 && (v6 ^ 0x5Bu) < 5;
  return (*(v0 + 8 * ((1564 * v8) ^ v3)))();
}

uint64_t sub_10001CD50@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = v5 + *(v3 + v7) - ((2 * *(v3 + v7)) & 0x66);
  return (*(v1 + 8 * (((v7 != 0) * v6) ^ v2)))(0);
}

uint64_t sub_10001CE58@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v16 = (v14 + 4 * v9);
  v17 = HIDWORD(v13) + v11 * (*(v4 + 4 * v9) ^ a2) + (*v16 ^ a2) + (v7 >> (((v2 - 120) | v8) ^ v5)) + v12 * (*(v15 + 4 * v9) ^ a2);
  *(v16 - 1) = v17 + a2 - (a1 & (2 * v17));
  return (*(v10 + 8 * (((v9 + 1 != v3) * v6) ^ v2)))();
}

uint64_t sub_10001CED0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (((a2 - 1352992061) & 0x50A506EF ^ (v3 - 416)) + v5 >= 0x7FFFFFFF)
  {
    v7 = -v6;
  }

  else
  {
    v7 = v4;
  }

  *(a3 + 4) = v7;
  *(result + 8) = 1508316452;
  return result;
}

uint64_t sub_10001CF28@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((2151 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_10001D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 120) = (v18 + 355) ^ (((2 * ((v23 - 120) & 0x27A36858) - (v23 - 120) + 1482463137) ^ 0x411C324) * v21);
  *(v23 - 112) = v19;
  *(v23 - 104) = &a18;
  v24 = (*(v20 + 8 * (v18 ^ 0xE3B)))(v23 - 120);
  return (*(v20 + 8 * (((*(v23 - 116) > v22) * (v18 - 1727)) ^ v18)))(v24);
}

uint64_t sub_10001D498@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned int a40)
{
  v44 = *(&a28 + a1 + 72);
  v45 = (v44 >> ((v41 + 31) & 0xF6 ^ 0x3E)) ^ 0xFFFFFFA2;
  v46 = ((2 * a1) & 0xBDB773E8) + (a1 ^ 0xDEDBB9F6) + v40;
  *(v42 + v46) = v45 - ((2 * v45) & 0x66) + 51;
  *(v42 + v46 + 1) = (BYTE2(v44) ^ 0x4C) - ((v44 >> 15) & 0x66) + 51;
  *(v42 + v46 + 2) = (BYTE1(v44) ^ 0xD0) - 2 * ((BYTE1(v44) ^ 0xD0) & 0x37 ^ BYTE1(v44) & 4) + 51;
  *(v42 + v46 + 3) = v44 ^ 0x5E;
  return (*(v43 + 8 * ((61 * (a1 + 4 < a40)) ^ v41)))();
}

void sub_10001D584(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 763308221;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v10 = *(a1 + 96) + 528;
  v11 = *(a2 + 8) + (*(a2 + 4) - v9);
  v12 = 1082434553 * (((&a5 | 0x31E2CAA3) - &a5 + (&a5 & 0xCE1D3558)) ^ 0xAAA53C29);
  a8 = v12 ^ 0x2E1;
  a9 = v9 - v12 + 315549053;
  a5 = v10;
  a7 = v11;
  (*(a3 + 18944))(&a5);
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v9);
  JUMPOUT(0x10001D688);
}

uint64_t sub_10001D920@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>, int32x4_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v15 = v11 + 4;
  v16 = v10 + 16;
  a6.i64[0] = *(v16 + 4);
  a6.i32[2] = *(v16 + 12);
  v17 = vextq_s8(a5, a6, 0xCuLL);
  v18 = a6;
  v18.i32[3] = *(v14 + 4 * (v15 + (a4 ^ (a1 + 451))));
  v19 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v18, a10), vandq_s8(v17, a7)), 1uLL), *(v16 - 908));
  v17.i32[0] = *(v13 + 4 * (*(v16 + 4) & 1));
  v17.i32[1] = *(v13 + 4 * (*(v16 + 8) & 1));
  v17.i32[2] = *(v13 + 4 * (*(v16 + 12) & 1));
  v17.i32[3] = *(v13 + 4 * (v18.i8[12] & 1));
  *v16 = veorq_s8(vaddq_s32(vsubq_s32(v19, vandq_s8(vaddq_s32(v19, v19), a8)), a9), v17);
  return (*(v12 + 8 * (((v15 == -84) * a3) ^ (a2 + a4 + 1069))))();
}

uint64_t sub_10001DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + 511;
  v10 = (v4 - 1035603969) & 0x3DBA0F9D;
  v11 = (v4 - 736) | 0x140;
  v12 = v6 - v7;
  if (v5 > v6 - v7)
  {
    v12 = v5;
  }

  return (*(v8 + 8 * ((((v10 ^ 0x49Cu) + v12 > 0x23) * (v11 ^ 0x290)) ^ v9)))(a1, a2, a3, a4, 0);
}

uint64_t sub_10001DB10(uint64_t a1, int a2)
{
  v5 = v3 - 1417692191 < ((((a2 - 882641814) & 0x349C07DC) - 814) ^ 0xF52031FC);
  if ((v4 ^ 0x175F0F07u) > 0xADFCE61 == v5)
  {
    v5 = v3 - 1417692191 > (v4 ^ 0x175F0F07u) - 182439522;
  }

  return (*(v2 + 8 * ((202 * v5) ^ a2)))();
}

uint64_t sub_10001DB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = *(a1 + 48);
  *(v28 - 112) = veorq_s8(**a1, xmmword_1002D9830);
  *(v28 - 184) = v27;
  if (v27)
  {
    v31 = v30 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  v33 = *(v29 + 8 * ((v32 | (2 * v32)) ^ v26));
  *(v28 - 176) = -42900;
  return v33(a1, 159 * (v26 ^ 0x577u), a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10001DC40()
{
  v5 = STACK[0x278] + 4 * v0;
  v6 = *v5;
  LODWORD(v5) = ((*(*STACK[0x288] + (*STACK[0x280] & 0x3302CFDC)) ^ v5) & 0x7FFFFFFF) * ((v4 ^ 0x451) - 1908613708);
  v7 = (v5 ^ WORD1(v5)) * (v4 - 1908612760 + (((((v4 - 369) ^ v0) & v0) >> (__clz((v4 - 369) ^ v0 | 1) ^ 0x1F)) | 0xFFFFFFFE) - 1);
  *(v2 + 4 * v0) ^= v6 ^ *(*(&off_100374800 + SLODWORD(STACK[0x270])) + HIBYTE(v7)) ^ *(*(&off_100374800 + v4 - 191) + HIBYTE(v7) - 1) ^ *(*(&off_100374800 + v4 - 245) + HIBYTE(v7) - 3) ^ v7 ^ (v7 << 16) ^ (506009743 * HIBYTE(v7));
  return (*(v1 + 8 * ((103 * ((((v4 ^ 0x451) - 945) ^ ~(((v4 ^ 0x451) - 852170025) & 0x32CB1177)) + v3 == 0)) ^ v4 ^ 0x451)))();
}

uint64_t sub_10001DD7C()
{
  v7 = *(v3 + v5 * v2 + 36);
  v9 = (v7 + v6) < 0x80000003 && v7 != ((v0 + v1) | 0x24200000) - 2118739948;
  return (*(v4 + 8 * ((v9 * (((v0 + v1) ^ (v1 + 1897)) - 575)) ^ v0)))(4294925278);
}

void sub_10001DDD4()
{
  v4 = *(v1 + 16);
  **(v1 + 24) = v0;
  *v4 = v3;
  *v1 = *(v2 + 24);
}

uint64_t sub_10001DF00@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v2 + v5) - ((((v4 - 1) | 0xF3) ^ 0x9C) & (2 * *(v2 + v5))) + 51;
  return (*(v1 + 8 * ((47 * (v5 == 0)) ^ v4)))(0);
}

uint64_t sub_10001DF48(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10001E0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v8 + 4 * (a3 + v6));
  *v9 = __ROR4__(*(v9 - 3) ^ v5 ^ *(v9 - 8) ^ *(v9 - 14) ^ *(v9 - 16), 31) ^ 0xAC395023;
  return (*(v4 + 8 * (((4 * (a3 + 1 != v7 + 80)) | (16 * (a3 + 1 != v7 + 80))) ^ v3)))();
}

void sub_10001E1CC(uint64_t a1)
{
  v1 = 1785193651 * ((a1 & 0xCB705029 | ~(a1 | 0xCB705029)) ^ 0x275343F6);
  v2 = *(a1 + 32) ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 16) + v1;
  v9 = 0x2D7F28BD00000082;
  v10 = &v18;
  v13 = 0x2D7F28BD00000001;
  v14 = &v8;
  v11 = 0x2D7F28BD00000082;
  v12 = &v17;
  v15 = 0x2D7F28BD00000082;
  v16 = &v19;
  if (v3 | v4)
  {
    v6 = v5 == 1652706055;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x320]) = v8;
  v14[39] = *(v11 + 8 * v9);
  v14[59] = v13;
  v14[60] = v13;
  v15 = v14[33];
  v16 = (&STACK[0x540] + v15);
  v14[61] = &STACK[0x540] + v15;
  v14[33] = v15 + 320;
  v17 = *(v13 + 72);
  LODWORD(STACK[0x3B4]) = v17;
  LODWORD(STACK[0x348]) = *(v13 + 76);
  LODWORD(STACK[0x414]) = *(v13 + 80);
  LODWORD(STACK[0x3FC]) = *(v13 + 84);
  v18 = *(v13 + 96);
  if (v18 == 2)
  {
    v23 = LODWORD(STACK[0x2B8]) + 1411;
    LODWORD(STACK[0x468]) = *(v13 + 88);
    return sub_10001FCA0(v23);
  }

  else if (v18 == 1)
  {
    v19 = LODWORD(STACK[0x2B8]) + 36;
    v20 = *(v13 + (v10 + 1808619418)) ^ ((LODWORD(STACK[0x2B8]) + 844) | 0xC);
    v21 = ((*(v13 + (v10 + 1808619420)) ^ 0x33) << 16) | ((*(v13 + (v10 + 1808619421)) ^ 0x33333333) << 24) | ~v20 | ((*(v13 + (v10 + 1808619419)) ^ 0x33) << 8);
    *v16 = v21 + a8 - 2 * (v21 & v12 ^ ~v20 & 7);
    return (*(v11 + 8 * ((49 * ((v10 + 1808619422) > 0x3F)) ^ v19)))();
  }

  else
  {
    return sub_10002DC04(v17);
  }
}

uint64_t sub_10001E584@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W8>)
{
  v11 = 9 * (v7 ^ 0x45C) + v3 - 44;
  *(v10 - 228 + a3) = *(v9 + v3) - ((2 * *(v9 + v3)) & 0x66) + 51;
  v12 = a1 + v3 + 46 < v4;
  if (v4 < v5 != v11 > a2)
  {
    v12 = v4 < v5;
  }

  return (*(v8 + 8 * ((!v12 * v6) ^ v7)))();
}

uint64_t sub_10001E64C(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v39 = (v38 + 908);
  v40 = vld1q_dup_f32(v39);
  v41 = v36 ^ 0x23;
  v42.i64[0] = 0x8000000080000000;
  v42.i64[1] = 0x8000000080000000;
  v43.i64[0] = 0x100000001;
  v43.i64[1] = 0x100000001;
  a6.i64[0] = *(a35 + 4);
  a6.i32[2] = *(a35 + 12);
  v44 = vextq_s8(v40, a6, 0xCuLL);
  v45 = a6;
  v45.i32[3] = *(a35 + 16);
  v46 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v45, vnegq_f32(v43)), vandq_s8(v44, v42)), 1uLL), *(a35 - 908));
  v44.i32[0] = *(v35 + 4 * (*(a35 + 4) & 1));
  v44.i32[1] = *(v35 + 4 * (*(a35 + 8) & (((v41 - 943426781) & 0x383B8FF7u) - 1908)));
  v44.i32[2] = *(v35 + 4 * (*(a35 + 12) & 1));
  v44.i32[3] = *(v35 + 4 * (v45.i8[12] & 1));
  *a35 = veorq_s8(vaddq_s32(vsubq_s32(v46, vandq_s8(vaddq_s32(v46, v46), vdupq_n_s32(0x46A5EEF6u))), vdupq_n_s32(0xA352F77B)), v44);
  return (*(v37 + 8 * (v41 ^ 0x23)))();
}

void sub_10001E8C0(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((~a1 & 0xB8C3CEDE | a1 & 0x473C3121) ^ 0x69C1E3A1));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10001E978@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a3 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * (((a2 + v4 + 51) | 0x20) ^ 0x4E7)) | (a2 + v4 + 753))))();
}

uint64_t sub_10001EA04@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = (v7 ^ 1) * a3;
  v11 = (v6 - 1);
  *(STACK[0x238] + v11) = *(v9 + v11) ^ *(v5 + (v11 & 0xF)) ^ *((v11 & 0xF) + v4 + 5) ^ *((v11 & 0xF) + a4 + 1) ^ ((v10 ^ 0x17) * (v11 & 0xF)) ^ 0x33;
  return (*(v8 + 8 * (((16 * (v11 == ((((v10 + a1) & a2) + 65) ^ ((v10 - 304) | 2)))) | (32 * (v11 == ((((v10 + a1) & a2) + 65) ^ ((v10 - 304) | 2))))) ^ (v10 + 732))))();
}

void sub_10001EA74(uint64_t a1, int a2)
{
  *(v2 - 128) = *(v2 - 168) ^ 0xCE5920C4;
  *(v2 - 132) = *(v2 - 164) ^ (2 * (a2 - 526)) ^ 0x1978C512;
  *(v2 - 136) = *(v2 - 172) ^ 0x8AA361C;
  *(v2 - 140) = *(v2 - 160) ^ 0xDCB3F494;
  JUMPOUT(0x100019224);
}

uint64_t sub_10001EADC@<X0>(unint64_t a1@<X8>)
{
  v3 = LODWORD(STACK[0x2B8]) ^ 0x10D;
  v5 = v2[49];
  v2[46] = *(v1 + 8 * (LODWORD(STACK[0x2B8]) - 279));
  v2[57] = v5;
  LODWORD(STACK[0x524]) = 1783634944;
  STACK[0x2D0] = a1;
  return (*(v1 + 8 * ((((*(v5 + 68) & 0x3F) + 1783634944 + ((37 * (v3 ^ 0x61)) ^ 0x95AFE0B6) > 0xFFFFFFBF) * (((v3 + 1191452463) & 0xB8FBE6D7) - 1428)) ^ v3)))();
}

uint64_t sub_10001EBAC(uint64_t a1)
{
  v5 = v2 - 1;
  *(v3 + v5) = *(a1 + v5) - ((2 * *(a1 + v5)) & 0x66) + 51;
  return (*(v4 + 8 * (((v5 == 0) * (v1 - 366)) ^ (v1 + 870))))();
}

uint64_t sub_10001EBF0@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + 8);
  v9 = ((2 * (v8[(&_mh_execute_header + (a1 << 32)) >> (v4 - 16)] ^ v1)) << ~(v5 ^ 8)) | ((v8[a1] ^ v1) >> (v5 ^ 8));
  *v8 = v9 + v1 - (v2 & (2 * v9));
  return (*(v7 + 8 * ((409 * (v3 == 1)) ^ v4)))();
}

uint64_t sub_10001ED54(uint64_t result)
{
  v1 = 1361651671 * ((~result & 0xF64E4E49F4C8DED6 | result & 0x9B1B1B60B372129) ^ 0x25E33D7027EA2E5ALL);
  v2 = *(result + 32) + v1;
  v3 = *(result + 20) + v1;
  v4 = *(result + 16) + v1;
  v5 = *(result + 24) + v1;
  v6 = *(result + 8) - v1;
  v7 = *result + v1;
  v8 = v7 < v2;
  v9 = v7 < v2;
  v10 = v8;
  if (v5)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  *(result + 12) = v11 ^ v4;
  return result;
}

uint64_t sub_10001EDEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v11 - 132);
  if (v12 == 2)
  {
    return (*(v10 + 8 * (((*(v11 - 136) != 0) * ((a2 ^ (a2 - 177)) + 697)) ^ (a2 + a8))))(a10);
  }

  if (v12 == 1)
  {
    return (*(v10 + 8 * (((*(v11 - 136) != 0) * ((a2 + a8) ^ 0x1C2)) ^ (a2 + a8))))(a10);
  }

  return sub_10001EEC8(a10);
}

uint64_t sub_10001EEC8@<X0>(char a1@<W3>, int a2@<W8>)
{
  v9 = v6 - v2;
  *(v9 + 91) = (a1 + v2 + v4 + v3 + 16) * ((v2 + v4) ^ v5);
  *(v9 + 90) = ((v2 + v4) ^ 0xBB) * (v2 + v4 + 18);
  return (*(v8 + 8 * (((v2 == 90) * v7) ^ a2)))(0);
}

uint64_t sub_10001EFF4()
{
  v3 = (v1 - 188482660) & 0xB3C077A;
  v4 = v0 < v3 - 456 + v3 - 57 - 2211;
  return (*(v2 + 8 * ((4 * v4) | (8 * v4) | v3)))();
}

uint64_t sub_10001F040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  *(a2 + v31) = a31;
  v34 = ((v33 + 784) ^ 0x310u) - 37 == 64 - v31;
  return (*(v32 + 8 * (((2 * v34) | (8 * v34)) ^ (v33 + 784))))(a1, a2, a3);
}

uint64_t sub_10001F128()
{
  result = (*(v2 + 8 * (v0 ^ 0xF34)))();
  *(v1 + 8) = 392145697;
  return result;
}

uint64_t sub_10001F188(uint64_t a1)
{
  v1 = 1082434553 * ((2 * (a1 & 0x82F5123) - a1 + 2010164956) ^ 0xEC975856);
  v2 = *(a1 + 12) + v1;
  v3 = *(a1 + 8) + v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 763308221;
  v5 = v4 - 763308221 < 0;
  v7 = 763308221 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_100374800 + v2 - 1966) + ((((v3 - 1634008285) < (4 * v7)) * (((v2 - 379123668) & 0x1698F7CF) - 1950)) ^ v2) - 1))();
}

uint64_t sub_10001F254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, uint64_t a11, int a12)
{
  v17 = *(a1 + 28) + v15 + *(v12 + 16) - 681059082;
  v18 = 2066391179 * ((&a9 & 0xCE7F7BEE | ~(&a9 | 0xCE7F7BEE)) ^ 0x9EA70609);
  a9 = v18 + 282798208;
  a10 = (((v16 - 136) | 0x3A3) + v17 - 224701747) ^ v18;
  a11 = v12;
  a12 = v16 - v18 + 354;
  v19 = (*(v14 + 8 * (v16 + 2253)))(&a9);
  return (*(v14 + 8 * (v16 ^ ((*(v12 + 24) == v13) << 6))))(v19);
}

uint64_t sub_10001F360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31)
{
  v35 = v33 - 90;
  v41 = (v33 + 1088) | 2;
  v42 = v33 + 549;
  v36 = a31;
  v37 = v33 + 407;
  *(v34 - 120) = (v33 + 407) ^ (1785193651 * ((-759068912 - ((v34 - 144) | 0xD2C18710) + ((v34 - 144) | 0x2D3E78EF)) ^ 0x3EE294CF));
  *(v34 - 144) = v36;
  *(v34 - 136) = &a26;
  *(v34 - 128) = &a30;
  *(v34 - 112) = &a26;
  *(v34 - 104) = v32;
  v38 = (v33 - 90) ^ 0x875;
  (*(v31 + 8 * v38))(v34 - 144);
  *(v34 - 120) = v37 ^ (1785193651 * (((v34 - 144) & 0x91040498 | ~((v34 - 144) | 0x91040498)) ^ 0x7D271747));
  *(v34 - 112) = &a26;
  *(v34 - 104) = v32;
  *(v34 - 136) = a14;
  *(v34 - 128) = &a30;
  *(v34 - 144) = &a26;
  (*(v31 + 8 * v38))(v34 - 144);
  *(v34 - 136) = a15;
  *(v34 - 128) = &a26;
  *(v34 - 144) = (v35 - 875954455) ^ (1082434553 * ((((v34 - 144) | 0x754D8A2E) - (v34 - 144) + ((v34 - 144) & 0x8AB275D0)) ^ 0xEE0A7CA4));
  (*(v31 + 8 * (v35 + 2067)))(v34 - 144);
  *(v34 - 136) = &a22;
  *(v34 - 128) = &a26;
  *(v34 - 144) = v35 + 1082434553 * ((((v34 - 144) | 0xB5A6B225) + (~(v34 - 144) | 0x4A594DDA)) ^ 0x2EE144AE) + 480;
  (*(v31 + 8 * (v35 + 2027)))(v34 - 144);
  *(v34 - 128) = &a22;
  *(v34 - 144) = &a26;
  *(v34 - 136) = (v35 + 904) ^ (1785193651 * ((v34 - 144) ^ 0x13DCEC20));
  v39 = (*(v31 + 8 * (v35 ^ 0x85B)))(v34 - 144);
  return (*(v31 + 8 * ((((v41 ^ 0xFFFFFC03) + (v35 ^ 0x764)) * (a19 == 0)) ^ v42)))(v39);
}

uint64_t sub_10001F594@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  HIDWORD(v15) = a1 ^ a3;
  LODWORD(v15) = a1 ^ (v14 + v7 + 23 - 1459);
  v16 = (v6 ^ 0x5DB32F92) & (a4 ^ 0xF927104F) ^ v6 & 0x5B6BC022;
  v17 = (v15 >> 27) + (((a6 ^ 0xF3C15F17) + 205431017) ^ ((a6 ^ 0x21902700) - 563095296) ^ ((a6 ^ 0x701DA87A) - 1880991866)) + (v16 & 0x7720304D ^ 0xD9FFCFB2 ^ (v16 ^ 0xA6DCFFFD) & (a5 & 0x29B8DA4C ^ 0xA8D71FFE ^ (v6 ^ 0x8BF40A21) & (a5 ^ v13))) - 995193694 + (((*(v12 + 4 * (v8 + v9)) ^ 0x71D34732) - 1909671730) ^ ((*(v12 + 4 * (v8 + v9)) ^ 0x4F4F51A6) - 1330598310) ^ ((*(v12 + 4 * (v8 + v9)) ^ 0xD63CE66C) + 700651924));
  v18 = (v17 ^ 0x3AA50E1C) & (2 * (v17 & 0x20C1AE5C)) ^ v17 & 0x20C1AE5C;
  v19 = ((2 * (v17 ^ 0x3A27162C)) ^ 0x35CD70E0) & (v17 ^ 0x3A27162C) ^ (2 * (v17 ^ 0x3A27162C)) & a2;
  v20 = v19 ^ 0xA228810;
  v21 = (v19 ^ 0x43060) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0x6B9AE1C0) & v20 ^ (4 * v20) & a2;
  v23 = (v22 ^ 0xA82A040) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x10641830)) ^ 0xAE6B8700) & (v22 ^ 0x10641830) ^ (16 * (v22 ^ 0x10641830)) & a2;
  v25 = v23 ^ a2 ^ (v24 ^ 0xA628000) & (v23 << 8);
  return (*(v11 + 8 * ((85 * (v8 + 1 == v10 + 4)) ^ v7)))(v17 ^ (2 * ((v25 << 16) & 0x1AE60000 ^ v25 ^ ((v25 << 16) ^ 0x38700000) & (((v24 ^ 0x10843870) << 8) & 0x1AE60000 ^ 0x18460000 ^ (((v24 ^ 0x10843870) << 8) ^ 0x66B80000) & (v24 ^ 0x10843870)))) ^ 0x87800ED1);
}

uint64_t sub_10001F8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43)
{
  v43 = *(a1 + 8) + 210068311 * ((2 * (a1 & 0x9D6ACF85) - a1 + 1653944442) ^ 0xF0430FDE);
  v44 = 1785193651 * (((v54 | 0xDC4669B0) - v54 + (v54 & 0x23B99648)) ^ 0xCF9A8590);
  v56 = &v53;
  v55 = v43 + v44 - 562358880;
  v57 = v44 ^ 0x942D0C24;
  v45 = (*(*(&off_100374800 + (v43 ^ 0x3C)) + (v43 ^ 0x918) - 1))(v54);
  return sub_10004DEBC(v45, v46, v43, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_10001FBAC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((*(v3 + v5) << ((2 * (v2 ^ 0xE)) ^ 0x9B)) & 0x66) + 51;
  return (*(v4 + 8 * ((22 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10001FC4C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v10 ^ v11;
  v15 = a1 > 0xFFFFFFC0 || a10 + a1 > 0xFFFFFFFFFFFFFFDFLL;
  return (*(v12 + 8 * ((112 * ((v15 ^ v13) & 1)) ^ v10)))(2909532358);
}

uint64_t sub_10001FD80(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t (*a18)(__n128, __n128, __n128, __n128), int a19, unsigned int a20, uint64_t a21, uint64_t a22, int a23, int a24, uint64_t a25, int32x4_t a26, int32x4_t a27, int32x4_t a28, int32x4_t a29)
{
  a17 = HIDWORD(a11) - 1237300116;
  v37 = (v36 - 220);
  v38.n128_u64[0] = 0x3333333333333333;
  v38.n128_u64[1] = 0x3333333333333333;
  v39 = vdupq_n_s32(0x68A0F0FFu);
  v40 = vdupq_n_s32(0xE8A0F0F8);
  a20 = (a4 - 57655193) & 0x97C9EB6E;
  a21 = v35 - 16;
  a16 = a4 + 403542160;
  v41.n128_u64[0] = 0x6666666666666666;
  v41.n128_u64[1] = 0x6666666666666666;
  a18 = *(v31 + 8 * (a7 + v29 - 355));
  a22 = 320;
  v42 = *(v36 - 148);
  v43 = *(v36 - 144);
  v44 = *(v36 - 140);
  v45 = *(v36 - 136);
  v46 = *(v36 - 124);
  if (v46 == 2)
  {
    v117 = vld4q_s8(v37);
    v90 = veorq_s8(v117.val[0], v38);
    v91 = vmovl_high_u8(v90);
    v92 = vmovl_u8(*v90.i8);
    v93 = veorq_s8(v117.val[1], v38);
    _Q21 = vmovl_high_u8(v93);
    _Q20 = vmovl_u8(*v93.i8);
    v96 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v97 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v98 = veorq_s8(v117.val[2], v38);
    v99 = vmovl_u8(*v98.i8);
    v100 = vmovl_high_u8(v98);
    v117.val[0] = veorq_s8(v117.val[3], v38);
    v117.val[1] = vmovl_u8(*v117.val[0].i8);
    v117.val[2] = vmovl_u16(*v117.val[1].i8);
    v117.val[1] = vmovl_high_u16(v117.val[1]);
    v117.val[0] = vmovl_high_u8(v117.val[0]);
    v117.val[3] = vmovl_u16(*v117.val[0].i8);
    v117.val[0] = vmovl_high_u16(v117.val[0]);
    v101 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v100, 8uLL)), vshlq_n_s32(vmovl_high_u16(v91), 0x18uLL)), v117.val[0]);
    v102 = vorrq_s8(vorrq_s8(vorrq_s8(v97, vshll_n_u16(*v100.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v91.i8), 0x18uLL)), v117.val[3]);
    v103 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v99, 8uLL)), vshlq_n_s32(vmovl_high_u16(v92), 0x18uLL)), v117.val[1]);
    v104 = vorrq_s8(vorrq_s8(vorrq_s8(v96, vshll_n_u16(*v99.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v92.i8), 0x18uLL)), v117.val[2]);
    v117.val[0] = veorq_s8(vandq_s8(v101, v39), (*v117.val & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    v117.val[3] = veorq_s8(vandq_s8(v102, v39), (*&v117.val[3] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    v117.val[1] = veorq_s8(vandq_s8(v103, v39), (*&v117.val[1] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    v117.val[2] = veorq_s8(vandq_s8(v104, v39), (*&v117.val[2] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    a26 = vaddq_s32(vsubq_s32(v104, vaddq_s32(v117.val[2], v117.val[2])), v40);
    a27 = vaddq_s32(vsubq_s32(v103, vaddq_s32(v117.val[1], v117.val[1])), v40);
    a28 = vaddq_s32(vsubq_s32(v102, vaddq_s32(v117.val[3], v117.val[3])), v40);
    a29 = vaddq_s32(vsubq_s32(v101, vaddq_s32(v117.val[0], v117.val[0])), v40);
    *(&a26 + v33 + 1922730815) = __ROR4__(*(&a24 + v33 + 1922730815) ^ v30 ^ *(&a21 + v33 + 1922730815) ^ *(&a16 + v33 + 1922730815) ^ *(&a26 + ((97 * (a20 ^ 0x34E)) ^ (v33 + 570)) + 1922730815), 31) ^ 0xAC395023;
    return (*(v31 + 8 * ((1137 * (v35 == 1922730752)) ^ a20)))(v43);
  }

  else if (v46 == 1)
  {
    v118 = vld4q_s8(v37);
    v47 = 2 * (a4 ^ (a4 - 788));
    v48 = veorq_s8(v118.val[0], v38);
    v49 = vmovl_high_u8(v48);
    v50 = vmovl_high_u16(v49);
    v51 = vmovl_u16(*v49.i8);
    v52 = vmovl_u8(*v48.i8);
    v53 = vmovl_high_u16(v52);
    v54 = vmovl_u16(*v52.i8);
    v55 = veorq_s8(v118.val[1], v38);
    v56 = vmovl_u8(*v55.i8);
    v57 = vmovl_high_u8(v55);
    v58 = veorq_s8(v118.val[2], v38);
    _Q25 = vmovl_u8(*v58.i8);
    _Q24 = vmovl_high_u8(v58);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v118.val[0] = veorq_s8(v118.val[3], v38);
    v118.val[1] = vmovl_u8(*v118.val[0].i8);
    v118.val[2] = vmovl_u16(*v118.val[1].i8);
    v118.val[0] = vmovl_high_u8(v118.val[0]);
    v118.val[3] = vmovl_u16(*v118.val[0].i8);
    v118.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v118.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v57, 8uLL), v50));
    v118.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v118.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v57.i8, 8uLL), v51));
    v118.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v118.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v56, 8uLL), v53));
    v118.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v118.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v56.i8, 8uLL), v54));
    v67 = veorq_s8(vandq_s8(v118.val[0], v39), (*&v50 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    v68 = veorq_s8(vandq_s8(v118.val[3], v39), (*&v51 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    v69 = veorq_s8(vandq_s8(v118.val[1], v39), (*&v53 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    v70 = veorq_s8(vandq_s8(v118.val[2], v39), (*&v54 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    a26 = vaddq_s32(vsubq_s32(v118.val[2], vaddq_s32(v70, v70)), v40);
    a27 = vaddq_s32(vsubq_s32(v118.val[1], vaddq_s32(v69, v69)), v40);
    a28 = vaddq_s32(vsubq_s32(v118.val[3], vaddq_s32(v68, v68)), v40);
    a29 = vaddq_s32(vsubq_s32(v118.val[0], vaddq_s32(v67, v67)), v40);
    v71 = *(&off_100374800 + v47 - 1541);
    v72 = (v44 & 0x8D9BD615 ^ 0x8008D005 ^ (v43 ^ 0x2FD70678) & (v44 ^ v30) | v43 & 0xD073C016 ^ 0x50330012 ^ (v43 ^ ((v47 ^ 0xBB) + 1572022463)) & (v45 ^ 0x723F107B)) + (v42 ^ v30) + *(*(&off_100374800 + (v47 ^ 0x6F5)) + a21 + v33) + (a26.i32[(*(*(&off_100374800 + v47 - 1530) + a21 + v33 - 4) - 50)] ^ v34);
    v73 = *(v71 + a21 + v33);
    v74 = ((v73 + 57) ^ 0x9A) & (2 * ((v73 + 57) & 0xC2)) ^ (v73 + 57) & 0xC2;
    v75 = ((2 * ((v73 + 57) ^ 0x1E)) ^ 0xB8) & ((v73 + 57) ^ 0x1E) ^ (2 * ((v73 + 57) ^ 0x1E)) & 0xDC;
    v76 = ((4 * v75) & 0xD8 ^ 0x4C ^ ((4 * v75) ^ 0x70) & v75) & (16 * (~v75 & (4 * v74) ^ v74)) ^ ~v75 & (4 * v74) ^ v74;
    v77 = v72 ^ ((v72 ^ 0xFFC0A4C2) + 1311076574) ^ ((v72 ^ 0xDA92B6) - 1321253206) ^ ((v72 ^ 0x6ED7E27A) - 550357402) ^ ((v72 ^ 0xDFD7FFEE) + 1848781810) ^ 0x4E1A2BE0;
    v78 = (((v43 ^ 0x627CE836) - 1652353078) ^ ((v43 ^ 0xB1D349AD) + 1311553107) ^ ((v43 ^ 0x71E371F6) - 1910731254)) + 7737907 + ((v77 << (((v73 + 57) ^ (2 * v76)) & 0x15) << (((v73 + 57) ^ (2 * v76)) & 0xA ^ 2)) | (v77 >> (37 - v73)));
    v79 = (v78 ^ 0xA1C43DB2) & (2 * (v78 & 0xA1D6BE3A)) ^ v78 & 0xA1D6BE3A;
    v80 = ((2 * (v78 ^ 0xE1416186)) ^ 0x812FBF78) & (v78 ^ 0xE1416186) ^ (2 * (v78 ^ 0xE1416186)) & 0x4097DFBC;
    v81 = v80 ^ 0x40904084;
    v82 = v79 ^ 0x4097DFBC ^ (v80 ^ 0x79938) & (4 * v79);
    v83 = ((4 * v81) ^ 0x25F7EF0) & v81 ^ (4 * v81) & 0x4097DFBC;
    v84 = v83 & 0x14074A70 ^ v82 ^ (v83 ^ v32) & ((16 * v82) ^ 0x1D7AB1B0);
    v85 = ((16 * v83) ^ 0x1572A170) & (v83 ^ v32) ^ v83 & 0x14074A70;
    v86 = v85 ^ 0x74ABCu;
    v87 = v85 & 0x14074A70 ^ v84 ^ ((v84 << 8) ^ 0x8492C670) & v86;
    v88 = ((v85 << 8) ^ 0x134D7A70) & v86 ^ v85 & 0x14074A70;
    return (*(v31 + 8 * ((187 * (a21 + 1 == v35)) ^ v47)))(v47, v78 ^ (2 * (v87 ^ v88 & 0x14074A70 ^ ((v87 << 16) ^ 0xCBBB4A73) & (v88 ^ 0x40900000) ^ ((v87 << 16) ^ 0xCBBB4A73) & 0x40974A30)) ^ 0x82BB454F, v45, v71, 1922730815, 37, 3418049139, v86, a9, a10, a11, a12);
  }

  else
  {
    v105 = (((v42 ^ 0x3C2337CB) - 1008941003) ^ ((v42 ^ 0x923445CF) + 1842068017) ^ ((v42 ^ 0xC5BA269) - 207331945)) + (((v42 ^ 0xF95EAA6E) + 111236498) ^ ((v42 ^ 0x3F824619) - 1065502233) ^ ((v42 ^ 0x64903C1A) - 1687174170)) + 1358269708;
    v106 = (((v43 ^ 0x389C135) - 59359541) ^ ((v43 ^ 0x2A308030) - 707821616) ^ ((v43 ^ 0x8BF59168) + 1946840728)) + (((v43 ^ 0x6E3B787D) - 1849391229) ^ ((v43 ^ 0xF469BC16) + 194397162) ^ ((v43 ^ 0x381E1406) - 941495302)) + 1309211234;
    v107 = (v106 ^ 0xE4142778) & (2 * (v106 & 0xF690A678)) ^ v106 & 0xF690A678;
    v108 = ((2 * (v106 ^ 0xA5152B78)) ^ 0xA70B1A00) & (v106 ^ 0xA5152B78) ^ (2 * (v106 ^ 0xA5152B78)) & 0x53858D00;
    v109 = v108 ^ 0x50848500;
    v110 = (v108 ^ 0x2010800) & (4 * v107) ^ v107;
    v111 = ((4 * v109) ^ 0x4E163400) & v109 ^ (4 * v109) & 0x53858D00;
    v112 = v110 ^ 0x53858D00 ^ (v111 ^ 0x42040400) & (16 * v110);
    v113 = (16 * (v111 ^ 0x11818900)) & 0x53858D00 ^ 0x43850D00 ^ ((16 * (v111 ^ 0x11818900)) ^ 0x3858D000) & (v111 ^ 0x11818900);
    v114 = (v112 << 8) & 0x53858D00 ^ v112 ^ ((v112 << 8) ^ 0x858D0000) & v113;
    *(v36 - 148) = v105 ^ ((v105 ^ 0x70BD369C) - 2095504046) ^ ((v105 ^ 0xF0BD3CEB) + 51982119) ^ ((v105 ^ 0x718459BA) - 2111813000) ^ ((v105 ^ 0xFDDFBFFF) + 242986035) ^ 0xAE173C5F;
    *(v36 - 144) = v106 ^ (2 * ((v114 << 16) & 0x53850000 ^ v114 ^ ((v114 << 16) ^ 0xD000000) & ((v113 << 8) & 0x53850000 ^ 0x52000000 ^ ((v113 << 8) ^ 0x858D0000) & v113))) ^ 0xF2DD6C15;
    v115 = (((v44 ^ 0x5299EADE) - 1385818846) ^ ((v44 ^ 0x5CA7D374) - 1554502516) ^ ((v44 ^ 0xAC72E9C7) + 1401755193)) + (((*(v36 - 140) ^ 0x53CDA693) - 1405986451) ^ ((*(v36 - 140) ^ 0x394154D3) - 960582867) ^ ((*(v36 - 140) ^ 0xC8C0222D) + 926932435)) + 1950959557;
    v116 = (((v45 ^ 0xC5C6BFA4) + 976830556) ^ ((v45 ^ 0x52324F03) - 1379028739) ^ ((v45 ^ 0x35B820CA) - 901259466)) + (((*(v36 - 136) ^ 0x94FE2D3F) + 1795281601) ^ ((*(v36 - 136) ^ 0xF0CF9E6C) + 254828948) ^ ((*(v36 - 136) ^ 0xC67D633E) + 964861122)) - 1138733388;
    *(v36 - 140) = v115 ^ ((v115 ^ 0x970D5C46) + 1197278547) ^ ((v115 ^ 0x4327D80F) - 1820884708) ^ ((v115 ^ 0x147AF55D) - 1003836342) ^ ((v115 ^ 0xEFFFD7FF) + 1068469996) ^ 0x8DE37686;
    *(v36 - 136) = v116 ^ ((v116 ^ 0x1D78E0E3) - 1795050809) ^ ((v116 ^ 0x3FD1807C) - 1213672870) ^ ((v116 ^ 0x2A503ABB) - 1574344545) ^ ((v116 ^ 0x7F7FF7FE) - 150559268) ^ 0xD5CA7DB7;
    a22 -= 320;
    return a18(v38, v39, v40, v41);
  }
}

uint64_t sub_100020B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v9 = v4 - 1;
  *(a1 + 152) = v9;
  *(a2 + v9) = ((v6 + v3) ^ v5) * (v6 + v3 + 17);
  return (*(v8 + 8 * (((v9 == 0) * v7) ^ a3)))();
}

uint64_t sub_100020B80()
{
  v5 = ((2 * ((v4 - 144) & 0xA35F60) - (v4 - 144) + 2136776863) ^ 0xE41B5615) * v0;
  *(v4 - 128) = v3;
  *(v4 - 136) = v8 - v5 + (v2 ^ 0x2D5AFFE2);
  *(v4 - 132) = v2 - v5 + 451;
  *(v4 - 144) = v10;
  (*(v1 + 8 * (v2 + 875)))(v4 - 144);
  *v7 = v8;
  result = v9;
  *(v9 + 8) = -392105736;
  return result;
}

uint64_t sub_100020D1C@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v10 = v3 < v5;
  v11 = *(v8 + a2);
  v12 = a2 + 1;
  *(v9 - 252 + v2) = (v7 ^ 3) + v11 + (~(2 * v11) | 0x99) - 17;
  if (v10 == v12 > a1)
  {
    v10 = v12 + v5 < v3;
  }

  return (*(v6 + 8 * ((!v10 * v4) ^ v7)))();
}

uint64_t sub_100020D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, uint64_t a17)
{
  v24 = v20 ^ 0x305;
  *a15 = 64;
  *(a17 + 252) = 763308221;
  *(a17 + 256) = a17 + 264;
  *(a17 + 520) = 0x2D7F28BD00000040;
  *(a17 + 528) = a17 + 536;
  STACK[0x268] = a17 + 792;
  *(a17 + 792) = 0x2D7F28BD00000040;
  *(a17 + 800) = a17 + 808;
  STACK[0x280] = a17 + 1064;
  *(a17 + 1064) = 0x2D7F28BD00000040;
  *(a17 + 1072) = a17 + 1080;
  STACK[0x288] = a17 + 1336;
  *(a17 + 1336) = 0x2D7F28BD00000040;
  *(a17 + 1344) = a17 + 1352;
  v25 = *(v23 + 216) + 4;
  v26 = 1082434553 * ((2 * ((v22 - 200) & 0x17203038) - (v22 - 200) + 1759498180) ^ 0xF398394E);
  v27 = v20 + 1386;
  *(v22 - 196) = (((v17 ^ 0x94CFC26D) + 1798323603) ^ ((v17 ^ 0xEC3803CF) + 331873329) ^ ((v17 ^ 0x9057315A) + 1873333926)) + v26 + (v20 ^ 0x42D41557);
  *(v22 - 176) = (v20 + 1386) ^ v26;
  *(v21 + 8) = v25;
  *(v21 + 16) = a15;
  LODWORD(STACK[0x278]) = v20 ^ 0xB12;
  (*(v19 + 8 * (v20 ^ 0xB12)))(v22 - 200);
  v28 = v17 ^ 0xE8A0F0F8;
  v29 = v25 + v28;
  v30 = 1082434553 * (((v22 - 200) & 0xDEF7C9BA | ~((v22 - 200) | 0xDEF7C9BA)) ^ 0xBA4FC0CF);
  *(v22 - 196) = v30 + 1121195814 + (((v17 ^ 0x6C8C8D06) - 1821150470) ^ ((v17 ^ 0x1D845659) - 495212121) ^ ((v17 ^ 0x99A82BA7) + 1717032025));
  *(v22 - 176) = (v20 + 1386) ^ v30;
  *(v22 - 192) = v29;
  *(v22 - 184) = a17 + 520;
  v31 = v20 + 1778;
  (*(v19 + 8 * v31))(v22 - 200);
  v32 = 2 * (v22 - 200);
  v33 = 1082434553 * (((v32 | 0xCF15EA9A) - (v22 - 200) + 410323635) ^ 0x7CCD03C7);
  v34 = v29 + v28;
  *(v22 - 176) = v27 ^ v33;
  *(v22 - 196) = v33 + 1121195814 + (((v17 ^ 0xC75ECCC3) + 950088509) ^ ((v17 ^ 0x5B04D859) - 1527044185) ^ ((v17 ^ 0x74FAE462) - 1962599522));
  v35 = STACK[0x268];
  *(v22 - 192) = v34;
  *(v22 - 184) = v35;
  (*(v19 + 8 * v31))(v22 - 200);
  v36 = v34 + v28;
  v37 = 1082434553 * (((v32 | 0xF61A00E0) - (v22 - 200) + 83034000) ^ 0x604AF6FA);
  v38 = STACK[0x280];
  *(v22 - 192) = v36;
  *(v22 - 184) = v38;
  *(v22 - 196) = v37 + 1121195814 + (((v17 ^ 0x2EA5B751) - 782612305) ^ ((v17 ^ 0x56E99381) - 1458148225) ^ ((v17 ^ 0x90ECD428) + 1863527384));
  *(v22 - 176) = v27 ^ v37;
  (*(v19 + 8 * v31))(v22 - 200);
  v39 = 1082434553 * ((2 * ((v22 - 200) & 0x6A5D9BC8) - (v22 - 200) + 362964022) ^ 0x8EE592BC);
  *(v22 - 176) = v27 ^ v39;
  *(v22 - 196) = v39 + 1121195814 + (((v17 ^ 0x7984F15C) - 2038755676) ^ ((v17 ^ 0xB9606B75) + 1184863371) ^ ((v17 ^ 0x28446AD1) - 675572433));
  *(v22 - 192) = v36 + v28;
  *(v22 - 184) = STACK[0x288];
  (*(v19 + 8 * SLODWORD(STACK[0x278])))(v22 - 200);
  v40 = STACK[0x428];
  v41 = (v18 - 468311845);
  STACK[0x480] = v41;
  return (*(v19 + 8 * ((434 * (v41 == ((v24 - 216) | 0x20) - 188)) ^ (v24 - 184))))(v40);
}

uint64_t sub_1000212CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = *(v61 + 1428);
  *(v64 + 264) = v62 + 256;
  *(v64 + 288) = v61 + 1432;
  if (v65 <= 0x20 && ((1 << v65) & 0x100110000) != 0)
  {
    return (*(v63 + 8 * ((1415 * (*(a9 + 476) == ((LODWORD(STACK[0x2B8]) + 229) ^ 0x258))) ^ (LODWORD(STACK[0x2B8]) + 229))))();
  }

  *(v64 + 264) -= 256;
  return (*(v64 + 344))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_100021418()
{
  result = (*(v3 + 8 * (v0 + 1108)))(v2);
  *(v1 + 16) = 1010648810;
  return result;
}

uint64_t sub_100021530@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2F4]) = a1;
  v6 = (*(v2 + 8 * (v1 + 1025)))(v3 + 4, 0);
  v7 = v1 + 1902508516 + v3[4] - ((2 * v3[4]) & 0xE2CBFB2A) - 372;
  v3[1] = v3[6] + 1902509461 - ((2 * v3[6]) & 0xE2CBFB2A);
  v3[2] = v7;
  v8 = (*(v2 + 8 * (v1 ^ 0xC2B)))(v6);
  v3[3] = v8 + 1902509461 - ((2 * v8) & 0xE2CBFB2A);
  v9 = (*(v2 + 8 * (v1 + 1001)))();
  *v3 = v9 + 1902509461 - ((2 * v9) & 0xE2CBFB2A);
  v10 = (1664525 * (*v4 ^ (*v4 >> 30))) ^ v4[1];
  v4[1] = (((*v3 ^ 0xAC3F5C95) + 1405133675) ^ ((*v3 ^ 0xCBA86ADE) + 878155042) ^ ((*v3 ^ 0x16F2CBDE) - 385010654)) - 229641856 + (((v10 ^ 0x89DCDCCB) - 154480416) ^ ((v10 ^ 0xFAAAF727) - 2051212492) ^ ((v10 ^ 0x73762BEC) + 207628281));
  v11 = STACK[0x2B0];
  v12 = v1 - 1631899878 + STACK[0x2B0];
  v13 = (v1 - 2030745989) ^ STACK[0x2B0];
  v14 = v5 - 200;
  *(v14 + 32) = 2 - STACK[0x2B0];
  *(v5 - 184) = v12 - 2;
  *(v5 - 180) = v13;
  *(v5 - 200) = v11 ^ 1;
  *(v5 - 160) = v12;
  *(v14 + 8) = v11 + 623;
  *(v5 - 176) = ((v1 - 1631899878) ^ 0x75) + v11;
  v15 = (*(v2 + 8 * (v1 + 1037)))(v5 - 200);
  return (*(v2 + 8 * *(v5 - 156)))(v15);
}

uint64_t sub_100021754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = v17 - a5 + 1185;
  v20 = 2066391179 * ((((v18 - 152) | 0xA783E59) - ((v18 - 152) & 0xA783E59)) ^ 0xA55FBC41);
  *(v18 - 152) = v17 - v20 + 1239;
  *(v18 - 148) = a16 - v20 + ((2 * v17) ^ 0x6563398);
  *(v18 - 144) = v18 - 252;
  v21 = (*(v16 + 8 * (v17 ^ 0x97C)))(v18 - 152);
  v22 = *(v18 - 184);
  *(v18 - 252 + (v22 & 0x3F)) = -77;
  return (*(v16 + 8 * ((((v22 & 0x3Fu) > 0x37) * (v19 ^ 0xA529A2F7)) ^ v17)))(v21, 2770969154);
}

uint64_t sub_1000218A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) - 149246386;
  v5 = v4 > 0x13048D74;
  if (v4 < 0x13048D73)
  {
    v5 = 1;
  }

  return (*(a3 + 8 * ((29 * !v5) ^ 0x6AE)))();
}

uint64_t sub_100021940@<X0>(_BYTE *a1@<X5>, int a2@<W8>)
{
  v4 = (a2 - 44) | 0x220;
  STACK[0x310] = 0;
  LODWORD(STACK[0x2E0]) = 468311845;
  STACK[0x308] = 0;
  v5 = *(v3 + 8 * (a2 - 1132));
  LODWORD(STACK[0x304]) = 468311845;
  return (*(v2 + 8 * ((112 * ((*(v5 - 12) ^ *a1) == (((v4 + 108) | 0xA0) - 65))) ^ v4)))();
}

uint64_t sub_100021A24@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 48) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((((a2 ^ v4) & 1) * ((a2 ^ 0x6BF) - 245)) ^ a2)))();
}

uint64_t sub_100021AC0@<X0>(int a1@<W4>, unsigned int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q3>)
{
  v8 = (v7 + a2);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a4)), a3);
  *v5 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a4)), a3);
  v5[1] = v9;
  return (*(v6 + 8 * (a1 + v4 - 286)))();
}

uint64_t sub_100021B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = LODWORD(STACK[0x2B8]) + 187;
  STACK[0x278] = (*(v67 + 8 * a65))(a66 + a67, 0x100004077774924);
  v70 = (*(v67 + 8 * a64))();
  *v68 = v70;
  v68[1] = 1812433253 * (v70 ^ (v70 >> 30)) + 1;
  return (*(v67 + 8 * ((86 * ((v69 ^ 0x40u) > 1)) ^ v69)))();
}

uint64_t sub_100021C3C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10)
{
  a10 = a1 - 50899313 * (((&a9 | 0xF26EED33) - (&a9 | 0xD9112CC) + 227611340) ^ 0xE64170A8) + 1073;
  a9 = 31 - 113 * (((&a9 | 0x33) - (&a9 | 0xCC) - 52) ^ 0xA8);
  v11 = (*(v10 + 8 * (a1 ^ 0xD4E)))(&a9);
  return sub_100021CC0(v11);
}

uint64_t sub_100022188@<X0>(uint64_t a1@<X8>)
{
  v8 = (v2 + 1893393834) & 0x8F2517D5;
  v7[15] = &STACK[0x540] + a1;
  v7[33] = a1 + 432;
  LODWORD(STACK[0x268]) = v6;
  LODWORD(STACK[0x47C]) = v6;
  v7[3] = v1;
  LODWORD(STACK[0x4CC]) = 1190407932;
  LODWORD(STACK[0x3E4]) = 468311845;
  v7[23] = 0;
  LODWORD(STACK[0x31C]) = 27391768;
  LODWORD(STACK[0x4E8]) = 1564755275;
  *(&STACK[0x540] + a1) = 1458365911;
  LODWORD(STACK[0x260]) = v3 + 571086519;
  LODWORD(STACK[0x280]) = v3 - 875420670;
  LODWORD(STACK[0x288]) = v3 - 1976631481;
  LODWORD(STACK[0x250]) = v3 - 672083153;
  LODWORD(STACK[0x258]) = v8 + v3 - 1101665753;
  v9 = *(&STACK[0x540] + a1);
  LODWORD(STACK[0x278]) = 1458365603;
  v11 = v9 != (((v8 ^ v4) - 615) ^ 0x56ECE4A3) || LODWORD(STACK[0x4E8]) != 1564755274;
  return (*(v5 + 8 * ((1586 * v11) ^ v8)))();
}

uint64_t sub_10002231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v23 - 128) = v20;
  *(v23 - 120) = &a17;
  *(v23 - 136) = (v21 + 716) ^ (((~(v22 | 0xAA17C6F5) + (v22 & 0xAA17C6F5)) ^ 0x9A56D8F) * v17);
  v24 = (*(v18 + 8 * (v21 + 862)))(v23 - 136);
  return (*(v18 + 8 * (((*(v23 - 132) <= v19) * (((v21 ^ 0x6F) - 1001) ^ 0x183)) ^ v21)))(v24);
}

uint64_t sub_100022450@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v14 = (*(*(v11 + 8) + 4 * v5) ^ v10) + v4;
  *(*(a4 + 8) + 4 * v5) = (v14 - (((v6 ^ v7) + v9) & (2 * v14)) + a1) ^ a2;
  return (*(v13 + 8 * (((v12 > v5 + 1) * a3) ^ v8)))();
}

uint64_t sub_1000226B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *(v62 - 200) = (v58 - 1197043715) ^ (1785193651 * ((~((v62 - 200) | 0xE251B5AF) + ((v62 - 200) & 0xE251B5AF)) ^ 0xE72A670));
  (*(v59 + 8 * (v58 ^ 0xC3C)))(v62 - 200);
  *(v61 + 16) = a57;
  *(v61 + 24) = a58;
  *v61 = 86 - -77 * (((~(v62 + 56) | 0x36) + ((v62 + 56) | 0xC9)) ^ 0xE8);
  *(v62 - 196) = (v58 + 755) ^ (1785193651 * (((~(v62 - 200) | 0x10E18F36) + ((v62 - 200) | 0xEF1E70C9)) ^ 0xFCC29CE8));
  v63 = (*(v59 + 8 * (v58 + 1091)))(v62 - 200);
  LODWORD(STACK[0x4EC]) = *(v62 - 192);
  return sub_1000227C4(v63, v60);
}

uint64_t sub_100022814@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v66 = (a44 << (a62 - 31)) + ((LODWORD(STACK[0x288]) << 24) | (a53 << 8)) + LODWORD(STACK[0x208]);
  LODWORD(STACK[0x260]) = a65 ^ 0x86FF8B51;
  LODWORD(STACK[0x250]) = a1 ^ 0x451A958C;
  LODWORD(STACK[0x210]) = a43 ^ 0x38356759;
  LODWORD(STACK[0x248]) = __ROR4__(__ROR4__(v66 ^ 0xC35F6000, 22) ^ 0xA2EBB8AD, 10) ^ 0x90BE66C5;
  STACK[0x268] = v65 + 16;
  return sub_10002A654(160, a2 + 16, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

void sub_100022940(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 763308221;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v10 = *(a2 + 8) + (*(a2 + 4) - v9);
  v11 = 1082434553 * (((&a5 | 0x2570FD2E) - (&a5 & 0x2570FD2E)) ^ 0xBE370BA4);
  a5 = *(a1 + 96) + 800;
  a7 = v10;
  a8 = v11 ^ 0x2E1;
  a9 = v9 - v11 + 315549053;
  (*(a3 + 18944))(&a5);
  JUMPOUT(0x100030610);
}

uint64_t sub_100022B50@<X0>(int a1@<W2>, int a2@<W8>)
{
  v7 = *(v10 + 24);
  if ((a2 + a1) >= 0x7FFFFFFF)
  {
    v8 = -v3;
  }

  else
  {
    v8 = v2;
  }

  v11[1] = v8;
  *(v6 - 128) = v11;
  *(v6 - 120) = (v4 + 397) ^ (1785193651 * ((((v6 - 128) | 0x88C1202A) - ((v6 - 128) & 0x88C1202A)) ^ 0x9B1DCC0A));
  *(v6 - 112) = v7;
  return (*(v5 + 8 * (v4 ^ 0xA5E)))(v6 - 128);
}

uint64_t sub_100022C88@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (*(v3 + 8 * (v4 + 1149)))(**(v2 + 8 * (v4 ^ 0x4FB)), va, (((((v4 ^ 0xC3C4473E) + a1) & ((v4 ^ 0x69D) - 4713) ^ 0x1CC9676C) - 1289283519) ^ ((((v4 ^ 0xC3C4473E) + a1) & ((v4 ^ 0x69D) - 4713) ^ 0xCAC18A8C) + 1697641889) ^ ((((v4 ^ 0xC3C4473E) + a1) & ((v4 ^ 0x69D) - 4713) ^ 0xD608EDE0) + 2045153997)) + 1343324371, 1) == 0;
  return (*(v3 + 8 * ((434 * v5) ^ v4)))();
}

uint64_t sub_100022D50@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = a1 + 1292;
  *(v5 - 104) = a2;
  v7 = a1 + 1292 + 1564307779 * ((v5 - 112) ^ 0x970DCC13) - 1521;
  *(v5 - 108) = v7;
  (*(v3 + 8 * (a1 + 1951)))(v5 - 112);
  v8 = *(v5 - 112);
  *(v5 - 108) = v7;
  *(v5 - 104) = v2;
  (*(v3 + 8 * (v6 + 659)))(v5 - 112);
  v9 = (-401430947 * (*(v5 - 112) + v8) + *(v5 - 112) * v8 + 1630584265) * v4;
  v11[1] = (v9 ^ 0xADFFF8FF) + 2139041726 + ((v6 + 1543498560) & (2 * v9));
  *(v5 - 96) = v2;
  *(v5 - 104) = (v6 - 455) ^ (1785193651 * ((v5 - 112) ^ 0x13DCEC20));
  *(v5 - 112) = v11;
  return (*(v3 + 8 * (v6 + 630)))(v5 - 112);
}

void sub_100022E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, int a35)
{
  v39 = (*(v38 + 4 * v35) ^ a35) - (v36 + 2);
  if (v37 - (v36 + 2) >= (((a33 & 0x92845F7F) - 1340) ^ (v36 + 2)))
  {
    ++v39;
  }

  *(v38 + 4 * v35) = v39 + 2;
  JUMPOUT(0x100022EC8);
}

uint64_t sub_100023060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = (v8 + 1142497329) & 0xBBE6DFDE;
  v10 = (v9 ^ 0x3DF) + v5;
  *(*(a2 + 8) + 4 * (v5 + v2)) = (v7 + v4 + v9) ^ v6;
  v11 = v9 ^ 0x185;
  *(a2 + 4) = v10;
  v12 = v10 + v2;
  if (v10 + v2 < 0)
  {
    v12 = -v12;
  }

  return (*(v3 + 8 * (((((v12 ^ 0x7F7F3ABF) + ((v12 << (v11 - 90)) & 0xFEFE757E) - 2139044544) >= 0) * ((v11 - 301) ^ 0x1C1)) ^ v11)))(a1, (v11 - 301));
}

uint64_t sub_100023140(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v18 = (v17 + v13);
  v19 = vaddq_s8(vaddq_s8(v18[1], a5), vmvnq_s8(vandq_s8(vaddq_s8(v18[1], v18[1]), a4)));
  *v14 = vaddq_s8(vaddq_s8(*v18, a5), vmvnq_s8(vandq_s8(vaddq_s8(*v18, *v18), a4)));
  v14[1] = v19;
  return (*(v16 + 8 * (a13 + v15 - 1687 - 368)))();
}

uint64_t sub_1000231B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v26 = v19 + 1372;
  *(v25 - 136) = a13;
  *(v25 - 120) = a14 + v26 + 669;
  *(v25 - 128) = v23;
  (*(v21 + 8 * (v26 + 959)))(v25 - 136);
  *(v25 - 120) = &a19;
  *(v25 - 128) = (v26 - 103) ^ (1785193651 * ((1994796324 - (v24 | 0x76E62D24) + a12) ^ 0x9AC53EFB));
  *(v25 - 136) = a18;
  (*(v21 + 8 * (v26 + 982)))(v25 - 136);
  *(v25 - 136) = (v26 + 808) ^ (a11 * v20);
  *(v25 - 128) = v23;
  *(v25 - 120) = a18;
  v27 = (*(v21 + 8 * (v26 + 954)))(v25 - 136);
  return (*(v21 + 8 * (((*(v25 - 132) <= v22) * (((v26 ^ 0x700) + 860) ^ 0x58F)) ^ v26)))(v27);
}

uint64_t sub_100023314()
{
  v8 = (v2 - 2);
  v9 = v1 + 2;
  *v8 = (v9 ^ v4) * (v9 + 17);
  *(v8 - 1) = (v9 + v5) * (v9 ^ 0xBB);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ v0)))();
}

uint64_t sub_100023334@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = a4[3] ^ 0x33;
  v7 = ((((*a4 ^ 0x33333333) << 24) | ((a4[1] ^ 0x33) << 16)) + ((a4[2] ^ 0x33) << (((a1 + 58) & 0x75) - 104))) | v6;
  **(v4 + 24) = v7 + v5 - 2 * (v7 & 0x68A0F0FF ^ v6 & 7);
  return sub_1000233B4();
}

uint64_t sub_1000233F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, unsigned int a45, unsigned int a46, unsigned int a47, int a48, char a49)
{
  v57 = *(v52 + 8 * a7);
  if (a49 == 2)
  {
    v60 = (v50 + v53 + 1641432560);
    v61 = ((*v60 ^ a2) << (7 * BYTE4(a28) - 67)) + ((v60[1] ^ a2) << 16) + ((v60[2] ^ a2) << 8);
    *v51 = v61 + (v60[3] ^ a2) + v56 - 2 * ((v61 + (v60[3] ^ a2)) & 0x68A0F0FF ^ (v60[3] ^ a2) & 7);
    return (*(v52 + 8 * ((3954 * ((v53 + 1641432564) < 0x40)) ^ a29)))(v54 + 16, a47);
  }

  else if (a49 == 1)
  {
    v58 = (v50 + v53 + 1641432560);
    v59 = *v58 ^ a2;
    LODWORD(v58) = ((v58[2] ^ a2) << 16) | ((v58[3] ^ 0x33333333) << 24) | v59 | ((v58[1] ^ (v55 + 13)) << 8);
    *v51 = v58 + v56 - 2 * (v58 & 0x68A0F0FF ^ v59 & 7);
    return (*(v52 + 8 * ((56 * ((v53 + 1641432564) < 0x40)) ^ (v55 + 1849))))((v55 + 1849), 0, 0, 1641432560, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
  }

  else
  {
    return sub_100031A74(a1, a2, a3, a4, a5, a6, v57, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v57, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
  }
}

uint64_t sub_100023B9C@<X0>(int a1@<W8>)
{
  v5 = STACK[0x2A0];
  v6 = LODWORD(STACK[0x294]) + STACK[0x2A0];
  v7 = LODWORD(STACK[0x290]) + STACK[0x2A0];
  *(v4 - 180) = (v3 - 2030745044) ^ STACK[0x2A0];
  *(v4 - 176) = v7;
  *(v4 - 184) = v6;
  *(v4 - 200) = v5 ^ 1;
  *(v4 - 160) = LODWORD(STACK[0x2AC]) + v5;
  v8 = v4 - 200;
  *(v8 + 32) = (v1 + 1) - v5;
  *(v8 + 8) = (a1 ^ 3u) + v5;
  v9 = (*(v2 + 8 * (v3 + 1982)))(v4 - 200);
  return (*(v2 + 8 * *(v4 - 156)))(v9);
}

void sub_100023CD0(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 1205761813;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100023D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * (((&a14 | 0x69DE691B) + (~&a14 | 0x962196E4)) ^ 0x77FCE44F);
  a14 = &a13;
  a17 = &a11;
  a18 = v18;
  a15 = v22 + v21 - 979;
  a16 = v22 + 1839819874;
  v23 = (*(v19 + 8 * (v21 ^ 0xD1B)))(&a14);
  return (*(v19 + 8 * (((*(v18 + 24) == v20) * (v21 - 342)) ^ v21)))(v23);
}

uint64_t sub_100023F2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(a13 + 16) = -a2;
  v21 = 143681137 * ((((v20 - 136) | 0xAB469FC9) - ((v20 - 136) & 0xAB469FC9)) ^ 0xCA1E1419);
  *(v20 - 120) = v21 + v18 - 47;
  *(v20 - 136) = v21 ^ 0x46F03C83;
  *(v20 - 128) = a16;
  (*(v19 + 8 * (v18 ^ 0xF0E)))(v20 - 136);
  v22 = 1037613739 * ((2 * ((v20 - 136) & 0x55CF2350) - (v20 - 136) - 1439638355) ^ 0x7B32F1D2);
  *(v20 - 120) = v22 + v18 + 440;
  *(v20 - 128) = a16;
  *(v20 - 136) = (((32 * a15) ^ 0xDFFDF579) + 1870642104 + ((a15 << ((v18 - 69) & 0xA5 ^ 0xA2)) & 0xBFFBEAC0)) ^ v22;
  (*(v19 + 8 * (v18 + 730)))(v20 - 136);
  *(v20 - 128) = (v18 - 332) ^ (1785193651 * ((((v20 - 136) | 0xE978C9BE) - ((v20 - 136) & 0xE978C9BE)) ^ 0xFAA4259E));
  *(v20 - 120) = &a18;
  *(v20 - 136) = a17;
  (*(v19 + 8 * (v18 ^ 0xF77)))(v20 - 136);
  *(v20 - 136) = (v18 + 579) ^ (843532609 * ((((v20 - 136) | 0xA94F27FD) - ((v20 - 136) & 0xA94F27FD)) ^ 0xF5027378));
  *(v20 - 128) = a16;
  *(v20 - 120) = a17;
  v23 = (*(v19 + 8 * (v18 ^ 0xF5B)))(v20 - 136);
  return (*(v19 + 8 * ((200 * (*(v20 - 132) > ((v18 - 963) | 0x552u) + 645500068)) ^ v18)))(v23);
}

void sub_10002417C(uint64_t a1)
{
  v1 = *(a1 + 4) - 1564307779 * ((1625765565 - (a1 | 0x60E736BD) + (a1 | 0x9F18C942)) ^ 0x8150551);
  v3 = *(a1 + 8);
  v5 = v1 - 2066391179 * ((655347132 - (&v3 | 0x270FCDBC) + (&v3 | 0xD8F03243)) ^ 0x77D7B05B) + 1365;
  v2 = *(&off_100374800 + v1 - 173) - 8;
  (*&v2[8 * v1 + 17240])(&v3);
  __asm { BRAA            X8, X17 }
}

void sub_1000242A0(uint64_t a1)
{
  v1 = (*(a1 + 4) - 1388665877 * ((a1 & 0xF983F256 | ~(a1 | 0xF983F256)) ^ 0x8BD16F45) - 1527) | 0x10;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 763308563;
  v3 = v2 - 763308563 < 0;
  v5 = 763308563 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_1000243B8()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x87C)))(1576, 0x105004009637391);
  STACK[0x2C0] = v2;
  return (*(v0 + 8 * (v1 ^ (16 * (((v2 == 0) ^ ((v1 ^ 0x5B) + 7)) & 1)))))();
}

void sub_100024514(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  a3 = a1;
  a4 = (v7 + 424) ^ (1785193651 * ((&a3 - 883954714 - 2 * (&a3 & 0xCB4FEBE6)) ^ 0xD89307C6));
  a5 = v6;
  (*(v5 + 8 * (v7 ^ 0xA7Bu)))(&a3);
  sub_100031160();
}

uint64_t sub_1000245B4@<X0>(int a1@<W8>)
{
  *v2 = STACK[0x344];
  v2[85] = STACK[0x2BC];
  v2[86] = STACK[0x35C];
  v2[87] = STACK[0x364];
  v2[88] = STACK[0x318];
  return (*(v1 + 8 * (((STACK[0x2D8] != 0) * (303 * (((a1 - 88) | 0x50) ^ 0x172) + ((((a1 - 88) | 0x50) + 322) ^ 0xFFFFFBAE))) ^ (((a1 - 88) | 0x50) + 411))))();
}

uint64_t sub_1000246B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v13 = v11 - 8;
  v15.val[0].i64[0] = (v10 + v13 - 1) & a4;
  v15.val[0].i64[1] = (v10 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v10 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v10 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v10 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v10 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v10 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v10 + v13) & 0xF ^ 8;
  *(a2 + v13) = veor_s8(veor_s8(veor_s8(*(v7 + v15.val[0].i64[0] - 7), *(a2 + v13)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v12 + 8 * (((a1 == v13) * a5) ^ a3)))();
}

uint64_t sub_100024724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, char *a19, int a20)
{
  v22 = 742307843 * ((((2 * &a17) | 0x12B66186) - &a17 + 1990512445) ^ 0x9779BD96);
  a18 = v22 + 1546035931;
  LODWORD(a19) = 605012660 - v22;
  HIDWORD(a19) = 1934 - v22;
  a20 = v22 ^ 0x38C154A6;
  (*(v21 + 18968))(&a17);
  a20 = 2066391179 * ((&a17 & 0x7EEB524E | ~(&a17 | 0x7EEB524E)) ^ 0x2E332FA9) + 1194;
  a19 = &a12;
  v23 = (*(v21 + 18504))(&a17);
  return (*(v21 + 8 * ((1711 * (a17 == -392105736)) ^ v20)))(v23);
}

void sub_100024860(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1785193651 * ((2 * (a1 & 0x60B1747C) - a1 + 525241219) ^ 0xC9267A3));
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100024988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = -542396526 - 1388665877 * (&a13 ^ 0x8DAD62EC);
  v16 = (*(v14 + 18744))(&a13);
  return (*(v14 + 8 * ((974 * (a14 == -392105736)) ^ v15)))(v16);
}

uint64_t sub_100024A00()
{
  v6 = (v1 + 32);
  v7 = (v3 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * (((v2 == 32) * (129 * v4 + 1204)) ^ v0)))();
}

uint64_t sub_100024A10()
{
  v3 = (*(v1 + 8 * (v0 ^ 0x859)))();
  STACK[0x458] -= 16;
  return (*(v1 + 8 * (((v0 + 1602) * (v2 == -392105736)) ^ (v0 + 369))))(v3);
}

uint64_t sub_100024AB4()
{
  result = (*(v2 + 8 * (v0 + 2214)))(*v3, *v1, *(v1 + 8) + ((v0 - 1337392061) & 0x4FB6FBF7 ^ 0xB821883A));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return result;
}

uint64_t sub_100024B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  LODWORD(a20) = (v24 + 477) ^ (((((2 * &a20) | 0x43BB8088) - &a20 - 568180804) ^ 0x35F25DDF) * v23);
  a21 = a19;
  a23 = &a17;
  (*(v25 + 8 * (v24 + 1442)))(&a20);
  LODWORD(a20) = (v24 + 477) ^ (((&a20 & 0xEED8F000 | ~(&a20 | 0xEED8F000)) ^ 0x5089264) * v23);
  a23 = &a14;
  a21 = a19;
  (*(v25 + 8 * (v24 + 1442)))(&a20);
  a20 = a19;
  HIDWORD(a21) = (v24 + 1328) ^ (1388665877 * (((&a20 | 0xE8151579) + (~&a20 | 0x17EAEA86)) ^ 0x65B87794));
  v26 = (*(v25 + 8 * (v24 ^ 0xA9E)))(&a20);
  return (*(v25 + 8 * ((2912 * (a21 == ((13 * (v24 ^ 0x3BA) - 533) | 0x379) - 392106625)) ^ v24)))(v26);
}

uint64_t sub_100024D04@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v16 = (*(v13 + 4 * (*(v6 + a3 + v9) - 50)) ^ v12) + (a2 ^ v14) + *(v8 + 4 * (a3 + v9)) + (((v15 ^ a1) + v14 - ((((a4 - 1743375617) & 0x67E9C935) + 1150918582) & (2 * (v15 ^ a1)))) ^ a5);
  v17 = *(v7 + a3 + v9);
  v18 = ((v17 + 104) ^ 0x4B) & (2 * ((v17 + 104) & 0x93)) ^ (v17 + 104) & 0x93;
  v19 = ((2 * ((v17 + 104) ^ 0x69)) ^ 0xF4) & ((v17 + 104) ^ 0x69) ^ (2 * ((v17 + 104) ^ 0x69)) & 0xFA;
  v20 = ((4 * v19) & 0xF0 ^ 0xE0 ^ ((4 * v19) ^ 0xE0) & v19) & (16 * (v19 & (4 * v18) ^ v18)) ^ v19 & (4 * v18) ^ v18;
  v21 = v16 ^ 0x4E1A2BE0 ^ ((v16 ^ 0xE93EF8F4) + 1490758892) ^ ((v16 ^ 0x55733CD3) - 459872051) ^ ((v16 ^ 0xDAA1020) - 1135623104) ^ ((v16 ^ 0xFFFDFFE7) + 1310206969);
  v22 = (((v15 ^ 0xF433963D) + 197945795) ^ ((v15 ^ 0xBCE3F3A7) + 1125911641) ^ ((v15 ^ 0xEA9CB5F7) + 358828553)) - 805920210 + ((v21 << (((v17 + 104) ^ (2 * v20) ^ 0x59) & 7 ^ 2) << (((v17 + 104) ^ (2 * v20) ^ 0x59) & 0x18 ^ 8)) | (v21 >> (v5 - v17)));
  return (*(v11 + 8 * ((489 * (a3 + 1 == v10 + 32)) ^ a4)))(v22 ^ ((v22 ^ 0x98CB9F1D) + 1251848484) ^ ((v22 ^ 0xA9B3A84F) + 2078639730) ^ ((v22 ^ 0x632E5144) - 1317503109) ^ ((v22 ^ 0x7FFFB7D7) - 1381393942) ^ 0x8FE501AC, a5);
}

uint64_t sub_100024FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, int a22, unsigned int a23, char *a24, unsigned int a25)
{
  v29 = 1564307779 * ((&a20 & 0x6428632 | ~(&a20 | 0x6428632)) ^ 0x6EB0B5DE);
  a24 = &a19;
  a22 = v27 - v29 - 2013067073;
  a23 = -1747263268 - v29;
  a25 = (a11 ^ 0xFDDEFDD9) - v29 + ((a11 << (v26 ^ 0x10 ^ (v27 - 46) & 0x5F)) & 2) + 1052505920;
  a20 = a18;
  v30 = (*(v28 + 8 * (v27 ^ 0xAE8)))(&a20);
  return (*(v28 + 8 * ((1153 * (a21 == v25)) ^ v27)))(v30);
}

uint64_t sub_1000250C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char a18, __int16 a19, char a20, char *a21, int a22, unsigned int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a17 = 27391768;
  v30 = *(a2 + 8);
  v31 = 1082434553 * (((&a21 | 0xC3E47D5F) - &a21 + (&a21 & 0x3C1B82A0)) ^ 0x58A38BD5);
  a23 = ((v28 - 460) ^ 0x3F6A079) + *(a2 + 4) + v31;
  a21 = &a14;
  a25 = v31 + v28 + 702;
  a26 = &a20;
  a27 = &a17;
  a28 = v30;
  a24 = &a18;
  v33 = (*(v29 + 8 * (v28 + 1606)))(&a21);
  return (*(v29 + 8 * ((1464 * (a22 == -392105736)) ^ v28)))(v33, a2);
}

uint64_t sub_1000252BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v27 = 143681137 * ((1358894547 - ((v26 - 144) | 0x50FF15D3) + ((v26 - 144) | 0xAF00EA2C)) ^ 0xCE5861FC);
  *(v26 - 144) = v27 ^ 0x46F13C83;
  *(v26 - 128) = v27 + v24 - 291;
  *(v26 - 136) = &a23;
  v28 = (*(v23 + 8 * (v24 + 534)))(v26 - 144);
  return (*(v23 + 8 * ((((v24 - 173115448) & 0xA5187F2 ^ 0x6E9) * (v25 == 0)) ^ (v24 - 74))))(v28);
}

uint64_t sub_1000253CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = &a17;
  *(v20 - 128) = (v19 + 734) ^ (1785193651 * (((v20 - 136) & 0xEABA4CB | ~((v20 - 136) | 0xEABA4CB)) ^ 0xE288B714));
  *(v20 - 136) = a16;
  (*(v18 + 8 * (v19 ^ 0xB2D)))(v20 - 136);
  v21 = 1037613739 * ((((v20 - 136) | 0x17229FC) - (v20 - 136) + ((v20 - 136) & 0xFE8DD600)) ^ 0xD0700483);
  *(v20 - 136) = v21 ^ 0x4F7DB132;
  *(v20 - 120) = v21 + v19 + 1506;
  *(v20 - 128) = v17;
  (*(v18 + 8 * (v19 ^ 0xB04)))(v20 - 136);
  *(v20 - 136) = (v19 + 1645) ^ (843532609 * (((((v20 - 136) | 0xFDBE40F6) ^ 0xFFFFFFFE) - (~(v20 - 136) | 0x241BF09)) ^ 0x5E0CEB8C));
  *(v20 - 128) = v17;
  *(v20 - 120) = a16;
  v22 = (*(v18 + 8 * (v19 ^ 0xB01)))(v20 - 136);
  return (*(v18 + 8 * (((((v19 - 126) ^ (*(v20 - 132) > 0x26799476u)) & 1) * (((v19 + 59) | 0xA) - 565)) ^ v19)))(v22);
}

uint64_t sub_1000255B4(uint64_t a1, uint64_t a2, int a3)
{
  v10 = (v6 - v7 + ((5 * (a3 ^ 0xF7)) ^ 0xF6)) & 0xF;
  v12.val[0].i64[0] = v10;
  v12.val[0].i64[1] = (v6 + -8 - v7 + 22) & 0xF;
  v12.val[1].i64[0] = (v6 + -8 - v7 + 21) & 0xF;
  v12.val[1].i64[1] = (v6 + -8 - v7 + 20) & 0xF;
  v12.val[2].i64[0] = (v6 + -8 - v7 + 19) & 0xF;
  v12.val[2].i64[1] = (v6 + -8 - v7 + 18) & 0xF;
  v12.val[3].i64[0] = (v6 + -8 - v7 + 17) & 0xF;
  v12.val[3].i64[1] = (v6 - v7) & 0xF ^ 8;
  *(v8 + v6 + -8 - v7 + ((5 * (a3 ^ 0x2F7u)) ^ 0xFFFFFFFFFFFFFEF6) + 1) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v8 + v6 + -8 - v7 + ((5 * (a3 ^ 0x2F7u)) ^ 0xFFFFFFFFFFFFFEF6) + 1), *(v4 + v10 - 7)), veor_s8(*(v10 + v3 - 4), *(v10 + v5 - 2)))), 0x3333333333333333), vmul_s8(*&vqtbl4q_s8(v12, xmmword_1002D9820), 0x6161616161616161)));
  return (*(v9 + 8 * ((23 * (-(v6 & 0x18) != -8 - v7)) ^ (a3 - 149))))(xmmword_1002D9820);
}

void sub_10002570C(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100025828@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 & 0xAA02E3FF;
  if (v4 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = -v4;
  }

  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * (((v6 == 0) * (31 * (v5 ^ 0x3FA) - 1213)) ^ v5)))();
}

uint64_t sub_100025B9C@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  *(v4 - 220 + a2) = 51;
  v5 = a2 + 1 == ((v2 - a1 - 224) ^ 0x6BA5D756);
  return (*(v3 + 8 * (v5 | (2 * v5) | v2)))();
}

void sub_100025C30(uint64_t a1)
{
  v1 = 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  v2 = *(*(a1 + 8) + 12) + 1341146793;
  v3 = (*(a1 + 4) ^ v1) + 1536356745;
  v4 = (v3 < 0x97CEBDBE) ^ (v2 < 0x97CEBDBE);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0x97CEBDBE;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_100025D2C(uint64_t a1)
{
  v6 = 63 * (v1 ^ 0x62F);
  v7 = (v6 - 845) | 0x110;
  (*(v2 + 8 * (v6 ^ 0xA8D)))(*STACK[0x200], *(a1 + 176), LODWORD(STACK[0x360]));
  v8 = LODWORD(STACK[0x4EC]);
  v9 = 1785193651 * ((2 * (v3 & 0x7C4BD64882D22C18) - v3 + 0x3B429B77D2DD3E2) ^ 0x17805F996EF13FC2);
  *(v5 - 168) = ((v7 - 423249913) ^ 0x40) - v9;
  *(v5 - 164) = v9;
  *(v4 + 8) = v8 + v9;
  *(v4 + 16) = v9 ^ 0x175FAB22;
  *(v5 - 200) = v7 - v9 + 55969566;
  *(v5 - 196) = (v7 - 423249957) ^ v9;
  *(v5 - 176) = (v7 - 423249913) ^ v9;
  v10 = (*(v2 + 8 * (v7 ^ 0x855)))(v5 - 200);
  return (*(v2 + 8 * *(v5 - 172)))(v10, 0, 0);
}

uint64_t sub_100025E4C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, char *a19, uint64_t a20, char a21)
{
  v28 = 619 * (a1 ^ 0x6F0);
  v29 = (((((v27 - 144) | 0x886F4E24) ^ 0xFFFFFFFE) - (~(v27 - 144) | 0x7790B1DB)) ^ 0xECD74751) * v21;
  *(v27 - 140) = v29 + v22 + (v28 ^ 0xF7B0DFF1);
  *(v27 - 136) = v26;
  *(v27 - 128) = &a9;
  *(v27 - 120) = (a1 + 233) ^ v29;
  (*(v23 + 8 * (a1 + 625)))(v27 - 144);
  a18 = &a14;
  a19 = &a21;
  *(v27 - 144) = v28 - 50899313 * ((((v27 - 144) | 0x21D856B8) - ((v27 - 144) & 0x21D856B8)) ^ 0x35F7CB23) + 974;
  *(v27 - 136) = v24;
  *(v27 - 128) = &a18;
  (*(v23 + 8 * (v28 ^ 0xDE8)))(v27 - 144);
  *(v27 - 144) = v28 - 1388665877 * ((-807639213 - ((v27 - 144) | 0xCFDC6753) + ((v27 - 144) | 0x302398AC)) ^ 0xBD8EFA40) + 96;
  *(v27 - 120) = &a9;
  *(v27 - 112) = &a18;
  *(v27 - 104) = v24;
  *(v27 - 136) = a6;
  *(v27 - 128) = &a12;
  v30 = (*(v23 + 8 * (v28 + 1203)))(v27 - 144);
  return (*(v23 + 8 * ((((v28 - 512) ^ v28 ^ 0x600 ^ 0x193) * (v25 != 0)) ^ v28)))(v30);
}

uint64_t sub_10002603C@<X0>(int a1@<W8>)
{
  v10 = ((a1 + 1828) ^ 0x7EBLL) & v2;
  *(v8 + v2) = *(v1 + v2) ^ *(v4 + v10) ^ *(v10 + v3 + 5) ^ *(v10 + v5 + 2) ^ (89 * v10) ^ 0x33;
  return (*(v9 + 8 * (((((v2 + 1) ^ v7) == v6) | (4 * (((v2 + 1) ^ v7) == v6))) ^ a1)))();
}

uint64_t sub_100026A1C()
{
  LODWORD(STACK[0x2F4]) = 0;
  v4 = LODWORD(STACK[0x2F4])++;
  *STACK[0x258] = v4 + 89408770;
  v5 = *STACK[0x268];
  v6 = STACK[0x228];
  v7 = (v0 - 2030745044) ^ STACK[0x228];
  v8 = v0 + 183302752 + STACK[0x228];
  *(v3 - 160) = v8;
  *(v3 - 180) = v7;
  *(v3 - 176) = ((v0 + 183302752) ^ 0x1B) + v6;
  *(v2 + 8) = STACK[0x220];
  *(v3 - 200) = v6 ^ 1;
  *(v3 - 184) = v8 - 62;
  *(v2 + 32) = v5 - v6;
  v9 = (*(v1 + 8 * (v0 + 1982)))(v3 - 200);
  return (*(v1 + 8 * *(v3 - 156)))(v9);
}

uint64_t sub_100026AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, int a15, unsigned int a16, char *a17, unsigned int a18)
{
  v21 = 1564307779 * (((&a13 | 0x2A7BB3C0) - &a13 + (&a13 & 0xD5844C38)) ^ 0xBD767FD3);
  a18 = 1016788250 - v21;
  a13 = a11;
  a17 = &a12;
  a15 = v20 - v21 - 2013068609;
  a16 = -1341472431 - v21;
  v22 = (*(v19 + 8 * (v20 + 232)))(&a13);
  return (*(v19 + 8 * ((76 * (a14 == ((v20 - 1417) ^ v18))) ^ v20)))(v22);
}

uint64_t sub_100026B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = -542396526 - 1388665877 * ((((&a13 | 0xBBADDC7A) ^ 0xFFFFFFFE) - (~&a13 | 0x44522385)) ^ 0xC9FF4169);
  v15 = (*(v14 + 18744))(&a13);
  return (*(v14 + 8 * ((37 * (a14 == -392105736)) ^ 0x28Cu)))(v15);
}

uint64_t sub_100026C5C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_100026CBC@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v7 = (v5 + a2);
  *v7 = v6;
  v7[1] = v6;
  return (*(v4 + 8 * (((((v3 + 335) ^ 0x2CALL) == (v2 & 0xFFFFFFFFFFFFFFF0)) * a1) ^ v3)))();
}

uint64_t sub_100026D30@<X0>(int a1@<W8>)
{
  v5 = a1 - 601;
  (*(v1 + 8 * (a1 ^ 0xAF1)))(*v7);
  *(v4 - 200) = (v5 - 1197042782) ^ (((((v4 - 200) | 0x522686F3) - (v4 - 200) + ((v4 - 200) & 0xADD97908)) ^ 0x41FA6AD3) * v3);
  result = (*(v1 + 8 * (v5 + 1969)))(v4 - 200);
  *v2 = v8;
  return result;
}

uint64_t sub_100026E64()
{
  v5 = 2066391179 * ((((v4 - 200) ^ 0x6246E4AA | 0x430A1DD4) - ((v4 - 200) ^ 0x6246E4AA) + (((v4 - 200) ^ 0x6246E4AA) & 0xBCF5E22A)) ^ 0x8E6B7B66);
  *(v4 - 200) = v1 - v5 + 936;
  *(v4 - 196) = v0 - v5 - 1209010618;
  *(v4 - 192) = v3;
  v6 = (*(v2 + 8 * (v1 + 1989)))(v4 - 200);
  return (STACK[0x4C0])(v6);
}

uint64_t sub_100026F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((v17 + 265681887 - 2 * ((v17 - 144) & 0xFD5FC6F)) ^ 0x9D03C3CB) * v16;
  *(v17 - 128) = a13;
  *(v17 - 144) = v15 + (v14 ^ 0xF32E5286) + v18;
  *(v17 - 136) = ~v18 + v14;
  v19 = (*(v13 + 8 * (v14 ^ 0xB6C)))(v17 - 144);
  return (*(v13 + 8 * ((14 * (*(v17 - 140) == (v14 ^ 0x9FF55B55))) | v14)))(v19);
}

uint64_t sub_100026FE8@<X0>(int a1@<W8>)
{
  v4 = 143681137 * ((2 * ((v3 - 168) & 0x55E6B838B2072BB8) - (v3 - 168) - 0x55E6B838B2072BB9) ^ 0x1B9075732CA05F97);
  STACK[0x2B8] = v4 ^ 0x285EF3C7;
  *(v3 - 136) = -143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97);
  *(v3 - 132) = ((a1 - 196944874) ^ 0x7D) + 143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97);
  *(v3 - 144) = ((a1 - 196944874) ^ 0x6E) + 143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97);
  *(v3 - 160) = a1 - 196944874 + 143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97);
  *(v3 - 156) = (a1 + 1699922545) ^ (143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97));
  STACK[0x2C8] = v1 - v4;
  v5 = (*(v2 + 8 * (a1 + 2394)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 140)))(v5);
}

uint64_t sub_1000270D0@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v8 = v3 - 1;
  *(v7 + 304) = v8;
  *(a1 + v8) = (a2 ^ v5) * (a2 + 17);
  return (*(v6 + 8 * (((*(v7 + 304) == 0) * ((v2 + 184) ^ v4)) ^ v2)))();
}

void sub_100027158(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) + 367941778;
  v3 = *(*(a1 + 16) + 4) + 367941778;
  v4 = (v2 < -1016233649) ^ (v3 < -1016233649);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < -1016233649;
  }

  else
  {
    v6 = v5;
  }

  v1 = *a1 ^ (843532609 * ((2 * (a1 & 0x7E803F11) - a1 + 25149678) ^ 0x5D32946B));
  __asm { BRAA            X14, X17 }
}

void sub_100027228(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X7>, _BYTE *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v40 = a3 ^ (a5 | (a37 << 32));
  v41 = v40 ^ ((v37 + 743030095) | 0x810404A0) ^ 0xBB5021FD063927E8;
  v42 = v41 ^ a1;
  v43 = ((a4 ^ 0x15A5DA71FD022E9) - ((2 * (a4 ^ 0x15A5DA71FD022E9)) & 0x59349D79548505C2) - 0x5365B14355BD7D1FLL) ^ a2;
  v44 = v43 ^ 0x6AB389F675193100;
  if (((a4 ^ 0x15A5DA71FD022E9) & 0x82EE1687ACCADB62) != 0)
  {
    v45 = a4 ^ 0x15A5DA71FD022E9;
  }

  else
  {
    v45 = v43 ^ 0x6AB389F675193100;
  }

  v46 = v45 & (a2 ^ 0x39D638B520A44C1ELL);
  v47 = v42 ^ v46 ^ 0x1C0F92AFBE5C8E09;
  v48 = v42 ^ 0x1C0F92AFBE5C8E09;
  v49 = ((a4 ^ 0x15A5DA71FD022E9) + 0x706E834A941FDEADLL - 2 * ((a4 ^ 0x15A5DA71FD022E9) & 0x706E834A941FDEBDLL ^ a4 & 0x10)) ^ v38;
  v50 = v42 ^ v46 ^ 0x52BB300725FAA91DLL;
  if (v49 == 0x68040451F630332FLL)
  {
    v50 = v42 ^ 0x2D44CFF8DA0556E2;
  }

  v51 = v47 + 2 * (v48 & v46) - 2 * ((v50 ^ 0x314B5D576459D8EBLL) & v46);
  *(&v53 + 1) = v47;
  *&v53 = v51;
  v52 = v53 >> 1;
  v54 = v49 ^ v42 & 0x3FAD139705B96DE4 ^ v48 & (v40 ^ 0x94D0483A52EB8168) ^ 0xB35561566D10F854;
  v55 = v42 & 0x2BA0BD81FD6727CALL ^ v41 ^ (v42 ^ 0xE3F06D5041A371F6) & (a2 ^ 0xED897ACB223C942BLL) ^ v54;
  *(&v53 + 1) = v55 ^ 0x85CAC3B0E9D49F7DLL;
  *&v53 = v55;
  v56 = v55 ^ 0x85CAC3B0E9D49F7DLL ^ __ROR8__(v55 ^ 0x85CAC3B0E9D49F7DLL, 61) ^ (v53 >> 39);
  v57 = __ROR8__(__ROR8__(v52 ^ (v51 >> 6) ^ v51 ^ 0x949C579BC6289A8ELL ^ ((v51 ^ 0x949C579BC6289A8ELL) << 58) ^ v56 ^ 0xE7E302DF0A4169DFLL, 31) ^ 0xE711D0609925C9B3, 33);
  v58 = a2 ^ 0x498609BCC3AE0A75 ^ ((v49 ^ 0x56342893C150ED6CLL) & (v43 ^ 0x954C76098AE6CEFFLL) | v44 & 0x3E302CC23760DE43);
  v59 = (-v51 ^ (v58 - (v51 ^ v58)) ^ 0xD9C6F6615ED86790 ^ (v51 - ((2 * v51) & 0xB38DECC2BDB0CF20) - 0x2639099EA1279870)) + v58;
  v60 = v59 ^ __ROR8__(v59, 17) ^ (v59 << 54) ^ (v59 >> 10);
  v61 = v40 & 0xC1ACD9DD860EB79FLL ^ v44 ^ (v49 ^ 0x565722738FC17B4FLL) & (v40 ^ 0x5482A452A8AD1373) ^ 0xAC897DD8CDECB09ELL;
  *&v53 = __ROR8__(__ROR8__(v61, 48) ^ 0x8958A8F2E27EDF52, 16);
  v62 = v53 ^ 0x6D7BD5F8C69BDC43 ^ ((v53 ^ 0x6D7BD5F8C69BDC43) << 23) ^ (((v53 >> 41) ^ (v53 >> 7) ^ 0x29FFE671CA01F328) & (((v53 ^ 0x6D7BD5F8C69BDC43) << 57) ^ 0x69FFFFFFFFFFFFFFLL) | ((v53 ^ 0x6D7BD5F8C69BDC43) << 57) & 0xD600000000000000);
  v63 = (v60 & 0xDEFB4309E4C3ABAFLL | (v62 ^ 0xF4AC042FB32C8FEELL) & ~v60) ^ v57;
  v62 ^= 0x3B570CCDCF1648C4uLL;
  v64 = v60 ^ 0xA37B82448CF6B484 ^ v62;
  v65 = v54 ^ v61;
  *(&v53 + 1) = v65 ^ 0xD619B5556413C686;
  *&v53 = v65;
  v66 = v65 ^ 0xD619B5556413C686 ^ v62 ^ __ROR8__(v65 ^ 0xD619B5556413C686, 28) ^ (v53 >> 19);
  *(&v53 + 1) = v64 & 0x8429AE39CB041CFLL ^ v60 ^ 0xA37B82448CF6B484 ^ v63 ^ (v64 ^ 0x4D843650EBF027FELL) & (v66 ^ 0xC5F9AD4000B52847) ^ 0x48C251FDBCA8808;
  *&v53 = v64 & 0x8429AE39CB041CFLL ^ v60 ^ 0xA37B82448CF6B484 ^ v63 ^ (v64 ^ 0x4D843650EBF027FELL) & (v66 ^ 0xC5F9AD4000B52847);
  v67 = v53 >> 17;
  *&v53 = __ROR8__(*(&v53 + 1), 10);
  v68 = ((v67 ^ v53 ^ 0x3FF0FD3D2C1B063CLL) - ((2 * (v67 ^ v53 ^ 0x3FF0FD3D2C1B063CLL)) & 0x80F0076C100BFE02) - 0x3F87FC49F7FA00FFLL) ^ *(&v53 + 1);
  v69 = v66 & 0x6E1672EDAFFEC813 ^ (v66 ^ 0x3244C85C63FA9677) & (v56 ^ 0x8FE38D997611870FLL) ^ 0x66E770326BDC6AEDLL ^ v64;
  v70 = (v69 & 0xF2F0F93CF1701AFDLL ^ 0x7DBDE1E2F751AEB1) & (v69 & 0xD0F06C30E8FE502 ^ 0xFBF7FD3EFB74DEFFLL) | v69 & 0x20601088E4102;
  v71 = __ROR8__(v70 ^ 0x6EB5C486C59E2531, 7);
  *&v53 = __ROR8__(v70 ^ 0x6EB5C486C59E2531, 41);
  v72 = ((v71 ^ v53 ^ 0x3202F23706EB1FA8) - 2 * ((v71 ^ v53 ^ 0x3202F23706EB1FA8) & 0x7BA0E08DEB67EC3FLL ^ (v71 ^ v53) & 5) + 0x7BA0E08DEB67EC3ALL) ^ v70 ^ 0x6EB5C486C59E2531;
  v73 = v56 & 0x475429FF114F6240 ^ v66 ^ 0x89B6A9CB1CC3A631 ^ (v57 ^ 0xF4AF79C0FF4DDB1ALL) & (v56 ^ 0x1E0A008B2610B0E3);
  v74 = v70 ^ v73 ^ ((v70 ^ v73 ^ 0x6FA3D252ECE71917) >> 19) ^ ((v70 ^ v73 ^ 0x6FA3D252ECE71917) >> 28) ^ ((v70 ^ v73 ^ 0x3830BF9C958EA8D9) << 36) ^ ((v70 ^ v73 ^ 0x3830BF9C958EA8D9) << 45) ^ 0x4F8AE6A9DAC0A15;
  *(&v53 + 1) = v73 ^ v56 ^ 0x755ED82F9CF435A6;
  *&v53 = v73 ^ v56;
  v75 = (v60 ^ 0x3012914BF9128D5BLL) & (v57 ^ 0x4C04AFC011FD46A5) ^ v57 & 0x3012914BF9128D5BLL ^ __ROR8__((v53 >> 54) ^ 0xD87F7C772D97270DLL, 10);
  v76 = *(v39 + ((v75 >> 61) ^ 0x56));
  v77 = (v76 ^ ((v76 ^ 0x3C) - ((2 * (v76 ^ 0x3C) + 2) & 0x3C) - 97) ^ 0x5D ^ ((v76 ^ (57 - (v76 ^ 0xFA)) ^ ((v76 ^ 0x3C) - ((2 * (v76 ^ 0x3C) + 2) & 0x74) + 59) ^ 6) + 1)) - 62;
  v78 = (v72 - ((2 * v72) & 0x8E78DD036F6ABEC4) + 0x473C6E81B7B55F62) ^ v74;
  v79 = v77 ^ (v75 >> 39) ^ v75 ^ 0x79DF1296D222EAAELL ^ (8 * (v75 ^ 0x79DF1296D222EAAELL)) ^ ((v75 ^ 0x79DF1296D222EAAELL) << 25);
  v80 = v68 ^ 0x147D2CDEEA4 ^ v72;
  v81 = (~(2 * v78) + v78) & (v79 ^ 0xF1B7B0B9F99398A7) ^ v80;
  v82 = ((v81 ^ 0x26974B18501E2B14) >> 7) ^ ((v81 ^ 0x26974B18501E2B14) >> 41) ^ ((v81 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v81 ^ 0x26974B18501E2B14) - (((v81 ^ 0x26974B18501E2B14) << 58) & (2 * (v81 ^ 0x26974B18501E2B14))));
  v83 = ((v68 ^ 0x147D2CDEEA4) - ((2 * (v68 ^ 0x147D2CDEEA4)) & 0x8E78DD036F6ABEC4) + 0x473C6E81B7B55F62) ^ v74;
  if (!v77)
  {
    v83 = v78;
  }

  v84 = v83 & ~v80;
  v85 = (v63 >> 1) ^ 0x122B254D1CF6967;
  v86 = v63 ^ (v63 << 58);
  v87 = v86 ^ 0x3E4564A9A39ED2CFLL;
  if ((v85 & 0x100000000000 & v86) != 0)
  {
    v88 = -(v85 & 0x100000000000);
  }

  else
  {
    v88 = v85 & 0x100000000000;
  }

  v89 = ((v63 << 63) | 0x3F2E4113FBA4BFB5) ^ (v63 >> 6) ^ v85 & 0xFFFFEFFFFFFFFFFFLL ^ (v88 + v87);
  v90 = v79 ^ v89;
  v91 = v72 & (v68 ^ 0xFFFFFEB82D32115BLL) ^ v79 ^ v89;
  v92 = v68 ^ v84 ^ 0x7370AD2F82FD2592 ^ v91 ^ 0x4E90E438A4B95C59;
  v93 = __ROR8__(v92, 10);
  v94 = (v92 ^ v93 ^ (v92 >> 17)) + (v92 << 47) - 2 * ((v92 ^ v93 ^ (v92 >> 17)) & (v92 << 47));
  v95 = v79 & 0x5596E1A70F7CBDAALL ^ 0x4004106066C2508 ^ (v79 ^ 0xE484F46066C6758) & (v89 ^ 0xEAB1B52652567954);
  v96 = (v78 ^ -v78 ^ (v95 - (v78 ^ v95))) + v95;
  v97 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v79 ^ (((v90 ^ 0xB16F1BC75B46A3A6) & (v68 ^ 0x147D2CDEEA4)) - ((2 * ((v90 ^ 0xB16F1BC75B46A3A6) & (v68 ^ 0x147D2CDEEA4))) & 0x60AC2693C236DB8ALL) - 0x4FA9ECB61EE4923BLL) ^ v96 ^ 0x73995BC8E6CB27DELL, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v98 = v97 ^ 0x93DD7BE3C3310A2CLL ^ ((v97 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v97 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v97 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v97 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v99 = (((((2 * (0x34CDB152F4A04500 - ((v91 ^ 0x37C50ED4E9F1E455) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v91 ^ 0x37C50ED4E9F1E455) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v91 ^ 0x37C50ED4E9F1E455) << 58) ^ ((v91 ^ 0x37C50ED4E9F1E455) - ((((v91 ^ 0x37C50ED4E9F1E455) << 58) & 0xF800000000000000 ^ (v91 ^ 0x37C50ED4E9F1E455) & 0xF9BFE541A2368FBELL | (v91 ^ 0x37C50ED4E9F1E455) & 0x6401ABE5DC97041) ^ ((v91 ^ 0x37C50ED4E9F1E455) << 58) & 0x400000000000000))) + (v91 ^ 0x37C50ED4E9F1E455)) ^ ((v91 ^ 0x4E90E438A4B95C59) << 63) ^ __ROR8__(((v91 ^ 0x37C50ED4E9F1E455) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v98, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v100 = v99 & 0xA8F512753D8F931ELL ^ ((v91 ^ 0x37C50ED4E9F1E455) >> 1) & 0x28F512753D8F931ELL | (v99 ^ ((v91 ^ 0x37C50ED4E9F1E455) >> 1)) & 0x570AED8AC2706CE1;
  v101 = v100 ^ v82 & ~v94;
  *(&v102 + 1) = v101;
  *&v102 = v101 ^ 0xD3DA1E3360BF843ALL;
  v103 = ((v102 >> 1) ^ v101 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v101 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v102 >> 1) ^ v101 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v101 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  v104 = v81 ^ 0x6E04C15915AB860ALL ^ v96 ^ __ROR8__(v81 ^ 0x6E04C15915AB860ALL ^ v96, 19) ^ ((v81 ^ 0x6E04C15915AB860ALL ^ v96) << 36) ^ ((v81 ^ 0x6E04C15915AB860ALL ^ v96) >> 28) ^ v82;
  v105 = ((v100 ^ v98) + (v100 | ~v98) + 1) ^ v104;
  v106 = v98 ^ v94 & ~v100 ^ 0x425764BB5877DA25 ^ v105;
  v107 = v106 ^ (v106 >> 61) ^ (v106 >> 39) ^ (8 * v106) ^ (v106 << 25);
  *(&v102 + 1) = v101;
  *&v102 = v101 ^ 0xD3DA1E3360BF843ALL;
  v108 = v94 ^ v82;
  v109 = v98 & ~v104 ^ v94 ^ v82;
  v110 = v109 ^ 0xFD;
  v111 = v109 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v109 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v109 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v109 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v112 = v109 ^ 0x97F6A7E5F6E8F58ALL ^ v105 ^ __ROR8__(v109 ^ 0x97F6A7E5F6E8F58ALL ^ v105, 19) ^ ((v109 ^ 0x97F6A7E5F6E8F58ALL ^ v105) << 36) ^ ((v109 ^ 0x97F6A7E5F6E8F58ALL ^ v105) >> 28);
  *&v102 = __ROR8__((v102 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v107 ^ v103, 3) ^ 0x55413C453664FDCDLL, 61);
  v113 = ((v112 | v111) ^ v111 & v112) & 0x2D23D578E308995FLL | (v112 ^ v111) & 0xD2DC2A871CF766A0;
  v114 = v104 & ~v108;
  v115 = (v102 ^ 0xAA09E229B327EE6ALL) & ~v107 ^ v113;
  v116 = v94 ^ 0x44C9D571A5C4A51CLL ^ v114 ^ v101 ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v114 ^ v101) >> 10) ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v114 ^ v101) << 47) ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v114 ^ v101) << 54) ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v114 ^ v101) >> 17);
  v117 = ((v115 ^ v107) + ((v102 ^ 0x55F61DD64CD81195) & v116) - 2 * ((v115 ^ v107) & (v102 ^ 0x55F61DD64CD81195) & v116)) ^ 0x6005BE354A5BB0B2;
  v118 = v117 >> (v60 & 0x3D) >> (v60 & 0x3D ^ 0x3D);
  v119 = (8 * v117) ^ (v117 >> 39) ^ ((v117 ^ (v117 << 25)) & 0xF21553F3FD140018 ^ v118 & 0x18 | (v117 ^ (v117 << 25)) & 0xDEAAC0C02EBFFE7 ^ v118 & 0xE7);
  v120 = v107 & ~v113 ^ v116 ^ v111;
  v121 = v120 ^ 0x2DB5B6AF87F64351 ^ ((v120 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v120 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v120 ^ 0x2DB5B6AF87F64351) >> 41) | ((v120 ^ 0x2DB5B6AF87F64351) << 57));
  v122 = v120 ^ 0x93C23431B76D41FLL ^ v115;
  v123 = (v122 ^ (v122 >> 28)) + (v122 >> 19) - 2 * ((v122 ^ (v122 >> 28)) & (v122 >> 19));
  v124 = v122 << 36;
  v125 = v123 ^ (v122 << 45);
  v126 = v113 & ~(v116 ^ v111);
  v127 = v125 ^ v124;
  v128 = v102 ^ 0xAA09E229B327EE6ALL ^ v111 & ~v116;
  v129 = v125 ^ v124 ^ v121;
  v130 = v116 ^ 0xF374A001D380BDC2 ^ v126 ^ v128 ^ ((v116 ^ 0xF374A001D380BDC2 ^ v126 ^ v128) >> 10) ^ ((v116 ^ 0xF374A001D380BDC2 ^ v126 ^ v128) << 47) ^ ((v116 ^ 0xF374A001D380BDC2 ^ v126 ^ v128) << 54) ^ ((v116 ^ 0xF374A001D380BDC2 ^ v126 ^ v128) >> 17);
  v131 = v130 ^ v121;
  v132 = v128 ^ 0x6DC4FB0BD4FFFF44;
  *(&v102 + 1) = v128;
  *&v102 = v128 ^ 0x6DC4FB0BD4FFFF44;
  v133 = v119 & ~v129 ^ v130 ^ v121;
  v134 = (v102 >> 1) ^ v128 ^ 0x6DC4FB0BD4FFFF44 ^ ((v128 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v119;
  if (v124 == v125)
  {
    v135 = v132 >> 6;
  }

  else
  {
    v135 = ~((v132 >> 6) ^ v134);
  }

  v136 = v134 + (v132 >> 6) - 2 * (v135 & v134);
  v137 = v136 ^ (((~v130 | 0xFFFFFFFFEFFFFFFFLL) - (v130 & 0x4000000000)) ^ v130 & 0xFFFFFFBFEFFFFFFFLL) & v131;
  v138 = __ROR8__(((v129 << (v123 & 0x2B) << (v123 & 0x2B ^ 0x2B)) + (v129 >> 21)) ^ __ROR8__(v136 & ~v119, 21) ^ 0x6D12C2B6EED373A6, 43);
  v139 = v130 & ~v136 ^ v119 ^ v138;
  v140 = v133 ^ 0x5035F38BF1002A3ALL ^ v138;
  v141 = v140 ^ (v140 >> 19);
  v142 = v141 & 0xD99EEE0927173347 ^ (v140 << 45) & 0xD99EE00000000000 | v141 & 0x266111F6D8E8CCB8 ^ (v140 << 45) & 0x2661000000000000;
  v143 = (((v140 << 45) ^ (0xFFFFE00000000000 * v140) ^ (v142 + v141 - 2 * v142)) + v141) ^ (v140 >> 28);
  v144 = v143 & 0x78E134634F73AA70 ^ (v140 << 36) & 0x78E1346000000000 | v143 & 0x871ECB9CB08C558FLL ^ (v140 << 36) & 0x871ECB9000000000;
  v145 = v144 + 0x706E834A941FDEADLL - 2 * (v144 & 0x706E834A941FDEAFLL ^ v143 & 2);
  a6[65] = v145 ^ 0xAD;
  v146 = v139 ^ 0xE013161F571CC4C5 ^ ((v139 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v139 ^ 0xE013161F571CC4C5));
  v147 = *(a34 + ((69 * ((v145 ^ 0x706E834A941FDEADuLL) >> (v143 & 8) >> (v143 & 8 ^ 8))) ^ 0x3DLL));
  v148 = v146 ^ (((v139 ^ 0xE013161F571CC4C5) >> 61) | (v139 << 25));
  v149 = ((((v147 - 18) ^ 0x57) + v147 - 18 - 2 * ((v147 - 18) ^ 0x57)) ^ 0xFE) + v147 - 18;
  a6[54] = ((v146 ^ (((v139 ^ 0xE013161F571CC4C5) >> 61) | (v139 << 25))) >> 24) ^ 0x8A;
  a6[28] = BYTE2(v145) ^ 0x1F;
  a6[41] = (v149 >> 2) | (v149 << 6);
  v150 = (v145 ^ 0x706E834A941FDEADuLL) >> (v110 & 0x20) >> (v110 & 0x20 ^ 0x20u);
  a6[35] = BYTE1(v146);
  v151 = BYTE6(v145) ^ 0x6E;
  a6[21] = BYTE2(v146);
  v152 = v127 ^ v130;
  if (v131 == -1)
  {
    v153 = 0;
  }

  else
  {
    v153 = v152;
  }

  a6[58] = v150;
  a6[17] = BYTE4(v148) ^ 0x89;
  a6[5] = BYTE3(v145) ^ 0x94;
  a6[47] = BYTE5(v145) ^ 0x83;
  v154 = v137 - ((2 * v137) & 0x5A47EBDAAC1EB792);
  a6[14] = HIBYTE(v145) ^ 0x70;
  v155 = v154 + 0x2D23F5ED560F5BC9;
  a6[48] = v151;
  a6[16] = (v148 ^ 0x3EAE39898A000000) >> (v139 & 0x28) >> (v139 & 0x28 ^ 0x28);
  v156 = v154 - 0x5BDA183C59819C5ELL;
  v157 = 0x88FE0E29AF90F827;
  if (v155 < 0x88FE0E29AF90F827)
  {
    v156 = v155;
    v157 = 0;
  }

  if (v156)
  {
    v158 = v155;
  }

  else
  {
    v158 = v157;
  }

  *(&v159 + 1) = v158;
  *&v159 = v155;
  a6[6] = v148;
  v160 = *(v39 + (BYTE6(v148) ^ 0xF9));
  v161 = (v159 >> 1) ^ v155 ^ (v158 << 58) ^ (v158 >> 6);
  a6[10] = BYTE1(v161);
  v162 = v130 ^ v153 & v129 ^ 0x29E1AB0124FF49E7 ^ v137;
  *&v159 = __ROR8__(v162, 10);
  v163 = (v162 ^ v159 ^ (v162 << 47)) + (v162 >> 17) - 2 * ((v162 ^ v159 ^ (v162 << 47)) & (v162 >> 17));
  a6[18] = BYTE4(v161);
  a6[25] = BYTE2(v161);
  a6[42] = HIBYTE(v148) ^ 0x3E;
  a6[12] = BYTE5(v161);
  a6[23] = BYTE6(v161);
  a6[44] = v161;
  a6[24] = BYTE3(v161);
  a6[30] = (v160 ^ 0xFA) - 119;
  a6[62] = HIBYTE(v161);
  a6[19] = (v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17));
  v164 = *(a36 + ((((v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17))) >> 8) ^ 0x27) + 279);
  a6[8] = ((v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17))) >> 24;
  a6[33] = ((v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17))) >> 16;
  a6[4] = (v164 ^ BYTE1(v163) ^ 0x2D ^ ((BYTE1(v163) ^ 0x2D) + 72) ^ 0x41) + 15;
  v165 = v133 ^ 0x4734313A1F2B2857;
  v166 = v133 ^ __ROR8__(v133 ^ 0x4734313A1F2B2857, 41) ^ ((v133 ^ 0x4734313A1F2B2857) >> 7);
  v167 = *(a35 + (((v163 >> 28) & 0xF0 | (v163 >> 36) & 0xF) ^ 0x5C));
  a6[46] = HIBYTE(v163);
  a6[43] = BYTE6(v163);
  a6[38] = BYTE5(v163);
  a6[31] = ((v167 >> 5) | (8 * v167)) ^ 0xC1;
  LOBYTE(v163) = *(v39 + ((((((4 * v166) | (v166 >> 6)) ^ 0xA) >> 2) | ((((4 * v166) | (v166 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  a6[55] = BYTE4(v166) ^ 0x3A;
  a6[34] = BYTE3(v166) ^ 0x1F;
  a6[32] = BYTE1(v166) ^ 0x28;
  v168 = v166 ^ (v165 << 57);
  a6[15] = (v163 ^ 0xFA) - 119;
  a6[7] = (v168 ^ 0x4734313A1F2B2857) >> (v64 & 0x10 ^ 0x10) >> (v64 & 0x10);
  a6[61] = BYTE5(v166) ^ 0x31;
  a6[56] = (*(v39 + (BYTE6(v166) ^ 0x63)) ^ 0xFA) - 119;
  a6[51] = HIBYTE(v168) ^ 0x47;
  JUMPOUT(0x100028670);
}

uint64_t sub_1000286B0()
{
  v8 = *(v4 + 8 * (v0 - 223));
  LODWORD(STACK[0x17B8]) = v3;
  LODWORD(STACK[0x17BC]) = 777214072;
  STACK[0x258] = v8;
  v9 = *v8 - 89408769;
  v10 = *(v4 + 8 * (v0 - 211));
  LODWORD(STACK[0x2F4]) = v9;
  STACK[0x268] = v10;
  v11 = *v10;
  v12 = ((((v7 - 200) | 0xBD4501380DAB19D0) - ((v7 - 200) & 0xBD4501380DAB19D0)) ^ 0xA97177161E77F5F0) * v6;
  STACK[0x250] = v11;
  *(v5 + 8) = v12;
  *(v5 + 16) = v11 ^ v12;
  v13 = (v0 + 1458132933) ^ v12;
  *(v7 - 200) = 55969566 - v12 + v0;
  *(v7 - 196) = v13 ^ 0x72;
  *(v7 - 168) = v0 + 1458132933 - v12 - 40;
  *(v7 - 164) = v12;
  *(v7 - 176) = v13;
  v14 = (*(v2 + 8 * (v0 ^ 0x855)))(v7 - 200);
  v15 = *(v2 + 8 * *(v7 - 172));
  LODWORD(STACK[0x260]) = v1;
  return v15(v14);
}

uint64_t sub_1000287B8@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = 12 * (v8 ^ 1);
  v12 = (v7 - 1);
  *(a4 + v12) = *(v10 + v12) ^ *(v6 + ((v11 - 357) & v12)) ^ *(((v11 - 357) & v12) + v5 + 5) ^ *(((v11 - 357) & v12) + a5 + 1) ^ (((v11 - 101) & v12) * a3) ^ 0x33;
  return (*(v9 + 8 * (((v12 != 0) * (((v11 + a1) & a2) + 89)) ^ (v11 - 72))))();
}

uint64_t sub_10002882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 16) = v3;
  *(a2 + 16) = v2;
  return nullsub_36();
}

uint64_t sub_10002883C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFD18 ^ ((v3 - 572) | 0x243u)) + v1;
  *(v5 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v4 + 8 * (((2 * ((v1 & 0xFFFFFFF8) - 8 == v2)) | (8 * ((v1 & 0xFFFFFFF8) - 8 == v2))) ^ v3)))();
}

uint64_t sub_100028894@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v3);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 4 + v3) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((((v3 & 0xFFFFFFFC) == 4) * ((v2 + 252) ^ 0x156)) ^ v2)))((v3 & 0xFFFFFFFC) - 8);
}

uint64_t sub_100028978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, unsigned int a15, uint64_t a16, uint64_t a17)
{
  *(v21 - 128) = v18;
  *(v21 - 120) = a17;
  *(v21 - 136) = (v19 - 921) ^ (1037613739 * ((v20 + 944120896 - 2 * (v20 & 0x38462440)) ^ 0xE944093F));
  *(v21 - 112) = v18;
  *(v21 - 104) = a14;
  v22 = (*(v17 + 8 * (v19 + 102)))(v21 - 136);
  return (*(v17 + 8 * ((26 * (((((a15 >> 1) & a13) == 303 * (v19 ^ 0x8A6) - 606) ^ (v19 - 1)) & 1)) ^ (v19 - 446))))(v22);
}

uint64_t sub_100028CF0@<X0>(int a1@<W2>, int a2@<W8>)
{
  v9 = *(v8 + 120);
  *(v9 + 392) = v2;
  *(v9 + 396) = STACK[0x3E4];
  *(v9 + 400) = *(v8 + 184);
  *(v9 + 408) = 2004488308 - v4 + LODWORD(STACK[0x31C]);
  *(v9 + 416) = v7 + ((v6 + 211) ^ 0xFE5E099C) + v4;
  v10 = (*(v3 + a2 * a1 + 8))(STACK[0x248], v9 + 392);
  return (*(v5 + 8 * ((941 * (((v6 + 864) | 0x20E) - 392105736 + v10 - ((2 * v10) & 0xD141E1F0) == -392104185)) ^ v6)))();
}

uint64_t sub_100028DB8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(v7 - 252 + v3 + 72);
  v9 = ((2 * v3) & 0xE7DFFDB8) + (v3 ^ 0x73EFFEDF) + v4;
  *(a1 + v9) = (a3 + v5 + 26) ^ 0x1D ^ v8;
  *(a1 + v9 + 1) = (BYTE1(v8) ^ 0xD0) - 2 * ((BYTE1(v8) ^ 0xD0) & 0x37 ^ BYTE1(v8) & 4) + 51;
  *(a1 + v9 + 2) = (BYTE2(v8) ^ 0x4C) - ((v8 >> 15) & 0x66) + 51;
  *(a1 + v9 + 3) = (HIBYTE(v8) ^ 0xA2) - 2 * ((HIBYTE(v8) ^ 0xA2) & 0xBB ^ HIBYTE(v8) & 8) + 51;
  return (*(v6 + 8 * ((v3 + 4 < *(v7 - 160)) | v5)))();
}

uint64_t sub_100028EC8(uint64_t a1)
{
  v6 = *(v5 - 252 + v1 + 72);
  v7 = (v1 ^ 0xDA1659BD ^ ((v3 - 2128045221) | 0x24010202)) + ((2 * v1) & 0xFE7FF7F8) + v2;
  *(a1 + v7) = (HIBYTE(v6) ^ 0xA2) - ((2 * (HIBYTE(v6) ^ 0xA2)) & 0x66) + 51;
  *(a1 + v7 + 1) = (BYTE2(v6) ^ 0x4C) - ((v6 >> 15) & 0x66) + 51;
  *(a1 + v7 + 2) = (BYTE1(v6) ^ 0xD0) - 2 * ((BYTE1(v6) ^ 0xD0) & 0x37 ^ BYTE1(v6) & 4) + 51;
  *(a1 + v7 + 3) = v6 ^ 0x5E;
  v8 = v1 + 4 < *(v5 - 160);
  return (*(v4 + 8 * (((32 * v8) | (v8 << 9)) ^ v3)))();
}

void sub_100028FB0(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) + 1678112819;
  v3 = *(a1 + 12) - v1 + 1170697917;
  v4 = v2 < 0x65A7EF4A;
  v5 = v2 > v3;
  if (v3 < 0x65A7EF4A != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000290B0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v7 - ((1818986129 - (&a4 | 0x6C6B8691) + (&a4 | 0x9394796E)) ^ 0x1E391B82) * v5 + 681;
  a5 = a1;
  v8 = (*(v6 + 8 * (v7 + 1766)))(&a4);
  return sub_10002910C(v8);
}

uint64_t sub_10002917C@<X0>(uint64_t a1@<X1>, char a2@<W3>, char a3@<W6>, unsigned int a4@<W8>)
{
  v8 = *(v7 - 220 + 4 * (a4 >> (a3 + a2 + v5 - 100 - 98)) + 72);
  v9 = ((2 * a4) & 0x6F95EDF8) + (a4 ^ 0xB7CAF6FF) + v4;
  *(a1 + v9) = v8 ^ 0x5E;
  *(a1 + v9 + 2) = (BYTE2(v8) ^ 0x4C) - ((v8 >> 15) & 0x66) + 51;
  *(a1 + v9 + 1) = (BYTE1(v8) ^ 0xD0) - 2 * ((BYTE1(v8) ^ 0xD0) & 0x37 ^ BYTE1(v8) & 4) + 51;
  *(a1 + v9 + 3) = (HIBYTE(v8) ^ 0xA2) - 2 * ((HIBYTE(v8) ^ 0xA2) & 0xBB ^ HIBYTE(v8) & 8) + 51;
  return (*(v6 + 8 * ((250 * (a4 + 4 < *(v7 - 128))) ^ v5)))();
}

uint64_t sub_10002928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v19 = v17 + v15;
  v20 = v19 - 179;
  v21 = v19 + 1543;
  v22 = a15 + 87021150 < (v18 - 353898927);
  if (a15 + 87021150 < (v20 | 0xB3u) + 114412739 != (v18 - 353898927) < 0x6D1CD76)
  {
    v22 = (v18 - 353898927) < 0x6D1CD76;
  }

  return (*(v16 + 8 * ((v22 * (v20 ^ 0x7D)) ^ v21)))();
}

uint64_t sub_100029394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFA86 ^ (v4 + 1149)) + v2;
  *(a1 - 7 + v6) = veor_s8(*(a2 - 7 + v6), 0x3333333333333333);
  return (*(v5 + 8 * ((1921 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1000294C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int8x16_t a19, int32x4_t a20, int8x16_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = v33 - v34 + 1;
  if (((a25 - v33) | (v33 - a25)) < 0)
  {
    v39 = 0x80000000;
  }

  else
  {
    v39 = -2147483647;
  }

  *v37 = v39 - ((v33 + 1) ^ v33);
  (*(v35 + 8 * (v33 ^ 0x92D)))(a33);
  v40 = vld1q_dup_f32(v37);
  v41.i64[0] = 0x8000000080000000;
  v41.i64[1] = 0x8000000080000000;
  v42.i64[0] = *(v37 + 4);
  v42.i32[2] = *(v37 + 12);
  v43 = vextq_s8(v40, v42, 0xCuLL);
  v44 = v42;
  v44.i32[3] = *(v37 + 16);
  v45 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v44, a19), vandq_s8(v43, v41)), 1uLL), *(v37 + 1588));
  v43.i32[0] = *(v36 + 4 * (*(v37 + 4) & ((v38 + 660670167) & 0x2B5137F7 ^ 0x376u)));
  v43.i32[1] = *(v36 + 4 * (*(v37 + 8) & 1));
  v43.i32[2] = *(v36 + 4 * (*(v37 + 12) & 1));
  v43.i32[3] = *(v36 + 4 * (v44.i8[12] & 1));
  *v37 = veorq_s8(vaddq_s32(vsubq_s32(v45, vandq_s8(vaddq_s32(v45, v45), a21)), a20), v43);
  return (*(v35 + 8 * (v38 + 1387412807)))(2907554984, 1387412313, 11);
}

uint64_t sub_1000296A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = 1037613739 * ((276286309 - ((v21 - 136) ^ 0x85230545 | 0x1077CB65) + ((v21 - 136) ^ 0x85230545 | 0xEF88349A)) ^ 0xBBA91CA0);
  *(v21 - 136) = ((v18 ^ 0x494) + (v17 ^ 0xCF7FF371) + ((2 * v17) & 0x9EFFE6E2) + 2147334013) ^ v22;
  *(v21 - 128) = &a17;
  *(v21 - 120) = v22 + v18 + 1316;
  (*(v20 + 8 * (v18 + 1606)))(v21 - 136);
  *(v21 - 136) = ((v18 ^ 0x494) + 579) ^ (((((2 * (v21 - 136)) | 0x863BCDD2) - (v21 - 136) - 1126033129) ^ 0x1F50B26C) * v19);
  *(v21 - 128) = a15;
  *(v21 - 120) = a16;
  v23 = (*(v20 + 8 * (v18 ^ 0xBCF)))(v21 - 136);
  return (*(v20 + 8 * (((*(v21 - 132) > 0x26799476u) * ((((v18 ^ 0x494) - 1913902700) & 0x7213D7FA ^ 0xFFFFFFF6) + (((v18 ^ 0x494) + 605) | 4))) ^ v18 ^ 0x494)))(v23);
}

uint64_t sub_10002987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *(v29 - 120) = (v27 + 554) ^ (1785193651 * ((((v29 - 144) | 0x46B7DCB0) - ((v29 - 144) & 0x46B7DCB0)) ^ 0x556B3090));
  *(v29 - 136) = &a23;
  *(v29 - 128) = v26;
  *(v29 - 144) = v23;
  *(v29 - 112) = v23;
  *(v29 - 104) = v28;
  v30 = (*(v25 + 8 * (v27 + 2020)))(v29 - 144);
  return (*(v25 + 8 * ((((v24 + a11 + 2) > 0x7FFFFFFE) | (8 * ((v24 + a11 + 2) > 0x7FFFFFFE))) ^ (v27 + 236))))(v30);
}

uint64_t sub_10002999C@<X0>(int a1@<W3>, uint64_t a2@<X4>, unsigned int a3@<W8>)
{
  v7 = v4 - 1;
  *(v3 + v7) = (a3 + 90) ^ *(a2 + v7) ^ (15 * (v7 & 0xF)) ^ *(*(v6 + 8 * (a3 - 882)) + (v7 & 0xF)) ^ *((v7 & 0xF) + *(v6 + 8 * (a3 - 759)) + 2) ^ *(*(v6 + 8 * (a3 - 836)) + (v7 & 0xF) - 1) ^ 0xFC;
  return (*(v5 + 8 * (((v7 != 0) * a1) ^ a3)))();
}

uint64_t sub_1000299A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, unsigned int a22)
{
  v25 = a22 < a21;
  if (v25 == v22 > 0x8C5F69B6)
  {
    v25 = v22 + ((v23 - 888) ^ 0x73A09646) < a22;
  }

  return (*(v24 + 8 * ((76 * !v25) ^ v23)))(a22, a2, a21, 76, 2515612424, 1779353983, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_100029E74(uint64_t a1, uint64_t a2)
{
  v2 = qword_1003B90E0 - &v7 + qword_1003B9018;
  qword_1003B90E0 = (329992409 * v2) ^ 0x3F921ABBB7B42942;
  qword_1003B9018 = 329992409 * (v2 ^ 0x3F921ABBB7B42942);
  v3 = *(a2 + 4);
  v4 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + ((-39 * v2) ^ 0x42)) ^ 0x42)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * ((qword_1003B9018 + ((-39 * v2) ^ 0x42)) ^ 0x42))] ^ 0x89]) - 55) - 8;
  if (v3 == 468311848)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 468311855)
  {
    v5 = **(a2 + 8) - 9;
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_10002A1E0@<X0>(unint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v37 = v33 + 170;
  v38 = &STACK[0x17E0] + a2;
  v39 = *v34;
  *(v38 + 17) = *(v34 + 1);
  *(v38 + 25) = *(v34 + 9);
  *(v38 + 29) = *(v34 + 13);
  v38[31] = *(v34 + 15);
  v41 = *v34;
  v40 = v34[1];
  *v38 = v41;
  *(v38 + 1) = v40;
  v38[16] = v39;
  v42 = (v38 + 16);
  v43 = *(v35 + 8 * (v37 - 1023)) - 12;
  v44 = *(v43 + (v38[21] ^ 0x56));
  v45 = *(v35 + 8 * (v37 ^ 0x49C));
  v46 = *(v45 + (v42[15] ^ 0x74));
  LODWORD(v41) = *(v45 + (v42[7] ^ 0xB3));
  v47 = (v41 ^ 0xFFFFFFBF) & ((((((v37 - 56) & 0xCE) + 19 * v44 - 30) ^ (76 * v44 + 116)) << 16) ^ 0xBD9E3D1) | v41 & 0x2E;
  LODWORD(v41) = *(v45 + (v42[11] ^ 0x19));
  v48 = *(v35 + 8 * (v37 ^ 0x456)) - 8;
  v49 = *(v48 + (v42[2] ^ 0xA4));
  v50 = *(v35 + 8 * (v37 - 976)) - 8;
  v51 = *(v50 + (v42[12] ^ a1));
  v52 = (v49 ^ (v49 >> 5) ^ (v49 >> 3)) << 8;
  v53 = (((v51 ^ (v51 >> 3) ^ (v51 >> 2)) << 24) ^ 0xF0D56268) & (v46 ^ 0xFFD5629B) | v46 & 0x97;
  v54 = *(v50 + (*v42 ^ 0xBBLL));
  v55 = *(v43 + (v42[13] ^ 0xCFLL));
  v56 = (((v54 ^ (v54 >> 3) ^ (v54 >> 2) ^ 0x95) << 24) ^ 0x822D14F1) & (v52 ^ 0xFF3DE1FD) | v52 & 0xEB00;
  LOBYTE(v52) = (19 * v55 - 88) ^ (76 * v55 + 116);
  v57 = *(v50 + (v42[8] ^ 4));
  v58 = (((v57 ^ (v57 >> 3) ^ (v57 >> 2) ^ 0x9D) << 24) ^ 0xAA538FAF) & (v41 ^ 0xFFD7BFDD) | v41 & 0x50;
  LODWORD(v41) = (v56 ^ 0x698EEBD3) & (*(v45 + (v42[3] ^ 0xF1)) ^ 0xFFFFFFDB) | *(v45 + (v42[3] ^ 0xF1)) & 0xDD;
  v59 = *(v48 + (v42[6] ^ 0xAELL));
  v60 = *(v43 + (v42[1] ^ 0x72));
  v61 = *(v48 + (v42[10] ^ 0x41));
  v62 = (v61 ^ (v61 >> 5) ^ (v61 >> 3)) << 8;
  v63 = (*(v48 + (v42[14] ^ 0xC9)) ^ (*(v48 + (v42[14] ^ 0xC9)) >> 5) ^ (*(v48 + (v42[14] ^ 0xC9)) >> 3)) << 8;
  v64 = *(v50 + (v42[4] ^ 0x51));
  v65 = (v63 ^ 0xFFFF35FF) & (((v52 << 16) & 0xFFFBFFFF | (v53 ^ 0x35D1F059) & ~(v52 << 16)) ^ 0x7AA1E473);
  v66 = (((v64 >> 3) ^ (v64 >> 2) | 0x40) ^ v64) << 24;
  LOBYTE(v42) = *(v43 + (v42[9] ^ 0x7DLL));
  HIDWORD(a14) = -88;
  LODWORD(v42) = ((76 * v42 + 116) ^ (19 * v42 - 88)) << 16;
  LODWORD(STACK[0x210]) = v41 & 0x741C5BE1 ^ 0xBAC34CE ^ ((((19 * v60 - 88) ^ (76 * v60 + 116)) << 16) ^ 0x8B6AA41E) & (v41 ^ 0x135C70B4);
  LODWORD(STACK[0x250]) = v66 & 0x3E000000 ^ 0xDD5C82F8 ^ (v66 ^ 0xE3FFFFFF) & (v47 & 0x9A20289 ^ 0x2AB75961 ^ (((v59 ^ (v59 >> 5) ^ (v59 >> 3)) << 8) ^ 0xE25D6076) & (v47 ^ 0xFC9D1C0D));
  LODWORD(STACK[0x260]) = v63 & 0x8900 ^ 0xBB82ACA6 ^ v65;
  LODWORD(STACK[0x248]) = v42 & 0xAC0000 ^ 0x5807490A ^ (v42 ^ 0xFF16FFFF) & ((v62 & 0x5B00 | (v62 ^ 0xFF5720FF) & (v58 ^ 0x42042B40)) ^ 0xBA049F62);
  v68 = *(v36 + 432);
  v69 = *(v36 + 424);
  STACK[0x268] = v68 + 7;
  return sub_10002A654(v63, 716659041, 81, 160, 19, 76, v48, v43, a3, a4, a5, a6, a7, a8, a9, a10, a11, v68, v69, a14, v50, v48, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_10002A654@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  LODWORD(STACK[0x278]) = a2;
  LODWORD(STACK[0x280]) = v57;
  v197 = (v57 + 31716329) & 0xFE1C077F;
  LODWORD(STACK[0x258]) = a2 + v197;
  v60 = *(a16 + (*(a13 + a2 + v197) ^ 0xD3));
  v61 = v60 ^ (v60 >> 3) ^ (a1 | (v60 >> 5));
  LOBYTE(v60) = *(a34 + (v59[4] ^ 0x3FLL));
  v62 = *(a16 + (v59[7] ^ 0xC3));
  v63 = (v60 ^ 0xCA) - 98;
  v64 = ((2 * v60) & 0xC4 ^ 0x40) + v63;
  v198[0] = v64;
  v65 = *(a34 + (*(v59 - 4) ^ 0x87));
  v66 = v62 ^ (v62 >> 3) ^ ((v62 >> 5) | 0xFFFFFFB8);
  LODWORD(STACK[0x208]) = v66;
  v67 = *(a34 + (*v59 ^ 0xEELL));
  v68 = (v67 ^ 0xA544FF85) & ((v61 << 8) ^ 0xA5442DE5) | v67 & 0x1A;
  v69 = *(a41 + (v59[6] ^ 0xFLL));
  v70 = ((((19 * v69 - 88) ^ 0xFFFFFFB5) + ((38 * v69 + 80) & 0x6A)) << (v63 & 2) << (v63 & 2 ^ 2)) ^ (19 * v69 - ((2 * (19 * v69 - 88)) & 0x22) - 71);
  v71 = *(a15 + (v59[1] ^ 0xAALL));
  v72 = ((v70 << 16) ^ 0x52033633) & ((v66 << 8) ^ 0x72FF7C3F) | (v66 << 8) & 0xC900;
  LODWORD(STACK[0x288]) = v71 ^ (v71 >> 3) ^ (v71 >> 2);
  v73 = v64;
  v74 = *(a41 + (*(v59 - 6) ^ 0xDLL));
  v75 = (91 * v74 - 23 * (104 - 8 * v74)) ^ (a40 + 76 * v74);
  v76 = (((v75 >> 4) | 0x70u) ^ 0xFFFFFFFFFFFFFE07) & ((v65 << 12) ^ 0x5131E66D2A6D3629) | ((v75 >> 4) | 0x70u) & 0x46;
  v77 = (v76 ^ 0xAC0E0892D5980890) & ((v75 << 28) ^ 0xFC1F48976DFE8CD0) ^ (v76 & 0x120A6682201722FLL | 0x10000000000);
  LODWORD(v76) = (((v76 ^ 0xD5980890) & ((v75 << 28) ^ 0x6DFE8CD0) ^ v76 & 0x2201722F) << 20) ^ 0x64900000 | (v77 >> 12) ^ 0xFFF8A3BF;
  v78 = *(a16 + (v59[3] ^ 8));
  v79 = v78 ^ (v78 >> 5) ^ (v78 >> 3);
  v80 = *(a15 + ((*(v59 - 3) - ((2 * *(v59 - 3)) & 0x1A4u) + 210) ^ 0x71));
  v81 = *(a15 + (v59[5] ^ 0x9FLL));
  v82 = *(a16 + (*(v59 - 5) ^ 0x3FLL));
  v83 = *(a41 + (v59[2] ^ 0x9DLL));
  v84 = v76 ^ ((((v82 >> 5) ^ (v82 >> 3) | a1) ^ v82) << 8);
  LOBYTE(v82) = (BYTE4(a14) + 19 * v83) ^ (a40 + 76 * v83);
  v85 = *(a34 + (v59[8] ^ 0x4BLL));
  v86 = *(a41 + (*(v59 - 2) ^ 0xF7));
  v87 = v82;
  v88 = (((v81 ^ (v81 >> 3) ^ (v81 >> 2) ^ 0x86) << 24) ^ 0x3BA33B6D) & (v72 ^ 0xADDC404E) ^ v72 & 0x505CC410;
  v89 = (v88 ^ 0xB9) & (v85 ^ 0x9D) ^ v85 & 0x3B;
  v196 = v59;
  v90 = ((BYTE4(a14) + 19 * v86) ^ (a40 + 76 * v86));
  v91 = *(a15 + (*(v59 - 7) ^ 0xD6));
  v92 = ((((v90 << 16) ^ 0xFFC1FFFF) & (((v80 ^ (v80 >> 3) ^ (v80 >> 2)) << 24) ^ 0x5ECF55D9) & 0xFFCFFFFF | (((v90 >> 4) & 3) << 20)) ^ 0x68C35561) & (v68 ^ 0x5ABB8E1A) ^ v68 & 0xA540FF47;
  v93 = (((v91 ^ 0xE6) >> 2) | ((v91 ^ 0xFFFFFFE6) << 6)) ^ 0xFFFFFF86 ^ (((v91 ^ (v91 >> 1)) >> 4) | (16 * (v91 ^ (v91 >> 1)))) & 0xFFFFFFCF;
  LODWORD(a43) = (((v93 & 0xC0) << 18) | (v93 << 26)) ^ v84;
  v94 = *(&off_100374800 + v57 - 2199) - 4;
  v95 = *(&off_100374800 + (v57 ^ 0x84B)) - 12;
  v96 = HIBYTE(v88);
  v97 = *&v95[4 * (v70 ^ 0x45)] - 1409877230;
  LODWORD(a53) = v79;
  v98 = v87;
  v99 = v67 ^ 0xAC;
  v100 = *(&off_100374800 + v57 - 2176) - 8;
  v101 = *(&off_100374800 + v57 - 2174);
  v102 = *(v101 + 4 * (v79 ^ 0xD4u)) ^ v97 ^ (*&v100[4 * v99] - (v92 ^ 0x21C17698)) ^ (*&v94[4 * (BYTE3(a43) ^ 0xCB)] - (BYTE3(a43) ^ 0x5F6A3A9F));
  LODWORD(v76) = *&v95[4 * (BYTE2(v76) ^ 0x7C)] - 1409877230;
  v103 = *&v94[4 * (BYTE3(v92) ^ 0x33)] - (BYTE3(v92) ^ 0x5F6A3A67);
  v104 = *(v101 + 4 * (LODWORD(STACK[0x208]) ^ 0x72u));
  v105 = *&v100[4 * (v198[0] ^ 0xAE)];
  LODWORD(STACK[0x208]) = v73;
  v106 = v104 ^ v103 ^ (v105 - (v73 ^ 0x21C17607)) ^ v76;
  LODWORD(v85) = *(v101 + 4 * (BYTE1(v84) ^ 0x70u)) ^ (*&v94[4 * (LODWORD(STACK[0x288]) ^ 0x40)] - (LODWORD(STACK[0x288]) ^ 0x5F6A3A14)) ^ (*&v95[4 * (BYTE2(v92) ^ 0x6F) + 500 + 4 * ((v92 >> 15) & 0xF8 ^ 0xFFFFFF27)] - 1409877230) ^ (*&v100[4 * (v85 ^ 0x29)] - (v89 ^ 0x21C17604));
  LODWORD(a44) = v98;
  v107 = (*&v95[4 * (v98 ^ 0xE3)] - 1409877230) ^ *(v101 + 4 * (BYTE1(v92) ^ 0x73u)) ^ (*&v100[4 * ((v77 >> 12) ^ 9)] - ((v77 >> 12) ^ 0x21C176A0)) ^ ((v96 ^ 0xA095C598) + *&v94[4 * (v96 ^ 0x33)] + 1);
  LODWORD(v99) = *&v95[4 * (BYTE2(v107) ^ 0xC5)];
  v108 = *(v101 + 4 * (BYTE1(v85) ^ 0xF9u)) ^ (*&v100[4 * (v106 ^ 0x68)] - (v106 ^ 0x21C176C1)) ^ ((__ROR4__(__ROR4__(v99, 7) ^ 0x7F247457, 25) ^ 0x39CCD0AD) + ((2 * v99) & 0x57EDF624)) ^ (*&v94[4 * (HIBYTE(v102) ^ 0x9E)] - (HIBYTE(v102) ^ 0x5F6A3ACA));
  LODWORD(v76) = (*&v95[4 * (BYTE2(v102) ^ 0x96)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v106) ^ 0xA8)] - (HIBYTE(v106) ^ 0x5F6A3AFC)) ^ *(v101 + 4 * (BYTE1(v107) ^ 0x6Eu)) ^ (*&v100[4 * (v85 ^ 0xFA)] - (v85 ^ 0x21C17653));
  v109 = (*&v95[4 * (((BYTE2(v106) ^ 5) - (BYTE2(v106) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v106) ^ 5)] - 1409877230) ^ (*&v94[4 * (BYTE3(v85) ^ 0xA6)] - (BYTE3(v85) ^ 0x5F6A3AF2)) ^ *(v101 + 4 * (BYTE1(v102) ^ 0xE0u)) ^ (*&v100[4 * (v107 ^ 0x40)] - (v107 ^ 0x21C176E9));
  v110 = (*&v95[4 * (BYTE2(v85) ^ 0xA3)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v107) ^ 0x74)] - (HIBYTE(v107) ^ 0x5F6A3A20)) ^ *(v101 + 4 * (BYTE1(v106) ^ 0x9Au)) ^ (*&v100[4 * (v102 ^ 0x9A)] - (v102 ^ 0x21C17633));
  LODWORD(v99) = *(v101 + 4 * (BYTE1(v109) ^ 0xBBu));
  LODWORD(v77) = (*&v95[4 * (BYTE2(v110) ^ 0x2C)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v108) ^ 0x48)] - (HIBYTE(v108) ^ 0x5F6A3A1C)) ^ v99 & 0xFFFFFFBF ^ (v99 & 0x40 | 0xD7204319) ^ (*&v100[4 * (v76 ^ 0xE0)] - (v76 ^ 0x21C17649));
  LODWORD(v85) = (*&v95[4 * (BYTE2(v108) ^ 0xE2)] - 1409877230) ^ (*&v94[4 * (BYTE3(v76) ^ 0x7D)] - (BYTE3(v76) ^ 0x5F6A3A29)) ^ *(v101 + 4 * (BYTE1(v110) ^ 0x4Fu)) ^ (*&v100[4 * (v109 ^ 0x80)] - (v109 ^ 0x21C17629));
  v111 = (*&v95[4 * (BYTE2(v76) ^ 0xD9) + 500 + 4 * ((v76 >> 15) & 0xF8 ^ 0xFFFFFF4F)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v109) ^ 0x45)] - (HIBYTE(v109) ^ 0x5F6A3A11)) ^ *(v101 + 4 * (BYTE1(v108) ^ 0x46u)) ^ (*&v100[4 * (v110 ^ 0xA8)] - (v110 ^ 0x21C17601));
  LODWORD(v76) = (*&v95[4 * (BYTE2(v109) ^ 0x90)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v110) ^ 0x99)] - (HIBYTE(v110) ^ 0x5F6A3ACD)) ^ *(v101 + 4 * (BYTE1(v76) ^ 0xA2u)) ^ (*&v100[4 * (v108 ^ 0xA5)] - (v108 ^ 0x21C1760C));
  v112 = BYTE3(v76);
  v113 = (*&v95[4 * (BYTE2(v76) ^ 0xF6)] - 1409877230) ^ *(v101 + 4 * ((v111 ^ 0xC1A2) >> 8)) ^ (*&v94[4 * (BYTE3(v77) ^ 0x32)] - (BYTE3(v77) ^ 0x5F6A3A66)) ^ (*&v100[4 * (v85 ^ 0x57)] - (v85 ^ 0x21C176FE));
  v114 = ((v111 ^ 0xF97FC1A2) >> 24) ^ 0x5F6A3ADE;
  LODWORD(v116) = __ROR4__((*&v94[4 * (BYTE3(v85) ^ 0x7E)] - (BYTE3(v85) ^ 0x5F6A3A2A)) ^ 0x94F5230B ^ *(v101 + 4 * (BYTE1(v76) ^ 0x2Cu)) ^ (*&v100[4 * (v111 ^ 0x72)] - (v111 ^ 0x21C176DB)) ^ (*&v95[4 * (((BYTE2(v77) ^ 0xB5) - (BYTE2(v77) ^ 0xC9)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v77) ^ 0xB5)] - 1409877230), 24) ^ 0xF7A7AFD3;
  HIDWORD(v116) = v116;
  v115 = v116 >> 8;
  v117 = (*&v95[4 * (BYTE2(v85) ^ 0xD)] - 1409877230) ^ *(v101 + 4 * (BYTE1(v77) ^ 0xAFu)) ^ (*&v100[4 * (v76 ^ 0x3A)] - (v76 ^ 0x21C17693)) ^ (*&v94[4 * (((v111 ^ 0xF97FC1A2) >> 24) ^ 0x8A)] - v114);
  v118 = *(v101 + 4 * (((BYTE1(v85) ^ 0x6B) - 1853103297 - 2 * ((BYTE1(v85) ^ 0x6B) & 0x3F)) ^ 0x918BE368));
  v119 = v113 ^ 0xFBC8137;
  v120 = (*&v95[4 * ((v111 ^ 0xF97FC1A2) >> 16)] - 1409877230) ^ (*&v94[4 * (v112 ^ 0x97)] - (v112 & 0xFFFFFFFD ^ 0x1D ^ (1600797406 - (v112 & 2)))) ^ (*&v100[4 * (v77 ^ 0x2B)] - (v77 ^ 0x21C17682)) ^ v118;
  v121 = v120 ^ 0x25BF358A;
  v122 = (*&v95[4 * (((v120 ^ 0x25BF358A) >> 16) ^ 0x7C)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v119) ^ 0x8A)] - (HIBYTE(v119) ^ 0x5F6A3ADE)) ^ *(v101 + 4 * (BYTE1(v117) ^ 0x25u)) ^ (*&v100[4 * (BYTE1(v116) ^ 0xD3)] - (BYTE1(v116) ^ 0x21C1767A));
  if (((v113 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v123 = (v113 ^ 0xFBC8137) >> 16;
  }

  else
  {
    v123 = ((v113 ^ 0xFBC8137) >> 16) & 0xC0;
  }

  v124 = (*&v95[4 * (v123 ^ 0x7C)] - 1409877230) ^ *(v101 + 4 * BYTE1(v121)) ^ (*&v100[4 * (v117 ^ 0x37)] - (v117 ^ 0x21C1769E)) ^ (*&v94[4 * (((v115 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)] - (((v115 ^ 0x1DD0DB03u) >> 24) ^ 0x5F6A3ADE));
  v125 = (*&v95[4 * (BYTE2(v115) ^ 0xAC)] - 1409877230) ^ (*&v94[4 * (((v117 ^ 0xCC4472E7) >> 24) ^ 0x8A)] - (((v117 ^ 0xCC4472E7) >> 24) ^ 0x5F6A3ADE)) ^ *(v101 + 4 * BYTE1(v119)) ^ (*&v100[4 * (v120 ^ 0x5A)] - (v120 ^ 0x21C176F3));
  v126 = (*&v95[4 * (BYTE2(v117) ^ 0x38)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v121) ^ 0x8A)] - (HIBYTE(v121) ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v113 ^ 0xE7)] - (v113 ^ 0x21C1764E)) ^ *(v101 + 4 * (BYTE1(v115) ^ 0x8Cu));
  v127 = v124 ^ 0x94240652;
  v128 = (v124 ^ 0x94240652) >> 24;
  v129 = *&v100[4 * (v124 ^ 0x82)] - (v124 ^ 0x21C1762B);
  v130 = v128 ^ 0x8A;
  v131 = v128 ^ 0x5F6A3ADE;
  v132 = (*&v95[4 * ((v126 ^ 0x28B1C8AFu) >> 16)] - 1409877230) ^ *(v101 + 4 * ((v125 ^ 0xF582) >> 8)) ^ (*&v94[4 * (((v122 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v122 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ v129;
  v133 = (*&v95[4 * (BYTE2(v122) ^ 0xCF)] - 1409877230) ^ *(v101 + 4 * ((v126 ^ 0xC8AF) >> 8)) ^ (*&v100[4 * (v125 ^ 0x52)] - (v125 ^ 0x21C176FB)) ^ (*&v94[4 * v130] - v131);
  v134 = (*&v95[4 * BYTE2(v127)] - 1409877230) ^ (*&v94[4 * (((v125 ^ 0x57A0F582) >> 24) ^ 0x8A)] - (((v125 ^ 0x57A0F582) >> 24) ^ 0x5F6A3ADE)) ^ *(v101 + 4 * ((v122 ^ 0x3250) >> 8)) ^ (*&v100[4 * (v126 ^ 0x7F)] - (v126 ^ 0x21C176D6));
  v135 = (*&v95[4 * (BYTE2(v125) ^ 0xDC)] - 1409877230) ^ (*&v94[4 * (((v126 ^ 0x28B1C8AFu) >> 24) ^ 0x8A)] - (((v126 ^ 0x28B1C8AFu) >> 24) ^ 0x5F6A3ADE)) ^ *(v101 + 4 * (BYTE1(v127) ^ 0x57u)) ^ (*&v100[4 * (v122 ^ 0x80)] - (v122 ^ 0x21C17629));
  v136 = (*&v95[4 * ((v135 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *(v101 + 4 * ((v134 ^ 0x7C12) >> 8)) ^ (*&v94[4 * (((v132 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v132 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v133 ^ 0x10)] - (v133 ^ 0x21C176B9));
  v137 = (v135 ^ 0xBE27B2EF) >> 24;
  v138 = (*&v95[4 * (BYTE2(v132) ^ 0xD2)] - 1409877230) ^ *(v101 + 4 * (BYTE1(v135) ^ 0xE5u)) ^ (*&v94[4 * (((v133 ^ 0x6FA1BBC0u) >> 24) ^ 0x8A)] - (((v133 ^ 0x6FA1BBC0u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v134 ^ 0xC2)] - (v134 ^ 0x21C1766B));
  v139 = (*&v95[4 * ((v133 ^ 0x6FA1BBC0u) >> 16)] - 1409877230) ^ *(v101 + 4 * ((v132 ^ 0x4527) >> 8)) ^ (*&v94[4 * (((v134 ^ 0x2B27C12) >> 24) ^ 0x8A)] - (((v134 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v135 ^ 0x3F)] - (v135 ^ 0x21C17696));
  v140 = (*&v95[4 * ((v134 ^ 0x2B27C12) >> 16)] - 1409877230) ^ *(v101 + 4 * ((v133 ^ 0xBBC0) >> 8)) ^ (*&v94[4 * (v137 ^ 0x8A)] - (v137 ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v132 ^ 0xF7)] - (v132 ^ 0x21C1765E));
  v141 = (*&v95[4 * ((v140 ^ 0x7DDF413Fu) >> 16)] - 1409877230) ^ *(v101 + 4 * (BYTE1(v139) ^ 0x1Fu)) ^ (*&v94[4 * (((v136 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v136 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v138 ^ 0xF5)] - (v138 ^ 0x21C1765C));
  v142 = (*&v95[4 * ((v136 ^ 0x179F0454) >> 16)] - 1409877230) ^ *(v101 + 4 * ((v140 ^ 0x413F) >> 8)) ^ (*&v94[4 * (((v138 ^ 0x75457125) >> 24) ^ 0x8A)] - (((v138 ^ 0x75457125) >> 24) ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v139 ^ 0xC0)] - (v139 ^ 0x21C17669));
  v143 = *(v101 + 4 * (BYTE1(v136) ^ 0x53u));
  v144 = v143 ^ -v143 ^ (-1795874037 - (__ROR4__(__ROR4__(v143, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v145 = BYTE2(v139) ^ 0x59;
  v146 = (*&v95[4 * (BYTE2(v138) ^ 0x39)] - 1409877230) ^ (*&v100[4 * (v140 ^ 0xEF)] - (v140 ^ 0x21C17646)) ^ (*&v94[4 * (((v139 ^ 0xAC254810) >> 24) ^ 0x8A)] - (((v139 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ (((2 * v144) & 0x29EA4616) + (v144 ^ 0x94F5230B));
  v147 = v141 ^ 0x8EBD9B97;
  v148 = (*&v95[4 * v145] - 1409877230) ^ *(v101 + 4 * (BYTE1(v138) ^ 0x26u)) ^ (*&v94[4 * (((v140 ^ 0x7DDF413Fu) >> 24) ^ 0x8A)] - (((v140 ^ 0x7DDF413Fu) >> 24) ^ 0x5F6A3ADE)) ^ (*&v100[4 * (v136 ^ 0x84)] - (v136 ^ 0x21C1762D));
  v149 = v146 ^ 0x8CA395FC;
  v150 = *&v100[4 * (v142 ^ 0x63)] - (v142 ^ 0x21C176CA);
  v151 = LODWORD(STACK[0x280]);
  v152 = (*&v95[4 * ((v148 ^ 0x10CC86ED) >> 16)] - 1409877230) ^ (*&v94[4 * (HIBYTE(v147) ^ 0x8A)] - (HIBYTE(v147) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *(v101 + 4 * (BYTE1(v146) ^ 0xC2u));
  v153 = (v152 ^ -v152 ^ (v150 - (v152 ^ v150))) + v150;
  if (((v146 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v154 = -16;
  }

  else
  {
    v154 = 16;
  }

  v155 = (*&v95[4 * (BYTE2(v141) ^ 0xC1)] - 1409877230) ^ *(v101 + 4 * ((v148 ^ 0x86ED) >> 8)) ^ (*&v94[4 * (((v142 ^ 0xA3ECFAB3) >> 24) ^ 0x8A)] - (((v142 ^ 0xA3ECFAB3) >> 24) ^ 0x5F6A3ADE)) ^ (*&v100[4 * ((v154 + v149) ^ 0xC0)] - ((v154 + v149) ^ 0x21C17669));
  v156 = (*&v95[4 * (BYTE2(v142) ^ 0xEC)] - 1409877230) ^ *(v101 + 4 * BYTE1(v147)) ^ (*&v100[4 * (v148 ^ 0x3D)] - (v148 ^ 0x21C17694)) ^ (*&v94[4 * (HIBYTE(v149) ^ 0x8A)] - (HIBYTE(v149) ^ 0x5F6A3ADE));
  v157 = (*&v95[4 * (BYTE2(v146) ^ 0xDF)] - 1409877230) ^ (*&v94[4 * (((v148 ^ 0x10CC86ED) >> 24) ^ 0x8A)] - (((v148 ^ 0x10CC86ED) >> 24) ^ 0x5F6A3ADE)) ^ *(v101 + 4 * (BYTE1(v142) ^ 0xADu)) ^ (*&v100[4 * (v141 ^ 0x47)] - (v141 ^ 0x21C176EE));
  v158 = *(&off_100374800 + (v151 ^ 0x8D8));
  v159 = *(&off_100374800 + (v151 ^ 0x8A6));
  v160 = *(v159 + 4 * ((v157 ^ 0x66EB169A) >> 16)) ^ 0x4D522762;
  v161 = (v160 >> (v114 & 3) >> (v114 & 3 ^ 3)) ^ v160;
  v162 = *(&off_100374800 + (v151 ^ 0x858)) - 4;
  v163 = *(&off_100374800 + (v151 ^ 0x89A));
  v164 = ((v155 ^ 0xA4) - 1352815326) ^ *&v162[4 * (BYTE1(v156) ^ 0x57)] ^ *(v158 + 4 * (HIBYTE(v153) ^ 0xBE)) ^ *(v163 + 4 * (v155 ^ 0x91u)) ^ (v161 >> 2);
  v165 = *(v159 + 4 * (BYTE2(v153) ^ 0xBFu)) ^ 0x4D522762;
  v166 = *(v158 + 4 * (HIBYTE(v155) ^ 0x43)) ^ ((v156 ^ 0xC4) - 1352815326) ^ *&v162[4 * (BYTE1(v157) ^ 0x7C)] ^ v165 ^ *(v163 + 4 * (v156 ^ 0xF1u));
  v167 = *(v158 + 4 * (HIBYTE(v156) ^ 0xD5));
  v168 = *(v159 + 4 * ((v156 ^ 0x6CCB3DC4) >> 16));
  v169 = v164 - ((2 * v164) & 0x409F86DC);
  v170 = v160 ^ LODWORD(STACK[0x210]);
  v171 = *(v159 + 4 * (BYTE2(v155) ^ 0x20u)) ^ 0x4D522762;
  v172 = v167 ^ ((v157 ^ 0x9A) - 1352815326) ^ *(v163 + 4 * (v157 ^ 0xAFu)) ^ *&v162[4 * ((v153 ^ 0x84FF) >> 8)] ^ (v171 >> 2) ^ (v171 >> 5);
  v173 = *(v158 + 4 * ((v157 ^ 0x66EB169A) >> 24)) ^ (~v153 - 1352815326) ^ v168 ^ 0x4D522762 ^ *&v162[4 * (BYTE1(v155) ^ 0x2D)] ^ ((v168 ^ 0x4D522762u) >> 2) ^ ((v168 ^ 0x4D522762u) >> 5) ^ *(v163 + 4 * (v153 ^ 0xCAu));
  v174 = ((v166 ^ (v165 >> 2) ^ (v165 >> 5)) - ((2 * (v166 ^ (v165 >> 2) ^ (v165 >> 5))) & 0x129F81C) + 9763854) ^ LODWORD(STACK[0x250]);
  v175 = v171 ^ LODWORD(STACK[0x248]) ^ (v172 - ((2 * v172) & 0x53E8732E) - 1443612265);
  v176 = *(&off_100374800 + (v151 ^ 0x8A0)) - 8;
  v177 = STACK[0x268];
  v177[1] = (-97 * v176[HIBYTE(v175) ^ 0x4CLL]) ^ ((-97 * v176[HIBYTE(v175) ^ 0x4CLL]) >> 5) ^ ((-97 * v176[HIBYTE(v175) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v177 - 3) = (-97 * v176[HIBYTE(v174) ^ 0x61]) ^ ((-97 * v176[HIBYTE(v174) ^ 0x61]) >> 5) ^ ((-97 * v176[HIBYTE(v174) ^ 0x61]) >> 1) ^ 0xD8;
  v178 = ((v175 ^ 0xD2C1) >> 8);
  v179 = v178 ^ 0x6C;
  LOBYTE(v166) = v178 ^ 0xDA;
  v180 = *(&off_100374800 + (v151 ^ 0x8F8)) - 12;
  v177[3] = (((v166 + 99) ^ v166) + v180[v179]) ^ 0xB3;
  v181 = *(&off_100374800 + v151 - 2059) - 8;
  LOBYTE(v179) = v181[((((v175 ^ 0xA619D2C1) >> 16) ^ -((v175 ^ 0xA619D2C1) >> 16) ^ (510 - ((v175 ^ 0xA619D2C1) >> 16) - ((2 * ((v175 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v182 = ((((v175 ^ 0xA619D2C1) >> 16) ^ -((v175 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v175 ^ 0xA619D2C1) >> 16) - ((2 * ((v175 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v183 = v182 & 8 ^ v179;
  v184 = (v182 & 8 & v179) == 0;
  v185 = v179 - (v182 & 8);
  if (v184)
  {
    v185 = v183;
  }

  v177[2] = v185 ^ v182 & 0xF7;
  *(a12 + LODWORD(STACK[0x258])) = (v180[BYTE1(v174) ^ 0x94] + (((BYTE1(v174) ^ 0x22) + 99) ^ BYTE1(v174) ^ 0x22)) ^ 0xA8;
  v186 = STACK[0x278];
  v187 = v169 - 1605385362;
  HIDWORD(v188) = ((v173 ^ 0x23A4540) - 2 * ((v173 ^ 0x23A4540) & 0x36521E ^ v173 & 0xA) + 11948564) ^ LODWORD(STACK[0x260]);
  LODWORD(v188) = ((v173 ^ 0x23A4540) - 2 * ((v173 ^ 0x23A4540) & 0x1FB65217 ^ v173 & 3) - 1615441388) ^ LODWORD(STACK[0x260]);
  HIDWORD(v188) = (v188 >> 24) ^ 0x8829CA87;
  LODWORD(v188) = HIDWORD(v188);
  v189 = v188 >> 8;
  v190 = v170 ^ v187;
  *(v177 - 2) = BYTE2(v174) ^ 0x9E ^ v181[BYTE2(v174) ^ 0xD5];
  v191 = *(&off_100374800 + (v151 ^ 0x89F)) - 4;
  v192 = v191[v190 ^ 0xE7] - 24;
  *(v177 - 4) = v192 ^ 0x5D ^ (v192 >> 1) & 0x1E;
  v177[5] = (-97 * v176[HIBYTE(v189) ^ 0x60]) ^ ((-97 * v176[HIBYTE(v189) ^ 0x60]) >> 5) ^ ((-97 * v176[HIBYTE(v189) ^ 0x60]) >> 1) ^ 0xFE;
  v193 = v191[((180 - (v175 ^ 0x56) + (v175 ^ 0xE2) - 2 * ((180 - (v175 ^ 0x56)) & (v175 ^ 0xE2))) ^ -(v175 ^ 0xE2)) + 180] - 24;
  v177[4] = v193 ^ 0x62 ^ (v193 >> 1) & 0x1E;
  v177[7] = (v180[((HIDWORD(v188) >> 8) >> 8) ^ 0x4FLL] + (((((HIDWORD(v188) >> 8) >> 8) ^ 0xF9) + 99) ^ ((HIDWORD(v188) >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v177 - 5) = (v180[BYTE1(v190) ^ 0x1FLL] + (((BYTE1(v190) ^ 0xA9) + 99) ^ BYTE1(v190) ^ 0xA9)) ^ 0x84;
  v194 = v191[v174 ^ 0xDDLL];
  *v177 = (((v194 + ((v194 - 24) ^ 0xAE) - 23) ^ 0xFE) + v194 - 24) ^ ((v194 - 24) >> 1) & 0x1E;
  *(v177 - 7) = (-97 * v176[HIBYTE(v190) ^ 0x67]) ^ ((-97 * v176[HIBYTE(v190) ^ 0x67]) >> 5) ^ ((-97 * v176[HIBYTE(v190) ^ 0x67]) >> 1) ^ 0xE1;
  v177[6] = BYTE2(v189) ^ 0x8E ^ v181[BYTE2(v189) ^ 0x55];
  *(v177 - 6) = BYTE2(v190) ^ 0xD3 ^ v181[BYTE2(v190) ^ 0x7DLL];
  LOBYTE(v194) = v191[BYTE5(v188) ^ 0xF7] - 24;
  v177[8] = v194 ^ ((v194 & (v194 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v58 + 8 * (((4 * ((v186 + 1065) > 0x13F)) | (32 * ((v186 + 1065) > 0x13F))) ^ v151)))(v181, 87, v92, HIWORD(v174) ^ 0x58BD, 1297229666, 4294967199, v151, v167, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v196, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_10002C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 144) = &a24;
  *(v32 - 136) = &a28;
  *(v32 - 128) = a12;
  *(v32 - 120) = (v31 + 554) ^ (1785193651 * ((v32 - 863086581 - 2 * ((v32 - 144) & 0xCC8E589B)) ^ 0xDF52B4BB));
  *(v32 - 112) = &a24;
  *(v32 - 104) = v30;
  v33 = (*(v29 + 8 * (v31 ^ 0x82C)))(v32 - 144);
  return (*(v29 + 8 * ((((v28 - 2054041575) > 0x7FFFFFFE) | (8 * ((v28 - 2054041575) > 0x7FFFFFFE))) ^ (v31 + 236))))(v33);
}

uint64_t sub_10002C1A8@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) + ((a1 + 763) ^ 0x6437C466);
  v5 = (v2 + 1681375502 < 297200075) ^ (v4 < 297200075);
  v6 = v2 + 1681375502 > v4;
  if (v5)
  {
    v6 = v2 + 1681375502 < 297200075;
  }

  return (*(v3 + 8 * ((229 * ((a1 ^ v6) & 1)) ^ a1)))();
}

uint64_t sub_10002C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v71 + 264) = a68 - 1712;
  LODWORD(STACK[0x43C]) = v70;
  return (*(v69 + 8 * (((STACK[0x2D8] != 0) * (303 * (v68 ^ 0x172) + ((v68 + 322) ^ 0xFFFFFBAE))) ^ (v68 + 411))))();
}

uint64_t sub_10002C2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v31 - 144) = (v30 - 816) ^ (1037613739 * ((((v31 - 144) | 0xF2315437) - ((v31 - 144) & 0xF2315437)) ^ 0x23337948));
  *(v31 - 120) = &a24;
  *(v31 - 112) = v26;
  *(v31 - 136) = &a24;
  *(v31 - 128) = v25;
  (*(v24 + 8 * (v30 + 207)))(v31 - 144);
  v32 = ((v31 - 144 + v28 - 2 * ((v31 - 144) & v28)) ^ 0x664898BD) * v29;
  *(v31 - 128) = a13;
  *(v31 - 144) = v27 - 215068456 + v32 + 2;
  *(v31 - 136) = v30 - v32 - 1515;
  v33 = (*(v24 + 8 * (v30 ^ 0x106)))(v31 - 144);
  return (*(v24 + 8 * (((*(v31 - 140) == -1611310844) * (v30 - 1922)) ^ v30)))(v33);
}

uint64_t sub_10002C5F4()
{
  v4.i64[0] = 0x6666666666666666;
  v4.i64[1] = 0x6666666666666666;
  v5.i64[0] = 0x3333333333333333;
  v5.i64[1] = 0x3333333333333333;
  v1[72] = vaddq_s8(vsubq_s8(*(v0 + 4), vandq_s8(vaddq_s8(*(v0 + 4), *(v0 + 4)), v4)), v5);
  return (*(v3 + 8 * ((v2 + 83966176) & 0xFAFEC6FD)))();
}

uint64_t sub_10002C700(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v10 - 124);
  if (v11 == 2)
  {
    return (*(v9 + 8 * ((522 * ((((89 * (a4 ^ (a4 - 4))) ^ (*(v10 - 128) == 0)) & 1) == 0)) | (a4 + a7))))(1806030702, a9);
  }

  if (v11 != 1)
  {
    JUMPOUT(0x10002C7E0);
  }

  return (*(v9 + 8 * (((*(v10 - 128) != 0) * (a4 + a7 - 106)) ^ (a4 + a7))))(1806030702, a9);
}

uint64_t sub_10002C928@<X0>(int a1@<W8>)
{
  v7 = (v2 + v1);
  *v7 = 0u;
  v7[1] = 0u;
  return (*(v6 + 8 * ((((a1 ^ v4 ^ v3) + v1 == 256) * v5) ^ a1)))();
}

uint64_t sub_10002C9C0@<X0>(unsigned int a1@<W8>)
{
  v5 = v4 + a1 + 575 < v1 + 706368366;
  if (a1 > 0x6B95909F != v1 + 706368366 < ((v2 + 223) ^ v4 ^ (v2 + 553332386) & 0xDF04D3FD))
  {
    v5 = v1 + 706368366 < ((v2 + 223) ^ v4 ^ (v2 + 553332386) & 0xDF04D3FD);
  }

  return (*(v3 + 8 * ((7 * v5) | (v2 + 1515))))(397);
}

uint64_t sub_10002CA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16)
{
  v19 = 843532609 * ((-959714272 - (&a13 | 0xC6CBEC20) + (&a13 | 0x393413DF)) ^ 0x6579475A);
  a13 = a11;
  a15 = 1265912287 * v16 - v19 + 441172865;
  a16 = v19 ^ 0x720;
  v20 = (*(v18 + 18752))(&a13);
  return (*(v18 + 8 * ((31 * (a14 != ((v17 + 1657) ^ 0x815))) ^ 0x80A)))(v20);
}

uint64_t sub_10002CC60@<X0>(int a1@<W8>)
{
  v4 = v1 ^ 0x110;
  if ((v2 - 1) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = (a1 ^ (v4 - 1362354860) & 0x5133E3BB ^ (v4 - 1131217102) & 0x436D027A ^ 0xFFFFFC1C) >= v2 - 1;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((105 * v6) ^ v4)))();
}

uint64_t sub_10002CCDC@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xEAAu));

  return v3(v1);
}

uint64_t sub_10002CD50@<X0>(int a1@<W8>)
{
  v8 = ((((v7 - 144) | 0x57D1837) + (~(v7 - 144) | 0xFA82E7C8)) ^ 0x97AB2792) * v6;
  *(v7 - 144) = v8 + (v1 ^ 0xEF9F8BCB) + (a1 & 0xDF3F1796) + 2113729782;
  *(v7 - 136) = v3 - v8 - 1078;
  *(v7 - 128) = v4;
  v9 = (*(v2 + 8 * (v3 + 695)))(v7 - 144);
  return (*(v2 + 8 * (((*(v7 - 140) != v5) * (((v3 - 1988896903) & 0x768C2336) - 187)) ^ v3)))(v9);
}

uint64_t sub_10002CE28@<X0>(int a1@<W8>)
{
  *v3 = a1;
  v5 = (v1 + 1033) ^ 0x34C;
  v9 = v1 + 1033 - ((((&v9 | 0xF6501600) ^ 0xFFFFFFFE) - (~&v9 | 0x9AFE9FF)) ^ 0x84028B13) * v2 - 642;
  v10 = v7;
  (*(v4 + 8 * ((v1 + 1033) ^ 0xE45)))(&v9);
  v10 = v8;
  v9 = v5 - ((((2 * &v9) | 0x157E9FC8) - &v9 - 180309988) ^ 0x87122D08) * v2 + 186;
  (*(v4 + 8 * (v5 + 1271)))(&v9);
  return 0;
}

uint64_t sub_10002CFB4@<X0>(uint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v10 = v5 + 32;
  v11 = (v7 ^ v10) + v3;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v6 == v10) * v8) ^ (a2 + v4 + 1469))))();
}

uint64_t sub_10002D044@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v45 = *(&a29 + a2 + 72);
  v46 = ((2 * a2) & 0xEFDCEF78) + (a2 ^ 0xF7EE77BE) + v41;
  *(a1 + v46) = v45 ^ ((v42 ^ 0x36) + 56);
  *(a1 + v46 + 1) = (BYTE1(v45) ^ 0xD0) - 2 * ((BYTE1(v45) ^ 0xD0) & 0x37 ^ BYTE1(v45) & 4) + 51;
  *(a1 + v46 + 2) = (BYTE2(v45) ^ 0x4C) - ((v45 >> 15) & 0x66) + 51;
  *(a1 + v46 + 3) = (HIBYTE(v45) ^ 0xA2) - 2 * ((HIBYTE(v45) ^ 0xA2) & 0xBB ^ HIBYTE(v45) & 8) + 51;
  return (*(v44 + 8 * (((a2 + 4 < a41) * v43) ^ v42)))();
}

uint64_t sub_10002D458@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v6 = v5[396] ^ (((((62 * (a2 ^ 0x489) - 84) | 0x54) + v4) & v5[623] | *v5 & 0x7FFFFFFE) >> 1);
  v5[623] = (v3 + v6 + (~(2 * v6) | 0x91482EB1) + 1) ^ *(a1 + 4 * (*v5 & 1));
  return (*(v2 + 8 * ((460 * (LODWORD(STACK[0x2F4]) > 0x26F)) ^ a2)))();
}

void sub_10002D4E8(int a1@<W8>)
{
  if (a1 == 1884117680)
  {
    v2 = -392105736;
  }

  else
  {
    v2 = 392145696;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_10002D5D8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, unsigned int a39)
{
  v43 = *(&a27 + a1 + 72);
  v44 = ((2 * a1) & 0xFF97D5E8) + (a1 ^ 0xFFCBEAF6) + v39;
  *(v41 + v44) = (HIBYTE(v43) ^ 0xA2) - (((v40 - 55) ^ 0x7A) & (2 * (HIBYTE(v43) ^ 0xA2))) + 51;
  *(v41 + v44 + 1) = (BYTE2(v43) ^ 0x4C) - ((v43 >> 15) & 0x66) + 51;
  *(v41 + v44 + 2) = (BYTE1(v43) ^ 0xD0) - 2 * ((BYTE1(v43) ^ 0xD0) & 0x37 ^ BYTE1(v43) & 4) + 51;
  *(v41 + v44 + 3) = v43 ^ 0x5E;
  return (*(v42 + 8 * ((1419 * (a1 + 4 < a39)) ^ v40)))();
}

uint64_t sub_10002D6AC()
{
  v3 = *(v2 + 400);
  v4 = STACK[0x2C0];
  *(v2 + 344) = *(v1 + 8 * v0);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v1 + 8 * ((v6 * ((v0 ^ 0x13F) - 265)) ^ ((v0 ^ 0x13F) + 1590))))();
}

void sub_10002D6F4(uint64_t a1)
{
  v1 = *(a1 + 8) + 1388665877 * ((-2 - ((a1 | 0xD3DFA21E) + (~a1 | 0x2C205DE1))) ^ 0xA18D3F0D);
  v2 = *(&off_100374800 + v1 - 181) - 8;
  v3 = *a1;
  (*&v2[8 * v1 + 17256])(*(&off_100374800 + (v1 ^ 0x9E)) - 4, sub_10002EAF4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10002D820(_DWORD *a1)
{
  v1 = 843532609 * (((a1 | 0x20F8A4B6) - a1 + (a1 & 0xDF075B49)) ^ 0x7CB5F033);
  v2 = *a1 + v1;
  return (*(*(&off_100374800 + (v2 ^ 0x529)) + (((((((a1[4] + v1) ^ 0xCF013F3E) + 822001858) ^ (((a1[4] + v1) ^ 0x18BDEFC5) - 415100869) ^ (((a1[4] + v1) ^ 0x3F1C2003) - 1058807811)) + 1755377912 < 0x80000064) * (((143 * (v2 ^ 0x500) - 1150) | 0x160) ^ 0x103)) ^ v2) - 1))();
}

uint64_t sub_10002DA44@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W8>)
{
  LODWORD(STACK[0x414]) = a2;
  LODWORD(STACK[0x3FC]) = v5;
  LODWORD(STACK[0x3A4]) = 1808619498;
  v8 = *(v7 + 472);
  v9 = *(v8 + 88);
  LODWORD(STACK[0x468]) = v3;
  v10 = (((v3 ^ 0x163CA8B) - 23317131) ^ ((v3 ^ 0x61977369) - 1637315433) ^ ((v3 ^ 0xC2B868FB ^ ((v4 ^ 0xB78) + 1834947179) & 0x92A0EB7F) + 1028101745)) + 1600022910 + (((v9 ^ 0x5D073943) - 1560754499) ^ ((v9 ^ 0x844C998) - 138725784) ^ ((v9 ^ 0xF70F20B6) + 150003530));
  *(v8 + 88) = v10 ^ ((v10 ^ 0xFF9F4B3) - 356334615) ^ ((v10 ^ 0xF6E24EFB) + 333019553) ^ ((v10 ^ 0x94224D43) + 1897495065) ^ ((v10 ^ 0x77FD3FAF) - 1832515339) ^ 0xB88818C9;
  LODWORD(STACK[0x3B4]) = a3;
  LODWORD(STACK[0x348]) = v6;
  return sub_10002DC04(a1, 332);
}

uint64_t sub_10002DC04@<X0>(int a1@<W8>)
{
  v5 = (((a1 ^ 0xD5DB705E) + 707039138) ^ ((a1 ^ 0x1B047659) - 453277273) ^ ((a1 ^ 0x6C93D66A) - 1821628010)) + (((*(v3 + 72) ^ 0x1989E0AD) - 428466349) ^ ((*(v3 + 72) ^ 0x2C105C2D) - 739269677) ^ ((*(v3 + 72) ^ 0x97D56CED) + 1747620627)) + 1801235313;
  v6 = (v5 ^ 0xDD3EE449) & (2 * (v5 & 0xD93CF569)) ^ v5 & 0xD93CF569;
  v7 = ((2 * (v5 ^ 0xCF67EC4B)) ^ 0x2CB63244) & (v5 ^ 0xCF67EC4B) ^ (2 * (v5 ^ 0xCF67EC4B)) & (v2 + 2);
  v8 = v7 ^ 0x12490922;
  v9 = (v7 ^ 0x4121000) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x596C6488) & v8 ^ (4 * v8) & v2;
  v11 = v9 ^ (v2 + 2) ^ (v10 ^ 0x10480000) & (16 * v9);
  v12 = (16 * (v10 ^ 0x6131922)) & v2 ^ 0x124A0902 ^ ((16 * (v10 ^ 0x6131922)) ^ 0x65B19220) & (v10 ^ 0x6131922);
  v13 = (v11 << 8) & (v2 - 32) ^ v11 ^ ((v11 << 8) ^ 0x5B192200) & v12;
  v14 = v5 ^ (2 * ((v13 << 16) & 0x165B0000 ^ v13 ^ ((v13 << 16) ^ 0x19220000) & ((v12 << 8) & 0x165B0000 ^ 0x4420000 ^ ((v12 << 8) ^ 0x5B190000) & v12))) ^ 0x53F01740;
  v15 = (((v1 ^ 0xFD3499E1) + 46884383) ^ ((v1 ^ 0x8E77F61) - 149389153) ^ ((v1 ^ 0x579F36ED) - 1470052077)) + (((*(v3 + 76) ^ 0x6AC8EF00) - 1791553280) ^ ((*(v3 + 76) ^ 0xF7628D73) + 144536205) ^ ((*(v3 + 76) ^ 0x3FE6B21E) - 1072083486)) + 1833043301;
  *(v3 + 72) = v14;
  *(v3 + 76) = v15 ^ ((v15 ^ 0xC8EB0BDC) + 532451497) ^ ((v15 ^ 0x9DDDC239) + 1250580814) ^ ((v15 ^ 0x67B4291) - 785589786) ^ ((v15 ^ 0x7BE5EFFF) - 1397590900) ^ 0x8AE4B4E6;
  v16 = *(v4 + 472);
  v17 = (((LODWORD(STACK[0x414]) ^ 0xB9E976C6) + 1175882042) ^ ((LODWORD(STACK[0x414]) ^ 0x6D972A70) - 1838623344) ^ ((LODWORD(STACK[0x414]) ^ 0x76328CDB) - 1983024347)) - 1789329927 + (((*(v16 + 80) ^ 0xEADAB28C) + 354766196) ^ ((*(v16 + 80) ^ 0x2661C2D2) - 643941074) ^ ((*(v16 + 80) ^ 0x6EF7A033) - 1861722163));
  v18 = (v17 ^ 0xF5230ED) & (2 * (v17 & 0xAF40A2E1)) ^ v17 & 0xAF40A2E1;
  v19 = ((2 * (v17 ^ 0x5952712D)) ^ 0xEC25A798) & (v17 ^ 0x5952712D) ^ (2 * (v17 ^ 0x5952712D)) & 0xF612D3CC;
  v20 = v19 ^ 0x12125044;
  v21 = (v19 ^ 0xE4008388) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xD84B4F30) & v20 ^ (4 * v20) & 0xF612D3CC;
  v23 = (v22 ^ 0xD0024300) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x261090CC)) ^ 0x612D3CC0) & (v22 ^ 0x261090CC) ^ (16 * (v22 ^ 0x261090CC)) & 0xF612D3C0;
  v25 = v23 ^ 0xF612D3CC ^ (v24 ^ 0x60001000) & (v23 << 8);
  v26 = v17 ^ (2 * ((v25 << 16) & 0x76120000 ^ v25 ^ ((v25 << 16) ^ 0x53CC0000) & (((v24 ^ 0x9612C30C) << 8) & 0x76120000 ^ 0x64000000 ^ (((v24 ^ 0x9612C30C) << 8) ^ 0x12D30000) & (v24 ^ 0x9612C30C))));
  v27 = (((LODWORD(STACK[0x3FC]) ^ 0xDD5F443D) + 580959171) ^ ((LODWORD(STACK[0x3FC]) ^ 0x5DC1EEB0) - 1572990640) ^ ((LODWORD(STACK[0x3FC]) ^ 0x22D27AE0) - 584219360)) - 1245663003 + (((*(v16 + 84) ^ 0xEAD8B967) + 354895513) ^ ((*(v16 + 84) ^ 0xECA7DBC8) + 324543544) ^ ((*(v16 + 84) ^ 0xA433B2C2) + 1540115774));
  *(v16 + 80) = v26 ^ 0x4529D514;
  *(v16 + 84) = v27 ^ ((v27 ^ 0x264BF995) - 1466755486) ^ ((v27 ^ 0x45D4B1A) - 1970952977) ^ ((v27 ^ 0xECEE7D7B) + 1647743632) ^ ((v27 ^ 0xBFDFDFFF) + 822554636) ^ 0xD36BC066;
  *(v4 + 264) -= 320;
  return (*(v4 + 312))();
}

uint64_t sub_10002E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 112) = &a18;
  *(v22 - 104) = a15;
  *(v22 - 120) = (v21 + 1144) ^ (((((v22 - 120) | 0xEC47E9E1) - (v22 - 120) + ((v22 - 120) & 0x13B81618)) ^ 0xB00ABD64) * v19);
  v23 = (*(v18 + 8 * (v21 ^ 0xD16)))(v22 - 120);
  return (*(v18 + 8 * (((*(v22 - 116) > (v20 + 1)) * (((v21 + 710967737) & 0xD59F7BFC) - 423)) ^ v21)))(v23);
}

uint64_t sub_10002E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25, uint64_t a26, int a27, int a28, int a29, int a30)
{
  v32 = a27 + 30860966 > a25;
  if (a25 < 0x1D6E666 != (a27 + 30860966) < 0x1D6E666)
  {
    v32 = (a27 + 30860966) < 0x1D6E666;
  }

  return (*(v30 + 8 * ((v32 * ((a30 ^ 0x3A1) + v31 - 1658)) ^ (a30 + 736))))(a1, a2, a3, a4, a5, a6, a26);
}

uint64_t sub_10002E4A4@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + v3);
  v6 = ((v4 + 461) ^ 0xFFFFFFFFFFFFF9E4) + v3;
  *(a1 + v6) = v5;
  return (*(v1 + 8 * ((569 * (v6 == 0)) ^ v4)))();
}

uint64_t sub_10002E4D8(uint64_t a1)
{
  v2 = 1785193651 * (((a1 | 0xC645374) - a1 + (a1 & 0xF39BAC8B)) ^ 0x1FB8BF54);
  v3 = *(a1 + 16) - v2;
  v4 = *(a1 + 40);
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = ((*(a1 + 52) ^ v2 ^ 0x2706DF14) - 654761748) ^ ((*(a1 + 52) ^ v2 ^ 0x545AB27A) - 1415230074) ^ ((*(a1 + 52) ^ v2 ^ 0xDE4D93C9) + 565341239);
  v8 = 1037613739 * (&v10 ^ 0xD1022D7F);
  v12 = *(a1 + 24);
  v13 = v4;
  v11 = v5;
  v16 = v6;
  v10 = v8 + 300717509 + v7;
  v14 = v8 ^ (v3 - 1421510845);
  result = (*(*(&off_100374800 + (v3 ^ 0x54BA8F61)) + v3 - 1421510178))(&v10);
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_10002E658(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) + v1;
  v5 = v4 - 574624312 + *(v3 + 68);
  *(v3 + 68) = v5;
  v4 += 1696759816;
  v6 = v4 < 0x87629240;
  v7 = v5 - 2023583168 < v4;
  if (v6 != v5 > 0x789D6DBF)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(*(&off_100374800 + v2 - 1276) + ((!v8 * (((v2 + 12) | 7) ^ 0x51C)) ^ v2) - 1))();
}

uint64_t sub_10002E758(uint64_t result)
{
  v1 = 143681137 * ((((2 * result) | 0x3AFF216F41EC697CLL) - result - 0x1D7F90B7A0F634BELL) ^ 0xACF6A203C1AEBF6ELL);
  v2 = *result ^ v1;
  v3 = *(result + 16) + v1;
  v4 = v3 == v2;
  v5 = v3 >= v2;
  v6 = !v4;
  if ((*(result + 32) + 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E)))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v4 = v7 == 0;
  v8 = 24;
  if (!v4)
  {
    v8 = 8;
  }

  *(result + 28) = (*(result + v8) - 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E)) ^ (*(result + 36) - 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E));
  return result;
}

uint64_t sub_10002E858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v21 = 1037613739 * ((2 * ((v20 - 128) & 0x10819A08) - (v20 - 128) - 276929040) ^ 0x3E7C488F);
  *(v20 - 128) = ((v16 ^ 0x7FFDBBF5) + ((v19 + 109) ^ 0xCF7FF0F4) + ((2 * v16) & 0xFFFB77EA)) ^ v21;
  *(v20 - 112) = v21 + v19 + 672;
  *(v20 - 120) = &a15;
  (*(v15 + 8 * (v19 ^ 0xC46)))(v20 - 128);
  *(v20 - 120) = &a13;
  *(v20 - 112) = a12;
  *(v20 - 128) = (v19 + 811) ^ ((((((v20 - 128) | 0x336CC072) ^ 0xFFFFFFFE) - (~(v20 - 128) | 0xCC933F8D)) ^ 0x90DE6B08) * v17);
  v22 = (*(v15 + 8 * ((v19 + 109) ^ 0xCD0)))(v20 - 128);
  return (*(v15 + 8 * (((*(v20 - 124) > v18 + ((v19 + 109) ^ 0x176u) + 156) * ((3 * ((v19 + 109) ^ 0x5B7)) ^ 0x220)) ^ (v19 + 109))))(v22);
}

uint64_t sub_10002EA44(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unsigned int a28)
{
  v29.n128_u64[0] = 0x6666666666666666;
  v29.n128_u64[1] = 0x6666666666666666;
  v30.n128_u64[0] = 0x3333333333333333;
  v30.n128_u64[1] = 0x3333333333333333;
  return (*(v28 + 8 * (((a18 ^ 0x163) * (a16 < a15)) ^ a18)))(122, a28, 1260879303, 3034086969, a8, a9, a19, 3646773176, a1, a2, a3, v29, v30);
}

uint64_t sub_10002EAF4()
{
  v0 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + dword_1003B8FD0) ^ 0x42)) ^ byte_1002D9610[byte_1002D54E0[(-39 * ((qword_1003B9018 + dword_1003B8FD0) ^ 0x42))] ^ 0xAB]) + 1);
  v1 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + *v0) ^ 0x42)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * ((qword_1003B9018 + *v0) ^ 0x42))] ^ 3]) - 111);
  v2 = &v6[*(v1 - 4) - *v0];
  v3 = 329992409 * (v2 - 0x3F921ABBB7B42942);
  v4 = 329992409 * (v2 ^ 0x3F921ABBB7B42942);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = -39 * ((v4 + *v0) ^ 0x42);
  v8 = *(&off_100374800 + (byte_1002CD8D0[byte_1002D9514[v4 - 4] ^ 3] ^ v4) - 69);
  v7 = (2066391179 * ((-1823932794 - (&v7 | 0x9348FE86) + (&v7 | 0x6CB70179)) ^ 0xC3908361)) ^ 0x1AB;
  LOBYTE(v0) = -39 * (*v0 ^ 0x42 ^ *(v1 - 4));
  return (*(*(&off_100374800 + ((-39 * (dword_1003B8FD0 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002CD9D0[byte_1002D9710[(-39 * (dword_1003B8FD0 ^ 0x42 ^ qword_1003B9018))] ^ 0x72]) - 156) + (byte_1002D9618[(byte_1002D54E4[v0 - 4] ^ 0xE8) - 8] ^ v0) + 2177))(&v7);
}

uint64_t sub_10002ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v12 - 1968855046 < a12 + 321623942;
  if ((a12 + 321623942) < 0x8AA5A7FA != v12 > 0x755A5805)
  {
    v15 = (a12 + 321623942) < 0x8AA5A7FA;
  }

  return (*(v14 + 8 * ((v15 * (v13 - 548)) ^ v13)))();
}

uint64_t sub_10002EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  STACK[0x280] = a48 + 2353;
  STACK[0x278] = v48 + 49;
  STACK[0x268] = a48 + 2333;
  STACK[0x260] = v48 + 29;
  STACK[0x258] = a48 + 2313;
  STACK[0x250] = v48 + 9;
  return sub_1000459F8();
}

void sub_10002EE38(uint64_t a1)
{
  v1 = 1388665877 * ((2 * ((a1 ^ 0x659717BC) & 0x71C3AA5B) - (a1 ^ 0x659717BC) - 1908648540) ^ 0x660620F4);
  v2 = *(a1 + 40) + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  v5 = 1388665877 * ((((2 * &v9) | 0xC696D694) - &v9 + 481596598) ^ 0x6EE609A6);
  v6 = *(a1 + 24) + v1 - v5;
  v7 = 746000883 * (*(a1 + 16) ^ v1) + 2019343471;
  v16 = *(a1 + 56);
  v13 = v3;
  v9 = v7 ^ v5;
  v15 = v5 ^ (v2 - 1776823835);
  v12 = v6 + 110033095;
  v10 = v4;
  v11 = v16;
  v8 = *(&off_100374800 + (v2 & 0x688F24E1)) - 8;
  (*&v8[8 * (v2 ^ 0xB40)])(&v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002EFD4()
{
  v3 = ((v1 - 648) | 2) + LODWORD(STACK[0x31C]) - 44417254;
  v4 = ((v1 + 904024094) & 0xCA1DAFF9 ^ 0xE3125BEF) + v0;
  v5 = (v4 < 0xFEFC3764) ^ (v3 < 0xFEFC3764);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0xFEFC3764;
  }

  return (*(v2 + 8 * ((121 * !v6) ^ v1)))();
}

uint64_t sub_10002F158(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44)
{
  v49 = v48[396] ^ ((*v48 & 0x7FFFFFFE | v48[623] & 0x80000000) >> 1);
  v48[623] = (v49 + v46 - ((2 * v49) & 0xA56C986)) ^ *(v47 + 4 * (*v48 & 1));
  return (*(v45 + 8 * ((1633 * (a44 > (((v44 - a2 + 1610283198) | 0xA0050480) ^ (a1 + 543)))) ^ v44)))();
}

uint64_t sub_10002F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char *a30, char *a31)
{
  v39 = v32 - 82;
  v40 = ((((2 * (v38 - 144)) | 0x3B7278E8) - (v38 - 144) - 498678900) ^ 0x86FECAFE) * v33;
  *(v38 - 144) = &a24;
  *(v38 - 128) = v31;
  *(v38 - 120) = (v32 + 198) ^ v40;
  *(v38 - 116) = v34 - v40 - 89210907 + v32 - 82;
  (*(v35 + 8 * (v32 ^ 0xB5B)))(v38 - 144);
  a30 = &a20;
  a31 = &a28;
  v41 = 2 * (v38 - 144);
  *(v38 - 136) = v36;
  *(v38 - 128) = &a30;
  *(v38 - 144) = v39 + 1755 - 50899313 * (((v41 | 0x22FCD024) - (v38 - 144) + 1853986798) ^ 0x8551F589);
  (*(v35 + 8 * (v39 ^ 0x8F7)))(v38 - 144);
  *(v38 - 144) = (v39 + 417) ^ (1388665877 * (((v41 | 0xAA1695A4) - (v38 - 144) - 1426803410) ^ 0xD8A6283E));
  *(v38 - 136) = v36;
  *(v38 - 128) = &a24;
  *(v38 - 120) = &a22;
  *(v38 - 112) = &a30;
  (*(v35 + 8 * (v39 ^ 0x882)))(v38 - 144);
  v42 = a31;
  *(v38 - 112) = &a22;
  *(v38 - 104) = v36;
  *(v38 - 136) = &a22;
  *(v38 - 128) = &a30;
  *(v38 - 120) = (v39 + 407) ^ (1785193651 * ((((v38 - 144) | 0xE229FB4B) - ((v38 - 144) & 0xE229FB4B)) ^ 0xF1F5176B));
  *(v38 - 144) = v42;
  (*(v35 + 8 * (v39 ^ 0x8D3)))(v38 - 144);
  *(v38 - 136) = v36;
  *(v38 - 128) = &a30;
  *(v38 - 112) = a12;
  *(v38 - 104) = &a22;
  *(v38 - 120) = &a22;
  *(v38 - 144) = v39 + 485 + 50899313 * ((v38 + 1310703642 - 2 * ((v38 - 144) & 0x4E1FC0AA)) ^ 0x5A305D31);
  (*(v35 + 8 * (v39 + 1916)))(v38 - 144);
  v43 = 50899313 * ((v38 - 144) ^ 0x142F9D9B);
  *(v38 - 144) = v39 + 1755 - v43;
  *(v38 - 136) = v37;
  *(v38 - 128) = &a30;
  (*(v35 + 8 * (v39 + 1909)))(v38 - 144);
  *(v38 - 120) = &a26;
  *(v38 - 112) = &a30;
  *(v38 - 136) = v37;
  *(v38 - 128) = &a24;
  *(v38 - 144) = (v39 + 417) ^ (1388665877 * ((-810427174 - ((v38 - 144) | 0xCFB1DCDA) + ((v38 - 144) | 0x304E2325)) ^ 0xBDE341C9));
  (*(v35 + 8 * (v39 + 1922)))(v38 - 144);
  v44 = a31;
  *(v38 - 120) = (v39 + 407) ^ (1785193651 * (((((v38 - 144) | 0x7000A4E8) ^ 0xFFFFFFFE) - (~(v38 - 144) | 0x8FFF5B17)) ^ 0x9C23B737));
  *(v38 - 136) = &a26;
  *(v38 - 128) = &a30;
  *(v38 - 144) = v44;
  *(v38 - 112) = &a26;
  *(v38 - 104) = v37;
  (*(v35 + 8 * (v39 ^ 0x8D3)))(v38 - 144);
  *(v38 - 120) = &a26;
  *(v38 - 112) = a13;
  *(v38 - 136) = v37;
  *(v38 - 128) = &a30;
  *(v38 - 104) = &a26;
  *(v38 - 144) = v39 + 485 + v43;
  (*(v35 + 8 * (v39 ^ 0x88C)))(v38 - 144);
  *(v38 - 144) = (v39 + 1793) ^ (210068311 * ((v38 - 144) ^ 0x92D63FA4));
  *(v38 - 136) = &a26;
  *(v38 - 128) = &a22;
  (*(v35 + 8 * (v39 + 1890)))(v38 - 144);
  *(v38 - 140) = v39 + 1564307779 * ((((v38 - 144) | 0xE9D0643C) - ((v38 - 144) & 0xE9D0643C)) ^ 0x7EDDA82F) - 252;
  *(v38 - 136) = &a26;
  v45 = (*(v35 + 8 * (v39 ^ 0x898)))(v38 - 144);
  return (*(v35 + 8 * ((1896 * (*(v38 - 144) < ((v39 - 383) | 0x125u) + 401430580)) ^ v39)))(v45);
}

void sub_10002F648(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1785193651 * ((-2 - ((~a1 | 0x59E8E831) + (a1 | 0xA61717CE))) ^ 0x4A340411));
  v2 = (*a1 - 77 * ((-2 - ((~a1 | 0x31) + (a1 | 0xCE))) ^ 0x11));
  v3 = *(&off_100374800 + v1 - 2028) - 8;
  (*&v3[8 * (v1 ^ 0x14E)])(*(&off_100374800 + (v1 ^ 0x82A)), sub_10001C15C);
  v4 = **(&off_100374800 + v1 - 1906);
  v5 = v1 - 210068311 * ((((2 * &v4) | 0x3F6B6D02) - &v4 - 532002433) ^ 0x8D638925) - 1960;
  (*&v3[8 * (v1 ^ 0x119)])(&v4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10002F838@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = *(v31 + 176);
  v35 = (LODWORD(STACK[0x360]) ^ 0x95F7AEED) + 1784511991 + ((2 * LODWORD(STACK[0x360])) & 0x2BEF5DDA);
  v36 = 1388665877 * ((((2 * ((v33 - 200) ^ 0x1DFAEE50)) | 0x87864A10) - ((v33 - 200) ^ 0x1DFAEE50) - 1136862472) ^ 0xD394A9B4);
  *(v33 - 160) = v29 + 1078 - v36 - 1147;
  *(v32 + 32) = &STACK[0x494];
  *(v32 + 48) = STACK[0x230];
  *(v32 + 56) = v34;
  v37 = STACK[0x238];
  *v32 = a29;
  *(v32 + 8) = v37;
  *(v32 + 20) = -102 - 21 * ((((2 * ((v33 + 56) ^ 0x50)) | 0x10) - ((v33 + 56) ^ 0x50) - 8) ^ 0xB4);
  *(v33 - 176) = (a1 ^ 0xFBBFF54E) - v36 + ((((33 * ((v29 + 1078) ^ 0x69B) - 381) | 0x110) - 1933) & (2 * a1)) + 2011398144;
  *(v33 - 184) = v35 ^ v36;
  v38 = (*(v30 + 8 * (v29 + 1816)))(v33 - 200);
  v39 = *(v33 - 172);
  LODWORD(STACK[0x4EC]) = v39;
  return (*(v30 + 8 * ((113 * (v39 != -392105736)) ^ (v29 + 1078))))(v38);
}

uint64_t sub_10002F974(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v5 < v4;
  v8 = v3 + 1;
  if (v7 == v8 > 0xFFFFFFFF21542B91)
  {
    LOBYTE(v7) = v8 + v4 < v5;
  }

  return (*(v6 + 8 * ((((v7 ^ a3) & 1) * ((a3 + 1389) ^ 0x850)) ^ a3)))();
}

uint64_t sub_10002F9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = LODWORD(STACK[0x2B8]) - 366;
  v11 = v9[49];
  v9[41] = *(v7 + 8 * (LODWORD(STACK[0x2B8]) - 314));
  v9[34] = v11;
  v9[5] = v8;
  v12 = *(v11 + 68);
  *(v11 + (v12 & 0x3F)) = -77;
  return (*(v7 + 8 * ((((v12 & 0x3Fu) > 0x37) * ((v10 - 1444310538) & 0x56166F77 ^ 0x56F ^ ((v10 + 275) | 0x204))) ^ v10)))(a1, 332, a3, a4, 392145697, 819, a7, 3902861560);
}

void sub_10002FA90(uint64_t a1)
{
  if (*(*(a1 + 16) + 4) - 763308221 >= 0)
  {
    v2 = *(*(a1 + 16) + 4) - 763308221;
  }

  else
  {
    v2 = 763308221 - *(*(a1 + 16) + 4);
  }

  v1 = *a1 + 50899313 * ((((2 * a1) | 0xDC007AA6) - a1 + 301974189) ^ 0xFA2FA0C8);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10002FC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v30 - 144) = &a25;
  *(v30 - 136) = &a15;
  *(v30 - 128) = v29;
  *(v30 - 120) = (v26 + 554) ^ (((((v30 - 144) ^ 0x7FE58CAF) - 541477290 - 2 * (((v30 - 144) ^ 0x7FE58CAF) & 0xDFB9B656)) ^ 0xB380D6D9) * v25);
  *(v30 - 112) = &a25;
  *(v30 - 104) = v28;
  v31 = (*(v27 + 8 * (v26 + 2020)))(v30 - 144);
  return (*(v27 + 8 * ((((a11 - 2054041575) > 0x7FFFFFFE) | (8 * ((a11 - 2054041575) > 0x7FFFFFFE))) ^ (v26 + 236))))(v31);
}

uint64_t sub_10002FD60()
{
  v5 = *(v4 + 24);
  v6 = 1082434553 * ((-1235475625 - ((v3 - 200) | 0xB65C2357) + ((v3 - 200) | 0x49A3DCA8)) ^ 0xD2E42A22);
  v7 = (v3 - 200);
  *(v3 - 176) = v6 + v2 + 459;
  *(v3 - 188) = v0 + v6 + ((10 * (v2 ^ 0x3C7)) ^ 0x3F6A18E);
  v7[2] = &STACK[0x4CC];
  v7[5] = &STACK[0x31C];
  v7[6] = v5;
  v7[4] = &STACK[0x3E4];
  *v7 = &STACK[0x408];
  v8 = (*(v1 + 8 * (v2 ^ 0xAF3)))(v3 - 200);
  return (*(v1 + 8 * ((2914 * (*(v3 - 192) == -392105736)) ^ v2)))(v8);
}

uint64_t sub_10002FEE0@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, unsigned int a4@<W8>)
{
  v11 = (((v7 ^ 0x5B5) - 1628) | a3) + a4 - 371;
  *(v10 + v4) = *(STACK[0x2D0] + a4);
  v12 = v9 + a4 + 576 < v5;
  if (v5 < v6 != v11 > a2)
  {
    v12 = v5 < v6;
  }

  return (*(v8 + 8 * ((v12 * a1) ^ v7 ^ 0x5B5)))();
}

uint64_t sub_10002FF44(uint64_t a1, int a2)
{
  v7 = *(v6 - 228 + v2 + 72);
  v8 = ((2 * v2) & 0xEED7D5F8) + ((a2 + v4 + 1652381716) ^ v2) + v3;
  *(a1 + v8) = (HIBYTE(v7) ^ 0xA2) - ((2 * (HIBYTE(v7) ^ 0xA2)) & 0x66) + 51;
  *(a1 + v8 + 1) = (BYTE2(v7) ^ 0x4C) - ((v7 >> 15) & 0x66) + 51;
  *(a1 + v8 + 2) = (BYTE1(v7) ^ 0xD0) - 2 * ((BYTE1(v7) ^ 0xD0) & 0x37 ^ BYTE1(v7) & 4) + 51;
  *(a1 + v8 + 3) = v7 ^ 0x5E;
  return (*(v5 + 8 * ((1136 * (v2 + 4 < *(v6 - 136))) ^ v4)))();
}

uint64_t sub_100030064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>)
{
  v10 = v4 + 32;
  v11 = (v7 ^ v10) + v3;
  v12 = *(a2 + v11 - 15);
  v13 = *(a2 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = veorq_s8(v12, a3);
  *(v14 - 31) = veorq_s8(v13, a3);
  return (*(v9 + 8 * (((v6 == v10) * v8) ^ v5)))();
}

uint64_t sub_100030168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v79 = (*(v73 + 8 * (v72 + 1560)))(*STACK[0x240], a2, a56 ^ 0x9DC70D5u, (v72 - 1576745695 + *(STACK[0x240] + 52)), &STACK[0x17C0], v75, v74, &STACK[0x17D0]);
  if (v79 == 268435459)
  {
    return (*(v73 + 8 * (((a63 - 1508) * (a72 < 3)) | (LODWORD(STACK[0x2B8]) + 1629))))(v79, v80);
  }

  if (v79)
  {
    v81 = 843532609 * ((((2 * ((v78 - 200) ^ 0x89F8EC2E)) | 0x89CCED06) - ((v78 - 200) ^ 0x89F8EC2E) + 991529341) ^ 0x1153CE28);
    v82 = STACK[0x2B8];
    *(v78 - 200) = LODWORD(STACK[0x2B8]) - v81 + 917;
    *(v78 - 184) = v79 - v81 - ((2 * v79) & 0xD141E1F0) + (a55 & 0x50D10DFF ^ 0xE8A0F003);
    v76[1] = &STACK[0x4EC];
    v83 = (*(v73 + 8 * (v82 + 1995)))(v78 - 200);
    return sub_1000227C4(v83, v75, v84, v85, 392145697, v86, v87, -392105736);
  }

  else
  {
    v89 = STACK[0x2B8];
    (*(v73 + 8 * (LODWORD(STACK[0x2B8]) ^ 0x848)))(*STACK[0x200], v75, v74);
    v90 = *(STACK[0x240] + 52);
    v91 = STACK[0x400];
    v92 = LODWORD(STACK[0x360]) ^ 0xFEEB7A7B;
    v93 = (2 * LODWORD(STACK[0x360])) & 0xFDD6F4F6;
    v94 = 1785193651 * ((((v78 - 200) | 0xBE921664) - ((v78 - 200) & 0xBE921664)) ^ 0xAD4EFA44);
    v76[3] = v77;
    v76[5] = &STACK[0x17D0];
    *(v78 - 148) = v94 + v92 + v93 + 1702821816;
    *(v78 - 168) = v89 - v94 - 334;
    v76[1] = v91;
    *(v78 - 184) = (((v89 + 251) ^ 0x3D28F6D6) * (((a56 & 0x7FFFFFFF ^ 0x215AA660) - 1201341198) ^ ((a56 & 0x7FFFFFFF ^ 0x286F4CC5) - 1320085931) ^ ((a56 & 0x7FFFFFFF ^ 0x80E99A70) + 433570018)) + 1035198990) ^ v94;
    *(v78 - 200) = v94 + 1026094265 * v90 + 588743048;
    v95 = (*(v73 + 8 * (v89 + 1983)))(v78 - 200);
    v96 = *(v78 - 152);
    LODWORD(STACK[0x4EC]) = v96;
    return (*(v73 + 8 * ((4015 * (v96 == -392105736)) ^ (v89 + 1674))))(v95);
  }
}

void sub_10003022C()
{
  v0 = *(&off_100374800 + ((-39 * ((qword_1003B9018 - dword_1003B9080) ^ 0x42)) ^ byte_1002D9610[byte_1002D54E0[(-39 * ((qword_1003B9018 - dword_1003B9080) ^ 0x42))] ^ 0x7D]) - 7);
  v1 = *(v0 - 4);
  v2 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + v1) ^ 0x42)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * ((qword_1003B9018 + v1) ^ 0x42))] ^ 0x89]) - 64);
  v3 = &v9[v1 + *(v2 - 4)];
  v4 = 329992409 * (v3 - 0x3F921ABBB7B42942);
  v5 = 329992409 * (v3 ^ 0x3F921ABBB7B42942);
  *(v0 - 4) = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = -39 * ((v5 + *(v0 - 4)) ^ 0x42);
  **(&off_100374800 + (byte_1002CD8D0[byte_1002D9514[v5 - 4] ^ 0x33] ^ v5) - 128) = -392105736;
  v6 = *(&off_100374800 + ((-39 * ((qword_1003B9018 - dword_1003B9080) ^ 0x42)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * ((qword_1003B9018 - dword_1003B9080) ^ 0x42))] ^ 3]) - 102) - 8;
  v7 = (*&v6[8 * (byte_1002D2464[(byte_1002CDAD0[(-39 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x42))] ^ 0xB) - 4] ^ (-39 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x42))) + 17912])(512, 0x100004077774924);
  v8 = -39 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x42);
  *(*(&off_100374800 + (byte_1002D9618[(byte_1002D54E4[v8 - 4] ^ 0xAB) - 8] ^ v8) - 59) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000304F4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x9AC));

  return v3(v1);
}

uint64_t sub_100030658@<X0>(int a1@<W0>, char a2@<W7>, unsigned int a3@<W8>)
{
  v14 = (v12 + 4 * v7);
  v15 = HIDWORD(v10) + (*v14 ^ a3) + HIDWORD(v6) + v9 * (*(v5 + 4 * v7) ^ a3);
  *(v14 - 1) = v15 + a3 - ((v15 << ((a2 & v11) - 83)) & a1);
  return (*(v8 + 8 * (((v7 + 1 == v3) * v13) ^ (v4 - 879))))();
}

uint64_t sub_1000306C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = (v15 + 834) ^ (((((v19 - 128) | 0xD8B7753B) - ((v19 - 128) & 0xD8B7753B)) ^ 0x84FA21BE) * v17);
  *(v19 - 120) = &a15;
  *(v19 - 112) = a12;
  v20 = (*(v16 + 8 * (v15 + 980)))(v19 - 128);
  return (*(v16 + 8 * (((*(v19 - 124) <= (v15 + 23 + v18)) * (((v15 + 124) | 8) ^ 0x5D7)) ^ v15)))(v20);
}

uint64_t sub_100030790()
{
  v8 = ((v2 & 0xB602E554 | ~(v2 | 0xB602E554)) ^ 0xC4507847) * v0;
  *(v7 - 184) = v8 + v4 + 85;
  *(v7 - 180) = v8 + 452683664;
  *v6 = &STACK[0x310];
  v6[1] = &STACK[0x2E0];
  v6[4] = 0;
  v9 = (*(v3 + 8 * (v4 ^ 0x91A)))(v7 - 200);
  return (*(v3 + 8 * (((*(v7 - 176) == v5) * ((v1 ^ 0x1D) + v1)) ^ v4)))(v9);
}

uint64_t sub_10003083C(uint64_t a1, uint64_t a2)
{
  *(a2 + v3 - 1) = (v2 + 1 + v6) * ((v2 + 1) ^ v5);
  v8 = *(v7 + 8 * (v4 | (8 * (v3 != 1))));
  return v8(v8, a2);
}

uint64_t sub_100030920(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *(v6 + v4 * a3 + 36);
  v10 = v8 - 367828238 > (((v3 - 531) | 0x62) ^ 0xC757A9C5 ^ (3 * (v3 ^ 0x2CA))) && v8 - 367828238 < SLODWORD(STACK[0x280]) && v8 != v5;
  return (*(v7 + 8 * (((2 * v10) | (8 * v10)) ^ v3)))();
}

uint64_t sub_1000309CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x330] = -v61;
  v63 = STACK[0x2E8];
  *(v62 + 264) = a9 - 112;
  return v63(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_1000309F4@<X0>(int a1@<W1>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  HIDWORD(a10) = HIDWORD(a7) + 1102383545;
  v28.i64[0] = 0x3333333333333333;
  v28.i64[1] = 0x3333333333333333;
  return sub_100053518(a1, 0xFFFFFFFFLL, 1354, 1981, a2, a3, v28, vdupq_n_s32(0x68A0F0FFu), vdupq_n_s32(0xE8A0F0F8), a4, a5, a6, a7, a8, a9, a10, a11, v27 - 16, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_100031038@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((105 * (((v5 - v3 - 64) ^ (v7 == 0)) & 1)) ^ (a2 + v5 + 939))))();
}

_DWORD *sub_1000310B8@<X0>(_DWORD *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((((a2 - 1457) | 0x70A) ^ (v3 - 1706)) + v5 >= 0x7FFFFFFF)
  {
    v7 = -v6;
  }

  else
  {
    v7 = v4;
  }

  *(a3 + 4) = v7;
  *result = 716585411;
  return result;
}

uint64_t sub_1000310FC@<X0>(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3 = (v8 - 1013) ^ (843532609 * ((((2 * &a3) | 0xF712FB22) - &a3 + 74875503) ^ 0xA7C42914));
  a5 = v7;
  a6 = v7;
  a4 = a1;
  v9 = (*(v6 + 8 * (v8 + 1049)))(&a3);
  return sub_100031160(v9);
}

uint64_t sub_1000311F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9 = v4 + 32;
  v10 = (((v3 + 717) - 1208) ^ v9) + v2;
  v11 = *(a1 + v10 - 15);
  v12 = *(a1 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * v7) ^ v6)))();
}

uint64_t sub_100031204@<X0>(uint64_t a1@<X1>, unsigned int a2@<W3>, unsigned int a3@<W4>, uint64_t a4@<X6>, int a5@<W7>, unsigned int a6@<W8>)
{
  v15 = (v10 + 4 * a4);
  v16 = (*v15 ^ a6) + (v9 ^ HIDWORD(v12)) + a3 * (*(a1 + 4 * a4) ^ a6);
  *(v15 - 1) = ((a2 ^ a5) + v7 + v16 - (v8 & (2 * v16))) ^ v11;
  return (*(v13 + 8 * (((a4 + 1 == v6) * v14) ^ a2)))();
}

uint64_t sub_100031264(uint64_t a1, char a2)
{
  v7 = *(v6 - 228 + v2 + 72);
  v8 = ((v2 << ((v4 - 57) & 0xB5 ^ (a2 + 1))) & 0x66D7EF38) + (v2 ^ 0xB36BF79E) + v3;
  *(a1 + v8) = v7 ^ 0x5E;
  *(a1 + v8 + 1) = (BYTE1(v7) ^ 0xD0) - 2 * ((BYTE1(v7) ^ 0xD0) & 0x37 ^ BYTE1(v7) & 4) + 51;
  *(a1 + v8 + 2) = (BYTE2(v7) ^ 0x4C) - ((v7 >> 15) & 0x66) + 51;
  *(a1 + v8 + 3) = (HIBYTE(v7) ^ 0xA2) - 2 * ((HIBYTE(v7) ^ 0xA2) & 0xBB ^ HIBYTE(v7) & 8) + 51;
  return (*(v5 + 8 * ((117 * (v2 + 4 < *(v6 - 136))) ^ v4)))();
}

uint64_t sub_1000313B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = (*(v15 + 4 * v14) ^ v6) + v8 + a5 * (*(*(v9 + 8) + 4 * a3) ^ v6);
  *(v15 + 4 * v14) = v16 + v6 - (v7 & (2 * v16));
  return (*(v5 + 8 * (((a3 + 7 * (((v13 - 1560) | v10) ^ v11) - 1336 == a2) * v12) ^ ((v13 - 1560) | v10))))();
}

uint64_t sub_1000313C0()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 5) ^ 0x33;
  return (*(v6 + 8 * ((1437 * (v7 == 0)) ^ (v4 - 87))))();
}

uint64_t sub_100031420@<X0>(int a1@<W2>, int a2@<W8>)
{
  if (v2 <= 0x10 && ((1 << v2) & 0x18105) != 0)
  {
    return sub_1000517B0(a1, a2);
  }

  else
  {
    return sub_10003144C(a1, a2);
  }
}

void sub_100031488(uint64_t a1)
{
  v1 = *(a1 + 16) - 50899313 * ((2 * (a1 & 0x166522FE) - a1 - 375726847) ^ 0xFDB5409A);
  if (*(*(a1 + 8) + 4) - 763308221 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 763308221;
  }

  else
  {
    v2 = 763308221 - *(*(a1 + 8) + 4);
  }

  if (*(*a1 + 4) - 763308221 >= 0)
  {
    v3 = *(*a1 + 4) - 763308221;
  }

  else
  {
    v3 = 763308221 - *(*a1 + 4);
  }

  v7 = *(a1 + 8);
  v6[1] = v1 + 1564307779 * (((v6 | 0xB0C26D00) - (v6 & 0xB0C26D00)) ^ 0x27CFA113) - 1693;
  v4 = *(&off_100374800 + (v1 & 0x1AF46031)) - 8;
  (*&v4[8 * v1 + 3896])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_1000315EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v30 = (v26 - 276) | 0x38C;
  *(v29 - 144) = (v26 + 981) ^ (1037613739 * ((v29 - 144) ^ 0xD1022D7F));
  *(v29 - 136) = &a24;
  *(v29 - 128) = a11;
  *(v29 - 120) = &a24;
  *(v29 - 112) = a12;
  (*(v27 + 8 * (v26 ^ 0x83C)))(v29 - 144);
  *(v29 - 120) = (v26 + 554) ^ (1785193651 * ((-1516203329 - ((v29 - 144) | 0xA5A092BF) + ((v29 - 144) | 0x5A5F6D40)) ^ 0x49838160));
  *(v29 - 112) = &a24;
  *(v29 - 104) = a11;
  *(v29 - 136) = &a26;
  *(v29 - 128) = a12;
  *(v29 - 144) = &a24;
  v31 = (*(v27 + 8 * (v26 ^ 0x82C)))(v29 - 144);
  v32 = (v30 ^ 0xFFFFFC50) + v28 - 2054041575 > 0x7FFFFFFE;
  return (*(v27 + 8 * ((v32 | (8 * v32)) ^ (v30 - 396))))(v31);
}

uint64_t sub_100031720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v24 = (2 * v18) ^ 0x3F6;
  v25 = 1037613739 * ((((v23 - 120) | 0x9481681D) + (~(v23 - 120) | 0x6B7E97E2)) ^ 0x45834563);
  *(v23 - 112) = &a18;
  *(v23 - 120) = ((v19 ^ 0xDFFFFDBF) + 1870508914 + (((2 * v18) ^ 0xBFFFFBD6) & (2 * v19))) ^ v25;
  *(v23 - 104) = v25 + v18 + 1959;
  (*(v20 + 8 * (v18 ^ 0x949)))(v23 - 120);
  *(v23 - 112) = &a16;
  *(v23 - 104) = a15;
  *(v23 - 120) = (v24 + 1320) ^ (((((v23 - 120) | 0xCEEDB92B) - (v23 - 120) + ((v23 - 120) & 0x311246D0)) ^ 0x92A0EDAE) * v21);
  v26 = (*(v20 + 8 * (v24 + 1466)))(v23 - 120);
  return (*(v20 + 8 * (((*(v23 - 116) > ((v24 + 584915073) & 0xDD22E77F ^ (v22 + 691))) * (v24 - 651)) ^ v24)))(v26);
}

uint64_t sub_100031878(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = (((a1 ^ 0xE5D7E74E) + 438835378) ^ ((a1 ^ 0xC9A826B) - 211452523) ^ ((a1 ^ 0x4B01B548) - 1258403144)) + 1520378963 + (((v37 ^ 0x7765112B) - 2003112235) ^ ((v37 ^ 0xCD04BBE8) + 855327768) ^ (((a2 + 405633421) ^ v37) - 405633710));
  v39 = (v38 ^ 0xC9FB7E07) & (2 * (v38 & 0xE9FA7C87)) ^ v38 & 0xE9FA7C87;
  v40 = ((2 * (v38 ^ 0x4B0BCF07)) ^ 0x45E36700) & (v38 ^ 0x4B0BCF07) ^ (2 * (v38 ^ 0x4B0BCF07)) & 0xA2F1B380;
  v41 = v40 ^ 0xA2109080;
  v42 = (v40 ^ 0xE12200) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0x8BC6CE00) & v41 ^ (4 * v41) & 0xA2F1B380;
  v44 = (v43 ^ 0x82C08200) & (16 * v42) ^ v42 ^ 0xA2F1B380 ^ (((16 * (v43 ^ 0x20313180)) ^ 0x2F1B3800) & (v43 ^ 0x20313180) ^ (16 * (v43 ^ 0x20313180)) & 0xA2F1B380 ^ 0x22113000) & (((v43 ^ 0x82C08200) & (16 * v42) ^ v42) << 8);
  return sub_100031A74((v44 << 16) & 0x22F10000, (v44 << 16) ^ 0x33800000, 586219520, 51, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_100031A74@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, unsigned int a45, unsigned int a46)
{
  v52 = (((v48 ^ 0x7C6D46F) - 130471023) ^ ((v48 ^ 0xCF50198C) + 816834164) ^ ((v48 ^ 0x6ADA1D8E) - 1792679310)) + (((v51 ^ 0x8DEDF979) + 1913783943) ^ ((v51 ^ 0x88095B6C) + 2012652692) ^ ((v51 ^ 0xA7A87278) + 1482132872)) - 1915271713;
  v53 = (v52 ^ 0xB4C918FA) & (2 * (v52 & 0xB6C25AFB)) ^ v52 & 0xB6C25AFB;
  v54 = ((2 * (v52 ^ 0xF4C92878)) ^ 0x8416E506) & (v52 ^ 0xF4C92878) ^ (2 * (v52 ^ 0xF4C92878)) & 0x420B7282;
  v55 = v54 ^ 0x42091281;
  v56 = (v54 ^ 0x26000) & (4 * v53) ^ v53;
  v57 = ((4 * v55) ^ 0x82DCA0C) & v55 ^ (4 * v55) & 0x420B7280;
  v58 = (v57 ^ 0x94200) & (16 * v56) ^ v56;
  v59 = ((16 * (v57 ^ 0x42023083)) ^ 0x20B72830) & (v57 ^ 0x42023083) ^ (16 * (v57 ^ 0x42023083)) & 0x420B7280;
  v60 = v58 ^ 0x420B7283 ^ (v59 ^ 0x32000) & (v58 << 8);
  v61 = v52 ^ (2 * ((v60 << 16) & 0x420B0000 ^ v60 ^ ((v60 << 16) ^ 0x72830000) & (((v59 ^ 0x42085283) << 8) & 0x420B0000 ^ 0x40090000 ^ (((v59 ^ 0x42085283) << 8) ^ 0xB720000) & (v59 ^ 0x42085283))));
  v62 = (((v49 ^ 0x4CBA94AD) - 1287296173) ^ ((v49 ^ 0xC0B7A81E) + 1061705698) ^ ((v49 ^ 0x2E41ECDE) - 776072414)) + (((v50 ^ 0x4A011EE7) - 1241587431) ^ ((v50 ^ 0xD3F4BFA9) + 738934871) ^ ((v50 ^ 0x3BB97123) - 1002008867)) - 1357012835;
  v63 = (v62 ^ 0x47F49B8) & (2 * (v62 & 0x957C003D)) ^ v62 & 0x957C003D;
  v64 = ((2 * (v62 ^ 0x2EEF49AA)) ^ 0x7726932E) & (v62 ^ 0x2EEF49AA) ^ (2 * (v62 ^ 0x2EEF49AA)) & 0xBB934996;
  v65 = v64 ^ 0x88914891;
  v66 = (v64 ^ 0x33000104) & (4 * v63) ^ v63;
  v67 = ((4 * v65) ^ 0xEE4D265C) & v65 ^ (4 * v65) & 0xBB934994;
  v68 = (v67 ^ 0xAA010010) & (16 * v66) ^ v66;
  v69 = ((16 * (v67 ^ 0x11924983)) ^ 0xB9349970) & (v67 ^ 0x11924983) ^ (16 * (v67 ^ 0x11924983)) & 0xBB934990;
  v70 = v68 ^ 0xBB934997 ^ (v69 ^ 0xB9100900) & (v68 << 8);
  a43 = v61 ^ 0x149E6F90;
  a44 = v62 ^ (2 * ((v70 << 16) & 0x3B930000 ^ v70 ^ ((v70 << 16) ^ 0x49970000) & (((v69 ^ 0x2834087) << 8) & 0x3B930000 ^ 0x28920000 ^ (((v69 ^ 0x2834087) << 8) ^ 0x13490000) & (v69 ^ 0x2834087)))) ^ 0x5330437E;
  v71 = (((v47 ^ 0xB5384D09) + 1254601463) ^ ((v47 ^ 0x297A71C0) - 695890368) ^ ((v47 ^ 0x3E0EECA4) - 1041165476)) + (((a45 ^ 0x63531268) - 1666388584) ^ ((a45 ^ 0x210F9238) - 554668600) ^ ((a45 ^ 0xE010503D) + 535801795)) - 1057991000;
  v72 = (v71 ^ 0xAB250832) & (2 * (v71 & 0x83A94A32)) ^ v71 & 0x83A94A32;
  v73 = ((2 * (v71 ^ 0xAB259856)) ^ 0x5119A4C8) & (v71 ^ 0xAB259856) ^ (2 * (v71 ^ 0xAB259856)) & 0x288CD264;
  v74 = v73 ^ 0x28845224;
  v75 = (v73 ^ 0x80040) & (4 * v72) ^ v72;
  v76 = ((4 * v74) ^ 0xA2334990) & v74 ^ (4 * v74) & 0x288CD264;
  v77 = (v76 ^ 0x20004000) & (16 * v75) ^ v75;
  v78 = ((16 * (v76 ^ 0x88C9264)) ^ 0x88CD2640) & (v76 ^ 0x88C9264) ^ (16 * (v76 ^ 0x88C9264)) & 0x288CD260;
  v79 = v77 ^ 0x288CD264 ^ (v78 ^ 0x88C0200) & (v77 << 8);
  v80 = (((v46 ^ 0x2CB70872) - 750192754) ^ ((v46 ^ 0x52D3F5EA) - 1389622762) ^ ((v46 ^ 0xDC282DF5) + 601346571)) + (((a46 ^ 0x8D97B4A) - 148470602) ^ ((a46 ^ 0x29F28665) - 703759973) ^ ((a46 ^ 0x83672D42) + 2090390206)) + 1222775943;
  a45 = v71 ^ (2 * ((v79 << 16) & 0x288C0000 ^ v79 ^ ((v79 << 16) ^ 0x52640000) & (((v78 ^ 0x2000D024) << 8) & 0x288C0000 ^ 0x200C0000 ^ (((v78 ^ 0x2000D024) << 8) ^ 0x8CD20000) & (v78 ^ 0x2000D024)))) ^ 0x70F43E97;
  a46 = v80 ^ ((v80 ^ 0x87092BA0) + 2092869619) ^ ((v80 ^ 0x12CDA4D) - 90483168) ^ ((v80 ^ 0x798A5DFF) - 2109877842) ^ ((v80 ^ 0xFBE7DFBF) + 5264366) ^ 0xA604A3C0;
  return a7(999489536, &a33 + 4, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1000321A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v10 = ((((a4 - 694) ^ 0x2ED57FBD) + (a7 ^ 0xD12A8191)) ^ ((a7 ^ 0xD1B4CC36) + 776680394) ^ ((a7 ^ ((a4 - 694) | 0x21) ^ 0xF9D833D6) + 103271899)) + v9;
  v11 = (((a5 ^ 0xBCD1B03D) + 1127108547) ^ ((a5 ^ 0x33FDF187) - 872280455) ^ ((a5 ^ 0x766A3E38) - 1986674232)) + v9;
  v12 = (v11 < v8) ^ (v10 < v8);
  v13 = v10 < v11;
  if (v12)
  {
    v13 = v11 < v8;
  }

  return (*(v7 + 8 * (v13 | (v13 << 9) | a4)))();
}

uint64_t sub_1000322A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v22 - 120) = ((v21 ^ 0x14) + 1370) ^ (210068311 * ((v18 - ((v22 - 120) | v18) + ((v22 - 120) | 0x6D1984F0)) ^ 0xFFCFBB54));
  *(v22 - 112) = &a16;
  *(v22 - 104) = &a18;
  v23 = (*(v19 + 8 * (v21 ^ 0xA4F)))(v22 - 120);
  return (*(v19 + 8 * (((((v21 ^ 0x14) - 723) ^ v21 ^ 0x76A) * (v20 == 1)) ^ v21 ^ 0x14)))(v23);
}

uint64_t sub_100032420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  *(STACK[0x240] + 360) = v61;
  v68 = (*(v63 + 8 * (v60 + 2043)))(v64, 2, &STACK[0x2E4], v66, (v62 - 468311845), a6, &STACK[0x2D8], &STACK[0x2C8]);
  if (v68 == 268435459)
  {
    LODWORD(STACK[0x43C]) = 392145856;
    return (*(v63 + 8 * (((STACK[0x2D8] != 0) * (303 * (LODWORD(STACK[0x2B8]) ^ 0x172) + ((LODWORD(STACK[0x2B8]) + 322) ^ 0xFFFFFBAE))) ^ (LODWORD(STACK[0x2B8]) + 411))))(v68, STACK[0x2D8], v70, v71);
  }

  else if (v68)
  {
    v76 = 843532609 * ((v67 - 1949201509 - 2 * ((v67 - 200) & 0x8BD18C63)) ^ 0xD79CD8E6);
    v77 = STACK[0x2B8];
    *(v67 - 184) = -392105736 - v76 + v68 - ((2 * v68) & 0xD141E1F0);
    *(v67 - 200) = v77 - v76 + 917;
    *(v67 - 192) = &STACK[0x43C];
    v78 = (*(v63 + 8 * (v77 ^ 0x84B)))(v67 - 200);
    return (*(v63 + 8 * (((STACK[0x2D8] != 0) * (303 * (v77 ^ 0x172) + ((v77 + 322) ^ 0xFFFFFBAE))) ^ (v77 + 411))))(v78);
  }

  else
  {
    STACK[0x210] = STACK[0x2D8];
    LODWORD(STACK[0x208]) = STACK[0x2C8];
    v79 = STACK[0x458];
    v72 = ((a45 & 0xD33FBFEE) + 388961317) & 0xE8D0EBD4;
    LODWORD(STACK[0x2BC]) = 1209584515;
    v73 = &STACK[0x540] + v79;
    STACK[0x458] = v79 + 1712;
    *v73 = 0x6370646600;
    v73[8] = 1;
    STACK[0x278] = STACK[0x4D0];
    STACK[0x248] = &STACK[0x540] + v79 + 9;
    v74 = *(v63 + 8 * (((((31 * (v72 ^ 0x388)) ^ 0x154) == 32) * ((v72 - 16) ^ 0x357)) ^ v72));
    STACK[0x288] = *(v65 + 8 * (v72 - 849)) - 4;
    STACK[0x280] = *(v65 + 8 * (v72 - 881));
    return v74(v68, v69, v70, v71, 392145697, &STACK[0x540] + v79 + 9, 2730212021, 3902861560, &STACK[0x35C], &STACK[0x364], &STACK[0x318], &STACK[0x344], a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a48 + 2176, a48 + 2304, a42, a43, a44, a45, &STACK[0x540] + v79 + 128, a47, a48, &STACK[0x540] + v79, a50, a51, a52, a53, a54, a55, a56, a57, a58, v79, a60);
  }
}

void sub_10003274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int *a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v43 = (v41 + 1387412315);
  v44 = (a35 + 4 * v39);
  v45 = *v44;
  LODWORD(v44) = -1908612391 * ((*(*v40 + (*a36 & 0xFFFFFFFFBCDB3F98)) ^ v44) & 0x7FFFFFFF);
  LODWORD(v44) = v44 ^ (v44 >> 16);
  v46 = 4 * ((-1908612391 * v44) >> 24);
  *(a39 + 4 * v39) ^= (v41 + 1387412313) ^ v45 ^ ((-((~v43 + v39) ^ (v42 - v43)) | (~v43 + v39)) >> 63) ^ *(*(&off_100374800 + (v41 ^ (v41 - 143))) + v46) ^ *(*(&off_100374800 + (v41 ^ (v41 + 75))) + v46) ^ *(*(&off_100374800 + v41 + 1387412495) + v46 - 12) ^ (-489095168 * v44) ^ (-1908612391 * v44) ^ (851697649 * ((-1908612391 * v44) >> 24));
  JUMPOUT(0x100032848);
}

uint64_t sub_100032968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v44 = 1785193651 * ((v43 - 200) ^ 0x13DCEC20);
  v41[2] = v42;
  *(v43 - 176) = 873071476 - v44;
  *(v43 - 136) = (v40 - 374) ^ v44;
  *v41 = &STACK[0x4A4];
  v41[6] = 0;
  v41[7] = a39;
  v41[4] = a15;
  v41[5] = 0;
  v45 = (*(v39 + 8 * (v40 + 1685)))(v43 - 200);
  v46 = *(v43 - 192);
  LODWORD(STACK[0x514]) = v46;
  return (*(v39 + 8 * (((v46 == -392105736) * (((v40 - 1356895471) & 0x50E0937D) + 926)) | v40)))(v45);
}

uint64_t sub_100032A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v6 + 272);
  v8 = *(v7 + 96);
  if (v8 == 2)
  {
    return (*(v5 + 8 * (((*(v7 + 92) == 0) * (((LODWORD(STACK[0x2B8]) + 716) | 5) ^ 0x45D)) ^ (LODWORD(STACK[0x2B8]) - 204))))(186, 94, 4294967202, 4294967248, a5, 55);
  }

  if (v8 == 1)
  {
    return (*(v5 + 8 * ((30 * (*(v7 + 92) != ((LODWORD(STACK[0x2B8]) + 1161) ^ 0x5FD))) ^ (LODWORD(STACK[0x2B8]) + 1271))))(186, 94, 4294967202, 4294967248, a5, 55);
  }

  v10 = LODWORD(STACK[0x2B8]) - 88;
  *(v6 + 104) = 91;
  *(v7 + 91) = (&STACK[0x3B8] ^ 0xBA) * (&STACK[0x3B8] + 17);
  return (*(v5 + 8 * ((83 * (*(v6 + 104) == 0)) ^ v10)))(186, 94, 4294967202, 4294967248, a5, 55);
}

uint64_t sub_100032B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = v13 - 708304281 < a13 + 1582174707;
  if (a13 + 1582174707 < ((v14 + 1658716326) & 0x9D21FB2D) - 708304326 != v13 > 0x2A37DD98)
  {
    v16 = a13 + 1582174707 < ((v14 + 1658716326) & 0x9D21FB2D) - 708304326;
  }

  return (*(v15 + 8 * ((59 * !v16) ^ v14)))();
}

void sub_100032C1C(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) - 763308221;
  if (v2 < 0)
  {
    v2 = 763308221 - *(*(a1 + 16) + 4);
  }

  v1 = *a1 ^ (1388665877 * ((113357547 - (a1 | 0x6C1B2EB) + (a1 | 0xF93E4D14)) ^ 0x74932FF8));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100032E2C@<X0>(unsigned int a1@<W8>, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v10 = ((((a1 - 675463276) ^ a9) + 675461164) ^ ((a9 ^ 0x76121D66) - 1980898662) ^ (22 * (a1 ^ 0x86F) + (a9 ^ 0x490FAA4A) - 1225764436)) - 565962688;
  v11 = v10 < 0xF5A32748;
  v12 = v10 > a3 - 173856952;
  if (a3 > 0xA5CD8B7 != v11)
  {
    v12 = v11;
  }

  return (*(v9 + 8 * ((28 * v12) ^ a1)))();
}

uint64_t sub_100032F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v33 = 143681137 * ((((v32 - 144) | 0xF3059700) - ((v32 - 144) & 0xF3059700)) ^ 0x925D1CD0);
  *(v32 - 128) = v33 + v31 + 438;
  *(v32 - 136) = &a28;
  *(v32 - 144) = v33 ^ 0x46F03C83;
  (*(v28 + 8 * (v31 ^ 0xD13)))(v32 - 144);
  *(v32 - 120) = (v31 - 254) ^ (1785193651 * ((-1066459642 - ((v32 - 144) | 0xC06F1E06) + ((v32 - 144) | 0x3F90E1F9)) ^ 0x2C4C0DD9));
  *(v32 - 136) = &a28;
  *(v32 - 128) = v30;
  *(v32 - 112) = &a24;
  *(v32 - 104) = v29;
  *(v32 - 144) = &a24;
  (*(v28 + 8 * (v31 + 1212)))(v32 - 144);
  return sub_1000544AC();
}

uint64_t sub_100032FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v9 = *(a4 + a6 - 16);
  *(a3 + a6) = *(a4 + a6);
  *(a3 + a6 - 16) = v9;
  return (*(v6 + 8 * (((v8 == a6) * a5) ^ v7)))();
}

uint64_t sub_10003343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  LODWORD(STACK[0x2BC]) = 1209584283;
  LODWORD(STACK[0x2CC]) = 128;
  v54 = ((-530783563 - ((v53 - 200) | 0xE05CE2B5) + ((v53 - 200) | 0x1FA31D4A)) ^ 0xC7FF16A) * v52;
  v51[3] = &STACK[0x2CC];
  v51[5] = a49 + 928;
  v51[6] = a40;
  v51[7] = 0;
  v51[1] = 0;
  v51[8] = a49 + 656;
  v51[9] = a49;
  *(v53 - 184) = 1652706183 - v54;
  *(v53 - 168) = (v49 + 1725) ^ v54;
  v55 = (*(v50 + 8 * (v49 ^ 0x932)))(v53 - 200);
  return (*(v50 + 8 * (((*(v53 - 200) != -392105736) * ((23 * (v49 ^ 0x58) + 800399078) & 0xD04ADF7F ^ 0x1C2)) ^ v49)))(v55);
}

uint64_t sub_100033694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = (v17 + 267) ^ (210068311 * ((~((v20 - 136) | 0xF9FF998A) + ((v20 - 136) & 0xF9FF998A)) ^ 0x94D659D1));
  *(v20 - 128) = a15;
  *(v20 - 120) = &a17;
  v21 = (*(v19 + 8 * (v17 ^ 0xE94)))(v20 - 136);
  return (*(v19 + 8 * (((((v18 == 1) ^ (v17 + 24)) & 1) * ((v17 - 1258) ^ 0x2B8)) ^ v17)))(v21);
}

uint64_t sub_1000338BC@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v6 + v8) = *(v2 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v3 + (v8 & 0xF)) ^ (117 * (v8 & 0xF)) ^ *(v4 + (v8 & 0xF));
  return (*(v7 + 8 * ((186 * (v8 == (((a1 - 641) | 0x530u) ^ 0x571))) ^ (a1 + 351))))();
}

uint64_t sub_10003397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 144) = &a11;
  *(v18 - 136) = &a13;
  *(v18 - 120) = (v17 - 321) ^ (1785193651 * ((((v18 - 144) | 0xB7E6470C) - ((v18 - 144) & 0xB7E6470C)) ^ 0xA43AAB2C));
  *(v18 - 112) = &a11;
  *(v18 - 104) = v14;
  *(v18 - 128) = v13;
  v19 = (*(v15 + 8 * (v17 ^ 0xDBBu)))(v18 - 144);
  return (*(v15 + 8 * ((161 * ((((v17 - 1179) | 0x491) ^ 0x8591D48F) + v16 < 0x7FFFFFFF)) ^ (v17 + 149))))(v19);
}

void sub_100033F28(uint64_t a1)
{
  v1 = *(a1 + 64) ^ (1785193651 * ((((2 * a1) | 0x96D81652) - a1 + 882111703) ^ 0xD8B0E709));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100034030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, char a19)
{
  a17 = v19 + 659973983 + ((v21 + 197) | 0x300) - 964;
  *(v22 - 104) = &a19;
  *(v22 - 120) = a15;
  *(v22 - 112) = (v21 + 409) ^ (1785193651 * ((-132549561 - ((v22 - 120) | 0xF8197447) + ((v22 - 120) | 0x7E68BB8)) ^ 0x143A6798));
  (*(v20 + 8 * (v21 + 1494)))(v22 - 120);
  *(v22 - 112) = &a16;
  *(v22 - 104) = a15;
  *(v22 - 120) = (v21 + 1320) ^ (843532609 * ((2 * ((v22 - 120) & 0x31849768) - (v22 - 120) - 830773097) ^ 0x92363C12));
  v23 = (*(v20 + 8 * (v21 + 1466)))(v22 - 120);
  return (*(v20 + 8 * ((211 * (*(v22 - 116) > 0x26799476u)) ^ v21)))(v23);
}

uint64_t sub_1000341B8@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v15 = v11 + a3 + a1;
  *(v14 + 4 * a4) = v4 + 1 + (((v15 ^ (v15 >> 30) ^ v5) + v6) ^ ((v15 ^ (v15 >> 30) ^ v7) + v8) ^ ((v15 ^ (v15 >> 30) ^ v9) + v10)) * a2;
  return (*(v13 + 8 * ((62 * (a4 > 0x26E)) ^ v12)))();
}

uint64_t sub_10003420C(uint64_t a1)
{
  v2 = 1564307779 * ((1158644730 - (a1 | 0x450F83FA) + (a1 | 0xBAF07C05)) ^ 0x2DFDB016);
  v3 = *(a1 + 32);
  v4 = *a1;
  v5 = 1953476099 * (*(a1 + 16) + v2) - 83663303;
  v6 = ((v5 ^ 0xCE89AA9D) & (2 * (v5 & 0x902A2829)) | v5 & 0x902A2829) ^ ((16 * (((v5 & 0x902A2829) >> 3) & 1)) | 0xE200204);
  v7 = (2 * (v5 ^ 0xCE89AA9D)) & 0x5EA382B4 ^ 0x42A08294 ^ ((2 * (v5 ^ 0xCE89AA9D)) ^ 0xBD470568) & (v5 ^ 0xCE89AA9D);
  v8 = (4 * v6) & 0x5EA382B4 ^ v6 ^ ((4 * v6) ^ 0x38800810) & v7;
  v9 = (4 * v7) & 0x5EA382B4 ^ 0x4218024 ^ ((4 * v7) ^ 0x7A8E0AD0) & v7;
  v10 = (16 * v8) & 0x5EA382B0 ^ v8 ^ ((16 * v8) ^ 0x6A002140) & v9;
  v11 = (16 * v9) & 0x5EA382B0 ^ 0x148380B4 ^ ((16 * v9) ^ 0xEA382B40) & v9;
  v12 = v10 ^ (v10 << 8) & 0x5EA38200 ^ ((v10 << 8) ^ 0xA0021400) & v11 ^ 0x20180A0;
  v13 = v5 ^ (2 * ((v12 << 16) & 0x5EA30000 ^ v12 ^ ((v12 << 16) ^ 0x2B40000) & ((v11 << 8) & 0x5EA30000 ^ 0x5C210000 ^ ((v11 << 8) ^ 0x23820000) & v11))) ^ 0x21F15D94;
  v14 = *(a1 + 12) + 2013066572 + v2;
  v15 = 2066391179 * (v17 ^ 0xAF278218);
  v18 = *(a1 + 24);
  v19 = v2 + v3 + v15 - 395294679;
  v20 = v15 ^ (v14 + 340);
  v17[1] = v13 + v15;
  v21 = v4;
  result = (*(*(&off_100374800 + v14) + v14 + 2358))(v17);
  *(a1 + 8) = v17[0];
  return result;
}

void sub_100034518(uint64_t a1)
{
  v1 = 843532609 * ((a1 - 935319884 - 2 * (a1 & 0xC84026B4)) ^ 0x940D7231);
  v2 = *(a1 + 4) + v1;
  __asm { BRAA            X13, X17 }
}

void sub_100034630(uint64_t a1)
{
  v1 = *(a1 + 12) - 50899313 * ((-2 - ((a1 | 0xB0C40541) + (~a1 | 0x4F3BFABE))) ^ 0x5B146725);
  v3 = *a1;
  v5 = v1 - 2066391179 * ((((&v3 | 0x1EFCA09A) ^ 0xFFFFFFFE) - (~&v3 | 0xE1035F65)) ^ 0x4E24DD7D) - 376;
  v2 = *(&off_100374800 + v1 - 1914) - 8;
  (*&v2[8 * (v1 ^ 0xEA2)])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100034774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a57 + 1560) = **(v70 + 56);
  *(a57 + 1552) = *STACK[0x338];
  v71 = STACK[0x328];
  *(*STACK[0x328] + 488) = *(a50 + 8);
  *(*v71 + 480) = *a50;
  v72 = (a51 + a69);
  *v72 = ((((a53 + 101) | 0x31) - 69) ^ &STACK[0x330]) * (&STACK[0x330] + 17);
  *(v72 - 1) = (&STACK[0x330] ^ 0xBB) * (&STACK[0x330] + 18);
  return (*(v69 + 8 * a53))(3450863079, 1339, 3644003432, 650963279, a5, 3522093884);
}

uint64_t sub_10003487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v18 = a15 < 0xD3564C8E;
  if (v18 == v15 > ((v16 - 97) ^ 0x2CA9B35Bu))
  {
    v18 = v15 - 749319026 < a15;
  }

  return (*(v17 + 8 * ((99 * v18) ^ v16)))();
}

void sub_1000348E0(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (843532609 * ((a1 - 2 * (a1 & 0x7582E3B9) + 1971512249) ^ 0x29CFB73C));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000349EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t (*a24)(uint64_t))
{
  v28 = 2066391179 * ((-1788974664 - ((v27 - 160) | 0x955E69B8) + ((v27 - 160) | 0x6AA19647)) ^ 0xC586145F);
  *(v27 - 160) = (v24 ^ 0xDB) - v28 + 1280;
  *(v27 - 156) = 574624316 - v28;
  *(v27 - 152) = v25;
  v29 = (*(v26 + 8 * ((v24 ^ 0xDB) + 2333)))(v27 - 160);
  return a24(v29);
}

uint64_t sub_100034AD0(int a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  v11 = v10 - 1;
  v12 = *(v8 + 8);
  v13 = *(v12 + 4 * v11 - 4) ^ v6;
  *(v12 + 4 * (a5 - 1)) = ((v13 >> v7) & a3 | (a6 ^ a1) & ~(v13 >> v7)) ^ a1;
  return (*(v9 + 8 * (((2 * (v11 < 2)) | (32 * (v11 < 2))) ^ a2)))();
}

void sub_100034ADC()
{
  v0 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + dword_1003B8FE0) ^ 0x42)) ^ byte_1002CD9D0[byte_1002D9710[(-39 * ((qword_1003B9018 + dword_1003B8FE0) ^ 0x42))] ^ 0x72]) - 147);
  v1 = -39 * (*v0 ^ qword_1003B9018 ^ 0x42);
  v2 = *(&off_100374800 + (byte_1002D9618[(byte_1002D54E4[v1 - 4] ^ 0x38) - 8] ^ v1) - 17);
  v3 = (*(v2 - 4) + *v0) ^ &v5;
  *v0 = 329992409 * v3 - 0x3B9C76CF2798770ELL;
  *(v2 - 4) = 329992409 * (v3 ^ 0x3F921ABBB7B42942);
  v6[0] = -542396526 - 1388665877 * (((v6 | 0x70B6400A) - (v6 & 0x70B6400A)) ^ 0xFD1B22E6);
  LOBYTE(v2) = -39 * (*v0 ^ 0x42 ^ *(v2 - 4));
  v4 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + dword_1003B8FE0) ^ 0x42)) ^ byte_1002D9610[byte_1002D54E0[(-39 * ((qword_1003B9018 + dword_1003B8FE0) ^ 0x42))] ^ 0xE8]) - 170) - 8;
  (*&v4[8 * (byte_1002D2464[(byte_1002CDAD0[v2] ^ 0xDF) - 4] ^ v2) + 17184])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100034D0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v11 = *(v7 + 48 * v6 + 36);
  v13 = v11 != 1878584687 && v11 + a5 < a4 + 51 * (v5 ^ 0x8A0u) - 2193;
  return (*(v8 + 8 * ((v13 * ((v5 - v10 - 2008) ^ (v9 + 3))) ^ v5)))();
}

uint64_t sub_100034FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19, char *a20)
{
  HIDWORD(a17) = v20 - 143681137 * ((2 * (&a17 & 0x7437D630) - &a17 - 1949816371) ^ 0xEA90A21D) - 907;
  a18 = a15;
  a19 = &a14;
  a20 = &a16;
  (*(v22 + 8 * (v20 + 425)))(&a17);
  LODWORD(a17) = (v20 - 592) ^ (((&a17 + 1503290662 - 2 * (&a17 & 0x599A6526)) ^ 0x4DB5F8BD) * v21);
  a20 = &a12;
  a18 = a15;
  (*(v22 + 8 * (v20 ^ 0xEF5)))(&a17);
  a17 = a15;
  HIDWORD(a18) = (v20 + 259) ^ (1388665877 * ((((2 * &a17) | 0x2C8B08C6) - &a17 + 1773829021) ^ 0x1BE8E68F));
  v23 = (*(v22 + 8 * (v20 ^ 0xECD)))(&a17);
  return (*(v22 + 8 * (((a18 == -392105736) * (3 * (v20 ^ 0x759) + ((v20 - 1728) ^ 0xCF6))) ^ v20)))(v23);
}

uint64_t sub_100035148@<X0>(char a1@<W8>)
{
  v6 = (v4 + (v2 & 0x3F) + 9);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v3 + 8 * ((((a1 & 0x30) == 16) * (((v1 - 729) | 4) - 1161)) ^ v1)))();
}

uint64_t sub_1000351F4@<X0>(int a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v9 = (v6 + 4 * (v4 + a2));
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((((v3 + 820) ^ v7) + v4 == v5) * a1) ^ (v3 + 110))))();
}

void sub_100035234(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v38 = &a34 + v34;
  *v38 = v35;
  *(&a34 + (a16 ^ 0x1D) + v34) = v36;
  v38[2] = v37;
  v38[3] = a1;
  JUMPOUT(0x1000349FCLL);
}

uint64_t sub_10003526C(uint64_t a1, int a2)
{
  v6 = v3 ^ 0x40E;
  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = -v4;
  }

  v8 = a2 + v2;
  if (v8 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  return (*(v5 + 8 * (((((v6 + 539832464) & 0xDFD2CB61 ^ 0xFFFFFEE5) + ((v6 + 1825005575) & 0x93389BEA)) * (v7 > v9)) ^ v6)))();
}

uint64_t sub_1000352DC()
{
  v4 = (v1 ^ 0x92DAC71A) & (2 * (v1 & 0xD280D743)) ^ v1 & 0xD280D743;
  v5 = (v1 ^ 0x37DBC31E) << ((31 * (((v0 - 69) | 0x60) ^ 0x78)) ^ 0x75);
  v6 = (v5 ^ 0xCAB628BA) & (v1 ^ 0x37DBC31E) ^ v5 & 0xE55B145C;
  v7 = ((4 * (v6 ^ 0x25491445)) ^ 0x956C5174) & (v6 ^ 0x25491445) ^ (4 * (v6 ^ 0x25491445)) & 0xE55B145C;
  v8 = (v7 ^ 0x85481050) & (16 * ((v6 ^ 0xE14A0058) & (4 * v4) ^ v4)) ^ (v6 ^ 0xE14A0058) & (4 * v4) ^ v4;
  v9 = ((16 * (v7 ^ 0x60130409)) ^ 0x55B145D0) & (v7 ^ 0x60130409) ^ (16 * (v7 ^ 0x60130409)) & 0xE55B1450;
  v10 = v8 ^ 0xE55B145D ^ (v9 ^ 0x45110400) & (v8 << 8);
  return (*(v2 + 8 * ((1848 * ((v3 ^ (4 * v1) ^ (8 * ((v10 << 16) & 0x55B0000 ^ v10 ^ ((v10 << 16) ^ 0x145D0000) & (((v9 ^ 0xA04A100D) << 8) & 0x55B0000 ^ 0x44B0000 ^ (((v9 ^ 0xA04A100D) << 8) ^ 0x1B140000) & (v9 ^ 0xA04A100D))))) == 1108606948)) ^ v0)))();
}

uint64_t sub_1000354C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 136) = (v17 + 1457) ^ (((((v21 - 136) | 0x7836F61D) - (v21 - 136) + ((v21 - 136) & 0x87C909E0)) ^ 0x247BA298) * v19);
  *(v21 - 128) = &a17;
  *(v21 - 120) = a16;
  v22 = (*(v20 + 8 * (v17 ^ 0xBCD)))(v21 - 136);
  return (*(v20 + 8 * (((((v17 + 110) ^ (*(v21 - 132) > (v18 + 1))) & 1) * (((v17 - 20) | 0x16) - 725)) | v17)))(v22);
}

uint64_t sub_100035568@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v11 = HIDWORD(v7) + HIDWORD(v6) + (*(v10 + 4 * a5) ^ v5);
  *(v10 + 4 * a3) = v11 + (((v8 - 1179) | 0x110) ^ (v5 - 144)) - (a2 & (2 * v11));
  *(v10 + 4 * a5) = HIDWORD(v11) + v5 - ((2 * HIDWORD(v11)) & 4);
  return (*(v9 + 8 * (v8 ^ (492 * (a1 + 1 == a4)))))();
}

void sub_1000355E4(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

void sub_1000357A0(uint64_t a1)
{
  v1 = 50899313 * (((a1 | 0x43FA28CE) - (a1 & 0x43FA28CE)) ^ 0x57D5B555);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000358A0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1000358C8()
{
  v4 = ((v3 - 39399173 - 2 * ((v3 - 200) & 0xFDA6D1C3)) ^ 0x700BB32F) * v0;
  v5 = (v3 - 200);
  v5[4] = 0;
  *v5 = &STACK[0x310];
  v5[1] = &STACK[0x2E0];
  *(v3 - 184) = v4 + v2 + 85;
  *(v3 - 180) = v4 + 452683666;
  v6 = (*(v1 + 8 * (v2 + 2310)))(v3 - 200);
  v7 = *(v1 + 8 * (((*(v3 - 176) == v2 - 392105814) * (((v2 - 1793194253) & 0x6AE1F8FF) + 92)) ^ v2));
  STACK[0x288] = *(&off_100374800 + (v2 ^ 0x54)) - 8;
  return v7(v6);
}