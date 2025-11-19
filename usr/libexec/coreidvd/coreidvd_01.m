uint64_t sub_100022140()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100022168(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

id sub_1000222A8()
{
  type metadata accessor for DIPPushNotificationManager();
  swift_allocObject();
  result = sub_10002751C();
  qword_100881E40 = result;
  return result;
}

uint64_t sub_100022318()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[25] = v1;
  v2 = *(v1 - 8);
  v0[26] = v2;
  v3 = *(v2 + 64) + 15;
  v0[27] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v0[28] = v4;
  v5 = *(v4 - 8);
  v0[29] = v5;
  v6 = *(v5 + 64) + 15;
  v0[30] = swift_task_alloc();
  v7 = type metadata accessor for TimeoutError();
  v0[31] = v7;
  v8 = *(v7 - 8);
  v0[32] = v8;
  v9 = *(v8 + 64) + 15;
  v0[33] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v0[34] = v10;
  v11 = *(v10 - 8);
  v0[35] = v11;
  v12 = *(v11 + 64) + 15;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v13, type metadata accessor for DIPPushNotificationManager);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[39] = v15;
  v0[40] = v14;

  return _swift_task_switch(sub_100022550, v15, v14);
}

uint64_t sub_100022550()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() containerWithIdentifier:v1];
  v0[41] = v2;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1000226C0;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_1007FD578;
  v0[14] = v3;
  [v2 serverPreferredPushEnvironmentWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000226C0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 320);
  v5 = *(v1 + 312);
  if (v3)
  {
    v6 = sub_1000229EC;
  }

  else
  {
    v6 = sub_1000227F0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000227F0()
{
  v26 = v0;
  v1 = v0[38];
  v3 = v0[21];
  v2 = v0[22];

  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  v8 = v0[38];
  v10 = v0[34];
  v9 = v0[35];
  if (v6)
  {
    v24 = v0[34];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    v23 = v8;
    v13 = v3;
    v14 = sub_100141FE4(v3, v2, &v25);

    *(v11 + 4) = v14;
    v3 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "The APS server environment is %{public}s", v11, 0xCu);
    sub_10000BB78(v12);

    (*(v9 + 8))(v23, v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];
  v18 = v0[33];
  v19 = v0[30];
  v20 = v0[27];

  v21 = v0[1];

  return v21(v3, v2);
}

uint64_t sub_1000229EC()
{
  v50 = v0;
  v1 = v0[42];
  v2 = v0[33];
  v3 = v0[31];
  swift_willThrow();
  v0[23] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v4 = swift_dynamicCast();
  v5 = v0[42];
  if (v4)
  {
    v6 = v0[37];
    v7 = v0[35];
    v42 = v0[41];
    v43 = v0[34];
    v44 = v0[32];
    v8 = v0[30];
    v45 = v0[31];
    v47 = v0[33];
    v10 = v0[28];
    v9 = v0[29];
    v11 = v0[26];
    v12 = v0[27];
    v13 = v0[25];

    (*(v11 + 104))(v12, enum case for DIPError.Code.timeoutTaskFetchAPSEnv(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v9 + 16))(v14, v8, v10);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v7 + 8))(v6, v43);
    (*(v9 + 8))(v8, v10);

    (*(v44 + 8))(v47, v45);
    v15 = v0[23];
  }

  else
  {
    v16 = v0[36];
    v17 = v0[23];

    defaultLogger()();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[41];
    v22 = v0[42];
    v24 = v0[35];
    v23 = v0[36];
    v25 = v0[34];
    if (v20)
    {
      v48 = v0[36];
      v46 = v0[34];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = v27;
      *v26 = 136446210;
      swift_getErrorValue();
      v29 = v0[18];
      v28 = v0[19];
      v30 = v0[20];
      v31 = Error.localizedDescription.getter();
      v33 = sub_100141FE4(v31, v32, &v49);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to determine server preferred push environment due to error: %{public}s", v26, 0xCu);
      sub_10000BB78(v27);

      (*(v24 + 8))(v48, v46);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }
  }

  v35 = v0[37];
  v34 = v0[38];
  v36 = v0[36];
  v37 = v0[33];
  v38 = v0[30];
  v39 = v0[27];

  v40 = v0[1];

  return v40(0x69746375646F7270, 0xEA00000000006E6FLL);
}

uint64_t sub_100022E20()
{
  v1[26] = v0;
  v2 = type metadata accessor for DIPError();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v11, type metadata accessor for DIPPushNotificationManager);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[45] = v12;
  v1[46] = v13;

  return _swift_task_switch(sub_100023088, v12, v13);
}

uint64_t sub_100023088()
{
  v1 = *(v0[26] + 72);
  if (v1)
  {
    v3 = v0[43];
    v2 = v0[44];
    v5 = v0[41];
    v4 = v0[42];
    v7 = v0[39];
    v6 = v0[40];
    v9 = v0[37];
    v8 = v0[38];
    v15 = v0[36];
    v16 = v0[35];
    v17 = v0[32];
    v18 = v0[29];
    v10 = v1;

    v11 = v0[1];

    return v11(v1);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[47] = v13;
    *v13 = v0;
    v13[1] = sub_100023254;
    v14 = v0[26];

    return sub_100022318();
  }
}

uint64_t sub_100023254(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v9 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;

  v6 = *(v3 + 368);
  v7 = *(v3 + 360);

  return _swift_task_switch(sub_1000233B0, v7, v6);
}

uint64_t sub_1000233B0()
{
  v90 = v0;
  v1 = v0[49];
  v2 = v0[44];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[48];
    v5 = v0[49];
    v7 = v0[44];
    v8 = v0[33];
    v9 = v0[34];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v89 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v6, v5, &v89);
    _os_log_impl(&_mh_execute_header, v3, v4, "Using APS Connection environment %s", v10, 0xCu);
    sub_10000BB78(v11);

    v12 = *(v9 + 8);
    v12(v7, v8);
  }

  else
  {
    v13 = v0[44];
    v14 = v0[33];
    v15 = v0[34];

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v0[50] = v12;
  v16 = v0[48];
  v17 = v0[49];
  v18 = v0[26];
  v19 = *(v18 + 80);
  v20 = objc_allocWithZone(APSConnection);
  v21 = v19;
  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();
  v24 = [v20 initWithEnvironmentName:v22 namedDelegatePort:v23 queue:v21];

  v25 = *(v18 + 72);
  *(v18 + 72) = v24;
  v26 = v24;

  if (v26)
  {
    [v26 setDelegate:v0[26]];
  }

  v27 = *(v0[26] + 72);
  if (v27 && (v28 = [v27 publicToken]) != 0)
  {
    v29 = v0[43];
    v30 = v28;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = Data.base16EncodedString()();
    sub_10000B90C(v31, v33);
    defaultLogger()();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[43];
    v40 = v0[33];
    v39 = v0[34];
    if (v37)
    {
      v41 = v12;
      v42 = swift_slowAlloc();
      v88 = v38;
      v43 = swift_slowAlloc();
      v89 = v43;
      *v42 = 136315138;
      v44 = sub_100141FE4(v34._countAndFlagsBits, v34._object, &v89);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "===> DIPPushNotificationManager APS pushtoken = %s", v42, 0xCu);
      sub_10000BB78(v43);

      v12 = v41;

      v41(v88, v40);
      goto LABEL_15;
    }

    v52 = v38;
  }

  else
  {
    v45 = v0[42];
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[42];
    v40 = v0[33];
    v50 = v0[34];
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "===> DIPPushNotificationManager APS pushtoken = NOT AVAILABLE", v51, 2u);
    }

    v52 = v49;
  }

  v12(v52, v40);
LABEL_15:
  v53 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.usePDSPushSandbox.getter();
  v54 = String._bridgeToObjectiveC()();

  v55 = [v53 BOOLForKey:v54];

  if (v55)
  {
    v56 = v0[41];
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Using pds push sandbox environment due to user defaults setting", v59, 2u);
    }

    v60 = v0[41];
    v61 = v0[33];
    v62 = v0[34];
    v63 = v0[26];

    v12(v60, v61);
    *(v63 + 64) = 1;
  }

  else
  {
    v64 = v0[40];
    defaultLogger()();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[40];
    v69 = v0[33];
    v70 = v0[34];
    if (v67)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Using pds production environment by default", v71, 2u);
    }

    v12(v68, v69);
  }

  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v72 = v0[22];
  sub_10000BA08(v0 + 18, v0[21]);
  dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountDSID()();
  v73 = v0[26];
  sub_10000BB78(v0 + 18);
  v74 = String._bridgeToObjectiveC()();

  v75 = [objc_opt_self() userWithDSID:v74];
  v0[51] = v75;

  v76 = *(v73 + 16);
  v77 = *(v73 + 24);
  v78 = *(v73 + 64);
  v79 = objc_allocWithZone(PDSRegistration);
  v80 = String._bridgeToObjectiveC()();
  v81 = String._bridgeToObjectiveC()();
  v0[52] = [v79 initWithTopic:v80 qualifier:v81 pushEnvironment:v78];

  v82 = *(v73 + 32);
  v83 = *(v73 + 40);
  objc_allocWithZone(PDSRegistrar);

  v84 = sub_1000278FC();
  v0[53] = v84;
  v0[54] = 0;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_100023F94;
  v85 = v84;
  v86 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100833B80, &unk_1006BFA10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100024BE8;
  v0[13] = &unk_1007FD550;
  v0[14] = v86;
  [v85 currentRegistrationsForUser:v75 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100023F94()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 440) = v3;
  v4 = *(v1 + 368);
  v5 = *(v1 + 360);
  if (v3)
  {
    v6 = sub_1000247CC;
  }

  else
  {
    v6 = sub_1000240F0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000240F0()
{
  v0[24] = v0[52];
  v1 = v0[54];
  v2 = v0[23];
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 24;
  LOBYTE(v1) = sub_10035C7BC(sub_100027DC8, v3, v2);

  if (v1)
  {
    v4 = v0[38];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[50];
    v9 = v0[38];
    v10 = v0[33];
    v11 = v0[34];
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "PDS found a previous registration, skipping", v12, 2u);
    }

    v8(v9, v10);
  }

  else
  {
    v13 = v0[39];
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "PDS no existing registration found, adding a new one", v16, 2u);
    }

    v18 = v0[52];
    v17 = v0[53];
    v20 = v0[50];
    v19 = v0[51];
    v21 = v0[39];
    v22 = v0[33];
    v23 = v0[34];

    v20(v21, v22);
    v0[25] = 0;
    v24 = [v17 addRegistration:v18 toUser:v19 error:v0 + 25];
    v25 = v0[25];
    if (!v24)
    {
      v40 = v0[52];
      v39 = v0[53];
      v41 = v0[51];
      v42 = v25;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v44 = v0[31];
      v43 = v0[32];
      v45 = v0[30];
      v46 = _convertErrorToNSError(_:)();
      v47 = [v46 code];

      v48 = *(v44 + 104);
      v48(v43, enum case for DIPError.Code.invalidAppleAccount(_:), v45);
      v49 = DIPError.Code.rawValue.getter();
      (*(v44 + 8))(v43, v45);
      if (v47 == v49)
      {
        v50 = v0[36];
        defaultLogger()();
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        v53 = os_log_type_enabled(v51, v52);
        v54 = v0[50];
        v55 = v0[36];
        v56 = v0[33];
        v57 = v0[34];
        if (v53)
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "Ignoring account not signed in errors for PDS registration", v58, 2u);
        }

        else
        {
        }

        v54(v55, v56);
      }

      else
      {
        v59 = v0[35];
        v77 = v0[34];
        v79 = v0[33];
        v81 = v0[50];
        v60 = v0[29];
        v61 = v0[27];
        v62 = v0[28];
        v48(v0[32], enum case for DIPError.Code.pdsRegistrationError(_:), v0[30]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError);
        swift_allocError();
        (*(v62 + 16))(v63, v60, v61);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v81(v59, v79);
        (*(v62 + 8))(v60, v61);
      }

      goto LABEL_19;
    }

    v26 = v25;
  }

  v27 = v0[37];
  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[52];
  v32 = v0[53];
  v33 = v0[50];
  v34 = v0[51];
  v35 = v0[37];
  v36 = v0[33];
  v37 = v0[34];
  if (v30)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "PDS registration complete", v38, 2u);
  }

  v33(v35, v36);
LABEL_19:
  v65 = v0[43];
  v64 = v0[44];
  v67 = v0[41];
  v66 = v0[42];
  v69 = v0[39];
  v68 = v0[40];
  v71 = v0[37];
  v70 = v0[38];
  v72 = v0[36];
  v78 = v0[35];
  v80 = v0[32];
  v82 = v0[29];
  v76 = *(v0[26] + 72);
  v73 = v76;

  v74 = v0[1];

  return v74(v76);
}

uint64_t sub_1000247CC()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[51];
  swift_willThrow();

  v5 = v0[55];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v9 = _convertErrorToNSError(_:)();
  v10 = [v9 code];

  v11 = *(v7 + 104);
  v11(v6, enum case for DIPError.Code.invalidAppleAccount(_:), v8);
  v12 = DIPError.Code.rawValue.getter();
  (*(v7 + 8))(v6, v8);
  if (v10 == v12)
  {
    v13 = v0[36];
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[50];
    v18 = v0[36];
    v19 = v0[33];
    v20 = v0[34];
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Ignoring account not signed in errors for PDS registration", v21, 2u);
    }

    else
    {
    }

    v17(v18, v19);
  }

  else
  {
    v22 = v0[35];
    v40 = v0[34];
    v42 = v0[33];
    v44 = v0[50];
    v23 = v0[29];
    v24 = v0[27];
    v25 = v0[28];
    v11(v0[32], enum case for DIPError.Code.pdsRegistrationError(_:), v0[30]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v25 + 16))(v26, v23, v24);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v44(v22, v42);
    (*(v25 + 8))(v23, v24);
  }

  v28 = v0[43];
  v27 = v0[44];
  v30 = v0[41];
  v29 = v0[42];
  v32 = v0[39];
  v31 = v0[40];
  v34 = v0[37];
  v33 = v0[38];
  v35 = v0[36];
  v41 = v0[35];
  v43 = v0[32];
  v45 = v0[29];
  v39 = *(v0[26] + 72);
  v36 = v39;

  v37 = v0[1];

  return v37(v39);
}

uint64_t sub_100024BE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001F8D4(0, &qword_100833B88, PDSRegistration_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100024CD8()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v5, type metadata accessor for DIPPushNotificationManager);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v7;
  v1[8] = v6;

  return _swift_task_switch(sub_100024DF4, v7, v6);
}

uint64_t sub_100024DF4()
{
  if (qword_100832D30 != -1)
  {
    swift_once();
  }

  v1 = async function pointer to OS_dispatch_group.wait(interval:)[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100024EC0;
  v3.n128_u64[0] = 10.0;

  return OS_dispatch_group.wait(interval:)(v3);
}

uint64_t sub_100024EC0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 96) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return _swift_task_switch(sub_100024FE8, v5, v4);
}

uint64_t sub_100024FE8()
{
  v1 = *(v0 + 96);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v2 = *(v0 + 48);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Timed out waiting for the daemon to be initialized, proceeding to enable push", v5, 2u);
    }

    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);

    (*(v8 + 8))(v6, v7);
  }

  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_10002512C;
  v10 = *(v0 + 16);

  return sub_100022E20();
}

uint64_t sub_10002512C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return _swift_task_switch(sub_100025254, v5, v4);
}

uint64_t sub_100025254()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[2];
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1006BF740;
    *(v3 + 32) = 0xD000000000000035;
    *(v3 + 40) = 0x80000001006FBAD0;
    v4 = *(v2 + 24);
    *(v3 + 48) = *(v2 + 16);
    *(v3 + 56) = v4;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 _setEnabledTopics:isa];

    v6._countAndFlagsBits = 0x3166323864616636;
    v7._object = 0x80000001006FBB10;
    v6._object = 0xE800000000000000;
    v7._countAndFlagsBits = 0xD000000000000021;
    logMilestone(tag:description:)(v6, v7);
  }

  else
  {
    v8 = v0[5];
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "unable to enable push because no connection available", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);
  }

  v17 = v0[5];
  v16 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10002543C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v13 = swift_task_alloc();
  v3[18] = v13;
  *v13 = v3;
  v13[1] = sub_10002563C;

  return sub_100022E20();
}

uint64_t sub_10002563C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 152) = a1;

  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v4, type metadata accessor for DIPPushNotificationManager);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000257D8, v6, v5);
}

uint64_t sub_1000257D8()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    v4 = *(v0 + 24);
    [*(v0 + 152) _setEnabledTopics:0];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() userWithDSID:v5];

    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    objc_allocWithZone(PDSRegistrar);

    v9 = sub_1000278FC();
    *(v0 + 16) = 0;
    v10 = [v9 removeAllRegistrationsFromUser:v6 error:v0 + 16];
    v11 = *(v0 + 16);
    if (v10)
    {
      v12 = *(v0 + 136);
      v13 = v11;
      defaultLogger()();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 136);
      v18 = *(v0 + 96);
      v19 = *(v0 + 104);
      if (v16)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "removed all PDS registrations", v20, 2u);
      }

      (*(v19 + 8))(v17, v18);
    }

    else
    {
      v29 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v61 = v1;

      v31 = *(v0 + 80);
      v30 = *(v0 + 88);
      v32 = *(v0 + 72);
      v33 = _convertErrorToNSError(_:)();
      v34 = [v33 code];

      v35 = *(v31 + 104);
      v35(v30, enum case for DIPError.Code.invalidAppleAccount(_:), v32);
      v36 = DIPError.Code.rawValue.getter();
      (*(v31 + 8))(v30, v32);
      if (v34 == v36)
      {
        v37 = *(v0 + 120);
        defaultLogger()();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        v40 = os_log_type_enabled(v38, v39);
        v41 = *(v0 + 120);
        v42 = *(v0 + 96);
        v43 = *(v0 + 104);
        if (v40)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Ignoring account not signed in errors for PDS registration", v44, 2u);
        }

        else
        {
        }

        (*(v43 + 8))(v41, v42);
      }

      else
      {
        v45 = *(v0 + 104);
        v46 = *(v0 + 112);
        v59 = v45;
        v60 = *(v0 + 96);
        v47 = *(v0 + 64);
        v48 = *(v0 + 48);
        v49 = *(v0 + 56);
        v35(*(v0 + 88), enum case for DIPError.Code.pdsDeregistrationError(_:), *(v0 + 72));
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError);
        swift_allocError();
        (*(v49 + 16))(v50, v47, v48);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        (*(v59 + 8))(v46, v60);
        (*(v49 + 8))(v47, v48);
      }
    }
  }

  else
  {
    v21 = *(v0 + 128);
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 128);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "unable to disable push because no connection available", v28, 2u);
    }

    (*(v27 + 8))(v25, v26);
  }

  v52 = *(v0 + 128);
  v51 = *(v0 + 136);
  v54 = *(v0 + 112);
  v53 = *(v0 + 120);
  v55 = *(v0 + 88);
  v56 = *(v0 + 64);

  v57 = *(v0 + 8);

  return v57();
}

void sub_100025E80(void *a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v123 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v127 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v126 = &v123 - v12;
  v13 = __chkstk_darwin(v11);
  v130 = &v123 - v14;
  __chkstk_darwin(v13);
  v16 = &v123 - v15;
  defaultLogger()();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  p_align = &stru_10082BFE8.align;
  v125 = v5;
  if (v20)
  {
    v128 = v7;
    v129 = v6;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v136[0] = v23;
    *v22 = 136315394;
    v24 = [v17 topic];
    if (v24)
    {
      v25 = v24;
      v124 = v23;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_100141FE4(v26, v28, v136);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2080;
      v30 = [v17 userInfo];

      if (v30)
      {
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = Dictionary.description.getter();
        v33 = v32;

        v34 = sub_100141FE4(v31, v33, v136);

        *(v22 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v18, v19, "<=== APS message received in DIPPushNotificationManager, topic = %s, message = %s", v22, 0x16u);
        swift_arrayDestroy();

        v7 = v128;
        v35 = *(v128 + 8);
        v6 = v129;
        v35(v16, v129);
        p_align = (&stru_10082BFE8 + 24);
        goto LABEL_6;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v35 = *(v7 + 8);
  v35(v16, v6);
LABEL_6:
  v36 = v131;
  v37 = *(v131 + 16);
  v38 = *(v131 + 24);
  v39 = [v17 *(p_align + 449)];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v37 == v41 && v38 == v43)
    {

      goto LABEL_11;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
LABEL_11:
      v45 = [objc_opt_self() standardUserDefaults];
      v46._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipPendingActionsFromPushNotification.getter();
      v47 = NSUserDefaults.internalBool(forKey:)(v46);

      if (v47)
      {
        v48 = v126;
        defaultLogger()();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Internal settings for skipPendingActionsFromPushNotification has been enabled. Will not request pending actions", v51, 2u);
        }

        v52 = v48;
LABEL_37:
        v35(v52, v6);
        return;
      }

      v64 = *(v36 + 56);
      *&v133 = *(v36 + 48);
      *(&v133 + 1) = v64;

      AnyHashable.init<A>(_:)();
      v65 = [v17 userInfo];
      if (v65)
      {
        v66 = v65;
        v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = *(v67 + 16);
        v128 = v7;
        if (v68 && (v69 = sub_10003AECC(v136), (v70 & 1) != 0))
        {
          sub_10001F2EC(*(v67 + 56) + 32 * v69, &v133);
          sub_1000279C8(v136);

          v71 = swift_dynamicCast();
          v72 = v132[0];
          if (!v71)
          {
            v72 = 0;
          }

          v126 = v72;
          if (v71)
          {
            v73 = v132[1];
          }

          else
          {
            v73 = 0;
          }

          v124 = v73;
        }

        else
        {

          sub_1000279C8(v136);
          v126 = 0;
          v124 = 0;
        }

        v129 = v6;
        v74 = type metadata accessor for IdentityProofingPendingActionsWebService();
        memset(v136, 0, sizeof(v136));
        v137 = 0;
        v75 = swift_allocObject();
        *(v75 + 16) = 0;
        v131 = sub_100224C5C();
        v76 = [objc_allocWithZone(PKPaymentService) init];
        v134 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
        v135 = &off_10080C410;
        *&v133 = v76;
        v77 = sub_10026CB9C();
        v78 = sub_10026CBA0();
        type metadata accessor for IdentityProofingExpirationActionProvider();
        v79 = swift_allocObject();
        v80 = sub_10001F358(&v133, v79 + 16);
        *(v79 + 56) = v77;
        *(v79 + 64) = v78;
        v81 = sub_100224C60(v80);
        v82 = sub_100224C64();
        if (qword_100832CC0 != -1)
        {
          swift_once();
        }

        v127 = v81;
        v83 = qword_1008823E0;
        type metadata accessor for IdentityWatchProvisioningManagerFactory();
        v84 = swift_allocObject();
        v85 = qword_100832C40;
        v86 = v83;
        if (v85 != -1)
        {
          swift_once();
        }

        v87 = qword_100882300;
        v134 = v74;
        v135 = &off_10080B7E8;
        *&v133 = v75;
        v88 = type metadata accessor for IdentityProofingPendingActionsFlow();
        v89 = *(v88 + 48);
        v90 = *(v88 + 52);
        v91 = swift_allocObject();
        v92 = sub_10001F370(&v133, v74);
        v123 = &v123;
        v93 = *(*(v74 - 8) + 64);
        __chkstk_darwin(v92);
        v95 = (&v123 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v96 + 16))(v95);
        v97 = *v95;
        v132[3] = v74;
        v132[4] = &off_10080B7E8;
        v132[0] = v97;
        *(v91 + 16) = 0;
        v98 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
        v99 = type metadata accessor for WorkflowRecommendationResponse();
        (*(*(v99 - 8) + 56))(v91 + v98, 1, 1, v99);
        v100 = v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_paymentService;
        *v100 = 0u;
        *(v100 + 16) = 0u;
        *(v100 + 32) = 0;
        v101 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider) = 0;
        v102 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_staticWorkflow;
        v103 = type metadata accessor for IdentityProofingStaticWorkflow(0);
        (*(*(v103 - 8) + 56))(v91 + v102, 1, 1, v103);
        v104 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener) = 0;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig) = 0;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpIQSettings) = 0;
        swift_beginAccess();
        sub_100027A1C(v136, v100);
        swift_endAccess();
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) = 2;
        sub_100020260(v132, v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService);
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_userNotificationProvider) = v131;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_expirationActionProvider) = v79;
        v105 = *(v91 + v101);
        *(v91 + v101) = 0;

        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_cleanupProvider) = v127;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager) = v82;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_deviceInfo) = v86;
        if (qword_1008824A8)
        {
          v106 = *(qword_1008824A8 + 152);
          v107 = v106;
        }

        else
        {
          v106 = 0;
        }

        v108 = *(v91 + v104);
        *(v91 + v104) = v106;
        v109 = v86;

        if (qword_100832C18 != -1)
        {
          swift_once();
        }

        v110 = qword_100882220;
        v111 = type metadata accessor for IdentityBiometricStoreHelper();
        type metadata accessor for IdentityProofingCredentialProvider();
        v112 = swift_allocObject();
        v112[2] = 0;
        v112[3] = v110;
        v112[6] = v111;
        v112[7] = &off_10080A0A8;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_credentialProvider) = v112;
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_identityWatchProvisioningManagerFactory) = v84;

        *(v91 + 24) = sub_10003D358(&_swiftEmptyArrayStorage);
        *(v91 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository) = v87;

        defaultLogger()();

        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v115 = 138412290;
          v117 = *(v91 + v104);
          *(v115 + 4) = v117;
          *v116 = v117;
          v118 = v117;
          _os_log_impl(&_mh_execute_header, v113, v114, "IdentityProofingPendingActionsFlow: watchListener = %@", v115, 0xCu);
          sub_10000BE18(v116, &unk_100833B50, &unk_1006D8FB0);
        }

        (*(v128 + 8))(v130, v129);
        sub_10000BE18(v136, &unk_100833B60, &qword_1006BF9E0);
        sub_10000BB78(v132);
        sub_10000BB78(&v133);
        v119 = type metadata accessor for TaskPriority();
        v120 = v125;
        (*(*(v119 - 8) + 56))(v125, 1, 1, v119);
        v121 = swift_allocObject();
        v121[2] = 0;
        v121[3] = 0;
        v122 = v126;
        v121[4] = v91;
        v121[5] = v122;
        v121[6] = v124;
        sub_1003E653C(0, 0, v120, &unk_1006BF9F0, v121);

        return;
      }

LABEL_47:
      __break(1u);
      return;
    }
  }

  v53 = [v17 userInfo];
  if (v53)
  {
    v54 = v53;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v56 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

    if (v56)
    {
      v57 = v127;
      defaultLogger()();
      v58 = v56;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        *(v61 + 4) = v58;
        *v62 = v56;
        v63 = v58;
        _os_log_impl(&_mh_execute_header, v59, v60, "APS didReceiveMessage %@", v61, 0xCu);
        sub_10000BE18(v62, &unk_100833B50, &unk_1006D8FB0);

        v57 = v127;
      }

      else
      {
        v63 = v59;
        v59 = v58;
      }

      v52 = v57;
      goto LABEL_37;
    }
  }
}

uint64_t sub_100026CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_100026D14, 0, 0);
}

uint64_t sub_100026D14()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  type metadata accessor for OSTransaction();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100026E40;
  v5 = *(v0 + 16);

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v5, 0xD000000000000034, 0x80000001006FB9B0, &unk_1006BFA00, v2, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never);
}

uint64_t sub_100026E40()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (!v0)
  {
    v6 = *(v2 + 48);

    v7 = *(v4 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_100026F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = type metadata accessor for DIPError();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000270CC, 0, 0);
}

uint64_t sub_1000270CC()
{
  v1._countAndFlagsBits = 0x3635323263343465;
  v2._object = 0x80000001006FB9F0;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000003BLL;
  logMilestone(tag:description:)(v1, v2);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10002719C;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_10025AE6C(v5, v4, 0, 1);
}

uint64_t sub_10002719C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002730C, 0, 0);
  }

  else
  {

    v4 = v3[13];
    v5 = v3[10];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_10002730C()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v13 = v0[5];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v7, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v5, v13);
  (*(v3 + 8))(v2, v4);

  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

id sub_10002751C()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v11);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *(v0 + 16) = 0xD00000000000001ALL;
  *(v0 + 24) = 0x80000001006FB970;
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x80000001006FB990;
  *(v0 + 48) = 0xD000000000000011;
  *(v0 + 56) = 0x80000001006FB930;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_10001F8D4(0, &qword_100833B28, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_100027D54(&qword_100833B30, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100007224(&qword_100833B38, &qword_1006BF9C8);
  sub_100027898();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  *(v0 + 80) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = type metadata accessor for DIPPushNotificationManager();
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_1000277F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_100027898()
{
  result = qword_100833B40;
  if (!qword_100833B40)
  {
    sub_10000B870(&qword_100833B38, &qword_1006BF9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833B40);
  }

  return result;
}

id sub_1000278FC()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithClientID:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100027A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100833B60, &qword_1006BF9E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027A8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027AD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100026CF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100027B9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100027C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100026F50(a1, v4, v5, v6);
}

uint64_t sub_100027D54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027DC8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10001F8D4(0, &qword_100833B88, PDSRegistration_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100027E30(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  v10 = a1;
  v3 = *(v1 + 80);
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100028008;
    *(v4 + 24) = &v9;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100028054;
    *(v5 + 24) = v4;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1000280B4(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v7._object = 0x80000001006FBC30;
  v7._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v7);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for DIPPushNotificationManager();
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100028008()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_100025E80(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100028054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10002807C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000280B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000280E8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100028144()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100031898(v0, qword_100833C40);
  *sub_10003170C(v0, qword_100833C40) = 5;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

Swift::Int sub_1000281E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000282DC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000283C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000284BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002F608(*a1);
  *a2 = result;
  return result;
}

void sub_1000284EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746E6F7246746ELL;
  v4 = 0xE600000000000000;
  v5 = 0x6569666C6573;
  v6 = 0xED00006F65646956;
  v7 = 0x7373656E6576696CLL;
  if (v2 != 3)
  {
    v7 = 0x7261696C69787561;
    v6 = 0xEE006F6564695679;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0xEE006B636142746ELL;
  }

  if (*v1 <= 1u)
  {
    v8 = 0x656D75636F446469;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_1000285B8(char *a1@<X8>)
{
  v144 = a1;
  v2 = type metadata accessor for URLResourceValues();
  v129 = *(v2 - 8);
  v130 = v2;
  v3 = *(v129 + 64);
  __chkstk_darwin(v2);
  v131 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v141 = &v121 - v7;
  v8 = type metadata accessor for Logger();
  v148 = *(v8 - 8);
  v9 = *(v148 + 64);
  v10 = __chkstk_darwin(v8);
  v128 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v121 - v13;
  v15 = __chkstk_darwin(v12);
  v132 = &v121 - v16;
  v17 = __chkstk_darwin(v15);
  v136 = &v121 - v18;
  v19 = __chkstk_darwin(v17);
  v138 = &v121 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v121 - v22;
  __chkstk_darwin(v21);
  v25 = &v121 - v24;
  v26 = type metadata accessor for DIPError.Code();
  v139 = *(v26 - 8);
  v140 = v26;
  v27 = *(v139 + 64);
  __chkstk_darwin(v26);
  v143 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for URL();
  v149 = *(v29 - 8);
  v30 = *(v149 + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  __chkstk_darwin(v34);
  v37 = v1[5];
  if (v37 >> 60 == 15)
  {
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "No asset data is set, so there is nothing to write to disk", v40, 2u);
    }

    (*(v148 + 8))(v14, v8);
    (*(v149 + 56))(v144, 1, 1, v29);
  }

  else
  {
    v142 = v8;
    v137 = v36;
    v146 = &v121 - v35;
    v127 = v1;
    v41 = v1[4];
    v42 = objc_opt_self();
    v133 = v41;
    v134 = v37;
    sub_10000B8B8(v41, v37);
    v147 = [v42 defaultManager];
    v150[0] = 0;
    if (qword_100832B68 != -1)
    {
      swift_once();
    }

    v135 = v29;
    sub_10003170C(v29, qword_100881E80);
    URL.appendingPathComponent(_:isDirectory:)();
    URL.path.getter();
    v43 = String._bridgeToObjectiveC()();

    v44 = [v147 fileExistsAtPath:v43 isDirectory:v150];

    if (v44)
    {
      v45 = v142;
      if ((v150[0] & 1) == 0)
      {
        v151 = 0;
        v152 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v151 = 0xD000000000000014;
        v152 = 0x80000001006FC120;
        v81 = v146;
        v82._countAndFlagsBits = URL.path.getter();
        String.append(_:)(v82);

        v83._countAndFlagsBits = 0xD000000000000019;
        v83._object = 0x80000001006FC140;
        String.append(_:)(v83);
        (*(v139 + 104))(v143, enum case for DIPError.Code.cloudkitCannotSaveDataBeforeUploads(_:), v140);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10000BD94(v133, v134);
        (*(v149 + 8))(v81, v135);
        return;
      }

      defaultLogger()();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "uploads path exists", v48, 2u);
      }

      v49 = *(v148 + 8);
      v49(v25, v45);
    }

    else
    {
      defaultLogger()();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      v52 = os_log_type_enabled(v50, v51);
      v45 = v142;
      if (v52)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "uploads path doesn't exist. Creating the directory...", v53, 2u);
      }

      v49 = *(v148 + 8);
      v49(v23, v45);
      v54 = v146;
      URL.path.getter();
      v55 = String._bridgeToObjectiveC()();

      v151 = 0;
      v56 = [v147 createDirectoryAtPath:v55 withIntermediateDirectories:0 attributes:0 error:&v151];

      if (!v56)
      {
        v84 = v151;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10000BD94(v133, v134);
        (*(v149 + 8))(v54, v135);
        return;
      }

      v57 = v151;
    }

    v58 = v135;
    URL.path.getter();
    URL.init(fileURLWithPath:)();

    v59 = v127;
    v60 = v127[2];
    v61 = v127[3];
    v62 = v137;
    URL.appendingPathComponent(_:)();
    v63 = v149;
    v125 = *(v149 + 8);
    v126 = v149 + 8;
    v125(v33, v58);
    v64 = v141;
    v122 = *(v63 + 16);
    v123 = v63 + 16;
    v122(v141, v62, v58);
    v66 = *(v63 + 56);
    v65 = v63 + 56;
    v124 = v66;
    v66(v64, 0, 1, v58);
    v67 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
    swift_beginAccess();
    sub_10000BDA8(v64, v59 + v67);
    swift_endAccess();
    URL.path.getter();
    v68 = String._bridgeToObjectiveC()();

    LODWORD(v67) = [v147 fileExistsAtPath:v68];

    if (v67)
    {
      v69 = v138;
      defaultLogger()();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v149 = v65;
        v74 = v73;
        v151 = v73;
        *v72 = 136315138;
        v141 = v49;
        v75 = v58;
        v76 = v137;
        swift_beginAccess();
        v77 = URL.absoluteString.getter();
        v79 = sub_100141FE4(v77, v78, &v151);

        *(v72 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v70, v71, "Not writing asset to path %s because a file already exists at that path", v72, 0xCu);
        sub_10000BB78(v74);

        sub_10000BD94(v133, v134);
        (v141)(v138, v142);
        v80 = v125;
        v125(v146, v75);
      }

      else
      {

        sub_10000BD94(v133, v134);
        v49(v69, v45);
        v80 = v125;
        v125(v146, v58);
        v75 = v58;
        v76 = v137;
      }

      swift_beginAccess();
      v103 = v144;
      v122(v144, v76, v75);
      v124(v103, 0, 1, v75);
      v80(v76, v75);
    }

    else
    {
      v141 = v49;
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v85 = qword_100881E78;
      v86 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v86 + 54);
      v87 = v145;
      sub_100031B5C(&v86[4], &v151);
      v88 = v136;
      if (v87)
      {
        os_unfair_lock_unlock(v86 + 54);
        __break(1u);
        os_unfair_lock_unlock(v58 + 54);
        __break(1u);
      }

      else
      {
        os_unfair_lock_unlock(v86 + 54);
        v89 = v153;

        sub_100031918(&v151);
        v90 = *(v89 + 16);
        os_unfair_lock_lock((v90 + 24));
        v91 = *(v90 + 16);
        v92 = __OFADD__(v91, 1);
        v93 = v91 + 1;
        if (v92)
        {
          __break(1u);
        }

        *(v90 + 16) = v93;
        os_unfair_lock_unlock((v90 + 24));

        defaultLogger()();
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v149 = v65;
          v96 = swift_slowAlloc();
          *v96 = 134217984;
          v97 = *(v85 + 16);
          os_unfair_lock_lock(v97 + 54);
          sub_100031B5C(&v97[4], &v151);
          os_unfair_lock_unlock(v97 + 54);
          v98 = v153;

          sub_100031918(&v151);
          v99 = *(v98 + 16);
          os_unfair_lock_lock((v99 + 24));
          v100 = *(v99 + 16);
          os_unfair_lock_unlock((v99 + 24));

          *(v96 + 4) = v100;
          _os_log_impl(&_mh_execute_header, v94, v95, "Current upload count: %ld", v96, 0xCu);

          v65 = v149;
        }

        v101 = v148 + 8;
        (v141)(v88, v142);
        v102 = v133;
        Data.write(to:options:)();
        v148 = v101;
        v104 = v132;
        defaultLogger()();
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v149 = v65;
          v110 = v109;
          v151 = v109;
          *v108 = 136315138;
          swift_beginAccess();
          v111 = URL.path.getter();
          v113 = sub_100141FE4(v111, v112, &v151);

          *(v108 + 4) = v113;
          _os_log_impl(&_mh_execute_header, v105, v106, "Writing the document to fileURL %s", v108, 0xCu);
          sub_10000BB78(v110);

          v102 = v133;

          (v141)(v132, v142);
        }

        else
        {

          (v141)(v104, v142);
        }

        v114 = v131;
        URLResourceValues.init()();
        URLResourceValues.isExcludedFromBackup.setter();
        swift_beginAccess();
        URL.setResourceValues(_:)();
        swift_endAccess();

        sub_10000BD94(v102, v134);
        (*(v129 + 8))(v114, v130);
        v115 = v135;
        v116 = v125;
        v125(v146, v135);
        v117 = v127[4];
        v118 = v127[5];
        *(v127 + 2) = xmmword_1006BF650;
        sub_10000BD94(v117, v118);
        v119 = v144;
        v120 = v137;
        v122(v144, v137, v115);
        v124(v119, 0, 1, v115);
        v116(v120, v115);
      }
    }
  }
}

void sub_100029A54()
{
  v1 = type metadata accessor for Logger();
  v88 = *(v1 - 8);
  v89 = v1;
  v2 = *(v88 + 64);
  v3 = __chkstk_darwin(v1);
  v82 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v79 - v6;
  v8 = __chkstk_darwin(v5);
  v86 = (&v79 - v9);
  __chkstk_darwin(v8);
  v87 = &v79 - v10;
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v84 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v79 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v79 - v23;
  v25 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
  swift_beginAccess();
  v85 = v0;
  v83 = v25;
  sub_10000BBC4(v0 + v25, v16, &unk_100844540, &unk_1006BFBC0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000BE18(v16, &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Asset is not on disk so there is nothing to delete", v28, 2u);
    }

    (*(v88 + 8))(v7, v89);
    return;
  }

  (*(v18 + 32))(v24, v16, v17);
  defaultLogger()();
  (*(v18 + 16))(v22, v24, v17);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v91[0] = v79;
    *v31 = 136315138;
    v32 = URL.absoluteString.getter();
    v80 = v24;
    v33 = v17;
    v35 = v34;
    v81 = *(v18 + 8);
    v81(v22, v33);
    v36 = sub_100141FE4(v32, v35, v91);
    v17 = v33;
    v24 = v80;

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Deleting asset file at %s", v31, 0xCu);
    sub_10000BB78(v79);
  }

  else
  {

    v81 = *(v18 + 8);
    v81(v22, v17);
  }

  v37 = v87;
  v87 = *(v88 + 8);
  (v87)(v37, v89);
  v38 = v18;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v39 = qword_100881E78;
  v40 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v40 + 54);
  v41 = v90;
  sub_1000318FC(&v40[4], v91);
  v90 = v41;
  v42 = v40 + 54;
  if (v41)
  {
    goto LABEL_23;
  }

  os_unfair_lock_unlock(v42);
  v43 = v92;

  sub_100031918(v91);
  v44 = *(v43 + 16);
  os_unfair_lock_lock((v44 + 24));
  v45 = *(v44 + 16);
  v46 = __OFSUB__(v45, 1);
  v47 = v45 - 1;
  if (v46)
  {
    __break(1u);
  }

  *(v44 + 16) = v47;
  os_unfair_lock_unlock((v44 + 24));

  defaultLogger()();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v48, v49))
  {
    goto LABEL_15;
  }

  v80 = v17;
  v50 = v24;
  v51 = swift_slowAlloc();
  *v51 = 134217984;
  v52 = *(v39 + 16);
  os_unfair_lock_lock(v52 + 54);
  v53 = v90;
  sub_100031B5C(&v52[4], v91);
  v90 = v53;
  v42 = v52 + 54;
  if (v53)
  {
LABEL_23:
    os_unfair_lock_unlock(v42);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v42);
  v54 = v92;

  sub_100031918(v91);
  v55 = *(v54 + 16);
  os_unfair_lock_lock((v55 + 24));
  v56 = *(v55 + 16);
  os_unfair_lock_unlock((v55 + 24));

  *(v51 + 4) = v56;
  _os_log_impl(&_mh_execute_header, v48, v49, "Current upload count: %ld", v51, 0xCu);

  v24 = v50;
  v17 = v80;
LABEL_15:

  v57 = v88 + 8;
  (v87)(v86, v89);
  v58 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v59);
  v61 = v60;
  v91[0] = 0;
  v62 = [v58 removeItemAtURL:v60 error:v91];

  if (v62)
  {
    v63 = v91[0];
    v81(v24, v17);
  }

  else
  {
    v88 = v57;
    v64 = v91[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v90 = 0;
    v65 = v82;
    defaultLogger()();
    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v80 = v24;
      v69 = v68;
      v86 = swift_slowAlloc();
      v91[0] = v86;
      *v69 = 136315138;
      swift_getErrorValue();
      v70 = Error.localizedDescription.getter();
      v72 = v38;
      v73 = v17;
      v74 = sub_100141FE4(v70, v71, v91);

      *(v69 + 4) = v74;
      v17 = v73;
      v38 = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "error occurred during removal of stored document %s. Not a fatal error as the proofing flow can continue.", v69, 0xCu);
      sub_10000BB78(v86);

      (v87)(v82, v89);
      v75 = v80;
    }

    else
    {

      (v87)(v65, v89);
      v75 = v24;
    }

    v81(v75, v17);
  }

  v76 = v84;
  (*(v38 + 56))(v84, 1, 1, v17);
  v77 = v85;
  v78 = v83;
  swift_beginAccess();
  sub_10000BDA8(v76, v77 + v78);
  swift_endAccess();
}

uint64_t sub_10002A3A4()
{
  v1 = v0[3];

  sub_10000BD94(v0[4], v0[5]);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL, &unk_100844540, &unk_1006BFBC0);
  sub_10000BD94(*(v0 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData), *(v0 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData + 8));
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10002A464()
{
  sub_10002A514();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002A514()
{
  if (!qword_100833C98)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100833C98);
    }
  }
}

char *sub_10002A56C()
{
  v0 = type metadata accessor for UploadsCloudContainer(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10002A5F8();
  qword_100881E48 = result;
  return result;
}

uint64_t sub_10002A5AC()
{
  sub_100007224(&qword_1008341D8, &unk_1006BFBE0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  off_100833C58 = result;
  return result;
}

char *sub_10002A5F8()
{
  v23 = type metadata accessor for Logger();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name);
  *v5 = 0x7364616F6C7075;
  v5[1] = 0xE700000000000000;
  v6 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDProd);
  *v6 = 0xD000000000000019;
  v6[1] = 0x80000001006FBD90;
  v7 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDNonProd);
  *v7 = 0xD000000000000021;
  v7[1] = 0x80000001006FBDB0;
  v8 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_networkAttributionBundleID);
  *v8 = 0xD000000000000012;
  v8[1] = 0x80000001006FBDE0;
  v9 = [objc_opt_self() standardUserDefaults];
  v10._countAndFlagsBits = static DaemonDefaultsKeys.useCloudKitUploadsNonProd.getter();
  v11 = NSUserDefaults.internalBool(forKey:)(v10);

  if (v11)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Using nonprod uploads CloudKit container due to user defaults setting", v14, 2u);
    }

    (*(v1 + 8))(v4, v23);
    v15 = *v7;
    v16 = v7[1];
  }

  else
  {
    v15 = *v6;
    v16 = v6[1];
  }

  v17 = *v5;
  v18 = v5[1];
  v19 = *v8;
  v20 = v8[1];

  return sub_10000C218(v17, v18, v15, v16, v19, v20);
}

char *sub_10002A86C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name);
  *v11 = 0x7364616F6C7075;
  v11[1] = 0xE700000000000000;
  v34 = v11;
  v12 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDProd);
  *v12 = 0xD000000000000019;
  v12[1] = 0x80000001006FBD90;
  v13 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDNonProd);
  *v13 = 0xD000000000000021;
  v13[1] = 0x80000001006FBDB0;
  v14 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_networkAttributionBundleID);
  *v14 = 0xD000000000000012;
  v14[1] = 0x80000001006FBDE0;
  v15 = 0x80000001006FC100;
  v16 = 0xD000000000000010;
  if (a1 == 1)
  {
    v16 = 0xD000000000000021;
    v15 = 0x80000001006FBDB0;
  }

  if (a1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0xD000000000000019;
  }

  if (a1)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0x80000001006FBD90;
  }

  v19 = [objc_opt_self() standardUserDefaults];
  v20._countAndFlagsBits = static DaemonDefaultsKeys.useCloudKitUploadsNonProd.getter();
  v21 = NSUserDefaults.internalBool(forKey:)(v20);

  if (v21)
  {

    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Internal setting for non-prod container enabled, using certification Uploads Container", v24, 2u);
    }

    (*(v35 + 8))(v10, v36);
    v17 = 0xD000000000000021;
    v18 = 0x80000001006FBDB0;
  }

  defaultLogger()();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100141FE4(v17, v18, &v37);
    _os_log_impl(&_mh_execute_header, v25, v26, "Initializing UploadsCloudContainer with Container ID: %s", v27, 0xCu);
    sub_10000BB78(v28);
  }

  (*(v35 + 8))(v8, v36);
  v29 = *v34;
  v30 = v34[1];
  v31 = *v14;
  v32 = v14[1];

  return sub_10000C218(v29, v30, v17, v18, v31, v32);
}

uint64_t sub_10002AC64(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DaemonDefaultsKeys.CloudContainerDefaultsKeys();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  v8._countAndFlagsBits = static DaemonDefaultsKeys.useCloudKitUploadsNonProd.getter();
  v9 = NSUserDefaults.internalBool(forKey:)(v8);

  if (v9)
  {
    v10 = static DaemonDefaultsKeys.uploadsNonprodCloudContainer.getter();
  }

  else
  {
    v10 = static DaemonDefaultsKeys.uploadsCloudContainer.getter();
  }

  v11 = a1(v10);
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_10002ADA0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v24 - v17;
  v24[1] = *(v1 + 40);
  static DispatchTime.now()();
  if (qword_100832B48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for DispatchTimeInterval();
  sub_10003170C(v19, qword_100833C40);
  + infix(_:_:)();
  v20 = *(v12 + 8);
  v20(v16, v11);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = a1;
  aBlock[4] = sub_10003177C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD770;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000317EC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_100031834();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v6, v3);
  (*(v25 + 8))(v10, v26);
  v20(v18, v11);
}

uint64_t sub_10002B194(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_100141FE4(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to warm up uploads CloudKit container due to error %{public}s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_10002B384(void (*a1)(void), void *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char a7, int a8)
{
  v235 = a8;
  LOBYTE(v8) = a7;
  v244 = a6;
  v236 = a5;
  v266 = a4;
  v245 = a1;
  v222 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  v220 = *(v222 - 8);
  v11 = *(v220 + 64);
  v12 = __chkstk_darwin(v222);
  v223 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v221 = &v207 - v14;
  v15 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v250 = &v207 - v17;
  v18 = sub_100007224(&unk_100834140, &qword_1006DC180);
  v231 = *(v18 - 8);
  v19 = *(v231 + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v243 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = v21;
  __chkstk_darwin(v20);
  v249 = &v207 - v22;
  v252 = type metadata accessor for Date();
  v240 = *(v252 - 8);
  v23 = *(v240 + 64);
  v24 = __chkstk_darwin(v252);
  v233 = &v207 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v238 = &v207 - v27;
  v230 = v28;
  __chkstk_darwin(v26);
  v248 = &v207 - v29;
  v30 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v261 = &v207 - v32;
  v262 = type metadata accessor for URL();
  v33 = *(v262 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v262);
  v251 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v207 - v37;
  v39 = type metadata accessor for DIPError.Code();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = &v207 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for Logger();
  v242 = *(v263 - 8);
  v44 = *(v242 + 64);
  v45 = __chkstk_darwin(v263);
  v247 = &v207 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v227 = &v207 - v48;
  v49 = __chkstk_darwin(v47);
  v237 = &v207 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v207 - v52;
  v54 = __chkstk_darwin(v51);
  v254 = &v207 - v55;
  v56 = __chkstk_darwin(v54);
  v246 = &v207 - v57;
  v58 = __chkstk_darwin(v56);
  v226 = &v207 - v59;
  __chkstk_darwin(v58);
  v61 = &v207 - v60;
  v234 = a3;
  sub_10000BBC4(a3, &v271, &qword_100834128, &unk_1006DDA60);
  v265 = v38;
  if (!v272)
  {
    sub_10000BE18(&v271, &qword_100834128, &unk_1006DDA60);
LABEL_8:
    v69 = swift_allocObject();
    v241 = v69;
    *(v69 + 16) = _swiftEmptyArrayStorage;
    v70 = (v69 + 16);
    v71 = v266;
    v216 = v266 >> 62;
    if (v266 >> 62)
    {
      goto LABEL_102;
    }

    v72 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
    v228 = a2;
    v267 = v53;
    v268 = v72;
    if (v72)
    {
      v73 = 0;
      v74 = v71 & 0xC000000000000001;
      a2 = (v71 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v74)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v53 = (v73 + 1);
          if (__OFADD__(v73, 1))
          {
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            v72 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_10;
          }
        }

        else
        {
          if (v73 >= a2[2])
          {
            goto LABEL_100;
          }

          v38 = *(v71 + 8 * v73 + 32);

          v53 = (v73 + 1);
          if (__OFADD__(v73, 1))
          {
            goto LABEL_99;
          }
        }

        v75 = sub_10002FA7C(v38);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v269 = *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v73;
        v76 = v53 == v268;
        v71 = v266;
        v53 = v267;
        v38 = v265;
      }

      while (!v76);
    }

    v77 = [objc_allocWithZone(CKOperationConfiguration) init];
    v78 = v77;
    if (v244)
    {
      v79 = 25;
    }

    else
    {
      v79 = 17;
    }

    [v77 setQualityOfService:{v79, v207}];
    v217 = v78;
    [v78 setAllowsCellularAccess:v8 & 1];
    v229 = os_transaction_create();
    v218 = sub_10003E0B4(_swiftEmptyArrayStorage);
    v253 = [objc_opt_self() defaultManager];
    v70 = v268;
    if (v268)
    {
      v8 = 0;
      v219 = 0;
      v260 = v71 & 0xC000000000000001;
      v255 = v71 & 0xFFFFFFFFFFFFFF8;
      v259 = (v33 + 48);
      v258 = (v33 + 32);
      v225 = NSFileCreationDate;
      v239 = (v240 + 56);
      v212 = (v240 + 48);
      v210 = (v240 + 32);
      v208 = NSFileSize;
      v207 = (v240 + 16);
      v209 = (v240 + 8);
      v257 = (v33 + 8);
      v264 = (v242 + 8);
      v224 = (v33 + 16);
      a2 = &unk_1006BFBC0;
      *&v80 = 136315138;
      v256 = v80;
      *&v80 = 136315650;
      v211 = v80;
      v81 = v262;
      while (1)
      {
        if (v260)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v89 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v8 >= *(v255 + 16))
          {
            goto LABEL_101;
          }

          v33 = *(v71 + 8 * v8 + 32);

          v89 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }
        }

        v269 = v89;
        v90 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        swift_beginAccess();
        v91 = v33 + v90;
        v92 = v261;
        sub_10000BBC4(v91, v261, &unk_100844540, &unk_1006BFBC0);
        if ((*v259)(v92, 1, v81) != 1)
        {
          break;
        }

        sub_10000BE18(v92, &unk_100844540, &unk_1006BFBC0);
        defaultLogger()();

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v93, v94))
        {

          (*v264)(v53, v263);
          v81 = v262;
          goto LABEL_61;
        }

        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v273 = v83;
        *v82 = v256;
        v84 = *(v33 + 16);
        v85 = *(v33 + 24);

        v86 = sub_100141FE4(v84, v85, &v273);
        v53 = v267;

        *(v82 + 4) = v86;
        v87 = v268;
        _os_log_impl(&_mh_execute_header, v93, v94, "No file url is available for asset %s", v82, 0xCu);
        sub_10000BB78(v83);
        v71 = v266;

        v38 = v265;

        v70 = v87;
        (*v264)(v53, v263);
        v81 = v262;
LABEL_29:
        a2 = &unk_1006BFBC0;
        v88 = v269;
LABEL_30:
        ++v8;
        if (v88 == v70)
        {
          goto LABEL_83;
        }
      }

      (*v258)(v38, v92, v81);
      v95 = *(v33 + 48);
      if (v95 == 5)
      {
        v96 = v254;
        defaultLogger()();

        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v97, v98))
        {

          (*v264)(v96, v263);
          v117 = *v257;
          goto LABEL_59;
        }

        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v273 = v100;
        *v99 = v256;
        v101 = *(v33 + 16);
        v102 = *(v33 + 24);

        v103 = sub_100141FE4(v101, v102, &v273);

        *(v99 + 4) = v103;
        v104 = v268;
        _os_log_impl(&_mh_execute_header, v97, v98, "No asset type is available for asset %s", v99, 0xCu);
        sub_10000BB78(v100);
        v71 = v266;

        v38 = v265;

        v70 = v104;
        (*v264)(v96, v263);
        v105 = *v257;
        goto LABEL_53;
      }

      URL.path.getter();
      v106 = v38;
      v107 = String._bridgeToObjectiveC()();

      *&v273 = 0;
      v108 = [v253 attributesOfItemAtPath:v107 error:{&v273, v207}];

      v109 = v273;
      if (!v108)
      {
        v127 = v273;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v128 = v247;
        defaultLogger()();
        v129 = v251;
        v130 = v262;
        (*v224)(v251, v106, v262);

        swift_errorRetain();
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v131, v132))
        {

          v33 = *v257;
          (*v257)(v129, v130);
          (*v264)(v128, v263);
          (v33)(v106, v130);
          v71 = v266;
          v81 = v130;
          v38 = v106;
          goto LABEL_60;
        }

        v133 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        *&v273 = v215;
        *v133 = v211;
        v214 = v132;
        v134 = *(v33 + 16);
        v135 = *(v33 + 24);

        v136 = sub_100141FE4(v134, v135, &v273);

        *(v133 + 4) = v136;
        *(v133 + 12) = 2080;
        v137 = URL.path.getter();
        v139 = v138;
        v140 = *v257;
        v213 = v131;
        v140(v251, v130);
        v141 = sub_100141FE4(v137, v139, &v273);

        *(v133 + 14) = v141;
        *(v133 + 22) = 2080;
        swift_getErrorValue();
        v142 = Error.localizedDescription.getter();
        v144 = sub_100141FE4(v142, v143, &v273);

        *(v133 + 24) = v144;
        v145 = v213;
        _os_log_impl(&_mh_execute_header, v213, v214, "Skipping analytics because no attributes are available for %s at url %s, error %s", v133, 0x20u);
        swift_arrayDestroy();

        v70 = v268;

        (*v264)(v247, v263);
        v38 = v265;
        v140(v265, v130);
        v71 = v266;
        v81 = v130;
        goto LABEL_54;
      }

      type metadata accessor for FileAttributeKey(0);
      sub_1000317EC(&unk_1008341B0, type metadata accessor for FileAttributeKey);
      v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v109;

      if (*(v110 + 16) && (v112 = sub_10004062C(v225), (v113 & 1) != 0))
      {
        sub_10001F2EC(*(v110 + 56) + 32 * v112, &v273);
        v114 = v250;
        v115 = v252;
        v116 = swift_dynamicCast();
        (*v239)(v114, v116 ^ 1u, 1, v115);
        if ((*v212)(v114, 1, v115) != 1)
        {
          (*v210)(v238, v114, v115);
          if (*(v110 + 16) && (v146 = sub_10004062C(v208), (v147 & 1) != 0))
          {
            sub_10001F2EC(*(v110 + 56) + 32 * v146, &v273);

            sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v148 = v270;
              v149 = [v270 unsignedLongLongValue];
              v150 = __CFADD__(v219, v149);
              v219 += v149;
              if (v150)
              {
                goto LABEL_105;
              }

              v151 = v149;
              v153 = *(v33 + 16);
              v152 = *(v33 + 24);
              v154 = v222;
              v155 = v221;
              (*v207)(&v221[*(v222 + 20)], v238, v252);
              *v155 = v95;
              *&v155[*(v154 + 24)] = v151;
              sub_1000305E8(v155, v223);

              v156 = v218;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v273 = v156;
              v158 = sub_10003ADCC(v153, v152);
              v160 = *(v156 + 16);
              v161 = (v159 & 1) == 0;
              v162 = __OFADD__(v160, v161);
              v163 = v160 + v161;
              if (v162)
              {
                goto LABEL_106;
              }

              v164 = v159;
              v81 = v262;
              if (*(v156 + 24) >= v163)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_76;
                }

                v176 = v158;
                sub_10016FDA8();
                v158 = v176;
                v53 = v267;
                if ((v164 & 1) == 0)
                {
                  goto LABEL_79;
                }

LABEL_77:
                v175 = v158;

                v218 = v273;
                sub_10003064C(v223, *(v273 + 56) + *(v220 + 72) * v175);

                (*v209)(v238, v252);
                v38 = v265;
                (*v257)(v265, v81);
              }

              else
              {
                sub_100166DEC(v163, isUniquelyReferenced_nonNull_native);
                v158 = sub_10003ADCC(v153, v152);
                if ((v164 & 1) != (v165 & 1))
                {
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

LABEL_76:
                v53 = v267;
                if (v164)
                {
                  goto LABEL_77;
                }

LABEL_79:
                v177 = v273;
                *(v273 + 8 * (v158 >> 6) + 64) |= 1 << v158;
                v178 = (v177[6] + 16 * v158);
                *v178 = v153;
                v178[1] = v152;
                sub_1000305E8(v223, v177[7] + *(v220 + 72) * v158);

                (*v209)(v238, v252);
                v38 = v265;
                (*v257)(v265, v81);
                v179 = v177[2];
                v162 = __OFADD__(v179, 1);
                v180 = v179 + 1;
                if (v162)
                {
                  goto LABEL_107;
                }

                v218 = v177;
                v177[2] = v180;
              }

              v71 = v266;
              v70 = v268;
              v88 = v269;
              a2 = &unk_1006BFBC0;
              goto LABEL_30;
            }
          }

          else
          {
          }

          v166 = v226;
          defaultLogger()();

          v167 = Logger.logObject.getter();
          v168 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v167, v168))
          {

            (*v264)(v166, v263);
            (*v209)(v238, v252);
LABEL_58:
            v117 = *v257;
            v38 = v265;
LABEL_59:
            v81 = v262;
            v117(v38, v262);
LABEL_60:
            v53 = v267;
LABEL_61:
            a2 = &unk_1006BFBC0;
            v70 = v268;
            v88 = v269;
            goto LABEL_30;
          }

          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          *&v273 = v170;
          *v169 = v256;
          v171 = *(v33 + 16);
          v172 = *(v33 + 24);

          v173 = sub_100141FE4(v171, v172, &v273);

          *(v169 + 4) = v173;
          v174 = v268;
          _os_log_impl(&_mh_execute_header, v167, v168, "No file size available for asset %s", v169, 0xCu);
          sub_10000BB78(v170);
          v71 = v266;

          v70 = v174;
          (*v264)(v166, v263);
          (*v209)(v238, v252);
          goto LABEL_52;
        }
      }

      else
      {

        v114 = v250;
        (*v239)(v250, 1, 1, v252);
      }

      sub_10000BE18(v114, &unk_100849400, &unk_1006BFBB0);
      v118 = v246;
      defaultLogger()();

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v119, v120))
      {

        (*v264)(v118, v263);
        goto LABEL_58;
      }

      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v273 = v122;
      *v121 = v256;
      v123 = *(v33 + 16);
      v124 = *(v33 + 24);

      v125 = sub_100141FE4(v123, v124, &v273);

      *(v121 + 4) = v125;
      v126 = v268;
      _os_log_impl(&_mh_execute_header, v119, v120, "No attributes available for asset %s", v121, 0xCu);
      sub_10000BB78(v122);
      v71 = v266;

      v70 = v126;
      (*v264)(v118, v263);
LABEL_52:
      v105 = *v257;
      v38 = v265;
LABEL_53:
      v81 = v262;
      v105(v38, v262);
LABEL_54:
      v53 = v267;
      goto LABEL_29;
    }

    v219 = 0;
LABEL_83:
    Date.init()();
    type metadata accessor for NetworkMonitor();
    static NetworkMonitor.shared.getter();
    NetworkMonitor.currentPath.getter();

    v181 = [objc_opt_self() standardUserDefaults];
    v182._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceCloudkitPartialRecordsFailure.getter();
    v183 = NSUserDefaults.internalBool(forKey:)(v182);

    v184 = v252;
    if (v183)
    {
      defaultLogger()();
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *v187 = 0;
        _os_log_impl(&_mh_execute_header, v185, v186, "forceCloudkitPartialRecordsFailure internal setting enabled", v187, 2u);
      }

      v188 = *(v242 + 8);
      v188(v237, v263);
      if (!v216)
      {
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
        {
          goto LABEL_97;
        }

LABEL_90:
        defaultLogger()();
        v189 = Logger.logObject.getter();
        v190 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          *v191 = 0;
          _os_log_impl(&_mh_execute_header, v189, v190, "Number of assets are greater than 1, will remove the first item from the disk to simulate partial failure.", v191, 2u);
        }

        v188(v227, v263);
        if (v268)
        {
          if ((v71 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            sub_100029A54();
          }

          else
          {
            if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
            }

            v192 = *(v71 + 32);

            sub_100029A54();
          }
        }

        goto LABEL_97;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        goto LABEL_90;
      }
    }

LABEL_97:
    v269 = *(v241 + 16);
    sub_10000BBC4(v234, &v273, &qword_100834128, &unk_1006DDA60);
    sub_10000BBC4(v249, v243, &unk_100834140, &qword_1006DC180);
    v193 = v240;
    v194 = v233;
    (*(v240 + 16))(v233, v248, v184);
    v195 = (*(v231 + 80) + 104) & ~*(v231 + 80);
    v196 = v71;
    v197 = (v232 + *(v193 + 80) + v195) & ~*(v193 + 80);
    v268 = (v197 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
    v198 = (v197 + v230 + 23) & 0xFFFFFFFFFFFFFFF8;
    v199 = swift_allocObject();
    *(v199 + 16) = v229;
    v200 = v274;
    *(v199 + 24) = v273;
    *(v199 + 40) = v200;
    v201 = v245;
    *(v199 + 56) = v275;
    *(v199 + 64) = v201;
    v202 = v236;
    *(v199 + 72) = v228;
    *(v199 + 80) = v202;
    *(v199 + 88) = v196;
    *(v199 + 96) = v241;
    sub_10003041C(v243, v199 + v195);
    (*(v193 + 32))(v199 + v197, v194, v184);
    v203 = v269;
    v204 = v199 + v268;
    *v204 = v218;
    *(v204 + 8) = v244 & 1;
    v205 = v199 + v198;
    *v205 = v219;
    *(v205 + 8) = v235 & 1;

    swift_unknownObjectRetain();

    v206 = v217;
    sub_10001B6FC(v203, 5, v217, sub_10003048C, v199);
    swift_unknownObjectRelease();

    sub_10000BE18(v249, &unk_100834140, &qword_1006DC180);
    (*(v193 + 8))(v248, v184);
  }

  sub_10001F358(&v271, &v273);
  v62 = *(*sub_10000BA08(&v273, *(&v274 + 1)) + 16);
  os_unfair_lock_lock((v62 + 20));
  v63 = *(v62 + 16);
  os_unfair_lock_unlock((v62 + 20));
  if (v63 != 1)
  {
    sub_10000BB78(&v273);
    v38 = v265;
    goto LABEL_8;
  }

  defaultLogger()();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "saveAssets: cancelToken.isCanceled is true, completing with canceled error code.", v66, 2u);
  }

  (*(v242 + 8))(v61, v263);
  (*(v40 + 104))(v43, enum case for DIPError.Code.cloudkitCancelRequestedByClient(_:), v39);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError);
  v67 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v245(v67);

  return sub_10000BB78(&v273);
}

uint64_t sub_10002ED64(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (a2)(0);
  }

  v19 = a3;
  v20 = a2;
  (*(v7 + 104))(v10, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError);
  v16 = swift_allocError();
  (*(v12 + 16))(v17, v15, v11);
  v20(v16);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10002F014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6)
{
  v23 = a5;
  v11 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  (*(v12 + 16))(&v22[-v14], a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  sub_10000BBC4(a6, v24, &qword_100834128, &unk_1006DDA60);
  v18 = swift_allocObject();
  v19 = v24[1];
  *(v18 + 16) = v24[0];
  *(v18 + 32) = v19;
  *(v18 + 48) = v25;
  *(v18 + 56) = a3;
  *(v18 + 64) = a2;
  *(v18 + 72) = a4;
  *(v18 + 73) = v23;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10002F6E8;
  *(v20 + 24) = v17;

  sub_10000CCB8(3, sub_10002F7B4, v18, sub_10002F804, v20);
}

uint64_t sub_10002F244(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100007224(&qword_100834120, &unk_1006BFBA0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100007224(&qword_100834120, &unk_1006BFBA0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002F2B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDProd + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDNonProd + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_networkAttributionBundleID + 8);
}

uint64_t sub_10002F328()
{
  v0 = sub_10001EBD4();
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDProd + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDNonProd + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_networkAttributionBundleID + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UploadAsset.AssetType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UploadAsset.AssetType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002F5B4()
{
  result = qword_100834118;
  if (!qword_100834118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834118);
  }

  return result;
}

unint64_t sub_10002F608(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8990, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002F654()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002F6E8(uint64_t a1)
{
  v2 = *(*(sub_100007224(&qword_100834120, &unk_1006BFBA0) - 8) + 80);

  return sub_10002F244(a1);
}

uint64_t sub_10002F764()
{
  if (v0[5])
  {
    sub_10000BB78(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return _swift_deallocObject(v0, 75, 7);
}

uint64_t sub_10002F7CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F82C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F864()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10002F89C(Swift::UInt a1)
{
  if (qword_100832B58 != -1)
  {
    swift_once();
  }

  v2 = off_100833C58;
  os_unfair_lock_lock(off_100833C58 + 6);
  v3 = *(v2 + 2);
  if (!*(v3 + 16) || (v4 = sub_10003B2F0(a1), (v5 & 1) == 0))
  {
    os_unfair_lock_unlock(v2 + 6);
LABEL_8:
    os_unfair_lock_lock(v2 + 6);
    v7 = type metadata accessor for UploadsCloudContainer(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v6 = sub_10002A86C(a1);

    v10 = *(v2 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 2);
    *(v2 + 2) = 0x8000000000000000;
    sub_10016D25C(v6, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 2) = v13;
    os_unfair_lock_unlock(v2 + 6);
    return v6;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  os_unfair_lock_unlock(v2 + 6);
  if (!v6)
  {
    goto LABEL_8;
  }

  return v6;
}

id sub_10002F9BC()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_10002FA7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError.Code();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  __chkstk_darwin(v15);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData + 8);
  if (v18 >> 60 == 15)
  {
    v45 = v14;
    sub_10001F8D4(0, &unk_1008341C0, CKRecord_ptr);
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = v11;
    v22 = objc_allocWithZone(CKRecordID);
    v23 = String._bridgeToObjectiveC()();
    v24 = v22;
    v11 = v21;
    v2 = v1;
    v25 = [v24 initWithRecordName:v23];

    v26._countAndFlagsBits = 0x315F7465737341;
    v26._object = 0xE700000000000000;
    isa = CKRecord.init(recordType:recordID:)(v26, v25).super.isa;
    goto LABEL_3;
  }

  v32 = *(a1 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData);
  v29 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_10000B8B8(v32, v18);
  v33 = sub_10002F9BC();
  if (v1)
  {
LABEL_9:
    sub_10000BD94(v32, v18);
    return v29;
  }

  v29 = v33;
  isa = [objc_allocWithZone(CKRecord) initWithCoder:v33];
  if (!isa)
  {
    (*(v46 + 104))(v48, enum case for DIPError.Code.invalidStoredData(_:), v47);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_9;
  }

  v45 = v14;

  sub_10000BD94(v32, v18);
LABEL_3:
  v27 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
  swift_beginAccess();
  sub_10000BBC4(a1 + v27, v9, &unk_100844540, &unk_1006BFBC0);
  v28 = *(v11 + 48);
  if (v28(v9, 1, v10) == 1)
  {
    sub_10000BE18(v9, &unk_100844540, &unk_1006BFBC0);
    v9 = v54;
    v29 = a1;
    sub_1000285B8(v54);
    if (v2)
    {
LABEL_7:

      return v29;
    }

    v30 = v28(v9, 1, v10);
    v31 = v45;
    if (v30 == 1)
    {
      sub_10000BE18(v9, &unk_100844540, &unk_1006BFBC0);
      (*(v46 + 104))(v48, enum case for DIPError.Code.unexpectedDaemonState(_:), v47);
      v29 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_7;
    }
  }

  else
  {
    v31 = v45;
  }

  (*(v11 + 32))(v31, v9, v10);
  v34 = objc_allocWithZone(CKAsset);
  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  v38 = [v34 initWithFileURL:v36];

  v39 = v38;
  v29 = isa;
  CKRecord.subscript.setter();
  v40 = *(a1 + 48);
  if (v40 == 5)
  {
    (*(v11 + 8))(v31, v10);
  }

  else
  {
    if (*(a1 + 48) <= 1u)
    {
      if (*(a1 + 48))
      {
        v41 = 0xEE006B636142746ELL;
      }

      else
      {
        v41 = 0xEF746E6F7246746ELL;
      }

      v42 = 0x656D75636F446469;
    }

    else if (v40 == 2)
    {
      v41 = 0xE600000000000000;
      v42 = 0x6569666C6573;
    }

    else if (v40 == 3)
    {
      v41 = 0xED00006F65646956;
      v42 = 0x7373656E6576696CLL;
    }

    else
    {
      v41 = 0xEE006F6564695679;
      v42 = 0x7261696C69787561;
    }

    v52 = &type metadata for String;
    v53 = &protocol witness table for String;
    v50 = v42;
    v51 = v41;
    sub_10001F8D4(0, &unk_1008341C0, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.setter();

    (*(v11 + 8))(v31, v10);
  }

  return v29;
}

uint64_t sub_100030224()
{
  v1 = *(sub_100007224(&unk_100834140, &qword_1006DC180) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0[2];
  swift_unknownObjectRelease();
  if (v0[6])
  {
    sub_10000BB78(v0 + 3);
  }

  v10 = v0[9];

  v11 = v0[10];

  v12 = v0[11];

  v13 = v0[12];

  v14 = type metadata accessor for NWPath();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v3, 1, v14))
  {
    (*(v15 + 8))(v0 + v3, v14);
  }

  v16 = (v3 + v4 + v7) & ~v7;
  v17 = (v16 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v0 + v16, v5);
  v19 = *(v0 + v18);

  return _swift_deallocObject(v0, v17 + 9, v2 | v7 | 7);
}

uint64_t sub_10003041C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100834140, &qword_1006DC180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003048C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100007224(&unk_100834140, &qword_1006DC180) - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = v2 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = v12[8];
  v14 = v11[8];
  return sub_10002D44C(a1, a2, v2[2], v2 + 3, v2[8], v2[9], v2[10], v2[11], v2[12], v2 + v6, v2 + v9, *v11, v14, *v12, v15);
}

uint64_t sub_1000305E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003064C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000306B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030714(uint64_t a1)
{
  v2 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100030770(uint64_t a1)
{
  if (a1 < 0)
  {
    swift_errorRetain();
  }

  else
  {

    return swift_errorRetain();
  }
}

uint64_t sub_1000307E0(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_1000307F4(a1);
  }

  return a1;
}

uint64_t sub_1000307F4(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

void *sub_100030844(uint64_t a1)
{
  v153 = type metadata accessor for Logger();
  v2 = *(v153 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v153);
  v149 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v130 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v130 - v10;
  __chkstk_darwin(v9);
  v137 = &v130 - v12;
  v13 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v136 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v130 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  isa = v20[8].isa;
  __chkstk_darwin(v19);
  v147 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ProofingSession.UploadAsset();
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v26 = __chkstk_darwin(v25);
  v27 = __chkstk_darwin(v26);
  v135 = &v130 - v28;
  v29 = __chkstk_darwin(v27);
  __chkstk_darwin(v29);
  v35 = &v130 - v34;
  result = _swiftEmptyArrayStorage;
  v163 = _swiftEmptyArrayStorage;
  v37 = *(a1 + 16);
  if (v37)
  {
    v154 = v20;
    v155 = v2;
    v145 = v30;
    v140 = v33;
    v141 = v32;
    v150 = v19;
    v148 = v18;
    v131 = v11;
    v142 = v8;
    v39 = *(v31 + 16);
    v38 = v31 + 16;
    v161 = v39;
    v40 = (a1 + ((*(v38 + 64) + 32) & ~*(v38 + 64)));
    v157 = *(v38 + 56);
    v158 = v38;
    v156 = (v38 - 8);
    v41 = _swiftEmptyArrayStorage;
    v42 = v40;
    v43 = v37;
    v39(v35, v40, v23);
    while (1)
    {
      v45 = ProofingSession.UploadAsset.recordUUID.getter();
      v47 = v46;
      v160 = *v156;
      v160(v35, v23);
      if (v47)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1003C5110(0, *(v41 + 2) + 1, 1, v41);
        }

        v50 = *(v41 + 2);
        v49 = *(v41 + 3);
        v51 = v41;
        if (v50 >= v49 >> 1)
        {
          v51 = sub_1003C5110((v49 > 1), v50 + 1, 1, v41);
        }

        *(v51 + 2) = v50 + 1;
        v41 = v51;
        v44 = &v51[16 * v50];
        *(v44 + 4) = v45;
        *(v44 + 5) = v47;
      }

      v42 = (v42 + v157);
      v43 = (v43 - 1);
      if (!v43)
      {
        break;
      }

      v161(v35, v42, v23);
    }

    v134 = v41;
    v159 = v23;
    v151 = v154 + 6;
    v144 = v154 + 4;
    v143 = v154 + 1;
    v133 = v154 + 2;
    v132 = v154 + 7;
    v139 = _swiftEmptyArrayStorage;
    v152 = v155 + 1;
    *&v48 = 136315138;
    v146 = v48;
    v138 = xmmword_1006BF650;
    v53 = v148;
    v52 = v149;
    v54 = v150;
    v55 = v141;
    v56 = v145;
    while (1)
    {
      v161(v56, v40, v159);
      ProofingSession.UploadAsset.assetFileURL.getter();
      if (!v64)
      {
        goto LABEL_39;
      }

      URL.init(string:)();

      if ((v151->isa)(v53, 1, v54) == 1)
      {
        sub_10000BE18(v53, &unk_100844540, &unk_1006BFBC0);
LABEL_39:
        v154 = v37;
        v155 = v40;
        defaultLogger()();
        v102 = v159;
        v161(v55, v56, v159);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v103, v104))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v162 = v58;
          *v57 = v146;
          v59 = ProofingSession.UploadAsset.recordUUID.getter();
          if (v60)
          {
            v61 = v59;
          }

          else
          {
            v61 = 0;
          }

          if (v60)
          {
            v62 = v60;
          }

          else
          {
            v62 = 0xE000000000000000;
          }

          v160(v55, v102);
          v63 = sub_100141FE4(v61, v62, &v162);

          *(v57 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v103, v104, "assetURL of the upload asset with recordUUID %s doesn't exist skipping the upload asset", v57, 0xCu);
          sub_10000BB78(v58);
          v52 = v149;

          v54 = v150;
          v53 = v148;

          (*v152)(v52, v153);
          v160(v56, v102);
        }

        else
        {

          v105 = v160;
          v160(v55, v102);
          (*v152)(v52, v153);
          v105(v56, v102);
        }

        v37 = v154;
        v40 = v155;
        goto LABEL_20;
      }

      v65 = v147;
      (v144->isa)(v147, v53, v54);
      if ((URL.isFileOnDisk.getter() & 1) == 0)
      {
        (v143->isa)(v65, v54);
        goto LABEL_39;
      }

      v66 = ProofingSession.UploadAsset.assetType.getter();
      if (v67 && (v68 = v67, v69._countAndFlagsBits = v66, v69._object = v68, v70 = _findStringSwitchCase(cases:string:)(&off_1007F8990, v69), , v70 <= 4))
      {
        v71 = ProofingSession.UploadAsset.recordUUID.getter();
        if (!v72)
        {
          v122 = v131;
          defaultLogger()();
          v123 = Logger.logObject.getter();
          v124 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            *v125 = 0;
            _os_log_impl(&_mh_execute_header, v123, v124, "recordUUID of the upload asset doesn't exist skipping the upload asset", v125, 2u);

            (*v152)(v131, v153);
          }

          else
          {

            (*v152)(v122, v153);
          }

          v54 = v150;
          (v143->isa)(v147, v150);
          v56 = v145;
          v160(v145, v159);
          v53 = v148;
          v55 = v141;
          goto LABEL_20;
        }

        v73 = v71;
        v74 = v72;
        v75 = v136;
        v76 = v150;
        (v133->isa)(v136, v147, v150);
        v77 = v132->isa;
        (v132->isa)(v75, 0, 1, v76);
        v78 = type metadata accessor for UploadAsset(0);
        v79 = *(v78 + 48);
        v80 = *(v78 + 52);
        v81 = swift_allocObject();
        *(v81 + 32) = v138;
        v77(v81 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL, 1, 1, v76);
        v82 = v138;
        *(v81 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData) = v138;
        *(v81 + 16) = v73;
        *(v81 + 24) = v74;
        v83 = *(v81 + 32);
        v84 = *(v81 + 40);
        *(v81 + 32) = v82;
        sub_10000BD94(v83, v84);
        *(v81 + 48) = v70;
        v85 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        swift_beginAccess();
        sub_10000BDA8(v75, v81 + v85);
        swift_endAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v129 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v139 = v163;
        v86 = v137;
        defaultLogger()();
        v87 = v135;
        v88 = v159;
        v161(v135, v145, v159);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v89, v90))
        {

          v126 = v88;
          v127 = v88;
          v128 = v160;
          v160(v87, v126);
          (*v152)(v86, v153);
          v54 = v150;
          (v143->isa)(v147, v150);
          v121 = v145;
          v128(v145, v127);
          v53 = v148;
          v52 = v149;
          goto LABEL_54;
        }

        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v154 = v89;
        v155 = v92;
        v162 = v92;
        *v91 = v146;
        v93 = ProofingSession.UploadAsset.recordUUID.getter();
        if (v94)
        {
          v95 = v93;
        }

        else
        {
          v95 = 0;
        }

        if (v94)
        {
          v96 = v94;
        }

        else
        {
          v96 = 0xE000000000000000;
        }

        v97 = v88;
        v98 = v160;
        v160(v87, v97);
        v99 = sub_100141FE4(v95, v96, &v162);

        *(v91 + 4) = v99;
        v100 = v154;
        _os_log_impl(&_mh_execute_header, v154, v90, "Created the StoredUploadAsset with recordUUID %s", v91, 0xCu);
        sub_10000BB78(v155);

        (*v152)(v86, v153);
        v54 = v150;
        (v143->isa)(v147, v150);
        v101 = v145;
        v98(v145, v159);
        v53 = v148;
        v52 = v149;
      }

      else
      {
        defaultLogger()();
        v106 = v140;
        v107 = v159;
        v161(v140, v145, v159);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v108, v109))
        {

          v119 = v106;
          v120 = v160;
          v160(v119, v107);
          (*v152)(v142, v153);
          (v143->isa)(v147, v54);
          v121 = v145;
          v120(v145, v107);
LABEL_54:
          v55 = v141;
          v56 = v121;
          goto LABEL_20;
        }

        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v162 = v111;
        *v110 = v146;
        v112 = ProofingSession.UploadAsset.recordUUID.getter();
        if (v113)
        {
          v114 = v112;
        }

        else
        {
          v114 = 0;
        }

        if (v113)
        {
          v115 = v113;
        }

        else
        {
          v115 = 0xE000000000000000;
        }

        v116 = v107;
        v117 = v160;
        v160(v106, v116);
        v118 = sub_100141FE4(v114, v115, &v162);
        v52 = v149;

        *(v110 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v108, v109, "assetType of the upload asset with recordUUID %s doesn't exist skipping the upload asset", v110, 0xCu);
        sub_10000BB78(v111);

        v54 = v150;
        v53 = v148;

        (*v152)(v142, v153);
        (v143->isa)(v147, v54);
        v101 = v145;
        v117(v145, v159);
      }

      v55 = v141;
      v56 = v101;
LABEL_20:
      v40 = (v40 + v157);
      v37 = (v37 - 1);
      if (!v37)
      {
        return v139;
      }
    }
  }

  return result;
}

uint64_t sub_10003170C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100031744()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003177C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_10000CCB8(v1, sub_10002B164, 0, sub_10002B194, 0);
}

uint64_t sub_1000317D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000317EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100031834()
{
  result = qword_1008341F0;
  if (!qword_1008341F0)
  {
    sub_10000B870(&qword_100848A40, &unk_1006BF8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008341F0);
  }

  return result;
}

uint64_t *sub_100031898(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100031980(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100031A38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100031AD8()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100031B74()
{
  v0 = type metadata accessor for DIPCertUsage();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CertUsageMapper();
  static CertUsageMapper.sharedInstance.getter();
  type metadata accessor for Workflow();
  v5 = enum case for DIPCertUsage.topekaServerSigning(_:);
  v6 = v1[13];
  v6(v4, enum case for DIPCertUsage.topekaServerSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7 = v1[1];
  v7(v4, v0);
  type metadata accessor for LegacyINOWorkflow(0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  type metadata accessor for LegacySPWorkflow(0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  type metadata accessor for IdentityProofingResponse(0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  type metadata accessor for SharingRegistrationResponse(0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  sub_100007224(&qword_100834290, &qword_1006BFC08);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  sub_100007224(&qword_100834298, &qword_1006BFC10);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  sub_100007224(&qword_1008342A0, &qword_1006BFC18);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  type metadata accessor for WorkflowRecommendationResponse();
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  sub_100007224(&unk_100849C00, &unk_1006BFC20);
  v6(v4, enum case for DIPCertUsage.inoSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, enum case for DIPCertUsage.spSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, enum case for DIPCertUsage.assessmentServerSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  CertUsageMapper.registerMapping(forType:usage:)();

  return (v7)(v4, v0);
}

double sub_10003232C()
{
  type metadata accessor for EnvironmentManager();
  v0 = swift_allocObject();
  sub_100007224(&qword_100834370, &qword_1006BFDF8);
  v1 = swift_allocObject();
  result = 0.0;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  v1[8] = 0u;
  v1[9] = 0u;
  v1[10] = 0u;
  v1[11] = 0u;
  v1[12] = 0u;
  *(v1 + 204) = 0u;
  *(v0 + 16) = v1;
  qword_100881E78 = v0;
  return result;
}

uint64_t sub_1000323A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100032BAC(a1, &v21);
  if (*(&v22 + 1))
  {
    v12 = v32;
    *(a3 + 160) = v31;
    *(a3 + 176) = v12;
    *(a3 + 192) = v33;
    v13 = v28;
    *(a3 + 96) = v27;
    *(a3 + 112) = v13;
    v14 = v30;
    *(a3 + 128) = v29;
    *(a3 + 144) = v14;
    v15 = v24;
    *(a3 + 32) = v23;
    *(a3 + 48) = v15;
    v16 = v26;
    *(a3 + 64) = v25;
    *(a3 + 80) = v16;
    v17 = v22;
    *a3 = v21;
    *(a3 + 16) = v17;
  }

  else
  {
    sub_100032C1C(a1);
    sub_100032C1C(&v21);
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = a2;
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No environment exists, creating new environment", v20, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_100032594(a3);
    return sub_100032C84(a3, a1);
  }

  return result;
}

uint64_t sub_100032594@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MobileDocumentReaderSupportChecker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MobileDocumentReaderSupportChecker.init(suiteNameOverride:)();
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v7 = qword_100882440;
  v40 = v2;
  v41 = &protocol witness table for MobileDocumentReaderSupportChecker;
  v8 = sub_100032DBC(&v39);
  (*(v3 + 16))(v8, v6, v2);
  v9 = type metadata accessor for DIPConfigWebService();
  v38[3] = v9;
  v38[4] = &off_100818040;
  v38[0] = v7;
  v10 = type metadata accessor for ConfigurationManager();
  v11 = swift_allocObject();
  v12 = sub_10001F370(v38, v9);
  v13 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15);
  v17 = *v15;
  v36 = v9;
  v37 = &off_100818040;
  *&v35 = v17;

  swift_defaultActor_initialize();
  *(v11 + 192) = 0;
  sub_10001F358(&v39, v11 + 112);
  sub_10001F358(&v35, v11 + 152);
  sub_10000BB78(v38);
  (*(v3 + 8))(v6, v2);
  v40 = v10;
  v41 = &off_100815AD0;
  *&v39 = v11;
  type metadata accessor for DaemonCoreDataStore();
  swift_allocObject();
  v18 = sub_10054BEBC(0);
  type metadata accessor for DaemonBiomeCoreDataStore();
  swift_initStackObject();
  sub_10054B8E8(0);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  sub_100020260(&v39, a1);
  *(a1 + 40) = v18;
  swift_allocObject();

  *(a1 + 48) = sub_10054B8E8(0);
  type metadata accessor for IdentityProofingDataContainer();
  v19 = swift_allocObject();
  *(v19 + 24) = v18;
  v20 = sub_100007224(&qword_100834350, &qword_1006BFDD8);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  swift_retain_n();
  *(v19 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(a1 + 56) = v19;
  type metadata accessor for MobileDocumentReaderDataContainer();
  v23 = swift_allocObject();
  *(v23 + 24) = v18;
  v24 = sub_100007224(&qword_100834358, &qword_1006BFDE0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  swift_retain_n();
  *(v23 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(a1 + 64) = v23;
  type metadata accessor for MobileDocumentRegistrationDataContainer();
  v27 = swift_allocObject();
  *(v27 + 24) = v18;
  v28 = sub_100007224(&qword_100834360, &qword_1006BFDE8);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  swift_retain_n();
  *(v27 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(a1 + 72) = v27;
  type metadata accessor for ThreadSafeUploadTracker();
  v31 = swift_allocObject();
  sub_100007224(&qword_100834368, &qword_1006BFDF0);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;

  result = sub_10000BB78(&v39);
  *(v32 + 16) = 0;
  *(v31 + 16) = v32;
  *(a1 + 80) = v31;
  return result;
}

uint64_t sub_100032A88(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100032AA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100032AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100032B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834348, &qword_1006BFDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032C1C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834348, &qword_1006BFDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100032CBC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031898(v3, qword_100881E80);
  sub_10003170C(v0, qword_100881E80);
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t *sub_100032DBC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100032E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for DeviceInformationProvider();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  __chkstk_darwin(v12);
  v75 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HardwareAttestationType();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v87 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v88 = &v70 - v20;
  v21 = __chkstk_darwin(v19);
  v89 = &v70 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v70 - v24;
  __chkstk_darwin(v23);
  v97 = &v70 - v27;
  v28 = *(a1 + 16);
  v86 = enum case for HardwareAttestationType.SEP(_:);
  if (!v28)
  {
    return (*(v26 + 104))(a2, v86, v15);
  }

  v71 = v11;
  v72 = v6;
  v73 = v5;
  v78 = v2;
  v79 = a2;
  v30 = *(v26 + 16);
  v29 = v26 + 16;
  v84 = v30;
  v92 = (v29 + 88);
  v85 = enum case for HardwareAttestationType.SE(_:);
  v83 = enum case for HardwareAttestationType.IDV(_:);
  v82 = enum case for HardwareAttestationType.OP(_:);
  v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
  v80 = *(v29 + 56);
  v81 = v29;
  v32 = v97;
  v91 = (v29 - 8);
  while (1)
  {
    v84(v32, v31, v15);
    v90 = *v92;
    v90(v25, v86, v15);
    sub_100034734(&qword_100834380, &type metadata accessor for HardwareAttestationType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v95 == v93 && v96 == v94)
    {
      v34 = 1;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v35 = *v91;
    (*v91)(v25, v15);

    if (v34)
    {
      goto LABEL_26;
    }

    v90(v89, v85, v15);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v95 == v93 && v96 == v94)
    {
      v35(v89, v15);

LABEL_23:
      v40 = hasSEService();
      v35(v97, v15);
      if (v40)
      {
        v41 = v79;
        v42 = v85;
        return v90(v41, v42, v15);
      }

LABEL_27:
      v41 = v79;
LABEL_43:
      v42 = v86;
      return v90(v41, v42, v15);
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35(v89, v15);

    if (v36)
    {
      goto LABEL_23;
    }

    v90(v88, v83, v15);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v95 == v93 && v96 == v94)
    {
      v35(v88, v15);

LABEL_26:
      v35(v97, v15);
      goto LABEL_27;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35(v88, v15);

    if (v37)
    {
      goto LABEL_26;
    }

    v90(v87, v82, v15);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v95 == v93 && v96 == v94)
    {
      break;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35(v87, v15);

    if (v38)
    {
      goto LABEL_29;
    }

    v32 = v97;
    v35(v97, v15);
    v31 += v80;
    if (!--v28)
    {
      return v90(v79, v86, v15);
    }
  }

  v35(v87, v15);

LABEL_29:
  v43 = hasSEService();
  v44 = v79;
  if (!v43)
  {
    goto LABEL_42;
  }

  v45 = v75;
  DeviceInformationProvider.init()();
  v46 = DeviceInformationProvider.hardwarePlatform.getter();
  v48 = v47;
  (*(v76 + 8))(v45, v77);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v49 = qword_1008823E0;
  v50 = sub_100592810();
  if (v51 == 1)
  {
    sub_1005946FC();
  }

  else
  {
    sub_10003477C(v50, v51);
  }

  v52 = sub_100592810();
  v54 = v53;
  v56 = v55;

  if (v54 == 1 || (sub_10003477C(v52, v54), (v56 & 0x100000000) != 0))
  {

    v62 = v74;
    defaultLogger()();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v73;
    v67 = v72;
    if (v65)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "failed to get SE type", v68, 2u);
    }

    (*(v67 + 8))(v62, v66);
LABEL_42:
    v35(v97, v15);
    v41 = v44;
    goto LABEL_43;
  }

  v57 = v71;
  defaultLogger()();

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v95 = v61;
    *v60 = 136446466;
    *(v60 + 4) = sub_100141FE4(v46, v48, &v95);
    *(v60 + 12) = 1026;
    *(v60 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v58, v59, "soc %{public}s, se %{public}u", v60, 0x12u);
    sub_10000BB78(v61);
    v44 = v79;

    (*(v72 + 8))(v71, v73);
  }

  else
  {

    (*(v72 + 8))(v57, v73);
  }

  v69 = sub_100034790();

  v35(v97, v15);
  switch(v56)
  {
    case 2:
LABEL_49:
      if (v69 <= 5u)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    case 1:
      if (v69 <= 4u)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    case 0:
      goto LABEL_49;
  }

  if (v69 > 1u)
  {
LABEL_50:
    v41 = v44;
    v42 = v85;
    return v90(v41, v42, v15);
  }

LABEL_52:
  v41 = v44;
  v42 = v86;
  return v90(v41, v42, v15);
}

uint64_t sub_100033918(uint64_t a1, char a2)
{
  *(v2 + 320) = a2;
  *(v2 + 168) = a1;
  v3 = type metadata accessor for DIPError.Code();
  *(v2 + 176) = v3;
  v4 = *(v3 - 8);
  *(v2 + 184) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  *(v2 + 200) = v6;
  v7 = *(v6 - 8);
  *(v2 + 208) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v2 + 224) = v9;
  v10 = *(v9 - 8);
  *(v2 + 232) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v12 = type metadata accessor for DIPKeyAlgorithm();
  *(v2 + 256) = v12;
  v13 = *(v12 - 8);
  *(v2 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_100033AFC, 0, 0);
}

uint64_t sub_100033AFC()
{
  v1 = swift_allocObject();
  *(v0 + 280) = v1;
  *(v1 + 16) = 0;
  v2 = objc_opt_self();
  *(v0 + 288) = v2;
  v3 = [v2 standardUserDefaults];
  static DaemonDefaultsKeys.seAvailable.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    *(v1 + 16) = 1;
    goto LABEL_10;
  }

  if ((*(v0 + 320) & 1) != 0 || !hasSEService())
  {
LABEL_10:
    sub_100034454(v1);

    v14 = *(v0 + 272);
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v17 = *(v0 + 216);
    v18 = *(v0 + 192);

    v19 = *(v0 + 8);

    return v19(v5);
  }

  sub_10003437C(*(v0 + 168), v0 + 56);
  if (!*(v0 + 80))
  {
    sub_1000343EC(v0 + 56);
    goto LABEL_10;
  }

  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);
  sub_10001F358((v0 + 56), v0 + 16);
  v9 = *(v0 + 40);
  sub_10000BA08((v0 + 16), v9);
  (*(v7 + 104))(v6, enum case for DIPKeyAlgorithm.ECC256(_:), v8);
  v10 = sub_10003D6C8(_swiftEmptyArrayStorage);
  *(v0 + 296) = v10;
  v11 = async function pointer to dispatch thunk of DIPKeystoreProtocol.generateIdentityKeyPair(label:algorithm:constraints:enableUAM:temporary:)[1];
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_100033D84;
  v13 = *(v0 + 272);

  return dispatch thunk of DIPKeystoreProtocol.generateIdentityKeyPair(label:algorithm:constraints:enableUAM:temporary:)(v0 + 96, 0xD000000000000014, 0x80000001006FC190, v13, v10, 1, 1, v9);
}

uint64_t sub_100033D84()
{
  v2 = *v1;
  v3 = (*v1)[38];
  v11 = *v1;
  (*v1)[39] = v0;

  if (v0)
  {
    v4 = v2[37];
    (*(v2[33] + 8))(v2[34], v2[32]);

    v5 = sub_1000340B0;
  }

  else
  {
    v6 = v2[37];
    v8 = v2[33];
    v7 = v2[34];
    v9 = v2[32];

    (*(v8 + 8))(v7, v9);
    sub_10000BB78(v2 + 12);
    v5 = sub_100033EF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100033EF4()
{
  v1 = v0[36];
  v2 = v0[31];
  *(v0[35] + 16) = 1;
  v3 = [v1 standardUserDefaults];
  static DaemonDefaultsKeys.seAvailable.getter();
  v4 = String._bridgeToObjectiveC()();

  [v3 setBool:1 forKey:v4];

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "set se service available to true", v11, 2u);
  }

  (*(v10 + 8))(v8, v9);
  v12 = v0[35];
  sub_10000BB78(v0 + 2);
  sub_100034454(v12);

  v13 = v0[39] == 0;
  v14 = v0[34];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[27];
  v18 = v0[24];

  v19 = v0[1];

  return v19(v13);
}

uint64_t sub_1000340B0()
{
  v1 = v0[39];
  v3 = v0[29];
  v2 = v0[30];
  v24 = v0[28];
  v23 = v0[27];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  _StringGuts.grow(_:)(35);

  swift_getErrorValue();
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[19];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  (*(v6 + 104))(v7, enum case for DIPError.Code.keychainSEKeyCreateFailure(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100034734(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v13, v23, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v24);
  (*(v5 + 8))(v23, v4);

  v14 = v0[35];
  sub_10000BB78(v0 + 2);
  sub_100034454(v14);

  v15 = v0[39] == 0;
  v16 = v0[34];
  v18 = v0[30];
  v17 = v0[31];
  v19 = v0[27];
  v20 = v0[24];

  v21 = v0[1];

  return v21(v15);
}

uint64_t sub_10003437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834378, &unk_1006BFF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000343EC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834378, &unk_1006BFF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034454(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_beginAccess();
    if (*(a1 + 16))
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (*(a1 + 16))
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_100141FE4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "se service available = %{public}s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100034640()
{
  v0 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.seAvailable.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 removeObjectForKey:v1];

  type metadata accessor for DIPKeystoreKeychain();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();
}

uint64_t sub_100034734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003477C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100034790()
{
  sub_1000348A0();
  sub_1000348F4();
  if (BidirectionalCollection<>.starts<A>(with:)())
  {
    return 0;
  }

  v1 = BidirectionalCollection<>.starts<A>(with:)();
  result = 2;
  if ((v1 & 1) == 0)
  {
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

unint64_t sub_1000348A0()
{
  result = qword_100839C00;
  if (!qword_100839C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839C00);
  }

  return result;
}

unint64_t sub_1000348F4()
{
  result = qword_100834388;
  if (!qword_100834388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834388);
  }

  return result;
}

uint64_t sub_10003498C()
{
  DIPCryptoKeychain.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100034A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = v6;
  *(v7 + 168) = a6;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 56) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v11 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  *(v7 + 128) = v12;
  v13 = *(v12 - 8);
  *(v7 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100034B80, 0, 0);
}

uint64_t sub_100034B80()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  static DaemonSignposts.fetchSEABAASCert.getter();
  DIPSignpost.init(_:)();
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_100034C34;
  v4 = *(v0 + 168);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return sub_100036658(v6, v5, v4);
}

uint64_t sub_100034C34()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100034F64;
  }

  else
  {
    v3 = sub_100034D48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100034D48()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  sub_100035714(*(v0 + 64), *(v0 + 72), *(v0 + 80), 1, v0 + 16);
  if (v1)
  {
    goto LABEL_2;
  }

  if (!*(v0 + 40))
  {
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v14 = *(v0 + 96);
    sub_1000371AC(v0 + 16);
    (*(v13 + 104))(v12, enum case for DIPError.Code.unexpectedDaemonState(_:), v14);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_2:
    v3 = *(v0 + 120);
    v4 = *(v0 + 112);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 112);
  sub_10001F358((v0 + 16), *(v0 + 56));
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v7 + 8))(v6, v8);

  v5 = *(v0 + 8);
LABEL_5:

  return v5();
}

uint64_t sub_100034F64()
{
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 code];
  (*(v3 + 104))(v2, enum case for DIPError.Code.keychainSEKeyCreateFailure(_:), v4);
  v7 = DIPError.Code.rawValue.getter();
  (*(v3 + 8))(v2, v4);
  if (v6 == v7)
  {
    sub_100034640();
  }

  v8 = v0[20];
  swift_willThrow();

  v9 = v0[20];
  v10 = v0[15];
  v11 = v0[14];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100035094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000351E0, 0, 0);
}

uint64_t sub_1000351E0()
{
  v1 = v0[4];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = v2;
  os_unfair_lock_unlock((v1 + 32));
  v0[2] = 0;
  Attestation = SecKeyCreateAttestation();
  if (Attestation)
  {
    v6 = Attestation;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

    v38 = v9;
    if (v11)
    {
      v12 = v0[5];
      v13 = v0[6];
      type metadata accessor for DIPKeystoreKeychain();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();
      v14 = v0[5];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();
      v32 = v0[5];
      v31 = v0[6];

      static DIPKeystoreKeychain.storeKeychainKey(_:label:)();
      v33 = v0[5];
      v34 = v0[6];
      static DIPKeystoreKeychain.storeKeychainCertificate(_:label:failIfDuplicate:)();
      v35 = v0[3];

      sub_10000B90C(v7, v38);
      v36 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
    }

    else
    {
      v20 = v0[9];
      v22 = v0[7];
      v21 = v0[8];
      v37 = v0[3];
      (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.certificateDecodingFailed(_:), v0[10]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      v23 = swift_allocError();
      (*(v21 + 32))(v24, v20, v22);

      sub_10000B90C(v7, v38);
      v35 = v37;
      *v37 = v23;
      v36 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
    }
  }

  else
  {
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];
    v18 = v0[2];
    v35 = v0[3];
    (*(v16 + 104))(v15, enum case for DIPError.Code.seAttestationFailure(_:), v17);
    v19 = errorFromCFError(_:_:_:)();

    (*(v16 + 8))(v15, v17);
    *v35 = v19;
    v35[1] = 0;
    *(v35 + 16) = 1;
    v36 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
  }

  v25 = *v36;
  v26 = sub_100007224(&qword_100834438, &qword_1006BFEC0);
  (*(*(v26 - 8) + 104))(v35, v25, v26);
  v27 = v0[12];
  v28 = v0[9];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100035714@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v89 = a4;
  v95 = a3;
  v96 = a5;
  v9 = type metadata accessor for DIPError.Code();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  __chkstk_darwin(v9);
  v88 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for HardwareAttestationType();
  v90 = *(v93 - 8);
  v12 = *(v90 + 64);
  __chkstk_darwin(v93);
  v92 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IdentityKeyGenerationOption();
  v91 = *(v14 - 8);
  v15 = *(v91 + 64);
  __chkstk_darwin(v14);
  v17 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_100834440, &qword_1006BFEC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFE10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v19;
  *(inited + 48) = a1;
  v97._countAndFlagsBits = a1;
  *(inited + 56) = a2;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v20;
  v97._object = a2;

  v94 = v6;
  v21 = DIPKeystoreKeychain.laContext.getter();
  *(inited + 120) = sub_100037320();
  *(inited + 96) = v21;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v22;
  type metadata accessor for CFString(0);
  *(inited + 168) = v23;
  *(inited + 144) = kSecClassKey;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v24;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v25 = kSecClassKey;
  v26 = sub_10003D8DC(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100834450, &unk_1006BFED0);
  swift_arrayDestroy();
  v101 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v28 = SecItemCopyMatching(isa, &v101);

  if (v28)
  {

    if (v28 == -25300)
    {
      v29 = v96;
      *(v96 + 32) = 0;
      *v29 = 0u;
      v29[1] = 0u;
    }

    else
    {
      v99 = 0;
      v100 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v42._object = 0x80000001006FC500;
      v42._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v42);
      String.append(_:)(v97);
      v43._countAndFlagsBits = 0x7473206874697720;
      v43._object = 0xEF203D2073757461;
      String.append(_:)(v43);
      v98 = v28;
      v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v44);

      (*(v86 + 104))(v88, enum case for DIPError.Code.keychainFailureQueryKey(_:), v87);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  v30 = v91;
  v31 = v92;
  v32 = v93;
  v33 = v95;
  v85[1] = v26;
  if (v95)
  {
    (*(v91 + 104))(v17, enum case for IdentityKeyGenerationOption.validity(_:), v14);
    if (*(v33 + 16))
    {
      v34 = sub_10003B100(v17);
      if (v35)
      {
        v36 = (*(v33 + 56) + 16 * v34);
        v37 = v30;
        v39 = *v36;
        v38 = v36[1];
        v40 = *(v37 + 8);

        v40(v17, v14);
        v41 = v38;
        goto LABEL_11;
      }
    }

    (*(v30 + 8))(v17, v14);
  }

  v39 = 0;
  v41 = 0xE000000000000000;
LABEL_11:
  v45 = (HIBYTE(v41) & 0xF);
  v46 = v39 & 0xFFFFFFFFFFFFLL;
  if ((v41 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v41) & 0xF;
  }

  else
  {
    v47 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {

    v48 = v31;
    v49 = v90;
    goto LABEL_73;
  }

  if ((v41 & 0x1000000000000000) == 0)
  {
    v48 = v31;
    if ((v41 & 0x2000000000000000) != 0)
    {
      v99 = v39;
      v100 = v41 & 0xFFFFFFFFFFFFFFLL;
      if (v39 == 43)
      {
        v49 = v90;
        if (!v45)
        {
          goto LABEL_84;
        }

        if (--v45)
        {
          v65 = 0;
          v66 = &v99 + 1;
          while (1)
          {
            v67 = *v66 - 48;
            if (v67 > 9)
            {
              break;
            }

            v68 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              break;
            }

            v65 = v68 + v67;
            if (__OFADD__(v68, v67))
            {
              break;
            }

            ++v66;
            if (!--v45)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        v49 = v90;
        if (v39 == 45)
        {
          if (!v45)
          {
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
          }

          if (--v45)
          {
            v56 = 0;
            v57 = &v99 + 1;
            while (1)
            {
              v58 = *v57 - 48;
              if (v58 > 9)
              {
                break;
              }

              v59 = 10 * v56;
              if ((v56 * 10) >> 64 != (10 * v56) >> 63)
              {
                break;
              }

              v56 = v59 - v58;
              if (__OFSUB__(v59, v58))
              {
                break;
              }

              ++v57;
              if (!--v45)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v45)
        {
          v72 = 0;
          v73 = &v99;
          while (1)
          {
            v74 = *v73 - 48;
            if (v74 > 9)
            {
              break;
            }

            v75 = 10 * v72;
            if ((v72 * 10) >> 64 != (10 * v72) >> 63)
            {
              break;
            }

            v72 = v75 + v74;
            if (__OFADD__(v75, v74))
            {
              break;
            }

            v73 = (v73 + 1);
            if (!--v45)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

    else
    {
      if ((v39 & 0x1000000000000000) != 0)
      {
        v45 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v45 = _StringObject.sharedUTF8.getter();
      }

      v49 = v90;
      v50 = *v45;
      if (v50 == 43)
      {
        if (v46 >= 1)
        {
          v60 = v46 - 1;
          if (v46 != 1)
          {
            v61 = 0;
            if (!v45)
            {
              goto LABEL_72;
            }

            v62 = v45 + 1;
            while (1)
            {
              v63 = *v62 - 48;
              if (v63 > 9)
              {
                break;
              }

              v64 = 10 * v61;
              if ((v61 * 10) >> 64 != (10 * v61) >> 63)
              {
                break;
              }

              v61 = v64 + v63;
              if (__OFADD__(v64, v63))
              {
                break;
              }

              ++v62;
              if (!--v60)
              {
LABEL_63:
                LOBYTE(v45) = 0;
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_83;
      }

      if (v50 == 45)
      {
        if (v46 >= 1)
        {
          v51 = v46 - 1;
          if (v46 != 1)
          {
            v52 = 0;
            if (!v45)
            {
              goto LABEL_72;
            }

            v53 = v45 + 1;
            while (1)
            {
              v54 = *v53 - 48;
              if (v54 > 9)
              {
                break;
              }

              v55 = 10 * v52;
              if ((v52 * 10) >> 64 != (10 * v52) >> 63)
              {
                break;
              }

              v52 = v55 - v54;
              if (__OFSUB__(v55, v54))
              {
                break;
              }

              ++v53;
              if (!--v51)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_71;
        }

        __break(1u);
        goto LABEL_82;
      }

      if (v46)
      {
        v69 = 0;
        if (!v45)
        {
          goto LABEL_72;
        }

        while (1)
        {
          v70 = *v45 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v69;
          if ((v69 * 10) >> 64 != (10 * v69) >> 63)
          {
            break;
          }

          v69 = v71 + v70;
          if (__OFADD__(v71, v70))
          {
            break;
          }

          ++v45;
          if (!--v46)
          {
            goto LABEL_63;
          }
        }
      }
    }

LABEL_71:
    LOBYTE(v45) = 1;
LABEL_72:
    LOBYTE(v98) = v45;
    v76 = v45;

    if ((v76 & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  sub_1000FFDD8(v39, v41, 10);
  v84 = v83;

  v48 = v31;
  v49 = v90;
  if (v84)
  {
LABEL_73:
    result = DEFAULT_BAA_CERTIFICATE_VALIDITY_IN_MINUTES.getter();
  }

LABEL_74:
  if (v101)
  {
    swift_unknownObjectRetain();

    type metadata accessor for SecKey(0);
    swift_dynamicCastUnknownClassUnconditional();
    (*(v49 + 104))(v48, enum case for HardwareAttestationType.SE(_:), v32);
    DIPKeystoreKeychain.laContext.getter();
    v78 = type metadata accessor for IdentityKeyWithKeychain();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();

    v81 = IdentityKeyWithKeychain.init(label:privateKey:attestationType:laContext:validity:isTemporary:)();
    v82 = v96;
    *(v96 + 24) = v78;
    v82[4] = &protocol witness table for IdentityKeyWithKeychain;
    *v82 = v81;
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000360B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  swift_allocObject();
  sub_1000363B4(a2, a3);
  v10 = async function pointer to DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)[1];
  v11 = swift_task_alloc();
  v4[4] = v11;
  *v11 = v4;
  v11[1] = sub_100036188;

  return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(a1, a2, a3);
}

uint64_t sub_100036188(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_100036318;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_1000362B0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000362B0()
{
  sub_10000BD94(v0[2], v0[3]);
  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t sub_100036318()
{
  sub_10000BD94(v0[2], v0[3]);
  v1 = v0[1];
  v2 = v0[5];

  return v1();
}

uint64_t sub_10003637C()
{
  DIPKeystoreKeychain.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000363B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B8B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000363C8()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DIPCryptoKeychain();
  result = dispatch thunk of static DIPCryptoKeychain.generateKeyAsym(_:_:useSecureElement:)();
  if (v0)
  {
    v15 = result;
    v16 = v12;
    swift_getErrorValue();
    Error.localizedDescription.getter();
    (*(v2 + 104))(v5, enum case for DIPError.Code.keychainSEKeyCreateFailure(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v7 + 16))(v13, v10, v6);
    swift_willThrow();

    (*(v7 + 8))(v10, v6);
    return v15;
  }

  return result;
}

uint64_t sub_100036658(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 52) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = type metadata accessor for DIPBackoffStrategy();
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v10 = type metadata accessor for DIPRetrier();
  *(v3 + 128) = v10;
  v11 = *(v10 - 8);
  *(v3 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v13 = type metadata accessor for KeyUsage();
  *(v3 + 152) = v13;
  v14 = *(v13 - 8);
  *(v3 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v16 = type metadata accessor for DIPKeyAlgorithm();
  *(v3 + 176) = v16;
  v17 = *(v16 - 8);
  *(v3 + 184) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_1000368B8, 0, 0);
}

uint64_t sub_1000368B8()
{
  *(v0 + 56) = 0;
  v1 = DIPSecKeyCopyAttestationKey();
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *(v0 + 52);
    (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPKeyAlgorithm.ECC256(_:), *(v0 + 176));
    (*(v5 + 104))(v3, enum case for KeyUsage.signature(_:), v4);
    v7 = createBAAKeyACLWithDefaultLAContext(enableUAM:keyUsage:requireUserAuth:forSecureElement:)();
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v14 = v7;
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v15 = sub_1000363C8();
    v17 = v16;
    *(v0 + 208) = v15;
    v49 = v15;
    (*(v9 + 8))(*(v0 + 192), *(v0 + 176));

    v25 = getSEABASSOIDS();
    *(v0 + 216) = v25;
    if (!v25)
    {
      __break(1u);
      return DIPRetrier.retry<A>(operation:)(v25, v26, v27, v28);
    }

    v29 = v25;
    v30 = v2;
    v31 = String._bridgeToObjectiveC()();
    v32 = SecKeySetParameter();

    if (v32)
    {
      if (qword_100832CF8 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 144);
      v35 = *(v0 + 112);
      v34 = *(v0 + 120);
      v36 = *(v0 + 104);
      v38 = *(v0 + 64);
      v37 = *(v0 + 72);
      sub_1005B0650();
      *v34 = sub_1005B083C();
      (*(v35 + 104))(v34, enum case for DIPBackoffStrategy.linear(_:), v36);
      DIPRetrier.init(maxRetries:backoffStrategy:)();
      sub_100007224(&qword_100834430, &qword_1006BFEA8);
      inited = swift_initStackObject();
      *(v0 + 224) = inited;
      *(inited + 32) = 0;
      *(inited + 16) = v30;
      *(inited + 24) = v49;
      v40 = swift_task_alloc();
      *(v0 + 232) = v40;
      v40[2] = inited;
      v40[3] = v38;
      v40[4] = v37;
      v41 = async function pointer to DIPRetrier.retry<A>(operation:)[1];
      v42 = v30;
      v43 = v49;
      v25 = swift_task_alloc();
      *(v0 + 240) = v25;
      *v25 = v0;
      v25[1] = sub_100036DFC;
      v44 = *(v0 + 144);
      v26 = &unk_1006BFEB8;
      v28 = &type metadata for () + 8;
      v27 = v40;

      return DIPRetrier.retry<A>(operation:)(v25, v26, v27, v28);
    }

    v46 = *(v0 + 88);
    v45 = *(v0 + 96);
    v47 = *(v0 + 80);
    v48 = *(v0 + 56);
    (*(v46 + 104))(v45, enum case for DIPError.Code.secKeySetParameterFailed(_:), v47);
    errorFromCFError(_:_:_:)();
    (*(v46 + 8))(v45, v47);
    swift_willThrow();
  }

  else
  {
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    (*(v11 + 104))(v10, enum case for DIPError.Code.secKeyCopyAttestationKeyFailed(_:), v12);
    errorFromCFError(_:_:_:)();
    (*(v11 + 8))(v10, v12);
    swift_willThrow();
  }

  v18 = *(v0 + 192);
  v19 = *(v0 + 168);
  v20 = *(v0 + 144);
  v21 = *(v0 + 120);
  v22 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100036DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);

  if (v0)
  {
    v6 = sub_100037088;
  }

  else
  {
    v6 = sub_100036F5C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100036F5C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v12 = v0[15];
  v13 = v0[12];
  swift_setDeallocating();

  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100037088()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  swift_setDeallocating();

  (*(v6 + 8))(v5, v7);
  v8 = v0[31];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000371AC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100849FA0, &qword_1006BFEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100037214()
{
  result = qword_100834130;
  if (!qword_100834130)
  {
    type metadata accessor for DIPError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834130);
  }

  return result;
}

uint64_t sub_10003726C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100035094(a1, v4, v5, v6);
}

unint64_t sub_100037320()
{
  result = qword_100834448;
  if (!qword_100834448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100834448);
  }

  return result;
}

uint64_t sub_10003736C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 392) = a2;
  *(v6 + 400) = a4;
  *(v6 + 668) = a3;
  *(v6 + 384) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 424) = v7;
  v8 = *(v7 - 8);
  *(v6 + 432) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v6 + 448) = v10;
  v11 = *(v10 - 8);
  *(v6 + 456) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  v13 = type metadata accessor for HardwareAttestationType();
  *(v6 + 480) = v13;
  v14 = *(v13 - 8);
  *(v6 + 488) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();

  return _swift_task_switch(sub_100037520, 0, 0);
}

uint64_t sub_10003800C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 600);
  v6 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v7 = sub_1000389AC;
  }

  else
  {
    *(v4 + 616) = a1;
    v7 = sub_100038134;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100038134()
{
  v1 = v0[77];
  v2 = v0[74];
  sub_1000343EC((v0 + 2));
  v0[2] = v1;
  v0[5] = v2;
  v0[6] = &protocol witness table for DIPKeystoreKeychain;
  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_1000381EC;

  return sub_100033918((v0 + 2), 0);
}

uint64_t sub_1000381EC(char a1)
{
  v2 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 669) = a1;

  return _swift_task_switch(sub_1000382EC, 0, 0);
}

uint64_t sub_1000382EC()
{
  v86 = v0;
  if (*(v0 + 669) == 1)
  {
    *(*(v0 + 416) + 24) = 1;
  }

  else
  {
    v1 = *(v0 + 560);
    v2 = *(v0 + 552);
    v3 = *(v0 + 520);
    v4 = *(v0 + 504);
    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    *(*(v0 + 416) + 24) = 0;
    v2(v4, enum case for HardwareAttestationType.SEP(_:), v5);
    swift_beginAccess();
    (*(v6 + 40))(v3, v4, v5);
  }

  v7 = *(v0 + 464);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 528);
  if (v10)
  {
    v12 = *(v0 + 520);
    v13 = *(v0 + 456);
    v83 = *(v0 + 464);
    v14 = *(v0 + 448);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v85 = v16;
    *v15 = 136446210;
    v17 = HardwareAttestationType.rawValue.getter();
    v19 = sub_100141FE4(v17, v18, &v85);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "final selected attestation type is %{public}s", v15, 0xCu);
    sub_10000BB78(v16);

    v20 = v83;
    v21 = v14;
  }

  else
  {
    v23 = *(v0 + 456);
    v22 = *(v0 + 464);
    v24 = *(v0 + 448);

    v20 = v22;
    v21 = v24;
  }

  v11(v20, v21);
  v25 = *(v0 + 568);
  v26 = *(v0 + 560);
  v27 = *(v0 + 520);
  (*(v0 + 552))(*(v0 + 496), enum case for HardwareAttestationType.SEP(_:), *(v0 + 480));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = *(v0 + 584);
  v29 = *(v0 + 576);
  v30 = *(v0 + 496);
  v31 = *(v0 + 480);
  if (*(v0 + 352) == *(v0 + 368) && *(v0 + 360) == *(v0 + 376))
  {
    v29(*(v0 + 496), *(v0 + 480));

    goto LABEL_11;
  }

  v32 = *(v0 + 360);
  v33 = *(v0 + 376);
  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v29(v30, v31);

  if (v34)
  {
LABEL_11:
    v35 = *(v0 + 400);
    v36 = *(v0 + 408);
    v37 = type metadata accessor for DIPKeystoreKeychain();
    *(v0 + 632) = v37;
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_1000363B4(v35, v36);
    v40 = async function pointer to DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)[1];
    v41 = swift_task_alloc();
    *(v0 + 640) = v41;
    *v41 = v0;
    v41[1] = sub_100038A94;
    v42 = *(v0 + 400);
    v43 = *(v0 + 408);
    v44 = *(v0 + 668);

    return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(v44, v42, v43);
  }

  v45 = *(v0 + 584);
  v46 = *(v0 + 576);
  v47 = *(v0 + 560);
  v48 = *(v0 + 520);
  v49 = *(v0 + 504);
  v50 = *(v0 + 480);
  (*(v0 + 552))(v49, *(v0 + 664), v50);
  sub_1000398CC(&unk_100849F80, &type metadata accessor for HardwareAttestationType);
  LOBYTE(v48) = dispatch thunk of static Equatable.== infix(_:_:)();
  v46(v49, v50);
  if ((v48 & 1) == 0)
  {
    v84 = *(v0 + 584);
    v68 = *(v0 + 576);
    v69 = *(v0 + 544);
    v70 = *(v0 + 520);
    v71 = *(v0 + 480);
    v73 = *(v0 + 432);
    v72 = *(v0 + 440);
    v74 = *(v0 + 424);

    (*(v73 + 104))(v72, enum case for DIPError.Code.unimplemented(_:), v74);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000398CC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000343EC(v0 + 16);
    v68(v70, v71);
    v75 = *(v0 + 520);
    v76 = *(v0 + 504);
    v77 = *(v0 + 512);
    v78 = *(v0 + 496);
    v80 = *(v0 + 464);
    v79 = *(v0 + 472);
    v81 = *(v0 + 440);

    v67 = *(v0 + 8);
    goto LABEL_19;
  }

  v44 = sub_10003437C(v0 + 16, v0 + 96);
  if (!*(v0 + 120))
  {
    __break(1u);
    goto LABEL_23;
  }

  v51 = *(v0 + 544);
  v52 = *(v0 + 536);
  v53 = *(v0 + 416);
  sub_10001F358((v0 + 96), v0 + 56);
  swift_beginAccess();

  sub_10014BB48(v0 + 56, v52, v51);
  swift_endAccess();
  v44 = sub_10003437C(v0 + 16, v0 + 136);
  if (!*(v0 + 160))
  {
LABEL_23:
    __break(1u);
    return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(v44, v42, v43);
  }

  v54 = *(v0 + 584);
  v55 = *(v0 + 576);
  v56 = *(v0 + 544);
  v57 = *(v0 + 520);
  v58 = *(v0 + 480);
  v59 = *(v0 + 384);
  sub_1000343EC(v0 + 16);

  sub_10001F358((v0 + 136), v59);
  v55(v57, v58);
  v60 = *(v0 + 520);
  v61 = *(v0 + 504);
  v62 = *(v0 + 512);
  v63 = *(v0 + 496);
  v65 = *(v0 + 464);
  v64 = *(v0 + 472);
  v66 = *(v0 + 440);

  v67 = *(v0 + 8);
LABEL_19:

  return v67();
}

uint64_t sub_1000389AC()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[65];
  v5 = v0[60];

  sub_1000343EC((v0 + 2));
  v2(v4, v5);
  v6 = v0[76];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  v12 = v0[58];
  v11 = v0[59];
  v13 = v0[55];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100038A94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 640);
  v6 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {
    v7 = *(v4 + 544);

    v8 = sub_100038D58;
  }

  else
  {
    *(v4 + 656) = a1;
    v8 = sub_100038BC4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100038BC4()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  sub_1000343EC(v0 + 16);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for DIPKeystoreKeychain;
  result = sub_10003437C(v0 + 16, v0 + 96);
  if (!*(v0 + 120))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 416);
  sub_10001F358((v0 + 96), v0 + 56);
  swift_beginAccess();

  sub_10014BB48(v0 + 56, v5, v4);
  swift_endAccess();
  result = sub_10003437C(v0 + 16, v0 + 136);
  if (!*(v0 + 160))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *(v0 + 584);
  v8 = *(v0 + 576);
  v9 = *(v0 + 544);
  v10 = *(v0 + 520);
  v11 = *(v0 + 480);
  v12 = *(v0 + 384);
  sub_1000343EC(v0 + 16);

  sub_10001F358((v0 + 136), v12);
  v8(v10, v11);
  v13 = *(v0 + 520);
  v14 = *(v0 + 504);
  v15 = *(v0 + 512);
  v16 = *(v0 + 496);
  v18 = *(v0 + 464);
  v17 = *(v0 + 472);
  v19 = *(v0 + 440);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100038D58()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[65];
  v4 = v0[60];
  sub_1000343EC((v0 + 2));
  v2(v3, v4);
  v5 = v0[81];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v9 = v0[62];
  v11 = v0[58];
  v10 = v0[59];
  v12 = v0[55];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100038E38()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 sub_100038E94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100038EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100038EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038F4C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000390C4, 0, 0);
}

uint64_t sub_1000390C4()
{
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v1 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  v2 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  v4 = v3;
  v6 = v0[7];
  v5 = v0[8];
  v7 = v2;
  sub_10000BB78(v0 + 2);

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = v7;
  v9._object = v4;
  String.append(_:)(v9);

  type metadata accessor for DIPKeystoreKeychain();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

  IDV_INTERMEDIATE_CERT_KEYCHAIN_LABEL.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000398CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100039914()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  type metadata accessor for RewrapService();
  v9 = swift_allocObject();
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v9 + 16) = result;
  qword_100881EB8 = v9;
  return result;
}

void sub_100039AEC(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DIPKeyAlgorithm();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    (*(v13 + 104))(v17, enum case for DIPError.Code.internalError(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004057C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_9:
    swift_willThrow();
    return;
  }

  v46 = v3;
  v47 = v15;
  error = 0;
  v19 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (!v19)
  {
    v29 = v47;
    (*(v13 + 104))(v17, enum case for DIPError.Code.keychainAccessControlFailure(_:), v47);
    errorFromCFError(_:_:_:)();
    (*(v13 + 8))(v17, v29);
    goto LABEL_9;
  }

  v20 = v19;
  v43 = a1;
  v42 = a3;
  v45 = v17;
  sub_100007224(&qword_100834440, &qword_1006BFEC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = 1952671087;
  v22 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_10003D8DC(inited);
  swift_setDeallocating();
  sub_1000404B8(v22);
  v23 = v20;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SecAccessControlSetConstraints();

  type metadata accessor for DIPCryptoKeychain();
  (*(v8 + 104))(v11, enum case for DIPKeyAlgorithm.ECIES_REWRAP(_:), v7);
  v25 = v46;
  v26 = dispatch thunk of static DIPCryptoKeychain.generateKeyAsym(_:_:)();
  v28 = (v8 + 8);
  v44 = v23;
  if (v25)
  {
    (*v28)(v11, v7);

    swift_getErrorValue();
    v35._countAndFlagsBits = Error.localizedDescription.getter();
    v48 = 0xD000000000000025;
    v49 = 0x80000001006FC7F0;
    String.append(_:)(v35);

    (*(v13 + 104))(v45, enum case for DIPError.Code.internalError(_:), v47);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004057C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v30 = v26;
    v31 = v27;
    (*v28)(v11, v7);

    v48 = v43;
    v49 = a2;

    v32._countAndFlagsBits = 0x727765727065732ELL;
    v32._object = 0xEA00000000007061;
    String.append(_:)(v32);
    v34 = v48;
    v33 = v49;
    type metadata accessor for DIPKeystoreKeychain();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

    static DIPKeystoreKeychain.storeKeychainKey(_:label:)();
    v36 = type metadata accessor for RewrapKeySecKey();
    v37 = swift_allocObject();
    v38 = v30;
    v39 = v37;
    v37[2] = v38;
    v37[3] = v34;
    v37[4] = v33;
    v40 = v42;
    v42[3] = v36;
    v40[4] = &off_1007FD8F0;

    *v40 = v39;
  }
}

void sub_10003A22C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DIPError.Code();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;

  v9._countAndFlagsBits = 0x727765727065732ELL;
  v9._object = 0xEA00000000007061;
  String.append(_:)(v9);
  v10 = v30;
  v11 = v31;
  sub_100007224(&qword_100834440, &qword_1006BFEC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFF90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v13;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  type metadata accessor for CFString(0);
  *(inited + 120) = v15;
  *(inited + 96) = kSecClassKey;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v16;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;

  v17 = kSecClassKey;
  sub_10003D8DC(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100834450, &unk_1006BFED0);
  swift_arrayDestroy();
  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19 = SecItemCopyMatching(isa, &result);

  if (v19)
  {

    if (v19 == -25300)
    {

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v23._countAndFlagsBits = 0xD000000000000025;
      v23._object = 0x80000001006FC500;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v10;
      v24._object = v11;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x7473206874697720;
      v25._object = 0xEF203D2073757461;
      String.append(_:)(v25);
      v29 = v19;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      (*(v27 + 104))(v28, enum case for DIPError.Code.internalError(_:), v6);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10004057C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    goto LABEL_7;
  }

  if (result)
  {
    swift_unknownObjectRetain();

    type metadata accessor for SecKey(0);
    v20 = swift_dynamicCastUnknownClassUnconditional();
    v21 = type metadata accessor for RewrapKeySecKey();
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = v10;
    v22[4] = v11;
    *(a3 + 24) = v21;
    *(a3 + 32) = &off_1007FD8F0;
    *a3 = v22;
LABEL_7:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_10003A73C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003A798(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*v2 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v13 = a1;
  v14 = a2;
  sub_100007224(&qword_100834700, &qword_1006C0000);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10003A8D0()
{
  v1 = *(*v0 + 16);
  sub_100007224(&qword_1008346E0, &qword_1006BFFF8);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_10003A94C()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_10003A9CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DIPError.PropertyKey();
  sub_10004057C(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10003AA64(a1, v5);
}

unint64_t sub_10003AA64(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for DIPError.PropertyKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10004057C(&qword_1008346F0, &type metadata accessor for DIPError.PropertyKey);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10003AC24(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for IdentityElement();
  sub_10004057C(&qword_1008347A8, &type metadata accessor for IdentityElement);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for IdentityElement, &qword_1008347B0, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
}

unint64_t sub_10003ACF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Locale();
  sub_10004057C(&qword_100834788, &type metadata accessor for Locale);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for Locale, &qword_100834790, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
}

unint64_t sub_10003ADF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Locale.Region();
  sub_10004057C(&qword_100834778, &type metadata accessor for Locale.Region);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for Locale.Region, &qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
}

unint64_t sub_10003AECC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003BC9C(a1, v4);
}

unint64_t sub_10003AF10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DIPError.PropertyKey();
  sub_10004057C(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for DIPError.PropertyKey, &qword_1008346F0, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
}

unint64_t sub_10003AFE4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10003BD64(a1, v4);
}

unint64_t sub_10003B028(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10003C1E4(a1, v4, &qword_100833A40, CKRecordZoneID_ptr);
}

unint64_t sub_10003B078(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_1000221FC(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10003BDD0(a1, v4);
}

unint64_t sub_10003B100(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for IdentityKeyGenerationOption();
  sub_10004057C(&qword_1008347C8, &type metadata accessor for IdentityKeyGenerationOption);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for IdentityKeyGenerationOption, &qword_1008347D0, &type metadata accessor for IdentityKeyGenerationOption, &protocol conformance descriptor for IdentityKeyGenerationOption);
}

unint64_t sub_10003B1D8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003C120(a1, v4);
}

unint64_t sub_10003B21C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for IQCType();
  sub_10004057C(&qword_100834900, &type metadata accessor for IQCType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for IQCType, &qword_100834908, &type metadata accessor for IQCType, &protocol conformance descriptor for IQCType);
}

unint64_t sub_10003B2F0(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_10003BD64(a1, v4);
}

unint64_t sub_10003B35C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10003C1E4(a1, v4, &qword_100845EE0, NSString_ptr);
}

unint64_t sub_10003B3AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ECIESOption();
  sub_10004057C(&qword_1008347E8, &type metadata accessor for ECIESOption);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for ECIESOption, &qword_1008347F0, &type metadata accessor for ECIESOption, &protocol conformance descriptor for ECIESOption);
}

unint64_t sub_10003B480(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ISO18013KnownDocTypes();
  sub_10004057C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for ISO18013KnownDocTypes, &qword_1008348B8, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
}

unint64_t sub_10003B580(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10003C8BC(a1, v4);
}

unint64_t sub_10003B610(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DIPSignpost.Config();
  sub_10004057C(&qword_100834878, &type metadata accessor for DIPSignpost.Config);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for DIPSignpost.Config, &qword_100834880, &type metadata accessor for DIPSignpost.Config, &protocol conformance descriptor for DIPSignpost.Config);
}

unint64_t sub_10003B6E4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10003C6B0(a1, v4);
}

unint64_t sub_10003B808(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for EncryptedMessageEntity();
  sub_10004057C(&qword_100834938, &type metadata accessor for EncryptedMessageEntity);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for EncryptedMessageEntity, &qword_100834940, &type metadata accessor for EncryptedMessageEntity, &protocol conformance descriptor for EncryptedMessageEntity);
}

uint64_t sub_10003B8DC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_10003B970(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for MobileDocumentType();
  sub_10004057C(&qword_100834750, &type metadata accessor for MobileDocumentType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v5, &type metadata accessor for MobileDocumentType, &qword_100834758, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
}

unint64_t sub_10003BA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10004057C(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10003BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10003BC9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100040520(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000279C8(v8);
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

unint64_t sub_10003BD64(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10003BDD0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0xEA00000000007075;
    v6 = 0x80000001006F88F0;
    v27 = a1;
    while (1)
    {
      v7 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v7 > 4)
      {
        if (*(*(v28 + 48) + v4) <= 6u)
        {
          if (v7 == 5)
          {
            v12 = 0xD000000000000010;
            v13 = 0x80000001006F8940;
          }

          else
          {
            v12 = 0xD000000000000018;
            v13 = 0x80000001006F8960;
          }
        }

        else if (v7 == 7)
        {
          v12 = 0x6F5A6574656C6564;
          v13 = 0xEB0000000073656ELL;
        }

        else if (v7 == 8)
        {
          v12 = 0x6465686361747461;
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
          v12 = 0x6465686361746564;
        }
      }

      else
      {
        v8 = 0xD000000000000017;
        if (v7 == 3)
        {
          v8 = 0x7465467075746573;
          v9 = 0xEF73656E6F5A6863;
        }

        else
        {
          v9 = 0x80000001006F8920;
        }

        if (v7 == 2)
        {
          v8 = 0xD000000000000011;
          v9 = v6;
        }

        v10 = *(*(v28 + 48) + v4) ? 0x7465536E69676562 : 0x696C616974696E69;
        v11 = v7 ? 0xEA00000000007075 : 0xEB0000000064657ALL;
        v12 = v7 <= 1 ? v10 : v8;
        v13 = v7 <= 1 ? v11 : v9;
      }

      v14 = 0x6465686361747461;
      if (v27 != 8)
      {
        v14 = 0x6465686361746564;
      }

      v15 = 0xE800000000000000;
      if (v27 == 7)
      {
        v14 = 0x6F5A6574656C6564;
        v15 = 0xEB0000000073656ELL;
      }

      v16 = 0xD000000000000018;
      if (v27 == 5)
      {
        v16 = 0xD000000000000010;
      }

      v17 = 0x80000001006F8960;
      if (v27 == 5)
      {
        v17 = 0x80000001006F8940;
      }

      if (v27 <= 6)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xD000000000000017;
      if (v27 == 3)
      {
        v18 = 0x7465467075746573;
        v19 = 0xEF73656E6F5A6863;
      }

      else
      {
        v19 = 0x80000001006F8920;
      }

      if (v27 == 2)
      {
        v18 = 0xD000000000000011;
        v19 = v6;
      }

      if (v27)
      {
        v20 = 0x7465536E69676562;
      }

      else
      {
        v20 = 0x696C616974696E69;
      }

      if (!v27)
      {
        v5 = 0xEB0000000064657ALL;
      }

      if (v27 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v27 <= 4 ? v18 : v14;
      v22 = v27 <= 4 ? v19 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = v6;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = 0xEA00000000007075;
      v6 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_10003C120(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for IdentityGesture();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10003C1E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_10001F8D4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10003C2B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_10000B8B8(v17, v16);
          sub_1000C2B5C(v45, v9, v8, &v44);
          sub_10000B90C(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_10000B8B8(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_10000B8B8(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1000C2B5C(v34, a1, a2, v45);
        sub_10000B90C(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_10000B8B8(v17, v16);
      sub_1000C2B5C(v45, v9, v8, &v44);
      sub_10000B90C(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_10003C6B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v15 = ~v3;
    v16 = a1;
    while (1)
    {
      v5 = *(*(v17 + 48) + v4);
      v18 = v4;
      if (v5 <= 1)
      {
        v7 = *(*(v17 + 48) + v4) ? 0xEE006B636142746ELL : 0xEF746E6F7246746ELL;
        v6 = 0x656D75636F446469;
      }

      else if (v5 == 2)
      {
        v7 = 0xE600000000000000;
        v6 = 0x6569666C6573;
      }

      else
      {
        v6 = v5 == 3 ? 0x7373656E6576696CLL : 0x7261696C69787561;
        v7 = v5 == 3 ? 0xED00006F65646956 : 0xEE006F6564695679;
      }

      if (v16 == 3)
      {
        v8 = 0x7373656E6576696CLL;
      }

      else
      {
        v8 = 0x7261696C69787561;
      }

      if (v16 == 3)
      {
        v9 = 0xED00006F65646956;
      }

      else
      {
        v9 = 0xEE006F6564695679;
      }

      if (v16 == 2)
      {
        v8 = 0x6569666C6573;
        v9 = 0xE600000000000000;
      }

      v10 = v16 ? 0xEE006B636142746ELL : 0xEF746E6F7246746ELL;
      v11 = v16 <= 1 ? 0x656D75636F446469 : v8;
      v12 = v16 <= 1 ? v10 : v9;
      if (v6 == v11 && v7 == v12)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return v18;
      }

      v4 = (v18 + 1) & v15;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v18;
  }

  return v4;
}

unint64_t sub_10003C8BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10003C9C0(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&unk_10084A1F0, &unk_1006E9F80);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_1008341D0, &unk_1006BF8D0);
      result = sub_10003AF10(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10001F358(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003CBB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834998, &qword_1006C0178);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

void *sub_10003CCE4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007224(&qword_1008348E0, &qword_1006C00F8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10003AFE4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10003AFE4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003CE0C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834988, &qword_1006C0170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_100834990, &qword_1006DA820);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_100834988, &qword_1006C0170);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo();
      result = sub_1000405C4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003D01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834898, &qword_1006C00D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_10003B078(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10003D124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100833A48, &unk_1006BF8B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10003B028(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10003D21C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100849420, &qword_1006DA510);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003D358(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008348E8, &qword_1006C0100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_1008348F0, &qword_1006C0108);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_1008348E8, &qword_1006C0100);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for IdentityProofingDisplayMessage();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003D56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834738, &unk_1006DA620);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, &v13, &qword_100834740, &qword_1006C0030);
      v5 = v13;
      v6 = v14;
      result = sub_10003B8DC(v13, v14, &String.hash(into:), sub_10003BBE4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001F358(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10003D6C8(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008347B8, &qword_1006C0048);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_1008347C0, &qword_1006C0050);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_1008347B8, &qword_1006C0048);
      result = sub_10003B100(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for IdentityKeyGenerationOption();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003D8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008346F8, &qword_1006DA530);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, &v13, &qword_100834450, &unk_1006BFED0);
      v5 = v13;
      v6 = v14;
      result = sub_10003B8DC(v13, v14, &String.hash(into:), sub_10003BBE4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001F348(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003DA34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008348F8, &qword_1006C0110);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10003B1D8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10003DB20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834718, &qword_1006C0018);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, v13, &qword_100834720, &qword_1006DA4F0);
      result = sub_10003AECC(v13);
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
      result = sub_10001F348(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003DC5C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834910, &qword_1006C0118);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_100834918, &qword_1006C0120);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_100834910, &qword_1006C0118);
      result = sub_10003B21C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for IQCType();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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