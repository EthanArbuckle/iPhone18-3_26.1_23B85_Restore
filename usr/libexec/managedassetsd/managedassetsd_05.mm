uint64_t sub_1000B94A8()
{
  v1 = v0[14];
  v2 = v0[12];
  sub_1000BFD3C();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B9AEC(int a1, void *aBlock, void *a3)
{
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[13] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[14] = v8;
  *v8 = v3;
  v8[1] = sub_1000B9BC8;

  return MACloudSyncManager.queryCloudKVData(withRecordName:)((v3 + 2), v5, v7);
}

uint64_t sub_1000B9BC8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 88);
  v7 = *v1;
  v8 = *(*v1 + 16);
  v9 = *(*v1 + 24);
  v22 = *(*v1 + 32);
  v10 = *(*v1 + 40);
  v11 = *(*v1 + 48);
  v20 = *(*v1 + 56);
  v24 = *(*v1 + 64);
  v21 = *(*v1 + 72);
  v23 = *(*v1 + 80);

  v12 = *(v3 + 96);
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, 0, 0, 0, 0, 0, v13);

    _Block_release(v12);
  }

  else
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (v12)[2](v12, v14, v22, v15, v16, v21, isa, 0);

    _Block_release(v12);
  }

  v18 = *(v7 + 8);

  return v18();
}

uint64_t sub_1000B9F30()
{
  v1 = *(**(*(v0 + 48) + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 208);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1000BA050;

  return v5();
}

uint64_t sub_1000BA050(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[7];
  v9 = *v3;
  v5[8] = a2;
  v5[9] = v2;

  if (v2)
  {
    v7 = sub_1000BA27C;
  }

  else
  {
    v7 = sub_1000BA16C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000BA16C()
{
  if (v0[8])
  {
    v1 = v0[3];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    sub_100092A98();
    swift_allocError();
    *v4 = 25;
    *(v4 + 8) = 0xD000000000000011;
    *(v4 + 16) = 0x80000001000F1920;
    swift_willThrow();
    sub_1000BFD3C();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000BA27C()
{
  v1 = *(v0 + 72);
  sub_1000BFD3C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BA474(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000BA51C;

  return MACloudSyncManager.fetchSigninUser()();
}

uint64_t sub_1000BA51C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

Swift::Bool __swiftcall MACloudSyncManager.cloudSyncEnabled(for:)(__C::MASDAssetType a1)
{
  sub_1000C5D18(a1.rawValue);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t MACloudSyncManager.saveAsset(toCloud:options:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for MACloudMAAsset();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000BA81C, 0, 0);
}

uint64_t sub_1000BA81C()
{
  v111 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012AE78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v6;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "Going to save asset %@ options: %lu to cloud if applicable", v8, 0x16u);
    sub_100066C80(v9, &qword_1001287F0, &qword_1000E6C40);
  }

  v11 = *(v0 + 48);

  v12 = [v11 assetMetadata];
  v13 = [v12 type];

  sub_1000C5D18(v13);
  v14 = *(v0 + 48);
  if (!v15)
  {
    v44 = v14;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 48);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v109 = v49;
      *v48 = 136315138;
      v50 = [v47 assetMetadata];
      v51 = [v50 type];

      *(v0 + 32) = v51;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = sub_100065658(v52, v53, &v109);

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "Uploading asset %s is not supported on this platform", v48, 0xCu);
      sub_10005D588(v49);
    }

    goto LABEL_18;
  }

  v16 = [v14 assetOwner];
  v17 = [v16 profileType];

  sub_1000BFF08(v17, &off_100117C90, 0xD00000000000001BLL, 0x80000001000F1940);
  v18 = *(v0 + 48);
  v19 = [v18 assetMetadata];
  v20 = [v19 type];

  v21 = [v18 assetMetadata];
  v22 = [v21 label];

  if (v22)
  {
    v23 = *(v0 + 64);
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *(v23 + OBJC_IVAR____TtC6server18MACloudSyncManager_assetsNotToBeSynced);
    if (*(v26 + 16))
    {
      v27 = sub_1000BF480(v20);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *v32 = 136315650;
          *(v32 + 4) = sub_100065658(v107, v25, &v109);
          *(v32 + 12) = 2080;
          *(v0 + 40) = v20;
          type metadata accessor for MASDAssetType(0);
          sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = sub_100065658(v33, v34, &v109);

          *(v32 + 14) = v35;
          *(v32 + 22) = 2080;
          sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
          v36 = Dictionary.description.getter();
          v38 = sub_100065658(v36, v37, &v109);

          *(v32 + 24) = v38;
          _os_log_impl(&_mh_execute_header, v30, v31, "asset label %s with type %s with excludedLabels %s", v32, 0x20u);
          swift_arrayDestroy();
        }

        if (*(v29 + 16))
        {
          v39 = sub_100065A98(0x7463617865, 0xE500000000000000);
          if (v40)
          {
            v41 = *(*(v29 + 56) + 8 * v39);
            *(v0 + 16) = v107;
            *(v0 + 24) = v25;
            v42 = swift_task_alloc();
            *(v42 + 16) = v0 + 16;

            v43 = sub_1000BF628(sub_1000C0038, v42, v41);

            if (v43)
            {
LABEL_25:

              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                v109 = v72;
                *v71 = 136315138;
                v73 = sub_100065658(v107, v25, &v109);

                *(v71 + 4) = v73;
                _os_log_impl(&_mh_execute_header, v69, v70, "Uploading asset %s is not supported", v71, 0xCu);
                sub_10005D588(v72);
              }

              else
              {
              }

LABEL_18:
              v55 = *(v0 + 96);
              v56 = *(v0 + 72);

              v57 = *(v0 + 8);
LABEL_35:

              return v57();
            }
          }

          if (*(v29 + 16))
          {
            v58 = sub_100065A98(0x786966657270, 0xE600000000000000);
            if (v59)
            {
              v60 = *(*(v29 + 56) + 8 * v58);

              v62 = (v60 + 40);
              v63 = -*(v60 + 16);
              v64 = -1;
              while (v63 + v64 != -1)
              {
                if (++v64 >= *(v60 + 16))
                {
                  __break(1u);
                  return result;
                }

                v65 = v62 + 2;
                v67 = *(v62 - 1);
                v66 = *v62;

                v68._countAndFlagsBits = v67;
                v68._object = v66;
                LOBYTE(v67) = String.hasPrefix(_:)(v68);

                v62 = v65;
                if (v67)
                {
                  goto LABEL_25;
                }
              }
            }
          }
        }
      }
    }
  }

  v74 = *(v0 + 80);
  v75 = *(v0 + 88);
  v76 = *(v0 + 72);
  sub_100096120(*(v0 + 48), *(*(v0 + 64) + OBJC_IVAR____TtC6server18MACloudSyncManager_storage), v76);
  if ((*(v75 + 48))(v76, 1, v74) == 1)
  {
    v77 = *(v0 + 48);
    sub_100066C80(*(v0 + 72), &qword_100128808, &unk_1000E6C50);
    v78 = v77;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = *(v0 + 48);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v109 = v83;
      *v82 = 136315138;
      v84 = [v81 assetHandle];
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      v88 = sub_100065658(v85, v87, &v109);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v79, v80, "Failed to convert asset %s", v82, 0xCu);
      sub_10005D588(v83);
    }

    v89 = *(v0 + 48);
    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v109 = 0xD000000000000018;
    v110 = 0x80000001000F1960;
    v90 = [v89 assetHandle];
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    v94._countAndFlagsBits = v91;
    v94._object = v93;
    String.append(_:)(v94);

    v95._object = 0x80000001000F1980;
    v95._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v95);
    v96 = v109;
    v97 = v110;
    sub_100092A98();
    swift_allocError();
    *v98 = 17;
    *(v98 + 8) = v96;
    *(v98 + 16) = v97;
    swift_willThrow();
    v99 = *(v0 + 96);
    v100 = *(v0 + 72);
    sub_1000BFD3C();
    swift_willThrow();

    v57 = *(v0 + 8);
    goto LABEL_35;
  }

  v101 = *(v0 + 64);
  sub_1000AFAB8(*(v0 + 72), *(v0 + 96));
  v106 = (**(v101 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore) + 304);
  v108 = (*v106 + **v106);
  v102 = (*v106)[1];
  v103 = swift_task_alloc();
  *(v0 + 104) = v103;
  *v103 = v0;
  v103[1] = sub_1000BB428;
  v104 = *(v0 + 96);
  v105 = *(v0 + 56);

  return v108(v104, v105);
}

uint64_t sub_1000BB428()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1000BB5C8;
  }

  else
  {
    v3 = sub_1000BB53C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000BB53C()
{
  sub_1000BFE60(v0[12], type metadata accessor for MACloudMAAsset);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000BB5C8()
{
  sub_1000BFE60(v0[12], type metadata accessor for MACloudMAAsset);
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  sub_1000BFD3C();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000BB814(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1000BB8E0;

  return MACloudSyncManager.saveAsset(toCloud:options:)(v8, a2);
}

uint64_t sub_1000BB8E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t MACloudSyncManager.localAssetCleanup(withRecordName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BBAA0, 0, 0);
}

uint64_t sub_1000BBAA0()
{
  v13 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012AE78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100065658(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting asset locally recordName %s", v7, 0xCu);
    sub_10005D588(v8);
  }

  v9 = *(v0[4] + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v0[5] = v9;
  v10 = *v9 + 320;
  v0[6] = *v10;
  v0[7] = v10 & 0xFFFFFFFFFFFFLL | 0x6DB2000000000000;

  return _swift_task_switch(sub_1000BBC60, v9, 0);
}

uint64_t sub_1000BBC60()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  *(v0 + 64) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BBEA4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000C13CC;

  return MACloudSyncManager.localAssetCleanup(withRecordName:)(v5, v7);
}

uint64_t MACloudSyncManager.localKVSCleanup(withRecordName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BBF9C, 0, 0);
}

uint64_t sub_1000BBF9C()
{
  v13 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012AE78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100065658(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting KVSData locally recordName%s", v7, 0xCu);
    sub_10005D588(v8);
  }

  v9 = *(v0[4] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore);
  v0[5] = v9;
  v10 = *v9 + 296;
  v0[6] = *v10;
  v0[7] = v10 & 0xFFFFFFFFFFFFLL | 0x22F3000000000000;

  return _swift_task_switch(sub_1000BC15C, v9, 0);
}

uint64_t sub_1000BC15C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  *(v0 + 64) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BC218()
{
  v1 = *(v0 + 64);
  sub_1000BFD3C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BC424(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000BC4F8;

  return MACloudSyncManager.localKVSCleanup(withRecordName:)(v5, v7);
}

uint64_t sub_1000BC4F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t MACloudSyncManager.deleteAssetInCloud(withRecordName:assetType:profileType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1000BC6C0, 0, 0);
}

uint64_t sub_1000BC6C0()
{
  v32 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012AE78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100065658(v7, v5, v31);
    *(v8 + 12) = 2080;
    v0[3] = v6;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100065658(v9, v10, v31);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting asset recordName %s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000BFF08(v0[7], &off_100117CB8, 0xD000000000000039, 0x80000001000F19A0);
  sub_1000C5D18(v0[6]);
  if (v13)
  {
    v14 = v0[8];

    v29 = (**(v14 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore) + 312);
    v30 = (*v29 + **v29);
    v15 = (*v29)[1];
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_1000BCB94;
    v17 = v0[5];
    v18 = v0[6];
    v19 = v0[4];

    return v30(v19, v17, v18);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[6];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31[0] = v24;
      *v23 = 136315138;
      v0[2] = v22;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = sub_100065658(v25, v26, v31);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Deleting asset %s is not supported on this platform", v23, 0xCu);
      sub_10005D588(v24);
    }

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_1000BCB94()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000BCCC8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000BCCC8()
{
  v1 = *(v0 + 80);
  sub_1000BFD3C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BCEE8(int a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  a5;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_1000C13CC;

  return MACloudSyncManager.deleteAssetInCloud(withRecordName:assetType:profileType:)(v9, v11, a2, a3);
}

uint64_t MACloudSyncManager.saveKVSDataToCloud(withRecordHandle:assetType:storeName:storeGroup:profileType:data:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v14;
  v9[15] = v8;
  v9[12] = a8;
  v9[13] = v13;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  v10 = *(*(type metadata accessor for MACloudKVSRecord() - 8) + 64) + 15;
  v9[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD080, 0, 0);
}

uint64_t sub_1000BD080()
{
  v70 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_10012AE78);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v61 = v0[13];
    v64 = v0[12];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v10 = 134219010;
    *(v10 + 4) = v6;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100065658(v9, v7, &v68);
    *(v10 + 22) = 2080;
    v0[4] = v8;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_100065658(v11, v12, &v68);

    *(v10 + 24) = v13;
    *(v10 + 32) = 2080;
    v14 = Dictionary.Keys.description.getter();
    v16 = sub_100065658(v14, v15, &v68);

    *(v10 + 34) = v16;
    *(v10 + 42) = 2048;
    *(v10 + 44) = v64;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saving KVSData (options: %lu) %s %s %s %lu", v10, 0x34u);
    swift_arrayDestroy();
  }

  sub_1000C5D18(v0[7]);
  if (v17)
  {
    v18 = v0[12];

    sub_1000BFF08(v18, &off_100117CE0, 0xD00000000000005DLL, 0x80000001000F1A00);
    v19 = v0[16];
    v20 = v0[13];
    v21 = v0[11];
    v62 = v0[10];
    v65 = v0[12];
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[6];
    v25 = v0[7];
    v26 = v0[5];

    sub_1000C98D4(v26, v24, v25, v23, v22, v62, v21, v65, v19, v20);
    v54 = *(**(v0[15] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore) + 272);
    v67 = (v54 + *v54);
    v55 = v54[1];
    v56 = swift_task_alloc();
    v0[17] = v56;
    *v56 = v0;
    v56[1] = sub_1000BD834;
    v57 = v0[16];
    v58 = v0[14];

    return v67(v57, v58);
  }

  else
  {
    v27 = v0[13];
    v28 = v0[11];
    v29 = v0[9];
    v30 = v0[6];

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v63 = v0[11];
      v66 = v0[13];
      v33 = v0[8];
      v59 = v0[9];
      v60 = v0[10];
      v34 = v0[6];
      v35 = v0[7];
      v36 = v0[5];
      v37 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v37 = 136316162;
      *(v37 + 4) = sub_100065658(v36, v34, &v68);
      *(v37 + 12) = 2080;
      v0[3] = v35;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = sub_100065658(v38, v39, &v68);

      *(v37 + 14) = v40;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_100065658(v33, v59, &v68);
      *(v37 + 32) = 2080;
      *(v37 + 34) = sub_100065658(v60, v63, &v68);
      *(v37 + 42) = 2080;
      v41 = Dictionary.description.getter();
      v43 = sub_100065658(v41, v42, &v68);

      *(v37 + 44) = v43;
      _os_log_impl(&_mh_execute_header, v31, v32, "Uploading KVSData %s %s %s %s %s is not supported on this platform", v37, 0x34u);
      swift_arrayDestroy();
    }

    v44 = v0[7];
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v45._object = 0x80000001000F19E0;
    v45._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v45);
    v0[2] = v44;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 0xD000000000000022;
    v47._object = 0x80000001000F0E80;
    String.append(_:)(v47);
    v48 = v68;
    v49 = v69;
    sub_100092A98();
    swift_allocError();
    *v50 = 15;
    *(v50 + 8) = v48;
    *(v50 + 16) = v49;
    swift_willThrow();
    v51 = v0[16];
    sub_1000BFD3C();
    swift_willThrow();

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_1000BD834()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1000BD9CC;
  }

  else
  {
    v3 = sub_1000BD948;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000BD948()
{
  sub_1000BFE60(*(v0 + 128), type metadata accessor for MACloudKVSRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BD9CC()
{
  sub_1000BFE60(v0[16], type metadata accessor for MACloudKVSRecord);
  v1 = v0[18];
  v2 = v0[16];
  sub_1000BFD3C();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000BDC50(int a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, void *aBlock, void *a9)
{
  v9[2] = a9;
  v9[3] = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v9[4] = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v9[5] = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v9[6] = v17;
  v9[7] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  a9;
  v19 = swift_task_alloc();
  v9[8] = v19;
  *v19 = v9;
  v19[1] = sub_1000BDDC4;

  return MACloudSyncManager.saveKVSDataToCloud(withRecordHandle:assetType:storeName:storeGroup:profileType:data:options:)(v10, v12, a2, v13, v15, v16, v18, a5);
}

uint64_t sub_1000BDDC4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 16);
  v11 = *v1;

  v12 = *(v3 + 24);
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t MACloudSyncManager.deleteKVSDataInCloud(withRecordHandles:assetType:storeName:storeGroup:profileType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return _swift_task_switch(sub_1000BDFF4, 0, 0);
}

uint64_t sub_1000BDFF4()
{
  v56 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012AE78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = Array.description.getter();
    v10 = sub_100065658(v8, v9, &v54);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v0[4] = v6;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_100065658(v11, v12, &v54);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting KVSData %s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000C5D18(v0[6]);
  if (v14)
  {
    v15 = v0[11];

    sub_1000BFF08(v15, &off_100117D10, 0xD000000000000053, 0x80000001000F1A80);
    v16 = *(**(v0[12] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore) + 288);
    v52 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_1000BE690;
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[6];
    v24 = v0[7];
    v25 = v0[5];

    return v52(v25, v23, v24, v21, v22, v19, v20);
  }

  else
  {
    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[5];

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v51 = v0[9];
      v53 = v0[10];
      v32 = v0[7];
      v50 = v0[8];
      v33 = v0[5];
      v34 = v0[6];
      v35 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v35 = 136315906;
      v36 = Array.description.getter();
      v38 = sub_100065658(v36, v37, &v54);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v0[3] = v34;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = sub_100065658(v39, v40, &v54);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_100065658(v32, v50, &v54);
      *(v35 + 32) = 2080;
      *(v35 + 34) = sub_100065658(v51, v53, &v54);
      _os_log_impl(&_mh_execute_header, v30, v31, "Deleting KVSData %s %s %s %s is not supported on this platform", v35, 0x2Au);
      swift_arrayDestroy();
    }

    v42 = v0[6];
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v43._object = 0x80000001000F1A60;
    v43._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v43);
    v0[2] = v42;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType);
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0xD000000000000022;
    v45._object = 0x80000001000F0E80;
    String.append(_:)(v45);
    v46 = v54;
    v47 = v55;
    sub_100092A98();
    swift_allocError();
    *v48 = 15;
    *(v48 + 8) = v46;
    *(v48 + 16) = v47;
    swift_willThrow();
    sub_1000BFD3C();
    swift_willThrow();

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_1000BE690()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000BE7C4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000BE7C4()
{
  v1 = *(v0 + 112);
  sub_1000BFD3C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BEA00(int a1, uint64_t a2, int a3, int a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7[4] = v11;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v7[5] = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v7[6] = v16;
  a7;
  v18 = swift_task_alloc();
  v7[7] = v18;
  *v18 = v7;
  v18[1] = sub_1000BEB40;

  return MACloudSyncManager.deleteKVSDataInCloud(withRecordHandles:assetType:storeName:storeGroup:profileType:)(v11, a2, v12, v14, v15, v17, a5);
}

uint64_t sub_1000BEB40()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 24);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1000BED40()
{
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all data in the cloud", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1000BEE9C;

  return sub_10007E564();
}

uint64_t sub_1000BEE9C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000C13E0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000BF144(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000C1490;

  return MACloudSyncManager.deleteAllInCloud()();
}

Swift::Int sub_1000BF1FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 22000);
  return Hasher._finalize()();
}

Swift::Int sub_1000BF27C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 22000);
  return Hasher._finalize()();
}

uint64_t sub_1000BF2C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C0090(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BF304(uint64_t a1)
{
  v1 = -2;
  if (a1 != 999)
  {
    v1 = a1;
  }

  if (a1 == 100)
  {
    return -1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000BF320(uint64_t a1)
{
  v1 = 999;
  if (a1 != -2)
  {
    v1 = a1;
  }

  if (a1 == -1)
  {
    return 100;
  }

  else
  {
    return v1;
  }
}

void *sub_1000BF34C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005F5CC(&qword_100128E60, &unk_1000E7890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000BF480(uint64_t a1)
{
  v3 = *(v1 + 40);
  type metadata accessor for MASDAssetType(0);
  sub_1000BFEC0(&qword_100128E50, type metadata accessor for MASDAssetType);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000BF52C(a1, v4);
}

unint64_t sub_1000BF52C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_100128E58, type metadata accessor for MASDAssetType);
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000BF628(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_1000BF6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128E78, &qword_1000E78B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100065A98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000BF7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128E70, &qword_1000E78B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1000BF480(v6);
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

unint64_t sub_1000BF8C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128EA0, &unk_1000E78D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_100065A98(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

id sub_1000BF9E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC6server18MACloudSyncManager_assetsNotToBeSynced;
  sub_10005F5CC(&qword_100128DD0, &qword_1000E7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E6C00;
  *(inited + 32) = 100;
  v8 = sub_1000BF6D4(&off_100117A98);
  sub_10005F5CC(&qword_100128DD8, &qword_1000E7408);
  swift_arrayDestroy();
  *(inited + 40) = v8;
  *(inited + 48) = 125;
  v9 = sub_1000BF6D4(&off_100117AE8);
  sub_100066C80(&unk_100117B08, &qword_100128DD8, &qword_1000E7408);
  *(inited + 56) = v9;
  v10 = sub_1000BF7D8(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100128DE0, &qword_1000E7410);
  swift_arrayDestroy();
  *&v3[v6] = v10;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_storage] = a1;
  type metadata accessor for MASysStateStore();
  v11 = a1;
  swift_unknownObjectRetain_n();
  v12 = v11;
  v13 = sub_1000B0E10(v12);
  v14 = OBJC_IVAR____TtC6server18MACloudSyncManager_sysStore;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_sysStore] = v13;
  type metadata accessor for MACloudAssetLocalStore();
  swift_unknownObjectRetain();
  v15 = v12;
  v16 = sub_10009BF48(v15, a2);
  v17 = OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore] = v16;
  type metadata accessor for MACloudKVSRecordLocalStore();
  swift_unknownObjectRetain();
  v18 = sub_1000CA60C(v15, a2);
  v19 = OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore] = v18;
  sub_10005F5CC(&qword_100128E80, &qword_1000E78C0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1000E6C00;
  v21 = sub_1000C549C();
  v22 = *(v21 + 1);
  *(v20 + 32) = *v21;
  *(v20 + 40) = v22;
  v23 = *&v3[v17];
  v24 = sub_1000BFEC0(&qword_100128E88, type metadata accessor for MACloudAssetLocalStore);
  *(v20 + 48) = v23;
  *(v20 + 56) = v24;

  v25 = sub_1000C54A8();
  v26 = *(v25 + 1);
  *(v20 + 64) = *v25;
  *(v20 + 72) = v26;
  v27 = *&v3[v19];
  v28 = sub_1000BFEC0(&qword_100128E90, type metadata accessor for MACloudKVSRecordLocalStore);
  *(v20 + 80) = v27;
  *(v20 + 88) = v28;

  v29 = sub_1000BF8C8(v20);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100128E98, &qword_1000E78C8);
  swift_arrayDestroy();
  type metadata accessor for MACloudSyncedDatabase();
  v30 = *&v3[v14];

  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase] = sub_100067524(v31, v29);
  v34.receiver = v3;
  v34.super_class = type metadata accessor for MACloudSyncManager();
  v32 = objc_msgSendSuper2(&v34, "init");
  swift_unknownObjectRelease_n();
  return v32;
}

id sub_1000BFD3C()
{
  swift_errorRetain();
  sub_10005F5CC(&qword_100128460, &qword_1000E78A0);
  if (swift_dynamicCast())
  {
    v0 = sub_1000B6504(v6, v7, v8);
  }

  else
  {
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v1 = v7;
      v2 = v6;
      v3 = v8;
    }

    else
    {
      swift_getErrorValue();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v2 = nullsub_1(1, 0, 0xE000000000000000);
    }

    v0 = sub_1000B6674(v2, v1, v3);
  }

  v4 = v0;

  return v4;
}

uint64_t sub_1000BFE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BFEC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BFF08(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = (a2 + 32);
  while (v6)
  {
    v8 = *v7++;
    --v6;
    if (v8 == result)
    {
      return result;
    }
  }

  _StringGuts.grow(_:)(51);
  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x80000001000F1E50;
  String.append(_:)(v10);
  type metadata accessor for MASDProfileType(0);
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000F1E70;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  sub_100092A98();
  swift_allocError();
  *v12 = 16;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000C0038(void *a1)
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

uint64_t sub_1000C0090(uint64_t a1)
{
  if ((a1 + 22000) >= 0x20)
  {
    return 32;
  }

  else
  {
    return a1 + 22000;
  }
}

unint64_t sub_1000C00AC()
{
  result = qword_100128E20;
  if (!qword_100128E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128E20);
  }

  return result;
}

uint64_t sub_1000C0100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C0148(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MACloudSyncError.ErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MACloudSyncError.ErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000C02EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000BF144(v2, v3);
}

uint64_t sub_1000C0398()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C03D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000625FC;

  return sub_100065264(a1, v5);
}

uint64_t sub_1000C0488()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000C04E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100067294;

  return sub_1000BEA00(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000C05BC()
{
  _Block_release(*(v0 + 72));

  return _swift_deallocObject(v0, 88, 7);
}

void sub_1000C061C()
{
  v2 = v0[3];
  v12 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100067294;

  JUMPOUT(0x1000BDC50);
}

uint64_t sub_1000C0718()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C0760()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100067294;

  return sub_1000BCEE8(v2, v3, v4, v5, v6);
}

uint64_t sub_1000C082C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000BC424(v2, v3, v4);
}

uint64_t sub_1000C08E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000BBEA4(v2, v3, v4);
}

uint64_t sub_1000C0994()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C09DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100067294;

  return sub_1000BB814(v2, v3, v5, v4);
}

uint64_t sub_1000C0A9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000BA474(v2, v3);
}

uint64_t sub_1000C0B48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000B9AEC(v2, v3, v4);
}

uint64_t sub_1000C0BFC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C0C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000B8A00(v2, v3, v4);
}

uint64_t sub_1000C0CF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B8454(v2, v3);
}

uint64_t sub_1000C0DA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B7988(v2, v3);
}

uint64_t sub_1000C0E50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000625FC;

  return sub_1000B6EC0(v2, v3);
}

uint64_t sub_1000C0EFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B5434(v2, v3);
}

uint64_t sub_1000C0FA8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C0FE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000B4E24(v2, v3, v4);
}

uint64_t sub_1000C109C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B46FC(v2, v3);
}

uint64_t sub_1000C1148()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C1188()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B3A60(v2, v3);
}

uint64_t sub_1000C1234()
{
  v1 = sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C12C8(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_10005F5CC(&qword_100128E68, &qword_1000E78A8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  if (a2)
  {
    swift_errorRetain();
    sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000C1498()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012B198);
  sub_100066000(v0, qword_10012B198);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000011, 0x80000001000E7A70);
}

uint64_t sub_1000C150C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v11 = 0xEA00000000006465;
    v12 = 0x7472617453746F6ELL;
    v13 = 0xE800000000000000;
    v14 = 0x646564616F6C7075;
    v15 = 0xE900000000000064;
    v16 = 0x756F6C436D6F7266;
    if (a1 != 3)
    {
      v16 = 0x6B63416C61636F6CLL;
      v15 = 0xEA00000000006465;
    }

    if (a1 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (a1)
    {
      v12 = 0x635364616F6C7075;
      v11 = 0xEF64656C75646568;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (a1 <= 1u)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v1 = 0xEE0064616F6C7055;
    v2 = 0x6F5464656C696166;
    v3 = 0xED00006465646565;
    v4 = 0x63784561746F7571;
    if (a1 != 9)
    {
      v4 = 0x5474736575716572;
      v3 = 0xEF6574656C65446FLL;
    }

    if (a1 != 8)
    {
      v2 = v4;
      v1 = v3;
    }

    v5 = 0xEC00000064657465;
    v6 = 0x6C65446C61636F6CLL;
    v7 = 0x80000001000F1E90;
    v8 = 0xD000000000000010;
    if (a1 != 6)
    {
      v8 = 0x656C6544656E6F7ALL;
      v7 = 0xEB00000000646574;
    }

    if (a1 != 5)
    {
      v6 = v8;
      v5 = v7;
    }

    if (a1 <= 7u)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }

    if (a1 <= 7u)
    {
      v10 = v5;
    }

    else
    {
      v10 = v1;
    }
  }

  _StringGuts.grow(_:)(16);

  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v9;
  v19._object = v10;
  String.append(_:)(v19);

  return 0x74617453636E7973;
}

unint64_t sub_1000C1784@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4FD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C182C(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFF00 | a1 | v3;
}

uint64_t sub_1000C1850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v88 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v88 - v17;
  sub_1000939A8(a1, &v99, &unk_100129080, &qword_1000E7D60);
  if (v100)
  {
    v91 = a2;
    v92 = v3;
    v93 = a3;
    v94 = v18;
    v90 = v16;
    sub_10005F6B0(&v99, v102);
    v19 = v103;
    v20 = v104;
    sub_10005E340(v102, v103);
    v21 = (*(v20 + 16))(v19, v20);
    v97 = v22;
    v23 = v103;
    v24 = v104;
    sub_10005E340(v102, v103);
    v95 = (*(v24 + 24))(v23, v24);
    v26 = v25;
    if (qword_10012B190 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_100066000(v27, qword_10012B198);
    sub_1000C4FE0(v102, &v99);
    v96 = v28;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v89 = v21;
      v32 = v12;
      v33 = v11;
      v34 = v26;
      v35 = v31;
      v36 = swift_slowAlloc();
      v98 = v36;
      *v35 = 136315138;
      v37 = v101;
      sub_10005E340(&v99, v100);
      v38 = *(v37 + 8);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_10005D588(&v99);
      v42 = sub_100065658(v39, v41, &v98);

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "existing localRecord: %s", v35, 0xCu);
      sub_10005D588(v36);

      v26 = v34;
      v11 = v33;
      v12 = v32;
      v21 = v89;
    }

    else
    {

      sub_10005D588(&v99);
    }

    v43 = v103;
    v44 = v104;
    sub_10005E340(v102, v103);
    if ((*(v44 + 32))(v43, v44) == 10)
    {
      v45 = v103;
      v46 = v104;
      sub_10005E340(v102, v103);
      v47 = (*(v46 + 56))(v45, v46);
      if (v48)
      {
        v49 = v47;
        v50 = v48;
        v51 = (*(v93 + 56))(v91);
        if (v52)
        {
          if (v49 == v51 && v50 == v52)
          {

LABEL_18:
            v61 = v97;

            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *&v99 = swift_slowAlloc();
              *v64 = 136315394;
              v65 = sub_100065658(v21, v61, &v99);

              *(v64 + 4) = v65;
              *(v64 + 12) = 2080;
              v66 = sub_100065658(v95, v26, &v99);

              *(v64 + 14) = v66;
              _os_log_impl(&_mh_execute_header, v62, v63, "Skip cloud record sync down with same ETag as cloud delete is pending. recordName: %s handle: %s", v64, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

LABEL_34:
            sub_10005D588(v102);
            return 0;
          }

          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v60)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v67 = v103;
      v68 = v104;
      sub_10005E340(v102, v103);
      (*(v68 + 80))(v67, v68);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        v72 = v21;
        (*(v12 + 32))(v94, v10, v11);
        v73 = v90;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v75 = v74;
        v76 = *(v12 + 8);
        v93 = v11;
        v76(v73, v11);
        v77 = v97;

        v78 = Logger.logObject.getter();
        if (v75 < 3600.0)
        {
          v79 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *&v99 = swift_slowAlloc();
            *v80 = 136315394;
            v81 = sub_100065658(v72, v77, &v99);

            *(v80 + 4) = v81;
            *(v80 + 12) = 2080;
            v82 = sub_100065658(v95, v26, &v99);

            *(v80 + 14) = v82;
            _os_log_impl(&_mh_execute_header, v78, v79, "Skip cloud record sync down as cloud delete request is pending. recordName: %s handle: %s", v80, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v76(v94, v93);
          goto LABEL_34;
        }

        v83 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v78, v83))
        {
          v84 = swift_slowAlloc();
          *&v99 = swift_slowAlloc();
          *v84 = 134218498;
          *(v84 + 4) = v75;
          *(v84 + 12) = 2080;
          v85 = sub_100065658(v72, v77, &v99);

          *(v84 + 14) = v85;
          *(v84 + 22) = 2080;
          v86 = sub_100065658(v95, v26, &v99);

          *(v84 + 24) = v86;
          _os_log_impl(&_mh_execute_header, v78, v83, "Ignored delete request issued %f seconds ago, continue propagating sync down. recordName: %s handle: %s", v84, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v76(v94, v93);
        goto LABEL_37;
      }

      sub_100066C80(v10, &qword_1001287D0, &qword_1000E6C30);
      v69 = v97;

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *&v99 = swift_slowAlloc();
        *v56 = 136315394;
        v70 = sub_100065658(v21, v69, &v99);

        *(v56 + 4) = v70;
        *(v56 + 12) = 2080;
        v71 = sub_100065658(v95, v26, &v99);

        *(v56 + 14) = v71;
        v59 = "No ckSyncDate for local record delete request, continue propagating sync down. recordName: %s handle: %s";
        goto LABEL_23;
      }
    }

    else
    {
      v53 = v97;

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *&v99 = swift_slowAlloc();
        *v56 = 136315394;
        v57 = sub_100065658(v21, v53, &v99);

        *(v56 + 4) = v57;
        *(v56 + 12) = 2080;
        v58 = sub_100065658(v95, v26, &v99);

        *(v56 + 14) = v58;
        v59 = "Continue propagating cloud record sync down to replace current record. recordName: %s handle: %s";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v54, v55, v59, v56, 0x16u);
        swift_arrayDestroy();

LABEL_37:
        sub_10005D588(v102);
        return 1;
      }
    }

    goto LABEL_37;
  }

  sub_100066C80(&v99, &unk_100129080, &qword_1000E7D60);
  return 1;
}

uint64_t sub_1000C2394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[44] = a3;
  v6 = *(a4 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C243C, v8, v7);
}

uint64_t sub_1000C243C()
{
  v71 = v0;
  v1 = v0[45];
  v2 = v0[44];
  v68 = v1[5](v2, v1);
  v69 = v3;
  v4 = v1[6](v2, v1);
  v6 = v5;
  v67 = v1[7](v2, v1);
  v8 = v7;
  v9 = v1[4](v2, v1);
  v11 = v10;
  v12 = v2;
  v13 = v1[2];
  v14 = v13(v12, v1);
  v64 = v13;
  v63 = v9;
  v66 = v11;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = v4;
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v6;
  *(inited + 48) = 0;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1000E61E0;
  *(v17 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v17 + 40) = v18;
  sub_10005F5CC(&unk_100129340, &unk_1000E8020);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = v68;
  *(v19 + 40) = v69;
  *(v19 + 48) = v67;
  *(v19 + 56) = v8;
  v65 = v4;
  *(v19 + 64) = v4;
  *(v19 + 72) = v6;
  v20 = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v17 + 72) = v20;
  *(v17 + 48) = v19;

  sub_1000AF988(v17);
  swift_setDeallocating();
  sub_100066C80(v17 + 32, &qword_100129070, &qword_1000E7440);
  v21 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[42] = 0;
  v22 = [v14 queryRowDictionariesFor:isa attributes:v21 error:v0 + 42];

  v23 = v0[42];
  v24 = v0;
  if (v22)
  {
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v23;

    if (qword_10012B190 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100066000(v27, qword_10012B198);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    v62 = v25;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v30 = 136315394;
      v31 = Array.description.getter();
      v33 = v24;
      v34 = sub_100065658(v31, v32, v70);

      *(v30 + 4) = v34;
      v24 = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_100065658(v63, v66, v70);
      _os_log_impl(&_mh_execute_header, v28, v29, "Pending uploads: %s store: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    v35 = v24[46];
    v39 = v64(v24[44], v24[45]);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1000E61E0;
    *(v40 + 32) = v65;
    *(v40 + 72) = &type metadata for Int;
    *(v40 + 40) = v6;
    *(v40 + 48) = 10;

    sub_1000AF988(v40);
    swift_setDeallocating();
    sub_100066C80(v40 + 32, &qword_100129070, &qword_1000E7440);
    v41 = Dictionary._bridgeToObjectiveC()().super.isa;

    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_1000E61E0;
    *(v42 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v42 + 40) = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000E6BE0;
    *(v44 + 32) = v68;
    *(v44 + 40) = v69;
    *(v44 + 48) = v67;
    *(v44 + 56) = v8;
    *(v44 + 64) = v65;
    *(v44 + 72) = v6;
    *(v42 + 72) = v20;
    *(v42 + 48) = v44;
    sub_1000AF988(v42);
    swift_setDeallocating();
    sub_100066C80(v42 + 32, &qword_100129070, &qword_1000E7440);
    v45 = Dictionary._bridgeToObjectiveC()().super.isa;

    v24[43] = 0;
    v46 = [v39 queryRowDictionariesFor:v41 attributes:v45 error:v24 + 43];

    v47 = v24[43];
    if (v46)
    {
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v47;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v52 = 136315394;
        v53 = Array.description.getter();
        v55 = sub_100065658(v53, v54, v70);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        v56 = v63;
        *(v52 + 14) = sub_100065658(v63, v66, v70);
        _os_log_impl(&_mh_execute_header, v50, v51, "Pending deletes: %s store: %s", v52, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v56 = v63;
      }

      v57 = v24[45];
      v58 = v24[44];
      v59 = sub_1000C2E08(v62, v56, v66, v58, v57);

      v60 = sub_1000C387C(v48, v56, v66, v58, v57);

      v61 = v24[1];

      return v61(v59, v60);
    }

    v36 = v47;
  }

  else
  {
    v36 = v23;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v37 = v24[1];

  return v37();
}

void *sub_1000C2E08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  if (qword_10012B190 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100066000(v8, qword_10012B198);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v87 = a3;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v11 = 136315650;
    v12 = a5[5](a4, a5);
    v14 = sub_100065658(v12, v13, v92);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = a5[6](a4, a5);
    v17 = sub_100065658(v15, v16, v92);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = a5[7](a4, a5);
    v20 = sub_100065658(v18, v19, v92);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "fields: %s, %s, %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v93 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (a1 + 32);
    v88 = a5[7];
    v86 = _swiftEmptyArrayStorage;
    while (1)
    {
      v23 = *v22;

      v24 = v88(a4, a5);
      if (*(v23 + 16))
      {
        v26 = sub_100065A98(v24, v25);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_100066130(*(v23 + 56) + 32 * v26, v92);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_21;
        }

        v29 = a5[5](a4, a5);
        if (*(v23 + 16))
        {
          v31 = sub_100065A98(v29, v30);
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            goto LABEL_21;
          }

          sub_100066130(*(v23 + 56) + 32 * v31, v92);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v34 = HIBYTE(v91) & 0xF;
          if ((v91 & 0x2000000000000000) == 0)
          {
            v34 = v90 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            v35 = a5[6](a4, a5);
            if (!*(v23 + 16))
            {

              goto LABEL_21;
            }

            v37 = sub_100065A98(v35, v36);
            v39 = v38;

            if (v39)
            {
              sub_100066130(*(v23 + 56) + 32 * v37, v92);
              v40 = v91;
              if (swift_dynamicCast())
              {
                v41 = sub_1000C4FD0(v90);
                if (v41 != 11)
                {
                  v42 = v41;
                  v43.super.isa = sub_1000C60E0(v90).super.isa;
                  if (v43.super.isa)
                  {
                    v83 = v42;
                    isa = v43.super.isa;

                    v44 = Logger.logObject.getter();
                    v45 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v44, v45))
                    {
                      v80 = v45;
                      v46 = swift_slowAlloc();
                      v92[0] = swift_slowAlloc();
                      *v46 = 136315394;
                      v47 = sub_1000C150C(v83);
                      v49 = sub_100065658(v47, v48, v92);

                      *(v46 + 4) = v49;
                      *(v46 + 12) = 2080;
                      v50 = Dictionary.description.getter();
                      v52 = v51;

                      v53 = v50;
                      v40 = v91;
                      v54 = sub_100065658(v53, v52, v92);

                      *(v46 + 14) = v54;
                      _os_log_impl(&_mh_execute_header, v44, v80, "Pending upload record syncState: %s record: %s", v46, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    if (v83)
                    {

                      v61 = Logger.logObject.getter();
                      v62 = static os_log_type_t.info.getter();

                      if (os_log_type_enabled(v61, v62))
                      {
                        v81 = v62;
                        v63 = swift_slowAlloc();
                        v92[0] = swift_slowAlloc();
                        *v63 = 136315650;
                        v64 = sub_100065658(v90, v40, v92);

                        *(v63 + 4) = v64;
                        *(v63 + 12) = 2080;
                        v65 = sub_1000C150C(v83);
                        v67 = sub_100065658(v65, v66, v92);

                        *(v63 + 14) = v67;
                        *(v63 + 22) = 2080;
                        *(v63 + 24) = sub_100065658(a2, v87, v92);
                        _os_log_impl(&_mh_execute_header, v61, v81, "Skip recordName %s for upload as its syncState is %s, store: %s", v63, 0x20u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }
                    }

                    else
                    {
                      sub_1000C5044();
                      v68 = isa;
                      v69._countAndFlagsBits = v90;
                      v69._object = v40;
                      CKRecordID.init(recordName:zoneID:)(v69, v68);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v70 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v86 = v93;
                    }
                  }

                  else
                  {

                    v55 = Logger.logObject.getter();
                    v56 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v55, v56))
                    {
                      v57 = swift_slowAlloc();
                      recordName_8 = swift_slowAlloc();
                      v92[0] = recordName_8;
                      *v57 = 136315138;
                      type metadata accessor for MASDAssetType(0);
                      sub_1000C5090();
                      v58 = dispatch thunk of CustomStringConvertible.description.getter();
                      v60 = sub_100065658(v58, v59, v92);

                      *(v57 + 4) = v60;
                      _os_log_impl(&_mh_execute_header, v55, v56, "Uploading record %s is not supported on this platform", v57, 0xCu);
                      sub_10005D588(recordName_8);
                    }
                  }

                  goto LABEL_22;
                }
              }
            }
          }
        }
      }

LABEL_21:

LABEL_22:
      ++v22;
      if (!--v21)
      {
        goto LABEL_44;
      }
    }
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_44:

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v73 = 136315394;
    sub_1000C5044();
    v74 = v86;

    v75 = Array.description.getter();
    v77 = v76;

    v78 = sub_100065658(v75, v77, v92);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    *(v73 + 14) = sub_100065658(a2, v87, v92);
    _os_log_impl(&_mh_execute_header, v71, v72, "Pending upload recordIDs: %s store: %s", v73, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    return v86;
  }

  return v74;
}

void *sub_1000C387C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  if (qword_10012B190 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100066000(v8, qword_10012B198);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v87 = a3;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v11 = 136315650;
    v12 = a5[5](a4, a5);
    v14 = sub_100065658(v12, v13, v92);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = a5[6](a4, a5);
    v17 = sub_100065658(v15, v16, v92);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = a5[7](a4, a5);
    v20 = sub_100065658(v18, v19, v92);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "fields: %s, %s, %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v93 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (a1 + 32);
    v88 = a5[7];
    v86 = _swiftEmptyArrayStorage;
    while (1)
    {
      v23 = *v22;

      v24 = v88(a4, a5);
      if (*(v23 + 16))
      {
        v26 = sub_100065A98(v24, v25);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_100066130(*(v23 + 56) + 32 * v26, v92);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_21;
        }

        v29 = a5[5](a4, a5);
        if (*(v23 + 16))
        {
          v31 = sub_100065A98(v29, v30);
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            goto LABEL_21;
          }

          sub_100066130(*(v23 + 56) + 32 * v31, v92);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v34 = HIBYTE(v91) & 0xF;
          if ((v91 & 0x2000000000000000) == 0)
          {
            v34 = v90 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            v35 = a5[6](a4, a5);
            if (!*(v23 + 16))
            {

              goto LABEL_21;
            }

            v37 = sub_100065A98(v35, v36);
            v39 = v38;

            if (v39)
            {
              sub_100066130(*(v23 + 56) + 32 * v37, v92);
              v40 = v91;
              if (swift_dynamicCast())
              {
                v41 = sub_1000C4FD0(v90);
                if (v41 != 11)
                {
                  v42 = v41;
                  v43.super.isa = sub_1000C60E0(v90).super.isa;
                  if (v43.super.isa)
                  {
                    v83 = v42;
                    isa = v43.super.isa;

                    v44 = Logger.logObject.getter();
                    v45 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v44, v45))
                    {
                      v80 = v45;
                      v46 = swift_slowAlloc();
                      v92[0] = swift_slowAlloc();
                      *v46 = 136315394;
                      v47 = sub_1000C150C(v83);
                      v49 = sub_100065658(v47, v48, v92);

                      *(v46 + 4) = v49;
                      *(v46 + 12) = 2080;
                      v50 = Dictionary.description.getter();
                      v52 = v51;

                      v53 = v50;
                      v40 = v91;
                      v54 = sub_100065658(v53, v52, v92);

                      *(v46 + 14) = v54;
                      _os_log_impl(&_mh_execute_header, v44, v80, "Pending delete record syncState: %s record: %s", v46, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    if (v83 == 10)
                    {
                      sub_1000C5044();
                      v61 = isa;
                      v62._countAndFlagsBits = v90;
                      v62._object = v40;
                      CKRecordID.init(recordName:zoneID:)(v62, v61);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v70 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v86 = v93;
                    }

                    else
                    {

                      v63 = Logger.logObject.getter();
                      v64 = static os_log_type_t.info.getter();

                      if (os_log_type_enabled(v63, v64))
                      {
                        v81 = v64;
                        v65 = swift_slowAlloc();
                        v92[0] = swift_slowAlloc();
                        *v65 = 136315650;
                        v66 = sub_100065658(v90, v40, v92);

                        *(v65 + 4) = v66;
                        *(v65 + 12) = 2080;
                        v67 = sub_1000C150C(v83);
                        v69 = sub_100065658(v67, v68, v92);

                        *(v65 + 14) = v69;
                        *(v65 + 22) = 2080;
                        *(v65 + 24) = sub_100065658(a2, v87, v92);
                        _os_log_impl(&_mh_execute_header, v63, v81, "Skip recordName %s for delete as its syncState is %s, store: %s", v65, 0x20u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {

                    v55 = Logger.logObject.getter();
                    v56 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v55, v56))
                    {
                      v57 = swift_slowAlloc();
                      recordName_8 = swift_slowAlloc();
                      v92[0] = recordName_8;
                      *v57 = 136315138;
                      type metadata accessor for MASDAssetType(0);
                      sub_1000C5090();
                      v58 = dispatch thunk of CustomStringConvertible.description.getter();
                      v60 = sub_100065658(v58, v59, v92);

                      *(v57 + 4) = v60;
                      _os_log_impl(&_mh_execute_header, v55, v56, "Deleting record %s is not supported on this platform", v57, 0xCu);
                      sub_10005D588(recordName_8);
                    }
                  }

                  goto LABEL_22;
                }
              }
            }
          }
        }
      }

LABEL_21:

LABEL_22:
      ++v22;
      if (!--v21)
      {
        goto LABEL_44;
      }
    }
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_44:

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v73 = 136315394;
    sub_1000C5044();
    v74 = v86;

    v75 = Array.description.getter();
    v77 = v76;

    v78 = sub_100065658(v75, v77, v92);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    *(v73 + 14) = sub_100065658(a2, v87, v92);
    _os_log_impl(&_mh_execute_header, v71, v72, "Pending delete recordIDs: %s store: %s", v73, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    return v86;
  }

  return v74;
}

uint64_t sub_1000C4304()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1000C4334()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1000C4398(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

void *sub_1000C4430()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1000C4474(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_1000C450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v18 = swift_allocObject();
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  swift_beginAccess();
  *(v18 + 80) = a9;
  *(v18 + 81) = a10;
  return v18;
}

uint64_t sub_1000C45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  swift_beginAccess();
  *(v10 + 80) = a9;
  *(v10 + 81) = a10;
  return v10;
}

Swift::String *sub_1000C4644()
{
  v2 = v0;
  v3 = *(v0->_countAndFlagsBits + 168);
  v4 = v3();
  if (v4)
  {
  }

  else
  {
    v17 = (*(v0->_countAndFlagsBits + 208))();
    if (v1)
    {
      return v2;
    }

    (*(v0->_countAndFlagsBits + 176))(v17);
  }

  v5 = v3();
  if (v5)
  {
    v6 = v5;
    if (qword_10012B190 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100066000(v7, qword_10012B198);
    v2 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136315138;
      v12 = [(Swift::String *)v2 name];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100065658(v13, v15, v24);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Getting store %s", v10, 0xCu);
      sub_10005D588(v11);
    }
  }

  else
  {
    _StringGuts.grow(_:)(36);

    v24[0] = 0xD000000000000022;
    v24[1] = 0x80000001000F1EB0;
    String.append(_:)(v0[1]);
    v18 = nullsub_1(5, 0xD000000000000022, 0x80000001000F1EB0);
    v2 = v19;
    v21 = v20;
    sub_100092A98();
    swift_allocError();
    *v22 = v18;
    *(v22 + 8) = v2;
    *(v22 + 16) = v21;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000C4C10(uint64_t a1)
{
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000939A8(a1, v5, &qword_1001287D0, &qword_1000E6C30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100066C80(v5, &qword_1001287D0, &qword_1000E6C30);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    Date.timeIntervalSinceReferenceDate.getter();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    return v13;
  }
}

double sub_1000C4DCC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_1000C4EA0@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v3 = 0;
  }

  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1000C4F28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return v0;
}

uint64_t sub_1000C4F70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_1000C4FD0(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t sub_1000C4FE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000C5044()
{
  result = qword_100128458;
  if (!qword_100128458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100128458);
  }

  return result;
}

unint64_t sub_1000C5090()
{
  result = qword_1001284E0;
  if (!qword_1001284E0)
  {
    type metadata accessor for MASDAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001284E0);
  }

  return result;
}

unint64_t sub_1000C50EC()
{
  result = qword_100128EC0;
  if (!qword_100128EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128EC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MACloudSyncLocalState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MACloudSyncLocalState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MACloudSyncState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MACloudSyncState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MACloudSyncState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1000C53E4()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012B3B8);
  sub_100066000(v0, qword_10012B3B8);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0x5A64756F6C43414DLL, 0xEB00000000656E6FLL);
}

uint64_t MASDAssetType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 100:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2260;
      break;
    case 101:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2240;
      break;
    case 102:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2220;
      break;
    case 103:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F2200;
      break;
    case 104:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F21E0;
      break;
    case 105:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F21C0;
      break;
    case 106:
      _StringGuts.grow(_:)(23);

      v3[0] = 0xD000000000000015;
      v3[1] = 0x80000001000F21A0;
      break;
    case 107:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2180;
      break;
    case 108:
      _StringGuts.grow(_:)(20);

      v3[0] = 0xD000000000000012;
      v3[1] = 0x80000001000F2160;
      break;
    case 109:
      _StringGuts.grow(_:)(16);

      strcpy(v3, "avatarLatents ");
      HIBYTE(v3[1]) = -18;
      break;
    case 110:
      strcpy(v3, "faceLatents ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 111:
      strcpy(v3, "hairLatents ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 112:
      strcpy(v3, "eyesLatents ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 113:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F2140;
      break;
    case 114:
      strcpy(v3, "clothesData ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 115:
      strcpy(v3, "hrtfData ");
      WORD1(v3[1]) = 0;
      HIDWORD(v3[1]) = -385875968;
      break;
    case 116:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F2120;
      break;
    case 117:
      _StringGuts.grow(_:)(24);

      v3[0] = 0xD000000000000016;
      v3[1] = 0x80000001000F2100;
      break;
    case 118:
      _StringGuts.grow(_:)(18);

      v3[0] = 0xD000000000000010;
      v3[1] = 0x80000001000F20E0;
      break;
    case 119:
      strcpy(v3, "guardianData ");
      HIWORD(v3[1]) = -4864;
      break;
    case 120:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F20C0;
      break;
    case 121:
      _StringGuts.grow(_:)(23);

      v3[0] = 0xD000000000000015;
      v3[1] = 0x80000001000F20A0;
      break;
    case 122:
      _StringGuts.grow(_:)(32);

      v3[0] = 0xD00000000000001ELL;
      v3[1] = 0x80000001000F2080;
      break;
    case 123:
      _StringGuts.grow(_:)(18);

      v3[0] = 0xD000000000000010;
      v3[1] = 0x80000001000F2060;
      break;
    case 124:
      _StringGuts.grow(_:)(23);

      v3[0] = 0xD000000000000015;
      v3[1] = 0x80000001000F2040;
      break;
    case 125:
      _StringGuts.grow(_:)(30);

      v3[0] = 0xD00000000000001CLL;
      v3[1] = 0x80000001000F2020;
      break;
    case 126:
      _StringGuts.grow(_:)(24);

      v3[0] = 0xD000000000000016;
      v3[1] = 0x80000001000F2000;
      break;
    case 127:
      _StringGuts.grow(_:)(24);

      v3[0] = 0xD000000000000016;
      v3[1] = 0x80000001000F1FE0;
      break;
    case 128:
      _StringGuts.grow(_:)(28);

      v3[0] = 0xD00000000000001ALL;
      v3[1] = 0x80000001000F1FC0;
      break;
    case 129:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F1FA0;
      break;
    default:
      strcpy(v3, "UnknownType ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3[0];
}

uint64_t sub_1000C5D18(uint64_t a1)
{
  v32[3] = &type metadata for DeviceSharing;
  v32[4] = sub_1000C65A0();
  v2 = isFeatureEnabled(_:)();
  sub_10005D588(v32);
  if (v2)
  {
    if (qword_10012B3B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100066000(v3, qword_10012B3B8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "DeviceSharing/BYOE is enabled", v6, 2u);
    }

    v7 = a1 - 100;
    v8 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    v10 = 0x322E52656E6F5ALL;
    if (a1 == 121)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    if (a1 != 121)
    {
      v9 = 0;
    }

    if (((1 << (a1 - 100)) & 0x3A000005) != 0)
    {
      v12 = 0x312E52656E6F5ALL;
    }

    else
    {
      v12 = v10;
    }

    if (((1 << (a1 - 100)) & 0x3A000005) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (((1 << (a1 - 100)) & 0x3A000005) == 0)
    {
      v8 = v9;
    }

    if (v7 <= 0x1D)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v7 <= 0x1D)
    {
      v15 = v13;
    }

    else
    {
      v15 = 1;
    }

    if (v7 <= 0x1D)
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (qword_10012B3B0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100066000(v17, qword_10012B3B8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "DeviceSharing/BYOE is NOT enabled", v20, 2u);
    }

    v14 = 0;
    v16 = 0;
    v15 = 1;
  }

  if (qword_10012B3B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100066000(v21, qword_10012B3B8);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v24 = 136315394;
    v25 = MASDAssetType.description.getter(a1);
    v27 = sub_100065658(v25, v26, v32);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    if (v15)
    {
      v28 = 7104878;
    }

    else
    {
      v28 = v14;
    }

    if (v15)
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = v16;
    }

    v30 = sub_100065658(v28, v29, v32);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "AssetType=%s zoneName=%s.", v24, 0x16u);
    swift_arrayDestroy();
  }

  return v14;
}

CKRecordZoneID sub_1000C60E0(uint64_t a1)
{
  v1 = sub_1000C5D18(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  sub_1000C65F4();
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  return CKRecordZoneID.init(zoneName:ownerName:)(v7, v5);
}

uint64_t sub_1000C61A8(uint64_t a1, uint64_t *a2)
{
  if (a1 != 121)
  {
    return 0;
  }

  v2 = *a2;
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void *sub_1000C61DC(uint64_t a1)
{
  if (a1 != 121)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005F5CC(&unk_100129340, &unk_1000E8020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000E7B30;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  *(v1 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 88) = v5;
  *(v1 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 104) = v6;
  *(v1 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 120) = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = v1;
  *(v1 + 128) = v8;
  *(v1 + 136) = v10;
  return result;
}

Swift::Int sub_1000C62D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C6348()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL CKRecordZoneID.validForPlatform.getter()
{
  v1 = [v0 zoneName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = 0x2E52656E6F5ALL;
  v5._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v5) || (v6._countAndFlagsBits = 0x2E322E45656E6F5ALL, v6._object = 0xE800000000000000, String.hasPrefix(_:)(v6)))
  {
    v7 = 1;
  }

  else
  {
    v8._countAndFlagsBits = 0x2E55656E6F5ALL;
    v8._object = 0xE600000000000000;
    v7 = String.hasPrefix(_:)(v8);
  }

  if (qword_10012B3B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100066000(v9, qword_10012B3B8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    v14 = sub_100065658(v2, v4, &v16);

    *(v12 + 4) = v14;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v10, v11, "On iOS device, zoneName=%s allowed=%{BOOL}d.", v12, 0x12u);
    sub_10005D588(v13);
  }

  else
  {
  }

  return v7;
}

unint64_t sub_1000C65A0()
{
  result = qword_100128FE0;
  if (!qword_100128FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128FE0);
  }

  return result;
}

unint64_t sub_1000C65F4()
{
  result = qword_1001284B8;
  if (!qword_1001284B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001284B8);
  }

  return result;
}

unint64_t sub_1000C6644()
{
  result = qword_100128FE8;
  if (!qword_100128FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128FE8);
  }

  return result;
}

unint64_t sub_1000C669C()
{
  result = qword_100128E58;
  if (!qword_100128E58)
  {
    type metadata accessor for MASDAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128E58);
  }

  return result;
}

uint64_t sub_1000C6704()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012B758);
  sub_100066000(v0, qword_10012B758);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000015, 0x80000001000F2340);
}

uint64_t sub_1000C6784(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v43[0] = a1;
  v43[1] = a2;

  v17._countAndFlagsBits = 124;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a3;
  v18._object = a4;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 124;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = a5;
  v20._object = a6;
  String.append(_:)(v20);
  static String.Encoding.utf8.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;

  (*(v13 + 8))(v16, v12);
  if (v23 >> 60 == 15)
  {
    v24 = nullsub_1(31, 0xD00000000000003ALL, 0x80000001000F2300);
    v26 = v25;
    v28 = v27;
    sub_100092A98();
    swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v26;
    *(v29 + 16) = v28;
    swift_willThrow();
  }

  else
  {
    v30 = static MADigest.hash(data:hashType:)(v21, v23, 0);
    v32 = v31;
    v12 = sub_10005FFFC(v30, v31);
    v34 = v33;
    sub_10005F358(v30, v32);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100066000(v35, qword_10012B758);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v41 = v12;
      v39 = v38;
      v43[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_100065658(v41, v34, v43);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_100065658(v42, a2, v43);
      _os_log_impl(&_mh_execute_header, v36, v37, "Calculated recordName: %s for recordHandle: %s", v39, 0x16u);
      swift_arrayDestroy();

      v12 = v41;
    }

    sub_10005F69C(v21, v23);
  }

  return v12;
}

uint64_t sub_1000C6AF0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1000C6B44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1000C6BAC()
{
  if (v0[98])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[97])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[96] | v1;
}

uint64_t sub_1000C6BDC(uint64_t result)
{
  v1[96] = result;
  v1[97] = BYTE1(result) & 1;
  v1[98] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1000C6C24()
{
  v1 = *(v0 + 112);
  sub_100093FE8(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_1000C6C58(uint64_t a1, uint64_t a2)
{
  result = sub_10005F69C(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_1000C6CBC()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_1000C6CC8(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t type metadata accessor for MACloudKVSRecord()
{
  result = qword_10012B970;
  if (!qword_10012B970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C6D8C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord() + 60);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C6E18()
{
  v1 = (v0 + *(type metadata accessor for MACloudKVSRecord() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000C6E58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudKVSRecord() + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1000C6F30(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord() + 68);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C7004(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord() + 72);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C70D8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord() + 76);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C71AC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord() + 80);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C7238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 112) = xmmword_1000E6BC0;
  v28 = type metadata accessor for MACloudKVSRecord();
  v29 = v28[15];
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v46 = v29;
  v31(a9 + v29, 1, 1, v30);
  v45 = v28[17];
  v31(a9 + v45, 1, 1, v30);
  v44 = v28[18];
  v31(a9 + v44, 1, 1, v30);
  v43 = v28[19];
  v31(a9 + v43, 1, 1, v30);
  v42 = v28[20];
  v31(a9 + v42, 1, 1, v30);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  if (a7)
  {
    v32 = HIBYTE(a7) & 0xF;
    if ((a7 & 0x2000000000000000) == 0)
    {
      v32 = a6 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      *(a9 + 40) = a6;
      *(a9 + 48) = a7;
    }

    else
    {
    }
  }

  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 97) = a15 & 1;
  *(a9 + 98) = a16 & 1;
  v33 = *(a9 + 112);
  v34 = *(a9 + 120);
  *(a9 + 104) = a17;
  *(a9 + 112) = a18;
  *(a9 + 120) = a19;
  sub_100093FE8(a18, a19);
  sub_10005F69C(v33, v34);
  if (a19 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v38 = a19 >> 62;
  if ((a19 >> 62) > 1)
  {
    if (v38 != 2)
    {
      sub_10005F69C(a18, a19);
LABEL_8:
      v35 = 0;
      goto LABEL_9;
    }

    v40 = *(a18 + 16);
    v39 = *(a18 + 24);
    sub_10005F69C(a18, a19);
    v35 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v38)
  {
    sub_10005F69C(a18, a19);
    v35 = BYTE6(a19);
    goto LABEL_9;
  }

  result = sub_10005F69C(a18, a19);
  LODWORD(v35) = HIDWORD(a18) - a18;
  if (__OFSUB__(HIDWORD(a18), a18))
  {
    __break(1u);
    return result;
  }

  v35 = v35;
LABEL_9:
  v36 = (a9 + v28[16]);
  *(a9 + 128) = v35;
  *(a9 + 136) = a19 >> 60 == 15;
  sub_1000941F8(a20, a9 + v46);
  *v36 = a21;
  v36[1] = a22;
  sub_1000941F8(a23, a9 + v45);
  sub_1000941F8(a24, a9 + v44);
  sub_1000941F8(a25, a9 + v43);

  return sub_1000941F8(a26, a9 + v42);
}

BOOL sub_1000C7594(void *a1)
{
  v2 = v1[4];
  if (v2 != a1[4])
  {
    return 0;
  }

  v4 = v1[7] == a1[7] && v1[8] == a1[8];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v1[9] != a1[9] || v1[10] != a1[10]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v1[11] != a1[11] || v1[13] != a1[13])
  {
    return 0;
  }

  v6 = v1[14];
  v5 = v1[15];
  v8 = a1[14];
  v7 = a1[15];
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_100093FE8(v1[14], v1[15]);
      sub_100093FE8(v8, v7);
      v10 = sub_1000AF4B8(v6, v5, v8, v7);
      sub_10005F69C(v8, v7);
      sub_10005F69C(v6, v5);
      if (v10)
      {
        return 1;
      }

      v11 = objc_opt_self();
      sub_100093FE8(v6, v5);
      sub_100093FE8(v8, v7);
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v59 = 0;
      v13 = [v11 propertyListWithData:isa options:0 format:0 error:&v59];

      if (!v13)
      {
        v36 = v59;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10005F69C(v6, v5);
        sub_10005F69C(v8, v7);

        return 0;
      }

      v14 = v59;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
      if (swift_dynamicCast())
      {
        v15 = Data._bridgeToObjectiveC()().super.isa;
        *&v59 = 0;
        v16 = [v11 propertyListWithData:v15 options:0 format:0 error:&v59];

        if (v16)
        {
          v17 = v58;
          v18 = v59;
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          if (swift_dynamicCast())
          {
            v19 = v58;
            v20 = sub_1000C61DC(v2);
            v21 = v20[2];
            v57 = v8;
            if (v21)
            {
              v22 = v20 + 5;
              do
              {
                v23 = v19;
                v25 = *(v22 - 1);
                v24 = *v22;

                v26 = v17;
                v27 = sub_100065A98(v25, v24);
                if (v28)
                {
                  v29 = v27;
                  if (!swift_isUniquelyReferenced_nonNull_native())
                  {
                    sub_1000AF25C();
                  }

                  v30 = *(*(v26 + 48) + 16 * v29 + 8);

                  sub_1000AF7F4((*(v26 + 56) + 32 * v29), &v59);
                  v31 = v29;
                  v17 = v26;
                  sub_1000AEB84(v31, v26);
                }

                else
                {
                  v59 = 0u;
                  v60 = 0u;
                }

                sub_100066C80(&v59, &unk_100128830, &qword_1000E7D40);
                v19 = v23;
                v32 = sub_100065A98(v25, v24);
                v34 = v33;

                if (v34)
                {
                  if (!swift_isUniquelyReferenced_nonNull_native())
                  {
                    sub_1000AF25C();
                  }

                  v35 = *(*(v19 + 48) + 16 * v32 + 8);

                  sub_1000AF7F4((*(v19 + 56) + 32 * v32), &v59);
                  sub_1000AEB84(v32, v19);
                }

                else
                {
                  v59 = 0u;
                  v60 = 0u;
                }

                sub_100066C80(&v59, &unk_100128830, &qword_1000E7D40);
                v22 += 2;
                --v21;
              }

              while (v21);
            }

            if (qword_10012B750 != -1)
            {
              swift_once();
            }

            v38 = type metadata accessor for Logger();
            sub_100066000(v38, qword_10012B758);
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v39, v40))
            {
              v56 = v40;
              v41 = swift_slowAlloc();
              *&v59 = swift_slowAlloc();
              *v41 = 136315394;

              v42 = Dictionary.description.getter();
              v44 = v43;

              v45 = sub_100065658(v42, v44, &v59);

              *(v41 + 4) = v45;
              *(v41 + 12) = 2080;

              v46 = Dictionary.description.getter();
              v48 = v47;

              v49 = sub_100065658(v46, v48, &v59);

              *(v41 + 14) = v49;
              _os_log_impl(&_mh_execute_header, v39, v56, "After removing ignored columns rowDecoded %s\n otherRowDecoded %s", v41, 0x16u);
              swift_arrayDestroy();
            }

            sub_1000C7D9C(v50);

            v51 = objc_allocWithZone(NSDictionary);
            v52 = Dictionary._bridgeToObjectiveC()().super.isa;

            v53 = [v51 initWithDictionary:v52];

            sub_1000C7D9C(v54);

            v55 = Dictionary._bridgeToObjectiveC()().super.isa;

            LOBYTE(v51) = [v53 isEqualToDictionary:v55];
            sub_10005F69C(v6, v5);
            sub_10005F69C(v57, v7);

            return (v51 & 1) != 0;
          }

          sub_10005F69C(v6, v5);
          sub_10005F69C(v8, v7);
        }

        else
        {
          v37 = v59;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_10005F69C(v6, v5);
          sub_10005F69C(v8, v7);
        }

        return 0;
      }

LABEL_17:
      sub_10005F69C(v6, v5);
      sub_10005F69C(v8, v7);
      return 0;
    }

LABEL_16:
    sub_100093FE8(v1[14], v1[15]);
    sub_100093FE8(v8, v7);
    goto LABEL_17;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_16;
  }

  sub_100093FE8(v1[14], v1[15]);
  sub_100093FE8(v8, v7);
  sub_10005F69C(v6, v5);
  return 1;
}

uint64_t sub_1000C7D9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100066130(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000AF7F4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000AF7F4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000AF7F4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000AF7F4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000C87C4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1000C87FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 64));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_1000C883C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

void sub_1000C88CC(void *a1)
{
  v3 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 encryptedValues];
  swift_getObjectType();
  v12 = v1[4];
  v36 = &type metadata for UInt;
  v37 = &protocol witness table for UInt;
  v34 = v12;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v13 = [a1 encryptedValues];
  swift_getObjectType();
  v15 = v1[7];
  v14 = v1[8];
  v36 = &type metadata for String;
  v37 = &protocol witness table for String;
  v34 = v15;
  v35 = v14;

  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v16 = [a1 encryptedValues];
  swift_getObjectType();
  v18 = v1[9];
  v17 = v1[10];
  v36 = &type metadata for String;
  v37 = &protocol witness table for String;
  v34 = v18;
  v35 = v17;

  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v19 = [a1 encryptedValues];
  swift_getObjectType();
  v20 = sub_1000BF320(v1[11]);
  v37 = &protocol witness table for UInt;
  v36 = &type metadata for UInt;
  v34 = v20;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v21 = [a1 encryptedValues];
  swift_getObjectType();
  v22 = v1[13];
  v36 = &type metadata for Int;
  v37 = &protocol witness table for Int;
  v34 = v22;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v23 = v1[15];
  if (v23 >> 60 != 15)
  {
    v24 = v1[14];
    sub_10005F304(v24, v1[15]);
    v25 = [a1 encryptedValues];
    swift_getObjectType();
    v36 = &type metadata for Data;
    v37 = &protocol witness table for Data;
    v34 = v24;
    v35 = v23;
    sub_10005F304(v24, v23);
    CKRecordKeyValueSetting.subscript.setter();
    sub_10005F69C(v24, v23);
    swift_unknownObjectRelease();
  }

  v26 = type metadata accessor for MACloudKVSRecord();
  sub_1000939A8(v1 + *(v26 + 60), v6, &qword_1001287D0, &qword_1000E6C30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100066C80(v6, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v27 = v33;
    (*(v8 + 32))(v33, v6, v7);
    v28 = [a1 encryptedValues];
    swift_getObjectType();
    v36 = v7;
    v37 = &protocol witness table for Date;
    v29 = sub_10005D4D0(&v34);
    (*(v8 + 16))(v29, v27, v7);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v27, v7);
  }

  v30 = (v1 + *(v26 + 64));
  if (v30[1])
  {
    v31 = *v30;
    v32 = String._bridgeToObjectiveC()();
    [a1 setEtag:v32];
  }
}

uint64_t sub_1000C8DE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a4;
  v110 = a3;
  v92 = a2;
  v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v115 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v114 = &v92 - v12;
  v13 = __chkstk_darwin(v11);
  v113 = &v92 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v92 - v16;
  __chkstk_darwin(v15);
  v111 = &v92 - v18;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v22;
  v107 = v21;

  v23 = [a1 encryptedValues];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];
  swift_unknownObjectRelease();

  v26 = 0xF000000000000000;
  if (v25)
  {
    v118 = v25;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v27 = swift_dynamicCast();
    v28 = v116;
    if (!v27)
    {
      v28 = 0;
    }

    v105 = v28;
    if (v27)
    {
      v26 = v117;
    }

    v109 = v26;
  }

  else
  {
    v109 = 0xF000000000000000;
    v105 = 0;
  }

  v29 = [a1 encryptedValues];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 objectForKeyedSubscript:v30];
  swift_unknownObjectRelease();

  if (v31 && (v116 = v31, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v104 = v118;
  }

  else
  {
    v104 = 0;
  }

  v32 = [a1 encryptedValues];
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 objectForKeyedSubscript:v33];
  swift_unknownObjectRelease();

  if (v34 && (v118 = v34, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), (swift_dynamicCast() & 1) != 0))
  {
    v35 = v117;
    v103 = v116;
  }

  else
  {
    v103 = 0;
    v35 = 0xE000000000000000;
  }

  v102 = v35;
  v36 = [a1 encryptedValues];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 objectForKeyedSubscript:v37];
  swift_unknownObjectRelease();

  if (v38 && (v118 = v38, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), (swift_dynamicCast() & 1) != 0))
  {
    v39 = v117;
    v101 = v116;
  }

  else
  {
    v101 = 0;
    v39 = 0xE000000000000000;
  }

  v100 = v39;
  v40 = [a1 encryptedValues];
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 objectForKeyedSubscript:v41];
  swift_unknownObjectRelease();

  v43 = v113;
  v112 = v17;
  if (v42 && (v116 = v42, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v44 = v118;
  }

  else
  {
    v44 = sub_1000BF320(-2);
  }

  v99 = sub_1000BF304(v44);
  v98 = sub_1000C182C(3u, 1, 0);
  v45 = [a1 encryptedValues];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 objectForKeyedSubscript:v46];
  swift_unknownObjectRelease();

  if (v47 && (v116 = v47, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v97 = v118;
  }

  else
  {
    v97 = 0;
  }

  v48 = [a1 encryptedValues];
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 objectForKeyedSubscript:v49];
  swift_unknownObjectRelease();

  if (v50)
  {
    v116 = v50;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v51 = type metadata accessor for Date();
    v52 = v111;
    v53 = swift_dynamicCast();
    (*(*(v51 - 8) + 56))(v52, v53 ^ 1u, 1, v51);
  }

  else
  {
    v54 = type metadata accessor for Date();
    (*(*(v54 - 8) + 56))(v111, 1, 1, v54);
  }

  v55 = v112;
  v56 = [a1 etag];
  if (v56)
  {
    v57 = v56;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v58;
  }

  else
  {
    v96 = 0;
    v95 = 0;
  }

  v59 = [a1 creationDate];
  if (v59)
  {
    v60 = v59;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = type metadata accessor for Date();
  v63 = *(*(v62 - 8) + 56);
  v64 = 1;
  v63(v55, v61, 1, v62);
  v65 = [a1 modificationDate];
  if (v65)
  {
    v66 = v65;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  v63(v43, v64, 1, v62);
  v67 = v114;
  Date.init()();

  v63(v67, 0, 1, v62);
  v63(v115, 1, 1, v62);
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 112) = xmmword_1000E6BC0;
  v68 = type metadata accessor for MACloudKVSRecord();
  v108 = v68[15];
  v63(v108 + a5, 1, 1, v62);
  v94 = v68[17];
  v63(a5 + v94, 1, 1, v62);
  v93 = v68[18];
  v63(a5 + v93, 1, 1, v62);
  v69 = v68[19];
  v63(a5 + v69, 1, 1, v62);
  v70 = v68[20];
  v63(a5 + v70, 1, 1, v62);
  v71 = v106;
  *a5 = v107;
  *(a5 + 8) = v71;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v72 = v105;
  *(a5 + 32) = v104;
  v73 = v110;
  if (v110)
  {
    v74 = HIBYTE(v110) & 0xF;
    if ((v110 & 0x2000000000000000) == 0)
    {
      v74 = v92 & 0xFFFFFFFFFFFFLL;
    }

    if (v74)
    {
      *(a5 + 40) = v92;
      *(a5 + 48) = v73;
    }

    else
    {
    }
  }

  v75 = v102;
  *(a5 + 56) = v103;
  *(a5 + 64) = v75;
  v76 = v100;
  *(a5 + 72) = v101;
  *(a5 + 80) = v76;
  *(a5 + 88) = v99;
  v77 = v98;
  *(a5 + 96) = v98;
  *(a5 + 97) = BYTE1(v77) & 1;
  *(a5 + 98) = BYTE2(v77) & 1;
  v78 = *(a5 + 112);
  v79 = *(a5 + 120);
  *(a5 + 104) = v97;
  *(a5 + 112) = v72;
  v80 = v109;
  *(a5 + 120) = v109;
  sub_100093FE8(v72, v80);
  v81 = v79;
  v82 = v80;
  sub_10005F69C(v78, v81);
  v83 = v80 >> 60;
  if (v83 > 0xE)
  {
    goto LABEL_46;
  }

  v89 = v82 >> 62;
  if ((v82 >> 62) > 1)
  {
    if (v89 != 2)
    {
      sub_10005F69C(v72, v82);
LABEL_46:
      v84 = 0;
LABEL_47:
      v85 = v83 > 0xE;
      v86 = (a5 + v68[16]);
      *(a5 + 128) = v84;
      *(a5 + 136) = v85;
      sub_1000941F8(v111, v108 + a5);
      v87 = v95;
      *v86 = v96;
      v86[1] = v87;
      sub_1000941F8(v112, a5 + v94);
      sub_1000941F8(v113, a5 + v93);
      sub_1000941F8(v114, a5 + v69);
      return sub_1000941F8(v115, a5 + v70);
    }

    v90 = v82;
    v82 = *(v72 + 16);
    v91 = *(v72 + 24);
    sub_10005F69C(v72, v90);
    v84 = v91 - v82;
    if (!__OFSUB__(v91, v82))
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  else if (!v89)
  {
    sub_10005F69C(v72, v82);
    v84 = BYTE6(v82);
    goto LABEL_47;
  }

  result = sub_10005F69C(v72, v82);
  LODWORD(v84) = HIDWORD(v72) - v72;
  if (!__OFSUB__(HIDWORD(v72), v72))
  {
    v84 = v84;
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C98D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v114 = a8;
  v115 = a9;
  v116 = a3;
  v117 = a6;
  v16 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v95 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v95 - v24;
  __chkstk_darwin(v23);
  v29 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    sub_1000B9568();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_100092A98();
    swift_allocError();
    *v39 = v34;
    *(v39 + 8) = v36;
    *(v39 + 16) = v38;
    return swift_willThrow();
  }

  v112 = v27;
  v113 = v28;
  v111 = &v95 - v26;
  v30 = sub_1000C6784(a1, a2, a4, a5, v117, a7);
  if (v10)
  {
  }

  v102 = v30;
  v103 = a1;
  v104 = a4;
  v105 = v31;
  v106 = a2;
  v107 = a7;
  v109 = v22;
  v110 = a5;
  v108 = v25;

  sub_1000DAE54(v40, v116);

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100066000(v41, qword_10012B758);

  v101 = v42;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v115;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v47 = 136315394;
    v48 = Dictionary.description.getter();
    LODWORD(v100) = v44;
    v50 = sub_100065658(v48, v49, &v118);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    v51 = Dictionary.description.getter();
    v53 = sub_100065658(v51, v52, &v118);

    *(v47 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v43, v100, "Original data %s stripped to %s", v47, 0x16u);
    swift_arrayDestroy();
  }

  v54 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v118 = 0;
  v56 = [v54 dataWithPropertyList:isa format:200 options:0 error:&v118];

  v57 = v118;
  if (!v56)
  {
    v86 = v57;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  sub_10005F304(v58, v60);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  v100 = v60;
  v101 = v58;
  sub_10005F358(v58, v60);
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v118 = v99;
    *v63 = 136315394;
    v64 = Dictionary.description.getter();
    v66 = sub_100065658(v64, v65, &v118);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    v67 = sub_10005FFFC(v101, v100);
    v69 = sub_100065658(v67, v68, &v118);

    *(v63 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v61, v62, "Serializing %s to Data: %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  v70 = sub_1000C182C(0, 0, 0);
  v71 = v111;
  v72 = v116;
  sub_1000CA26C(a10, v116, v111);

  v73 = type metadata accessor for Date();
  v74 = *(*(v73 - 8) + 56);
  v74(v71, 0, 1, v73);
  v74(v108, 1, 1, v73);
  v74(v109, 1, 1, v73);
  v74(v113, 1, 1, v73);
  v74(v112, 1, 1, v73);
  *(v46 + 40) = 0;
  *(v46 + 48) = 0;
  *(v46 + 112) = xmmword_1000E6BC0;
  v75 = type metadata accessor for MACloudKVSRecord();
  v98 = v75[15];
  v74(v46 + v98, 1, 1, v73);
  v99 = v75[17];
  v74(v46 + v99, 1, 1, v73);
  v97 = v75[18];
  v74(v46 + v97, 1, 1, v73);
  v96 = v75[19];
  v74(v46 + v96, 1, 1, v73);
  v95 = v75[20];
  v74(v46 + v95, 1, 1, v73);
  v76 = v105;
  *v46 = v102;
  *(v46 + 8) = v76;
  v77 = v106;
  *(v46 + 16) = v103;
  *(v46 + 24) = v77;
  *(v46 + 32) = v72;
  v78 = v110;
  *(v46 + 56) = v104;
  *(v46 + 64) = v78;
  v79 = v107;
  *(v46 + 72) = v117;
  *(v46 + 80) = v79;
  *(v46 + 88) = v114;
  *(v46 + 96) = v70;
  *(v46 + 97) = BYTE1(v70) & 1;
  *(v46 + 98) = BYTE2(v70) & 1;
  v80 = *(v46 + 112);
  v81 = *(v46 + 120);
  v83 = v100;
  v82 = v101;
  *(v46 + 104) = 0;
  *(v46 + 112) = v82;
  *(v46 + 120) = v83;
  sub_10005F304(v82, v83);
  sub_10005F69C(v80, v81);
  v84 = v83 >> 62;
  if ((v83 >> 62) <= 1)
  {
    if (!v84)
    {
      sub_10005F358(v82, v83);
      v85 = BYTE6(v83);
LABEL_27:
      v92 = v112;
      v90 = v113;
      v91 = v108;
      v82 = v109;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v84 != 2)
  {
    sub_10005F358(v82, v83);
    v85 = 0;
    goto LABEL_27;
  }

  v88 = *(v82 + 16);
  v87 = *(v82 + 24);
  sub_10005F358(v82, v83);
  v89 = __OFSUB__(v87, v88);
  v85 = v87 - v88;
  v90 = v113;
  v91 = v108;
  v82 = v109;
  if (v89)
  {
    __break(1u);
LABEL_23:
    sub_10005F358(v82, v83);
    v89 = __OFSUB__(HIDWORD(v82), v82);
    LODWORD(v85) = HIDWORD(v82) - v82;
    v90 = v113;
    v91 = v108;
    v82 = v109;
    if (v89)
    {
      __break(1u);
    }

    v85 = v85;
  }

  v92 = v112;
LABEL_28:
  v93 = v111;
  v94 = (v46 + v75[16]);
  *(v46 + 128) = v85;
  *(v46 + 136) = 0;
  sub_1000941F8(v93, v46 + v98);
  *v94 = 0;
  v94[1] = 0;
  sub_1000941F8(v91, v46 + v99);
  sub_1000941F8(v82, v46 + v97);
  sub_1000941F8(v90, v46 + v96);
  return sub_1000941F8(v92, v46 + v95);
}

uint64_t sub_1000CA26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21[-v8];
  v10 = sub_1000C6190(a2);
  if (v11)
  {
    if (*(a1 + 16))
    {
      v12 = sub_100065A98(v10, v11);
      v14 = v13;

      if (v14)
      {
        sub_100066130(*(a1 + 56) + 32 * v12, v23);
        goto LABEL_10;
      }
    }

    else
    {
    }

    memset(v23, 0, sizeof(v23));
LABEL_10:
    sub_1000939A8(v23, v21, &unk_100128830, &qword_1000E7D40);
    if (v22)
    {
      v16 = type metadata accessor for Date();
      v17 = swift_dynamicCast();
      v18 = *(v16 - 8);
      (*(v18 + 56))(v9, v17 ^ 1u, 1, v16);
      if ((*(v18 + 48))(v9, 1, v16) != 1)
      {
        sub_100066C80(v23, &unk_100128830, &qword_1000E7D40);
        return (*(v18 + 32))(a3, v9, v16);
      }
    }

    else
    {
      sub_100066C80(v21, &unk_100128830, &qword_1000E7D40);
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    }

    sub_100066C80(v9, &qword_1001287D0, &qword_1000E6C30);
    sub_1000939A8(v23, v21, &unk_100128830, &qword_1000E7D40);
    if (v22)
    {
      if (swift_dynamicCast())
      {
        Date.init(timeIntervalSinceReferenceDate:)();
        return sub_100066C80(v23, &unk_100128830, &qword_1000E7D40);
      }
    }

    else
    {
      sub_100066C80(v21, &unk_100128830, &qword_1000E7D40);
    }

    Date.init()();
    return sub_100066C80(v23, &unk_100128830, &qword_1000E7D40);
  }

  return Date.init()();
}

uint64_t sub_1000CA5D8()
{
  v0 = sub_1000C54A8();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_1000CA60C(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1000CA65C(a1, a2);
  return v4;
}

uint64_t sub_1000CA65C(void *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v3 = sub_1000C54A8();
  v4 = *(v3 + 1);
  *(v2 + 136) = *v3;
  *(v2 + 144) = v4;
  type metadata accessor for MAKVStoreBase();
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0;
  *(v2 + 176) = 0;
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E7CF0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = 0x614E64726F636572;
  *(v6 + 40) = 0xEA0000000000656DLL;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 3;
  *(v6 + 120) = &type metadata for UInt;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 1;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E6BE0;
  strcpy((v7 + 32), "recordAccount");
  *(v7 + 46) = -4864;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 3;
  *(v7 + 120) = &type metadata for Int;
  *(v7 + 88) = &type metadata for UInt;
  *(v7 + 96) = 0;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000E6BE0;
  strcpy((v8 + 32), "recordHandle");
  *(v8 + 45) = 0;
  *(v8 + 46) = -5120;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = 3;
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 88) = &type metadata for UInt;
  *(v8 + 96) = 0;
  *(v5 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E6BE0;
  *(v9 + 32) = 0x74617453636E7973;
  *(v9 + 40) = 0xE900000000000065;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 1;
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 88) = &type metadata for UInt;
  *(v9 + 96) = 0;
  *(v5 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E6BE0;
  *(v10 + 32) = 0x756F6C436D6F7266;
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 1;
  *(v10 + 120) = &type metadata for Int;
  *(v10 + 88) = &type metadata for UInt;
  *(v10 + 96) = 0;
  *(v5 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000E6BE0;
  *(v11 + 32) = 0x6B63416C61636F6CLL;
  *(v11 + 40) = 0xEA00000000006465;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 1;
  *(v11 + 120) = &type metadata for Int;
  *(v11 + 88) = &type metadata for UInt;
  *(v11 + 96) = 0;
  *(v5 + 72) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E6BE0;
  *(v12 + 32) = 1701869940;
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = 1;
  *(v12 + 120) = &type metadata for Int;
  *(v12 + 88) = &type metadata for UInt;
  *(v12 + 96) = 0;
  *(v5 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000E6BE0;
  *(v13 + 32) = 0x6D614E65726F7473;
  *(v13 + 40) = 0xE900000000000065;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 3;
  *(v13 + 120) = &type metadata for Int;
  *(v13 + 88) = &type metadata for UInt;
  *(v13 + 96) = 0;
  *(v5 + 88) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x6F724765726F7473;
  *(v14 + 40) = 0xEA00000000007075;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = 3;
  *(v14 + 120) = &type metadata for Int;
  *(v14 + 88) = &type metadata for UInt;
  *(v14 + 96) = 0;
  *(v5 + 96) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000E6BE0;
  *(v15 + 32) = 0x54656C69666F7270;
  *(v15 + 40) = 0xEB00000000657079;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 1;
  *(v15 + 120) = &type metadata for Int;
  *(v15 + 88) = &type metadata for UInt;
  *(v15 + 96) = 0;
  *(v5 + 104) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000E6BE0;
  *(v16 + 32) = 0x6E6F6973726576;
  *(v16 + 40) = 0xE700000000000000;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = 1;
  *(v16 + 120) = &type metadata for Int;
  *(v16 + 88) = &type metadata for UInt;
  *(v16 + 96) = 0;
  *(v5 + 112) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E6BE0;
  strcpy((v17 + 32), "serializedRow");
  *(v17 + 46) = -4864;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 4;
  *(v17 + 120) = &type metadata for Int;
  *(v17 + 88) = &type metadata for UInt;
  *(v17 + 96) = 0;
  *(v5 + 120) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000E6BE0;
  *(v18 + 32) = 0x657A695361746164;
  *(v18 + 40) = 0xE800000000000000;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = 1;
  *(v18 + 120) = &type metadata for Int;
  *(v18 + 88) = &type metadata for UInt;
  *(v18 + 96) = 0;
  *(v5 + 128) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = 0x616470557473616CLL;
  *(v19 + 40) = 0xEF656D6954646574;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = 2;
  *(v19 + 120) = &type metadata for Int;
  *(v19 + 88) = &type metadata for UInt;
  *(v19 + 96) = 0;
  *(v5 + 136) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000E6BE0;
  *(v20 + 32) = 0x676154456B63;
  *(v20 + 40) = 0xE600000000000000;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 3;
  *(v20 + 120) = &type metadata for Int;
  *(v20 + 88) = &type metadata for UInt;
  *(v20 + 96) = 0;
  *(v5 + 144) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000E6BE0;
  strcpy((v21 + 32), "ckCreatedDate");
  *(v21 + 46) = -4864;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = 2;
  *(v21 + 120) = &type metadata for Int;
  *(v21 + 88) = &type metadata for UInt;
  *(v21 + 96) = 0;
  *(v5 + 152) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000E6BE0;
  strcpy((v22 + 32), "ckModifiedDate");
  *(v22 + 47) = -18;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = 2;
  *(v22 + 120) = &type metadata for Int;
  *(v22 + 88) = &type metadata for UInt;
  *(v22 + 96) = 0;
  *(v5 + 160) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000E6BE0;
  *(v23 + 32) = 0x6144636E79536B63;
  *(v23 + 40) = 0xEA00000000006574;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = 2;
  *(v23 + 120) = &type metadata for Int;
  *(v23 + 88) = &type metadata for UInt;
  *(v23 + 96) = 0;
  *(v5 + 168) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000E6BE0;
  *(v24 + 32) = 0xD000000000000010;
  *(v24 + 40) = 0x80000001000F1290;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = 2;
  *(v24 + 120) = &type metadata for Int;
  *(v24 + 88) = &type metadata for UInt;
  *(v24 + 96) = 0;
  *(v5 + 176) = v24;

  v25 = a1;
  v26 = sub_100061BEC();
  v27 = sub_1000C450C(0x4B414D64756F6C43, 0xEE0065726F745356, v5, v25, 0x614864726F636572, 0xEC000000656C646ELL, 0, 0, 1, v26 & 1);
  *(v2 + 112) = v25;
  *(v2 + 120) = a2;
  *(v2 + 128) = v27;
  return v2;
}

_OWORD *sub_1000CACE4(uint64_t *a1)
{
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v115 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v114 = &v107 - v7;
  v8 = __chkstk_darwin(v6);
  v113 = &v107 - v9;
  v10 = __chkstk_darwin(v8);
  v112 = &v107 - v11;
  __chkstk_darwin(v10);
  v13 = &v107 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v110 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v109 = &v107 - v20;
  v21 = __chkstk_darwin(v19);
  v108 = &v107 - v22;
  v23 = __chkstk_darwin(v21);
  v107 = &v107 - v24;
  __chkstk_darwin(v23);
  v26 = &v107 - v25;
  v27 = sub_1000AF988(_swiftEmptyArrayStorage);
  v28 = *a1;
  v29 = a1[1];
  v119 = &type metadata for String;
  *&v118 = v28;
  *(&v118 + 1) = v29;
  sub_1000AF7F4(&v118, v117);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116 = v27;
  sub_1000AEE80(v117, 0x614E64726F636572, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  v31 = v116;
  v32 = a1[4];
  v119 = &type metadata for UInt;
  *&v118 = v32;
  sub_1000AF7F4(&v118, v117);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v31;
  sub_1000AEE80(v117, 1701869940, 0xE400000000000000, v33);
  v34 = v116;
  v35 = a1[7];
  v36 = a1[8];
  v119 = &type metadata for String;
  *&v118 = v35;
  *(&v118 + 1) = v36;
  sub_1000AF7F4(&v118, v117);

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v34;
  sub_1000AEE80(v117, 0x6D614E65726F7473, 0xE900000000000065, v37);
  v38 = v116;
  v39 = a1[9];
  v40 = a1[10];
  v119 = &type metadata for String;
  *&v118 = v39;
  *(&v118 + 1) = v40;
  sub_1000AF7F4(&v118, v117);

  v41 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v38;
  sub_1000AEE80(v117, 0x6F724765726F7473, 0xEA00000000007075, v41);
  v42 = v116;
  v43 = sub_1000BF320(a1[11]);
  v119 = &type metadata for UInt;
  *&v118 = v43;
  sub_1000AF7F4(&v118, v117);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v42;
  sub_1000AEE80(v117, 0x54656C69666F7270, 0xEB00000000657079, v44);
  v45 = v116;
  v46 = a1[6];
  if (v46)
  {
    v47 = a1[5];
    v119 = &type metadata for String;
    *&v118 = v47;
    *(&v118 + 1) = v46;
    sub_1000AF7F4(&v118, v117);

    v48 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v45;
    sub_1000AEE80(v117, 0x634164726F636572, 0xED0000746E756F63, v48);
    v45 = v116;
  }

  v49 = a1[3];
  if (v49)
  {
    v50 = a1[2];
    v119 = &type metadata for String;
    *&v118 = v50;
    *(&v118 + 1) = v49;
    sub_1000AF7F4(&v118, v117);

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v45;
    sub_1000AEE80(v117, 0x614864726F636572, 0xEC000000656C646ELL, v51);
    v45 = v116;
  }

  v52 = sub_1000C1778(*(a1 + 96));
  v119 = &type metadata for Int;
  *&v118 = v52;
  sub_1000AF7F4(&v118, v117);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v45;
  sub_1000AEE80(v117, 0x74617453636E7973, 0xE900000000000065, v53);
  v54 = v116;
  v55 = *(a1 + 97);
  v119 = &type metadata for Int;
  *&v118 = v55;
  sub_1000AF7F4(&v118, v117);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v54;
  sub_1000AEE80(v117, 0x756F6C436D6F7266, 0xE900000000000064, v56);
  v57 = v116;
  v58 = *(a1 + 98);
  v119 = &type metadata for Int;
  *&v118 = v58;
  sub_1000AF7F4(&v118, v117);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v57;
  sub_1000AEE80(v117, 0x6B63416C61636F6CLL, 0xEA00000000006465, v59);
  v60 = v116;
  v61 = a1[13];
  v119 = &type metadata for Int;
  *&v118 = v61;
  sub_1000AF7F4(&v118, v117);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v60;
  sub_1000AEE80(v117, 0x6E6F6973726576, 0xE700000000000000, v62);
  v63 = v116;
  v64 = a1[15];
  if (v64 >> 60 != 15)
  {
    v67 = a1[14];
    v119 = &type metadata for Data;
    *&v118 = v67;
    *(&v118 + 1) = v64;
    sub_1000AF7F4(&v118, v117);
    sub_10005F304(v67, v64);
    sub_10005F304(v67, v64);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    result = sub_1000AEE80(v117, 0x7A696C6169726573, 0xED0000776F526465, v68);
    v70 = v116;
    v71 = v64 >> 62;
    if ((v64 >> 62) > 1)
    {
      if (v71 != 2)
      {
        v72 = 0;
        goto LABEL_18;
      }

      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      v75 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (!v75)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v71)
    {
      v72 = BYTE6(v64);
LABEL_18:
      v119 = &type metadata for Int;
      *&v118 = v72;
      sub_1000AF7F4(&v118, v117);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v116 = v70;
      sub_1000AEE80(v117, 0x657A695361746164, 0xE800000000000000, v76);
      sub_10005F69C(v67, v64);
      goto LABEL_19;
    }

    LODWORD(v72) = HIDWORD(v67) - v67;
    if (__OFSUB__(HIDWORD(v67), v67))
    {
      __break(1u);
      return result;
    }

    v72 = v72;
    goto LABEL_18;
  }

  if ((a1[17] & 1) == 0)
  {
    v65 = a1[16];
    v119 = &type metadata for Int;
    *&v118 = v65;
    sub_1000AF7F4(&v118, v117);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    sub_1000AEE80(v117, 0x657A695361746164, 0xE800000000000000, v66);
LABEL_19:
    v63 = v116;
  }

  v77 = type metadata accessor for MACloudKVSRecord();
  sub_1000939A8(a1 + v77[15], v13, &qword_1001287D0, &qword_1000E6C30);
  v111 = *(v15 + 48);
  if (v111(v13, 1, v14) == 1)
  {
    v78 = v14;
    sub_100066C80(v13, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v15 + 32))(v26, v13, v14);
    Date.timeIntervalSinceReferenceDate.getter();
    v119 = &type metadata for Double;
    *&v118 = v79;
    sub_1000AF7F4(&v118, v117);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    sub_1000AEE80(v117, 0x616470557473616CLL, 0xEF656D6954646574, v80);
    v81 = v26;
    v78 = v14;
    (*(v15 + 8))(v81, v14);
    v63 = v116;
  }

  v82 = v15;
  v83 = (a1 + v77[16]);
  v84 = v83[1];
  if (v84)
  {
    v85 = *v83;
    v119 = &type metadata for String;
    *&v118 = v85;
    *(&v118 + 1) = v84;
    sub_1000AF7F4(&v118, v117);

    v86 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    sub_1000AEE80(v117, 0x676154456B63, 0xE600000000000000, v86);
    v63 = v116;
  }

  v87 = v112;
  sub_1000939A8(a1 + v77[17], v112, &qword_1001287D0, &qword_1000E6C30);
  v88 = v78;
  v89 = v78;
  v90 = v111;
  if (v111(v87, 1, v89) == 1)
  {
    sub_100066C80(v87, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v91 = *(v15 + 32);
    v92 = v107;
    v91(v107, v87, v88);
    Date.timeIntervalSinceReferenceDate.getter();
    v119 = &type metadata for Double;
    *&v118 = v93;
    sub_1000AF7F4(&v118, v117);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    sub_1000AEE80(v117, 0x6574616572436B63, 0xED00006574614464, v94);
    (*(v82 + 8))(v92, v88);
    v63 = v116;
  }

  v95 = v113;
  sub_1000939A8(a1 + v77[18], v113, &qword_1001287D0, &qword_1000E6C30);
  if (v90(v95, 1, v88) == 1)
  {
    sub_100066C80(v95, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v96 = v108;
    (*(v82 + 32))(v108, v95, v88);
    Date.timeIntervalSinceReferenceDate.getter();
    v119 = &type metadata for Double;
    *&v118 = v97;
    sub_1000AF7F4(&v118, v117);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    sub_1000AEE80(v117, 0x696669646F4D6B63, 0xEE00657461446465, v98);
    (*(v82 + 8))(v96, v88);
    v63 = v116;
  }

  v99 = v114;
  sub_1000939A8(a1 + v77[19], v114, &qword_1001287D0, &qword_1000E6C30);
  if (v90(v99, 1, v88) == 1)
  {
    sub_100066C80(v99, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v100 = v109;
    (*(v82 + 32))(v109, v99, v88);
    Date.timeIntervalSinceReferenceDate.getter();
    v119 = &type metadata for Double;
    *&v118 = v101;
    sub_1000AF7F4(&v118, v117);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    sub_1000AEE80(v117, 0x6144636E79536B63, 0xEA00000000006574, v102);
    (*(v82 + 8))(v100, v88);
    v63 = v116;
  }

  v103 = v115;
  sub_1000939A8(a1 + v77[20], v115, &qword_1001287D0, &qword_1000E6C30);
  if (v90(v103, 1, v88) == 1)
  {
    sub_100066C80(v103, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v104 = v110;
    (*(v82 + 32))(v110, v103, v88);
    Date.timeIntervalSinceReferenceDate.getter();
    v119 = &type metadata for Double;
    *&v118 = v105;
    sub_1000AF7F4(&v118, v117);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v63;
    sub_1000AEE80(v117, 0xD000000000000010, 0x80000001000F1290, v106);
    (*(v82 + 8))(v104, v88);
    return v116;
  }

  return v63;
}

uint64_t sub_1000CB9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MACloudKVSRecord();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v157 = &v124 - v14;
  v15 = __chkstk_darwin(v13);
  v148 = &v124 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v124 - v18;
  __chkstk_darwin(v17);
  v21 = &v124 - v20;
  if (!*(a1 + 16) || (v22 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL), (v23 & 1) == 0) || (sub_100066130(*(a1 + 56) + 32 * v22, &v155), (swift_dynamicCast() & 1) == 0))
  {
    v155 = 0;
    v156 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v155 = 0xD00000000000001BLL;
    v156 = 0x80000001000F22A0;
    v27._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v27);

    v28 = nullsub_1(8, v155, v156);
    v30 = v29;
    v32 = v31;
    sub_100092A98();
    swift_allocError();
    *v33 = v28;
    *(v33 + 8) = v30;
    *(v33 + 16) = v32;
    return swift_willThrow();
  }

  v24 = v154;
  v146 = v154;
  v147 = v153;
  if (*(a1 + 16) && (v25 = sub_100065A98(0x614864726F636572, 0xEC000000656C646ELL), v24 = v146, (v26 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v25, &v155), (swift_dynamicCast() & 1) != 0))
  {
    if (v154)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v153 = 0;
    v154 = 0;
  }

  if (String.count.getter() == 36)
  {
    v153 = v147;
    v154 = v24;
  }

LABEL_13:
  v35 = *(a1 + 16);
  v144 = a2;
  v145 = v12;
  if (!v35)
  {
    v38 = 0;
LABEL_23:
    v41 = 0;
    goto LABEL_24;
  }

  v36 = sub_100065A98(0x74617453636E7973, 0xE900000000000065);
  if ((v37 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v36, &v155), swift_dynamicCast()))
  {
    v38 = v151;
  }

  else
  {
    v38 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v39 = sub_100065A98(0x756F6C436D6F7266, 0xE900000000000064);
  v41 = (v40 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v39, &v155), swift_dynamicCast()) && v151 == 1;
  if (*(a1 + 16))
  {
    v59 = sub_100065A98(0x6B63416C61636F6CLL, 0xEA00000000006465);
    if (v60)
    {
      sub_100066130(*(a1 + 56) + 32 * v59, &v155);
      if (swift_dynamicCast())
      {
        v42 = v151 == 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v42 = 0;
LABEL_25:
  v43 = sub_1000C1780(v38);
  if (v43 == 11)
  {

    v155 = 0;
    v156 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v155 = 0xD000000000000020;
    v156 = 0x80000001000F12B0;
    v44._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v44);

    v45 = nullsub_1(10, v155, v156);
    v47 = v46;
    v49 = v48;
    sub_100092A98();
    swift_allocError();
    *v50 = v45;
    *(v50 + 8) = v47;
    *(v50 + 16) = v49;
    swift_willThrow();
  }

  v142 = sub_1000C182C(v43, v41, v42);
  if (*(a1 + 16) && (v51 = sub_100065A98(0x634164726F636572, 0xED0000746E756F63), (v52 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v51, &v155);
    v53 = swift_dynamicCast();
    v54 = v145;
    if ((v53 & 1) == 0)
    {
      goto LABEL_126;
    }

    if (v152)
    {
      v55 = v151 & 0xFFFFFFFFFFFFLL;
      if ((v152 & 0x2000000000000000) != 0)
      {
        v55 = HIBYTE(v152) & 0xF;
      }

      if (!v55)
      {
        v151 = 0;
        v152 = 0;
      }
    }
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v54 = v145;
  }

  while (1)
  {
    v140 = v154;
    v141 = v153;
    v56 = *(a1 + 16);

    if (!v56)
    {
      v139 = 0;
      v62 = v152;
      v124 = v151;
LABEL_51:
      v138 = v62;

LABEL_52:
      v137 = 0;
      v65 = 0xE000000000000000;
      goto LABEL_53;
    }

    v57 = sub_100065A98(1701869940, 0xE400000000000000);
    if ((v58 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v57, &v155), swift_dynamicCast()))
    {
      v139 = v149;
    }

    else
    {
      v139 = 0;
    }

    v61 = *(a1 + 16);
    v62 = v152;
    v124 = v151;
    if (!v61)
    {
      goto LABEL_51;
    }

    v138 = v152;

    v63 = sub_100065A98(0x6D614E65726F7473, 0xE900000000000065);
    if ((v64 & 1) == 0)
    {
      goto LABEL_52;
    }

    sub_100066130(*(a1 + 56) + 32 * v63, &v155);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

    v65 = v150;
    v137 = v149;
LABEL_53:
    v136 = v65;
    if (*(a1 + 16) && (v66 = sub_100065A98(0x6F724765726F7473, 0xEA00000000007075), (v67 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v66, &v155), (swift_dynamicCast() & 1) != 0))
    {
      v68 = v150;
      v135 = v149;
    }

    else
    {
      v135 = 0;
      v68 = 0xE000000000000000;
    }

    v134 = v68;
    if (*(a1 + 16) && (v69 = sub_100065A98(0x54656C69666F7270, 0xEB00000000657079), (v70 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v69, &v155), swift_dynamicCast()))
    {
      v71 = v149;
    }

    else
    {
      v71 = sub_1000BF320(-2);
    }

    v133 = sub_1000BF304(v71);
    if (!*(a1 + 16))
    {
      v131 = 0;
LABEL_76:
      v143 = 0;
      v79 = 1;
      v132 = 0xF000000000000000;
      goto LABEL_82;
    }

    v72 = sub_100065A98(0x6E6F6973726576, 0xE700000000000000);
    if ((v73 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v72, &v155), swift_dynamicCast()))
    {
      v131 = v149;
    }

    else
    {
      v131 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_76;
    }

    v74 = sub_100065A98(0x7A696C6169726573, 0xED0000776F526465);
    v75 = 0xF000000000000000;
    if (v76)
    {
      sub_100066130(*(a1 + 56) + 32 * v74, &v155);
      v77 = swift_dynamicCast();
      v78 = v149;
      if (!v77)
      {
        v78 = 0;
      }

      v143 = v78;
      if (v77)
      {
        v75 = v150;
      }

      v132 = v75;
    }

    else
    {
      v132 = 0xF000000000000000;
      v143 = 0;
    }

    if (*(a1 + 16) && (v80 = sub_100065A98(0x616470557473616CLL, 0xEF656D6954646574), (v81 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v80, &v155);
      v79 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v79 = 1;
    }

LABEL_82:
    type metadata accessor for MAKVStoreBase();
    sub_1000C4EA0(v79, v21);
    if (!*(a1 + 16))
    {
      v129 = 0;
      v130 = 0;
LABEL_95:
      v89 = 1;
      goto LABEL_96;
    }

    v82 = sub_100065A98(0x676154456B63, 0xE600000000000000);
    if (v83)
    {
      sub_100066130(*(a1 + 56) + 32 * v82, &v155);
      v84 = swift_dynamicCast();
      v85 = v149;
      if (!v84)
      {
        v85 = 0;
      }

      v130 = v85;
      if (v84)
      {
        v86 = v150;
      }

      else
      {
        v86 = 0;
      }

      v129 = v86;
    }

    else
    {
      v130 = 0;
      v129 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_95;
    }

    v87 = sub_100065A98(0x6574616572436B63, 0xED00006574614464);
    if ((v88 & 1) == 0)
    {
      goto LABEL_95;
    }

    sub_100066130(*(a1 + 56) + 32 * v87, &v155);
    v89 = swift_dynamicCast() ^ 1;
LABEL_96:
    sub_1000C4EA0(v89, v19);
    if (*(a1 + 16) && (v90 = sub_100065A98(0x696669646F4D6B63, 0xEE00657461446465), (v91 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v90, &v155);
      v92 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v92 = 1;
    }

    sub_1000C4EA0(v92, v148);
    if (*(a1 + 16) && (v93 = sub_100065A98(0x6144636E79536B63, 0xEA00000000006574), (v94 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v93, &v155);
      v95 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v95 = 1;
    }

    sub_1000C4EA0(v95, v157);
    if (*(a1 + 16) && (v96 = sub_100065A98(0xD000000000000010, 0x80000001000F1290), (v97 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v96, &v155);
      v98 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v98 = 1;
    }

    sub_1000C4EA0(v98, v54);
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 7) = xmmword_1000E6BC0;
    v99 = v4[15];
    v100 = type metadata accessor for Date();
    v101 = *(*(v100 - 8) + 56);
    v128 = v99;
    v101(&v7[v99], 1, 1, v100);
    v127 = v4[17];
    v101(&v7[v127], 1, 1, v100);
    v126 = v4[18];
    v101(&v7[v126], 1, 1, v100);
    v125 = v4[19];
    v101(&v7[v125], 1, 1, v100);
    v102 = v4[20];
    v101(&v7[v102], 1, 1, v100);
    v103 = v146;
    *v7 = v147;
    *(v7 + 1) = v103;
    v104 = v140;
    *(v7 + 2) = v141;
    *(v7 + 3) = v104;
    v105 = v138;
    *(v7 + 4) = v139;
    v106 = v132;
    if (v105)
    {
      v107 = HIBYTE(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v107 = v124 & 0xFFFFFFFFFFFFLL;
      }

      if (v107)
      {
        *(v7 + 5) = v124;
        *(v7 + 6) = v105;
      }

      else
      {
      }
    }

    v108 = v136;
    *(v7 + 7) = v137;
    *(v7 + 8) = v108;
    v109 = v134;
    *(v7 + 9) = v135;
    *(v7 + 10) = v109;
    *(v7 + 11) = v133;
    v110 = v142;
    v7[96] = v142;
    v7[97] = BYTE1(v110) & 1;
    v7[98] = BYTE2(v110) & 1;
    v111 = *(v7 + 14);
    v112 = *(v7 + 15);
    v113 = v143;
    *(v7 + 13) = v131;
    *(v7 + 14) = v113;
    *(v7 + 15) = v106;
    sub_100093FE8(v113, v106);
    sub_10005F69C(v111, v112);
    v114 = v106 >> 60;
    if (v106 >> 60 == 15)
    {
      goto LABEL_115;
    }

    v120 = v106 >> 62;
    if ((v106 >> 62) <= 1)
    {
      break;
    }

    if (v120 != 2)
    {
      sub_10005F69C(v143, v106);
LABEL_115:
      v115 = 0;
LABEL_116:
      v116 = v145;
LABEL_117:
      v117 = v114 > 0xE;
      v118 = &v7[v4[16]];
      *(v7 + 16) = v115;
      v7[136] = v117;
      sub_1000941F8(v21, &v7[v128]);
      v119 = v129;
      *v118 = v130;
      *(v118 + 1) = v119;
      sub_1000941F8(v19, &v7[v127]);
      sub_1000941F8(v148, &v7[v126]);
      sub_1000941F8(v157, &v7[v125]);
      sub_1000941F8(v116, &v7[v102]);
      sub_1000DB490(v7, v144);
    }

    v121 = v106;
    v54 = *(v143 + 16);
    a1 = *(v143 + 24);
    sub_10005F69C(v143, v121);
    v115 = a1 - v54;
    if (!__OFSUB__(a1, v54))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_126:
    v151 = 0;
    v152 = 0;
  }

  if (!v120)
  {
    sub_10005F69C(v143, v106);
    v115 = BYTE6(v106);
    goto LABEL_116;
  }

  v122 = v143;
  v147 = HIDWORD(v143);
  result = sub_10005F69C(v143, v106);
  v123 = __OFSUB__(v147, v122);
  LODWORD(v115) = v147 - v122;
  v116 = v145;
  if (!v123)
  {
    v115 = v115;
    goto LABEL_117;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CCA44(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for MACloudKVSRecord();
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000CCBA4, v2, 0);
}

uint64_t sub_1000CCBA4()
{
  v125 = v0;
  v1 = *(v0 + 192);
  v2 = *(*v1 + 200);
  v3 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0xFCE0000000000000;
  *(v0 + 264) = v2;
  *(v0 + 272) = v3;
  v2();
  if (v4)
  {

LABEL_3:
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    v7 = *v6;
    v8 = v6[1];
    (*(**(v0 + 192) + 304))(*v6, v8);
    v26 = *(v0 + 200);
    v27 = (*(*(v0 + 216) + 48))(v26, 1, *(v0 + 208));
    if (v27 == 1)
    {
      sub_100066C80(v26, &unk_100129060, &qword_1000E7D50);
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 232);
      v29 = *(v0 + 176);
      v30 = type metadata accessor for Logger();
      sub_100066000(v30, qword_10012B758);
      sub_1000DB4F4(v29, v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 232);
      if (v33)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v124 = v36;
        *v35 = 136315138;
        v37 = sub_1000C8064();
        v39 = v38;
        sub_1000DB558(v34);
        v40 = sub_100065658(v37, v39, &v124);

        *(v35 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "Adding new KVSRecord to be uploaded to local cache. record: %s", v35, 0xCu);
        sub_10005D588(v36);
      }

      else
      {

        sub_1000DB558(v34);
      }

      v74 = *(v0 + 264);
      v73 = *(v0 + 272);
      v75 = (*(**(v0 + 192) + 256))(*(v0 + 176));
      v76 = v74();
      if (v77)
      {
        *(v0 + 120) = &type metadata for String;
        *(v0 + 96) = v76;
        *(v0 + 104) = v77;
        sub_1000AF7F4((v0 + 96), (v0 + 128));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v75;
        v76 = sub_1000AEE80((v0 + 128), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
      }

      v79 = (*(**(v0 + 192) + 328))(v76);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 160) = 0;
      v81 = [v79 putDictionay:isa attributes:0 error:v0 + 160];

      v82 = *(v0 + 160);
      if (v81)
      {
        v83 = v82;
LABEL_46:
        v93 = *(v0 + 272);
        v94 = *(v0 + 192);
        (*(v0 + 264))(v83);
        if (v95)
        {
          v96 = *(v0 + 192);

          v98 = (*(*v96 + 176))(v97);
          *(v0 + 320) = v98;
          if (v98)
          {
            v99 = *(*(v0 + 176) + 32);
            v100 = swift_task_alloc();
            *(v0 + 328) = v100;
            *v100 = v0;
            v100[1] = sub_1000CE6E8;

            return sub_10007CCC4(v7, v8, v99);
          }

          goto LABEL_60;
        }

        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v103 = *(v0 + 224);
        v104 = *(v0 + 176);
        v105 = type metadata accessor for Logger();
        sub_100066000(v105, qword_10012B758);
        sub_1000DB4F4(v104, v103);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.info.getter();
        v108 = os_log_type_enabled(v106, v107);
        v109 = *(v0 + 224);
        if (v108)
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v124 = v111;
          *v110 = 136315138;
          v112 = sub_1000C8064();
          v114 = v113;
          sub_1000DB558(v109);
          v115 = sub_100065658(v112, v114, &v124);

          *(v110 + 4) = v115;
          _os_log_impl(&_mh_execute_header, v106, v107, "Account is not available, will schedule upload when it becomes ready. record: %s", v110, 0xCu);
          sub_10005D588(v111);

LABEL_60:
          v117 = *(v0 + 248);
          v116 = *(v0 + 256);
          v119 = *(v0 + 232);
          v118 = *(v0 + 240);
          v120 = *(v0 + 224);
          v121 = *(v0 + 200);

          v15 = *(v0 + 8);
          goto LABEL_5;
        }

        v58 = v109;
LABEL_59:
        sub_1000DB558(v58);
        goto LABEL_60;
      }

      v101 = v82;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v41 = *(v0 + 256);
      v42 = *(v0 + 184);
      sub_1000DB490(v26, v41);
      if ((*(v41 + 96) & 0xFE) == 2 && v42 != 1)
      {
        v44 = *(v0 + 176);
        if (sub_1000C7594(*(v0 + 256)))
        {
          if (qword_10012B750 != -1)
          {
            swift_once();
          }

          v45 = *(v0 + 248);
          v46 = *(v0 + 176);
          v47 = type metadata accessor for Logger();
          sub_100066000(v47, qword_10012B758);
          sub_1000DB4F4(v46, v45);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.info.getter();
          v50 = os_log_type_enabled(v48, v49);
          v52 = *(v0 + 248);
          v51 = *(v0 + 256);
          if (v50)
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v124 = v54;
            *v53 = 136315138;
            v55 = *v52;
            v56 = v52[1];

            sub_1000DB558(v52);
            v57 = sub_100065658(v55, v56, &v124);

            *(v53 + 4) = v57;
            _os_log_impl(&_mh_execute_header, v48, v49, "Skip KVSRecord sync up as it's not changed yet and already in cloud. recordName: %s", v53, 0xCu);
            sub_10005D588(v54);
          }

          else
          {

            sub_1000DB558(v52);
          }

          v58 = v51;
          goto LABEL_59;
        }
      }

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 240);
      v60 = *(v0 + 176);
      v61 = type metadata accessor for Logger();
      sub_100066000(v61, qword_10012B758);
      sub_1000DB4F4(v60, v59);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 240);
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v124 = v67;
        *v66 = 136315138;
        v68 = sub_1000C8064();
        v70 = v69;
        sub_1000DB558(v65);
        v71 = sub_100065658(v68, v70, &v124);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v62, v63, "Updating existing KVSRecord to be uploaded in local cache: %s", v66, 0xCu);
        sub_10005D588(v67);
      }

      else
      {

        v72 = sub_1000DB558(v65);
      }

      v84 = (*(**(v0 + 192) + 328))(v72);
      v85 = *(v0 + 192);
      v123 = *(v0 + 176);
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = 0x614E64726F636572;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA0000000000656DLL;
      *(inited + 48) = v7;
      *(inited + 56) = v8;

      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
      v87 = Dictionary._bridgeToObjectiveC()().super.isa;

      (*(*v85 + 256))(v123);
      v88 = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 168) = 0;
      v89 = [v84 updateFor:v87 value:v88 attributes:0 error:v0 + 168];

      v90 = *(v0 + 168);
      v91 = *(v0 + 256);
      if (v89)
      {
        v92 = v90;
        v83 = sub_1000DB558(v91);
        goto LABEL_46;
      }

      v102 = v90;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000DB558(v91);
    }

    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);

    v15 = *(v0 + 8);
LABEL_5:

    return v15();
  }

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100066000(v17, qword_10012B758);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v20, 2u);
  }

  v21 = *(v0 + 192);

  v22 = (*(*v21 + 176))();
  *(v0 + 280) = v22;
  if (!v22)
  {
    (*(**(v0 + 192) + 208))(0, 0);
    goto LABEL_3;
  }

  v23 = *(*v22 + 216);
  v122 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 288) = v25;
  *v25 = v0;
  v25[1] = sub_1000CD998;

  return v122();
}

uint64_t sub_1000CD998(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 288);
  v13 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v8 = v6[24];
    v9 = sub_1000CE8C0;
  }

  else
  {
    v10 = v6[35];
    v11 = v6[24];

    v6[38] = a2;
    v6[39] = a1;
    v9 = sub_1000CDB20;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000CDB20()
{
  v111 = v0;
  v1 = *(v0 + 296);
  (*(**(v0 + 192) + 208))(*(v0 + 312), *(v0 + 304));
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *v3;
  v5 = v3[1];
  (*(**(v0 + 192) + 304))(*v3, v5);
  if (v1)
  {
    goto LABEL_2;
  }

  v14 = *(v0 + 200);
  if ((*(*(v0 + 216) + 48))(v14, 1, *(v0 + 208)) == 1)
  {
    sub_100066C80(v14, &unk_100129060, &qword_1000E7D50);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 232);
    v16 = *(v0 + 176);
    v17 = type metadata accessor for Logger();
    sub_100066000(v17, qword_10012B758);
    sub_1000DB4F4(v16, v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 232);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v110 = v23;
      *v22 = 136315138;
      v24 = sub_1000C8064();
      v26 = v25;
      sub_1000DB558(v21);
      v27 = sub_100065658(v24, v26, &v110);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Adding new KVSRecord to be uploaded to local cache. record: %s", v22, 0xCu);
      sub_10005D588(v23);
    }

    else
    {

      sub_1000DB558(v21);
    }

    v61 = *(v0 + 264);
    v60 = *(v0 + 272);
    v62 = (*(**(v0 + 192) + 256))(*(v0 + 176));
    v63 = v61();
    if (v64)
    {
      *(v0 + 120) = &type metadata for String;
      *(v0 + 96) = v63;
      *(v0 + 104) = v64;
      sub_1000AF7F4((v0 + 96), (v0 + 128));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v62;
      v63 = sub_1000AEE80((v0 + 128), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
    }

    v66 = (*(**(v0 + 192) + 328))(v63);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 160) = 0;
    v68 = [v66 putDictionay:isa attributes:0 error:v0 + 160];

    v69 = *(v0 + 160);
    if (v68)
    {
      v70 = v69;
      goto LABEL_35;
    }

    v88 = v69;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_2:
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v10 = *(v0 + 224);
    v11 = *(v0 + 200);

    v12 = *(v0 + 8);
LABEL_3:

    return v12();
  }

  v28 = *(v0 + 256);
  v29 = *(v0 + 184);
  sub_1000DB490(v14, v28);
  if ((*(v28 + 96) & 0xFE) == 2 && v29 != 1)
  {
    v31 = *(v0 + 176);
    if (sub_1000C7594(*(v0 + 256)))
    {
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 248);
      v33 = *(v0 + 176);
      v34 = type metadata accessor for Logger();
      sub_100066000(v34, qword_10012B758);
      sub_1000DB4F4(v33, v32);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      v37 = os_log_type_enabled(v35, v36);
      v39 = *(v0 + 248);
      v38 = *(v0 + 256);
      if (v37)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v110 = v41;
        *v40 = 136315138;
        v42 = *v39;
        v43 = v39[1];

        sub_1000DB558(v39);
        v44 = sub_100065658(v42, v43, &v110);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v35, v36, "Skip KVSRecord sync up as it's not changed yet and already in cloud. recordName: %s", v40, 0xCu);
        sub_10005D588(v41);
      }

      else
      {

        sub_1000DB558(v39);
      }

      v45 = v38;
      goto LABEL_48;
    }
  }

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 240);
  v47 = *(v0 + 176);
  v48 = type metadata accessor for Logger();
  sub_100066000(v48, qword_10012B758);
  sub_1000DB4F4(v47, v46);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 240);
  if (v51)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v110 = v54;
    *v53 = 136315138;
    v55 = sub_1000C8064();
    v57 = v56;
    sub_1000DB558(v52);
    v58 = sub_100065658(v55, v57, &v110);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v49, v50, "Updating existing KVSRecord to be uploaded in local cache: %s", v53, 0xCu);
    sub_10005D588(v54);
  }

  else
  {

    v59 = sub_1000DB558(v52);
  }

  v71 = (*(**(v0 + 192) + 328))(v59);
  v72 = *(v0 + 192);
  v109 = *(v0 + 176);
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v4;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  v74 = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(*v72 + 256))(v109);
  v75 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 168) = 0;
  v76 = [v71 updateFor:v74 value:v75 attributes:0 error:v0 + 168];

  v77 = *(v0 + 168);
  v78 = *(v0 + 256);
  if (!v76)
  {
    v89 = v77;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000DB558(v78);
    goto LABEL_2;
  }

  v79 = v77;
  v70 = sub_1000DB558(v78);
LABEL_35:
  v80 = *(v0 + 272);
  v81 = *(v0 + 192);
  (*(v0 + 264))(v70);
  if (!v82)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v90 = *(v0 + 224);
    v91 = *(v0 + 176);
    v92 = type metadata accessor for Logger();
    sub_100066000(v92, qword_10012B758);
    sub_1000DB4F4(v91, v90);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();
    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 224);
    if (v95)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v110 = v98;
      *v97 = 136315138;
      v99 = sub_1000C8064();
      v101 = v100;
      sub_1000DB558(v96);
      v102 = sub_100065658(v99, v101, &v110);

      *(v97 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "Account is not available, will schedule upload when it becomes ready. record: %s", v97, 0xCu);
      sub_10005D588(v98);

      goto LABEL_49;
    }

    v45 = v96;
LABEL_48:
    sub_1000DB558(v45);
    goto LABEL_49;
  }

  v83 = *(v0 + 192);

  v85 = (*(*v83 + 176))(v84);
  *(v0 + 320) = v85;
  if (!v85)
  {
LABEL_49:
    v104 = *(v0 + 248);
    v103 = *(v0 + 256);
    v106 = *(v0 + 232);
    v105 = *(v0 + 240);
    v107 = *(v0 + 224);
    v108 = *(v0 + 200);

    v12 = *(v0 + 8);
    goto LABEL_3;
  }

  v86 = *(*(v0 + 176) + 32);
  v87 = swift_task_alloc();
  *(v0 + 328) = v87;
  *v87 = v0;
  v87[1] = sub_1000CE6E8;

  return sub_10007CCC4(v4, v5, v86);
}

uint64_t sub_1000CE6E8()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  v3[42] = v0;

  if (v0)
  {
    v4 = v3[24];

    return _swift_task_switch(sub_1000CE9A4, v4, 0);
  }

  else
  {
    v5 = v3[40];

    v7 = v3[31];
    v6 = v3[32];
    v9 = v3[29];
    v8 = v3[30];
    v10 = v3[28];
    v11 = v3[25];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_1000CE8C0()
{
  v1 = v0[35];

  v2 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000CE9A4()
{
  v1 = v0[40];

  v2 = v0[42];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000CEA88(uint64_t a1, uint64_t a2)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[97] = a1;
  v4 = *(*(sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30) - 8) + 64) + 15;
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[102] = v5;
  v6 = *(v5 - 8);
  v3[103] = v6;
  v7 = *(v6 + 64) + 15;
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v8 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v3[107] = swift_task_alloc();
  v9 = type metadata accessor for MACloudKVSRecord();
  v3[108] = v9;
  v10 = *(v9 - 8);
  v3[109] = v10;
  v11 = *(v10 + 64) + 15;
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();

  return _swift_task_switch(sub_1000CEC8C, v2, 0);
}

uint64_t sub_1000CEC8C()
{
  v203 = v0;
  v1 = *(v0 + 776);
  v2 = v1[1];
  v201 = *v1;
  v3 = qword_10012B750;

  if (v3 != -1)
  {
    swift_once();
    v1 = *(v0 + 776);
  }

  v4 = *(v0 + 896);
  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_10012B758);
  sub_1000DB4F4(v1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 896);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v202[0] = v11;
    *v10 = 136315138;
    v12 = (sub_1000C8064)();
    v14 = v13;
    sub_1000DB558(v9);
    v15 = sub_100065658(v12, v14, v202);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "saveKVSDataFromCloud: %s", v10, 0xCu);
    sub_10005D588(v11);
  }

  else
  {

    sub_1000DB558(v9);
  }

  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  sub_1000939A8(*(v0 + 784), v18, &unk_100129060, &qword_1000E7D50);
  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    sub_100066C80(*(v0 + 856), &unk_100129060, &qword_1000E7D50);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  else
  {
    v19 = *(v0 + 856);
    *(v0 + 200) = *(v0 + 864);
    *(v0 + 208) = sub_1000DB5B4(&qword_100129078, 255, type metadata accessor for MACloudKVSRecord);
    v20 = sub_10005D4D0((v0 + 176));
    sub_1000DB490(v19, v20);
  }

  v21 = *(v0 + 864);
  v22 = *(v0 + 776);
  v23 = sub_1000DB5B4(&qword_100129078, 255, type metadata accessor for MACloudKVSRecord);
  LOBYTE(v22) = sub_1000C1850(v0 + 176, v21, v23);
  sub_100066C80(v0 + 176, &unk_100129080, &qword_1000E7D60);
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = *(v0 + 776);
  v25 = *(v24 + 120);
  if (v25 >> 60 == 15)
  {
LABEL_24:

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Invalid serialized KVSRecord from cloud", v68, 2u);
    }

    v69 = *(v0 + 792);

    v70 = (*(*v69 + 328))();
    (*(**(v0 + 792) + 256))(*(v0 + 776));
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 760) = 0;
    v72 = [v70 putDictionay:isa attributes:0 error:v0 + 760];

    v73 = *(v0 + 760);
    if (!v72)
    {
      v75 = v73;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_29;
    }

    v74 = v73;
LABEL_21:
    v55 = *(v0 + 896);
    v56 = *(v0 + 888);
    v57 = *(v0 + 880);
    v58 = *(v0 + 856);
    v59 = *(v0 + 848);
    v60 = *(v0 + 840);
    v61 = *(v0 + 832);
    v62 = *(v0 + 808);
    v63 = *(v0 + 800);

    v64 = *(v0 + 8);
    goto LABEL_30;
  }

  v26 = *(v24 + 112);
  v27 = objc_opt_self();
  sub_10005F304(v26, v25);
  v28 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 752) = 0;
  v29 = [v27 propertyListWithData:v28 options:0 format:0 error:v0 + 752];

  v30 = *(v0 + 752);
  if (!v29)
  {
    v65 = v30;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v26, v25);
    goto LABEL_29;
  }

  v31 = v30;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10005F69C(v26, v25);
    goto LABEL_24;
  }

  v32 = *(v0 + 728);
  v33 = *(*(v0 + 776) + 32);
  v34 = sub_1000C619C(v33);
  if (!v35)
  {
    v86 = *(v0 + 880);
    v87 = *(v0 + 776);

    sub_1000DB4F4(v87, v86);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 880);
    if (v90)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v202[0] = v93;
      *v92 = 136315138;
      *(v0 + 736) = *(v91 + 32);
      type metadata accessor for MASDAssetType(0);
      sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      sub_1000DB558(v91);
      v97 = sub_100065658(v94, v96, v202);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v88, v89, "recordHandleField is not defined for %s", v92, 0xCu);
      sub_10005D588(v93);

      sub_10005F69C(v26, v25);
    }

    else
    {
      sub_10005F69C(v26, v25);

      sub_1000DB558(v91);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!*(v32 + 16))
  {

LABEL_36:

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v202[0] = v101;
      *v100 = 136315138;

      v102 = Dictionary.Keys.description.getter();
      v104 = v103;

      v105 = sub_100065658(v102, v104, v202);

      *(v100 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v98, v99, "recordHandle is not present in serialized row %s", v100, 0xCu);
      sub_10005D588(v101);
    }

    sub_10005F69C(v26, v25);

    goto LABEL_20;
  }

  v36 = sub_100065A98(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_100066130(*(v32 + 56) + 32 * v36, v0 + 248);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v198 = v32;
  v39 = *(v0 + 888);
  v40 = *(v0 + 712);
  v41 = *(v0 + 720);
  sub_1000DB4F4(*(v0 + 776), v39);
  v42 = *(v39 + 24);

  *(v39 + 16) = v40;
  *(v39 + 24) = v41;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v197 = v33;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = *(v0 + 888);
    v46 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v202[0] = v195;
    *v46 = 136315138;
    v47 = swift_beginAccess();
    v48 = sub_1000C8064(v47);
    v50 = sub_100065658(v48, v49, v202);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "record SyncDown saved in local cache: %s", v46, 0xCu);
    sub_10005D588(v195);
  }

  v51 = (**(v0 + 792) + 328);
  v52 = *v51;
  v53 = (*v51)();
  v54 = *(v0 + 888);
  v196 = v52;
  v106 = *(v0 + 792);
  v107 = v53;
  swift_beginAccess();
  (*(*v106 + 256))(v54);
  v108 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 744) = 0;
  v109 = [v107 putDictionay:v108 attributes:0 error:v0 + 744];

  v110 = *(v0 + 744);
  if (v109)
  {
    v111 = *(v0 + 824);
    v112 = *(v0 + 816);
    v113 = *(v0 + 808);
    sub_1000939A8(*(v0 + 776) + *(*(v0 + 864) + 68), v113, &qword_1001287D0, &qword_1000E6C30);
    v189 = *(v111 + 48);
    if (v189(v113, 1, v112) == 1)
    {
      v114 = *(v0 + 808);
      v115 = v110;
      sub_100066C80(v114, &qword_1001287D0, &qword_1000E6C30);
      v116 = v198;
    }

    else
    {
      v119 = *(v0 + 848);
      v120 = *(v0 + 824);
      v187 = *(v0 + 816);
      (*(v120 + 32))(v119, *(v0 + 808));
      v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;
      v123 = v110;
      Date.timeIntervalSinceReferenceDate.getter();
      *(v0 + 624) = &type metadata for Double;
      *(v0 + 600) = v124;
      sub_1000AF7F4((v0 + 600), (v0 + 632));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v202[0] = v198;
      sub_1000AEE80((v0 + 632), v185, v122, isUniquelyReferenced_nonNull_native);

      v116 = v202[0];
      (*(v120 + 8))(v119, v187);
    }

    v126 = *(v0 + 816);
    v127 = *(v0 + 800);
    sub_1000939A8(*(v0 + 776) + *(*(v0 + 864) + 72), v127, &qword_1001287D0, &qword_1000E6C30);
    if (v189(v127, 1, v126) == 1)
    {
      sub_100066C80(*(v0 + 800), &qword_1001287D0, &qword_1000E6C30);
      v128 = v116;
    }

    else
    {
      v129 = *(v0 + 840);
      v130 = *(v0 + 824);
      v199 = *(v0 + 816);
      (*(v130 + 32))(v129, *(v0 + 800));
      v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;
      Date.timeIntervalSinceReferenceDate.getter();
      *(v0 + 560) = &type metadata for Double;
      *(v0 + 536) = v133;
      sub_1000AF7F4((v0 + 536), (v0 + 568));
      v134 = swift_isUniquelyReferenced_nonNull_native();
      v202[0] = v116;
      sub_1000AEE80((v0 + 568), v192, v132, v134);

      v128 = v202[0];
      (*(v130 + 8))(v129, v199);
    }

    v186 = *(v0 + 832);
    v188 = *(v0 + 824);
    v190 = *(v0 + 816);
    v193 = *(v0 + 792);
    v200 = *(v0 + 776);
    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;
    *(v0 + 304) = &type metadata for String;
    *(v0 + 280) = v201;
    *(v0 + 288) = v2;
    sub_1000AF7F4((v0 + 280), (v0 + 312));

    v138 = swift_isUniquelyReferenced_nonNull_native();
    v202[0] = v128;
    sub_1000AEE80((v0 + 312), v135, v137, v138);

    v139 = v202[0];
    v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v142 = v141;
    *(v0 + 368) = &type metadata for UInt;
    *(v0 + 344) = 32;
    sub_1000AF7F4((v0 + 344), (v0 + 216));
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v202[0] = v139;
    sub_1000AEE80((v0 + 216), v140, v142, v143);

    v144 = v202[0];
    v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v147 = v146;
    *(v0 + 432) = &type metadata for UInt;
    *(v0 + 408) = 32;
    sub_1000AF7F4((v0 + 408), (v0 + 440));
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v202[0] = v144;
    sub_1000AEE80((v0 + 440), v145, v147, v148);

    v149 = v202[0];
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v151;
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v154 = v153;
    (*(v188 + 8))(v186, v190);
    *(v0 + 496) = &type metadata for Double;
    *(v0 + 472) = v154;
    sub_1000AF7F4((v0 + 472), (v0 + 504));
    v155 = swift_isUniquelyReferenced_nonNull_native();
    v202[0] = v149;
    sub_1000AEE80((v0 + 504), v150, v152, v155);

    v194 = *(v193 + 120);
    v191 = String._bridgeToObjectiveC()();
    v156 = v200[7];
    v157 = v200[8];
    v158 = String._bridgeToObjectiveC()();
    v159 = v200[9];
    v160 = v200[10];
    v161 = String._bridgeToObjectiveC()();
    v162 = v200[11];

    v163 = Dictionary._bridgeToObjectiveC()().super.isa;

    LODWORD(v162) = [v194 didReceiveKVSData:v191 assetType:v197 storeName:v158 storeGroup:v161 profileType:v162 data:v163];

    if (!v162)
    {

      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.error.getter();

      v167 = os_log_type_enabled(v165, v166);
      v168 = *(v0 + 888);
      if (v167)
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v202[0] = v170;
        *v169 = 136315138;
        v171 = sub_100065658(v201, v2, v202);

        *(v169 + 4) = v171;
        _os_log_impl(&_mh_execute_header, v165, v166, "Delegate failed to process didReceiveKVSData for recordName: %s", v169, 0xCu);
        sub_10005D588(v170);

        sub_10005F69C(v26, v25);
      }

      else
      {
        sub_10005F69C(v26, v25);
      }

      v172 = v168;
      goto LABEL_54;
    }

    v164 = *(v0 + 792);
    v173 = v196();
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    v175 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = v201;
    *(inited + 56) = v2;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v175, &qword_100129070, &qword_1000E7440);
    v176 = Dictionary._bridgeToObjectiveC()().super.isa;

    v177 = swift_initStackObject();
    *(v177 + 16) = xmmword_1000E61E0;
    *(v177 + 32) = 0x6B63416C61636F6CLL;
    v178 = v177 + 32;
    *(v177 + 72) = &type metadata for Int;
    *(v177 + 40) = 0xEA00000000006465;
    *(v177 + 48) = 1;
    sub_1000AF988(v177);
    swift_setDeallocating();
    sub_100066C80(v178, &qword_100129070, &qword_1000E7440);
    v179 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 768) = 0;
    v180 = [v173 updateFor:v176 value:v179 attributes:0 error:v0 + 768];

    v181 = *(v0 + 768);
    v182 = *(v0 + 888);
    if (v180)
    {
      v183 = v181;
      sub_10005F69C(v26, v25);
      v172 = v182;
LABEL_54:
      sub_1000DB558(v172);

      goto LABEL_21;
    }

    v184 = v181;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v26, v25);
    sub_1000DB558(v182);
  }

  else
  {
    v117 = *(v0 + 888);
    v118 = v110;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v26, v25);
    sub_1000DB558(v117);
  }

LABEL_29:
  v76 = *(v0 + 896);
  v77 = *(v0 + 888);
  v78 = *(v0 + 880);
  v79 = *(v0 + 856);
  v80 = *(v0 + 848);
  v81 = *(v0 + 840);
  v82 = *(v0 + 832);
  v83 = *(v0 + 808);
  v84 = *(v0 + 800);

  v64 = *(v0 + 8);
LABEL_30:

  return v64();
}

uint64_t sub_1000D0154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[89] = v7;
  v8[88] = a7;
  v8[87] = a6;
  v8[86] = a5;
  v8[85] = a4;
  v8[84] = a3;
  v8[83] = a2;
  v8[82] = a1;
  v9 = type metadata accessor for Date();
  v8[90] = v9;
  v10 = *(v9 - 8);
  v8[91] = v10;
  v11 = *(v10 + 64) + 15;
  v8[92] = swift_task_alloc();

  return _swift_task_switch(sub_1000D025C, v7, 0);
}

uint64_t sub_1000D025C()
{
  v97 = v0;
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[82];
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v6 = v5;
  v7 = (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 16);
  if (v8)
  {
    v85 = (v0 + 81);
    v86 = (v0 + 80);
    v95 = _swiftEmptyArrayStorage;
    v9 = (v0[82] + 40);
    v87 = v0;
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = HIBYTE(*v9) & 0xF;
      if ((*v9 & 0x2000000000000000) == 0)
      {
        v12 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12)
      {
        break;
      }

      v13 = v0[87];
      v14 = v0[86];
      v15 = v0[85];
      v16 = v0[84];
      v17 = *v9;

      v94 = sub_1000C6784(v11, v10, v16, v15, v14, v13);
      v19 = v18;

      v93 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_10006554C(0, *(v95 + 2) + 1, 1, v95);
      }

      v21 = *(v95 + 2);
      v20 = *(v95 + 3);
      v88 = v8;
      v89 = v9;
      v92 = v11;
      if (v21 >= v20 >> 1)
      {
        v95 = sub_10006554C((v20 > 1), v21 + 1, 1, v95);
      }

      v22 = v0[89];
      v23 = v0[87];
      v90 = v0[86];
      v91 = v0[88];
      v24 = v0[85];
      v25 = v0[84];
      v26 = v0[83];
      *(v95 + 2) = v21 + 1;
      v27 = &v95[16 * v21];
      v28 = v93;
      *(v27 + 4) = v94;
      *(v27 + 5) = v93;
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E7D00;
      *(inited + 32) = 0x614E64726F636572;
      *(inited + 40) = 0xEA0000000000656DLL;
      *(inited + 48) = v94;
      *(inited + 56) = v93;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 80), "recordHandle");
      *(inited + 93) = 0;
      *(inited + 94) = -5120;
      *(inited + 96) = v92;
      *(inited + 104) = v10;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 1701869940;
      *(inited + 136) = 0xE400000000000000;
      *(inited + 144) = v26;
      *(inited + 168) = &type metadata for UInt;
      *(inited + 176) = 0x6D614E65726F7473;
      *(inited + 184) = 0xE900000000000065;
      *(inited + 192) = v25;
      *(inited + 200) = v24;
      *(inited + 216) = &type metadata for String;
      *(inited + 224) = 0x6F724765726F7473;
      *(inited + 232) = 0xEA00000000007075;
      *(inited + 240) = v90;
      *(inited + 248) = v23;
      *(inited + 264) = &type metadata for String;
      *(inited + 272) = 0x54656C69666F7270;
      *(inited + 280) = 0xEB00000000657079;
      *(inited + 288) = v91;
      *(inited + 312) = &type metadata for UInt;
      *(inited + 320) = 0x74617453636E7973;
      *(inited + 328) = 0xE900000000000065;

      *(inited + 336) = sub_1000C1778(10);
      *(inited + 360) = &type metadata for Int;
      *(inited + 368) = 0x6144636E79536B63;
      *(inited + 376) = 0xEA00000000006574;
      *(inited + 408) = &type metadata for Double;
      *(inited + 384) = v6;
      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();
      if ((*(*v22 + 320))(v94, v93))
      {
        v0 = v87;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100066000(v30, qword_10012B758);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v96[0] = v34;
          *v33 = 136315138;
          v35 = Dictionary.description.getter();
          v37 = v36;

          v38 = v35;
          v28 = v93;
          v39 = sub_100065658(v38, v37, v96);

          *(v33 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v31, v32, "Update to be deleted KVSRecord: %s in local cache", v33, 0xCu);
          sub_10005D588(v34);
        }

        else
        {
        }

        v55 = (*(*v87[89] + 328))(v40);
        v56 = swift_initStackObject();
        *(v56 + 16) = xmmword_1000E61E0;
        *(v56 + 32) = 0x614E64726F636572;
        v57 = v56 + 32;
        *(v56 + 72) = &type metadata for String;
        *(v56 + 40) = 0xEA0000000000656DLL;
        *(v56 + 48) = v94;
        *(v56 + 56) = v28;
        sub_1000AF988(v56);
        swift_setDeallocating();
        sub_100066C80(v57, &qword_100129070, &qword_1000E7440);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v59 = swift_initStackObject();
        *(v59 + 16) = xmmword_1000E6C00;
        *(v59 + 32) = 0x74617453636E7973;
        *(v59 + 40) = 0xE900000000000065;
        *(v59 + 48) = sub_1000C1778(10);
        *(v59 + 72) = &type metadata for Int;
        *(v59 + 80) = 0x6144636E79536B63;
        *(v59 + 88) = 0xEA00000000006574;
        *(v59 + 120) = &type metadata for Double;
        *(v59 + 96) = v6;
        sub_1000AF988(v59);
        swift_setDeallocating();
        swift_arrayDestroy();
        v60 = Dictionary._bridgeToObjectiveC()().super.isa;

        *v85 = 0;
        v61 = [v55 updateFor:isa value:v60 attributes:0 error:v85];

        v54 = *v85;
        if ((v61 & 1) == 0)
        {
          goto LABEL_35;
        }

        v50 = v88;
        v44 = v89;
      }

      else
      {

        v0 = v87;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100066000(v41, qword_10012B758);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();

        v44 = v89;
        if (os_log_type_enabled(v42, v43))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v96[0] = v46;
          *v45 = 136315138;
          v47 = Dictionary.description.getter();
          v49 = sub_100065658(v47, v48, v96);

          *(v45 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "Adding to be deleted KVSRecord: %s to local cache", v45, 0xCu);
          sub_10005D588(v46);
        }

        v50 = v88;
        v51 = (*(*v87[89] + 328))();
        v52 = Dictionary._bridgeToObjectiveC()().super.isa;

        *v86 = 0;
        v53 = [v51 putDictionay:v52 attributes:0 error:v86];

        v54 = *v86;
        if (!v53)
        {
LABEL_35:
          v76 = v54;

          _convertNSErrorToError(_:)();

          goto LABEL_38;
        }
      }

      v7 = v54;
      v9 = v44 + 2;
      v8 = v50 - 1;
      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v69 = *v9;

    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100066000(v70, qword_10012B758);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v96[0] = v74;
      *v73 = 136315138;
      v75 = sub_100065658(v11, v10, v96);

      *(v73 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v71, v72, "KVSData recordHandle: %s to be deleted contain empty recordHandle", v73, 0xCu);
      sub_10005D588(v74);
    }

    else
    {
    }

    sub_1000B9568();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    sub_100092A98();
    swift_allocError();
    *v83 = v78;
    *(v83 + 8) = v80;
    *(v83 + 16) = v82;
LABEL_38:
    swift_willThrow();
    v84 = v0[92];

    v68 = v0[1];
  }

  else
  {
    v95 = _swiftEmptyArrayStorage;
LABEL_26:
    v0[93] = v95;
    v62 = (*(*v0[89] + 176))(v7);
    v0[94] = v62;
    if (v62)
    {
      v63 = swift_task_alloc();
      v0[95] = v63;
      *v63 = v0;
      v63[1] = sub_1000D0F2C;
      v64 = v0[83];

      return sub_10007D9B8(v95, v64);
    }

    v66 = v0[93];
    v67 = v0[92];

    v68 = v0[1];
  }

  return v68();
}

uint64_t sub_1000D0F2C()
{
  v2 = *(*v1 + 760);
  v3 = *v1;
  v3[96] = v0;

  if (v0)
  {
    v4 = v3[89];

    return _swift_task_switch(sub_1000D10D0, v4, 0);
  }

  else
  {
    v5 = v3[94];

    v6 = v3[93];
    v7 = v3[92];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1000D10D0()
{
  v1 = v0[94];
  v2 = v0[93];

  v3 = v0[96];
  v4 = v0[92];

  v5 = v0[1];

  return v5();
}

id sub_1000D1174(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 328))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = 0;
    v10 = [v7 deleteFor:isa attributes:0 error:&v12];

    if (v10)
    {
      return v12;
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000D1358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for MACloudKVSRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 328))(v11);
  if (!v4)
  {
    v15 = result;
    v27 = a3;
    v28 = v9;
    v29 = 0;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = 0;
    v18 = [v15 queryDictionaryFor:isa attributes:0 error:&v30];

    v19 = v30;
    if (v18)
    {
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v19;

      if (*(v20 + 16))
      {
        v22 = v29;
        (*(*v3 + 264))(v20);

        v23 = v28;
        if (!v22)
        {
          v24 = v27;
          sub_1000DB490(v13, v27);
          return (*(v23 + 56))(v24, 0, 1, v8);
        }
      }

      else
      {
        (*(v28 + 56))(v27, 1, 1, v8);
      }
    }

    else
    {
      v25 = v30;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1000D16AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v42 = a1;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = sub_1000AF988(_swiftEmptyArrayStorage);
  v18 = type metadata accessor for MACloudKVSRecord();
  v19 = (a3 + v18[16]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v52 = &type metadata for String;
    *&v51 = v21;
    *(&v51 + 1) = v20;
    sub_1000AF7F4(&v51, v50);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v17;
    sub_1000AEE80(v50, 0x676154456B63, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v17 = v49;
  }

  v23 = v18[17];
  v45 = a3;
  sub_1000939A8(a3 + v23, v9, &qword_1001287D0, &qword_1000E6C30);
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    v25 = v11;
    sub_100066C80(v9, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    Date.timeIntervalSinceReferenceDate.getter();
    v52 = &type metadata for Double;
    *&v51 = v26;
    sub_1000AF7F4(&v51, v50);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v17;
    sub_1000AEE80(v50, 0x6574616572436B63, 0xED00006574614464, v27);
    v25 = v11;
    (*(v11 + 8))(v16, v10);
    v17 = v49;
  }

  v28 = v46;
  sub_1000939A8(v45 + v18[18], v46, &qword_1001287D0, &qword_1000E6C30);
  if (v24(v28, 1, v10) == 1)
  {
    v29 = sub_100066C80(v28, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v30 = v44;
    (*(v25 + 32))(v44, v28, v10);
    Date.timeIntervalSinceReferenceDate.getter();
    v52 = &type metadata for Double;
    *&v51 = v31;
    sub_1000AF7F4(&v51, v50);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v17;
    sub_1000AEE80(v50, 0x696669646F4D6B63, 0xEE00657461446465, v32);
    v29 = (*(v25 + 8))(v30, v10);
  }

  v33 = v48;
  v34 = (*(*v47 + 328))(v29);
  if (v33)
  {
  }

  v36 = v34;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v42;
  *(inited + 56) = v43;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v51 = 0;
  v40 = [v36 updateFor:isa value:v39 attributes:0 error:&v51];

  if (v40)
  {
    return v51;
  }

  v41 = v51;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

BOOL sub_1000D1CA8(uint64_t a1, uint64_t a2)
{
  v6 = (*(*v2 + 328))();
  if (!v3)
  {
    v8 = v6;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = String._bridgeToObjectiveC()();
    v20 = 0;
    v21 = 0;
    v12 = [v8 queryForColumn:isa column:v11 attributes:0 values:&v21 error:&v20];

    v13 = v21;
    v14 = v20;
    if (v12)
    {
      if (v13)
      {
        v15 = v13;
        v16 = [v15 count];

        return v16 > 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = v14;
      v18 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_1000D1ED0()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000D1F20()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D1F80()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_1000D2010, v0, 0);
}

uint64_t sub_1000D2010()
{
  v1 = (*(**(v0 + 24) + 328))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v9 = *(v0 + 8);
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_1000D21B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000D21D0, v1, 0);
}

uint64_t sub_1000D21D0()
{
  v1 = *(v0 + 16);
  v2 = *(**(v0 + 24) + 184);

  v2(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000D225C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000D2280, v2, 0);
}

uint64_t sub_1000D2280()
{
  v23 = v0;
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_10012B758);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v21 = v0[3];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = (*(*v6 + 200))();
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_100065658(v9, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (v21)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if (v21)
    {
      v14 = v1;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_100065658(v13, v14, &v22);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Update account identifier from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[3];
  v17 = v0[2];
  v18 = *(*v0[4] + 208);

  v18(v17, v16);
  v19 = v0[1];

  return v19();
}

uint64_t sub_1000D24EC()
{
  *(v1 + 360) = v0;

  return _swift_task_switch(sub_1000D257C, v0, 0);
}

uint64_t sub_1000D257C()
{
  v1 = v0[45];
  v2 = *(*v1 + 200);
  v3 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0xFCE0000000000000;
  v0[46] = v2;
  v0[47] = v3;
  v2();
  if (v4)
  {
  }

  else
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_10012B758);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v15, 2u);
    }

    v16 = v0[45];

    v17 = (*(*v16 + 176))();
    v0[48] = v17;
    if (v17)
    {
      v18 = *(*v17 + 216);
      v74 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[49] = v20;
      *v20 = v0;
      v20[1] = sub_1000D2F90;
      v21 = v74;

      return v21();
    }

    v5 = (*(*v0[45] + 208))(0, 0);
  }

  v6 = v0[47];
  v7 = v0[45];
  v8 = (v0[46])(v5);
  if (!v9)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100066000(v23, qword_10012B758);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "account identifier is unknown for querying cloud KVData size", v26, 2u);
    }

    sub_1000B9568();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_100092A98();
    swift_allocError();
    *v33 = v28;
    *(v33 + 8) = v30;
    *(v33 + 16) = v32;
    goto LABEL_18;
  }

  v10 = v8;
  v11 = v9;
  v76 = (*(*v0[45] + 328))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v10;
  v73 = v10;
  *(inited + 56) = v11;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1000E61E0;
  *(v36 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v36 + 40) = v37;
  *(v36 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v36 + 48) = &off_100118928;
  sub_1000AF988(v36);
  swift_setDeallocating();
  sub_100066C80(v36 + 32, &qword_100129070, &qword_1000E7440);
  v38 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[42] = 0;
  v39 = [v76 queryRowDictionariesFor:isa attributes:v38 error:v0 + 42];

  v40 = v0[42];
  if (!v39)
  {
    v67 = v40;

    _convertNSErrorToError(_:)();

LABEL_18:
    swift_willThrow();
    v21 = v0[1];

    return v21();
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v40;

  v43 = *(v41 + 16);
  if (v43)
  {
    v75 = 0;
    v44 = v41 + 32;
    v77 = _swiftEmptyArrayStorage;
    while (1)
    {
      v46 = *v44;
      if (*(*v44 + 16))
      {
        v47 = *v44;

        v48 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v49)
        {
          sub_100066130(*(v46 + 56) + 32 * v48, (v0 + 22));
          if (swift_dynamicCast())
          {
            v50 = v0[39];
            if (*(v46 + 16))
            {
              v51 = v0[38];
              v52 = sub_100065A98(0x657A695361746164, 0xE800000000000000);
              if (v53 & 1) != 0 && (sub_100066130(*(v46 + 56) + 32 * v52, (v0 + 26)), (swift_dynamicCast()) && *(v46 + 16) && (v72 = v0[43], v54 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v55) && (sub_100066130(*(v46 + 56) + 32 * v54, (v0 + 30)), (swift_dynamicCast()) && (v70 = v0[44], v70 >= sub_1000C1778(2)) && v70 < sub_1000C1778(4))
              {
                v56 = __OFADD__(v75, v72);
                v75 += v72;
                if (v56)
                {
                  __break(1u);
                }

                if (*(v46 + 16) && (v57 = sub_100065A98(0x614864726F636572, 0xEC000000656C646ELL), (v58 & 1) != 0))
                {
                  sub_100066130(*(v46 + 56) + 32 * v57, (v0 + 34));

                  v59 = swift_dynamicCast();
                  if (v59)
                  {
                    v60 = v0[40];
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if (v59)
                  {
                    v61 = v0[41];
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v69 = v61;
                }

                else
                {

                  v60 = 0;
                  v69 = 0;
                }

                v71 = v60;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v77 = sub_1000DAD0C(0, v77[2] + 1, 1, v77);
                }

                v63 = v77[2];
                v62 = v77[3];
                v64 = v63 + 1;
                if (v63 >= v62 >> 1)
                {
                  v66 = sub_1000DAD0C((v62 > 1), v63 + 1, 1, v77);
                  v64 = v63 + 1;
                  v77 = v66;
                }

                v77[2] = v64;
                v65 = &v77[5 * v63];
                v65[4] = v51;
                v65[5] = v50;
                v65[6] = v71;
                v65[7] = v69;
                v65[8] = v72;
              }

              else
              {
              }

              goto LABEL_27;
            }

            v45 = v0[39];
          }
        }
      }

LABEL_27:
      v44 += 8;
      if (!--v43)
      {
        goto LABEL_58;
      }
    }
  }

  v75 = 0;
  v77 = _swiftEmptyArrayStorage;
LABEL_58:

  v68 = v0[1];

  return v68(v73, v11, v75, v77);
}

uint64_t sub_1000D2F90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 392);
  v13 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v8 = v6[45];
    v9 = sub_1000A7080;
  }

  else
  {
    v10 = v6[48];
    v11 = v6[45];

    v6[51] = a2;
    v6[52] = a1;
    v9 = sub_1000D3118;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000D3118()
{
  v1 = *(v0 + 400);
  v2 = (*(**(v0 + 360) + 208))(*(v0 + 416), *(v0 + 408));
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = (*(v0 + 368))(v2);
  if (!v6)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100066000(v10, qword_10012B758);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "account identifier is unknown for querying cloud KVData size", v13, 2u);
    }

    sub_1000B9568();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_100092A98();
    swift_allocError();
    *v20 = v15;
    *(v20 + 8) = v17;
    *(v20 + 16) = v19;
    goto LABEL_9;
  }

  v7 = v5;
  v8 = v6;
  v9 = (*(**(v0 + 360) + 328))();
  if (v1)
  {

LABEL_10:
    v21 = *(v0 + 8);

    return v21();
  }

  v64 = v9;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v7;
  v62 = v7;
  *(inited + 56) = v8;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1000E61E0;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  *(v25 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v25 + 48) = &off_100118928;
  sub_1000AF988(v25);
  swift_setDeallocating();
  sub_100066C80(v25 + 32, &qword_100129070, &qword_1000E7440);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 336) = 0;
  v28 = [v64 queryRowDictionariesFor:isa attributes:v27 error:v0 + 336];

  v29 = *(v0 + 336);
  if (!v28)
  {
    v56 = v29;

    _convertNSErrorToError(_:)();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v29;

  v32 = *(v30 + 16);
  if (v32)
  {
    v63 = 0;
    v33 = v30 + 32;
    v65 = _swiftEmptyArrayStorage;
    while (1)
    {
      v35 = *v33;
      if (*(*v33 + 16))
      {
        v36 = *v33;

        v37 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v38)
        {
          sub_100066130(*(v35 + 56) + 32 * v37, v0 + 176);
          if (swift_dynamicCast())
          {
            v39 = *(v0 + 312);
            if (*(v35 + 16))
            {
              v40 = *(v0 + 304);
              v41 = sub_100065A98(0x657A695361746164, 0xE800000000000000);
              if (v42 & 1) != 0 && (sub_100066130(*(v35 + 56) + 32 * v41, v0 + 208), (swift_dynamicCast()) && *(v35 + 16) && (v61 = *(v0 + 344), v43 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v44) && (sub_100066130(*(v35 + 56) + 32 * v43, v0 + 240), (swift_dynamicCast()) && (v59 = *(v0 + 352), v59 >= sub_1000C1778(2)) && v59 < sub_1000C1778(4))
              {
                v45 = __OFADD__(v63, v61);
                v63 += v61;
                if (v45)
                {
                  __break(1u);
                }

                if (*(v35 + 16) && (v46 = sub_100065A98(0x614864726F636572, 0xEC000000656C646ELL), (v47 & 1) != 0))
                {
                  sub_100066130(*(v35 + 56) + 32 * v46, v0 + 272);

                  v48 = swift_dynamicCast();
                  if (v48)
                  {
                    v49 = *(v0 + 320);
                  }

                  else
                  {
                    v49 = 0;
                  }

                  if (v48)
                  {
                    v50 = *(v0 + 328);
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v58 = v50;
                }

                else
                {

                  v49 = 0;
                  v58 = 0;
                }

                v60 = v49;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v65 = sub_1000DAD0C(0, v65[2] + 1, 1, v65);
                }

                v52 = v65[2];
                v51 = v65[3];
                v53 = v52 + 1;
                if (v52 >= v51 >> 1)
                {
                  v55 = sub_1000DAD0C((v51 > 1), v52 + 1, 1, v65);
                  v53 = v52 + 1;
                  v65 = v55;
                }

                v65[2] = v53;
                v54 = &v65[5 * v52];
                v54[4] = v40;
                v54[5] = v39;
                v54[6] = v60;
                v54[7] = v58;
                v54[8] = v61;
              }

              else
              {
              }

              goto LABEL_18;
            }

            v34 = *(v0 + 312);
          }
        }
      }

LABEL_18:
      v33 += 8;
      if (!--v32)
      {
        goto LABEL_49;
      }
    }
  }

  v63 = 0;
  v65 = _swiftEmptyArrayStorage;
LABEL_49:

  v57 = *(v0 + 8);

  return v57(v62, v8, v63, v65);
}

uint64_t sub_1000D38EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D398C, v3, 0);
}

uint64_t sub_1000D398C()
{
  v23 = v0;
  v1 = *(v0 + 48);
  (*(**(v0 + 40) + 304))(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 48);
  v3 = type metadata accessor for MACloudKVSRecord();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_100066C80(v2, &unk_100129060, &qword_1000E7D50);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v5 = type metadata accessor for Logger();
    sub_100066000(v5, qword_10012B758);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 24);
      v8 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100065658(v9, v8, &v22);
      _os_log_impl(&_mh_execute_header, v6, v7, "failed to fetch local record for recordName: %s", v10, 0xCu);
      sub_10005D588(v11);
    }

    sub_1000B9568();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_100092A98();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    swift_willThrow();
    v19 = *(v0 + 48);

    v20 = *(v0 + 8);
  }

  else
  {
    sub_1000DB490(v2, *(v0 + 16));

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1000D3C20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for MACloudKVSRecord();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3D18, v1, 0);
}

uint64_t sub_1000D3D18()
{
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012B758);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting createCKRecord %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  v13 = [v12 recordName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  (*(*v11 + 304))(v14, v16);
  v17 = v0[5];
  v18 = v0[6];
  v19 = v0[4];

  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_100066C80(v0[4], &unk_100129060, &qword_1000E7D50);
    v20 = 0;
  }

  else
  {
    v25 = v0[2];
    sub_1000DB490(v0[4], v0[7]);
    sub_100092C8C(0, &unk_100129090, CKRecord_ptr);
    v26 = v25;
    v27._countAndFlagsBits = 0x726F7453564B414DLL;
    v27._object = 0xE900000000000065;
    isa = CKRecord.init(recordType:recordID:)(v27, v26).super.isa;
    sub_1000C88CC(isa);
    v20 = isa;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v20;
      *v32 = v20;
      v33 = v20;
      _os_log_impl(&_mh_execute_header, v29, v30, "fetchLocalRecord returns %@", v31, 0xCu);
      sub_100066C80(v32, &qword_1001287F0, &qword_1000E6C40);
    }

    sub_1000DB558(v0[7]);
  }

  v21 = v0[7];
  v22 = v0[4];

  v23 = v0[1];

  return v23(v20);
}

uint64_t sub_1000D40F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000D4114, v1, 0);
}

uint64_t sub_1000D4114()
{
  v15 = v0;
  v1 = [*(v0 + 16) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012B758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Upload completed for %s, upload local sync state to uploaded", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = *(v0 + 24);
  sub_1000D4308(v3, v5, *(v0 + 16));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000D4308(uint64_t a1, uint64_t a2, void *a3)
{
  v229 = a3;
  *&v226 = a1;
  *(&v226 + 1) = a2;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v221 = &v215 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v220 = &v215 - v8;
  v9 = sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v225 = &v215 - v11;
  v12 = type metadata accessor for MACloudKVSRecord();
  v223 = *(v12 - 8);
  v224 = v12;
  v13 = *(v223 + 64);
  v14 = __chkstk_darwin(v12);
  v222 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v215 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v219 = &v215 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v218 = &v215 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v215 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v215 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v215 - v32;
  v34 = *(*v3 + 200);
  v231 = v3;
  v35 = v34(v31);
  if (!v36)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100066000(v70, qword_10012B758);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "account identifier is unknown for uploading status", v73, 2u);
    }

    goto LABEL_14;
  }

  v37 = v35;
  v38 = v36;
  v217 = v17;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v40 = v39;
  v216 = v19;
  v227 = *(v19 + 8);
  v228 = v19 + 8;
  v227(v33, v18);
  v41 = sub_1000AF988(_swiftEmptyArrayStorage);
  v42 = sub_1000C1778(2);
  v236 = &type metadata for Int;
  *&v235 = v42;
  sub_1000AF7F4(&v235, v234);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v233 = v41;
  sub_1000AEE80(v234, 0x74617453636E7973, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v44 = v233;
  v236 = &type metadata for String;
  *&v235 = v37;
  *(&v235 + 1) = v38;
  sub_1000AF7F4(&v235, v234);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v233 = v44;
  sub_1000AEE80(v234, 0x634164726F636572, 0xED0000746E756F63, v45);
  v46 = v233;
  v236 = &type metadata for Double;
  *&v235 = v40;
  sub_1000AF7F4(&v235, v234);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v233 = v46;
  sub_1000AEE80(v234, 0x6144636E79536B63, 0xEA00000000006574, v47);
  v48 = v233;
  v49 = v229;
  v50 = [v229 etag];
  v51 = v18;
  if (v50)
  {
    v52 = v50;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v236 = &type metadata for String;
    *&v235 = v53;
    *(&v235 + 1) = v55;
    v51 = v18;
    sub_1000AF7F4(&v235, v234);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v233 = v48;
    sub_1000AEE80(v234, 0x676154456B63, 0xE600000000000000, v56);
    v48 = v233;
  }

  v57 = v231;
  v58 = [v49 creationDate];
  v59 = v227;
  if (v58)
  {
    v60 = v58;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v236 = &type metadata for Double;
    *&v235 = v61;
    sub_1000AF7F4(&v235, v234);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v233 = v48;
    sub_1000AEE80(v234, 0x6574616572436B63, 0xED00006574614464, v62);
    v59(v30, v51);
    v48 = v233;
  }

  v63 = [v49 modificationDate];
  if (v63)
  {
    v64 = v63;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v236 = &type metadata for Double;
    *&v235 = v65;
    sub_1000AF7F4(&v235, v234);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v233 = v48;
    sub_1000AEE80(v234, 0x696669646F4D6B63, 0xEE00657461446465, v66);
    v59(v27, v51);
  }

  v67 = v230;
  v68 = (*(*v57 + 328))();
  if (v67)
  {
  }

  v81 = v68;
  v229 = v51;
  v230 = 0;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1000E61E0;
  *(v82 + 32) = 0x614E64726F636572;
  *(v82 + 72) = &type metadata for String;
  v83 = v226;
  *(v82 + 40) = 0xEA0000000000656DLL;
  *(v82 + 48) = v83;

  sub_1000AF988(v82);
  swift_setDeallocating();
  sub_100066C80(v82 + 32, &qword_100129070, &qword_1000E7440);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v85 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v235 = 0;
  v86 = [v81 updateFor:isa value:v85 attributes:0 error:&v235];

  if (!v86)
  {
    v95 = v235;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v87 = *(*v231 + 304);
  v88 = v235;
  v89 = v225;
  v90 = v230;
  result = v87(v83, *(&v83 + 1));
  if (v90)
  {
    return result;
  }

  if ((*(v223 + 48))(v89, 1, v224) == 1)
  {
    sub_100066C80(v89, &unk_100129060, &qword_1000E7D50);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100066000(v91, qword_10012B758);

    v71 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v235 = v94;
      *v93 = 136315138;
      *(v93 + 4) = sub_100065658(v83, *(&v83 + 1), &v235);
      _os_log_impl(&_mh_execute_header, v71, v92, "Failed to fetch local record for synced up record %s", v93, 0xCu);
      sub_10005D588(v94);
    }

LABEL_14:

    sub_1000B9568();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    sub_100092A98();
    swift_allocError();
    *v80 = v75;
    *(v80 + 8) = v77;
    *(v80 + 16) = v79;
    return swift_willThrow();
  }

  v96 = v217;
  sub_1000DB490(v89, v217);
  v97 = v96[4];
  v98 = sub_1000C619C(v97);
  if (!v99)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100066000(v101, qword_10012B758);
    v102 = v217;
    v103 = v222;
    sub_1000DB4F4(v217, v222);
    v104 = *(&v226 + 1);

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *&v235 = swift_slowAlloc();
      *v107 = 136315394;
      *&v234[0] = *(v103 + 32);
      type metadata accessor for MASDAssetType(0);
      sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      sub_1000DB558(v103);
      v111 = sub_100065658(v108, v110, &v235);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      *(v107 + 14) = sub_100065658(v226, v104, &v235);
      _os_log_impl(&_mh_execute_header, v105, v106, "recordHandleField is not configured for assetType %s, failed record name: %s", v107, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000DB558(v103);
    }

    sub_1000B9568();
    v136 = v135;
    v138 = v137;
    v140 = v139;
    sub_100092A98();
    swift_allocError();
    *v141 = v136;
    *(v141 + 8) = v138;
    *(v141 + 16) = v140;
    swift_willThrow();
    v142 = v102;
    return sub_1000DB558(v142);
  }

  v100 = v96[15];
  v230 = 0;
  if (v100 >> 60 == 15)
  {
    goto LABEL_42;
  }

  v223 = v98;
  v112 = v99;
  v113 = v96[14];
  v114 = objc_opt_self();
  sub_10005F304(v113, v100);
  v115 = Data._bridgeToObjectiveC()().super.isa;
  *&v235 = 0;
  v116 = [v114 propertyListWithData:v115 options:0 format:0 error:&v235];

  if (!v116)
  {
    v143 = v235;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v113, v100);
    v142 = v96;
    return sub_1000DB558(v142);
  }

  v225 = v113;
  v117 = v235;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  if (swift_dynamicCast())
  {
    v233 = *&v234[0];
    v118 = v217;
    v119 = v217[3];
    if (v119)
    {
      v215 = v217[2];
      sub_1000AE570(v223, v112, &v235);

      sub_100066C80(&v235, &unk_100128830, &qword_1000E7D40);
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;
      v236 = &type metadata for Int;
      *&v235 = 0;
      sub_1000AF7F4(&v235, v234);
      v123 = v233;
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v232 = v123;
      sub_1000AEE80(v234, v120, v122, v124);

      v125 = v232;
      v233 = v232;
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;
      v236 = &type metadata for String;
      v235 = v226;
      sub_1000AF7F4(&v235, v234);

      v129 = swift_isUniquelyReferenced_nonNull_native();
      v232 = v125;
      sub_1000AEE80(v234, v126, v128, v129);

      v130 = v232;
      v233 = v232;
      v131 = v220;
      sub_1000939A8(v118 + *(v224 + 68), v220, &qword_1001287D0, &qword_1000E6C30);
      v132 = v216;
      v133 = *(v216 + 48);
      v134 = v229;
      if (v133(v131, 1, v229) == 1)
      {
        sub_100066C80(v131, &qword_1001287D0, &qword_1000E6C30);
      }

      else
      {
        v165 = v218;
        (*(v132 + 32))(v218, v131, v134);
        v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v223 = v119;
        v167 = v166;
        Date.timeIntervalSinceReferenceDate.getter();
        v236 = &type metadata for Double;
        *&v235 = v168;
        sub_1000AF7F4(&v235, v234);
        v169 = v233;
        v170 = swift_isUniquelyReferenced_nonNull_native();
        v232 = v169;
        sub_1000AEE80(v234, v220, v167, v170);

        v227(v165, v134);
        v130 = v232;
        v233 = v232;
      }

      v171 = v221;
      sub_1000939A8(v217 + *(v224 + 72), v221, &qword_1001287D0, &qword_1000E6C30);
      v172 = v133(v171, 1, v134);
      v222 = v100;
      if (v172 == 1)
      {
        sub_100066C80(v171, &qword_1001287D0, &qword_1000E6C30);
      }

      else
      {
        v173 = v219;
        (*(v132 + 32))(v219, v171, v134);
        v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v175;
        Date.timeIntervalSinceReferenceDate.getter();
        v236 = &type metadata for Double;
        *&v235 = v177;
        sub_1000AF7F4(&v235, v234);
        v178 = v233;
        v179 = swift_isUniquelyReferenced_nonNull_native();
        v232 = v178;
        sub_1000AEE80(v234, v174, v176, v179);

        v227(v173, v134);
        v130 = v232;
        v233 = v232;
      }

      v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v182 = v181;
      v236 = &type metadata for UInt;
      *&v235 = 512;
      sub_1000AF7F4(&v235, v234);
      v183 = swift_isUniquelyReferenced_nonNull_native();
      v232 = v130;
      sub_1000AEE80(v234, v180, v182, v183);

      v184 = v232;
      v233 = v232;
      v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v187 = v186;
      v236 = &type metadata for Double;
      *&v235 = v40;
      sub_1000AF7F4(&v235, v234);
      v188 = swift_isUniquelyReferenced_nonNull_native();
      v232 = v184;
      sub_1000AEE80(v234, v185, v187, v188);

      v189 = v231[15];
      v190 = String._bridgeToObjectiveC()();
      v191 = v217;
      v192 = v217[7];
      v193 = v217[8];
      v194 = String._bridgeToObjectiveC()();
      v195 = v191[9];
      v196 = v191[10];
      v197 = String._bridgeToObjectiveC()();
      v198 = v191[11];
      v199 = Dictionary._bridgeToObjectiveC()().super.isa;

      LODWORD(v184) = [v189 didSyncUpKVSData:v190 assetType:v97 storeName:v194 storeGroup:v197 profileType:v198 data:v199];

      if (v184)
      {
        v200 = v222;
        v201 = v225;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v202 = type metadata accessor for Logger();
        sub_100066000(v202, qword_10012B758);
        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.info.getter();
        v205 = os_log_type_enabled(v203, v204);
        v154 = v217;
        if (v205)
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&_mh_execute_header, v203, v204, "Delegate notified that KVS data was synced up", v206, 2u);
        }

        sub_10005F69C(v201, v200);
      }

      else
      {
        v207 = v222;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v208 = type metadata accessor for Logger();
        sub_100066000(v208, qword_10012B758);
        v209 = *(&v226 + 1);

        v210 = Logger.logObject.getter();
        v211 = static os_log_type_t.error.getter();

        v212 = os_log_type_enabled(v210, v211);
        v154 = v217;
        if (v212)
        {
          v213 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          *&v235 = v214;
          *v213 = 136315138;
          *(v213 + 4) = sub_100065658(v226, v209, &v235);
          _os_log_impl(&_mh_execute_header, v210, v211, "Delegate failed to process didSyncUpKVSData for recordName: %s", v213, 0xCu);
          sub_10005D588(v214);
        }

        sub_10005F69C(v225, v207);
      }
    }

    else
    {

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v149 = type metadata accessor for Logger();
      sub_100066000(v149, qword_10012B758);
      v150 = *(&v226 + 1);

      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();

      v153 = os_log_type_enabled(v151, v152);
      v154 = v217;
      v155 = v226;
      if (v153)
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        *&v235 = v157;
        *v156 = 136315138;
        *(v156 + 4) = sub_100065658(v155, v150, &v235);
        _os_log_impl(&_mh_execute_header, v151, v152, "recordHandle not found for synced up record with recordName %s", v156, 0xCu);
        sub_10005D588(v157);
      }

      sub_1000B9568();
      v159 = v158;
      v161 = v160;
      v163 = v162;
      sub_100092A98();
      swift_allocError();
      *v164 = v159;
      *(v164 + 8) = v161;
      *(v164 + 16) = v163;
      swift_willThrow();
      sub_10005F69C(v225, v100);
    }

    v142 = v154;
    return sub_1000DB558(v142);
  }

  sub_10005F69C(v225, v100);
LABEL_42:

  v144 = v217;
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v145 = type metadata accessor for Logger();
  sub_100066000(v145, qword_10012B758);
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    *v148 = 0;
    _os_log_impl(&_mh_execute_header, v146, v147, "Invalid serialized KVSRecord from cloud", v148, 2u);
  }

  return sub_1000DB558(v144);
}

uint64_t sub_1000D5A90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACloudKVSRecord();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5B94, v1, 0);
}

uint64_t sub_1000D5B94()
{
  v71 = v0;
  v1 = [*(v0 + 16) recordName];
  v2 = v1;
  v3 = v1;
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *(*v5 + 304);
  v10 = v1;
  v9(v6, v8);
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  sub_1000939A8(*(v0 + 64), v11, &unk_100129060, &qword_1000E7D50);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = *(v0 + 56);
  if (v14 != 1)
  {
    v28 = *(v0 + 48);
    v29 = *(v0 + 24);

    sub_1000DB490(v15, v28);
    v30 = *(v29 + 120);
    if (*(v28 + 24))
    {
      v31 = *(*(v0 + 48) + 16);
      v32 = String._bridgeToObjectiveC()();
    }

    else
    {
      v32 = 0;
    }

    v40 = *(v0 + 48);
    v41 = v40[4];
    v42 = v40[7];
    v43 = v40[8];
    v44 = String._bridgeToObjectiveC()();
    v45 = v40[9];
    v46 = v40[10];
    v47 = String._bridgeToObjectiveC()();
    v48 = [v30 didSyncUpKVSDataDelete:v3 recordHandle:v32 assetType:v41 storeName:v44 storeGroup:v47 profileType:v40[11]];

    if (v48)
    {

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100066000(v49, qword_10012B758);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_27;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Delegate notified KVSData delete synced up", v52, 2u);
    }

    else
    {
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100066000(v53, qword_10012B758);

      v50 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v50, v54))
      {

        goto LABEL_32;
      }

      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70[0] = v56;
      *v55 = 136315138;
      v57 = sub_100065658(v6, v8, v70);

      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v54, "Delegate failed to process didSyncUpKVSDataDelete for recordName: %s", v55, 0xCu);
      sub_10005D588(v56);
    }

LABEL_27:

LABEL_32:
    v58 = *(v0 + 64);
    v59 = *(v0 + 48);
    v60 = *(v0 + 24);
    v61 = [*(v0 + 16) recordName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    (*(*v60 + 296))(v62, v64);
    sub_100066C80(v58, &unk_100129060, &qword_1000E7D50);

    sub_1000DB558(v59);
    goto LABEL_33;
  }

  sub_100066C80(v15, &unk_100129060, &qword_1000E7D50);
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100066000(v16, qword_10012B758);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v70[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100065658(v6, v8, v70);
    _os_log_impl(&_mh_execute_header, v17, v18, "synced up KVSData Delete with recordName: %s is not in local cache", v19, 0xCu);
    sub_10005D588(v20);
  }

  v21 = [*(*(v0 + 24) + 120) didSyncUpKVSDataDelete:v2 recordHandle:0 assetType:121 storeName:kMARXDataSharingStore storeGroup:kMACoreRXUserGroup profileType:-1];
  if (v21)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 64);
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Delegate notified KVSData delete synced up", v26, 2u);
    }

    v27 = v25;
  }

  else
  {

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 64);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v70[0] = v38;
      *v37 = 136315138;
      v39 = sub_100065658(v6, v8, v70);

      *(v37 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Delegate failed to process didSyncUpKVSDataDelete for recordName: %s", v37, 0xCu);
      sub_10005D588(v38);
    }

    else
    {
    }

    v27 = v36;
  }

  sub_100066C80(v27, &unk_100129060, &qword_1000E7D50);
LABEL_33:
  v66 = *(v0 + 56);
  v65 = *(v0 + 64);
  v67 = *(v0 + 48);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1000D637C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for MACloudKVSRecord();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6478, v2, 0);
}

uint64_t sub_1000D6478()
{
  v35 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = [*(v0 + 16) recordName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  (*(*v2 + 304))(v4, v6);
  v7 = *(v0 + 40);
  if ((*(*(v0 + 56) + 48))(v7, 1, *(v0 + 48)) == 1)
  {
    sub_100066C80(v7, &unk_100129060, &qword_1000E7D50);
  }

  else
  {
    v8 = *(v0 + 64);
    sub_1000DB490(v7, v8);
    v9 = *(v0 + 64);
    if (*(v8 + 24))
    {
      v10 = *(v0 + 24);
      v11 = *(v0 + 32);
      v12 = v9[2];

      v13 = *(v11 + 120);
      v14 = String._bridgeToObjectiveC()();
      v15 = v9[4];
      v16 = v9[7];
      v17 = v9[8];
      v18 = String._bridgeToObjectiveC()();
      v19 = v9[9];
      v20 = v9[10];
      v21 = String._bridgeToObjectiveC()();
      v22 = v9[11];
      v23 = _convertErrorToNSError(_:)();
      [v13 failedToDeleteKVSData:v14 assetType:v15 storeName:v18 storeGroup:v21 profileType:v22 error:v23];

      sub_1000DB558(v9);
      goto LABEL_11;
    }

    sub_1000DB558(*(v0 + 64));
  }

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100066000(v24, qword_10012B758);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    v29 = sub_100065658(v4, v6, &v34);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to fetch local record for to be deleted recordName: %s", v27, 0xCu);
    sub_10005D588(v28);
  }

  else
  {
  }

LABEL_11:
  v30 = *(v0 + 64);
  v31 = *(v0 + 40);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1000D67DC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_1000D686C, v1, 0);
}

uint64_t sub_1000D686C()
{
  v55 = v0;
  v1 = v0[4];
  v2 = (*(*v1 + 224))();
  (*(*v1 + 232))(0);
  if (v2)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    v4 = type metadata accessor for Logger();
    sub_100066000(v4, qword_10012B758);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v54 = v10;
      *v9 = 136315138;
      v11 = [v8 zoneName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100065658(v12, v14, &v54);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting Manatee Identity Recovery by re-uploading local records for %s", v9, 0xCu);
      sub_10005D588(v10);
    }

    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100066000(v17, qword_10012B758);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100065658(0x4B414D64756F6C43, 0xEE0065726F745356, &v54);
    _os_log_impl(&_mh_execute_header, v18, v19, "Delete all local records cached in %s after zone deleted", v20, 0xCu);
    sub_10005D588(v21);
  }

  v22 = (*(*v0[4] + 328))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[2] = 0;
  v24 = [v22 deleteFor:isa attributes:0 error:v0 + 2];

  v25 = v0[2];
  if (!v24)
  {
    v45 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v46 = v0[1];
    goto LABEL_19;
  }

  v26 = v0[3];
  v27 = *(v0[4] + 120);
  v28 = v25;
  v29 = [v26 zoneName];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = v0[3];
  v31 = [v27 didReceiveKVSDataZoneDelete:v29 reason:v16];

  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = v0[3];
  if (v31)
  {
    LOBYTE(v35) = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v35))
    {
      v36 = v0[3];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      v39 = [v36 zoneName];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_100065658(v40, v42, &v54);

      *(v37 + 4) = v43;
      v44 = "Delegate notified that zoneDelete for %s is synced up to cloud";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v33, v35, v44, v37, 0xCu);
      sub_10005D588(v38);
    }
  }

  else
  {
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v35))
    {
      v48 = v0[3];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      v49 = [v48 zoneName];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_100065658(v50, v52, &v54);

      *(v37 + 4) = v53;
      v44 = "Delegate failed to process zoneDeleteSyncedUp for zoneName: %s";
      goto LABEL_24;
    }
  }

  v46 = v0[1];
LABEL_19:

  return v46();
}

uint64_t sub_1000D6EE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000D6F04, v2, 0);
}

uint64_t sub_1000D6F04()
{
  v1 = *(*(v0 + 32) + 120);
  v2 = [*(v0 + 16) zoneName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = *(v0 + 24);
  v4 = _convertErrorToNSError(_:)();
  [v1 failedToDeleteKVSZone:v2 error:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000D6FD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for MACloudKVSRecord();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000D71A0, v2, 0);
}

uint64_t sub_1000D71A0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 16) recordID];
  v4 = [v3 recordName];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  (*(*v2 + 304))(v5, v7);
  v72 = v7;
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  v70 = v5;
  v71 = *(v0 + 88);
  v12 = *(v0 + 32);
  v13 = *(*v12 + 25);
  v14 = *(v0 + 24);
  v15 = v13();
  sub_1000C8DE0(v14, v15, v16, v12[14], v10);
  sub_1000939A8(v8, v9, &unk_100129060, &qword_1000E7D50);
  v17 = *(v11 + 48);
  v18 = v17(v9, 1, v71);
  v19 = *(v0 + 128);
  if (v18 == 1)
  {
    sub_100066C80(v19, &unk_100129060, &qword_1000E7D50);
  }

  else
  {
    v20 = *(v0 + 112);
    sub_1000DB490(v19, *(v0 + 104));
    if (sub_1000C7594(v20))
    {
      v21 = *(v0 + 136);
      v23 = *(v0 + 104);
      v22 = *(v0 + 112);
      v24 = *(v0 + 32);
      sub_1000D4308(v70, v72, *(v0 + 24));

      sub_1000DB558(v23);
      sub_1000DB558(v22);
      sub_100066C80(v21, &unk_100129060, &qword_1000E7D50);
      v25 = 0;
      goto LABEL_15;
    }

    sub_1000DB558(*(v0 + 104));
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 88);
  sub_1000939A8(*(v0 + 136), v26, &unk_100129060, &qword_1000E7D50);
  v28 = v17(v26, 1, v27);
  v29 = *(v0 + 120);
  if (v28 == 1)
  {
    v30 = *(v0 + 56);
    v31 = *(v0 + 64);
    v32 = *(v0 + 48);
    sub_100066C80(v29, &unk_100129060, &qword_1000E7D50);
    (*(v31 + 56))(v32, 1, 1, v30);
LABEL_9:
    v39 = *(v0 + 48);
LABEL_10:
    sub_100066C80(v39, &qword_1001287D0, &qword_1000E6C30);
LABEL_11:
    v40 = *(v0 + 136);
    v41 = *(v0 + 112);
    (*(**(v0 + 32) + 312))(v70, v72, v41);

    sub_1000DB558(v41);
    sub_100066C80(v40, &unk_100129060, &qword_1000E7D50);
    v25 = 1;
LABEL_15:
    v44 = *(v0 + 128);
    v43 = *(v0 + 136);
    v46 = *(v0 + 112);
    v45 = *(v0 + 120);
    v47 = *(v0 + 104);
    v49 = *(v0 + 72);
    v48 = *(v0 + 80);
    v51 = *(v0 + 40);
    v50 = *(v0 + 48);

    v52 = *(v0 + 8);

    return v52(v25);
  }

  v33 = *(v0 + 88);
  v34 = *(v0 + 56);
  v35 = *(v0 + 64);
  v36 = *(v0 + 48);
  v37 = *(v0 + 120);
  sub_1000939A8(v29 + *(v33 + 60), v36, &qword_1001287D0, &qword_1000E6C30);
  sub_1000DB558(v37);
  v38 = *(v35 + 48);
  if (v38(v36, 1, v34) == 1)
  {
    goto LABEL_9;
  }

  v53 = *(v0 + 112);
  v54 = *(v0 + 56);
  v55 = *(v0 + 40);
  v56 = *(*(v0 + 64) + 32);
  v56(*(v0 + 80), *(v0 + 48), v54);
  sub_1000939A8(v53 + *(v33 + 60), v55, &qword_1001287D0, &qword_1000E6C30);
  v57 = v38(v55, 1, v54);
  v58 = *(v0 + 80);
  if (v57 == 1)
  {
    v59 = *(v0 + 40);
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    v39 = v59;
    goto LABEL_10;
  }

  v56(*(v0 + 72), *(v0 + 40), *(v0 + 56));
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v67 = *(v0 + 80);
    v68 = *(v0 + 56);
    v69 = *(*(v0 + 64) + 8);
    v69(*(v0 + 72), v68);
    v69(v67, v68);
    goto LABEL_11;
  }

  v60 = *(v0 + 32);

  v61 = *(*v60 + 280);
  v73 = (v61 + *v61);
  v62 = v61[1];
  v63 = swift_task_alloc();
  *(v0 + 144) = v63;
  *v63 = v0;
  v63[1] = sub_1000D7868;
  v64 = *(v0 + 136);
  v65 = *(v0 + 112);
  v66 = *(v0 + 32);

  return v73(v65, v64);
}

uint64_t sub_1000D7868()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1000D7ABC;
  }

  else
  {
    v6 = sub_1000D7994;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000D7994()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000DB558(v2);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  v14 = v0[5];
  v13 = v0[6];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_1000D7ABC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000DB558(v2);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[5];
  v14 = v0[6];

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1000D7BEC(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for MACloudKVSRecord();
  v2[38] = v4;
  v5 = *(v4 - 8);
  v2[39] = v5;
  v6 = *(v5 + 64) + 15;
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7D10, v1, 0);
}

uint64_t sub_1000D7D10()
{
  v48 = v0;
  v1 = [*(v0 + 280) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012B758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v47);
    _os_log_impl(&_mh_execute_header, v7, v8, "removing ETag for unknown item recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 288) + 328))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  v46 = v3;
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(8);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  *(v14 + 96) = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 128) = 0x676154456B63;
  *(v14 + 136) = 0xE600000000000000;
  v15 = [objc_allocWithZone(NSNull) init];
  *(v14 + 168) = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  *(v14 + 144) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 272) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 272];

  v17 = *(v0 + 272);
  if (!inited)
  {
    v28 = v17;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v29 = *(v0 + 320);
    v30 = *(v0 + 296);

    v31 = *(v0 + 8);
    v32 = 0;
    goto LABEL_10;
  }

  v18 = *(v0 + 296);
  v19 = *(**(v0 + 288) + 304);
  v20 = v17;
  v19(v46, v5);
  v21 = *(v0 + 304);
  v22 = *(v0 + 296);
  if ((*(*(v0 + 312) + 48))(v22, 1, v21) == 1)
  {
    sub_100066C80(v22, &unk_100129060, &qword_1000E7D50);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = sub_100065658(v46, v5, &v47);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "failed to fetch local record for recordName: %s for unknown item error", v25, 0xCu);
      sub_10005D588(v26);
    }

    else
    {
    }

LABEL_20:
    v43 = 0;
    goto LABEL_21;
  }

  v34 = *(v0 + 320);
  sub_1000DB490(v22, v34);
  if (*(v34 + *(v21 + 64) + 8))
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 320);
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136315138;
      v41 = sub_100065658(v46, v5, &v47);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to delete ckETag for recordName: %s for unknown item error", v39, 0xCu);
      sub_10005D588(v40);
    }

    else
    {
    }

    sub_1000DB558(v38);
    goto LABEL_20;
  }

  v42 = *(v0 + 320);

  sub_1000DB558(v42);
  v43 = 1;
LABEL_21:
  v44 = *(v0 + 320);
  v45 = *(v0 + 296);

  v31 = *(v0 + 8);
  v32 = v43;
LABEL_10:

  return v31(v32);
}

uint64_t sub_1000D84CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return (sub_1000DB5FC)(a1);
}

uint64_t sub_1000D8578(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACloudKVSRecord();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8670, v1, 0);
}

uint64_t sub_1000D8670()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = [*(v0 + 16) recordID];
  v4 = [v3 recordName];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  (*(*v2 + 304))(v5, v7);

  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(*v9 + 25);
  v11 = *(v0 + 16);
  v12 = v10();
  sub_1000C8DE0(v11, v12, v13, v9[14], v8);
  v20 = (*v9 + 280);
  v21 = (*v20 + **v20);
  v14 = (*v20)[1];
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_1000D88F4;
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  v18 = *(v0 + 24);

  return v21(v17, v16);
}

uint64_t sub_1000D88F4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1000D8AB0;
  }

  else
  {
    v6 = sub_1000D8A20;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000D8A20()
{
  v1 = v0[7];
  sub_1000DB558(v0[6]);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000D8AB0()
{
  v1 = v0[7];
  sub_1000DB558(v0[6]);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1000D8B40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for MACloudKVSRecord();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8C38, v1, 0);
}

uint64_t sub_1000D8C38()
{
  v58 = v0;
  v1 = [*(v0 + 16) recordName];
  v2 = v1;
  v3 = v1;
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *(*v4 + 304);
  v10 = v1;
  v9(v6, v8);
  v11 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v11, 1, *(v0 + 40)) != 1)
  {
    v21 = *(v0 + 56);
    v22 = *(v0 + 24);

    sub_1000DB490(v11, v21);
    v23 = *(v22 + 120);
    if (*(v21 + 24))
    {
      v24 = *(*(v0 + 56) + 16);
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    v30 = *(v0 + 56);
    v31 = v30[4];
    v32 = v30[7];
    v33 = v30[8];
    v34 = String._bridgeToObjectiveC()();
    v35 = v30[9];
    v36 = v30[10];
    v37 = String._bridgeToObjectiveC()();
    v38 = [v23 didReceiveKVSDataDelete:v3 recordHandle:v25 assetType:v31 storeName:v34 storeGroup:v37 profileType:v30[11]];

    if (v38)
    {

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100066000(v39, qword_10012B758);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_28;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Delegate notified KVSData delete synced down", v42, 2u);
    }

    else
    {
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100066000(v43, qword_10012B758);

      v40 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v40, v44))
      {

        goto LABEL_31;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57[0] = v46;
      *v45 = 136315138;
      v47 = sub_100065658(v6, v8, v57);

      *(v45 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v44, "Delegate failed to process didReceiveKVSDataDelete for recordName: %s", v45, 0xCu);
      sub_10005D588(v46);
    }

LABEL_28:

LABEL_31:
    sub_1000DB558(*(v0 + 56));
    goto LABEL_32;
  }

  sub_100066C80(v11, &unk_100129060, &qword_1000E7D50);
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100066000(v12, qword_10012B758);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v57[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100065658(v6, v8, v57);
    _os_log_impl(&_mh_execute_header, v13, v14, "RecordName %s is not in local cache", v15, 0xCu);
    sub_10005D588(v16);
  }

  v17 = [*(*(v0 + 24) + 120) didReceiveKVSDataDelete:v2 recordHandle:0 assetType:121 storeName:kMARXDataSharingStore storeGroup:kMACoreRXUserGroup profileType:-1];
  if (v17)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v18, v19))
    {
LABEL_16:

      goto LABEL_32;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Delegate notified KVSData delete synced down", v20, 2u);
LABEL_15:

    goto LABEL_16;
  }

  v18 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v57[0] = v28;
    *v27 = 136315138;
    v29 = sub_100065658(v6, v8, v57);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v26, "Delegate failed to process didReceiveKVSDataDelete for recordName: %s", v27, 0xCu);
    sub_10005D588(v28);

    goto LABEL_15;
  }

LABEL_32:
  v48 = *(v0 + 24);
  v49 = [*(v0 + 16) recordName];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  (*(*v48 + 296))(v50, v52);

  v54 = *(v0 + 56);
  v55 = *(v0 + 32);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1000D9390(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D94A0, v2, 0);
}

uint64_t sub_1000D94A0()
{
  v126 = v0;
  v1 = (*(**(v0 + 40) + 328))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (!v3)
  {
    v35 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v37 = *(v0 + 72);
    v36 = *(v0 + 80);
    v38 = *(v0 + 64);

    v39 = *(v0 + 8);
    goto LABEL_13;
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  v8(v5, *(v0 + 32), v6);
  v9 = (*(v7 + 88))(v5, v6);
  if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:))
  {
    v10 = qword_10012B750;
    v11 = v4;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_10012B758);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Zone was deleted in the cloud, perform local clean up", v15, 2u);
    }

    v16 = *(v0 + 40);
    v17 = *(v0 + 24);

    v18 = *(v16 + 120);
    v19 = [v17 zoneName];
    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v20 = *(v0 + 24);
    v21 = [v18 didReceiveKVSDataZoneDelete:v19 reason:1];

    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = *(v0 + 24);
    if (v21)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v26 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v29 = [v26 zoneName];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_100065658(v30, v32, &v125);

        *(v27 + 4) = v33;
        v34 = "Delegate notified zone delete sync down %s";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v23, v25, v34, v27, 0xCu);
        sub_10005D588(v28);
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v61 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v62 = [v61 zoneName];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = sub_100065658(v63, v65, &v125);

        *(v27 + 4) = v66;
        v34 = "Delegate failed to ack zone delete sync down %s";
        goto LABEL_46;
      }
    }
  }

  else if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:))
  {
    v41 = qword_10012B750;
    v42 = v4;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100066000(v43, qword_10012B758);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Zone was purged by the user, perform local clean up", v46, 2u);
    }

    v47 = *(v0 + 40);
    v48 = *(v0 + 24);

    v49 = *(v47 + 120);
    v50 = [v48 zoneName];
    if (!v50)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = String._bridgeToObjectiveC()();
    }

    v51 = *(v0 + 24);
    v52 = [v49 didReceiveKVSDataZoneDelete:v50 reason:3];

    v53 = v51;
    v23 = Logger.logObject.getter();
    v54 = *(v0 + 24);
    if (v52)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v55 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v56 = [v55 zoneName];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_100065658(v57, v59, &v125);

        *(v27 + 4) = v60;
        v34 = "Delegate notified zone purge sync down %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v89 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v90 = [v89 zoneName];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_100065658(v91, v93, &v125);

        *(v27 + 4) = v94;
        v34 = "Delegate failed to ack zone purge sync down %s";
        goto LABEL_46;
      }
    }
  }

  else
  {
    v67 = enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:);
    v68 = qword_10012B750;
    v69 = v9;
    v70 = v4;
    if (v69 != v67)
    {
      if (v68 != -1)
      {
        swift_once();
      }

      v95 = *(v0 + 72);
      v96 = *(v0 + 48);
      v97 = *(v0 + 32);
      v98 = type metadata accessor for Logger();
      sub_100066000(v98, qword_10012B758);
      v8(v95, v97, v96);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();
      v101 = os_log_type_enabled(v99, v100);
      v102 = *(v0 + 72);
      if (v101)
      {
        v124 = v100;
        v103 = *(v0 + 56);
        v104 = *(v0 + 64);
        v105 = *(v0 + 48);
        v106 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v125 = v123;
        *v106 = 136315138;
        v8(v104, v102, v105);
        v107 = String.init<A>(describing:)();
        v109 = v108;
        v110 = *(v103 + 8);
        v110(v102, v105);
        v111 = sub_100065658(v107, v109, &v125);

        *(v106 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v99, v124, "Unhandled zone deletion reason: %s, skip local clean up", v106, 0xCu);
        sub_10005D588(v123);
      }

      else
      {
        v121 = *(v0 + 48);
        v122 = *(v0 + 56);

        v110 = *(v122 + 8);
        v110(v102, v121);
      }

      v110(*(v0 + 80), *(v0 + 48));
      goto LABEL_48;
    }

    if (v68 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100066000(v71, qword_10012B758);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Zone was deleted because of encryptedDataReset, skip local clean up, trying to re-upload local records", v74, 2u);
    }

    v75 = *(v0 + 40);
    v76 = *(v0 + 24);

    v77 = *(v75 + 120);
    v78 = [v76 zoneName];
    if (!v78)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = String._bridgeToObjectiveC()();
    }

    v79 = *(v0 + 24);
    v80 = [v77 didReceiveKVSDataZoneDelete:v78 reason:2];

    v81 = v79;
    v23 = Logger.logObject.getter();
    v82 = *(v0 + 24);
    if (v80)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v83 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v84 = [v83 zoneName];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = sub_100065658(v85, v87, &v125);

        *(v27 + 4) = v88;
        v34 = "Delegate notified zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v112 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v113 = [v112 zoneName];
        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        v117 = sub_100065658(v114, v116, &v125);

        *(v27 + 4) = v117;
        v34 = "Delegate failed to ack zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }
  }

LABEL_48:
  v119 = *(v0 + 72);
  v118 = *(v0 + 80);
  v120 = *(v0 + 64);

  v39 = *(v0 + 8);
LABEL_13:

  return v39();
}

uint64_t sub_1000DA0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000625FC;

  return sub_1000DC6BC(a1, a2, a3, a4);
}

uint64_t sub_1000DA174(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_1000DA198, v1, 0);
}

uint64_t sub_1000DA198()
{
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012B758);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set inManateeIdentityRecovery=%{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  (*(*v6 + 232))(v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000DA3BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007FAFC;

  return sub_1000D3C20(a1);
}

uint64_t sub_1000DA450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D40F4(a1);
}

uint64_t sub_1000DA4E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D5A90(a1);
}

uint64_t sub_1000DA578(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100067294;

  return sub_1000D637C(a1, a2);
}

uint64_t sub_1000DA61C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D67DC(a1);
}

uint64_t sub_1000DA6B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000B0D60;

  return sub_1000D6FD4(a1, a2);
}

uint64_t sub_1000DA754(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000AD104;

  return sub_1000D7BEC(a1);
}

uint64_t sub_1000DA7E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D8578(a1);
}

uint64_t sub_1000DA87C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D8B40(a1);
}

uint64_t sub_1000DA910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100067294;

  return sub_1000D9390(a1, a2);
}

uint64_t sub_1000DA9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MACloudKVSRecordLocalStore();
  *v8 = v4;
  v8[1] = sub_1000AD548;

  return sub_1000C2394(a1, a2, v9, a4);
}

uint64_t sub_1000DAA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100067294;

  return sub_1000DC6BC(a1, a2, a3, a4);
}

uint64_t sub_1000DAB48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_1000D225C(a1, a2);
}

uint64_t sub_1000DABEC(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000DA174(a1);
}

uint64_t sub_1000DAC80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100067294;

  return sub_1000D1F80();
}

void *sub_1000DAD0C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005F5CC(&qword_100129330, &qword_1000E8010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_10005F5CC(&qword_100129338, &qword_1000E8018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000DAE54(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000DAFC0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000DB1B8(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_1000DAFC0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = a4;
  v21 = a2;
  v22 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_100066130(*(v25 + 56) + 32 * v13, v29);
    v27[0] = v15;
    v27[1] = v16;
    sub_100066130(v29, &v28);
    swift_bridgeObjectRetain_n();
    v17 = sub_1000C61DC(v24);
    v26[0] = v15;
    v26[1] = v16;
    __chkstk_darwin(v17);
    v20[2] = v26;
    v18 = v30;
    LOBYTE(v15) = sub_1000BF628(sub_1000C0038, v20, v17);
    v30 = v18;

    sub_100066C80(v27, &unk_100129350, &unk_1000E8030);
    sub_10005D588(v29);

    if ((v15 & 1) == 0)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1000DB240(v22, v21, v23, v25);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1000DB240(v22, v21, v23, v25);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000DB1B8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000DAFC0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000DB240(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_100066130(v17 + 32 * v16, v34);
    sub_1000AF7F4(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1000AF7F4(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1000DB490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudKVSRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DB4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudKVSRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DB558(uint64_t a1)
{
  v2 = type metadata accessor for MACloudKVSRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DB5B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000DB5FC(uint64_t a1)
{
  v2[63] = a1;
  v2[64] = v1;
  v3 = type metadata accessor for Date();
  v2[65] = v3;
  v4 = *(v3 - 8);
  v2[66] = v4;
  v5 = *(v4 + 64) + 15;
  v2[67] = swift_task_alloc();
  v6 = *(*(sub_10005F5CC(&unk_100129060, &qword_1000E7D50) - 8) + 64) + 15;
  v2[68] = swift_task_alloc();
  v7 = type metadata accessor for MACloudKVSRecord();
  v2[69] = v7;
  v8 = *(v7 - 8);
  v2[70] = v8;
  v9 = *(v8 + 64) + 15;
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB79C, v1, 0);
}

uint64_t sub_1000DB79C()
{
  v134 = v0;
  v1 = [*(v0 + 504) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012B758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v133 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v133);
    _os_log_impl(&_mh_execute_header, v7, v8, "Mark quota exceeded for recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 512) + 328))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  swift_setDeallocating();
  v131 = v3;
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6C00;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(9);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  v15 = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 96) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 464) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 464];

  v17 = *(v0 + 464);
  if (!inited)
  {
    v27 = v17;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_10:
    v28 = *(v0 + 584);
    v29 = *(v0 + 576);
    v30 = *(v0 + 568);
    v31 = *(v0 + 544);
    v32 = *(v0 + 536);

    v33 = *(v0 + 8);
    goto LABEL_11;
  }

  v18 = *(v0 + 544);
  v19 = *(**(v0 + 512) + 304);
  v20 = v17;
  v19(v3, v5);
  v21 = *(v0 + 544);
  if ((*(*(v0 + 560) + 48))(v21, 1, *(v0 + 552)) == 1)
  {
    sub_100066C80(v21, &unk_100129060, &qword_1000E7D50);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v133 = v25;
      *v24 = 136315138;
      v26 = sub_100065658(v3, v5, &v133);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "failed to fetch local record for recordName: %s for quota exceeded error", v24, 0xCu);
      sub_10005D588(v25);
    }

    else
    {
    }

    goto LABEL_34;
  }

  v35 = *(v0 + 584);
  sub_1000DB490(v21, v35);
  v36 = *(v35 + 32);
  v38 = sub_1000C619C(v36);
  v39 = *(v0 + 584);
  if (!v37)
  {
    sub_1000DB4F4(v39, *(v0 + 568));

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 568);
    if (v43)
    {
      v45 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v45 = 136315394;
      *(v0 + 472) = *(v44 + 32);
      type metadata accessor for MASDAssetType(0);
      sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_1000DB558(v44);
      v49 = sub_100065658(v46, v48, &v133);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = sub_100065658(v131, v5, &v133);

      *(v45 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "recordNameField is not configured for assetType %s, failed record name: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000DB558(v44);
    }

    v86 = *(v0 + 584);
    sub_1000B9568();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    sub_100092A98();
    swift_allocError();
    *v93 = v88;
    *(v93 + 8) = v90;
    *(v93 + 16) = v92;
    swift_willThrow();
    v94 = v86;
    goto LABEL_29;
  }

  v40 = *(v39 + 120);
  if (v40 >> 60 == 15)
  {
    goto LABEL_31;
  }

  v51 = v37;
  v52 = *(v39 + 112);
  v53 = objc_opt_self();
  sub_10005F304(v52, v40);
  v54 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 480) = 0;
  v55 = [v53 propertyListWithData:v54 options:0 format:0 error:v0 + 480];

  v56 = *(v0 + 480);
  if (!v55)
  {
    v95 = *(v0 + 584);
    v96 = v56;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v52, v40);
    v94 = v95;
LABEL_29:
    sub_1000DB558(v94);
    goto LABEL_10;
  }

  v57 = v56;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10005F69C(v52, v40);
LABEL_31:

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Invalid serialized KVSRecord stored in local store", v99, 2u);
    }

    v100 = *(v0 + 584);

    sub_1000DB558(v100);
    goto LABEL_34;
  }

  v58 = *(v0 + 488);
  if (!*(v58 + 16) || (v59 = sub_100065A98(v38, v51), (v60 & 1) == 0) || (sub_100066130(*(v58 + 56) + 32 * v59, v0 + 256), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000DB4F4(*(v0 + 584), *(v0 + 576));

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();

    v108 = os_log_type_enabled(v106, v107);
    v109 = *(v0 + 576);
    if (v108)
    {
      v110 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v110 = 136315394;
      *(v0 + 496) = *(v109 + 32);
      type metadata accessor for MASDAssetType(0);
      sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
      v111 = dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v112;
      sub_1000DB558(v109);
      v114 = sub_100065658(v111, v113, &v133);

      *(v110 + 4) = v114;
      *(v110 + 12) = 2080;
      v115 = sub_100065658(v131, v5, &v133);

      *(v110 + 14) = v115;
      _os_log_impl(&_mh_execute_header, v106, v107, "recordHandle is not found in serialized KVSRecord stored in local store for assetType %s, failed record name: %s", v110, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000DB558(v109);
    }

    v116 = *(v0 + 584);
    sub_1000B9568();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    sub_100092A98();
    swift_allocError();
    *v123 = v118;
    *(v123 + 8) = v120;
    *(v123 + 16) = v122;
    swift_willThrow();
    sub_10005F69C(v52, v40);
    sub_1000DB558(v116);

    goto LABEL_10;
  }

  v61 = *(v0 + 536);
  v62 = *(v0 + 528);
  v124 = *(v0 + 520);
  v129 = *(v0 + 512);
  v132 = *(v0 + 584);

  v125 = *(v0 + 456);
  v127 = *(v0 + 448);
  sub_1000AE570(v38, v51, (v0 + 288));

  sub_100066C80(v0 + 288, &unk_100128830, &qword_1000E7D40);
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;
  *(v0 + 344) = &type metadata for UInt;
  *(v0 + 320) = 1024;
  sub_1000AF7F4((v0 + 320), (v0 + 352));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v58;
  sub_1000AEE80((v0 + 352), v63, v65, isUniquelyReferenced_nonNull_native);

  v67 = v133;
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v72 = v71;
  (*(v62 + 8))(v61, v124);
  *(v0 + 408) = &type metadata for Double;
  *(v0 + 384) = v72;
  sub_1000AF7F4((v0 + 384), (v0 + 416));
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v67;
  sub_1000AEE80((v0 + 416), v68, v70, v73);

  v130 = *(v129 + 120);
  v128 = String._bridgeToObjectiveC()();

  v74 = v132[7];
  v75 = v132[8];
  v76 = String._bridgeToObjectiveC()();
  v77 = v132[9];
  v78 = v132[10];
  v79 = String._bridgeToObjectiveC()();
  v126 = v132[11];
  v80 = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_1000B9568();
  v84 = sub_1000B6504(v81, v82, v83);

  v85 = _convertErrorToNSError(_:)();

  [v130 failedToUploadKVSData:v128 assetType:v36 storeName:v76 storeGroup:v79 profileType:v126 data:v80 error:v85];
  sub_10005F69C(v52, v40);

  sub_1000DB558(v132);

LABEL_34:
  v101 = *(v0 + 584);
  v102 = *(v0 + 576);
  v103 = *(v0 + 568);
  v104 = *(v0 + 544);
  v105 = *(v0 + 536);

  v33 = *(v0 + 8);
LABEL_11:

  return v33();
}

uint64_t sub_1000DC6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = a4;
  v5[4] = a1;
  v5[5] = a2;
  return _swift_task_switch(sub_1000DC6E0, v4, 0);
}

uint64_t sub_1000DC6E0()
{
  v20 = v0;
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_10012B758);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v18 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v0[2] = v8;
    v0[3] = v7;

    sub_10005F5CC(&qword_100128890, &qword_1000E6D60);
    v10 = String.init<A>(describing:)();
    v12 = sub_100065658(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v0[2] = v6;
    v0[3] = v18;

    v13 = String.init<A>(describing:)();
    v15 = sub_100065658(v13, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "handleAccountChange signInUser=%s, signOutUser=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000DC914(uint64_t a1)
{
  result = sub_1000DB5B4(&qword_1001290A8, 255, type metadata accessor for MACloudKVSRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC970(uint64_t a1, uint64_t a2)
{
  result = sub_1000DB5B4(&qword_1001290B0, a2, type metadata accessor for MACloudKVSRecordLocalStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DCA00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DCAD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000DCB80()
{
  sub_1000DCD18(319, &qword_100128900, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MASDAssetType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MASDProfileType(319);
      if (v2 <= 0x3F)
      {
        sub_1000DCD18(319, &qword_100128908, &type metadata for Data, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000DCD18(319, qword_100129110, &type metadata for Int, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000B0A40();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000DCD18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}