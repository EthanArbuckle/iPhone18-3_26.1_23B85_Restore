uint64_t sub_10001C040()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C0C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C120(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000092BC(a1, a2);
  }

  return a1;
}

void *sub_10001C16C()
{
  v0 = type metadata accessor for SESKeystore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = SESKeystore.init()();
  v4 = type metadata accessor for SEPairingManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = SEPairingManager.init()();
  v8 = type metadata accessor for GenericPasswordKeychainWrapper();
  v27 = v8;
  v28 = &off_1001F4DE8;
  v26[0] = swift_allocObject();
  v9 = type metadata accessor for SyncableKeyStoreProvider();
  v10 = swift_allocObject();
  v11 = sub_1000129AC(v26, v8);
  v12 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[5] = v8;
  v10[6] = &off_1001F4DE8;
  v10[2] = v16;

  sub_100005090(v26);
  v27 = v9;
  v28 = &off_1001F5068;
  v26[0] = v10;
  type metadata accessor for CredentialKeyManager();
  v17 = swift_allocObject();
  v18 = sub_1000129AC(v26, v9);
  v19 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v26[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_1000F20BC(v3, v7, *v21, v17);

  sub_100005090(v26);
  return v23;
}

uint64_t sub_10001C3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for MobileAssetType();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v19 = swift_task_alloc();
  v2[29] = v19;
  *v19 = v2;
  v19[1] = sub_10001C6CC;

  return sub_10001DD1C(2, 0, a2);
}

uint64_t sub_10001C6CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v8 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v6 = sub_10001D774;
  }

  else
  {
    *(v4 + 288) = a1 & 1;
    v6 = sub_10001C820;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001C820()
{
  if (*(v0 + 288) == 1)
  {
    v1 = *(v0 + 224);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Proceeding with fetching MobileAssets", v4, 2u);
    }

    v5 = *(v0 + 224);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);

    v11 = *(v7 + 8);
    *(v0 + 248) = v11;
    v11(v5, v6);
    v12 = type metadata accessor for MobileAssetManager();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = MobileAssetManager.init()();
    *(v0 + 16) = v15;
    *(v0 + 256) = v15;
    (*(v9 + 104))(v8, enum case for MobileAssetType.coreidvassets(_:), v10);
    v16 = sub_10010CBB4(_swiftEmptyArrayStorage);
    *(v0 + 264) = v16;
    v17 = async function pointer to MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:)[1];
    v18 = swift_task_alloc();
    *(v0 + 272) = v18;
    *v18 = v0;
    v18[1] = sub_10001CBC4;
    v19 = *(v0 + 168);
    v20 = *(v0 + 104);

    return MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:)(v19, v20, v16, v12, &protocol witness table for MobileAssetManager);
  }

  else
  {
    v21 = *(v0 + 200);
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "no identity credential, skipping MobileAssets", v24, 2u);
    }

    v25 = *(v0 + 200);
    v26 = *(v0 + 176);
    v27 = *(v0 + 184);

    (*(v27 + 8))(v25, v26);
    sub_10002055C("Finished MobileAsset refresh");
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v34 = *(v0 + 160);
    v33 = *(v0 + 168);
    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    v37 = *(v0 + 136);
    v40 = *(v0 + 128);
    v41 = *(v0 + 104);
    v42 = *(v0 + 80);
    v43 = *(v0 + 56);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_10001CBC4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v16 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = v2[32];
    v4 = v2[33];
    v7 = v2[12];
    v6 = v2[13];
    v8 = v2[11];

    (*(v7 + 8))(v6, v8);

    v9 = sub_10001DA48;
  }

  else
  {
    v11 = v2[32];
    v10 = v2[33];
    v13 = v2[12];
    v12 = v2[13];
    v14 = v2[11];

    (*(v13 + 8))(v12, v14);

    v9 = sub_10001CD74;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10001CD74()
{
  v111 = v0;
  v1 = v0[27];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[14];
  v5 = v0[15];
  defaultLogger()();
  v102 = *(v5 + 16);
  v102(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[22];
  v107 = v0[23];
  v12 = v0[20];
  v14 = v0[14];
  v13 = v0[15];
  if (v8)
  {
    v94 = v0[22];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v110 = v16;
    *v15 = 136315138;
    v90 = v10;
    v92 = v9;
    v17 = URL.debugDescription.getter();
    v19 = v18;
    v88 = v7;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_10010150C(v17, v19, &v110);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v6, v88, "MobileAsset available at directory %s", v15, 0xCu);
    sub_100005090(v16);

    v92(v90, v94);
  }

  else
  {

    v20 = *(v13 + 8);
    v20(v12, v14);
    v9(v10, v11);
  }

  v22 = v0[35];
  v23 = v0[21];
  v24 = v0[19];
  URL.appendingPathComponent(_:)();
  v25 = Data.init(contentsOf:options:)();
  if (v22)
  {
    v27 = v0[21];
    v28 = v0[14];
    v20(v0[19], v28);
    v29 = v27;
    v30 = v28;
LABEL_6:
    v20(v29, v30);
    v37 = v0[23];
    v36 = v0[24];
    v38 = v0[9];
    v98 = v0[10];
    v103 = v0[22];
    v39 = v0[8];
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.mobileAssetRefreshFailure(_:), v0[5]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v38 + 16))(v40, v98, v39);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v37 + 8))(v36, v103);
    (*(v38 + 8))(v98, v39);

    goto LABEL_8;
  }

  v31 = v25;
  v32 = v26;
  v33 = type metadata accessor for JSONDecoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for CoreIDVAsset();
  sub_100020698(&qword_100200518, &type metadata accessor for CoreIDVAsset);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v53 = v0[14];
  v54 = v0[3];

  v55 = [objc_opt_self() defaultManager];
  v56 = [v55 URLsForDirectory:5 inDomains:1];
  v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v57 + 16))
  {
    v58 = v0[17];
    v59 = *(v0[15] + 80);
    v102(v0[18], v57 + ((v59 + 32) & ~v59), v0[14]);

    URL.appendingPathComponent(_:isDirectory:)();
    URL._bridgeToObjectiveC()(v60);
    v62 = v61;
    v0[4] = 0;
    v63 = [v55 createDirectoryAtURL:v61 withIntermediateDirectories:1 attributes:0 error:v0 + 4];

    v64 = v0[4];
    if (!v63)
    {
      v100 = v0[19];
      v105 = v0[21];
      v96 = v0[18];
      v72 = v0[17];
      v74 = v0[14];
      v73 = v0[15];
      v75 = v64;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000092BC(v31, v32);
      v20(v72, v74);
      v20(v96, v74);
      v20(v100, v74);
      v29 = v105;
      v30 = v74;
      goto LABEL_6;
    }

    v65 = v0[16];
    v66 = v0[17];
    v67 = v64;
    URL.appendingPathComponent(_:isDirectory:)();
    Data.write(to:options:)();
    v109 = v20;
    v76 = v0[26];
    defaultLogger()();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v0[31];
    v81 = v0[23];
    v89 = v0[22];
    v91 = v0[26];
    v82 = v0[19];
    v101 = v82;
    v106 = v0[21];
    v83 = v0[17];
    v93 = v83;
    v97 = v0[18];
    v87 = v0[16];
    v84 = v0[14];
    v85 = v0[15];
    if (v79)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Copied Asset to local cache", v86, 2u);
    }

    sub_1000092BC(v31, v32);
    v80(v91, v89);
    v109(v87, v84);
    v109(v93, v84);
    v109(v97, v84);
    v109(v101, v84);
    v109(v106, v84);
  }

  else
  {
    v68 = v0[21];
    v69 = v0[19];
    v70 = v0[14];
    v71 = v0[15];

    sub_1000092BC(v31, v32);

    v20(v69, v70);
    v20(v68, v70);
  }

LABEL_8:
  sub_10002055C("Finished MobileAsset refresh");
  v42 = v0[27];
  v41 = v0[28];
  v44 = v0[25];
  v43 = v0[26];
  v45 = v0[24];
  v47 = v0[20];
  v46 = v0[21];
  v49 = v0[18];
  v48 = v0[19];
  v50 = v0[17];
  v95 = v0[16];
  v99 = v0[13];
  v104 = v0[10];
  v108 = v0[7];

  v51 = v0[1];

  return v51();
}

uint64_t sub_10001D774()
{
  v1 = v0[30];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[9];
  v21 = v0[10];
  v23 = v0[22];
  v5 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.mobileAssetRefreshFailure(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v6, v21, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v23);
  (*(v4 + 8))(v21, v5);

  sub_10002055C("Finished MobileAsset refresh");
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v13 = v0[20];
  v12 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v22 = v0[10];
  v24 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001DA48()
{
  v1 = v0[35];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[9];
  v21 = v0[10];
  v23 = v0[22];
  v5 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.mobileAssetRefreshFailure(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v6, v21, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v23);
  (*(v4 + 8))(v21, v5);

  sub_10002055C("Finished MobileAsset refresh");
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v13 = v0[20];
  v12 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v22 = v0[10];
  v24 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001DD1C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 392) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = a3;
  v4 = type metadata accessor for Logger();
  *(v3 + 272) = v4;
  v5 = *(v4 - 8);
  *(v3 + 280) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_10001DDEC, 0, 0);
}

uint64_t sub_10001DDEC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001B27B0;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[37];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[37];
    v9 = v0[34];
    v10 = v0[35];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "internal setting to force credential present", v11, 2u);
    }

    (*(v10 + 8))(v8, v9);
    v13 = v0[36];
    v12 = v0[37];

    v14 = v0[1];

    return v14(1);
  }

  else
  {
    v16 = v0[33];
    v0[5] = &type metadata for CredentialDecryptionKeyIdentifierProvider;
    v0[6] = &off_1001F4D30;
    v17 = type metadata accessor for PayloadProcessorBuilder();
    v18 = swift_allocObject();

    v37 = sub_10001C16C();
    v0[10] = &type metadata for CredentialDecryptionKeyFinder;
    v0[11] = &off_1001F4D20;
    v19 = swift_allocObject();
    v0[7] = v19;
    sub_100012950((v0 + 2), v19 + 16);
    v0[15] = v17;
    v0[16] = &off_1001F78E8;
    v0[12] = v18;
    type metadata accessor for CredentialStorage();
    v20 = swift_allocObject();
    v0[38] = v20;
    v21 = sub_1000129AC((v0 + 7), &type metadata for CredentialDecryptionKeyFinder);
    v22 = swift_task_alloc();
    (_swift_cvw_initWithCopy)(v22, v21, &type metadata for CredentialDecryptionKeyFinder);
    sub_1000129AC((v0 + 12), v17);
    v23 = *(v17 - 8);
    v24 = *(v23 + 64) + 15;
    v36 = swift_task_alloc();
    (*(v23 + 16))();
    v25 = *v36;
    v0[20] = &type metadata for CredentialDecryptionKeyFinder;
    v0[21] = &off_1001F4D20;
    v26 = swift_allocObject();
    v0[17] = v26;
    v27 = *(v22 + 32);
    v28 = *(v22 + 16);
    *(v26 + 16) = *v22;
    *(v26 + 32) = v28;
    *(v26 + 48) = v27;
    v0[25] = v17;
    v0[26] = &off_1001F78E8;
    v0[22] = v25;
    v20[2] = sub_10010D640(&off_1001F3F60);
    v29 = v16;
    v20[15] = v16;
    sub_10001A940((v0 + 17), (v20 + 4));
    sub_10001A940((v0 + 22), (v20 + 9));
    v20[14] = v37;
    v30 = type metadata accessor for BiometricsHelper();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();

    v33 = BiometricsHelper.init()();
    v0[30] = type metadata accessor for DeviceInformationProvider();
    v0[31] = &protocol witness table for DeviceInformationProvider;
    sub_10001A9A4(v0 + 27);
    DeviceInformationProvider.init()();
    type metadata accessor for BiometricStorage();
    v34 = swift_allocObject();
    v34[2] = v29;
    v34[8] = v37;
    type metadata accessor for AppleIDVManager();
    sub_1000215BC(v34 + 3);
    sub_100005090(v0 + 22);
    sub_100005090(v0 + 17);
    v34[9] = v33;
    sub_10001AA08((v0 + 27), (v34 + 10));
    v20[3] = v34;
    sub_100005090(v0 + 12);

    sub_100005090(v0 + 7);

    sub_10001AA20((v0 + 2));
    v35 = swift_task_alloc();
    v0[39] = v35;
    *v35 = v0;
    v35[1] = sub_10001E2FC;

    return sub_100145A04(&off_1001F3F60);
  }
}

uint64_t sub_10001E2FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_10001E9E0;
  }

  else
  {
    v5 = sub_10001E410;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_10001E410()
{
  if (!*(*(v0 + 320) + 16))
  {
    v6 = *(v0 + 320);
    goto LABEL_7;
  }

  v1 = sub_100099644(0x797469746E656469, 0xE800000000000000);
  if ((v2 & 1) == 0)
  {
    v7 = *(v0 + 320);
    goto LABEL_7;
  }

  v3 = *(v0 + 392);
  v4 = *(*(*(v0 + 320) + 56) + 8 * v1);
  *(v0 + 336) = v4;

  if (v3)
  {

    v5 = 1;
LABEL_8:
    v8 = *(v0 + 288);
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v9, v10, "hasIdentityCredential = %{BOOL}d", v11, 8u);
    }

    v12 = *(v0 + 304);
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v15 = *(v0 + 272);

    (*(v14 + 8))(v13, v15);
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);

    v18 = *(v0 + 8);

    return v18(v5);
  }

  v20 = *(v4 + 16);
  *(v0 + 344) = v20;
  *(v0 + 352) = 0;
  result = *(v0 + 336);
  if (!v20)
  {
LABEL_7:

    v5 = 0;
    goto LABEL_8;
  }

  if (result[2])
  {
    v21 = result[5];
    *(v0 + 360) = v21;
    v22 = result[4];

    v23 = swift_task_alloc();
    *(v0 + 368) = v23;
    *v23 = v0;
    v23[1] = sub_10001E65C;
    v24 = *(v0 + 304);

    return sub_100146280(v22, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E65C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[47] = v1;

  v7 = v4[45];
  if (v1)
  {
    v8 = v4[42];

    v9 = sub_10001EA58;
  }

  else
  {

    v4[48] = a1;
    v9 = sub_10001E7B4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10001E7B4()
{
  v1 = v0[48];
  v2 = v0[32];
  v3 = [v1 credentialState];

  if (v3 == v2)
  {
    v4 = v0[42];
LABEL_4:

    v8 = v0[36];
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v3 == v2;
      _os_log_impl(&_mh_execute_header, v9, v10, "hasIdentityCredential = %{BOOL}d", v11, 8u);
    }

    v12 = v3 == v2;
    v13 = v0[38];
    v15 = v0[35];
    v14 = v0[36];
    v16 = v0[34];

    (*(v15 + 8))(v14, v16);
    v18 = v0[36];
    v17 = v0[37];

    v19 = v0[1];

    return v19(v12);
  }

  v5 = v0[43];
  v6 = v0[44] + 1;
  v0[44] = v6;
  result = v0[42];
  if (v6 == v5)
  {
    goto LABEL_4;
  }

  if (v6 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = result + 16 * v6;
    v21 = *(v20 + 40);
    v0[45] = v21;
    v22 = *(v20 + 32);

    v23 = swift_task_alloc();
    v0[46] = v23;
    *v23 = v0;
    v23[1] = sub_10001E65C;
    v24 = v0[38];

    return sub_100146280(v22, v21);
  }

  return result;
}

uint64_t sub_10001E9E0()
{
  v1 = v0[38];

  v2 = v0[41];
  v4 = v0[36];
  v3 = v0[37];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_10001EA58()
{
  v1 = v0[38];

  v2 = v0[47];
  v4 = v0[36];
  v3 = v0[37];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_10001EAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v13 = type metadata accessor for MobileAssetType();
  v2[23] = v13;
  v14 = *(v13 - 8);
  v2[24] = v14;
  v15 = *(v14 + 64) + 15;
  v2[25] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v2[26] = v16;
  v17 = *(v16 - 8);
  v2[27] = v17;
  v18 = *(v17 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v19 = swift_task_alloc();
  v2[35] = v19;
  *v19 = v2;
  v19[1] = sub_10001EDCC;

  return sub_10001DD1C(0, 1, a2);
}

uint64_t sub_10001EDCC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v8 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v6 = sub_10001FB00;
  }

  else
  {
    *(v4 + 328) = a1 & 1;
    v6 = sub_10001EF20;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001EF20()
{
  if (*(v0 + 328))
  {
    v1 = *(v0 + 248);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "skipping clearing as we still have identity credential ", v4, 2u);
    }

    v5 = *(v0 + 248);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);

    (*(v7 + 8))(v5, v6);
    sub_10002055C("Finished clear Cached Assets");
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 224);
    v15 = *(v0 + 200);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v38 = *(v0 + 160);
    v39 = *(v0 + 136);
    v40 = *(v0 + 112);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 272);
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Proceeding with clearing Cached MobileAssets", v23, 2u);
    }

    v24 = *(v0 + 272);
    v25 = *(v0 + 208);
    v26 = *(v0 + 216);
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 184);

    v30 = *(v26 + 8);
    *(v0 + 296) = v30;
    v30(v24, v25);
    v31 = type metadata accessor for MobileAssetManager();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = MobileAssetManager.init()();
    *(v0 + 64) = v34;
    *(v0 + 304) = v34;
    (*(v28 + 104))(v27, enum case for MobileAssetType.coreidvassets(_:), v29);
    v35 = async function pointer to MobileAssetManagerProtocol.evictAssets(type:)[1];
    v36 = swift_task_alloc();
    *(v0 + 312) = v36;
    *v36 = v0;
    v36[1] = sub_10001F29C;
    v37 = *(v0 + 200);

    return MobileAssetManagerProtocol.evictAssets(type:)(v37, v31, &protocol witness table for MobileAssetManager);
  }
}

uint64_t sub_10001F29C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[38];
    (*(v2[24] + 8))(v2[25], v2[23]);

    v5 = sub_10001FDC4;
  }

  else
  {
    v6 = v2[38];
    (*(v2[24] + 8))(v2[25], v2[23]);

    v5 = sub_10001F42C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001F42C()
{
  v96 = v0;
  v1 = v0[33];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[26];
  v8 = v0[27];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purged MobileAssets", v9, 2u);
  }

  v5(v6, v7);
  v10 = v0[18];
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 URLsForDirectory:5 inDomains:1];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v13 + 16))
  {
    v14 = v0[21];
    v15 = v0[19];
    v16 = *(v15 + 16);
    v16(v0[22], v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v0[18]);

    URL.appendingPathComponent(_:)();
    if (URL.isFileOnDisk.getter())
    {
      v18 = v0[21];
      URL._bridgeToObjectiveC()(v17);
      v20 = v19;
      v0[9] = 0;
      v21 = [v11 removeItemAtURL:v19 error:v0 + 9];

      v22 = v0[9];
      v23 = v0[18];
      if (v21)
      {
        v24 = v0[32];
        v26 = v0[20];
        v25 = v0[21];
        v27 = v22;
        defaultLogger()();
        v16(v26, v25, v23);
        v28 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();
        v29 = os_log_type_enabled(v28, v88);
        v30 = v0[37];
        v31 = v0[32];
        v33 = v0[26];
        v32 = v0[27];
        v34 = v0[21];
        v92 = v0[22];
        v36 = v0[19];
        v35 = v0[20];
        v37 = v0[18];
        if (v29)
        {
          v87 = v0[37];
          v38 = swift_slowAlloc();
          v86 = v34;
          v39 = swift_slowAlloc();
          v95 = v39;
          *v38 = 136315138;
          v84 = v33;
          v85 = v31;
          v40 = URL.debugDescription.getter();
          v42 = v41;
          v43 = *(v36 + 8);
          v43(v35, v37);
          v44 = sub_10010150C(v40, v42, &v95);

          *(v38 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v28, v88, "Removed cached file at %s", v38, 0xCu);
          sub_100005090(v39);

          v87(v85, v84);
          v43(v86, v37);
          v43(v92, v37);
        }

        else
        {

          v83 = *(v36 + 8);
          v83(v35, v37);
          v30(v31, v33);
          v83(v34, v37);
          v83(v92, v37);
        }
      }

      else
      {
        v62 = v0[28];
        v64 = v0[21];
        v63 = v0[22];
        v65 = v0[19];
        v66 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v67 = *(v65 + 8);
        v67(v64, v23);
        v67(v63, v23);
        defaultLogger()();
        swift_errorRetain();
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();

        v70 = os_log_type_enabled(v68, v69);
        v71 = v0[37];
        v72 = v0[27];
        v73 = v0[28];
        v74 = v0[26];
        if (v70)
        {
          v94 = v0[28];
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v95 = v76;
          *v75 = 136315138;
          swift_getErrorValue();
          v91 = v71;
          v78 = v0[2];
          v77 = v0[3];
          v79 = v0[4];
          v80 = Error.localizedDescription.getter();
          v82 = sub_10010150C(v80, v81, &v95);

          *(v75 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v68, v69, "Ignoring error removing cached file: %s", v75, 0xCu);
          sub_100005090(v76);

          v91(v94, v74);
        }

        else
        {

          v71(v73, v74);
        }
      }
    }

    else
    {
      v46 = v0[21];
      v45 = v0[22];
      v47 = v0[18];
      v48 = v0[19];

      v49 = *(v48 + 8);
      v49(v46, v47);
      v49(v45, v47);
    }
  }

  else
  {
  }

  sub_10002055C("Finished clear Cached Assets");
  v51 = v0[33];
  v50 = v0[34];
  v53 = v0[31];
  v52 = v0[32];
  v55 = v0[29];
  v54 = v0[30];
  v56 = v0[28];
  v57 = v0[25];
  v59 = v0[21];
  v58 = v0[22];
  v89 = v0[20];
  v90 = v0[17];
  v93 = v0[14];

  v60 = v0[1];

  return v60();
}

uint64_t sub_10001FB00()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[16];
  v20 = v0[17];
  v22 = v0[26];
  v5 = v0[15];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.mobileAssetClearCacheFailure(_:), v0[12]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v6, v20, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v22);
  (*(v4 + 8))(v20, v5);

  sub_10002055C("Finished clear Cached Assets");
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v14 = v0[25];
  v16 = v0[21];
  v15 = v0[22];
  v19 = v0[20];
  v21 = v0[17];
  v23 = v0[14];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001FDC4()
{
  v109 = v0;
  v1 = v0[40];
  v2 = v0[29];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[40];
    v101 = v0[29];
    v104 = v0[37];
    v7 = v0[26];
    v6 = v0[27];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v108 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[7];
    v13 = Error.localizedDescription.getter();
    v15 = sub_10010150C(v13, v14, &v108);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ignoring error clearing MobileAssets: %s", v8, 0xCu);
    sub_100005090(v9);

    v104(v101, v7);
  }

  else
  {
    v16 = v0[40];
    v17 = v0[37];
    v18 = v0[29];
    v19 = v0[26];
    v20 = v0[27];

    v17(v18, v19);
  }

  v21 = v0[18];
  v22 = [objc_opt_self() defaultManager];
  v23 = [v22 URLsForDirectory:5 inDomains:1];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v24 + 16))
  {
    v25 = v0[21];
    v26 = v0[19];
    v27 = *(v26 + 16);
    v27(v0[22], v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v0[18]);

    URL.appendingPathComponent(_:)();
    if (URL.isFileOnDisk.getter())
    {
      v29 = v0[21];
      URL._bridgeToObjectiveC()(v28);
      v31 = v30;
      v0[9] = 0;
      v32 = [v22 removeItemAtURL:v30 error:v0 + 9];

      v33 = v0[9];
      v34 = v0[18];
      if (v32)
      {
        v35 = v0[32];
        v37 = v0[20];
        v36 = v0[21];
        v38 = v33;
        defaultLogger()();
        v27(v37, v36, v34);
        v39 = Logger.logObject.getter();
        v99 = static os_log_type_t.info.getter();
        v40 = os_log_type_enabled(v39, v99);
        v41 = v0[37];
        v42 = v0[32];
        v44 = v0[26];
        v43 = v0[27];
        v45 = v0[21];
        v105 = v0[22];
        v47 = v0[19];
        v46 = v0[20];
        v48 = v0[18];
        if (v40)
        {
          v98 = v0[37];
          v49 = swift_slowAlloc();
          v97 = v45;
          v50 = swift_slowAlloc();
          v108 = v50;
          *v49 = 136315138;
          v95 = v44;
          v96 = v42;
          v51 = URL.debugDescription.getter();
          v53 = v52;
          v54 = *(v47 + 8);
          v54(v46, v48);
          v55 = sub_10010150C(v51, v53, &v108);

          *(v49 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v39, v99, "Removed cached file at %s", v49, 0xCu);
          sub_100005090(v50);

          v98(v96, v95);
          v54(v97, v48);
          v54(v105, v48);
        }

        else
        {

          v94 = *(v47 + 8);
          v94(v46, v48);
          v41(v42, v44);
          v94(v45, v48);
          v94(v105, v48);
        }
      }

      else
      {
        v73 = v0[28];
        v75 = v0[21];
        v74 = v0[22];
        v76 = v0[19];
        v77 = v33;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v78 = *(v76 + 8);
        v78(v75, v34);
        v78(v74, v34);
        defaultLogger()();
        swift_errorRetain();
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.info.getter();

        v81 = os_log_type_enabled(v79, v80);
        v82 = v0[37];
        v83 = v0[27];
        v84 = v0[28];
        v85 = v0[26];
        if (v81)
        {
          v107 = v0[28];
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v108 = v87;
          *v86 = 136315138;
          swift_getErrorValue();
          v103 = v82;
          v89 = v0[2];
          v88 = v0[3];
          v90 = v0[4];
          v91 = Error.localizedDescription.getter();
          v93 = sub_10010150C(v91, v92, &v108);

          *(v86 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v79, v80, "Ignoring error removing cached file: %s", v86, 0xCu);
          sub_100005090(v87);

          v103(v107, v85);
        }

        else
        {

          v82(v84, v85);
        }
      }
    }

    else
    {
      v57 = v0[21];
      v56 = v0[22];
      v58 = v0[18];
      v59 = v0[19];

      v60 = *(v59 + 8);
      v60(v57, v58);
      v60(v56, v58);
    }
  }

  else
  {
  }

  sub_10002055C("Finished clear Cached Assets");
  v62 = v0[33];
  v61 = v0[34];
  v64 = v0[31];
  v63 = v0[32];
  v66 = v0[29];
  v65 = v0[30];
  v67 = v0[28];
  v68 = v0[25];
  v70 = v0[21];
  v69 = v0[22];
  v100 = v0[20];
  v102 = v0[17];
  v106 = v0[14];

  v71 = v0[1];

  return v71();
}

uint64_t sub_10002055C(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100020698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000206E0()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100020718(uint64_t a1)
{
  v2 = type metadata accessor for AnyCodable();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v76 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v73);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v58 - v15;
  sub_100004E70(&qword_100200520, &unk_1001AB0B0);
  result = static _DictionaryStorage.copy(original:)();
  v18 = result;
  v64 = a1;
  v19 = *(a1 + 64);
  v60 = a1 + 64;
  v20 = *(a1 + 32);
  v21 = 0;
  v22 = 1 << v20;
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v59 = (v22 + 63) >> 6;
  v62 = v13;
  v63 = result + 64;
  v61 = result;
  v77 = v13 + 16;
  v74 = v11;
  v75 = (v13 + 8);
  v81 = v5 + 8;
  v71 = v16;
  v72 = v9;
  v25 = (v5 + 8);
  v26 = v73;
  if (v24)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v24));
      v28 = (v24 - 1) & v24;
LABEL_10:
      v31 = v27 | (v21 << 6);
      v68 = v28;
      v32 = *(v64 + 56);
      v33 = (*(v64 + 48) + 16 * v31);
      v34 = v33[1];
      v69 = *v33;
      v70 = v31;
      v35 = *(v32 + 8 * v31);
      v36 = *(v35 + 16);
      if (v36)
      {
        v67 = v21;
        v84 = &_swiftEmptyArrayStorage;
        v66 = v34;
        v37 = v35;

        specialized ContiguousArray.reserveCapacity(_:)();
        v80 = sub_100020BF0();
        v38 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v65 = v37;
        v39 = v37 + v38;
        v40 = *(v62 + 72);
        v78 = *(v62 + 16);
        v79 = v40;
        do
        {
          v83 = v36;
          v41 = v71;
          v78(v71, v39, v12);
          v42 = v74;
          CBOREncodedCBOR.value.getter();
          v82 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v44 = v43;
          v45 = v12;
          v46 = *v25;
          (*v25)(v42, v26);
          v47 = v72;
          CBOREncodedCBOR.value.getter();
          v48 = v76;
          ISO18013IssuerSignedItem.elementValue.getter();
          v46(v47, v26);
          v12 = v45;
          sub_10019BFAC(v82, v44, v48);
          v49 = v41;
          v50 = v83;
          (*v75)(v49, v45);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v51 = v84[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v39 += v79;
          v36 = v50 - 1;
        }

        while (v36);

        v52 = v84;
        v18 = v61;
        result = v66;
        v21 = v67;
      }

      else
      {

        v52 = &_swiftEmptyArrayStorage;
      }

      v53 = v70;
      *(v63 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v54 = (v18[6] + 16 * v53);
      *v54 = v69;
      v54[1] = result;
      *(v18[7] + 8 * v53) = v52;
      v55 = v18[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        break;
      }

      v18[2] = v57;
      v24 = v68;
      if (!v68)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v29 = v21;
    while (1)
    {
      v21 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v21 >= v59)
      {
        return v18;
      }

      v30 = *(v60 + 8 * v21);
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100020BF0()
{
  result = qword_100200528;
  if (!qword_100200528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100200528);
  }

  return result;
}

uint64_t sub_100020C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v70 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v59);
  v68 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v52 = sub_10010D040(_swiftEmptyArrayStorage);
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v58 = v16 & *(a2 + 64);
  v17 = (v15 + 63) >> 6;
  v66 = (v5 + 8);
  v67 = v8 + 16;
  v61 = (v8 + 8);
  v69 = v8;
  v65 = (v8 + 32);

  v19 = 0;
  v75 = 0;
  v62 = v13;
  v56 = a2;
  v55 = a1;
  v54 = a2 + 64;
  v53 = v17;
LABEL_6:
  v20 = v58;
  while (v20)
  {
    v21 = v20;
LABEL_13:
    v20 = (v21 - 1) & v21;
    if (*(a1 + 16))
    {
      v58 = (v21 - 1) & v21;
      v23 = __clz(__rbit64(v21)) | (v19 << 6);
      v24 = (*(a2 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(a2 + 56) + 8 * v23);

      v57 = v25;
      v28 = sub_100099644(v25, v26);
      if ((v29 & 1) == 0)
      {

LABEL_5:

        goto LABEL_6;
      }

      v30 = *(*(a1 + 56) + 8 * v28);
      v31 = *(v27 + 16);
      v72 = v30;

      v71 = v31;
      if (v31)
      {
        v32 = 0;
        v33 = _swiftEmptyArrayStorage;
        v34 = v59;
        v35 = v4;
        v60 = v4;
        v63 = v27;
        v64 = v26;
        while (v32 < *(v27 + 16))
        {
          v74 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v73 = *(v69 + 72);
          (*(v69 + 16))(v13, v27 + v74 + v73 * v32, v34);
          v36 = v70;
          v37 = v34;
          CBOREncodedCBOR.value.getter();
          v38 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v39 = v13;
          v41 = v40;
          v42 = (*v66)(v36, v35);
          v76[0] = v38;
          v76[1] = v41;
          __chkstk_darwin(v42);
          *(&v51 - 2) = v76;
          v43 = v75;
          LOBYTE(v38) = sub_100120CF8(sub_10000ED28, (&v51 - 4), v72);
          v75 = v43;

          if (v38)
          {
            v44 = *v65;
            (*v65)(v68, v39, v37);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = v33;
            if (isUniquelyReferenced_nonNull_native)
            {
              v34 = v37;
            }

            else
            {
              sub_10010A758(0, v33[2] + 1, 1);
              v34 = v59;
              v33 = v77;
            }

            v27 = v63;
            v26 = v64;
            v46 = v74;
            v48 = v33[2];
            v47 = v33[3];
            if (v48 >= v47 >> 1)
            {
              sub_10010A758(v47 > 1, v48 + 1, 1);
              v34 = v59;
              v33 = v77;
            }

            v33[2] = v48 + 1;
            result = (v44)(v33 + v46 + v48 * v73, v68, v34);
            v35 = v60;
            v13 = v62;
          }

          else
          {
            result = (*v61)(v39, v37);
            v34 = v37;
            v13 = v39;
            v27 = v63;
            v26 = v64;
          }

          if (v71 == ++v32)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_33;
      }

      v33 = _swiftEmptyArrayStorage;
      v35 = v4;
LABEL_28:
      v4 = v35;

      if (!v33[2])
      {

        a2 = v56;
        a1 = v55;
        v14 = v54;
        v17 = v53;
        goto LABEL_5;
      }

      v49 = v52;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = v49;
      sub_1001217B4(v33, v57, v26, v50);

      v52 = v76[0];
      a2 = v56;
      a1 = v55;
      v14 = v54;
      v17 = v53;
      goto LABEL_6;
    }
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      return v52;
    }

    v21 = *(v14 + 8 * v22);
    ++v19;
    if (v21)
    {
      v19 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

double sub_100021208()
{
  type metadata accessor for EnvironmentManager();
  v0 = swift_allocObject();
  sub_100004E70(&qword_1002005D0, &unk_1001AB190);
  v1 = swift_allocObject();
  result = 0.0;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 60) = 0u;
  *(v0 + 16) = v1;
  qword_100205C80 = v0;
  return result;
}

uint64_t sub_100021274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1)
  {
    v12 = a1[5];
    v11 = a1[6];
    v14 = a1[3];
    v13 = a1[4];
    v17 = a1 + 1;
    v16 = a1[1];
    v15 = v17[1];
    *a2 = v10;
    a2[1] = v16;
    a2[2] = v15;
    a2[3] = v14;
    a2[4] = v13;
    a2[5] = v12;
    a2[6] = v11;

    sub_10002159C(v16);
    sub_10002159C(v14);
    return sub_10002159C(v12);
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v23[1] = v2;
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No environment exists, creating new environment", v21, 2u);
    }

    (*(v6 + 8))(v9, v5);
    type metadata accessor for IDCSCoreDataStore();
    swift_allocObject();
    v22 = sub_10005917C(0);
    *a1 = v22;
    *(a1 + 1) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 5) = 0u;
    *a2 = v22;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 5) = 0u;
  }
}

uint64_t sub_100021468()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000214C4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000214DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000214F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100021540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002159C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000215BC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v3 + 72));
  sub_10002171C((v3 + 16), v11);
  os_unfair_lock_unlock((v3 + 72));
  v4 = v11[1];
  v5 = v12;
  v6 = v13;
  sub_1000215AC(v12);

  sub_10000ED48(v4);
  sub_10000ED48(v5);
  v7 = sub_10000ED48(v6);
  if (v5)
  {
    v5(v7);

    return sub_10000ED48(v5);
  }

  else
  {
    v9 = *(v1 + 48);
    v10 = *(v1 + 52);
    swift_allocObject();
    result = AppleIDVManager.init()();
    a1[3] = v1;
    a1[4] = &protocol witness table for AppleIDVManager;
    *a1 = result;
  }

  return result;
}

BOOL sub_100021738()
{
  v0 = sub_100004E70(&qword_1002005E8, &qword_1001AB1A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v16[-v6];
  v8 = sub_100004E70(&qword_1002005F0, &qword_1001AB1B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16[-v10];
  Regex.init(_regexString:version:)();
  sub_100021E6C();
  dispatch thunk of RegexComponent.regex.getter();
  String.subscript.getter();
  Regex.wholeMatch(in:)();

  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v7, v0);
  v13 = sub_100004E70(&qword_100200600, &qword_1001AB1B8);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_10000A0D4(v11, &qword_1002005F0, &qword_1001AB1B0);
  return v14;
}

void sub_100021A34(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DIPError.Code();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E70(&qword_1002005D8, &qword_1001AB1A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = SecCertificateRef.commonName()();
  countAndFlagsBits = v10.value._countAndFlagsBits;
  object = v10.value._object;
  v13 = SecCertificateRef.organization()();
  v28 = v13.value._countAndFlagsBits;
  v31 = v13.value._object;
  v14 = SecCertificateRef.organizationalUnit()();
  v27 = v14.value._countAndFlagsBits;
  v36 = v14.value._object;
  if (v10.value._object)
  {

    v15 = sub_100021738();

    if (v15)
    {

      object = 0xEF766F672E736864;
      countAndFlagsBits = 0x2E6173742E6C646DLL;
    }
  }

  v16 = [objc_opt_self() standardUserDefaults];
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  v17._object = 0x80000001001B2870;
  v18 = NSUserDefaults.internalString(forKey:)(v17);

  if (!v18.value._object)
  {
    goto LABEL_11;
  }

  v19 = (v18.value._object >> 56) & 0xF;
  if ((v18.value._object & 0x2000000000000000) == 0)
  {
    v19 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    if (!object)
    {
      goto LABEL_17;
    }

    v34 = countAndFlagsBits;
    v35 = object;
    v32 = 0x61696D656469;
    v33 = 0xE600000000000000;
    v20 = type metadata accessor for Locale();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    sub_100021E18();
    StringProtocol.range<A>(of:options:range:locale:)();
    v22 = v21;
    sub_10000A0D4(v9, &qword_1002005D8, &qword_1001AB1A0);
    if ((v22 & 1) == 0)
    {

      object = 0xE600000000000000;
      countAndFlagsBits = 0x61696D656469;
    }
  }

  else
  {
LABEL_11:
    if (!object)
    {
      goto LABEL_17;
    }
  }

  v23 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v23 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    *a1 = countAndFlagsBits;
    a1[1] = object;
    v24 = v31;
    a1[2] = v28;
    a1[3] = v24;
    v25 = v36;
    a1[4] = v27;
    a1[5] = v25;
    return;
  }

LABEL_17:

  (*(v29 + 104))(v5, enum case for DIPError.Code.idcsMissingReaderCommonName(_:), v30);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

unint64_t sub_100021E18()
{
  result = qword_1002005E0;
  if (!qword_1002005E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002005E0);
  }

  return result;
}

unint64_t sub_100021E6C()
{
  result = qword_1002005F8;
  if (!qword_1002005F8)
  {
    sub_100021ED0(&qword_1002005E8, &qword_1001AB1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002005F8);
  }

  return result;
}

uint64_t sub_100021ED0(uint64_t *a1, uint64_t *a2)
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

__n128 sub_100021F18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100021F2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100021F74(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_100021FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v168 = type metadata accessor for DIPError();
  v164 = *(v168 - 8);
  v7 = *(v164 + 64);
  __chkstk_darwin(v168);
  v163 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError.Code();
  v165 = *(v9 - 8);
  v166 = v9;
  v10 = *(v165 + 64);
  __chkstk_darwin(v9);
  v167 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for SHA256();
  v12 = *(v162 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v162);
  v169 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for SHA256Digest();
  v15 = *(v161 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v161);
  v160 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v171 = *(v18 - 8);
  v19 = *(v171 + 8);
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  v170 = &v136 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v136 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v136 - v29;
  __chkstk_darwin(v28);
  v35 = &v136 - v34;
  if (a4 == 1)
  {
    v155 = v33;
    v158 = v32;
    v154 = v31;
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "CredentialDecryptionKeyFinder finding ECv3 key", v44, 2u);
    }

    v45 = v30;
    v39 = *(v171 + 1);
    v39(v45, v18);
    v40 = sub_100023A14(a2, a3);
  }

  else
  {
    if (a4 != 2)
    {
      defaultLogger()();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "CredentialDecryptionKeyFinder payload does not require a decryption key; skipping key search", v57, 2u);
      }

      (*(v171 + 1))(v27, v18);
      return 0;
    }

    v155 = v33;
    v158 = v32;
    v154 = v31;
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "CredentialDecryptionKeyFinder finding HPKE key", v38, 2u);
    }

    v39 = *(v171 + 1);
    v39(v35, v18);
    v40 = sub_1000233C4(a2, a3);
  }

  v46 = v40;
  v47 = v41;
  sub_10005966C();
  v59 = v48;
  v141 = v47;
  v144 = v46;
  v142 = 0;
  if (v48 >> 62)
  {
    goto LABEL_95;
  }

  v60 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v169;
  if (v60)
  {
    while (1)
    {
      v62 = 0;
      v152 = v59 & 0xC000000000000001;
      v151 = v59 & 0xFFFFFFFFFFFFFF8;
      v147 = (v12 + 8);
      v146 = (v15 + 8);
      v153 = v171 + 8;
      v63 = !v144 && v141 == 0xC000000000000000;
      v64 = !v63;
      v139 = v64;
      v145 = v141 >> 62;
      v65 = __OFSUB__(HIDWORD(v144), v144);
      v137 = v65;
      v136 = HIDWORD(v144) - v144;
      v138 = BYTE6(v141);
      *&v49 = 136315394;
      v140 = v49;
      v149 = v18;
      v148 = v39;
      v150 = v59;
      v143 = v60;
      while (v152)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v162;
        v67 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
LABEL_81:
          __break(1u);
LABEL_82:

          (*(v165 + 104))(v167, enum case for DIPError.Code.invalidStoredData(_:), v166);
          sub_10002688C(_swiftEmptyArrayStorage);
          sub_10002415C(&qword_100200200, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_1000092BC(v144, v141);
          (*(v165 + 104))(v167, enum case for DIPError.Code.internalError(_:), v166);
          swift_errorRetain();
          sub_10002688C(_swiftEmptyArrayStorage);
          v50 = v163;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_10002415C(&qword_100200200, &type metadata accessor for DIPError);
          v51 = v168;
          swift_allocError();
          v52 = v164;
          (*(v164 + 16))(v53, v50, v51);
          v54 = v158;
          defaultLogger()();
          DIPLogError(_:message:log:)();

          v39(v54, v18);
          (*(v52 + 8))(v50, v51);

          return 0;
        }

LABEL_31:
        v68 = [v66 publicKey];
        if (!v68)
        {
          goto LABEL_82;
        }

        v69 = v68;
        v156 = v67;
        v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v71;

        v59 = sub_10002415C(&qword_100200608, &type metadata accessor for SHA256);
        dispatch thunk of HashFunction.init()();
        v72 = v12 >> 62;
        v159 = v70;
        v157 = v66;
        if ((v12 >> 62) > 1)
        {
          if (v72 == 2)
          {
            v73 = *(v70 + 16);
            v74 = *(v70 + 24);

            if (__DataStorage._bytes.getter() && __OFSUB__(v73, __DataStorage._offset.getter()))
            {
              goto LABEL_102;
            }

            if (__OFSUB__(v74, v73))
            {
              goto LABEL_92;
            }

LABEL_44:
            __DataStorage._length.getter();
            v75 = v169;
            dispatch thunk of HashFunction.update(bufferPointer:)();
            v76 = v159;
            sub_1000092BC(v159, v12);
            goto LABEL_47;
          }

          memset(v172, 0, 14);
        }

        else
        {
          if (v72)
          {
            if (v70 >> 32 < v70)
            {
              goto LABEL_91;
            }

            if (__DataStorage._bytes.getter() && __OFSUB__(v70, __DataStorage._offset.getter()))
            {
              goto LABEL_103;
            }

            goto LABEL_44;
          }

          v172[0] = v70;
          LOWORD(v172[1]) = v12;
          BYTE2(v172[1]) = BYTE2(v12);
          BYTE3(v172[1]) = BYTE3(v12);
          BYTE4(v172[1]) = BYTE4(v12);
          BYTE5(v172[1]) = BYTE5(v12);
        }

        v75 = v61;
        dispatch thunk of HashFunction.update(bufferPointer:)();
        sub_1000092BC(v70, v12);
        v76 = v70;
LABEL_47:
        v77 = v160;
        dispatch thunk of HashFunction.finalize()();
        v78 = v75;
        (*v147)(v75, v15);
        sub_10002415C(&qword_100200610, &type metadata accessor for SHA256Digest);
        v79 = v161;
        v80 = Digest.data.getter();
        v59 = v81;
        (*v146)(v77, v79);
        v15 = v170;
        defaultLogger()();
        sub_100009708(v76, v12);
        sub_100009708(v80, v59);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();
        sub_1000092BC(v76, v12);
        sub_1000092BC(v80, v59);
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v172[0] = swift_slowAlloc();
          *v84 = v140;
          v85 = Data.base16EncodedString()();
          v86 = sub_10010150C(v85._countAndFlagsBits, v85._object, v172);

          *(v84 + 4) = v86;
          *(v84 + 12) = 2080;
          v87 = Data.base16EncodedString()();
          v15 = sub_10010150C(v87._countAndFlagsBits, v87._object, v172);
          v61 = v169;

          *(v84 + 14) = v15;
          _os_log_impl(&_mh_execute_header, v82, v83, "Testing potential decryption key with public key %s, hash %s", v84, 0x16u);
          swift_arrayDestroy();
          v18 = v149;

          v39 = v148;

          v39(v170, v18);
          v88 = v145;
        }

        else
        {

          v39 = v148;
          v89 = v149;
          (v148)(v15);
          v88 = v145;
          v61 = v78;
          v18 = v89;
        }

        v90 = v59 >> 62;
        if (v59 >> 62 == 3)
        {
          v91 = 0;
          if (v80)
          {
            v92 = 0;
          }

          else
          {
            v92 = v59 == 0xC000000000000000;
          }

          v94 = !v92 || v88 < 3;
          if (((v94 | v139) & 1) == 0)
          {
            v59 = 0xC000000000000000;
            goto LABEL_84;
          }

LABEL_68:
          if (v88 <= 1)
          {
            goto LABEL_69;
          }

          goto LABEL_73;
        }

        if (v90 == 2)
        {
          v96 = *(v80 + 16);
          v95 = *(v80 + 24);
          v91 = v95 - v96;
          if (__OFSUB__(v95, v96))
          {
            goto LABEL_101;
          }

          goto LABEL_68;
        }

        if (v90 == 1)
        {
          if (__OFSUB__(HIDWORD(v80), v80))
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
          }

          v91 = HIDWORD(v80) - v80;
          if (v88 <= 1)
          {
LABEL_69:
            v97 = v138;
            if (v88)
            {
              v97 = v136;
              if (v137)
              {
                goto LABEL_94;
              }
            }

            goto LABEL_75;
          }
        }

        else
        {
          v91 = BYTE6(v59);
          if (v88 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_73:
        if (v88 != 2)
        {
          if (!v91)
          {
            goto LABEL_83;
          }

          goto LABEL_27;
        }

        v99 = *(v144 + 16);
        v98 = *(v144 + 24);
        v100 = __OFSUB__(v98, v99);
        v97 = v98 - v99;
        if (v100)
        {
          goto LABEL_93;
        }

LABEL_75:
        if (v91 == v97)
        {
          if (v91 < 1 || (v101 = v144, v102 = v141, sub_100009708(v144, v141), v103 = v101, v104 = v142, v105 = sub_100100288(v80, v59, v103, v102), v142 = v104, (v105 & 1) != 0))
          {
LABEL_83:
            v91 = v80;
LABEL_84:

            v106 = v154;
            defaultLogger()();
            v107 = v144;
            v108 = v141;
            sub_100009708(v144, v141);
            v109 = v157;
            v154 = v106;
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.debug.getter();
            v171 = v109;

            sub_1000092BC(v107, v108);
            LODWORD(v170) = v111;
            v112 = v111;
            v113 = v110;
            if (os_log_type_enabled(v110, v112))
            {
              v114 = swift_slowAlloc();
              v172[0] = swift_slowAlloc();
              *v114 = v140;
              v115 = [v171 identifier];
              if (v115)
              {
                v116 = v115;
                v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v119 = v118;
              }

              else
              {
                v119 = 0xE500000000000000;
                v117 = 0x3E6C696E3CLL;
              }

              v120 = sub_10010150C(v117, v119, v172);

              *(v114 + 4) = v120;
              *(v114 + 12) = 2080;
              v121 = v144;
              v122 = v141;
              v123 = Data.base16EncodedString()();
              v124 = sub_10010150C(v123._countAndFlagsBits, v123._object, v172);

              *(v114 + 14) = v124;
              _os_log_impl(&_mh_execute_header, v113, v170, "CredentialDecryptionKeyFinder found key %s with matching identifier %s)", v114, 0x16u);
              swift_arrayDestroy();

              sub_1000092BC(v121, v122);
              sub_1000092BC(v91, v59);
              sub_1000092BC(v159, v12);
              v148(v154, v149);
              return v171;
            }

            else
            {
              sub_1000092BC(v159, v12);
              sub_1000092BC(v91, v59);
              sub_1000092BC(v107, v108);

              v39(v154, v18);
              return v171;
            }
          }
        }

LABEL_27:
        sub_1000092BC(v80, v59);
        sub_1000092BC(v159, v12);

        ++v62;
        v59 = v150;
        if (v156 == v143)
        {
          goto LABEL_96;
        }
      }

      v15 = v162;
      if (v62 < *(v151 + 16))
      {
        break;
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      v60 = _CocoaArrayWrapper.endIndex.getter();
      v61 = v169;
      if (!v60)
      {
        goto LABEL_96;
      }
    }

    v66 = *(v59 + 8 * v62 + 32);
    v67 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_81;
    }

    goto LABEL_31;
  }

LABEL_96:

  v125 = v155;
  defaultLogger()();
  v126 = v144;
  v127 = v141;
  sub_100009708(v144, v141);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();
  sub_1000092BC(v126, v127);
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v155 = v125;
    v131 = v130;
    v132 = swift_slowAlloc();
    v172[0] = v132;
    *v131 = 136315138;
    v133 = Data.base16EncodedString()();
    v134 = sub_10010150C(v133._countAndFlagsBits, v133._object, v172);

    *(v131 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v128, v129, "CredentialDecryptionKeyFinder could not find key with matching HPKE fingerprint %s)", v131, 0xCu);
    sub_100005090(v132);

    sub_1000092BC(v126, v127);
    v135 = v155;
  }

  else
  {
    sub_1000092BC(v126, v127);

    v135 = v125;
  }

  v39(v135, v18);
  return 0;
}

const char *sub_1000233C4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HPKEEnvelopeEncryptedMessagePKRHash();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10002415C(&qword_100200618, &type metadata accessor for HPKEEnvelopeEncryptedMessagePKRHash);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {

    v21 = "key is missing a public key";
    (*(v4 + 104))(v41, enum case for DIPError.Code.jsonDecodingFailed(_:), v3);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10002415C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v36 = v3;
    v39 = 0;
    v40 = v7;
    v22 = v41;

    v23 = v38;
    (*(v38 + 32))(v17, v15, v11);
    v24 = HPKEEnvelopeEncryptedMessagePKRHash.pkRHash.getter();
    if (v25 >> 60 == 15)
    {
      v21 = "getHPKEKeyIdentifier(from:)";
      (*(v4 + 104))(v22, enum case for DIPError.Code.hpkeFailureMissingPkRHash(_:), v36);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10002415C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v23 + 8))(v17, v11);
    }

    else
    {
      v21 = v24;
      v26 = v25;
      defaultLogger()();
      sub_100009708(v21, v26);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      sub_10001C120(v21, v26);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = v10;
        v30 = v29;
        v31 = swift_slowAlloc();
        v42 = v31;
        *v30 = 136315138;
        v32 = Data.base16EncodedString()();
        v36 = v17;
        v33 = v28;
        v34 = sub_10010150C(v32._countAndFlagsBits, v32._object, &v42);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v33, "HPKE payload containers pkRHash %s", v30, 0xCu);
        sub_100005090(v31);

        (*(v37 + 8))(v41, v40);
        (*(v38 + 8))(v36, v11);
      }

      else
      {

        (*(v37 + 8))(v10, v40);
        (*(v38 + 8))(v17, v11);
      }
    }
  }

  return v21;
}

uint64_t sub_100023A14(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v59 = type metadata accessor for DIPError.Code();
  v2 = *(v59 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KeyAgreementParams();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EncryptionParams();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EncryptedDataContainerParamsOnly();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = type metadata accessor for JSONDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10002415C(&qword_100200620, &type metadata accessor for EncryptedDataContainerParamsOnly);
  v27 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v27)
  {

    (*(v2 + 104))(v58, enum case for DIPError.Code.jsonDecodingFailed(_:), v59);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    v28 = type metadata accessor for DIPError();
    sub_10002415C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v57 = v2;

    v48 = v17;
    v29 = *(v17 + 32);
    v56 = v16;
    v29(v23, v21, v16);
    EncryptedDataContainerParamsOnly.params.getter();
    EncryptionParams.keyAgreement.getter();
    (*(v49 + 8))(v15, v50);
    v30 = KeyAgreementParams.recipientFingerprint.getter();
    v32 = v31;
    (*(v51 + 8))(v11, v52);
    v33 = v53;
    defaultLogger()();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    v36 = os_log_type_enabled(v34, v35);
    v47 = v23;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10010150C(v30, v32, &v60);
      _os_log_impl(&_mh_execute_header, v34, v35, "ECv3 payload contains recipient fingerprint %s", v37, 0xCu);
      sub_100005090(v38);
    }

    (*(v54 + 8))(v33, v55);
    v40 = v58;
    v39 = v59;
    v41 = v57;
    v28 = Data.init(base64Encoded:options:)();
    v43 = v42;

    v44 = v56;
    if (v43 >> 60 == 15)
    {
      (*(v41 + 104))(v40, enum case for DIPError.Code.jsonDecodingFailed(_:), v39);
      sub_10002688C(_swiftEmptyArrayStorage);
      v28 = type metadata accessor for DIPError();
      sub_10002415C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v48 + 8))(v47, v44);
    }

    else
    {
      (*(v48 + 8))(v47, v56);
    }
  }

  return v28;
}

uint64_t sub_10002415C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000241A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000241B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100024200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024268()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v3 = type metadata accessor for CredentialKeyType();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v5 = type metadata accessor for CredentialKeyUsage();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC7idcredd13CredentialKey_lock];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100024384()
{
  result = type metadata accessor for CredentialKeyType();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for CredentialKeyUsage();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1000244C0(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = DeviceIdentityKey.key.getter();
  v5 = a1();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100024528@<X0>(uint64_t *a1@<X8>)
{
  DeviceIdentityKey.certificates.getter();
  type metadata accessor for SecCertificate(0);
  v2 = Array<A>.base64EncodedStrings.getter();

  *a1 = v2;
  return result;
}

uint64_t sub_100024590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12[-v5];
  v7 = *(v1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v13 = sub_100027108;
  v14 = v1;
  os_unfair_lock_lock(v7 + 4);
  sub_100027120();
  os_unfair_lock_unlock(v7 + 4);
  if (v15 >> 60 == 15)
  {
    v8 = type metadata accessor for COSEKey();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    COSEKey.init(ec2CurveIdentifier:publicKey:)();
    v10 = type metadata accessor for COSEKey();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      sub_100026564(v6);
      return (*(v11 + 56))(a1, 1, 1, v10);
    }

    else
    {
      (*(v11 + 32))(a1, v6, v10);
      return (*(v11 + 56))(a1, 0, 1, v10);
    }
  }
}

uint64_t sub_10002476C()
{
  v1 = OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey;
  v2 = type metadata accessor for DeviceIdentityKey();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1000247FC()
{
  result = type metadata accessor for DeviceIdentityKey();
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

uint64_t sub_10002488C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  v49 = a1;
  v50 = a2;
  v5 = type metadata accessor for CredentialKeyUsage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v41 - v10;
  v11 = type metadata accessor for CredentialKeyType();
  v41 = *(v11 - 8);
  v12 = v41;
  v13 = *(v41 + 64);
  v14 = __chkstk_darwin(v11);
  v45 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = type metadata accessor for DeviceIdentityKey();
  v47 = *(v18 - 8);
  v19 = v47;
  v20 = *(v47 + 64);
  __chkstk_darwin(v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 16);
  v46 = v22;
  v44 = v18;
  v23(v22, v52, v18);
  v24 = *(v12 + 104);
  v25 = v17;
  v26 = v17;
  v27 = v11;
  v42 = v11;
  v24(v25, enum case for CredentialKeyType.sep(_:), v11);
  v43 = v6;
  v28 = v51;
  (*(v6 + 104))(v51, enum case for CredentialKeyUsage.keySigning(_:), v5);
  v23((v4 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey), v22, v18);
  v29 = v41;
  v30 = v45;
  (*(v41 + 16))(v45, v26, v27);
  v31 = v48;
  v32 = v5;
  (*(v6 + 16))(v48, v28, v5);
  v33 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v4 + v33) = v34;
  v35 = v50;
  *(v4 + 16) = v49;
  *(v4 + 24) = v35;
  v36 = v42;
  (*(v29 + 32))(v4 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v30, v42);
  v37 = v43;
  (*(v43 + 32))(v4 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v31, v32);
  v38 = *(v47 + 8);
  v39 = v44;
  v38(v52, v44);
  (*(v37 + 8))(v51, v32);
  (*(v29 + 8))(v26, v36);
  v38(v46, v39);
  return v4;
}

uint64_t sub_100024C90(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v17 = v2;
  v18 = a1;
  v19 = a2;
  v14 = sub_100027074;
  v15 = &v16;
  os_unfair_lock_lock(v11 + 4);
  sub_100026510();
  os_unfair_lock_unlock(v11 + 4);
  if (!v3)
  {
    return v20;
  }

  (*(v7 + 104))(v10, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100026FE8(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void sub_100024EDC(uint64_t *a1@<X8>)
{
  v3 = DeviceIdentityKey.key.getter();
  v4 = SecKeyRef.signSHA256Digest(_:algorithm:)();
  v6 = v5;

  if (!v1)
  {
    *a1 = v4;
    a1[1] = v6;
  }
}

uint64_t sub_100024F98()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v3 = type metadata accessor for CredentialKeyType();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v5 = type metadata accessor for CredentialKeyUsage();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC7idcredd13CredentialKey_lock];

  v7 = OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey;
  v8 = type metadata accessor for DeviceIdentityKey();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10002512C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100027120();
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_10002519C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100026510();
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_10002526C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey + 8));
  return v1;
}

uint64_t sub_1000252AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_1000252EC()
{
  v1 = v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult;
  v2 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 16);
  v4 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 24);
  v5 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  sub_1000092BC(v2, v3);
  sub_1000092BC(v4, v5);

  return sub_1000092BC(v6, v7);
}

uint64_t sub_100025350()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v3 = type metadata accessor for CredentialKeyType();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v5 = type metadata accessor for CredentialKeyUsage();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC7idcredd13CredentialKey_lock];

  sub_1000092BC(*&v0[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier], *&v0[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier + 8]);
  sub_1000092BC(*&v0[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey], *&v0[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey + 8]);
  v7 = *&v0[OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 24];
  v8 = *&v0[OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 32];
  v9 = *&v0[OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 40];
  v10 = *&v0[OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 48];
  sub_1000092BC(*&v0[OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 8], *&v0[OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 16]);
  sub_1000092BC(v7, v8);
  sub_1000092BC(v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000255A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8));
  return v1;
}

uint64_t sub_1000255E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_1000256A0(void *a1, void *a2)
{
  sub_1000092BC(*(v2 + *a1), *(v2 + *a1 + 8));
  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return sub_1000092BC(v5, v6);
}

uint64_t sub_100025700(void *a1, void *a2)
{
  v5 = *(v2 + 3);

  v6 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v7 = type metadata accessor for CredentialKeyType();
  (*(*(v7 - 8) + 8))(&v2[v6], v7);
  v8 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v9 = type metadata accessor for CredentialKeyUsage();
  (*(*(v9 - 8) + 8))(&v2[v8], v9);
  v10 = *&v2[OBJC_IVAR____TtC7idcredd13CredentialKey_lock];

  v11 = &v2[*a1];
  v12 = *v11;
  v13 = v11[1];

  sub_1000092BC(v12, v13);
  sub_1000092BC(*&v2[*a2], *&v2[*a2 + 8]);

  v14 = *(*v2 + 48);
  v15 = *(*v2 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000258A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey + 8));
  return v1;
}

uint64_t sub_1000258E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_100025928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v17 - v12;
  sub_100009708(*(v2 + *a1), *(v2 + *a1 + 8));
  COSEKey.init(ec2CurveIdentifier:publicKey:)();
  v14 = type metadata accessor for COSEKey();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    return (*(v15 + 32))(a2, v13, v14);
  }

  sub_100026564(v13);
  (*(v6 + 104))(v9, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v5);
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100026FE8(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_100025C10(void *a1, void *a2, void *a3)
{
  sub_1000092BC(*(v3 + *a1), *(v3 + *a1 + 8));
  sub_1000092BC(*(v3 + *a2), *(v3 + *a2 + 8));
  v6 = (v3 + *a3);
  v7 = *v6;
  v8 = v6[1];

  return sub_1000092BC(v7, v8);
}

uint64_t sub_100025C94(void *a1, void *a2, void *a3)
{
  v7 = *(v3 + 3);

  v8 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v9 = type metadata accessor for CredentialKeyType();
  (*(*(v9 - 8) + 8))(&v3[v8], v9);
  v10 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v11 = type metadata accessor for CredentialKeyUsage();
  (*(*(v11 - 8) + 8))(&v3[v10], v11);
  v12 = *&v3[OBJC_IVAR____TtC7idcredd13CredentialKey_lock];

  v13 = &v3[*a1];
  v14 = *v13;
  v15 = v13[1];

  sub_1000092BC(v14, v15);
  sub_1000092BC(*&v3[*a2], *&v3[*a2 + 8]);
  sub_1000092BC(*&v3[*a3], *&v3[*a3 + 8]);

  v16 = *(*v3 + 48);
  v17 = *(*v3 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100025E5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey + 8));
  return v1;
}

uint64_t sub_100025E9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_100025EDC@<X0>(uint64_t a1@<X8>)
{
  sub_100025928(&OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey, a1);
  v2 = type metadata accessor for COSEKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100025F84()
{
  v1 = OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key;
  v2 = type metadata accessor for SymmetricKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier);
  v4 = *(v0 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier + 8);

  return sub_1000092BC(v3, v4);
}

uint64_t sub_100026000()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v3 = type metadata accessor for CredentialKeyType();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v5 = type metadata accessor for CredentialKeyUsage();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC7idcredd13CredentialKey_lock];

  v7 = OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key;
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(*(v8 - 8) + 8);

  v9(&v0[v7], v8);
  sub_1000092BC(*&v0[OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier], *&v0[OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier + 8]);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100026194(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000261CC()
{
  result = type metadata accessor for SymmetricKey();
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

unint64_t sub_100026290(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DIPError.PropertyKey();
  sub_100026FE8(&qword_100201080, &type metadata accessor for DIPError.PropertyKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100026328(a1, v5);
}

unint64_t sub_100026328(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for DIPError.PropertyKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
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
      sub_100026FE8(&qword_100201088, &type metadata accessor for DIPError.PropertyKey);
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

uint64_t sub_100026510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100026564(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000265CC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for Insecure.SHA1();
      sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000267AC(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000267AC(v4, v5);
  }

  type metadata accessor for Insecure.SHA1();
  sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000267AC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.SHA1();
      sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10002688C(uint64_t a1)
{
  v2 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004E70(&qword_100201078, &qword_1001AB528);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100026A68(v10, v6);
      result = sub_100026290(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10001AA08(&v6[v9], v8[7] + 40 * v14);
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

uint64_t sub_100026A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026B60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, void *a8, void *a9, unsigned int *a10)
{
  v52 = a8;
  v12 = v10;
  v61 = a1;
  v62 = a2;
  v60 = a10;
  v57 = a9;
  v17 = type metadata accessor for CredentialKeyUsage();
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  __chkstk_darwin(v17);
  v56 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CredentialKeyType();
  v54 = *(v20 - 8);
  v55 = v20;
  v21 = *(v54 + 64);
  __chkstk_darwin(v20);
  v53 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Insecure.SHA1();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Insecure.SHA1Digest();
  v29 = *(v28 - 8);
  v50 = v28;
  v51 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (v12 + *a7);
  *v33 = a3;
  v33[1] = a4;
  v34 = (v12 + *v52);
  *v34 = a5;
  v34[1] = a6;
  sub_100009708(a3, a4);
  sub_100009708(a5, a6);
  sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1);
  dispatch thunk of HashFunction.init()();
  sub_100009708(a5, a6);
  sub_1000265CC(a5, a6);
  sub_1000092BC(a5, a6);
  dispatch thunk of HashFunction.finalize()();
  (*(v24 + 8))(v27, v23);
  sub_100026FE8(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest);
  v35 = v50;
  v36 = Digest.data.getter();
  v38 = v37;
  (*(v51 + 8))(v32, v35);
  v39 = (v12 + *v57);
  *v39 = v36;
  v39[1] = v38;
  v41 = v53;
  v40 = v54;
  v42 = v55;
  (*(v54 + 104))(v53, enum case for CredentialKeyType.ses(_:), v55);
  v43 = v59;
  v44 = v58;
  v45 = v56;
  (*(v58 + 104))(v56, *v60, v59);
  v46 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v12 + v46) = v47;
  v48 = v62;
  *(v12 + 16) = v61;
  *(v12 + 24) = v48;
  (*(v40 + 32))(v12 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v41, v42);
  (*(v44 + 32))(v12 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v45, v43);
  return v12;
}

uint64_t sub_100026FE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100027074(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_100024EDC(a1);
}

void sub_100027094(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = DeviceIdentityKey.key.getter();
  v5 = a1();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100027138()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  result = dispatch thunk of SESKeystore.deleteKey(_:)();
  if (v1)
  {
    v10[2] = 0x80000001001B25A0;
    v10[3] = "with identifier: ";
    v9 = enum case for DIPError.Code.internalError(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DIPError.Code.internalError(_:), v2);
    swift_errorRetain();
    v10[1] = sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11(v6, v9, v2);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1000273FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000274C0, 0, 0);
}

uint64_t sub_1000274C0()
{
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  String.append(_:)(v0[1]);
  v0[4]._countAndFlagsBits = 0xE400000000000000;
  v2 = *(countAndFlagsBits + 32);
  v3 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
  v4 = swift_task_alloc();
  v0[4]._object = v4;
  *v4 = v0;
  v4[1] = sub_100027594;

  return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(778790244, 0xE400000000000000);
}

uint64_t sub_100027594()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000276F8, 0, 0);
  }

  else
  {
    v5 = v4[7];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1000276F8()
{
  v1 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100027880()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  result = dispatch thunk of SESKeystore.deleteKey(_:)();
  if (v1)
  {
    v10[2] = 0x80000001001B25A0;
    v10[3] = "with identifier: ";
    v9 = enum case for DIPError.Code.internalError(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DIPError.Code.internalError(_:), v2);
    swift_errorRetain();
    v10[1] = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11(v6, v9, v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100027B44()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_100004E70(&qword_100201178, &unk_1001AB5C8) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for DeviceIdentityKey();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100027D5C, 0, 0);
}

uint64_t sub_100027D5C()
{
  v26 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v0[17] = v5;
  v0[18] = v6;
  (*(v2 + 8))(v1, v3);
  v25[0] = 778793835;
  v25[1] = 0xE400000000000000;
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v0[19] = 0xE400000000000000;
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10010150C(778793835, 0xE400000000000000, v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "Generating key signing key with label %s", v15, 0xCu);
    sub_100005090(v16);
  }

  (*(v13 + 8))(v12, v14);
  v17 = v0[6];
  v18 = *(v0[2] + 32);
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v19 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v20 = async function pointer to DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)[1];
  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_100027FDC;
  v22 = v0[10];
  v23 = v0[6];

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v22, 778793835, 0xE400000000000000, v23);
}

uint64_t sub_100027FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 168) = v0;

  sub_10000A0D4(v5, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {
    v7 = *(v2 + 144);

    v8 = sub_100028288;
  }

  else
  {
    v8 = sub_100028154;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100028154()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v16 = v0[5];
  (*(v7 + 16))(v6, v5, v8);
  v10 = type metadata accessor for KeySigningKey(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_10002488C(v2, v1, v6);
  (*(v7 + 8))(v5, v8);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_100028288()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[13];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100028458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(sub_100004E70(&qword_100201178, &unk_1001AB5C8) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = type metadata accessor for DeviceIdentityKey();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100028628, 0, 0);
}

uint64_t sub_100028628()
{
  v21 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 16);
  v20[0] = 778793835;
  v20[1] = 0xE400000000000000;
  String.append(_:)(v2);
  *(v0 + 152) = 0xE400000000000000;
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10010150C(778793835, 0xE400000000000000, v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching key signing key with label %s", v9, 0xCu);
    sub_100005090(v10);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  *(v0 + 160) = v11;
  v12 = *(v0 + 80);
  v13 = *(*(v0 + 48) + 32);
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v14 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = async function pointer to DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)[1];
  v16 = swift_task_alloc();
  *(v0 + 168) = v16;
  *v16 = v0;
  v16[1] = sub_100028874;
  v17 = *(v0 + 112);
  v18 = *(v0 + 80);

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v17, 778793835, 0xE400000000000000, v18);
}

uint64_t sub_100028874()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 176) = v0;

  sub_10000A0D4(v4, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {
    v5 = sub_100028FD4;
  }

  else
  {
    v5 = sub_1000289D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000289D8()
{
  v1 = v0[13];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  (*(v0[12] + 16))(v1, v0[14], v0[11]);
  v5 = type metadata accessor for KeySigningKey(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = sub_10002488C(v4, v3, v1);
  v9 = v8;
  if (v2 >> 60 == 15)
  {
    (*(v0[12] + 8))(v0[14], v0[11]);
LABEL_3:
    v11 = v0[17];
    v10 = v0[18];
    v13 = v0[13];
    v12 = v0[14];
    v15 = v0[9];
    v14 = v0[10];

    v16 = v0[1];

    return v16(v9);
  }

  v18 = v0[22];
  v20 = v0[4];
  v19 = v0[5];
  v21 = *(v8 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v22 = swift_task_alloc();
  *(v22 + 16) = sub_100034008;
  *(v22 + 24) = v9;
  sub_100032EBC(v20, v19);

  os_unfair_lock_lock(v21 + 4);
  sub_100034020(v23);
  os_unfair_lock_unlock(v21 + 4);

  if (v18)
  {
    return result;
  }

  if (v53 >> 60 != 15)
  {
    if (sub_1000EBB34(v52, v53, v0[4], v0[5]))
    {
      v30 = v0[4];
      v29 = v0[5];
      (*(v0[12] + 8))(v0[14], v0[11]);
      sub_10001C120(v52, v53);
      sub_10001C120(v30, v29);
    }

    else
    {
      v31 = v0[17];
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[17];
      v47 = v35;
      v50 = v0[20];
      v36 = v0[14];
      v42 = v0[16];
      v44 = v0[15];
      v37 = v0[12];
      v51 = v0[11];
      v38 = v0[4];
      v39 = v0[5];
      if (v34)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Fetched key signing key does not have the expected public key identifier", v40, 2u);
      }

      sub_10001C120(v52, v53);
      sub_10001C120(v38, v39);

      v50(v47, v44);
      (*(v37 + 8))(v36, v51);
      v9 = 0;
    }

    goto LABEL_3;
  }

  v24 = v0[12];
  v45 = v0[11];
  v48 = v0[14];
  v41 = v0[4];
  v43 = v0[5];
  v25 = *(v0[8] + 104);
  v25(v0[9], enum case for DIPError.Code.idcsInvalidPublicKey(_:), v0[7]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v41, v43);

  (*(v24 + 8))(v48, v45);
  v26 = v0[17];
  v46 = v0[14];
  v49 = v0[13];
  v27 = v0[10];
  v25(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_100028FD4()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v6 = v0[14];
  v7 = v0[13];
  v8 = v0[10];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000291A8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for CredentialKeyType();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for CredentialKeyUsage();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v11 = *(*(sub_100004E70(&qword_100201178, &unk_1001AB5C8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = type metadata accessor for DeviceIdentityKey();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v1[19] = v15;
  v16 = *(v15 - 8);
  v1[20] = v16;
  v17 = *(v16 + 64) + 15;
  v1[21] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v1[22] = v18;
  v19 = *(v18 - 8);
  v1[23] = v19;
  v20 = *(v19 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_100029490, 0, 0);
}

uint64_t sub_100029490()
{
  v26 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v0[25] = v5;
  v0[26] = v6;
  (*(v2 + 8))(v1, v3);
  v25[0] = 778790244;
  v25[1] = 0xE400000000000000;
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v0[27] = 0xE400000000000000;
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10010150C(778790244, 0xE400000000000000, v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "Generating device encryption key with label %s", v15, 0xCu);
    sub_100005090(v16);
  }

  (*(v13 + 8))(v12, v14);
  v17 = v0[13];
  v18 = *(v0[2] + 32);
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v19 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v20 = async function pointer to DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)[1];
  v21 = swift_task_alloc();
  v0[28] = v21;
  *v21 = v0;
  v21[1] = sub_100029710;
  v22 = v0[18];
  v23 = v0[13];

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v22, 778790244, 0xE400000000000000, v23);
}

uint64_t sub_100029710()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 232) = v0;

  sub_10000A0D4(v5, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {
    v7 = *(v2 + 208);

    v8 = sub_100029BF8;
  }

  else
  {
    v8 = sub_100029888;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100029888()
{
  v21 = v0[25];
  v22 = v0[26];
  v24 = v0[24];
  v25 = v0[21];
  v1 = v0[17];
  v23 = v0[18];
  v30 = v0[16];
  v20 = v0[15];
  v2 = v0[14];
  v26 = v0[13];
  v3 = v0[12];
  v29 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v28 = v0[8];
  v18 = v0[6];
  v27 = v0[5];
  v7 = *(v20 + 16);
  v19 = v1;
  v7(v1);
  v8 = type metadata accessor for SEPDeviceEncryptionKey(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v31 = swift_allocObject();
  (*(v4 + 104))(v3, enum case for CredentialKeyUsage.deviceEncryption(_:), v5);
  (v7)(v30, v1, v2);
  (*(v6 + 104))(v28, enum case for CredentialKeyType.sep(_:), v18);
  v17 = *(v4 + 16);
  v17(v29, v3, v5);
  (v7)(v31 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v30, v2);
  (*(v6 + 16))(v31 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v28, v18);
  v17(v31 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v29, v5);
  v11 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v31 + v11) = v12;
  *(v31 + 16) = v21;
  *(v31 + 24) = v22;
  v13 = *(v4 + 8);
  v13(v29, v5);
  (*(v6 + 8))(v28, v18);
  v14 = *(v20 + 8);
  v14(v30, v2);
  v13(v3, v5);
  v14(v19, v2);
  v14(v23, v2);

  v15 = v0[1];

  return v15(v31);
}

uint64_t sub_100029BF8()
{
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[21];
  v6 = v0[18];
  v7 = v0[17];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[12];
  v11 = v0[11];
  v12 = v0[8];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100029DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for CredentialKeyType();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for CredentialKeyUsage();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v15 = *(*(sub_100004E70(&qword_100201178, &unk_1001AB5C8) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = type metadata accessor for DeviceIdentityKey();
  v5[18] = v16;
  v17 = *(v16 - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v5[23] = v19;
  v20 = *(v19 - 8);
  v5[24] = v20;
  v21 = *(v20 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10002A09C, 0, 0);
}

uint64_t sub_10002A09C()
{
  v21 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 16);
  v20[0] = 778790244;
  v20[1] = 0xE400000000000000;
  String.append(_:)(v2);
  *(v0 + 216) = 0xE400000000000000;
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10010150C(778790244, 0xE400000000000000, v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching device encryption key with label %s", v9, 0xCu);
    sub_100005090(v10);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  *(v0 + 224) = v11;
  v12 = *(v0 + 136);
  v13 = *(*(v0 + 48) + 32);
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v14 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = async function pointer to DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)[1];
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_10002A2E8;
  v17 = *(v0 + 176);
  v18 = *(v0 + 136);

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v17, 778790244, 0xE400000000000000, v18);
}

uint64_t sub_10002A2E8()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 240) = v0;

  sub_10000A0D4(v4, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {
    v5 = sub_10002ACB4;
  }

  else
  {
    v5 = sub_10002A44C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002A44C()
{
  v1 = v0[21];
  v75 = v0[20];
  v62 = v0[19];
  v2 = v0[18];
  v3 = v0[16];
  v71 = v0[15];
  v4 = v0[14];
  v50 = v0[13];
  v52 = v0[12];
  v67 = v0[11];
  v51 = v0[10];
  v5 = v0[2];
  v6 = v0[3];
  v57 = v6;
  v59 = v0[5];
  v56 = v5;
  v7 = *(v62 + 16);
  v7(v1, v0[22], v2);
  v8 = type metadata accessor for SEPDeviceEncryptionKey(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v53 = v4;
  (*(v4 + 104))(v3, enum case for CredentialKeyUsage.deviceEncryption(_:), v50);
  v7(v75, v1, v2);
  (*(v67 + 104))(v52, enum case for CredentialKeyType.sep(_:), v51);
  v12 = *(v4 + 16);
  v12(v71, v3, v50);
  v7(v11 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v75, v2);
  (*(v67 + 16))(v11 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v52, v51);
  v12(v11 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v71, v50);
  v13 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v14 = swift_allocObject();
  *(v11 + v13) = v14;
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  *(v11 + 16) = v56;
  *(v11 + 24) = v57;
  v16 = *(v53 + 8);

  v16(v71, v50);
  (*(v67 + 8))(v52, v51);
  v17 = *(v62 + 8);
  v17(v75, v2);
  v16(v3, v50);
  v17(v1, v2);
  if (v59 >> 60 == 15)
  {
    v49 = v11;
    v17(v0[22], v0[18]);
LABEL_3:
    v19 = v0[25];
    v18 = v0[26];
    v21 = v0[21];
    v20 = v0[22];
    v22 = v0[20];
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];
    v26 = v0[12];
    v27 = v0[9];

    v28 = v0[1];

    return v28(v49);
  }

  v30 = v0[30];
  v32 = v0[4];
  v31 = v0[5];
  v33 = swift_task_alloc();
  *(v33 + 16) = sub_100032ED0;
  *(v33 + 24) = v11;
  sub_100032EBC(v32, v31);

  os_unfair_lock_lock(v15);
  sub_100032EEC(v34);
  os_unfair_lock_unlock(v15);

  if (v30)
  {
    return result;
  }

  v49 = v11;
  if (v78 >> 60 != 15)
  {
    if (sub_1000EBB34(v77, v78, v0[4], v0[5]))
    {
      v39 = v0[4];
      v38 = v0[5];
      v17(v0[22], v0[18]);
      sub_10001C120(v77, v78);
      sub_10001C120(v39, v38);
    }

    else
    {
      v40 = v0[25];
      defaultLogger()();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v0[28];
      v45 = v0[24];
      v70 = v0[25];
      v66 = v0[23];
      v74 = v0[18];
      v76 = v0[22];
      v47 = v0[4];
      v46 = v0[5];
      if (v43)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Fetched key signing key does not have the expected public key identifier", v48, 2u);
      }

      sub_10001C120(v77, v78);
      sub_10001C120(v47, v46);

      v44(v70, v66);
      v17(v76, v74);
      v49 = 0;
    }

    goto LABEL_3;
  }

  v68 = v0[18];
  v72 = v0[22];
  v64 = v0[5];
  v60 = v0[4];
  v35 = *(v0[8] + 104);
  v35(v0[9], enum case for DIPError.Code.idcsInvalidPublicKey(_:), v0[7]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v60, v64);

  v17(v72, v68);
  v36 = v0[26];
  v54 = v0[25];
  v55 = v0[22];
  v58 = v0[21];
  v61 = v0[20];
  v63 = v0[17];
  v65 = v0[16];
  v69 = v0[15];
  v73 = v0[12];
  v35(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v37 = v0[1];

  return v37();
}

uint64_t sub_10002ACB4()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];
  v6 = v0[22];
  v7 = v0[21];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[15];
  v12 = v0[12];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002AEBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v23 = a1;
  v25 = type metadata accessor for DIPError.Code();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v25);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15 = *(v3 + 16);
  v16 = dispatch thunk of SESKeystore.createKey(acl:)();
  if (v2)
  {

    (*(v4 + 104))(v24, enum case for DIPError.Code.internalError(_:), v25);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v18 = v23;
    v19 = v16;
    v20 = v17;
    result = dispatch thunk of SESKeystore.getPublicKey(of:)();
    *v18 = v12;
    v18[1] = v14;
    v18[2] = v19;
    v18[3] = v20;
    v18[4] = result;
    v18[5] = v22;
  }

  return result;
}

uint64_t sub_10002B1A4()
{
  v2 = v1;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  v9 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  if (v1)
  {
    (*(v4 + 104))(v7, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v11 = v9;
    v12 = v10;
    type metadata accessor for SecAccessControl(0);
    v2 = static SecAccessControlRef.fromConstraintsData(_:)();
    sub_1000092BC(v11, v12);
  }

  return v2;
}

uint64_t sub_10002B3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v8 = type metadata accessor for DIPError.Code();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v25 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v28 = v5;
  v29 = a1;
  v30 = a2;
  Logger.cryptoParam(_:)();
  v16 = *(v12 + 8);
  v16(v15, v11);
  v17 = *(v5 + 16);
  v18 = v31;
  v19 = dispatch thunk of SESKeystore.changeACL(of:to:authorizingLAContext:)();
  if (v18)
  {
    (*(v23 + 104))(v25, enum case for DIPError.Code.internalError(_:), v24);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v20 = defaultLogger()();
    __chkstk_darwin(v20);
    Logger.cryptoParam(_:)();
    v16(v15, v11);
  }

  return v19;
}

unint64_t sub_10002B72C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  v4 = v3;
  type metadata accessor for SecAccessControl(0);
  v6 = static SecAccessControlRef.fromConstraintsData(_:)();
  _StringGuts.grow(_:)(27);

  v7._countAndFlagsBits = SecAccessControlRef.constraintsDescription.getter();
  String.append(_:)(v7);

  sub_1000092BC(v2, v4);
  return 0xD000000000000019;
}

unint64_t sub_10002B884(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  v4 = v3;
  type metadata accessor for SecAccessControl(0);
  v6 = static SecAccessControlRef.fromConstraintsData(_:)();
  _StringGuts.grow(_:)(27);

  v7._countAndFlagsBits = SecAccessControlRef.constraintsDescription.getter();
  String.append(_:)(v7);

  sub_1000092BC(v2, v4);
  return 0xD000000000000019;
}

uint64_t sub_10002B9DC()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v29 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost.Config();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for DIPSignpost();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.ckmGenerateSESPresentmentKey.getter();
  DIPSignpost.init(_:)();
  sub_10002AEBC(v25);
  if (v0)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v8 + 8))(v11, v7);
    v13 = *(v2 + 104);
    v12 = v2 + 104;
    v13(v29, enum case for DIPError.Code.internalError(_:), v1);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v14 = v25[1];
    v29 = v25[0];
    v15 = v25[2];
    v16 = v26;
    v24 = v26;
    v17 = v27;
    v18 = v28;
    v19 = type metadata accessor for SESPresentmentKey(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v12 = sub_100026AD8(v29, v14, v15, v16, v17, v18);
    sub_1000092BC(v17, v18);
    sub_1000092BC(v15, v24);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v8 + 8))(v11, v7);
  }

  return v12;
}

uint64_t sub_10002BD74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a1;
  v46 = a6;
  v12 = type metadata accessor for DIPError.Code();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost.Config();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v52 = type metadata accessor for DIPSignpost();
  v17 = *(v52 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v52);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.ckmFetchSESPresentmentKey.getter();
  DIPSignpost.init(_:)();
  v21 = *(v6 + 16);
  v22 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v7)
  {
    v25 = v22;
    v44 = a5;
    v26 = v23;
    v27 = type metadata accessor for SESPresentmentKey(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();

    sub_100009708(v25, v26);
    sub_100009708(a3, a4);
    v24 = sub_100026AD8(v45, a2, a3, a4, v25, v26);
    sub_1000092BC(v25, v26);
    sub_1000092BC(a3, a4);
    v30 = v46;
    if (v46 >> 60 == 15)
    {
      sub_1000092BC(v25, v26);
    }

    else
    {
      v43 = v26;
      v31 = *(v24 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier);
      v32 = *(v24 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier + 8);
      v45 = v24;
      v33 = v44;
      sub_100032EBC(v44, v46);
      sub_100009708(v31, v32);
      v34 = sub_1000EBB34(v31, v32, v33, v30);
      sub_1000092BC(v31, v32);
      if ((v34 & 1) == 0)
      {
        v50 = 0;
        v51 = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v36._countAndFlagsBits = 0xD000000000000024;
        v36._object = 0x80000001001B2F40;
        String.append(_:)(v36);
        v37 = *(v45 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
        v38 = *(v45 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8);
        sub_100009708(v37, v38);
        v39 = Data.base16EncodedString()();
        sub_1000092BC(v37, v38);
        String.append(_:)(v39);

        v40._countAndFlagsBits = 0x746365707865202CLL;
        v40._object = 0xEB00000000206465;
        String.append(_:)(v40);
        v41 = Data.base16EncodedString()();
        String.append(_:)(v41);

        v42 = v50;
        (*(v47 + 104))(v49, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v48);
        v24 = 0x80000001001B3260;
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10001C120(v44, v46);

        sub_1000092BC(v25, v43);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        goto LABEL_3;
      }

      sub_1000092BC(v25, v43);
      sub_10001C120(v33, v30);
      v24 = v45;
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v17 + 8))(v20, v52);
    return v24;
  }

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v24 = 0x80000001001B3260;
LABEL_3:
  (*(v17 + 8))(v20, v52);
  (*(v47 + 104))(v49, enum case for DIPError.Code.internalError(_:), v48);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v24;
}

uint64_t sub_10002C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002B3D8(*(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob), *(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob + 8), a2, a3, a4);
  if (v4)
  {
    (*(v10 + 104))(v13, enum case for DIPError.Code.internalError(_:), v9);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = *(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
    v20 = *(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8);
    v21 = v14;
    v22 = v15;
    v23 = type metadata accessor for SESPresentmentKey(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    sub_100009708(v19, v20);
    v26 = sub_100026AD8(v17, v18, v21, v22, v19, v20);
    sub_1000092BC(v19, v20);
    sub_1000092BC(v21, v22);
    return v26;
  }
}

uint64_t sub_10002C6CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10002C78C, 0, 0);
}

uint64_t sub_10002C78C()
{
  v17 = v0;
  v1 = v0[2];
  v2 = v0[3];
  sub_10002AEBC(v16);
  v3 = v0[6];
  v4 = v16[0];
  v5 = v16[1];
  v6 = v16[2];
  v7 = v16[3];
  v8 = v16[4];
  v9 = v16[5];
  v10 = type metadata accessor for SESDeviceEncryptionKey(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_100027030(v4, v5, v6, v7, v8, v9);
  sub_1000092BC(v8, v9);
  sub_1000092BC(v6, v7);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_10002C9E0(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob);
  v32 = *(a1 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob + 8);
  v33 = v10;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  v39 = v11;
  v40 = v13;
  v37 = 45;
  v38 = 0xE100000000000000;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_100021E18();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  sub_100004E70(&qword_100201170, &qword_1001AB5A8);
  v14 = type metadata accessor for SESKeystore.AttestationOIDs();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001AAFC0;
  v19 = v18 + v17;
  v20 = *(v15 + 104);
  v20(v19, enum case for SESKeystore.AttestationOIDs.seid(_:), v14);
  v20(v19 + v16, enum case for SESKeystore.AttestationOIDs.acl(_:), v14);
  v20(v19 + 2 * v16, enum case for SESKeystore.AttestationOIDs.osInfo(_:), v14);
  v21 = *(v34 + 16);
  v22 = v41;
  v41 = dispatch thunk of SESKeystore.getAttestation(for:subjectIdentifier:oids:)();
  v34 = v23;

  if (v22)
  {
    v32 = "with identifier: ";
    v28[1] = 0x80000001001B2F70;
    v24 = enum case for DIPError.Code.internalError(_:);
    v25 = v30;
    v33 = *(v29 + 104);
    v26 = v31;
    v33(v31, enum case for DIPError.Code.internalError(_:), v30);
    swift_errorRetain();
    v29 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v33(v26, v24, v25);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v41;
}

uint64_t sub_10002CF1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002D064, 0, 0);
}

uint64_t sub_10002D064()
{
  v1 = v0[10];
  v2 = v0[7];
  static IDCSSignposts.ckmGenerateSESProgenitorKey.getter();
  DIPSignpost.init(_:)();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10002D110;
  v4 = v0[3];

  return sub_10002D4F8();
}

uint64_t sub_10002D110()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_10002D20C, 0, 0);
}

uint64_t sub_10002D20C()
{
  v21 = v0;
  v1 = v0[2];
  v2 = v0[3];
  sub_10002AEBC(v20);
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v19 = v0[6];
  v7 = v20[0];
  v8 = v20[1];
  v9 = v20[2];
  v10 = v20[3];
  v12 = v20[4];
  v11 = v20[5];
  v13 = type metadata accessor for ProgenitorKey(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_100026B1C(v7, v8, v9, v10, v12, v11);
  sub_1000092BC(v12, v11);
  sub_1000092BC(v9, v10);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v4, v6);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_10002D4F8()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002D670, 0, 0);
}

uint64_t sub_10002D670()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = v1[15];
  sub_100009278(v1 + 11, v2);
  v4 = async function pointer to dispatch thunk of SEPairingManaging.pairSecureElementIfNecessary()[1];
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_10002D728;

  return dispatch thunk of SEPairingManaging.pairSecureElementIfNecessary()(v2, v3);
}

uint64_t sub_10002D728()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002D87C, 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[8];
    v6 = v3[5];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_10002D87C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[4];
  v5 = v0[5];
  v13 = v0[3];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v7, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v5, v13);
  (*(v3 + 8))(v2, v4);

  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002DA84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a1;
  v46 = a6;
  v12 = type metadata accessor for DIPError.Code();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost.Config();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v52 = type metadata accessor for DIPSignpost();
  v17 = *(v52 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v52);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.ckmFetchSESProgenitorKey.getter();
  DIPSignpost.init(_:)();
  v21 = *(v6 + 16);
  v22 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v7)
  {
    v25 = v22;
    v44 = a5;
    v26 = v23;
    v27 = type metadata accessor for ProgenitorKey(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();

    sub_100009708(v25, v26);
    sub_100009708(a3, a4);
    v24 = sub_100026B1C(v45, a2, a3, a4, v25, v26);
    sub_1000092BC(v25, v26);
    sub_1000092BC(a3, a4);
    v30 = v46;
    if (v46 >> 60 == 15)
    {
      sub_1000092BC(v25, v26);
    }

    else
    {
      v43 = v26;
      v31 = *(v24 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKeyIdentifier);
      v32 = *(v24 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKeyIdentifier + 8);
      v45 = v24;
      v33 = v44;
      sub_100032EBC(v44, v46);
      sub_100009708(v31, v32);
      v34 = sub_1000EBB34(v31, v32, v33, v30);
      sub_1000092BC(v31, v32);
      if ((v34 & 1) == 0)
      {
        v50 = 0;
        v51 = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v36._countAndFlagsBits = 0xD000000000000024;
        v36._object = 0x80000001001B2F40;
        String.append(_:)(v36);
        v37 = *(v45 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
        v38 = *(v45 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
        sub_100009708(v37, v38);
        v39 = Data.base16EncodedString()();
        sub_1000092BC(v37, v38);
        String.append(_:)(v39);

        v40._countAndFlagsBits = 0x746365707865202CLL;
        v40._object = 0xEB00000000206465;
        String.append(_:)(v40);
        v41 = Data.base16EncodedString()();
        String.append(_:)(v41);

        v42 = v50;
        (*(v47 + 104))(v49, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v48);
        v24 = 0x80000001001B2F00;
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10001C120(v44, v46);

        sub_1000092BC(v25, v43);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        goto LABEL_3;
      }

      sub_1000092BC(v25, v43);
      sub_10001C120(v33, v30);
      v24 = v45;
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v17 + 8))(v20, v52);
    return v24;
  }

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v24 = 0x80000001001B2F00;
LABEL_3:
  (*(v17 + 8))(v20, v52);
  (*(v47 + 104))(v49, enum case for DIPError.Code.internalError(_:), v48);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v24;
}

uint64_t sub_10002E100()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  result = dispatch thunk of SESKeystore.deleteKey(_:)();
  if (v1)
  {
    v10[2] = 0x80000001001B25A0;
    v10[3] = "with identifier: ";
    v9 = enum case for DIPError.Code.internalError(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DIPError.Code.internalError(_:), v2);
    swift_errorRetain();
    v10[1] = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11(v6, v9, v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_10002E3FC(uint64_t a1, void (*a2)(uint64_t), void *a3, uint64_t a4)
{
  v44 = a4;
  v58 = type metadata accessor for DIPError.Code();
  v42 = *(v58 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v58);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPSignpost.Config();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for DIPSignpost();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v18);
  v49 = v20;
  DIPSignpost.init(_:)();
  v21 = (a1 + *a3);
  v22 = *v21;
  v45 = v21[1];
  v46 = v22;
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v10 + 8))(v13, v9);
  v56 = v23;
  v57 = v25;
  v54 = 45;
  v55 = 0xE100000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_100021E18();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  sub_100004E70(&qword_100201170, &qword_1001AB5A8);
  v26 = type metadata accessor for SESKeystore.AttestationOIDs();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1001AAFC0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, enum case for SESKeystore.AttestationOIDs.seid(_:), v26);
  v32(v31 + v28, enum case for SESKeystore.AttestationOIDs.acl(_:), v26);
  v32(v31 + 2 * v28, enum case for SESKeystore.AttestationOIDs.osInfo(_:), v26);
  v33 = *(v47 + 16);
  v34 = v48;
  v35 = dispatch thunk of SESKeystore.getAttestation(for:subjectIdentifier:oids:)();
  v37 = v36;

  if (v34)
  {
    LODWORD(v46) = enum case for DIPError.Code.internalError(_:);
    v45 = *(v42 + 104);
    v47 = v37;
    v38 = v43;
    v45(v43);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v48 = v35;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v39 = v49;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v50 + 8))(v39, v51);
    (v45)(v38, v46, v58);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v35 = v48;
  }

  else
  {
    v40 = v49;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v50 + 8))(v40, v51);
  }

  return v35;
}

uint64_t sub_10002EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002B3D8(*(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob), *(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob + 8), a2, a3, a4);
  if (v4)
  {
    (*(v10 + 104))(v13, enum case for DIPError.Code.internalError(_:), v9);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = *(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v20 = *(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
    v21 = v14;
    v22 = v15;
    v23 = type metadata accessor for ProgenitorKey(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    sub_100009708(v19, v20);
    v26 = sub_100026B1C(v17, v18, v21, v22, v19, v20);
    sub_1000092BC(v19, v20);
    sub_1000092BC(v21, v22);
    return v26;
  }
}

uint64_t sub_10002ED04(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = a3;
  v5 = type metadata accessor for DIPError.Code();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_100201180, &qword_1001AB5D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for SymmetricKey();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v48 = 778793072;
  v49 = 0xE400000000000000;
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);
  v21 = *(v46 + 40);
  v22 = v50;
  sub_100032314(v48, v49, v47);

  if (!v22)
  {
    v47 = v5;
    v23 = v17;
    v50 = a2;
    v24 = v44;
    v25 = v45;
    if ((*(v44 + 48))(v12, 1, v45) == 1)
    {
      sub_10000A0D4(v12, &qword_100201180, &qword_1001AB5D8);
      (*(v43 + 104))(v8, enum case for DIPError.Code.failedToFetchPayloadProtectionKey(_:), v47);
      v5 = 0x80000001001B3160;
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      (*(v24 + 32))(v19, v12, v25);
      v27 = *(v24 + 16);
      v28 = v23;
      v27(v23, v19, v25);
      v29 = type metadata accessor for PayloadProtectionKey(0);
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      v5 = swift_allocObject();
      *(v5 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier) = xmmword_1001AB540;
      v27((v5 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key), v28, v25);
      v32 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
      v33 = enum case for CredentialKeyType.keychain(_:);
      v34 = type metadata accessor for CredentialKeyType();
      (*(*(v34 - 8) + 104))(v5 + v32, v33, v34);
      v35 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
      v36 = enum case for CredentialKeyUsage.payloadProtection(_:);
      v37 = type metadata accessor for CredentialKeyUsage();
      (*(*(v37 - 8) + 104))(v5 + v35, v36, v37);
      v38 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
      sub_100004E70(&qword_1002010A0, &unk_1001AB530);
      v39 = swift_allocObject();
      *(v39 + 16) = 0;
      *(v5 + v38) = v39;
      v40 = v50;
      *(v5 + 16) = a1;
      *(v5 + 24) = v40;
      v41 = *(v24 + 8);

      v41(v28, v25);
      v41(v19, v25);
    }
  }

  return v5;
}

Class sub_10002F210(uint64_t a1, unint64_t a2)
{
  v41 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "createAccountKeySigningKey called", v17, 2u);
  }

  v18 = *(v8 + 8);
  v18(v14, v7);
  sub_10010CDF4(&off_1001F3F90);
  sub_100004E70(&qword_100200498, &qword_1001AB600);
  swift_arrayDestroy();
  v19 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlocked, 0x40000000uLL, 0);
  if (v19)
  {
    v40 = a1;
    v20 = v19;
    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();

    v22 = v45[2];
    v23 = dispatch thunk of SESKeystore.createKey(acl:)();
    if (v2)
    {
    }

    else
    {
      v38 = v24;
      v39 = v23;
      defaultLogger()();
      v26 = v41;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37 = v27;
        v31 = v30;
        v46 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10010150C(v40, v41, &v46);
        v32 = v28;
        v33 = v37;
        _os_log_impl(&_mh_execute_header, v37, v32, "Storing Account Key Signing Key in iCloud keychain key with label %s", v29, 0xCu);
        sub_100005090(v31);

        v26 = v41;

        v34 = v7;
        v35 = v40;
        v18(v12, v34);
      }

      else
      {

        v18(v12, v7);
        v35 = v40;
      }

      v36 = *sub_100009278(v45 + 6, v45[9]);
      v21.super.isa = v39;
      sub_100048A88(v39, v38, v35, v26, 1);
    }
  }

  else
  {

    v21.super.isa = "eEncryptionKey(acl:)";
    (*(v42 + 104))(v44, enum case for DIPError.Code.secAccessControlCannotCreateACL(_:), v43);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v21.super.isa;
}

uint64_t sub_10002F8D8(uint64_t a1, unint64_t a2)
{
  v65 = a1;
  v63 = type metadata accessor for DIPError.Code();
  v3 = *(v63 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v63);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v61 = &v58 - v13;
  v14 = __chkstk_darwin(v12);
  v59 = &v58 - v15;
  v16 = __chkstk_darwin(v14);
  v62 = &v58 - v17;
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "retrieveAccountKeySigningKey called", v22, 2u);
  }

  v25 = *(v8 + 8);
  v23 = v8 + 8;
  v24 = v25;
  v25(v19, v7);
  v26 = *sub_100009278(v66 + 6, v66[9]);
  v27 = v64;
  v28 = sub_1000494F8(v65, a2);
  if (v27)
  {
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v30._countAndFlagsBits = 0xD000000000000029;
    v30._object = 0x80000001001B3620;
    String.append(_:)(v30);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    (*(v3 + 104))(v6, enum case for DIPError.Code.failedToFetchPayloadProtectionKey(_:), v63);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v32 = v29;
    if (v29 >> 60 == 15)
    {
      v33 = v61;
      defaultLogger()();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v58 = v24;
        v38 = v37;
        v67[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_10010150C(v65, a2, v67);
        _os_log_impl(&_mh_execute_header, v34, v35, "Account Key Signing Key with label %s doesn't exist in the iCloud keychain", v36, 0xCu);
        sub_100005090(v38);

        v58(v33, v7);
      }

      else
      {

        v24(v33, v7);
      }

      return 0;
    }

    else
    {
      v39 = v62;
      v40 = v28;
      defaultLogger()();
      sub_100009708(v40, v32);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      sub_10001C120(v40, v32);
      v43 = os_log_type_enabled(v41, v42);
      v58 = v24;
      if (v43)
      {
        v44 = swift_slowAlloc();
        v65 = v23;
        v45 = v44;
        v46 = swift_slowAlloc();
        v67[0] = v46;
        *v45 = 136315138;
        v47 = Data.base64EncodedString(options:)(0);
        v64 = v7;
        v48 = sub_10010150C(v47._countAndFlagsBits, v47._object, v67);
        v7 = v64;

        *(v45 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "Account Key Signing Key exists %s", v45, 0xCu);
        sub_100005090(v46);
        v24 = v58;

        v49 = v62;
      }

      else
      {

        v49 = v39;
      }

      v24(v49, v7);
      v50 = v66[2];
      v51 = v40;
      v52 = dispatch thunk of SESKeystore.getPublicKey(of:)();
      sub_1000092BC(v52, v53);
      v54 = v59;
      defaultLogger()();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "valid AccountKAK, verification successful", v57, 2u);

        v58(v54, v7);
      }

      else
      {

        v24(v54, v7);
      }

      return v51;
    }
  }
}

uint64_t sub_100030108(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23 = v5;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "deleteAccountKeySigningKey called", v18, 2u);
    v4 = v3;
    v5 = v23;
  }

  (*(v12 + 8))(v15, v11);
  v19 = *sub_100009278((v5 + 48), *(v5 + 72));
  result = sub_100049CB0(a1, a2);
  if (v4)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v27 = 0xD000000000000029;
    v28 = 0x80000001001B3460;
    swift_getErrorValue();
    v21._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v21);

    (*(v24 + 104))(v26, enum case for DIPError.Code.unableToDeleteAccountKeySigningKey(_:), v25);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

BOOL sub_100030494(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v36 = &v33 - v11;
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = [objc_opt_self() standardUserDefaults];
  v15._object = 0x80000001001B3940;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v16 = NSUserDefaults.internalBool(forKey:)(v15);

  if (v16)
  {
    defaultLogger()();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = v7;
      v20 = v19;
      v21 = swift_slowAlloc();
      v35 = v6;
      v22 = v21;
      v37 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10010150C(a1, a2, &v37);
      _os_log_impl(&_mh_execute_header, v17, v18, "forceDeleteAccountKeySigningKey internal setting is enabled. This is will delete the key with label %s if it exists.", v20, 0xCu);
      sub_100005090(v22);
      v6 = v35;

      v7 = v34;
    }

    (*(v7 + 8))(v13, v6);
    v23 = *sub_100009278((v3 + 48), *(v3 + 72));
    sub_100049CB0(a1, a2);
  }

  v24 = *sub_100009278((v3 + 48), *(v3 + 72));
  v25 = sub_1000494F8(a1, a2);
  v27 = v26;
  defaultLogger()();
  sub_100032EBC(v25, v27);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v6;
    v31 = swift_slowAlloc();
    *v31 = 67109120;
    *(v31 + 4) = v27 >> 60 != 15;
    sub_10001C120(v25, v27);
    _os_log_impl(&_mh_execute_header, v28, v29, "isAccountKeySigningKeyAvailable -> %{BOOL}d", v31, 8u);
    v6 = v30;
  }

  else
  {
    sub_10001C120(v25, v27);
  }

  (*(v7 + 8))(v36, v6);
  sub_10001C120(v25, v27);
  return v27 >> 60 != 15;
}

uint64_t sub_10003086C(uint64_t a1, uint64_t a2)
{
  v18[2] = a1;
  v18[3] = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v2 + 16);
  UUID.init()();
  v18[0] = UUID.uuidString.getter();
  (*(v4 + 8))(v7, v3);
  sub_100004E70(&qword_100201170, &qword_1001AB5A8);
  v8 = type metadata accessor for SESKeystore.AttestationOIDs();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001AAFC0;
  v13 = v12 + v11;
  v14 = enum case for SESKeystore.AttestationOIDs.seid(_:);
  v15 = *(v9 + 104);
  v15(v13, enum case for SESKeystore.AttestationOIDs.seid(_:), v8);
  v15(v13 + v10, enum case for SESKeystore.AttestationOIDs.acl(_:), v8);
  v15(v13 + 2 * v10, v14, v8);
  v16 = dispatch thunk of SESKeystore.getAttestation(for:subjectIdentifier:oids:)();

  return v16;
}

id sub_100030AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = a3;
  v18[3] = a4;
  v18[1] = a2;
  v5 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(LAContext) init];
  v11 = *(v4 + 16);
  result = [v10 externalizedContext];
  if (result)
  {
    v13 = result;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    (*(v6 + 104))(v9, enum case for SESKeystore.SignatureOutputFormat.raw(_:), v5);
    v17 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
    (*(v6 + 8))(v9, v5);
    sub_1000092BC(v14, v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100030C74(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *sub_100009278((v2 + 48), *(v2 + 72));
  v16 = sub_1000494F8(a1, a2);
  if (!v3)
  {
    if (v17 >> 60 == 15)
    {
      (*(v7 + 104))(v10, enum case for DIPError.Code.failedToFetchPIIToken(_:), v6);
      v14 = "with identifier: ";
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v18 = v17;
      v19 = v16;
      static String.Encoding.utf8.getter();
      v20 = String.init(data:encoding:)();
      if (v21)
      {
        v14 = v20;
      }

      else
      {
        (*(v7 + 104))(v10, enum case for DIPError.Code.failedToEncodePIIToken(_:), v6);
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
        v14 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      sub_10001C120(v19, v18);
    }
  }

  return v14;
}

uint64_t sub_100031020(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *sub_100009278((v3 + 48), *(v3 + 72));
  result = sub_10004A2C4(a3, a1, a2);
  if (!v4)
  {
    v19[1] = 0;
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10010150C(a1, a2, &v20);
      _os_log_impl(&_mh_execute_header, v15, v16, "PII Token with identifier: %s updated", v17, 0xCu);
      sub_100005090(v18);
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_100031228(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, const char *a6)
{
  v29 = a6;
  v13 = type metadata accessor for Logger();
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  __chkstk_darwin(v13);
  v31 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *sub_100009278((v6 + 48), *(v6 + 72));
  v17 = a2;
  result = sub_100048A88(a3, a4, a1, a2, a5);
  if (!v7)
  {
    v27 = v13;
    v28 = 0;
    v20 = v30;
    v19 = v31;
    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = a1;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10010150C(v23, v17, &v32);
      _os_log_impl(&_mh_execute_header, v21, v22, v29, v24, 0xCu);
      sub_100005090(v25);
    }

    return (*(v20 + 8))(v19, v27);
  }

  return result;
}

uint64_t sub_10003142C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = type metadata accessor for Logger();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009278((v4 + 48), *(v4 + 72));
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Data;
  *(inited + 40) = v15;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  sub_100009708(a3, a4);
  v16 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_10000A0D4(inited + 32, &qword_100200490, &unk_1001AAEE0);
  v17 = *v13;
  sub_10004A2C4(v16, a1, a2);

  if (!v5)
  {
    v19 = v24;
    defaultLogger()();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10010150C(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v20, v21, "PII Token Credential List with identifier: %s updated", v22, 0xCu);
      sub_100005090(v23);
    }

    return (*(v19 + 8))(v25, v10);
  }

  return result;
}

char *sub_1000316B4(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *sub_100009278((v2 + 48), *(v2 + 72));
  v16 = sub_1000494F8(a1, a2);
  if (!v3)
  {
    if (v17 >> 60 == 15)
    {
      (*(v7 + 104))(v10, enum case for DIPError.Code.failedToFetchPIIToken(_:), v6);
      v14 = "with identifier: ";
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v18 = v17;
      v19 = v16;
      static String.Encoding.utf8.getter();
      v20 = String.init(data:encoding:)();
      if (v21)
      {
        v14 = v20;
      }

      else
      {
        (*(v7 + 104))(v10, enum case for DIPError.Code.failedToEncodePIIToken(_:), v6);
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
        v14 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      sub_10001C120(v19, v18);
    }
  }

  return v14;
}

uint64_t sub_100031A60(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_100030C74(a1, a2);

  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "PII Token Available", v13, 2u);
  }

  (*(v5 + 8))(v10, v4);
  return 1;
}

uint64_t sub_100031D00(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *sub_100009278((v2 + 48), *(v2 + 72));
  result = sub_100049CB0(a1, a2);
  if (!v3)
  {
    v17[1] = 0;
    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10010150C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v13, v14, "PII Hash with identifier: %s deleted", v15, 0xCu);
      sub_100005090(v16);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

char *sub_100031EDC(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *sub_100009278((v2 + 48), *(v2 + 72));
  v16 = sub_1000494F8(a1, a2);
  if (!v3)
  {
    if (v17 >> 60 == 15)
    {
      (*(v7 + 104))(v10, enum case for DIPError.Code.failedToFetchPIIToken(_:), v6);
      v14 = "with identifier: ";
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v18 = v17;
      v19 = v16;
      static String.Encoding.utf8.getter();
      v20 = String.init(data:encoding:)();
      if (v21)
      {
        v14 = v20;
      }

      else
      {
        (*(v7 + 104))(v10, enum case for DIPError.Code.failedToEncodePIIToken(_:), v6);
        sub_10002688C(&_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
        v14 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      sub_10001C120(v19, v18);
    }
  }

  return v14;
}

uint64_t sub_100032290()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_100005090(v0 + 6);
  sub_100005090(v0 + 11);

  return swift_deallocClassInstance();
}

void sub_100032980(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100046D78(0);
  if (v1)
  {
    v28 = 0x80000001001B3400;
    v17 = enum case for DIPError.Code.internalError(_:);
    v18 = *(v12 + 104);
    v18(v15, enum case for DIPError.Code.internalError(_:), v11);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18(v15, v17, v11);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v28 = v4;
    v27 = a1;
    v19 = sub_1000A0EE4(a1, v16);

    if (v19)
    {
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134349056;
        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "Deleting presentment key in slot %{public}ld from SE", v22, 0xCu);
      }

      (*(v28 + 8))(v10, v3);
      sub_1000473B4(v27);
    }

    else
    {
      defaultLogger()();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134349056;
        *(v25 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "Not trying to delete key in slot %{public}ld because slot is not occupied", v25, 0xCu);
      }

      (*(v28 + 8))(v8, v3);
    }
  }
}

uint64_t sub_100032EBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009708(a1, a2);
  }

  return a1;
}

uint64_t sub_100032F08(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = type metadata accessor for ExternalSEPresentmentKey(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey) = xmmword_1001AB540;
  v16 = (v15 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier);
  *v16 = a1;
  v16[1] = a2;
  v17 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v18 = enum case for CredentialKeyType.externalSE(_:);
  v19 = type metadata accessor for CredentialKeyType();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  v20 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v21 = enum case for CredentialKeyUsage.presentment(_:);
  v22 = type metadata accessor for CredentialKeyUsage();
  (*(*(v22 - 8) + 104))(v15 + v20, v21, v22);
  v23 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v15 + v23) = v24;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  sub_100009708(a1, a2);
  return v15;
}

unint64_t sub_100033124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v8 = type metadata accessor for DIPError.Code();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AB550;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  type metadata accessor for CFString(0);
  *(inited + 72) = v13;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v15;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v16;
  type metadata accessor for SymmetricKey();
  sub_100033F94(&qword_100201188, &type metadata accessor for SymmetricKey);
  v17 = kSecClassGenericPassword;

  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v18 = v39;
  *(inited + 216) = &type metadata for Data;
  *(inited + 192) = v18;
  v19 = sub_10010CA84(inited);
  v20 = v37;
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  if (v20 >> 60 != 11)
  {
    if (v20 >> 60 == 15)
    {
      sub_100033FDC(v36, v20);
    }

    else
    {
      type metadata accessor for SecAccessControl(0);
      v22 = v21;
      v23 = v36;
      sub_100032EBC(v36, v20);
      sub_100032EBC(v23, v20);
      v24 = static SecAccessControlRef.fromData(_:)();
      if (v5)
      {

        v32 = "payload protection key: ";
        v19 = v23;
        (*(v33 + 104))(v35, enum case for DIPError.Code.internalError(_:), v34);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_100033FDC(v23, v20);
        sub_100033FDC(v23, v20);
      }

      else
      {
        v25 = v24;
        sub_100033FDC(v23, v20);
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
        v40 = v22;
        *&v39 = v25;
        sub_100009268(&v39, v38);
        v29 = v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v19;
        sub_100121664(v38, v26, v28, isUniquelyReferenced_nonNull_native);
        sub_100033FDC(v23, v20);

        return v41;
      }
    }
  }

  return v19;
}

char *sub_100033BA0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SymmetricKeySize();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SymmetricKey();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v48);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = [objc_allocWithZone(NSUUID) init];
  v15 = [v14 UUIDString];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v46 = 778793072;
  v47 = 0xE400000000000000;
  v42 = v16;
  v19._countAndFlagsBits = v16;
  v45 = v18;
  v19._object = v18;
  String.append(_:)(v19);
  v20 = v46;
  v21 = v47;
  sub_100032EBC(a1, a2);
  static SymmetricKeySize.bits256.getter();
  SymmetricKey.init(size:)();
  sub_100032EBC(a1, a2);
  v22 = v44;
  sub_1000335D4(v13, v20, v21, a1, a2);
  if (v22)
  {
    (*(v8 + 8))(v13, v48);
    sub_10001C120(a1, a2);
    sub_10001C120(a1, a2);
  }

  else
  {

    sub_10001C120(a1, a2);
    v23 = v43;
    v24 = *(v8 + 16);
    v24(v43, v13, v48);
    v25 = type metadata accessor for PayloadProtectionKey(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v7 = swift_allocObject();
    *&v7[OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier] = xmmword_1001AB540;
    v28 = v23;
    v29 = v48;
    v24(&v7[OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key], v28, v48);
    v30 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
    v31 = enum case for CredentialKeyType.keychain(_:);
    v32 = type metadata accessor for CredentialKeyType();
    (*(*(v32 - 8) + 104))(&v7[v30], v31, v32);
    v33 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
    v34 = enum case for CredentialKeyUsage.payloadProtection(_:);
    v35 = type metadata accessor for CredentialKeyUsage();
    (*(*(v35 - 8) + 104))(&v7[v33], v34, v35);
    v36 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    sub_10001C120(a1, a2);
    *&v7[v36] = v37;
    v38 = v43;
    v39 = v45;
    *(v7 + 2) = v42;
    *(v7 + 3) = v39;
    v40 = *(v8 + 8);
    v40(v38, v29);
    v40(v13, v29);
  }

  return v7;
}

uint64_t sub_100033F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033FDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10001C120(a1, a2);
  }

  return a1;
}

unint64_t sub_100033FF0()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_10002B72C(v0[2]);
}

unint64_t sub_100033FFC()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_10002B884(v0[2]);
}

void sub_100034038(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, kCFAllocatorNull);
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

uint64_t sub_1000340F4(uint64_t a1, CFTypeRef *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = SecItemAdd(isa, a2);

  return v4;
}

uint64_t sub_10003414C(uint64_t a1, CFTypeRef *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = SecItemCopyMatching(isa, a2);

  return v4;
}

uint64_t sub_1000341A4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = SecItemDelete(isa);

  return v1;
}

uint64_t sub_1000341F4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = SecItemUpdate(isa, v1);

  return v2;
}

uint64_t sub_1000342A8()
{
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v0 + 72));
  sub_10002171C((v0 + 16), v7);
  os_unfair_lock_unlock((v0 + 72));
  v1 = v7[1];
  v2 = v7[3];
  v3 = v8;
  sub_10002159C(v8);

  sub_10000ED48(v1);
  sub_10000ED48(v2);
  v4 = sub_10000ED48(v3);
  if (v3)
  {
    v5 = v3(v4);
    sub_10000ED48(v3);
    return v5;
  }

  else
  {
    type metadata accessor for GenericPasswordStore();

    return swift_allocObject();
  }
}

unint64_t sub_100034A34(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AB550;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  type metadata accessor for CFString(0);
  *(inited + 72) = v8;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v10;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v11;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v12 = kSecClassGenericPassword;

  v13 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  if (a3)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v22 = sub_100034BFC();
    *&v21 = a3;
    sub_100009268(&v21, v20);
    v17 = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100121664(v20, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  return v13;
}

unint64_t sub_100034BFC()
{
  result = qword_1002012E8;
  if (!qword_1002012E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002012E8);
  }

  return result;
}

uint64_t sub_100034C5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100034D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100034E00()
{
  sub_100034ECC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IdentityReaderAuthenticator.Request(319);
    if (v1 <= 0x3F)
    {
      sub_100034F24();
      if (v2 <= 0x3F)
      {
        sub_100034F88();
        if (v3 <= 0x3F)
        {
          sub_100034FEC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100034ECC()
{
  if (!qword_100201358)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100201358);
    }
  }
}

unint64_t sub_100034F24()
{
  result = qword_100201360;
  if (!qword_100201360)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100201360);
  }

  return result;
}

void sub_100034F88()
{
  if (!qword_100201368)
  {
    sub_100021ED0(&qword_100201370, &unk_1001AB6E0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201368);
    }
  }
}

void sub_100034FEC()
{
  if (!qword_100201378)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201378);
    }
  }
}

uint64_t getEnumTagSinglePayload for CertificateKnownIssuer(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CertificateKnownIssuer(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000351EC()
{
  sub_100035260();
  if (v0 <= 0x3F)
  {
    sub_1000352D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100035260()
{
  if (!qword_100201438)
  {
    type metadata accessor for ISO18013ReaderRequest();
    type metadata accessor for ISO18013SessionTranscript();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100201438);
    }
  }
}

void sub_1000352D4()
{
  if (!qword_100201440)
  {
    sub_100021ED0(&unk_100201448, qword_1001AB738);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100201440);
    }
  }
}

unint64_t sub_100035350()
{
  result = qword_100201478;
  if (!qword_100201478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201478);
  }

  return result;
}

void *sub_1000353A4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v53 = &v44 - v10;
  v54 = type metadata accessor for ISO18013KnownDocTypes();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v54);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v15)
  {
    v45 = v4;
    v46 = v3;
    v44 = v1;
    v47 = v7;
    v62 = _swiftEmptyArrayStorage;
    sub_10010A6D4(0, v15, 0);
    v17 = -1 << *(a1 + 32);
    v58 = a1 + 56;
    v59 = v62;
    result = _HashTable.startBucket.getter();
    v18 = result;
    v19 = 0;
    v51 = a1;
    v52 = (v11 + 48);
    v49 = v15;
    v50 = (v11 + 32);
    v48 = a1 + 64;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      if ((*(v58 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_25;
      }

      v55 = v19;
      v23 = v11;
      v56 = *(a1 + 36);
      v57 = v18 >> 6;
      v24 = (*(a1 + 48) + 16 * v18);
      v25 = *v24;
      v26 = v24[1];
      swift_bridgeObjectRetain_n();
      v27 = v53;
      v28 = v26;
      ISO18013KnownDocTypes.init(rawValue:)();
      v29 = v54;
      if ((*v52)(v27, 1, v54) == 1)
      {
        sub_10000A0D4(v27, &qword_100201578, &qword_1001AD1E0);
        v60 = 0;
        v61 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v60 = 0xD00000000000001BLL;
        v61 = 0x80000001001B4120;
        v43._countAndFlagsBits = v25;
        v43._object = v28;
        String.append(_:)(v43);
        (*(v45 + 104))(v47, enum case for DIPError.Code.idcsUnknownDocumentType(_:), v46);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      v30 = v27;
      v31 = *v50;
      (*v50)(v14, v30, v29);

      v32 = v59;
      v62 = v59;
      v34 = v59[2];
      v33 = v59[3];
      if (v34 >= v33 >> 1)
      {
        sub_10010A6D4(v33 > 1, v34 + 1, 1);
        v32 = v62;
      }

      v32[2] = v34 + 1;
      v11 = v23;
      v35 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v59 = v32;
      result = v31(v32 + v35 + *(v23 + 72) * v34, v14);
      a1 = v51;
      v20 = 1 << *(v51 + 32);
      if (v18 >= v20)
      {
        goto LABEL_26;
      }

      v36 = *(v58 + 8 * v57);
      if ((v36 & (1 << v18)) == 0)
      {
        goto LABEL_27;
      }

      if (v56 != *(v51 + 36))
      {
        goto LABEL_28;
      }

      v37 = v36 & (-2 << (v18 & 0x3F));
      if (v37)
      {
        v20 = __clz(__rbit64(v37)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v21 = v49;
        v22 = v55;
      }

      else
      {
        v38 = v57 << 6;
        v39 = v57 + 1;
        v21 = v49;
        v40 = (v48 + 8 * v57);
        while (v39 < (v20 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_1000468A0(v18, v56, 0);
            v20 = __clz(__rbit64(v41)) + v38;
            goto LABEL_20;
          }
        }

        result = sub_1000468A0(v18, v56, 0);
LABEL_20:
        v22 = v55;
      }

      v19 = v22 + 1;
      v18 = v20;
      if (v19 == v21)
      {
        return v59;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

BOOL sub_100035954(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for ISO18013KnownDocTypes() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10004697C(&qword_100201570, &type metadata accessor for ISO18013KnownDocTypes);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

unint64_t sub_100035A64()
{
  result = qword_100201480;
  if (!qword_100201480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201480);
  }

  return result;
}

uint64_t sub_100035AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IdentityReaderAuthenticator(0);
  v11 = (a3 + v10[6]);
  v11[3] = type metadata accessor for DateProvider();
  v11[4] = &protocol witness table for DateProvider;
  sub_10001A9A4(v11);
  DateProvider.init()();
  *(a3 + v10[7]) = 0;
  *(a3 + v10[8]) = 3;
  v12 = ISO18013ReaderRequest.docRequests.getter();
  KeyPath = swift_getKeyPath();
  v14 = *(v12 + 16);
  if (v14)
  {
    v42 = KeyPath;
    v35 = v10;
    v36 = a3;
    v37 = a1;
    v38 = a2;
    v45 = _swiftEmptyArrayStorage;
    sub_10010A6B4(0, v14, 0);
    v15 = v45;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = *(v16 + 64);
    v34 = v12;
    v19 = v12 + ((v18 + 32) & ~v18);
    v39 = *(v16 + 56);
    v40 = v17;
    v20 = (v16 - 8);
    do
    {
      v21 = v41;
      v22 = v16;
      v40(v9, v19, v41);
      swift_getAtKeyPath();
      (*v20)(v9, v21);
      v24 = v43;
      v23 = v44;
      v45 = v15;
      v26 = v15[2];
      v25 = v15[3];
      if (v26 >= v25 >> 1)
      {
        sub_10010A6B4((v25 > 1), v26 + 1, 1);
        v15 = v45;
      }

      v15[2] = v26 + 1;
      v27 = &v15[2 * v26];
      v27[4] = v24;
      v27[5] = v23;
      v19 += v39;
      --v14;
      v16 = v22;
    }

    while (v14);

    a1 = v37;
    a2 = v38;
    v10 = v35;
    a3 = v36;
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  v28 = sub_10010D640(v15);

  *a3 = v28;
  v29 = a3 + v10[5];
  v30 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
  v31 = type metadata accessor for ISO18013ReaderRequest();
  (*(*(v31 - 8) + 32))(v29, a1, v31);
  v32 = type metadata accessor for ISO18013SessionTranscript();
  (*(*(v32 - 8) + 32))(&v29[v30], a2, v32);
  type metadata accessor for IdentityReaderAuthenticator.Request(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100035E00(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return ISO18013ReaderRequest.DocRequest.itemsRequest.setter();
}

uint64_t sub_100035F10@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013ReaderRequest.ItemsRequest.docType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100035F3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ISO18013ReaderRequest.ItemsRequest.docType.setter();
}

uint64_t sub_100035F7C(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for IDCSAnalytics.ReaderAuthFailureReason();
  v3[37] = v4;
  v5 = *(v4 - 8);
  v3[38] = v5;
  v6 = *(v5 + 64) + 15;
  v3[39] = swift_task_alloc();
  v7 = *(*(sub_100004E70(&qword_100201488, &qword_1001ACFD0) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v8 = type metadata accessor for IDCSAnalytics.ReaderAuthTypeTag();
  v3[42] = v8;
  v9 = *(v8 - 8);
  v3[43] = v9;
  v10 = *(v9 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v11 = *(*(sub_100004E70(&qword_100201490, &qword_1001AB820) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v12 = type metadata accessor for IDCSAnalytics.ReaderAuthOutcome();
  v3[50] = v12;
  v13 = *(v12 - 8);
  v3[51] = v13;
  v14 = *(v13 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v15 = type metadata accessor for DIPError();
  v3[54] = v15;
  v16 = *(v15 - 8);
  v3[55] = v16;
  v17 = *(v16 + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v18 = type metadata accessor for Certificate();
  v3[59] = v18;
  v19 = *(v18 - 8);
  v3[60] = v19;
  v20 = *(v19 + 64) + 15;
  v3[61] = swift_task_alloc();
  v21 = type metadata accessor for Logger();
  v3[62] = v21;
  v22 = *(v21 - 8);
  v3[63] = v22;
  v23 = *(v22 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v24 = type metadata accessor for DIPError.Code();
  v3[79] = v24;
  v25 = *(v24 - 8);
  v3[80] = v25;
  v26 = *(v25 + 64) + 15;
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v27 = sub_100004E70(&qword_100201498, &qword_1001AB828);
  v3[83] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v29 = sub_100004E70(&qword_1002014A0, &qword_1001AB830);
  v3[86] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v31 = type metadata accessor for ISO18013Version();
  v3[89] = v31;
  v32 = *(v31 - 8);
  v3[90] = v32;
  v33 = *(v32 + 64) + 15;
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v34 = type metadata accessor for ISO18013SessionTranscript();
  v3[94] = v34;
  v35 = *(v34 - 8);
  v3[95] = v35;
  v36 = *(v35 + 64) + 15;
  v3[96] = swift_task_alloc();
  v37 = type metadata accessor for ISO18013ReaderRequest();
  v3[97] = v37;
  v38 = *(v37 - 8);
  v3[98] = v38;
  v39 = *(v38 + 64) + 15;
  v3[99] = swift_task_alloc();
  v40 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
  v3[100] = v40;
  v41 = *(*(v40 - 8) + 64) + 15;
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();

  return _swift_task_switch(sub_1000365FC, 0, 0);
}

uint64_t sub_1000365FC()
{
  v333 = sub_10004ACB4();
  v1 = 0;
  *(v0 + 840) = sub_10004B654();
  v31 = *(v0 + 832);
  v32 = *(v0 + 800);
  v33 = *(v0 + 288);
  v34 = type metadata accessor for IdentityReaderAuthenticator(0);
  *(v0 + 848) = v34;
  v35 = *(v34 + 20);
  *(v0 + 984) = v35;
  sub_100046244(v33 + v35, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *(v0 + 832);
  if (EnumCaseMultiPayload == 1)
  {
    v289 = v34;

    *(v0 + 856) = *v37;
    v38 = *(v37 + 1);
    *(v0 + 864) = v38;
    v39 = *(v37 + 2);
    v154 = sub_10004BCA8();
    v155 = [objc_opt_self() standardUserDefaults];
    v156._countAndFlagsBits = 0xD00000000000003ALL;
    v156._object = 0x80000001001B3BB0;
    v157 = NSUserDefaults.internalBool(forKey:)(v156);

    v327 = v157;
    if (v157)
    {
      v158 = *(v0 + 624);
      defaultLogger()();
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        *v161 = 0;
        _os_log_impl(&_mh_execute_header, v159, v160, "Internal setting enabled: truncate certificate chains to leaf only", v161, 2u);
      }

      v162 = *(v0 + 624);
      v38 = *(v0 + 496);
      v163 = *(v0 + 504);

      (*(v163 + 8))(v162, v38);
    }

    v164 = 0;
    v165 = *(v39 + 16);
    v166 = _swiftEmptyArrayStorage;
    while (v165 != v164)
    {
      if (v164 >= *(v39 + 16))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v38 = *(v39 + 8 * v164++ + 32);
      if (*(v38 + 16))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v342 = v166;
        v168 = v166;
        v169 = v154;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10010A858(0, v168[2] + 1, 1);
          v168 = v342;
        }

        v171 = v168[2];
        v170 = v168[3];
        if (v171 >= v170 >> 1)
        {
          sub_10010A858((v170 > 1), v171 + 1, 1);
          v168 = v342;
        }

        v168[2] = v171 + 1;
        v168[v171 + 4] = v38;
        v154 = v169;
        v166 = v168;
      }
    }

    v172 = v166[2];
    if (v172)
    {
      v38 = *(v0 + 480);
      sub_10010A798(0, v172, 0);
      v173 = 0;
      v174 = _swiftEmptyArrayStorage;
      v320 = v166 + 4;
      v303 = v38;
      v175 = (v38 + 8);
      v308 = v166;
      v313 = v172;
      while (v173 < v166[2])
      {
        v176 = v320[v173];
        v331 = v173;
        v337 = v174;
        if (v327)
        {
          sub_100004E70(&qword_100200220, &unk_1001AA540);
          v177 = swift_allocObject();
          *(v177 + 16) = xmmword_1001AA180;
          if (!*(v176 + 16))
          {
            goto LABEL_96;
          }

          v178 = v177;
          v179 = *(v0 + 488);
          v180 = *(v0 + 472);
          (*(v303 + 16))(v179, v176 + ((*(v303 + 80) + 32) & ~*(v303 + 80)), v180);

          v181 = Certificate.wrapped.getter();
          (*(v303 + 8))(v179, v180);
          v178[4] = v181;
          v166 = v308;
        }

        else
        {
          v182 = *(v176 + 16);
          if (v182)
          {
            v340 = v1;

            specialized ContiguousArray.reserveCapacity(_:)();
            v183 = v176 + ((*(v303 + 80) + 32) & ~*(v303 + 80));
            v184 = *(v303 + 72);
            v185 = *(v303 + 16);
            do
            {
              v186 = *(v0 + 488);
              v187 = *(v0 + 472);
              v185(v186, v183, v187);
              Certificate.wrapped.getter();
              (*v175)(v186, v187);
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v188 = _swiftEmptyArrayStorage[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v183 += v184;
              --v182;
            }

            while (v182);
            v178 = _swiftEmptyArrayStorage;
            v1 = v340;
            v166 = v308;
          }

          else
          {

            v178 = _swiftEmptyArrayStorage;
          }
        }

        sub_1000FCA10(v189);

        v38 = v178;
        v174 = v337;
        v191 = v337[2];
        v190 = v337[3];
        if (v191 >= v190 >> 1)
        {
          sub_10010A798((v190 > 1), v191 + 1, 1);
          v174 = v337;
        }

        v173 = v331 + 1;
        v174[2] = v191 + 1;
        v174[v191 + 4] = v178;
        if (v331 + 1 == v313)
        {

          goto LABEL_90;
        }
      }

      goto LABEL_95;
    }

    v174 = _swiftEmptyArrayStorage;
LABEL_90:
    *(v0 + 872) = v174;
    v223 = *(v0 + 288);
    v224 = *(v289 + 24);
    v225 = swift_task_alloc();
    *(v0 + 880) = v225;
    *v225 = v0;
    v225[1] = sub_100038544;
    v226 = v174;
    v227 = *(v0 + 288);

    return sub_100041690(v226);
  }

  v102 = *(v0 + 792);
  v103 = *(v0 + 784);
  v38 = *(v0 + 776);
  v104 = *(v0 + 768);
  v105 = *(v0 + 760);
  v106 = *(v0 + 752);
  v107 = *(v0 + 736);
  v312 = *(v0 + 728);
  v318 = *(v0 + 712);
  v326 = *(v0 + 744);
  v108 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
  (*(v103 + 32))(v102, v37, v38);
  (*(v105 + 32))(v104, &v37[v108], v106);
  ISO18013ReaderRequest.version.getter();
  static ISO18013ReaderRequest.supportedVersion.getter();
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  sub_10004697C(&qword_1002014C0, &type metadata accessor for ISO18013Version);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v301 = *(v0 + 744);
  v109 = *(v0 + 728);
  v110 = *(v0 + 720);
  v111 = *(v0 + 712);
  v112 = *(v0 + 704);
  v319 = *(v0 + 688);
  v113 = *(v0 + 680);
  v114 = *(v0 + 672);
  v115 = *(v0 + 664);
  v116 = *(v110 + 32);
  v116(v113, *(v0 + 736), v111);
  v116(v113 + *(v115 + 48), v109, v111);
  sub_100046360(v113, v114, &qword_100201498, &qword_1001AB828);
  v297 = *(v115 + 48);
  v116(v112, v114, v111);
  v117 = *(v110 + 8);
  v117(v114 + v297, v111);
  sub_100046524(v113, v114, &qword_100201498, &qword_1001AB828);
  v298 = v115;
  v116(v112 + *(v319 + 36), v114 + *(v115 + 48), v111);
  v117(v114, v111);
  v118 = v117;
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v119 = *(v0 + 744);
    v120 = *(v0 + 704);
    v121 = *(v0 + 712);
    LOBYTE(v121) = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_10000A0D4(v120, &qword_1002014A0, &qword_1001AB830);
    if (v121)
    {
      v122 = *(v0 + 792);
      v123 = v118;
      v124 = *(v0 + 768);
      v125 = *(v0 + 288);
      v123(*(v0 + 744), *(v0 + 712));
      v126 = sub_10003F088(v122, v124);
      goto LABEL_78;
    }
  }

  else
  {
    sub_10000A0D4(*(v0 + 704), &qword_1002014A0, &qword_1001AB830);
  }

  v307 = v118;
  v130 = *(v0 + 736);
  v38 = *(v0 + 728);
  v131 = *(v0 + 712);
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  static ISO18013ReaderRequest.nextMajorUnsupportedVersion.getter();
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v302 = *(v0 + 744);
  v132 = *(v0 + 728);
  v133 = *(v0 + 712);
  v134 = *(v0 + 696);
  v135 = *(v0 + 680);
  v136 = *(v0 + 672);
  v116(v135, *(v0 + 736), v133);
  v116(v135 + *(v298 + 48), v132, v133);
  sub_100046360(v135, v136, &qword_100201498, &qword_1001AB828);
  v137 = *(v298 + 48);
  v116(v134, v136, v133);
  v307(v136 + v137, v133);
  sub_100046524(v135, v136, &qword_100201498, &qword_1001AB828);
  v116(v134 + *(v319 + 36), v136 + *(v298 + 48), v133);
  v307(v136, v133);
  v138 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v139 = *(v0 + 744);
  v140 = *(v0 + 712);
  v141 = *(v0 + 696);
  if ((v138 & 1) == 0)
  {

    sub_10000A0D4(v141, &qword_1002014A0, &qword_1001AB830);
    v307(v139, v140);
LABEL_77:
    v192 = *(v0 + 792);
    v193 = *(v0 + 784);
    v338 = *(v0 + 768);
    v341 = *(v0 + 776);
    v194 = *(v0 + 760);
    v332 = *(v0 + 752);
    v195 = *(v0 + 736);
    v196 = *(v0 + 712);
    v197 = *(v0 + 656);
    v198 = *(v0 + 640);
    v199 = *(v0 + 632);
    v321 = *(v0 + 432);
    _StringGuts.grow(_:)(37);

    ISO18013ReaderRequest.version.getter();
    sub_10004697C(&qword_1002014C8, &type metadata accessor for ISO18013Version);
    v200._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v200);

    v307(v195, v196);
    (*(v198 + 104))(v197, enum case for DIPError.Code.idcsUnsupportedReaderRequestVersion(_:), v199);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    v201 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v194 + 8))(v338, v332);
    (*(v193 + 8))(v192, v341);
    goto LABEL_2;
  }

  v142 = *(v0 + 744);
  v143 = *(v0 + 712);
  v144 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_10000A0D4(v141, &qword_1002014A0, &qword_1001AB830);
  v307(v139, v140);
  if ((v144 & 1) == 0)
  {

    goto LABEL_77;
  }

  v145 = *(v0 + 288);
  v126 = sub_10004083C(*(v0 + 792), *(v0 + 768));
LABEL_78:
  v38 = v126;
  v202 = *(v0 + 792);
  v203 = *(v0 + 784);
  v204 = *(v0 + 776);
  v205 = *(v0 + 768);
  v206 = *(v0 + 752);
  v207 = *(*(v0 + 760) + 8);

  v207(v205, v206);
  (*(v203 + 8))(v202, v204);
  *(v0 + 912) = 0u;
  *(v0 + 904) = v333;
  *(v0 + 896) = v38;
  if (!(v38 >> 62))
  {
    result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_80;
  }

LABEL_99:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_80:
  if (!result)
  {
    v228 = *(v0 + 840);
    v229 = *(v0 + 656);
    v230 = *(v0 + 640);
    v231 = *(v0 + 632);
    v232 = *(v0 + 432);

    swift_bridgeObjectRelease_n();
    (*(v230 + 104))(v229, enum case for DIPError.Code.idcsMissingReaderAuth(_:), v231);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    v201 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_2:
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];

    if (v4)
    {
      v5 = *(v0 + 584);
      v7 = *(v0 + 496);
      v6 = *(v0 + 504);
      v8 = *(v0 + 432);
      v9 = *(v0 + 440);
      v10 = *(v0 + 280);
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v6 + 8))(v5, v7);
      (*(v9 + 56))(v10, 1, 1, v8);
      goto LABEL_24;
    }

    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 328);
    swift_getErrorValue();
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = *(v0 + 128);
    Error.dipErrorCode.getter();
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      goto LABEL_5;
    }

    v22 = *(v0 + 640);
    v23 = *(v0 + 632);
    v24 = *(v0 + 320);
    sub_100046360(*(v0 + 328), v24, &qword_100201488, &qword_1001ACFD0);
    v25 = (*(v22 + 88))(v24, v23);
    if (v25 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
    {
      v26 = *(v0 + 512);
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Encountered invalid reader request", v29, 2u);
      }

      v30 = *(v0 + 512);
    }

    else if (v25 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
    {
      v40 = *(v0 + 520);
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v27, v41, "Encountered missing or malformed auth certificates", v42, 2u);
      }

      v30 = *(v0 + 520);
    }

    else
    {
      if (v25 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v25 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
      {
        v146 = *(v0 + 536);
        sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
        defaultLogger()();
        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();
        v149 = os_log_type_enabled(v147, v148);
        v150 = *(v0 + 536);
        v152 = *(v0 + 496);
        v151 = *(v0 + 504);
        if (v149)
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&_mh_execute_header, v147, v148, "Encountered invalid signature during reader auth", v153, 2u);
        }

        (*(v151 + 8))(v150, v152);
        goto LABEL_17;
      }

      if (v25 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
      {
        (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_5:
        v17 = *(v0 + 584);
        v19 = *(v0 + 496);
        v18 = *(v0 + 504);
        v20 = *(v0 + 328);
        defaultLogger()();
        DIPLogError(_:message:log:)();
        (*(v18 + 8))(v17, v19);
        sub_10000A0D4(v20, &qword_100201488, &qword_1001ACFD0);
        v334 = 0;
        v21 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
LABEL_18:
        v314 = v21;
        v46 = v201;
        v47 = *(v0 + 808);
        v322 = *(v0 + 800);
        v48 = *(v0 + 408);
        v49 = *(v0 + 416);
        v50 = *(v0 + 400);
        v51 = *(v0 + 384);
        v52 = *(v0 + 304);
        v53 = *(v0 + 312);
        v54 = *(v0 + 288);
        v55 = *(v0 + 296);
        sub_100041CE0(v46, v53);
        v328 = *v54;
        (*(v48 + 104))(v49, *v314, v50);
        (*(v52 + 16))(v51, v53, v55);
        (*(v52 + 56))(v51, 0, 1, v55);
        v56 = type metadata accessor for IdentityReaderAuthenticator(0);
        sub_100046244(v54 + *(v56 + 20), v47);
        v57 = swift_getEnumCaseMultiPayload();
        v58 = *(v0 + 808);
        if (v57 == 1)
        {
          v59 = *(v0 + 344);
          v60 = *(v0 + 352);
          v61 = *(v0 + 336);
          sub_1000462A8(*(v0 + 808));
          (*(v59 + 104))(v60, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v61);
        }

        else
        {
          v62 = *(v0 + 784);
          v63 = *(v0 + 776);
          v64 = *(v0 + 760);
          v65 = *(v0 + 752);
          v67 = *(v0 + 344);
          v66 = *(v0 + 352);
          v68 = *(v0 + 336);
          v69 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
          (*(v67 + 104))(v66, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v68);
          (*(v64 + 8))(v58 + v69, v65);
          (*(v62 + 8))(v58, v63);
        }

        v70 = *(v0 + 640);
        v309 = *(v0 + 656);
        v315 = *(v0 + 632);
        v323 = *(v0 + 448);
        v71 = *(v0 + 408);
        v72 = *(v0 + 416);
        v304 = *(v0 + 400);
        v73 = *(v0 + 384);
        v74 = *(v0 + 352);
        v75 = *(v0 + 360);
        v76 = *(v0 + 336);
        v77 = *(v0 + 344);
        type metadata accessor for IDCSAnalytics();
        (*(v77 + 32))(v75, v74, v76);
        static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
        (*(v77 + 8))(v75, v76);
        sub_10000A0D4(v73, &qword_100201490, &qword_1001AB820);
        (*(v71 + 8))(v72, v304);
        (*(v70 + 104))(v309, enum case for DIPError.Code.internalError(_:), v315);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        if (v334)
        {
          v78 = *(v0 + 832);
          v233 = *(v0 + 824);
          v234 = *(v0 + 816);
          v235 = *(v0 + 808);
          v236 = *(v0 + 792);
          v237 = *(v0 + 768);
          v238 = *(v0 + 744);
          v239 = *(v0 + 736);
          v240 = *(v0 + 728);
          v241 = *(v0 + 704);
          v243 = *(v0 + 696);
          v245 = *(v0 + 680);
          v247 = *(v0 + 672);
          v249 = *(v0 + 656);
          v251 = *(v0 + 648);
          v253 = *(v0 + 624);
          v255 = *(v0 + 616);
          v257 = *(v0 + 608);
          v259 = *(v0 + 600);
          v261 = *(v0 + 592);
          v263 = *(v0 + 584);
          v265 = *(v0 + 576);
          v267 = *(v0 + 568);
          v269 = *(v0 + 560);
          v271 = *(v0 + 552);
          v273 = *(v0 + 544);
          v275 = *(v0 + 536);
          v277 = *(v0 + 528);
          v279 = *(v0 + 520);
          v281 = *(v0 + 512);
          v283 = *(v0 + 488);
          v285 = *(v0 + 464);
          v287 = *(v0 + 456);
          v79 = *(v0 + 440);
          v80 = *(v0 + 448);
          v81 = *(v0 + 432);
          v291 = *(v0 + 424);
          v293 = *(v0 + 416);
          v295 = *(v0 + 392);
          v299 = *(v0 + 384);
          v305 = *(v0 + 376);
          v310 = *(v0 + 368);
          v316 = *(v0 + 360);
          v324 = *(v0 + 352);
          v329 = *(v0 + 328);
          v335 = *(v0 + 320);
          v83 = *(v0 + 304);
          v82 = *(v0 + 312);
          v84 = *(v0 + 296);
          sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
          swift_allocError();
          (*(v79 + 16))(v85, v80, v81);
          swift_willThrow();

          (*(v79 + 8))(v80, v81);
          (*(v83 + 8))(v82, v84);

          v86 = *(v0 + 8);
LABEL_25:

          return v86();
        }

        v88 = *(v0 + 440);
        v87 = *(v0 + 448);
        v89 = *(v0 + 432);
        v90 = *(v0 + 280);
        (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

        (*(v88 + 32))(v90, v87, v89);
        (*(v88 + 56))(v90, 0, 1, v89);
LABEL_24:
        v91 = *(v0 + 832);
        v92 = *(v0 + 824);
        v93 = *(v0 + 816);
        v94 = *(v0 + 808);
        v95 = *(v0 + 792);
        v96 = *(v0 + 768);
        v97 = *(v0 + 744);
        v98 = *(v0 + 736);
        v99 = *(v0 + 728);
        v242 = *(v0 + 704);
        v244 = *(v0 + 696);
        v246 = *(v0 + 680);
        v248 = *(v0 + 672);
        v250 = *(v0 + 656);
        v252 = *(v0 + 648);
        v254 = *(v0 + 624);
        v256 = *(v0 + 616);
        v258 = *(v0 + 608);
        v260 = *(v0 + 600);
        v262 = *(v0 + 592);
        v264 = *(v0 + 584);
        v266 = *(v0 + 576);
        v268 = *(v0 + 568);
        v270 = *(v0 + 560);
        v272 = *(v0 + 552);
        v274 = *(v0 + 544);
        v276 = *(v0 + 536);
        v278 = *(v0 + 528);
        v280 = *(v0 + 520);
        v282 = *(v0 + 512);
        v284 = *(v0 + 488);
        v286 = *(v0 + 464);
        v288 = *(v0 + 456);
        v290 = *(v0 + 448);
        v292 = *(v0 + 424);
        v294 = *(v0 + 416);
        v296 = *(v0 + 392);
        v300 = *(v0 + 384);
        v306 = *(v0 + 376);
        v311 = *(v0 + 368);
        v317 = *(v0 + 360);
        v325 = *(v0 + 352);
        v330 = *(v0 + 328);
        v336 = *(v0 + 320);
        v339 = *(v0 + 312);
        v100 = *(v0 + 272);

        *(v100 + 89) = 0u;
        v100[4] = 0u;
        v100[5] = 0u;
        v100[2] = 0u;
        v100[3] = 0u;
        *v100 = 0u;
        v100[1] = 0u;
        v86 = *(v0 + 8);
        goto LABEL_25;
      }

      v127 = *(v0 + 528);
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&_mh_execute_header, v27, v128, "Encountered revoked reader auth certificate", v129, 2u);
      }

      v30 = *(v0 + 528);
    }

    v44 = *(v0 + 496);
    v43 = *(v0 + 504);
    v45 = *(v0 + 328);

    (*(v43 + 8))(v30, v44);
    sub_10000A0D4(v45, &qword_100201488, &qword_1001ACFD0);
LABEL_17:
    v334 = 1;
    v21 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
    goto LABEL_18;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v208 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v208 = *(v38 + 32);
  }

  *(v0 + 928) = v208;
  v209 = *(v0 + 848);
  v210 = *(v0 + 616);
  v211 = *(v0 + 288);

  v212 = *v211;
  *(v0 + 936) = *v211;
  v213 = *(v209 + 24);
  *(v0 + 988) = v213;
  defaultLogger()();
  v214 = Logger.logObject.getter();
  v215 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v214, v215))
  {
    v216 = swift_slowAlloc();
    *v216 = 0;
    _os_log_impl(&_mh_execute_header, v214, v215, "Verifying trust with Apple issued roots", v216, 2u);
  }

  v217 = *(v0 + 840);
  v218 = *(v0 + 616);
  v219 = *(v0 + 496);
  v220 = *(v0 + 504);

  v221 = *(v220 + 8);
  *(v0 + 944) = v221;
  v221(v218, v219);
  v222 = swift_task_alloc();
  *(v0 + 952) = v222;
  *v222 = v0;
  v222[1] = sub_100039770;

  return sub_1000421D0(v212, 0, 0, v217, v38, v211 + v213);
}

uint64_t sub_100038544(uint64_t a1)
{
  v2 = *(*v1 + 880);
  v3 = *(*v1 + 872);
  v5 = *v1;
  *(*v1 + 888) = a1;

  return _swift_task_switch(sub_100038664, 0, 0);
}

uint64_t sub_100038664()
{
  v164 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 856);
  v163 = *(v0 + 864);
  *(v0 + 920) = v163;
  *(v0 + 912) = v2;
  *(v0 + 904) = 0;
  *(v0 + 896) = v1;

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v19 = *(v0 + 840);
    v20 = *(v0 + 656);
    v21 = *(v0 + 640);
    v22 = *(v0 + 632);
    v23 = *(v0 + 432);

    swift_bridgeObjectRelease_n();
    (*(v21 + 104))(v20, enum case for DIPError.Code.idcsMissingReaderAuth(_:), v22);
    sub_10002688C(_swiftEmptyArrayStorage);
    v24 = sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    v25 = swift_allocError();
    strcpy(v127, "authenticate()");
    HIBYTE(v127[1]) = -18;
    v163 = "nauthenticated reader";
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v26 = [objc_opt_self() standardUserDefaults];
    v27 = String._bridgeToObjectiveC()();
    LOBYTE(v19) = [v26 BOOLForKey:v27];

    if (v19)
    {
      v28 = *(v0 + 584);
      v30 = *(v0 + 496);
      v29 = *(v0 + 504);
      v31 = *(v0 + 432);
      v32 = *(v0 + 440);
      v33 = *(v0 + 280);
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v29 + 8))(v28, v30);
      (*(v32 + 56))(v33, 1, 1, v31);
      goto LABEL_32;
    }

    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 328);
    swift_getErrorValue();
    v38 = *(v0 + 112);
    v37 = *(v0 + 120);
    v39 = *(v0 + 128);
    Error.dipErrorCode.getter();
    v40 = (*(v34 + 48))(v36, 1, v35);
    v155 = v24;
    if (v40 == 1)
    {
      goto LABEL_15;
    }

    v46 = *(v0 + 640);
    v47 = *(v0 + 632);
    v48 = *(v0 + 320);
    sub_100046360(*(v0 + 328), v48, &qword_100201488, &qword_1001ACFD0);
    v49 = (*(v46 + 88))(v48, v47);
    if (v49 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
    {
      v50 = *(v0 + 512);
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Encountered invalid reader request", v53, 2u);
      }

      v54 = *(v0 + 512);
    }

    else if (v49 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
    {
      v55 = *(v0 + 520);
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v51, v56, "Encountered missing or malformed auth certificates", v57, 2u);
      }

      v54 = *(v0 + 520);
    }

    else
    {
      if (v49 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v49 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
      {
        v119 = *(v0 + 536);
        sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
        defaultLogger()();
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        v122 = os_log_type_enabled(v120, v121);
        v123 = *(v0 + 536);
        v125 = *(v0 + 496);
        v124 = *(v0 + 504);
        if (v122)
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&_mh_execute_header, v120, v121, "Encountered invalid signature during reader auth", v126, 2u);
        }

        (*(v124 + 8))(v123, v125);
        goto LABEL_25;
      }

      if (v49 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
      {
        (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_15:
        v41 = *(v0 + 584);
        v43 = *(v0 + 496);
        v42 = *(v0 + 504);
        v44 = *(v0 + 328);
        defaultLogger()();
        DIPLogError(_:message:log:)();
        (*(v42 + 8))(v41, v43);
        sub_10000A0D4(v44, &qword_100201488, &qword_1001ACFD0);
        LODWORD(v161) = 0;
        v45 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
LABEL_26:
        v158 = v45;
        v61 = v25;
        v62 = *(v0 + 808);
        v159 = *(v0 + 800);
        v63 = *(v0 + 408);
        v64 = *(v0 + 416);
        v65 = *(v0 + 400);
        v66 = *(v0 + 384);
        v67 = *(v0 + 304);
        v68 = *(v0 + 312);
        v69 = *(v0 + 288);
        v70 = *(v0 + 296);
        v162 = v61;
        sub_100041CE0(v61, *(v0 + 312));
        v160 = *v69;
        (*(v63 + 104))(v64, *v158, v65);
        (*(v67 + 16))(v66, v68, v70);
        (*(v67 + 56))(v66, 0, 1, v70);
        v71 = type metadata accessor for IdentityReaderAuthenticator(0);
        sub_100046244(v69 + *(v71 + 20), v62);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v73 = *(v0 + 808);
        if (EnumCaseMultiPayload == 1)
        {
          v74 = *(v0 + 344);
          v75 = *(v0 + 352);
          v76 = *(v0 + 336);
          sub_1000462A8(*(v0 + 808));
          (*(v74 + 104))(v75, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v76);
        }

        else
        {
          v77 = *(v0 + 784);
          v78 = *(v0 + 776);
          v79 = *(v0 + 760);
          v80 = *(v0 + 752);
          v82 = *(v0 + 344);
          v81 = *(v0 + 352);
          v83 = *(v0 + 336);
          v84 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
          (*(v82 + 104))(v81, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v83);
          (*(v79 + 8))(v73 + v84, v80);
          (*(v77 + 8))(v73, v78);
        }

        v85 = *(v0 + 640);
        v157 = *(v0 + 656);
        v158 = *(v0 + 632);
        v159 = *(v0 + 448);
        v86 = *(v0 + 408);
        v87 = *(v0 + 416);
        v156 = *(v0 + 400);
        v88 = *(v0 + 384);
        v89 = *(v0 + 352);
        v90 = *(v0 + 360);
        v91 = *(v0 + 336);
        v92 = *(v0 + 344);
        type metadata accessor for IDCSAnalytics();
        (*(v92 + 32))(v90, v89, v91);
        static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
        (*(v92 + 8))(v90, v91);
        sub_10000A0D4(v88, &qword_100201490, &qword_1001AB820);
        (*(v86 + 8))(v87, v156);
        (*(v85 + 104))(v157, enum case for DIPError.Code.internalError(_:), v158);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        v127[2] = 267;
        HIBYTE(v127[1]) = -18;
        strcpy(v127, "authenticate()");
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        if (v161)
        {
          v93 = *(v0 + 832);
          v127[4] = *(v0 + 824);
          v127[5] = *(v0 + 816);
          v127[6] = *(v0 + 808);
          v127[7] = *(v0 + 792);
          v127[8] = *(v0 + 768);
          v127[9] = *(v0 + 744);
          v127[10] = *(v0 + 736);
          v127[11] = *(v0 + 728);
          v127[12] = *(v0 + 704);
          v128 = *(v0 + 696);
          v129 = *(v0 + 680);
          v130 = *(v0 + 672);
          v131 = *(v0 + 656);
          v132 = *(v0 + 648);
          v133 = *(v0 + 624);
          v134 = *(v0 + 616);
          v135 = *(v0 + 608);
          v136 = *(v0 + 600);
          v137 = *(v0 + 592);
          v138 = *(v0 + 584);
          v139 = *(v0 + 576);
          v140 = *(v0 + 568);
          v141 = *(v0 + 560);
          v142 = *(v0 + 552);
          v143 = *(v0 + 544);
          v144 = *(v0 + 536);
          v145 = *(v0 + 528);
          v146 = *(v0 + 520);
          v147 = *(v0 + 512);
          v148 = *(v0 + 488);
          v149 = *(v0 + 464);
          v95 = *(v0 + 440);
          v94 = *(v0 + 448);
          v96 = *(v0 + 432);
          v150 = *(v0 + 456);
          v151 = *(v0 + 424);
          v152 = *(v0 + 416);
          v153 = *(v0 + 392);
          v154 = *(v0 + 384);
          v156 = *(v0 + 376);
          v158 = *(v0 + 368);
          v159 = *(v0 + 360);
          v160 = *(v0 + 352);
          v161 = *(v0 + 328);
          v163 = *(v0 + 320);
          v97 = *(v0 + 304);
          v98 = *(v0 + 312);
          v99 = *(v0 + 296);
          v157 = swift_allocError();
          (*(v95 + 16))(v100, v94, v96);
          swift_willThrow();

          (*(v95 + 8))(v94, v96);
          (*(v97 + 8))(v98, v99);

          v101 = *(v0 + 8);
LABEL_33:

          return v101();
        }

        v103 = *(v0 + 440);
        v102 = *(v0 + 448);
        v104 = *(v0 + 432);
        v105 = *(v0 + 280);
        (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

        (*(v103 + 32))(v105, v102, v104);
        (*(v103 + 56))(v105, 0, 1, v104);
LABEL_32:
        v106 = *(v0 + 832);
        v107 = *(v0 + 824);
        v108 = *(v0 + 816);
        v109 = *(v0 + 808);
        v110 = *(v0 + 792);
        v111 = *(v0 + 768);
        v112 = *(v0 + 744);
        v113 = *(v0 + 736);
        v114 = *(v0 + 728);
        v128 = *(v0 + 704);
        v129 = *(v0 + 696);
        v130 = *(v0 + 680);
        v131 = *(v0 + 672);
        v132 = *(v0 + 656);
        v133 = *(v0 + 648);
        v134 = *(v0 + 624);
        v135 = *(v0 + 616);
        v136 = *(v0 + 608);
        v137 = *(v0 + 600);
        v138 = *(v0 + 592);
        v139 = *(v0 + 584);
        v140 = *(v0 + 576);
        v141 = *(v0 + 568);
        v142 = *(v0 + 560);
        v143 = *(v0 + 552);
        v144 = *(v0 + 544);
        v145 = *(v0 + 536);
        v146 = *(v0 + 528);
        v147 = *(v0 + 520);
        v148 = *(v0 + 512);
        v149 = *(v0 + 488);
        v150 = *(v0 + 464);
        v151 = *(v0 + 456);
        v152 = *(v0 + 448);
        v153 = *(v0 + 424);
        v154 = *(v0 + 416);
        v155 = *(v0 + 392);
        v156 = *(v0 + 384);
        v157 = *(v0 + 376);
        v158 = *(v0 + 368);
        v159 = *(v0 + 360);
        v160 = *(v0 + 352);
        v161 = *(v0 + 328);
        v162 = *(v0 + 320);
        v163 = *(v0 + 312);
        v115 = *(v0 + 272);

        *(v115 + 89) = 0u;
        v115[4] = 0u;
        v115[5] = 0u;
        v115[2] = 0u;
        v115[3] = 0u;
        *v115 = 0u;
        v115[1] = 0u;
        v101 = *(v0 + 8);
        goto LABEL_33;
      }

      v116 = *(v0 + 528);
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&_mh_execute_header, v51, v117, "Encountered revoked reader auth certificate", v118, 2u);
      }

      v54 = *(v0 + 528);
    }

    v59 = *(v0 + 496);
    v58 = *(v0 + 504);
    v60 = *(v0 + 328);

    (*(v58 + 8))(v54, v59);
    sub_10000A0D4(v60, &qword_100201488, &qword_1001ACFD0);
LABEL_25:
    LODWORD(v161) = 1;
    v45 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
    goto LABEL_26;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v162 = v2;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v1 + 32);
  }

  *(v0 + 928) = v4;
  v5 = *(v0 + 848);
  v6 = *(v0 + 616);
  v7 = *(v0 + 288);

  v8 = *v7;
  *(v0 + 936) = *v7;
  v9 = *(v5 + 24);
  *(v0 + 988) = v9;
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Verifying trust with Apple issued roots", v12, 2u);
  }

  v13 = *(v0 + 840);
  v14 = *(v0 + 616);
  v16 = *(v0 + 496);
  v15 = *(v0 + 504);

  v17 = *(v15 + 8);
  *(v0 + 944) = v17;
  v17(v14, v16);
  v18 = swift_task_alloc();
  *(v0 + 952) = v18;
  *v18 = v0;
  v18[1] = sub_100039770;

  return sub_1000421D0(v8, v162, v163, v13, v1, v7 + v9);
}

uint64_t sub_100039770(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[119];
  v8 = *v2;
  v4[120] = v1;

  if (v1)
  {
    v6 = sub_10003B254;
  }

  else
  {
    v6 = sub_10003988C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003988C()
{
  v1 = (v0 + 64);
  v2 = *(v0 + 960);
  v327 = *(v0 + 144);
  v3 = *(v0 + 920);
  v4 = *(v0 + 904);
  v5 = *(v0 + 840);
  v6 = *(v0 + 600);

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Verified reader certificate chain", v9, 2u);
  }

  v10 = *(v0 + 944);
  v11 = *(v0 + 928);
  v12 = *(v0 + 600);
  v13 = *(v0 + 496);
  v14 = *(v0 + 504);

  v10(v12, v13);
  v15 = v11;
  sub_100021A34((v0 + 64));
  v16 = v2;
  v17 = *(v0 + 928);
  if (v16)
  {
    v18 = *(v0 + 896);

    goto LABEL_5;
  }

  v28 = *(v0 + 80);
  v29 = *(v0 + 984);
  v30 = *(v0 + 824);
  v31 = *(v0 + 800);
  v32 = *(v0 + 288);
  v321 = *(v0 + 72);
  v324 = *(v0 + 64);
  v313 = *(v0 + 96);
  v317 = *(v0 + 88);
  v310 = *(v0 + 104);

  sub_100046244(v32 + v29, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = *(v0 + 824);
  if (EnumCaseMultiPayload == 1)
  {
    v307 = v28;
    sub_1000462A8(v34);
    goto LABEL_14;
  }

  v46 = *(v0 + 784);
  v47 = *(v0 + 776);
  v48 = *(v0 + 760);
  v49 = *(v0 + 752);
  v50 = sub_100004E70(&qword_1002014A8, &qword_1001AB838);
  (*(v48 + 8))(v34 + *(v50 + 48), v49);
  (*(v46 + 8))(v34, v47);
  *(v0 + 184) = *(v0 + 80);
  v51 = *(v0 + 192);
  if (v51)
  {
    *(v0 + 232) = *(v0 + 184);
    *(v0 + 240) = v51;
    sub_10004630C();
    Collection.nilIfEmpty.getter();
    if (*(v0 + 256))
    {
      v307 = v28;

LABEL_14:
      v52 = *(v0 + 816);
      v297 = *(v0 + 984);
      v301 = *(v0 + 800);
      v53 = *(v0 + 584);
      v54 = *(v0 + 496);
      v55 = *(v0 + 504);
      v283 = *(v0 + 424);
      v286 = *(v0 + 944);
      v57 = *(v0 + 400);
      v56 = *(v0 + 408);
      v58 = *(v0 + 304);
      v289 = *(v0 + 392);
      v292 = *(v0 + 296);
      v294 = *(v0 + 288);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v1;
      Logger.sensitive(_:)();

      v286(v53, v54);
      (*(v56 + 104))(v283, enum case for IDCSAnalytics.ReaderAuthOutcome.authenticated(_:), v57);
      (*(v58 + 56))(v289, 1, 1, v292);
      sub_100046244(v294 + v297, v52);
      v59 = swift_getEnumCaseMultiPayload();
      v60 = *(v0 + 816);
      if (v59 == 1)
      {
        v61 = *(v0 + 368);
        v62 = *(v0 + 336);
        v63 = *(v0 + 344);
        sub_1000462A8(*(v0 + 816));
        (*(v63 + 104))(v61, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v62);
      }

      else
      {
        v73 = *(v0 + 784);
        v74 = *(v0 + 776);
        v75 = *(v0 + 760);
        v76 = *(v0 + 752);
        v77 = *(v0 + 368);
        v78 = *(v0 + 336);
        v79 = *(v0 + 344);
        v80 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
        (*(v79 + 104))(v77, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v78);
        (*(v75 + 8))(v60 + v80, v76);
        (*(v73 + 8))(v60, v74);
      }

      v81 = *(v0 + 936);
      v82 = *(v0 + 424);
      v83 = *(v0 + 408);
      v298 = *(v0 + 400);
      v302 = *(v0 + 576);
      v84 = *(v0 + 392);
      v86 = *(v0 + 368);
      v85 = *(v0 + 376);
      v88 = *(v0 + 336);
      v87 = *(v0 + 344);
      type metadata accessor for IDCSAnalytics();
      (*(v87 + 32))(v85, v86, v88);
      static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
      (*(v87 + 8))(v85, v88);
      sub_10000A0D4(v84, &qword_100201490, &qword_1001AB820);
      (*(v83 + 8))(v82, v298);
      defaultLogger()();
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&_mh_execute_header, v89, v90, "Reader authenticated offline successfully", v91, 2u);
      }

      v92 = *(v0 + 944);
      v93 = *(v0 + 848);
      v94 = *(v0 + 576);
      v95 = *(v0 + 496);
      v96 = *(v0 + 288);

      v92(v94, v95);
      v97 = *(v93 + 28);
      v98 = *(v96 + v97);

      *(v96 + v97) = v327;
      if (v327)
      {
        v99 = (v0 + 560);
        v100 = *(v0 + 560);
        defaultLogger()();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          v104 = "Ongoing OCSP check in the background";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v101, v102, v104, v103, 2u);
          v112 = *v99;

LABEL_31:
          v113 = *(v0 + 944);
          v114 = *(v0 + 496);

          v113(v112, v114);
          v116 = *(v0 + 64);
          v115 = *(v0 + 72);
          if (v116 == 0x2E6173742E6C646DLL && v115 == 0xEF766F672E736864 || (v117 = *(v0 + 64), v118 = *(v0 + 72), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            v119 = 1;
          }

          else
          {
            v119 = 2;
            if (v116 != 0x61696D656469 || v115 != 0xE600000000000000)
            {
              v186 = *(v0 + 960);
              v187 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (v186)
              {
                v188 = 3;
              }

              else
              {
                v188 = 0;
              }

              if (v187)
              {
                v119 = 2;
              }

              else
              {
                v119 = v188;
              }
            }
          }

          v120 = *(v0 + 896);
          *(*(v0 + 288) + *(*(v0 + 848) + 32)) = v119;
          v121 = *(v0 + 896);
          if (v120 >> 62)
          {
            if (v121 < 0)
            {
              v216 = *(v0 + 896);
            }

            result = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            result = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v123 = *(v0 + 896);
          if (result < 2)
          {
            v126 = *(v0 + 544);
            v127 = *(v0 + 896);

            defaultLogger()();
            v128 = Logger.logObject.getter();
            v129 = static os_log_type_t.error.getter();
            v130 = os_log_type_enabled(v128, v129);
            v131 = *(v0 + 944);
            v132 = *(v0 + 544);
            v133 = *(v0 + 496);
            if (v130)
            {
              v134 = swift_slowAlloc();
              *v134 = 0;
              _os_log_impl(&_mh_execute_header, v128, v129, "Reader certificate is a root CA", v134, 2u);
            }

            v131(v132, v133);
            v189 = 0;
            v190 = 0;
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = 0;
          }

          else
          {
            if ((v123 & 0xC000000000000001) != 0)
            {
              v217 = *(v0 + 896);
              v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v218 = *(v0 + 896);
            }

            else
            {
              if (result > *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v124 = *(v123 + 8 * (result - 1) + 32);
            }

            v125 = v124;
            sub_100021A34((v0 + 16));
            v189 = *(v0 + 16);
            v190 = *(v0 + 24);
            v191 = *(v0 + 32);
            v192 = *(v0 + 40);
            v193 = *(v0 + 48);
            v194 = *(v0 + 56);
          }

          v288 = v194;
          v291 = v119;
          v293 = v193;
          v296 = v192;
          v300 = v191;
          v304 = v190;
          v306 = v189;
          v328 = *(v0 + 928);
          (*(*(v0 + 440) + 56))(*(v0 + 280), 1, 1, *(v0 + 432));
          goto LABEL_73;
        }
      }

      else
      {
        v99 = (v0 + 568);
        v111 = *(v0 + 568);
        defaultLogger()();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          v104 = "No OCSP check in the background";
          goto LABEL_29;
        }
      }

      v112 = *v99;
      goto LABEL_31;
    }
  }

  v105 = *(v0 + 928);
  v106 = *(v0 + 896);
  v107 = *(v0 + 656);
  v108 = *(v0 + 640);
  v109 = *(v0 + 632);
  v110 = *(v0 + 432);
  *(v0 + 200) = *v1;
  sub_10001A8EC(v0 + 200);
  sub_10000A0D4(v0 + 184, &qword_1002014B0, &unk_1001ACFE0);
  *(v0 + 216) = *(v0 + 96);
  sub_10000A0D4(v0 + 216, &qword_1002014B0, &unk_1001ACFE0);

  (*(v108 + 104))(v107, enum case for DIPError.Code.idcsMissingReaderOrganization(_:), v109);
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  v16 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_5:

  v19 = [objc_opt_self() standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  if (v21)
  {
    v22 = *(v0 + 584);
    v23 = *(v0 + 496);
    v24 = *(v0 + 504);
    v25 = *(v0 + 432);
    v26 = *(v0 + 440);
    v27 = *(v0 + 280);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v24 + 8))(v22, v23);
    (*(v26 + 56))(v27, 1, 1, v25);
LABEL_57:
    v324 = 0;
    v328 = 0;
    v317 = 0;
    v321 = 0;
    v307 = 0;
    v310 = 0;
    v313 = 0;
    v304 = 0;
    v306 = 0;
    v296 = 0;
    v300 = 0;
    v293 = 0;
    v288 = 0;
    v291 = 0;
LABEL_73:
    v198 = *(v0 + 832);
    v199 = *(v0 + 824);
    v200 = *(v0 + 816);
    v201 = *(v0 + 808);
    v202 = *(v0 + 792);
    v203 = *(v0 + 768);
    v204 = *(v0 + 744);
    v205 = *(v0 + 736);
    v206 = *(v0 + 728);
    v219 = *(v0 + 704);
    v220 = *(v0 + 696);
    v221 = *(v0 + 680);
    v222 = *(v0 + 672);
    v223 = *(v0 + 656);
    v224 = *(v0 + 648);
    v226 = *(v0 + 624);
    v228 = *(v0 + 616);
    v230 = *(v0 + 608);
    v232 = *(v0 + 600);
    v234 = *(v0 + 592);
    v236 = *(v0 + 584);
    v238 = *(v0 + 576);
    v240 = *(v0 + 568);
    v242 = *(v0 + 560);
    v244 = *(v0 + 552);
    v246 = *(v0 + 544);
    v248 = *(v0 + 536);
    v250 = *(v0 + 528);
    v252 = *(v0 + 520);
    v254 = *(v0 + 512);
    v256 = *(v0 + 488);
    v258 = *(v0 + 464);
    v260 = *(v0 + 456);
    v262 = *(v0 + 448);
    v264 = *(v0 + 424);
    v266 = *(v0 + 416);
    v268 = *(v0 + 392);
    v270 = *(v0 + 384);
    v272 = *(v0 + 376);
    v274 = *(v0 + 368);
    v276 = *(v0 + 360);
    v278 = *(v0 + 352);
    v280 = *(v0 + 328);
    v282 = *(v0 + 320);
    v285 = *(v0 + 312);
    v207 = *(v0 + 272);

    *v207 = v328;
    *(v207 + 8) = v324;
    *(v207 + 16) = v321;
    *(v207 + 24) = v307;
    *(v207 + 32) = v317;
    *(v207 + 40) = v313;
    *(v207 + 48) = v310;
    *(v207 + 56) = v306;
    *(v207 + 64) = v304;
    *(v207 + 72) = v300;
    *(v207 + 80) = v296;
    *(v207 + 88) = v293;
    *(v207 + 96) = v288;
    *(v207 + 104) = v291;
    v181 = *(v0 + 8);
    goto LABEL_74;
  }

  v35 = *(v0 + 640);
  v36 = *(v0 + 632);
  v37 = *(v0 + 328);
  swift_getErrorValue();
  v39 = *(v0 + 112);
  v38 = *(v0 + 120);
  v40 = *(v0 + 128);
  Error.dipErrorCode.getter();
  if ((*(v35 + 48))(v37, 1, v36) == 1)
  {
    goto LABEL_10;
  }

  v64 = *(v0 + 640);
  v65 = *(v0 + 632);
  v66 = *(v0 + 320);
  sub_100046360(*(v0 + 328), v66, &qword_100201488, &qword_1001ACFD0);
  v67 = (*(v64 + 88))(v66, v65);
  if (v67 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    v68 = *(v0 + 512);
    defaultLogger()();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Encountered invalid reader request", v71, 2u);
    }

    v72 = *(v0 + 512);
  }

  else if (v67 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    v135 = *(v0 + 520);
    defaultLogger()();
    v69 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v69, v136, "Encountered missing or malformed auth certificates", v137, 2u);
    }

    v72 = *(v0 + 520);
  }

  else
  {
    if (v67 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v67 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
    {
      v208 = *(v0 + 536);
      sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
      defaultLogger()();
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.error.getter();
      v211 = os_log_type_enabled(v209, v210);
      v212 = *(v0 + 536);
      v214 = *(v0 + 496);
      v213 = *(v0 + 504);
      if (v211)
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        _os_log_impl(&_mh_execute_header, v209, v210, "Encountered invalid signature during reader auth", v215, 2u);
      }

      (*(v213 + 8))(v212, v214);
      goto LABEL_50;
    }

    if (v67 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
    {
      (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_10:
      v41 = *(v0 + 584);
      v42 = *(v0 + 496);
      v43 = *(v0 + 504);
      v44 = *(v0 + 328);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v43 + 8))(v41, v42);
      sub_10000A0D4(v44, &qword_100201488, &qword_1001ACFD0);
      v325 = 0;
      v45 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
      goto LABEL_51;
    }

    v195 = *(v0 + 528);
    defaultLogger()();
    v69 = Logger.logObject.getter();
    v196 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v196))
    {
      v197 = swift_slowAlloc();
      *v197 = 0;
      _os_log_impl(&_mh_execute_header, v69, v196, "Encountered revoked reader auth certificate", v197, 2u);
    }

    v72 = *(v0 + 528);
  }

  v139 = *(v0 + 496);
  v138 = *(v0 + 504);
  v140 = *(v0 + 328);

  (*(v138 + 8))(v72, v139);
  sub_10000A0D4(v140, &qword_100201488, &qword_1001ACFD0);
LABEL_50:
  v325 = 1;
  v45 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
LABEL_51:
  v314 = v45;
  v141 = v16;
  v142 = *(v0 + 808);
  v318 = *(v0 + 800);
  v143 = *(v0 + 408);
  v144 = *(v0 + 416);
  v145 = *(v0 + 400);
  v146 = *(v0 + 384);
  v147 = *(v0 + 304);
  v148 = *(v0 + 312);
  v149 = *(v0 + 288);
  v150 = *(v0 + 296);
  sub_100041CE0(v141, v148);
  v322 = *v149;
  (*(v143 + 104))(v144, *v314, v145);
  (*(v147 + 16))(v146, v148, v150);
  (*(v147 + 56))(v146, 0, 1, v150);
  v151 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v149 + *(v151 + 20), v142);
  v152 = swift_getEnumCaseMultiPayload();
  v153 = *(v0 + 808);
  if (v152 == 1)
  {
    v154 = *(v0 + 344);
    v155 = *(v0 + 352);
    v156 = *(v0 + 336);
    sub_1000462A8(*(v0 + 808));
    (*(v154 + 104))(v155, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v156);
  }

  else
  {
    v157 = *(v0 + 784);
    v158 = *(v0 + 776);
    v159 = *(v0 + 760);
    v160 = *(v0 + 752);
    v162 = *(v0 + 344);
    v161 = *(v0 + 352);
    v163 = *(v0 + 336);
    v164 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v162 + 104))(v161, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v163);
    (*(v159 + 8))(v153 + v164, v160);
    (*(v157 + 8))(v153, v158);
  }

  v165 = *(v0 + 640);
  v311 = *(v0 + 656);
  v315 = *(v0 + 632);
  v319 = *(v0 + 448);
  v166 = *(v0 + 408);
  v167 = *(v0 + 416);
  v308 = *(v0 + 400);
  v168 = *(v0 + 384);
  v169 = *(v0 + 352);
  v170 = *(v0 + 360);
  v171 = *(v0 + 336);
  v172 = *(v0 + 344);
  type metadata accessor for IDCSAnalytics();
  (*(v172 + 32))(v170, v169, v171);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v172 + 8))(v170, v171);
  sub_10000A0D4(v168, &qword_100201490, &qword_1001AB820);
  (*(v166 + 8))(v167, v308);
  (*(v165 + 104))(v311, enum case for DIPError.Code.internalError(_:), v315);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (!v325)
  {
    v183 = *(v0 + 440);
    v182 = *(v0 + 448);
    v184 = *(v0 + 432);
    v185 = *(v0 + 280);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    (*(v183 + 32))(v185, v182, v184);
    (*(v183 + 56))(v185, 0, 1, v184);
    goto LABEL_57;
  }

  v173 = *(v0 + 832);
  v225 = *(v0 + 824);
  v227 = *(v0 + 816);
  v229 = *(v0 + 808);
  v231 = *(v0 + 792);
  v233 = *(v0 + 768);
  v235 = *(v0 + 744);
  v237 = *(v0 + 736);
  v239 = *(v0 + 728);
  v241 = *(v0 + 704);
  v243 = *(v0 + 696);
  v245 = *(v0 + 680);
  v247 = *(v0 + 672);
  v249 = *(v0 + 656);
  v251 = *(v0 + 648);
  v253 = *(v0 + 624);
  v255 = *(v0 + 616);
  v257 = *(v0 + 608);
  v259 = *(v0 + 600);
  v261 = *(v0 + 592);
  v263 = *(v0 + 584);
  v265 = *(v0 + 576);
  v267 = *(v0 + 568);
  v269 = *(v0 + 560);
  v271 = *(v0 + 552);
  v273 = *(v0 + 544);
  v275 = *(v0 + 536);
  v277 = *(v0 + 528);
  v279 = *(v0 + 520);
  v281 = *(v0 + 512);
  v284 = *(v0 + 488);
  v287 = *(v0 + 464);
  v290 = *(v0 + 456);
  v174 = *(v0 + 440);
  v175 = *(v0 + 448);
  v176 = *(v0 + 432);
  v295 = *(v0 + 424);
  v299 = *(v0 + 416);
  v303 = *(v0 + 392);
  v305 = *(v0 + 384);
  v309 = *(v0 + 376);
  v312 = *(v0 + 368);
  v316 = *(v0 + 360);
  v320 = *(v0 + 352);
  v323 = *(v0 + 328);
  v326 = *(v0 + 320);
  v178 = *(v0 + 304);
  v177 = *(v0 + 312);
  v179 = *(v0 + 296);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v174 + 16))(v180, v175, v176);
  swift_willThrow();

  (*(v174 + 8))(v175, v176);
  (*(v178 + 8))(v177, v179);

  v181 = *(v0 + 8);
LABEL_74:

  return v181();
}