uint64_t sub_1000015F0()
{
  v0 = [sub_100001648() sharedUtilityProvider];
  if ([v0 currentPreferredTransportMethod])
  {
    if ([sub_100001648() relayIsSupported])
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_100001648()
{
  if (qword_10001A9A8 != -1)
  {
    sub_100009984();
  }

  v1 = qword_10001A9A0;

  return v1;
}

void sub_10000168C(id a1)
{
  qword_10001A9A0 = CUTWeakLinkClass();
  if (!qword_10001A9A0)
  {
    v1 = sub_100001C24();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100009998(v1);
    }
  }
}

uint64_t start(uint64_t a1, uint64_t *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *a2;
  NPHDeriveProgramName();
  NPHSetTmpDirPrefix();
  v5 = objc_alloc_init(VoicemailCompanionReplication);
  v6 = [TCSSuggestions alloc];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v6 initWithContactStore:v7 contacts:v8];

  [v9 setGenerationTimerEnabled:1];
  [v9 generateNewSuggestionsIfNecessary];
  v41[0] = v5;
  v41[1] = v9;
  v10 = +[NPHCarrierInfoCompanionReplication sharedInstance];
  v41[2] = v10;
  v11 = objc_opt_new();
  v41[3] = v11;
  v12 = objc_opt_new();
  v41[4] = v12;
  v13 = objc_opt_new();
  v41[5] = v13;
  v14 = [NSArray arrayWithObjects:v41 count:6];
  v15 = [NSMutableArray arrayWithArray:v14];

  v16 = +[NSUserDefaults standardUserDefaults];
  LODWORD(v11) = [v16 BOOLForKey:@"NPHMagicRingbackAutomaton"];

  if (v11)
  {
    v17 = objc_opt_new();
    [v15 addObject:v17];
  }

  v18 = [NSArray arrayWithArray:v15];
  v19 = qword_10001A9B0;
  qword_10001A9B0 = v18;

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v20, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v20, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_int64(v20, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_8_HOURS);
  xpc_dictionary_set_string(v20, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001B44;
  handler[3] = &unk_1000145D0;
  v38 = v9;
  v21 = v9;
  xpc_activity_register("com.apple.tincan.generate-suggestions", v20, handler);
  if (signal(15, 1) == -1)
  {
    v22 = sub_100001C24();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = __error();
      v24 = strerror(*v23);
      *buf = 136315138;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unable to ignore default SIGTERM handler; error:%s", buf, 0xCu);
    }
  }

  v25 = dispatch_queue_create("com.apple.mobilephone.VoicemailCompanionReplication.sigterm", 0);
  v26 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v25);
  v27 = qword_10001A9B8;
  qword_10001A9B8 = v26;

  v28 = qword_10001A9B8;
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_100001BB8;
  v35 = &unk_1000145F8;
  v36 = v5;
  v29 = v5;
  dispatch_source_set_event_handler(v28, &v32);
  dispatch_resume(qword_10001A9B8);

  objc_autoreleasePoolPop(v3);
  v30 = [NSRunLoop currentRunLoop:v32];
  [v30 run];

  return 0;
}

id sub_100001B44(uint64_t a1)
{
  v2 = sub_100001C24();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC Activity checked-in and it's time to update WalkieTalkie suggestions", v4, 2u);
  }

  return [*(a1 + 32) generateNewSuggestionsIfNecessary];
}

void sub_100001BB8(uint64_t a1)
{
  v2 = sub_100001C24();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling SIGTERM", v3, 2u);
  }

  [*(a1 + 32) handleSIGTERM];
  exit(0);
}

id sub_100001C24()
{
  if (qword_10001A9C8 != -1)
  {
    sub_1000099DC();
  }

  v1 = qword_10001A9C0;

  return v1;
}

void sub_100001C68(id a1)
{
  qword_10001A9C0 = os_log_create("com.apple.NanoPhone", "general");

  _objc_release_x1();
}

int64_t sub_100002348(id a1, id a2, id a3)
{
  v3 = -1;
  if (a2 >= a3)
  {
    v3 = 1;
  }

  if (a2 == a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

NPHCall *__cdecl sub_1000024D8(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [[NPHCall alloc] initWithTUCall:v2];

  return v3;
}

uint64_t sub_100002540(uint64_t a1, void *a2)
{
  v2 = [a2 status];
  if (v2 > 5)
  {
    return 1;
  }

  else
  {
    return qword_10000D9C8[v2];
  }
}

BOOL sub_100002578(id a1, NPHCall *a2, NPHCall *a3)
{
  v4 = a3;
  v5 = sub_100002540(v4, a2);
  v6 = sub_100002540(v5, v4);

  return v5 > v6;
}

uint64_t sub_10000295C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEmergency])
  {
    v4 = 1;
  }

  else if (*(a1 + 40) == 1 && *(a1 + 32))
  {
    v5 = [v3 handle];
    v6 = [v5 value];
    v4 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100002AC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSOS])
  {
    v4 = 1;
  }

  else if (*(a1 + 40) == 1 && *(a1 + 32))
  {
    v5 = [v3 handle];
    v6 = [v5 value];
    v4 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_100002BE4(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 originatingUIType]== 6 || [(TUCall *)v2 originatingUIType]== 13;

  return v3;
}

BOOL sub_100002C74(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 originatingUIType]== 10 || [(TUCall *)v2 originatingUIType]== 12;

  return v3;
}

BOOL sub_100002D5C(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 originatingUIType]== 10 || [(TUCall *)v2 originatingUIType]== 6;

  return v3;
}

BOOL sub_100002F9C(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 provider];
  if ([v3 isFaceTimeProvider] && -[TUCall isVideo](v2, "isVideo") && (+[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls](TUCallCapabilities, "supportsDisplayingFaceTimeAudioCalls") & 1) == 0)
  {
    v4 = +[NPHSharedUtilities isActiveDeviceTinker];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_100003188(id a1, TUCall *a2, TUCall *a3)
{
  v4 = a3;
  [(TUCall *)a2 callDuration];
  v6 = v5;
  [(TUCall *)v4 callDuration];
  v8 = v7;

  return v6 > v8;
}

void sub_100004C98(uint64_t a1)
{
  v5 = [[NPHCallConfigurationChangeSource alloc] initWithUTF8String:"[NPHStateManager initWithDelegate:]_block_invoke"];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [NPHStateManager currentCallConfigurationWithSource:v5];
  [v2 stateManager:v3 callConfigurationUpdated:v4];
}

void sub_100004FC4(id a1)
{
  v1 = sub_100001C24();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "+[NPHStateManager updateSharedCallCenter]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: disabling call notifications while suspended", &v8, 0xCu);
  }

  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 callServicesClientCapabilities];
  [v3 setWantsCallNotificationsDisabledWhileSuspended:1];

  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callServicesClientCapabilities];
  [v5 setWantsToScreenCalls:1];

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callServicesClientCapabilities];
  [v7 save];
}

void sub_100005188(uint64_t a1)
{
  v5 = [[NPHCallConfigurationChangeSource alloc] initWithPayload:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  v3 = *(a1 + 40);
  v4 = [NPHStateManager currentCallConfigurationWithSource:v5];
  [v2 stateManager:v3 callConfigurationUpdated:v4];
}

BOOL sub_1000053C4(id a1, NPHCall *a2)
{
  v2 = a2;
  if ([(NPHCall *)v2 status]== 6)
  {
    v3 = ![(NPHCall *)v2 hasFailed];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

BOOL sub_100005AD0(id a1, NPHCall *a2)
{
  v2 = a2;
  if ([(NPHCall *)v2 isScreeningActive])
  {
    v3 = ![(NPHCall *)v2 isSmartHoldingActive];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

BOOL sub_100005B18(id a1, NPHCall *a2)
{
  v2 = a2;
  if ([(NPHCall *)v2 isScreeningActive])
  {
    v3 = ![(NPHCall *)v2 isSmartHoldingActive];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

BOOL sub_100005DC4(id a1, NPHCall *a2)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NPHCall *)a2 TUCalls];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isHostedOnCurrentDevice])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

BOOL sub_100006498(id a1, NPHCall *a2)
{
  v2 = a2;
  v3 = ![(NPHCall *)v2 isEmergencyCall]&& [(NPHCall *)v2 status]!= 5;

  return v3;
}

void sub_100007F58(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v4 = [v2 dialWithRequest:*(a1 + 32)];

  if (v4)
  {
    v3 = [[NPHCall alloc] initWithTUCall:v4];
    [*(a1 + 40) setCurrentOutgoingCallResponse:v3];
  }

  else
  {
    [*(a1 + 40) setCurrentOutgoingCallResponse:0];
  }
}

void sub_100008358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000083E8;
  v3[3] = &unk_1000148D8;
  v3[4] = v2;
  v4 = v1;
  [v2 _flipMuteForCall:v4 and:v3];
}

void sub_1000083E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100008478;
  v3[3] = &unk_1000148D8;
  v3[4] = v2;
  v4 = v1;
  [v2 _flipMuteForCall:v4 and:v3];
}

uint64_t sub_100008590(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000090FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000916C(&qword_10001A968, &qword_10000DA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000916C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000091B4(uint64_t a1)
{
  v2 = sub_10000916C(&qword_10001A968, &qword_10000DA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000921C()
{
  result = qword_10001A970;
  if (!qword_10001A970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001A970);
  }

  return result;
}

void *sub_100009268(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000092AC()
{
  result = qword_10001A988;
  if (!qword_10001A988)
  {
    sub_100009310(&qword_10001A980, &qword_10000DA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A988);
  }

  return result;
}

uint64_t sub_100009310(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100009358(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000093D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  a8();
  sub_1000090FC(a5, v23);
  sub_1000090FC(v23, &v20);
  v17[0] = v20;
  v17[1] = v21;
  v18 = v22;
  if (*(&v21 + 1))
  {
    sub_100009358(v17, v19);
    v10 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100009744(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_100009744((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    sub_100009358(v19, &v10[5 * v12 + 4]);
  }

  else
  {
    sub_1000091B4(v17);
    v10 = _swiftEmptyArrayStorage;
  }

  sub_1000091B4(v23);
  sub_10000921C();
  v13 = a1[4];
  sub_100009268(a1, a1[3]);

  dispatch thunk of CustomStringConvertible.description.getter();
  v14 = OS_os_log.init(subsystem:category:)();
  sub_10000916C(&qword_10001A978, &qword_10000DA28);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10000DA10;
  *(v15 + 56) = sub_10000916C(&qword_10001A980, &qword_10000DA30);
  *(v15 + 64) = sub_1000092AC();
  *(v15 + 32) = v10;
  os_log(_:dso:log:_:_:)();
}

uint64_t os_log_type_t.description.getter(unsigned __int8 a1)
{
  if (static os_log_type_t.error.getter() == a1)
  {
    return 0x524F525245;
  }

  if (static os_log_type_t.fault.getter() == a1)
  {
    return 0x544C554146;
  }

  if (static os_log_type_t.info.getter() == a1)
  {
    return 1330007625;
  }

  return 0x4755424544;
}

uint64_t sub_100009684()
{
  v1 = *v0;
  if (v1 == static os_log_type_t.error.getter())
  {
    return 0x524F525245;
  }

  if (v1 == static os_log_type_t.fault.getter())
  {
    return 0x544C554146;
  }

  if (static os_log_type_t.info.getter() == v1)
  {
    return 1330007625;
  }

  return 0x4755424544;
}

void *sub_100009744(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000916C(&qword_10001A978, &qword_10000DA28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000916C(&qword_10001A998, &qword_10000DB48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 sub_10000988C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100009898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000098E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for OSLogType()
{
  if (!qword_10001A990)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10001A990);
    }
  }
}

void sub_1000099F0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[NPHCall onlyTUCall]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s: NPHCall has > 1 TUCalls; expected 1", &v1, 0xCu);
}

void sub_100009ACC(void *a1, NSObject *a2)
{
  v3 = [a1 handle];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "no title for handle: %@", &v4, 0xCu);
}