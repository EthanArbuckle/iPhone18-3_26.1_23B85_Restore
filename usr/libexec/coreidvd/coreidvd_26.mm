void sub_100290E3C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 920);
  *(v0 + 1008) = *(v0 + 928);
  *(v0 + 1000) = v1;
  *(v0 + 992) = v3;
  *(v0 + 984) = v2;
  *(v0 + 672) = &_swiftEmptySetSingleton;
  v4 = *(v1 + 16);
  *(v0 + 1016) = v4;
  if (!v4)
  {
LABEL_31:

    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v61 = *(v0 + 984);
    v62 = *(*(v0 + 1008) + 16);
    os_unfair_lock_lock(v62 + 54);
    sub_100031B5C(&v62[4], v0 + 216);
    os_unfair_lock_unlock(v62 + 54);
    if (!v61)
    {
      v63 = *(v0 + 1000);
      v64 = *(v0 + 1140);
      v65 = *(v0 + 720);
      v66 = *(v0 + 712);
      v67 = *(v0 + 704);
      v68 = *(v0 + 696);
      v69 = *(v0 + 688);
      v70 = *(v0 + 272);
      *(v0 + 1096) = v70;

      sub_100031918(v0 + 216);
      v71 = swift_allocObject();
      *(v0 + 1104) = v71;
      *(v71 + 16) = v63;
      *(v71 + 24) = v69;
      *(v71 + 32) = v68;
      *(v71 + 40) = v67;
      *(v71 + 48) = v66;
      *(v71 + 56) = v65;
      *(v71 + 64) = v64 & 1;
      v72 = *(v70 + 16);
      v73 = swift_allocObject();
      *(v0 + 1112) = v73;
      *(v73 + 16) = sub_1002A74EC;
      *(v73 + 24) = v71;
      v74 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v75 = swift_task_alloc();
      *(v0 + 1120) = v75;
      *v75 = v0;
      v75[1] = sub_100292704;

      AsyncCoreDataContainer.performWrite<A>(_:)(v75, sub_10021F3D0, v73, &type metadata for () + 8);
    }

    return;
  }

  *(v0 + 1136) = *(*(v0 + 776) + 80);
  *(v0 + 1064) = 0;
  *(v0 + 1056) = v3;
  *(v0 + 1048) = v3;
  *(v0 + 1040) = v3;
  *(v0 + 1032) = v3;
  *(v0 + 1024) = v3;
  v5 = *(v1 + 16);

  if (!v5)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    v59 = *(v0 + 1000);

    v60 = *(v0 + 672);
    goto LABEL_31;
  }

  v7 = 0;
  v8 = (v0 + 672);
  while (1)
  {
    (*(*(v0 + 776) + 16))(*(v0 + 784), v6 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 776) + 72) * v7, *(v0 + 768));
    v9 = ProofingSession.proofingSessionID.getter();
    *(v0 + 1072) = v10;
    if (!v10)
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    v13 = *v8;
    if (*(*v8 + 16))
    {
      v14 = *(v13 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(v13 + 32);
      v17 = v15 & ~v16;
      if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(v13 + 48) + 16 * v17);
          v20 = *v19 == v11 && v12 == v19[1];
          if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_41:
        v84 = *(v0 + 1072);

        break;
      }
    }

LABEL_14:
    v21 = *(v0 + 784);
    v22 = ProofingSession.workflowID.getter();
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      v26 = *(v0 + 784);
      v27 = ProofingSession.country.getter();
      if (v28)
      {
        v29 = v27;
        v30 = v28;
        v31 = *(v0 + 784);
        ProofingSession.documentType.getter();
        if (v32)
        {
          v76 = *(v0 + 760);
          v89 = *(v0 + 728);
          v88 = IdentityDocumentType.init(documentTypeString:)();

          sub_100151120((v0 + 640), v11, v12);
          v77 = *(v0 + 648);

          v78 = type metadata accessor for TaskPriority();
          (*(*(v78 - 8) + 56))(v76, 1, 1, v78);
          v79 = swift_allocObject();
          v79[2] = 0;
          v79[3] = 0;
          v79[4] = v11;
          v79[5] = v12;
          v79[6] = v89;
          v79[7] = v29;
          v79[8] = v30;
          v79[9] = v24;
          v79[10] = v25;
          v79[11] = v88;

          sub_1003E653C(0, 0, v76, &unk_1006DC538, v79);

          v80 = IdentityDocumentType.rawValue.getter();
          if (v80 == IdentityDocumentType.rawValue.getter())
          {
            v81 = *(v0 + 1140);
            v82 = swift_task_alloc();
            *(v0 + 1080) = v82;
            *v82 = v0;
            v82[1] = sub_100291ACC;
            v83 = *(v0 + 720);

            sub_1002A2920(v11, v12, v83, v81 & 1 | 0x80);
            return;
          }

          goto LABEL_41;
        }

        v33 = *(v0 + 832);

        defaultLogger()();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        v36 = os_log_type_enabled(v34, v35);
        v37 = *(v0 + 832);
        v38 = *(v0 + 800);
        v39 = *(v0 + 792);
        if (!v36)
        {
LABEL_24:

LABEL_26:
          v3(v37, v39);
          goto LABEL_27;
        }

        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = v35;
        v42 = v34;
        v43 = "IdentityProofingCleanupProvider: Unable to retrieve the documentTypeString from the database";
      }

      else
      {
        v52 = *(v0 + 824);

        defaultLogger()();
        v34 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        v54 = os_log_type_enabled(v34, v53);
        v37 = *(v0 + 824);
        v55 = *(v0 + 800);
        v39 = *(v0 + 792);
        if (!v54)
        {
          goto LABEL_24;
        }

        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = v53;
        v42 = v34;
        v43 = "IdentityProofingCleanupProvider country does not exist; skipping notifying server";
      }

      _os_log_impl(&_mh_execute_header, v42, v41, v43, v40, 2u);

      v3(v37, v39);
    }

    else
    {
      v44 = *(v0 + 816);

      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v45, v46))
      {
        v37 = *(v0 + 816);
        v56 = *(v0 + 800);
        v39 = *(v0 + 792);

        goto LABEL_26;
      }

      v47 = *(v0 + 992);
      v48 = *(v0 + 816);
      v49 = *(v0 + 792);
      v50 = *(v0 + 800) + 8;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "IdentityProofingCleanupProvider workflow id does not exist; skipping notifying server", v51, 2u);

      v47(v48, v49);
      v3 = *(v0 + 992);
    }

LABEL_27:
    v57 = *(v0 + 1016);
    v58 = *(v0 + 1064) + 1;
    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
    if (v58 == v57)
    {
      goto LABEL_30;
    }

    v7 = *(v0 + 1064) + 1;
    *(v0 + 1064) = v7;
    *(v0 + 1056) = v3;
    *(v0 + 1048) = v3;
    *(v0 + 1040) = v3;
    *(v0 + 1032) = v3;
    *(v0 + 1024) = v3;
    v6 = *(v0 + 1000);
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_29;
    }
  }

  v85 = swift_task_alloc();
  *(v0 + 1088) = v85;
  *v85 = v0;
  v85[1] = sub_100291C3C;
  v86 = *(v0 + 784);
  v87 = *(v0 + 728);

  sub_100299718(v86);
}

uint64_t sub_100291690()
{
  v46 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);

  v4 = *(v0 + 968);
  v5 = *(v0 + 920);
  v6 = *(v0 + 808);
  v7 = *(v0 + 712);
  v8 = *(v0 + 696);
  defaultLogger()();

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = v5;
    v11 = *(v0 + 1140);
    v12 = *(v0 + 712);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v16 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100141FE4(v15, v14, v45);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100141FE4(v13, v12, v45);
    *(v16 + 22) = 2080;
    if (v11)
    {
      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    else
    {
      v22 = *(v0 + 720);
      v18 = IdentityTarget.debugDescription.getter();
      v17 = v23;
    }

    v41 = *(v0 + 808);
    v24 = *(v0 + 800);
    v25 = *(v0 + 792);
    v26 = sub_100141FE4(v18, v17, v45);

    *(v16 + 24) = v26;
    *(v16 + 32) = 2080;
    swift_getErrorValue();
    v27 = *(v0 + 616);
    v28 = *(v0 + 624);
    v29 = *(v0 + 632);
    v30 = Error.localizedDescription.getter();
    v32 = sub_100141FE4(v30, v31, v45);

    *(v16 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v9, v10, "IdentityProofingCleanupProvider Received an error during clearing all proofing sessions for %s, %s, %s: %s", v16, 0x2Au);
    swift_arrayDestroy();

    v43(v41, v25);
  }

  else
  {
    v19 = *(v0 + 808);
    v20 = *(v0 + 800);
    v21 = *(v0 + 792);

    v5(v19, v21);
  }

  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = *(v0 + 832);
  v38 = *(v0 + 824);
  v39 = *(v0 + 816);
  v40 = *(v0 + 808);
  v42 = *(v0 + 784);
  v44 = *(v0 + 760);
  (*(*(v0 + 744) + 104))(*(v0 + 752), enum case for DIPError.Code.unableToClearWatchProofingSession(_:), *(v0 + 736));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100291ACC()
{
  v1 = *v0;
  v2 = *(*v0 + 1080);
  v3 = *v0;

  v4 = v1[134];

  v5 = swift_task_alloc();
  v1[136] = v5;
  *v5 = v3;
  v5[1] = sub_100291C3C;
  v6 = v1[98];
  v7 = v1[91];

  return sub_100299718(v6);
}

uint64_t sub_100291C3C()
{
  v1 = *(*v0 + 1088);
  v3 = *v0;

  return _swift_task_switch(sub_100291D38, 0, 0);
}

void sub_100291D38()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 1064) + 1;
  (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
  if (v7 != v6)
  {
    v104 = (v0 + 672);
LABEL_6:
    v102 = v3;
LABEL_7:
    v101 = v2;
LABEL_8:
    v100 = v1;
    while (1)
    {
      v12 = *(v0 + 1064) + 1;
      *(v0 + 1064) = v12;
      *(v0 + 1056) = v1;
      *(v0 + 1048) = v2;
      *(v0 + 1040) = v3;
      *(v0 + 1032) = v4;
      *(v0 + 1024) = v5;
      v13 = *(v0 + 1000);
      if (v12 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      (*(*(v0 + 776) + 16))(*(v0 + 784), v13 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 776) + 72) * v12, *(v0 + 768));
      v14 = ProofingSession.proofingSessionID.getter();
      *(v0 + 1072) = v15;
      if (!v15)
      {
        goto LABEL_45;
      }

      v16 = v14;
      v17 = v15;
      v18 = *v104;
      if (*(*v104 + 16))
      {
        v19 = *(v18 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(v18 + 32);
        v22 = v20 & ~v21;
        if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(v18 + 48) + 16 * v22);
            v25 = *v24 == v16 && v17 == v24[1];
            if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

LABEL_44:
          v96 = *(v0 + 1072);

LABEL_45:
          v97 = swift_task_alloc();
          *(v0 + 1088) = v97;
          *v97 = v0;
          v97[1] = sub_100291C3C;
          v98 = *(v0 + 784);
          v99 = *(v0 + 728);

          sub_100299718(v98);
          return;
        }
      }

LABEL_20:
      v26 = *(v0 + 784);
      v27 = ProofingSession.workflowID.getter();
      if (!v28)
      {
        break;
      }

      v29 = v27;
      v30 = v28;
      v31 = *(v0 + 784);
      v32 = ProofingSession.country.getter();
      if (!v33)
      {
        v51 = *(v0 + 824);

        defaultLogger()();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        v54 = os_log_type_enabled(v52, v53);
        v55 = *(v0 + 824);
        v56 = *(v0 + 800);
        v57 = *(v0 + 792);
        if (!v54)
        {

          v3 = v102;
          v102(v55, v57);
          v58 = *(v0 + 1016);
          v59 = *(v0 + 1064) + 1;
          (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
          v1 = v102;
          v2 = v102;
          if (v59 != v58)
          {
            goto LABEL_7;
          }

          goto LABEL_2;
        }

        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "IdentityProofingCleanupProvider country does not exist; skipping notifying server", v73, 2u);

        v4(v55, v57);
        v66 = *(v0 + 1016);
        v67 = *(v0 + 1064) + 1;
        (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
        v1 = v4;
        v2 = v4;
        v3 = v4;
LABEL_33:
        if (v67 != v66)
        {
          goto LABEL_6;
        }

        goto LABEL_2;
      }

      v34 = v32;
      v35 = v33;
      v36 = *(v0 + 784);
      ProofingSession.documentType.getter();
      if (v37)
      {
        v87 = *(v0 + 760);
        v88 = *(v0 + 728);
        v103 = IdentityDocumentType.init(documentTypeString:)();

        sub_100151120((v0 + 640), v16, v17);
        v89 = *(v0 + 648);

        v90 = type metadata accessor for TaskPriority();
        (*(*(v90 - 8) + 56))(v87, 1, 1, v90);
        v91 = swift_allocObject();
        v91[2] = 0;
        v91[3] = 0;
        v91[4] = v16;
        v91[5] = v17;
        v91[6] = v88;
        v91[7] = v34;
        v91[8] = v35;
        v91[9] = v29;
        v91[10] = v30;
        v91[11] = v103;

        sub_1003E653C(0, 0, v87, &unk_1006DC538, v91);

        v92 = IdentityDocumentType.rawValue.getter();
        if (v92 == IdentityDocumentType.rawValue.getter())
        {
          v93 = *(v0 + 1140);
          v94 = swift_task_alloc();
          *(v0 + 1080) = v94;
          *v94 = v0;
          v94[1] = sub_100291ACC;
          v95 = *(v0 + 720);

          sub_1002A2920(v16, v17, v95, v93 & 1 | 0x80);
          return;
        }

        goto LABEL_44;
      }

      v38 = *(v0 + 832);

      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 832);
      v43 = *(v0 + 800);
      v44 = *(v0 + 792);
      if (v41)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "IdentityProofingCleanupProvider: Unable to retrieve the documentTypeString from the database", v47, 2u);

        v48 = v44;
        v2 = v101;
        v101(v42, v48);
        v49 = *(v0 + 1016);
        v50 = *(v0 + 1064) + 1;
        (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
        v1 = v101;
        v3 = v102;
        if (v50 != v49)
        {
          goto LABEL_8;
        }

        goto LABEL_2;
      }

      v1 = v100;
      v100(v42, v44);
      v45 = *(v0 + 1016);
      v46 = *(v0 + 1064) + 1;
      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
      v2 = v101;
      v3 = v102;
      if (v46 == v45)
      {
        goto LABEL_2;
      }
    }

    v60 = *(v0 + 816);

    defaultLogger()();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v68 = *(v0 + 992);
      v69 = *(v0 + 816);
      v70 = *(v0 + 792);
      v71 = *(v0 + 800) + 8;
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "IdentityProofingCleanupProvider workflow id does not exist; skipping notifying server", v72, 2u);

      v68(v69, v70);
      v1 = *(v0 + 992);
      v66 = *(v0 + 1016);
      v67 = *(v0 + 1064) + 1;
      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
      v2 = v1;
      v3 = v1;
      v4 = v1;
      v5 = v1;
    }

    else
    {
      v63 = *(v0 + 816);
      v64 = *(v0 + 800);
      v65 = *(v0 + 792);

      v5(v63, v65);
      v66 = *(v0 + 1016);
      v67 = *(v0 + 1064) + 1;
      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
      v1 = v5;
      v2 = v5;
      v3 = v5;
      v4 = v5;
    }

    goto LABEL_33;
  }

LABEL_2:
  v8 = *(v0 + 1000);

  v9 = *(v0 + 672);

  if (qword_100832B60 != -1)
  {
LABEL_49:
    swift_once();
  }

  v10 = *(v0 + 984);
  v11 = *(*(v0 + 1008) + 16);
  os_unfair_lock_lock(v11 + 54);
  sub_100031B5C(&v11[4], v0 + 216);
  os_unfair_lock_unlock(v11 + 54);
  if (!v10)
  {
    v74 = *(v0 + 1000);
    v75 = *(v0 + 1140);
    v76 = *(v0 + 720);
    v77 = *(v0 + 712);
    v78 = *(v0 + 704);
    v79 = *(v0 + 696);
    v80 = *(v0 + 688);
    v81 = *(v0 + 272);
    *(v0 + 1096) = v81;

    sub_100031918(v0 + 216);
    v82 = swift_allocObject();
    *(v0 + 1104) = v82;
    *(v82 + 16) = v74;
    *(v82 + 24) = v80;
    *(v82 + 32) = v79;
    *(v82 + 40) = v78;
    *(v82 + 48) = v77;
    *(v82 + 56) = v76;
    *(v82 + 64) = v75 & 1;
    v83 = *(v81 + 16);
    v84 = swift_allocObject();
    *(v0 + 1112) = v84;
    *(v84 + 16) = sub_1002A74EC;
    *(v84 + 24) = v82;
    v85 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v86 = swift_task_alloc();
    *(v0 + 1120) = v86;
    *v86 = v0;
    v86[1] = sub_100292704;

    AsyncCoreDataContainer.performWrite<A>(_:)(v86, sub_10021F3D0, v84, &type metadata for () + 8);
  }
}

uint64_t sub_100292704()
{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v9 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v4 = sub_100292914;
  }

  else
  {
    v5 = v2[139];
    v6 = v2[138];
    v7 = v2[137];

    v4 = sub_100292838;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100292838()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[98];
  v8 = v0[95];
  v9 = v0[94];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100292914()
{
  v46 = v0;
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);

  v4 = *(v0 + 1128);
  v5 = *(v0 + 992);
  v6 = *(v0 + 808);
  v7 = *(v0 + 712);
  v8 = *(v0 + 696);
  defaultLogger()();

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = v5;
    v11 = *(v0 + 1140);
    v12 = *(v0 + 712);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v16 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100141FE4(v15, v14, v45);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100141FE4(v13, v12, v45);
    *(v16 + 22) = 2080;
    if (v11)
    {
      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    else
    {
      v22 = *(v0 + 720);
      v18 = IdentityTarget.debugDescription.getter();
      v17 = v23;
    }

    v41 = *(v0 + 808);
    v24 = *(v0 + 800);
    v25 = *(v0 + 792);
    v26 = sub_100141FE4(v18, v17, v45);

    *(v16 + 24) = v26;
    *(v16 + 32) = 2080;
    swift_getErrorValue();
    v27 = *(v0 + 616);
    v28 = *(v0 + 624);
    v29 = *(v0 + 632);
    v30 = Error.localizedDescription.getter();
    v32 = sub_100141FE4(v30, v31, v45);

    *(v16 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v9, v10, "IdentityProofingCleanupProvider Received an error during clearing all proofing sessions for %s, %s, %s: %s", v16, 0x2Au);
    swift_arrayDestroy();

    v43(v41, v25);
  }

  else
  {
    v19 = *(v0 + 808);
    v20 = *(v0 + 800);
    v21 = *(v0 + 792);

    v5(v19, v21);
  }

  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = *(v0 + 832);
  v38 = *(v0 + 824);
  v39 = *(v0 + 816);
  v40 = *(v0 + 808);
  v42 = *(v0 + 784);
  v44 = *(v0 + 760);
  (*(*(v0 + 744) + 104))(*(v0 + 752), enum case for DIPError.Code.unableToClearWatchProofingSession(_:), *(v0 + 736));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v36 = *(v0 + 8);

  return v36();
}

size_t sub_100292D50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v33 = a5;
  v32 = a6;
  v10 = type metadata accessor for ProofingSession();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = v34;
  result = sub_100578AD0(a1, a2, a3, a4);
  if (v18)
  {
    return result;
  }

  v20 = result;
  v21 = v32;
  v33 = 0;
  v34 = v10;
  if (!(result >> 62))
  {
    v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v21 = _swiftEmptyArrayStorage;
    return result;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
    goto LABEL_17;
  }

LABEL_4:
  v35 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v23 = v35;
    if ((v20 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v35 = v23;
        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100173040(v25 > 1, v26 + 1, 1);
          v23 = v35;
        }

        v23[2] = v26 + 1;
        (*(v11 + 32))(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v17, v34);
      }
    }

    else
    {
      v27 = 32;
      do
      {
        v28 = *(v20 + v27);
        ProofingSession.init(_:)();
        v35 = v23;
        v30 = v23[2];
        v29 = v23[3];
        if (v30 >= v29 >> 1)
        {
          sub_100173040(v29 > 1, v30 + 1, 1);
          v23 = v35;
        }

        v23[2] = v30 + 1;
        (*(v11 + 32))(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v15, v34);
        v27 += 8;
        --v22;
      }

      while (v22);
    }

    *v32 = v23;
  }

  return result;
}

size_t sub_100293020@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v31 = a5;
  v9 = type metadata accessor for ProofingSession();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v30 - v15;
  v17 = v32;
  result = sub_1005796D0(a1, a2, a3, a4);
  if (v17)
  {
    return result;
  }

  v19 = result;
  v20 = v31;
  v32 = v9;
  v30[1] = 0;
  if (!(result >> 62))
  {
    v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v20 = _swiftEmptyArrayStorage;
    return result;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_4:
  v33 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v33;
    if ((v19 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v21; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v33 = v22;
        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_100173040(v24 > 1, v25 + 1, 1);
          v22 = v33;
        }

        v22[2] = v25 + 1;
        (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v16, v32);
      }
    }

    else
    {
      v26 = 32;
      do
      {
        v27 = *(v19 + v26);
        ProofingSession.init(_:)();
        v33 = v22;
        v29 = v22[2];
        v28 = v22[3];
        if (v29 >= v28 >> 1)
        {
          sub_100173040(v28 > 1, v29 + 1, 1);
          v22 = v33;
        }

        v22[2] = v29 + 1;
        (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v14, v32);
        v26 += 8;
        --v21;
      }

      while (v21);
    }

    *v31 = v22;
  }

  return result;
}

void sub_1002932F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v45 = a8;
  v42 = a7;
  v43 = a3;
  v46 = a4;
  v47 = a6;
  v44 = a5;
  v10 = type metadata accessor for Logger();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.Code();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  __chkstk_darwin(v13);
  v53 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = *(type metadata accessor for ProofingSession() - 8);
    v18 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v19 = *(v17 + 72);
    while (1)
    {
      v20 = ProofingSession.objectID.getter();
      v21 = *(a1 + 16);
      v22 = [v21 objectWithID:{v20, v42, v43, v44}];
      type metadata accessor for StoredProofingSession();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        break;
      }

      v24 = v23;

      [v21 deleteObject:v24];
      v18 += v19;
      if (!--v16)
      {
        goto LABEL_5;
      }
    }

    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v54 = 0xD000000000000010;
    v55 = 0x80000001007094D0;
    v34 = [v20 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0xD00000000000001FLL;
    v39._object = 0x80000001007094F0;
    String.append(_:)(v39);
    (*(v51 + 104))(v53, enum case for DIPError.Code.coreDataError(_:), v52);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
LABEL_5:
    v25 = v56;
    sub_1005783D4();
    if (!v25)
    {
      v26 = v48;
      defaultLogger()();
      v27 = v46;

      v28 = v47;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v31 = 136315650;
        *(v31 + 4) = sub_100141FE4(v43, v27, &v54);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_100141FE4(v44, v28, &v54);
        *(v31 + 22) = 2080;
        if (v45)
        {
          v32 = 0xE500000000000000;
          v33 = 0x3E6C696E3CLL;
        }

        else
        {
          v33 = IdentityTarget.debugDescription.getter();
          v32 = v40;
        }

        v41 = sub_100141FE4(v33, v32, &v54);

        *(v31 + 24) = v41;
        _os_log_impl(&_mh_execute_header, v29, v30, "IdentityProofingCleanupProvider cleared all proofing sessions for %s, %s, target: %s successfully", v31, 0x20u);
        swift_arrayDestroy();
      }

      (*(v49 + 8))(v26, v50);
    }
  }
}

void sub_100293838(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  v14 = type metadata accessor for Logger();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  if (a2)
  {
    v22 = &v47[-v20];
    v23 = v21;
    v24 = v19;
    v25 = sub_10057C738(a1, a2);
    if (!v7)
    {
      v26 = v25;
      if (v25)
      {
        v27 = [v25 proofingSessionID];
        if (v27)
        {
          v28 = v27;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v29;

          [*(a3 + 16) deleteObject:v26];
          sub_10057BA64();
          defaultLogger()();

          v50 = v22;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v48 = v35;
            v37 = v36;
            v49 = swift_slowAlloc();
            v53 = v49;
            *v37 = 136315394;
            v38 = sub_100141FE4(v51, v52, &v53);
            v51 = v34;
            v39 = v38;

            *(v37 + 4) = v39;
            *(v37 + 12) = 2080;
            *(v37 + 14) = sub_100141FE4(a1, a2, &v53);
            v40 = v51;
            _os_log_impl(&_mh_execute_header, v51, v48, "Successfully deleted proofing session for with proofingSessionID: %s and credentialIdentifier: %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*(v23 + 8))(v50, v24);
        }

        else
        {
        }
      }
    }
  }

  else if (a5)
  {
    if ((a7 & 1) == 0)
    {
      v30 = a4;
      v31 = v21;
      v52 = v19;
      sub_10057BE48(a4, a5);
      if (!v7)
      {
        v33 = v32;
        if (v32)
        {
          [*(a3 + 16) deleteObject:v32];
          sub_10057BA64();
          v51 = 0;
          defaultLogger()();

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v53 = v50;
            *v43 = 136315394;
            *(v43 + 4) = sub_100141FE4(v30, a5, &v53);
            *(v43 + 12) = 2080;
            v44 = IdentityTarget.debugDescription.getter();
            v46 = sub_100141FE4(v44, v45, &v53);

            *(v43 + 14) = v46;
            _os_log_impl(&_mh_execute_header, v41, v42, "Successfully deleted proofing session for with proofingSessionID: %s and target: %s", v43, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*(v31 + 8))(v18, v52);
        }
      }
    }
  }
}

uint64_t sub_100293CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = type metadata accessor for DIPError.Code();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[30] = v11;
  v12 = *(v11 - 8);
  v4[31] = v12;
  v13 = *(v12 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_100293E8C, 0, 0);
}

uint64_t sub_100293E8C()
{
  v35 = v0;
  v1 = v0[36];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[36];
  v6 = v0[30];
  v7 = v0[31];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x80000001007090B0, &v34);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Kicked off prearm trust cleanup", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[37] = v10;
  v11 = v0[23];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
    v0[38] = v13;
    v14 = Strong;
    v13;

    v15 = swift_task_alloc();
    v0[39] = v15;
    *v15 = v0;
    v15[1] = sub_10029417C;

    return sub_1006738C8();
  }

  else
  {
    v17 = v0[34];
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[37];
    v22 = v0[34];
    v23 = v0[30];
    v24 = v0[31];
    if (v20)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Nothing done. no watch connection or watch has > 0 passes", v25, 2u);
    }

    v21(v22, v23);
    sub_100294F18();
    v27 = v0[35];
    v26 = v0[36];
    v29 = v0[33];
    v28 = v0[34];
    v30 = v0[32];
    v31 = v0[29];
    v32 = v0[26];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_10029417C(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_100294298, 0, 0);
}

uint64_t sub_100294298()
{
  v1 = v0[40];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1002944EC;
    v2 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_10084A490, &qword_1006DC480);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10067FE58;
    v0[13] = &unk_10080BC70;
    v0[14] = v2;
    [v1 provisionedCredentialCountForType:1 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[34];
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[37];
    v8 = v0[34];
    v9 = v0[30];
    v10 = v0[31];
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Nothing done. no watch connection or watch has > 0 passes", v11, 2u);
    }

    v7(v8, v9);
    sub_100294F18();
    v13 = v0[35];
    v12 = v0[36];
    v15 = v0[33];
    v14 = v0[34];
    v16 = v0[32];
    v17 = v0[29];
    v18 = v0[26];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1002944EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_100294BB4;
  }

  else
  {
    v3 = sub_1002945FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002945FC()
{
  v36 = v0;
  if (*(v0 + 168))
  {

    v1 = *(v0 + 272);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 296);
    v6 = *(v0 + 272);
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Nothing done. no watch connection or watch has > 0 passes", v9, 2u);
    }

    v5(v6, v7);
  }

  else
  {
    v10 = *(v0 + 280);
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 296);
    v15 = *(v0 + 280);
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    if (v13)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x80000001007090B0, &v35);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - clearing prearmtrust because there are 0 provisioned passes on the watch", v18, 0xCu);
      sub_10000BB78(v19);
    }

    v14(v15, v16);
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    sub_10057E28C();
    v20 = *(v0 + 320);
    v22 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;

    v24 = v20;
    sub_10057C18C(sub_1002A65BC, v23);
    v25 = *(v0 + 320);
  }

  sub_100294F18();
  v27 = *(v0 + 280);
  v26 = *(v0 + 288);
  v29 = *(v0 + 264);
  v28 = *(v0 + 272);
  v30 = *(v0 + 256);
  v31 = *(v0 + 232);
  v32 = *(v0 + 208);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100294BB4()
{
  v1 = v0[40];
  v2 = v0[41];
  swift_willThrow();

  v3 = v0[41];
  v4 = v0[33];
  v37 = v0[37];
  v38 = v0[32];
  v35 = v0[31];
  v36 = v0[30];
  v5 = v0[28];
  v6 = v0[26];
  v33 = v0[29];
  v34 = v0[27];
  v7 = v0[25];
  v32 = v0[24];
  sub_100294F18();
  _StringGuts.grow(_:)(40);

  swift_getErrorValue();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[20];
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v32);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v12, v33, v34);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v37(v4, v36);

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[37];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[28];
  if (v15)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Ignoring the delete prearm trust error", v22, 2u);
  }

  v16(v17, v19);
  (*(v21 + 8))(v18, v20);
  v24 = v0[35];
  v23 = v0[36];
  v26 = v0[33];
  v25 = v0[34];
  v27 = v0[32];
  v28 = v0[29];
  v29 = v0[26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100294F18()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x80000001007090B0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Finished prearm trust cleanup", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002950B0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 deviceID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10057C8F0(v10, v12);
  if (v2)
  {
  }

  sub_10057BA64();
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Successfully deleted prearm trust blob", v16, 2u);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100295264(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = type metadata accessor for ProofingSession();
  v3[31] = v5;
  v6 = *(v5 - 8);
  v3[32] = v6;
  v7 = *(v6 + 64) + 15;
  v3[33] = swift_task_alloc();
  v8 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  v3[34] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1002953A8, 0, 0);
}

uint64_t sub_1002953A8()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[9];
  v0[37] = v4;

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[38] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[39] = v7;
  *(v7 + 16) = sub_1002A73F0;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[40] = v9;
  *v9 = v0;
  v9[1] = sub_100295568;
  v10 = v0[36];
  v11 = v0[34];

  return AsyncCoreDataContainer.performWrite<A>(_:)(v10, sub_10017F710, v7, v11);
}

uint64_t sub_100295568()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_100295974;
  }

  else
  {
    v6 = v2[38];
    v5 = v2[39];
    v7 = v2[37];

    v4 = sub_100295698;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100295698()
{
  v1 = v0 + 36;
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  sub_1002A740C(v0[36], v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000BE18(*v1, &qword_10083DC18, &unk_1006DB720);
    v1 = v0 + 35;
  }

  else
  {
    (*(v0[32] + 32))(v0[33], v0[35], v0[31]);
    v5 = ProofingSession.country.getter();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = ProofingSession.workflowID.getter();
      v11 = v0[33];
      if (v10)
      {
        v12 = v9;
        v13 = v10;
        ProofingSession.documentType.getter();
        v14 = v0[32];
        v15 = v0[33];
        v16 = v0[31];
        if (v17)
        {
          v33 = v12;
          v35 = v0[31];
          v19 = v0[29];
          v18 = v0[30];
          v20 = v0[28];
          v31 = v0[27];
          v32 = IdentityDocumentType.init(documentTypeString:)();
          v21 = type metadata accessor for TaskPriority();
          (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
          v34 = v15;
          v22 = swift_allocObject();
          v22[2] = 0;
          v22[3] = 0;
          v22[4] = v31;
          v22[5] = v20;
          v22[6] = v19;
          v22[7] = v7;
          v22[8] = v8;
          v22[9] = v33;
          v22[10] = v13;
          v22[11] = v32;

          sub_1003E653C(0, 0, v18, &unk_1006DC530, v22);

          (*(v14 + 8))(v34, v35);
        }

        else
        {

          (*(v14 + 8))(v15, v16);
        }
      }

      else
      {
        v23 = v0[31];
        v24 = v0[32];

        (*(v24 + 8))(v11, v23);
      }
    }

    else
    {
      (*(v0[32] + 8))(v0[33], v0[31]);
    }
  }

  v25 = v0[35];
  v26 = v0[36];
  v27 = v0[33];
  v28 = v0[30];
  sub_10000BE18(*v1, &qword_10083DC18, &unk_1006DB720);

  v29 = v0[1];

  return v29();
}

uint64_t sub_100295974()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[30];

  v8 = v0[1];
  v9 = v0[41];

  return v8();
}

void sub_100295A28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = sub_1005791C8(a2, a3);
  if (!v4)
  {
    v17 = v16;
    v49 = v13;
    v50 = a3;
    v51 = v9;
    v52 = a1;
    v18 = v54;
    v47 = v15;
    v48 = a2;
    v19 = v16 >> 62;
    if (v16 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v53 = 0;
      if (v31)
      {
LABEL_4:
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v21 = *(v17 + 32);
        }

        v22 = v21;
        v49 = v8;
        if (v19)
        {
          sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);

          v23 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
          v17 = v23;
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);

          v23 = v17;
        }

        if (v17 >> 62)
        {
          v24 = _CocoaArrayWrapper.endIndex.getter();
          v25 = v52;
          if (v24)
          {
LABEL_12:
            if (v24 >= 1)
            {
              v26 = 0;
              v27 = *(v25 + 16);
              v28 = v23 & 0xC000000000000001;
              do
              {
                if (v28)
                {
                  v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v29 = *(v17 + 8 * v26 + 32);
                }

                v30 = v29;
                ++v26;
                [v27 deleteObject:{v29, v47, v48}];
              }

              while (v24 != v26);
              goto LABEL_24;
            }

LABEL_32:
            __break(1u);
            return;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = v52;
          if (v24)
          {
            goto LABEL_12;
          }
        }

LABEL_24:

        v39 = v53;
        sub_1005783D4();
        v53 = v39;
        if (v39)
        {

          return;
        }

        v40 = v47;
        defaultLogger()();
        v41 = v50;

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v55 = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_100141FE4(v48, v41, &v55);
          _os_log_impl(&_mh_execute_header, v42, v43, "IdentityProofingCleanUpProvider successfully deleted all proofing sessions with proofingSessionID: %s", v44, 0xCu);
          sub_10000BB78(v45);
        }

        (*(v51 + 8))(v40, v49);
        v18 = v54;
        ProofingSession.init(_:)();
        v38 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v53 = 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }

    v32 = v49;
    defaultLogger()();
    v33 = v50;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100141FE4(v48, v33, &v55);
      _os_log_impl(&_mh_execute_header, v34, v35, "IdentityProofingCleanUpProvider no proofing sessions with proofingSessionID: %s", v36, 0xCu);
      sub_10000BB78(v37);
    }

    (*(v51 + 8))(v32, v8);
    v38 = 1;
LABEL_29:
    v46 = type metadata accessor for ProofingSession();
    (*(*(v46 - 8) + 56))(v18, v38, 1, v46);
  }
}

uint64_t sub_100295F44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 788) = a4;
  *(v5 + 480) = a3;
  *(v5 + 488) = v4;
  *(v5 + 464) = a1;
  *(v5 + 472) = a2;
  v6 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 504) = v7;
  v8 = *(v7 - 8);
  *(v5 + 512) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = swift_task_alloc();
  *(v5 + 536) = swift_task_alloc();
  *(v5 + 544) = swift_task_alloc();
  *(v5 + 552) = swift_task_alloc();
  v10 = type metadata accessor for ProofingSession();
  *(v5 + 560) = v10;
  v11 = *(v10 - 8);
  *(v5 + 568) = v11;
  *(v5 + 576) = *(v11 + 64);
  *(v5 + 584) = swift_task_alloc();
  *(v5 + 592) = swift_task_alloc();
  *(v5 + 600) = swift_task_alloc();
  *(v5 + 608) = swift_task_alloc();
  *(v5 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_100296108, 0, 0);
}

uint64_t sub_100296108()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  *(v0 + 624) = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 16);
  os_unfair_lock_unlock(v2 + 54);
  v3 = *(v0 + 788);
  v4 = *(v0 + 472);
  v5 = *(v0 + 480);
  v6 = *(v0 + 464);
  v7 = *(v0 + 72);
  *(v0 + 632) = v7;

  sub_100031918(v0 + 16);
  v8 = swift_allocObject();
  *(v0 + 640) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v3 & 1;
  *(v8 + 32) = v6;
  *(v8 + 40) = v4;
  v9 = *(v7 + 16);
  v10 = swift_allocObject();
  *(v0 + 648) = v10;
  *(v10 + 16) = sub_1002A723C;
  *(v10 + 24) = v8;
  v11 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 656) = v12;
  v13 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v12 = v0;
  v12[1] = sub_100296300;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 440, sub_100267820, v10, v13);
}

uint64_t sub_100296300()
{
  v2 = *(*v1 + 656);
  v3 = *v1;
  *(v3 + 664) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100296A0C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 648);
    v5 = *(v3 + 640);
    v6 = *(v3 + 632);
    v7 = *(v3 + 788);
    v8 = *(v3 + 472);

    *(v3 + 672) = *(v3 + 440);
    v9 = swift_task_alloc();
    *(v3 + 680) = v9;
    *v9 = v3;
    v9[1] = sub_1002964E0;
    v10 = *(v3 + 480);
    v11 = *(v3 + 464);

    return sub_1002A2920(v11, v8, v10, v7 & 1 | 0x80u);
  }
}

uint64_t sub_1002964E0()
{
  v1 = *(*v0 + 680);
  v3 = *v0;

  return _swift_task_switch(sub_1002965DC, 0, 0);
}

void sub_1002965DC()
{
  v52 = v0;
  v1 = *(v0 + 672);
  v2 = *(v1 + 16);
  *(v0 + 688) = v2;
  if (v2)
  {
    v3 = *(v0 + 568);
    v4 = *(v3 + 80);
    *(v0 + 784) = v4;
    v5 = *(v0 + 664);
    *(v0 + 704) = 0;
    *(v0 + 696) = v5;
    if (*(v1 + 16))
    {
      v6 = *(v0 + 616);
      v7 = *(v0 + 560);
      v9 = *(v3 + 16);
      v8 = v3 + 16;
      *(v0 + 712) = *(v8 + 56);
      *(v0 + 720) = v9;
      *(v0 + 728) = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v6, v1 + ((v4 + 32) & ~v4), v7);
      ProofingSession.target.getter();
      IdentityTarget.init(rawValue:)();
      if ((v10 & 1) == 0)
      {
        v11 = *(v0 + 552);
        v12 = *(v0 + 472);
        defaultLogger()();

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v0 + 552);
        v18 = *(v0 + 504);
        v17 = *(v0 + 512);
        if (v15)
        {
          v20 = *(v0 + 464);
          v19 = *(v0 + 472);
          v49 = *(v0 + 552);
          v21 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v21 = 136315394;
          *(v21 + 4) = sub_100141FE4(v20, v19, &v51);
          *(v21 + 12) = 2080;
          v22 = IdentityTarget.debugDescription.getter();
          v24 = sub_100141FE4(v22, v23, &v51);

          *(v21 + 14) = v24;
          _os_log_impl(&_mh_execute_header, v13, v14, "Will attempt to delete the proofing session with ID %s and target %s", v21, 0x16u);
          swift_arrayDestroy();

          (*(v17 + 8))(v49, v18);
        }

        else
        {

          (*(v17 + 8))(v16, v18);
        }
      }

      v26 = swift_task_alloc();
      *(v0 + 736) = v26;
      *v26 = v0;
      v26[1] = sub_100296CC0;
      v27 = *(v0 + 616);
      v28 = *(v0 + 488);

      sub_100299718(v27);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
      v25 = _swiftEmptyArrayStorage[5];
    }

    v29 = *(v0 + 672);

    v30 = *(v0 + 528);

    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 528);
    v35 = *(v0 + 504);
    v36 = *(v0 + 512);
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Document Type Sub String is not stored in the database", v37, 2u);
    }

    (*(v36 + 8))(v34, v35);
    v38 = *(v0 + 616);
    v39 = *(v0 + 608);
    v40 = *(v0 + 600);
    v41 = *(v0 + 592);
    v42 = *(v0 + 584);
    v43 = *(v0 + 552);
    v44 = *(v0 + 544);
    v45 = *(v0 + 536);
    v46 = *(v0 + 528);
    v47 = *(v0 + 520);
    v50 = *(v0 + 496);

    v48 = *(v0 + 8);

    v48();
  }
}

uint64_t sub_100296A0C()
{
  v38 = v0;
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];

  v4 = v0[83];
  v5 = v0[65];
  v6 = v0[59];
  defaultLogger()();

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[64];
    v34 = v0[63];
    v35 = v0[65];
    v10 = v0[58];
    v33 = v0[59];
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v11 = 136315394;
    swift_getErrorValue();
    v13 = v0[52];
    v12 = v0[53];
    v14 = v0[54];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v37);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100141FE4(v10, v33, &v37);
    _os_log_impl(&_mh_execute_header, v7, v8, "received an error %s while clearning proofing session with ID %s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v35, v34);
  }

  else
  {
    v18 = v0[65];
    v19 = v0[63];
    v20 = v0[64];

    (*(v20 + 8))(v18, v19);
  }

  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[75];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[66];
  v30 = v0[65];
  v36 = v0[62];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100296CC0()
{
  v1 = *(*v0 + 736);
  v3 = *v0;

  return _swift_task_switch(sub_100296DBC, 0, 0);
}

void sub_100296DBC()
{
  v1 = *(v0 + 696);
  v2 = *(*(v0 + 624) + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 216);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v16 = *(v0 + 728);
    v3 = *(v0 + 720);
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    v6 = *(v0 + 576);
    v7 = *(v0 + 568);
    v8 = *(v0 + 560);
    v9 = (*(v0 + 784) + 16) & ~*(v0 + 784);
    os_unfair_lock_unlock(v2 + 54);
    v10 = *(v0 + 272);
    *(v0 + 744) = v10;

    sub_100031918(v0 + 216);
    v3(v5, v4, v8);
    v11 = swift_allocObject();
    *(v0 + 752) = v11;
    (*(v7 + 32))(v11 + v9, v5, v8);
    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    *(v0 + 760) = v13;
    *(v13 + 16) = sub_1002A729C;
    *(v13 + 24) = v11;
    v14 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v15 = swift_task_alloc();
    *(v0 + 768) = v15;
    *v15 = v0;
    v15[1] = sub_100296FC0;

    AsyncCoreDataContainer.performWrite<A>(_:)(v15, sub_10021F3D0, v13, &type metadata for () + 8);
  }
}

uint64_t sub_100296FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v9 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v4 = sub_100297AFC;
  }

  else
  {
    v5 = v2[95];
    v6 = v2[94];
    v7 = v2[93];

    v4 = sub_1002970F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002970F4()
{
  v127 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 472);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 616);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 544);
  v11 = *(v0 + 504);
  v10 = *(v0 + 512);
  if (v5)
  {
    v119 = *(v0 + 544);
    v121 = *(v0 + 560);
    v13 = *(v0 + 464);
    v12 = *(v0 + 472);
    v14 = swift_slowAlloc();
    v117 = v6;
    v15 = swift_slowAlloc();
    v126 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100141FE4(v13, v12, &v126);
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully cleared the stored proofing session with proofingSessionID: %s", v14, 0xCu);
    sub_10000BB78(v15);

    (*(v10 + 8))(v119, v11);
    v16 = *(v7 + 8);
    result = v16(v117, v121);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
    v16 = *(v7 + 8);
    result = v16(v6, v8);
  }

  v18 = *(v0 + 704) + 1;
  if (v18 == *(v0 + 688))
  {
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    do
    {
      v22 = *(v0 + 600);
      v23 = *(v0 + 560);
      v24 = *(v0 + 568) + 8;
      (*(v0 + 720))(v22, *(v0 + 672) + ((*(v0 + 784) + 32) & ~*(v0 + 784)) + *(v0 + 712) * v19, v23);
      v25 = ProofingSession.workflowID.getter();
      v27 = v26;
      v16(v22, v23);
      if (v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1003C5110(0, *(v20 + 2) + 1, 1, v20);
        }

        v29 = *(v20 + 2);
        v28 = *(v20 + 3);
        if (v29 >= v28 >> 1)
        {
          v20 = sub_1003C5110((v28 > 1), v29 + 1, 1, v20);
        }

        *(v20 + 2) = v29 + 1;
        v21 = &v20[16 * v29];
        *(v21 + 4) = v25;
        *(v21 + 5) = v27;
      }

      ++v19;
    }

    while (v19 != *(v0 + 688));
    if (*(v20 + 2))
    {
      v54 = *(v20 + 4);
      v53 = *(v20 + 5);
    }

    else
    {
      v54 = 0;
      v53 = 0;
    }

    v55 = *(v0 + 688);
    v56 = *(v0 + 672);
    if (v55 <= *(v56 + 16))
    {
      v120 = v54;
      v123 = v53;
      v57 = *(v0 + 592);
      v58 = *(v0 + 568);
      v59 = *(v0 + 560);
      v60 = v56 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v61 = *(v58 + 16);
      v61(v57, v60 + *(v58 + 72) * (v55 - 1), v59);
      v118 = ProofingSession.country.getter();
      v63 = v62;
      v64 = *(v58 + 8);
      result = v64(v57, v59);
      if (*(v56 + 16))
      {
        v65 = *(v0 + 672);
        v66 = *(v0 + 584);
        v67 = *(v0 + 560);
        v61(v66, v60, v67);

        ProofingSession.documentType.getter();
        v69 = v68;
        v64(v66, v67);
        if (v69)
        {
          v70 = IdentityDocumentType.init(documentTypeString:)();
          if (v63)
          {
            v71 = v63;
          }

          else
          {
            v71 = 0xE000000000000000;
          }

          if (v123)
          {
            v72 = v70;
            v74 = *(v0 + 488);
            v73 = *(v0 + 496);
            v75 = *(v0 + 464);
            v76 = *(v0 + 472);
            if (v63)
            {
              v77 = v118;
            }

            else
            {
              v77 = 0;
            }

            v78 = type metadata accessor for TaskPriority();
            (*(*(v78 - 8) + 56))(v73, 1, 1, v78);
            v79 = swift_allocObject();
            v79[2] = 0;
            v79[3] = 0;
            v79[4] = v75;
            v79[5] = v76;
            v79[6] = v74;
            v79[7] = v77;
            v79[8] = v71;
            v79[9] = v120;
            v79[10] = v123;
            v79[11] = v72;

            sub_1003E653C(0, 0, v73, &unk_1006DC518, v79);
          }

          else
          {
            v91 = *(v0 + 536);
            v92 = *(v0 + 472);
            defaultLogger()();

            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.debug.getter();

            v95 = os_log_type_enabled(v93, v94);
            v96 = *(v0 + 536);
            v98 = *(v0 + 504);
            v97 = *(v0 + 512);
            if (v95)
            {
              v124 = *(v0 + 536);
              v100 = *(v0 + 464);
              v99 = *(v0 + 472);
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v126 = v102;
              *v101 = 136315138;
              *(v101 + 4) = sub_100141FE4(v100, v99, &v126);
              _os_log_impl(&_mh_execute_header, v93, v94, "unable to notify server of terminal state for proofingSessionID %s as workflowID doesn't exist", v101, 0xCu);
              sub_10000BB78(v102);

              (*(v97 + 8))(v124, v98);
            }

            else
            {

              (*(v97 + 8))(v96, v98);
            }
          }

          v103 = type metadata accessor for IdentityManagementSessionDelegate();
          v104 = [objc_opt_self() defaultCenter];
          v105 = String._bridgeToObjectiveC()();
          *(v0 + 456) = v103;
          sub_100007224(&qword_10083D698, &unk_1006DB6F0);
          [v104 postNotificationName:v105 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
        }

        else
        {
          v80 = *(v0 + 528);

          defaultLogger()();
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();
          v83 = os_log_type_enabled(v81, v82);
          v84 = *(v0 + 528);
          v85 = *(v0 + 504);
          v86 = *(v0 + 512);
          if (v83)
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v81, v82, "Document Type Sub String is not stored in the database", v87, 2u);
          }

          (*(v86 + 8))(v84, v85);
        }

        v106 = *(v0 + 616);
        v107 = *(v0 + 608);
        v108 = *(v0 + 600);
        v109 = *(v0 + 592);
        v110 = *(v0 + 584);
        v111 = *(v0 + 552);
        v112 = *(v0 + 544);
        v113 = *(v0 + 536);
        v114 = *(v0 + 528);
        v115 = *(v0 + 520);
        v125 = *(v0 + 496);

        v116 = *(v0 + 8);

        return v116();
      }

LABEL_47:
      __break(1u);
      return result;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v30 = *(v0 + 776);
  *(v0 + 704) = v18;
  *(v0 + 696) = v30;
  v31 = *(v0 + 672);
  if (v18 >= *(v31 + 16))
  {
    __break(1u);
    goto LABEL_46;
  }

  v32 = *(v0 + 616);
  v33 = *(v0 + 568);
  v34 = *(v0 + 560);
  v35 = v31 + ((*(v0 + 784) + 32) & ~*(v0 + 784));
  v36 = *(v33 + 16);
  v33 += 16;
  v37 = *(v33 + 56);
  *(v0 + 712) = v37;
  *(v0 + 720) = v36;
  *(v0 + 728) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36(v32, v35 + v37 * v18, v34);
  ProofingSession.target.getter();
  IdentityTarget.init(rawValue:)();
  if ((v38 & 1) == 0)
  {
    v39 = *(v0 + 552);
    v40 = *(v0 + 472);
    defaultLogger()();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 552);
    v46 = *(v0 + 504);
    v45 = *(v0 + 512);
    if (v43)
    {
      v48 = *(v0 + 464);
      v47 = *(v0 + 472);
      v122 = *(v0 + 552);
      v49 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_100141FE4(v48, v47, &v126);
      *(v49 + 12) = 2080;
      v50 = IdentityTarget.debugDescription.getter();
      v52 = sub_100141FE4(v50, v51, &v126);

      *(v49 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "Will attempt to delete the proofing session with ID %s and target %s", v49, 0x16u);
      swift_arrayDestroy();

      (*(v45 + 8))(v122, v46);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }
  }

  v88 = swift_task_alloc();
  *(v0 + 736) = v88;
  *v88 = v0;
  v88[1] = sub_100296CC0;
  v89 = *(v0 + 616);
  v90 = *(v0 + 488);

  return sub_100299718(v89);
}

uint64_t sub_100297AFC()
{
  v42 = v0;
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[84];
  v5 = v0[77];
  v6 = v0[71];
  v7 = v0[70];

  (*(v6 + 8))(v5, v7);
  v8 = v0[97];
  v9 = v0[65];
  v10 = v0[59];
  defaultLogger()();

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[64];
    v38 = v0[63];
    v39 = v0[65];
    v14 = v0[58];
    v37 = v0[59];
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v15 = 136315394;
    swift_getErrorValue();
    v17 = v0[52];
    v16 = v0[53];
    v18 = v0[54];
    v19 = Error.localizedDescription.getter();
    v21 = sub_100141FE4(v19, v20, &v41);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100141FE4(v14, v37, &v41);
    _os_log_impl(&_mh_execute_header, v11, v12, "received an error %s while clearning proofing session with ID %s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v39, v38);
  }

  else
  {
    v22 = v0[65];
    v23 = v0[63];
    v24 = v0[64];

    (*(v24 + 8))(v22, v23);
  }

  v25 = v0[77];
  v26 = v0[76];
  v27 = v0[75];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[67];
  v33 = v0[66];
  v34 = v0[65];
  v40 = v0[62];

  v35 = v0[1];

  return v35();
}

void sub_100297DE0(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v53 = a1;
  v54 = type metadata accessor for ProofingSession();
  v10 = *(v54 - 1);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v54);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = sub_1005791C8(a3, a4);
    if (v5)
    {
      return;
    }

    v24 = v23;
    v51 = 0;
    if (v23 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (v25)
      {
LABEL_5:
        v55 = _swiftEmptyArrayStorage;
        sub_100173040(0, v25 & ~(v25 >> 63), 0);
        if (v25 < 0)
        {
          __break(1u);
        }

        else
        {
          v52 = a5;
          v26 = v55;
          if ((v24 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v25; ++i)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              ProofingSession.init(_:)();
              v55 = v26;
              v29 = v26[2];
              v28 = v26[3];
              if (v29 >= v28 >> 1)
              {
                sub_100173040(v28 > 1, v29 + 1, 1);
                v26 = v55;
              }

              v26[2] = v29 + 1;
              (*(v10 + 32))(v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v16, v54);
            }
          }

          else
          {
            v47 = 32;
            do
            {
              v48 = *(v24 + v47);
              ProofingSession.init(_:)();
              v55 = v26;
              v50 = v26[2];
              v49 = v26[3];
              if (v50 >= v49 >> 1)
              {
                sub_100173040(v49 > 1, v50 + 1, 1);
                v26 = v55;
              }

              v26[2] = v50 + 1;
              (*(v10 + 32))(v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v50, v14, v54);
              v47 += 8;
              --v25;
            }

            while (v25);
          }

          *v52 = v26;
        }

        return;
      }
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_5;
      }
    }

    *a5 = _swiftEmptyArrayStorage;
    return;
  }

  v30 = v22;
  v31 = v20;
  v52 = a5;
  v32 = v19;
  v33 = sub_1005792EC(a3, a4);
  if (!v5)
  {
    v51 = 0;
    if (v33)
    {
      v34 = v33;
      sub_100007224(&qword_10083C0E8, &unk_1006DC520);
      v35 = *(v10 + 72);
      v36 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1006BF520;
      v38 = v34;
      ProofingSession.init(_:)();

      *v52 = v37;
    }

    else
    {
      v39 = a4;
      defaultLogger()();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v54;
        *v42 = 136315394;
        *(v42 + 4) = sub_100141FE4(a3, v39, &v55);
        *(v42 + 12) = 2080;
        v43 = IdentityTarget.debugDescription.getter();
        v45 = v30;
        v46 = sub_100141FE4(v43, v44, &v55);

        *(v42 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Proofing session doesn't exist for a %s and target %s", v42, 0x16u);
        swift_arrayDestroy();

        (*(v31 + 8))(v45, v32);
      }

      else
      {

        (*(v31 + 8))(v30, v32);
      }

      *v52 = _swiftEmptyArrayStorage;
    }
  }
}

uint64_t sub_100298310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v15;
  *(v8 + 88) = v14;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1002983F8, 0, 0);
}

uint64_t sub_1002983F8()
{
  v25 = v0;
  v1 = v0[17];
  v2 = v0[7];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  if (v5)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to notify server of terminal state for proofingSessionID %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[18] = v13;
  v14 = v0[12];
  v15 = v0[7];
  v16 = *sub_10000BA08((v0[8] + 24), *(v0[8] + 48));
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1002985DC;
  v18 = v0[13];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v22 = v0[6];

  return sub_10022083C(&off_1007FBA80, v21, v19, v20, v14, v22, v15, v18);
}

uint64_t sub_1002985DC()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100298720, 0, 0);
  }

  else
  {
    v5 = v3[16];
    v4 = v3[17];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100298720()
{
  v28 = v0;
  v1 = v0[20];
  v2 = v0[16];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = v0[15];
    v25 = v0[16];
    v26 = v0[18];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Action notification request failure. unable to notify server of terminal state %s", v8, 0xCu);
    sub_10000BB78(v9);

    v26(v25, v7);
  }

  else
  {
    v16 = v0[20];
    v17 = v0[18];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];

    v17(v18, v20);
  }

  v22 = v0[16];
  v21 = v0[17];

  v23 = v0[1];

  return v23();
}

void sub_100298908(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v48 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  type metadata accessor for StoredProofingSession();
  v15 = static StoredProofingSession.fetchRequest()();
  v16 = NSManagedObjectContext.fetch<A>(_:)();

  if (v2)
  {
    return;
  }

  v48[1] = 0;
  v17 = v16;
  if (v16 >> 62)
  {
    goto LABEL_62;
  }

  v56 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
    goto LABEL_66;
  }

  while (2)
  {
    v18 = 0;
    v54 = v17 & 0xFFFFFFFFFFFFFF8;
    v55 = v17 & 0xC000000000000001;
    v53 = v17 + 32;
    v61 = (v10 + 4);
    v62 = (v10 + 6);
    v59 = (v10 + 7);
    v58 = _swiftEmptyArrayStorage;
    v60 = v10;
    v52 = v17;
    v49 = a2;
    while (1)
    {
      if (v55)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v54 + 16))
        {
          goto LABEL_57;
        }

        v17 = *(v53 + 8 * v18);
      }

      v10 = v17;
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_56;
      }

      v21 = [v17 uploadAssets];
      v57 = v20;
      if (v21)
      {
        break;
      }

LABEL_33:
      v26 = _swiftEmptyArrayStorage;
LABEL_41:
      v33 = v26;
      v34 = v26[2];
      v35 = v58;
      v36 = v58[2];
      v10 = (v36 + v34);
      if (__OFADD__(v36, v34))
      {
        goto LABEL_58;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v35[3] >> 1)
      {
        v38 = v60;
        v17 = v35;
      }

      else
      {
        if (v36 <= v10)
        {
          v39 = v36 + v34;
        }

        else
        {
          v39 = v36;
        }

        v17 = sub_1003C5F88(isUniquelyReferenced_nonNull_native, v39, 1, v35);
        v38 = v60;
      }

      v40 = v33[2];
      v58 = v17;
      if (v40)
      {
        v41 = *(v17 + 16);
        if ((*(v17 + 24) >> 1) - v41 < v34)
        {
          goto LABEL_60;
        }

        v42 = v17 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v38[9] * v41;
        swift_arrayInitWithCopy();

        if (v34)
        {
          v43 = v58[2];
          v19 = __OFADD__(v43, v34);
          v44 = v43 + v34;
          if (v19)
          {
            goto LABEL_61;
          }

          v58[2] = v44;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_59;
        }
      }

      v18 = v57;
      v17 = v52;
      if (v57 == v56)
      {
LABEL_65:

        v47 = v58;
        goto LABEL_67;
      }
    }

    v22 = v21;
    v23 = sub_10031F088(v22);

    v24 = sub_10057A09C(v23);

    if (!v24)
    {

      goto LABEL_33;
    }

    a2 = (v24 & 0xFFFFFFFFFFFFFF8);
    v63 = v24;
    if (!(v24 >> 62))
    {
      v66 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66)
      {
        goto LABEL_15;
      }

LABEL_39:

      v26 = _swiftEmptyArrayStorage;
LABEL_40:
      a2 = v49;
      goto LABEL_41;
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_39;
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    v66 = v17;
    if (!v17)
    {
      v50 = v22;
      v51 = v10;
      v26 = _swiftEmptyArrayStorage;
LABEL_38:

      goto LABEL_40;
    }

LABEL_15:
    v50 = v22;
    v51 = v10;
    v25 = 0;
    v10 = v63;
    v65 = v63 & 0xC000000000000001;
    v26 = _swiftEmptyArrayStorage;
    v64 = a2;
    while (2)
    {
      if (v65)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= a2[2])
        {
          goto LABEL_55;
        }

        v17 = v10[v25 + 4];
      }

      v27 = v17;
      if (!__OFADD__(v25, 1))
      {
        v67 = v25 + 1;
        v28 = [v17 assetFileURL];
        if (v28)
        {
          v29 = v28;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v10 = v63;
          URL.init(string:)();
          a2 = v64;

          if ((*v62)(v8, 1, v9) != 1)
          {
            v30 = *v61;
            (*v61)(v13, v8, v9);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1003C5F88(0, v26[2] + 1, 1, v26);
            }

            v32 = v26[2];
            v31 = v26[3];
            if (v32 >= v31 >> 1)
            {
              v26 = sub_1003C5F88(v31 > 1, v32 + 1, 1, v26);
            }

            v26[2] = v32 + 1;
            v17 = (v30)(v26 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v60[9] * v32, v13, v9);
            a2 = v64;
LABEL_18:
            ++v25;
            if (v67 == v66)
            {
              goto LABEL_38;
            }

            continue;
          }
        }

        else
        {

          (*v59)(v8, 1, 1, v9);
        }

        v17 = sub_10000BE18(v8, &unk_100844540, &unk_1006BFBC0);
        goto LABEL_18;
      }

      break;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v45 = v17;
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v45;
      v56 = v46;
      if (!v46)
      {
        v58 = _swiftEmptyArrayStorage;
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

LABEL_66:

  v47 = _swiftEmptyArrayStorage;
LABEL_67:
  *a2 = v47;
}

void sub_100298F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v75 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v75 - v17;
  __chkstk_darwin(v16);
  v20 = &v75 - v19;
  v21 = v90;
  sub_10057BE48(a2, a3);
  if (v21)
  {
    return;
  }

  v23 = v12;
  v90 = a4;
  v24 = v8;
  v85 = v20;
  v86 = v18;
  v76 = a1;
  v78 = a2;
  v79 = a3;
  v80 = 0;
  if (!v22)
  {
    v49 = v23;
    defaultLogger()();
    v50 = v79;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v78;
    v55 = v24;
    if (v53)
    {
      v56 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v56 = 136315394;
      *(v56 + 4) = sub_100141FE4(v54, v50, &v91);
      *(v56 + 12) = 2080;
      v57 = IdentityTarget.debugDescription.getter();
      v59 = sub_100141FE4(v57, v58, &v91);

      *(v56 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "proofing session for %s and %s doesn't exist", v56, 0x16u);
      swift_arrayDestroy();
    }

    (*(v87 + 8))(v49, v55);
    return;
  }

  v77 = v22;
  v25 = [v22 uploadAssets];
  v26 = v8;
  if (!v25)
  {
LABEL_26:
    defaultLogger()();
    v62 = v79;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v65 = 136315394;
      *(v65 + 4) = sub_100141FE4(v78, v62, &v91);
      *(v65 + 12) = 2080;
      v66 = IdentityTarget.debugDescription.getter();
      v68 = sub_100141FE4(v66, v67, &v91);

      *(v65 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v63, v64, "No assets exists for proofing session %s and %s to be deleted.", v65, 0x16u);
      swift_arrayDestroy();
    }

    (*(v87 + 8))(v15, v8);
    return;
  }

  v27 = v25;
  v28 = sub_10031F088(v27);

  v29 = sub_10057A09C(v28);

  if (!v29)
  {

    goto LABEL_26;
  }

  v75 = v27;
  if (v29 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v85;
  v33 = v86;
  if (v31)
  {
    if (v31 < 1)
    {
      __break(1u);
      return;
    }

    v34 = 0;
    v35 = *(v76 + 16);
    v89 = v29 & 0xC000000000000001;
    v90 = v35;
    v88 = (v87 + 8);
    *&v30 = 136315138;
    v81 = v30;
    v83 = v29;
    v84 = v26;
    v82 = v31;
    do
    {
      if (v89)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v29 + 8 * v34 + 32);
      }

      v37 = v36;
      [v90 deleteObject:{v36, v75}];
      defaultLogger()();
      v38 = v37;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v91 = v42;
        *v41 = v81;
        v43 = [v38 assetType];
        if (v43)
        {
          v44 = v43;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0xE000000000000000;
        }

        v31 = v82;
        v48 = sub_100141FE4(v45, v47, &v91);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Delete called on StoredUploadAsset with type %s", v41, 0xCu);
        sub_10000BB78(v42);

        v26 = v84;
        v32 = v85;
        (*v88)(v85, v84);
        v33 = v86;
        v29 = v83;
      }

      else
      {

        (*v88)(v32, v26);
      }

      ++v34;
    }

    while (v31 != v34);
  }

  sub_1005801E4(0);
  v60 = IdentityProofingActionStatus.rawValue.getter();
  sub_10057F148(v60, 0);
  v61 = v80;
  sub_10057BA64();
  if (v61)
  {
  }

  else
  {
    defaultLogger()();
    v69 = v79;

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v91 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_100141FE4(v78, v69, &v91);
      _os_log_impl(&_mh_execute_header, v70, v71, "Cleanup after uploads complete for proofingSessionID -> %s", v72, 0xCu);
      sub_10000BB78(v73);

      v74 = v77;
    }

    else
    {

      v74 = v75;
    }

    (*(v87 + 8))(v33, v26);
  }
}

uint64_t sub_100299718(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100299808, 0, 0);
}

uint64_t sub_100299808()
{
  v1 = v0[6];
  v2 = ProofingSession.credentialIdentifier.getter();
  v0[15] = v3;
  if (!v3)
  {
    v18 = v0[11];
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v10, v11);
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];
    if (v19)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "credentialIdentifier doesn't exist, cannot delete the crendential";
      goto LABEL_21;
    }

LABEL_22:

    (*(v15 + 8))(v13, v14);
    v38 = v0[13];
    v37 = v0[14];
    v40 = v0[11];
    v39 = v0[12];
    v41 = v0[10];

    v42 = v0[1];

    return v42();
  }

  v4 = v3;
  v5 = v2;
  v6 = v0[6];
  ProofingSession.target.getter();
  v7 = IdentityTarget.init(rawValue:)();
  if (v8)
  {
    v9 = v0[12];

    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[12];
    v14 = v0[8];
    v15 = v0[9];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "invalid target, cannot delete the session";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v10, v11, v17, v16, 2u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v7 == 2)
  {
    v26 = v0[7];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v35 = v0[14];

      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      v36 = os_log_type_enabled(v10, v11);
      v13 = v0[14];
      v14 = v0[8];
      v15 = v0[9];
      if (v36)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "No watch connection available, ignoring deleteCredential on Watch";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v28 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
    v0[19] = v28;
    v29 = Strong;
    v30 = v28;

    v43 = sub_1002A472C;
    v31 = swift_task_alloc();
    v0[20] = v31;
    *v31 = v0;
    v31[1] = sub_100299FE0;
    v23 = v5;
    v24 = v4;
    v25 = v30;
  }

  else
  {
    if (v7 != 1)
    {
      v33 = v0[13];

      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v10, v11);
      v13 = v0[13];
      v14 = v0[8];
      v15 = v0[9];
      if (v34)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Unknown target, cannot delete the session";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v20 = *(qword_100882228 + 16);
    v0[16] = v20;
    v43 = sub_1002A4034;
    v21 = v20;
    v22 = swift_task_alloc();
    v0[17] = v22;
    *v22 = v0;
    v22[1] = sub_100299C14;
    v23 = v5;
    v24 = v4;
    v25 = v21;
  }

  return (v43)(v23, v24, v25);
}

uint64_t sub_100299C14()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100299DDC;
  }

  else
  {
    v4 = sub_100299D44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100299D44()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100299DDC()
{
  v27 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);

  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v25 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "received an error while deleting the credential from proofing session %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  v22 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100299FE0()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_10029A1A8;
  }

  else
  {
    v4 = sub_10029A110;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10029A110()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10029A1A8()
{
  v27 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 80);

  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v25 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "received an error while deleting the credential from proofing session %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  v22 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10029A3AC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v33 - v9;
  result = sub_1005770D4();
  if (v1)
  {
    return result;
  }

  v13 = result;
  v33[1] = 0;
  if (result)
  {
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_5:
        v33[0] = a1;
        v38 = result;
        if (result < 1)
        {
          __break(1u);
        }

        else
        {
          v14 = 0;
          v15 = *(v33[0] + 16);
          v39 = v13 & 0xC000000000000001;
          v40 = v15;
          v41 = (v4 + 8);
          *&v12 = 136315138;
          v34 = v12;
          v16 = v38;
          v36 = v10;
          v37 = v3;
          v35 = v13;
          do
          {
            if (v39)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v13 + 8 * v14 + 32);
            }

            v18 = v17;
            [v40 deleteObject:{v17, v33[0]}];
            defaultLogger()();
            v19 = v18;
            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              v23 = swift_slowAlloc();
              v42 = v23;
              *v22 = v34;
              v24 = [v19 proofingSessionID];
              if (v24)
              {
                v25 = v24;
                v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v28 = v27;
              }

              else
              {
                v26 = 0;
                v28 = 0xE000000000000000;
              }

              v29 = sub_100141FE4(v26, v28, &v42);

              *(v22 + 4) = v29;
              _os_log_impl(&_mh_execute_header, v20, v21, "Successfully deleted biome metadata for proofingSessionID: %s", v22, 0xCu);
              sub_10000BB78(v23);

              v10 = v36;
              v3 = v37;
              (*v41)(v36, v37);
              v13 = v35;
              v16 = v38;
            }

            else
            {

              (*v41)(v10, v3);
            }

            ++v14;
          }

          while (v16 != v14);

          return sub_100576468();
        }

        return result;
      }
    }

    else
    {
      result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "No biome metadata exists in the database", v32, 2u);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_10029A780(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  result = sub_1005798F8();
  if (v2)
  {
    return result;
  }

  v15 = result;
  v45 = result;
  if (!(result >> 62))
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = 0;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_15:

    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136315138;
      v37 = IdentityDocumentType.description.getter();
      v39 = v5;
      v40 = sub_100141FE4(v37, v38, &v51);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "No proofing biome data exists in the database for documentType %s", v35, 0xCu);
      sub_10000BB78(v36);

      return (*(v6 + 8))(v10, v39);
    }

    else
    {

      return (*(v6 + 8))(v10, v5);
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = v45;
  v42 = 0;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v41 = a1;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v17 = 0;
    v18 = *(v41 + 16);
    v48 = v15 & 0xC000000000000001;
    v49 = v18;
    v19 = (v6 + 8);
    *&v14 = 136315138;
    v43 = v14;
    v44 = result;
    do
    {
      if (v48)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v15 + 8 * v17 + 32);
      }

      v50 = v20;
      [v49 deleteObject:{v20, v41}];
      defaultLogger()();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v23 = v43;
        v24 = IdentityDocumentType.description.getter();
        v26 = sub_100141FE4(v24, v25, &v51);
        v46 = v21;
        v27 = v19;
        v28 = v12;
        v29 = a2;
        v30 = v5;
        v31 = v26;
        v16 = v44;

        *(v23 + 4) = v31;
        v5 = v30;
        a2 = v29;
        v12 = v28;
        v19 = v27;
        v32 = v46;
        _os_log_impl(&_mh_execute_header, v46, v22, "Successfully deleted proofing biome data for documentType: %s", v23, 0xCu);
        sub_10000BB78(v47);

        v15 = v45;
      }

      else
      {
      }

      (*v19)(v12, v5);
      ++v17;
    }

    while (v16 != v17);

    return sub_1005783D4();
  }

  return result;
}

uint64_t sub_10029AB9C(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  result = sub_1005798F8();
  if (!v1)
  {
    v45 = result;
    v43 = v11;
    v39 = 0;
    v40 = a1;
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Proofing Biome data exists to be cleaned. Checking if it consists of a proofing decision.", v17, 2u);
    }

    v42 = *(v4 + 8);
    v42(v13, v3);
    v18 = v45;
    v38 = v8;
    if (v45 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v36)
    {
      v20 = v40;
      if (!i)
      {
        break;
      }

      v21 = 0;
      v44 = v18 & 0xC000000000000001;
      v41 = v18 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v44)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v41 + 16))
          {
            goto LABEL_25;
          }

          v24 = *(v18 + 8 * v21 + 32);
        }

        v23 = v24;
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v26 = [v24 proofingDecision];
        if (v26)
        {
          v22 = v26;

          v23 = v22;
        }

        else
        {
          defaultLogger()();
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v27, v28, "Proofing decision doesn't exist for the proofing biome data. Will clear data.", v29, 2u);
            v20 = v40;
          }

          v42(v43, v3);
          [*(v20 + 16) deleteObject:v23];
        }

        ++v21;
        v18 = v45;
        if (v25 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v35 = v18;
      v36 = _CocoaArrayWrapper.endIndex.getter();
      v18 = v35;
    }

LABEL_19:

    v30 = v39;
    result = sub_1005783D4();
    if (!v30)
    {
      v31 = v38;
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Successfully cleared proofing biome data.", v34, 2u);
      }

      return (v42)(v31, v3);
    }
  }

  return result;
}

uint64_t sub_10029AFAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 616) = v4;
  *(v5 + 608) = a4;
  *(v5 + 864) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = type metadata accessor for DIPError();
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 640) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 648) = v9;
  v10 = *(v9 - 8);
  *(v5 + 656) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 664) = swift_task_alloc();
  *(v5 + 672) = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  *(v5 + 680) = v12;
  v13 = *(v12 - 8);
  *(v5 + 688) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 696) = swift_task_alloc();

  return _swift_task_switch(sub_10029B140, 0, 0);
}

uint64_t sub_10029B140()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = *(qword_100882228 + 16);
  *(v0 + 704) = v2;
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      v3 = *(v0 + 600);
      v4 = *(v0 + 592);
      v5 = v2;
      v6 = String._bridgeToObjectiveC()();
      *(v0 + 712) = v6;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 584;
      *(v0 + 24) = sub_10029B8EC;
      v7 = swift_continuation_init();
      *(v0 + 536) = sub_100007224(&unk_10084A450, &unk_1006DC4D0);
      *(v0 + 480) = _NSConcreteStackBlock;
      *(v0 + 488) = 1107296256;
      *(v0 + 496) = sub_1004CF424;
      *(v0 + 504) = &unk_10080BEF0;
      *(v0 + 512) = v7;
      [v5 propertiesOfCredential:v6 completion:v0 + 480];

      return _swift_continuation_await(v0 + 16);
    }

    v16 = v2;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v17 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v17 + 54);
    sub_100031B5C(&v17[4], v0 + 80);
    os_unfair_lock_unlock(v17 + 54);
    v18 = *(v0 + 616);
    v19 = *(v0 + 608);
    v20 = *(v0 + 864);
    v21 = *(v0 + 600);
    v22 = *(v0 + 592);
    v23 = *(v0 + 136);
    *(v0 + 760) = v23;

    sub_100031918(v0 + 80);
    v24 = swift_allocObject();
    *(v0 + 768) = v24;
    *(v24 + 16) = v22;
    *(v24 + 24) = v21;
    *(v24 + 32) = v19;
    *(v24 + 40) = v20 & 1;
    *(v24 + 48) = &_swiftEmptyArrayStorage;
    *(v24 + 56) = v18;
    v25 = *(v23 + 16);
    v26 = swift_allocObject();
    *(v0 + 776) = v26;
    *(v26 + 16) = sub_1002A7034;
    *(v26 + 24) = v24;
    v27 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v28 = swift_task_alloc();
    *(v0 + 784) = v28;
    *v28 = v0;
    v28[1] = sub_10029BFAC;
    v29 = sub_10021F3D0;
    v30 = &type metadata for () + 8;
    v31 = v26;
    goto LABEL_18;
  }

  v8 = *(v0 + 616);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v32 = *(v0 + 624);
    (*(*(v0 + 688) + 104))(*(v0 + 696), enum case for DIPError.Code.remoteSessionServiceUnavailableUnableToFetchProvisioningFailureReasons(_:), *(v0 + 680));
    v33 = v2;
    sub_1000402AC(&_swiftEmptyArrayStorage);
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    v34 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    *(v0 + 800) = v34;
    v35 = *(v0 + 696);
    v36 = *(v0 + 688);
    v37 = *(v0 + 680);
    v38 = *(v0 + 640);
    _StringGuts.grow(_:)(53);
    *(v0 + 544) = 0;
    *(v0 + 552) = 0xE000000000000000;
    v39._countAndFlagsBits = 0xD000000000000033;
    v39._object = 0x80000001007092A0;
    String.append(_:)(v39);
    *(v0 + 576) = v34;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v40 = *(v0 + 544);
    v41 = *(v0 + 552);
    (*(v36 + 104))(v35, enum case for DIPError.Code.internalError(_:), v37);
    sub_1000402AC(&_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v42 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v42 + 54);
    sub_100031B5C(&v42[4], v0 + 280);
    os_unfair_lock_unlock(v42 + 54);
    v43 = *(v0 + 600);
    v44 = *(v0 + 592);
    v45 = *(v0 + 336);
    *(v0 + 808) = v45;

    sub_100031918(v0 + 280);
    v46 = swift_allocObject();
    *(v0 + 816) = v46;
    *(v46 + 16) = v44;
    *(v46 + 24) = v43;
    v47 = *(v45 + 16);
    v48 = swift_allocObject();
    *(v0 + 824) = v48;
    *(v48 + 16) = sub_1002A705C;
    *(v48 + 24) = v46;
    v49 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v50 = swift_task_alloc();
    *(v0 + 832) = v50;
    v30 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    *v50 = v0;
    v50[1] = sub_10029C274;
    v29 = sub_100267AC8;
    v28 = (v0 + 560);
    v31 = v48;
LABEL_18:

    return AsyncCoreDataContainer.performRead<A>(_:)(v28, v29, v31, v30);
  }

  v10 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  *(v0 + 728) = v10;
  v11 = Strong;
  v12 = v2;
  v10;

  v13 = swift_task_alloc();
  *(v0 + 736) = v13;
  *v13 = v0;
  v13[1] = sub_10029BC40;
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);

  return sub_10067DED4(v15, v14);
}

uint64_t sub_10029B8EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 720) = v2;
  if (v2)
  {
    v3 = sub_10029C904;
  }

  else
  {
    v3 = sub_10029B9FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10029B9FC()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 584);
  v3 = [v2 provisioningFailureReasons];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v5 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v5 + 54);
  sub_100031B5C(&v5[4], v0 + 80);
  os_unfair_lock_unlock(v5 + 54);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 864);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 136);
  *(v0 + 760) = v11;

  sub_100031918(v0 + 80);
  v12 = swift_allocObject();
  *(v0 + 768) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8 & 1;
  *(v12 + 48) = v4;
  *(v12 + 56) = v6;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  *(v0 + 776) = v14;
  *(v14 + 16) = sub_1002A7034;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v16 = swift_task_alloc();
  *(v0 + 784) = v16;
  *v16 = v0;
  v16[1] = sub_10029BFAC;

  return AsyncCoreDataContainer.performRead<A>(_:)();
}

uint64_t sub_10029BC40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 736);
  v6 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {
    v7 = sub_10029CC28;
  }

  else
  {
    *(v4 + 752) = a1;
    v7 = sub_10029BD68;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_10029BD68()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = [v1 provisioningFailureReasons];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(v0 + 744);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v6 + 54);
  sub_100031B5C(&v6[4], v0 + 80);
  os_unfair_lock_unlock(v6 + 54);
  if (!v5)
  {
    v7 = *(v0 + 616);
    v8 = *(v0 + 608);
    v9 = *(v0 + 864);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    v12 = *(v0 + 136);
    *(v0 + 760) = v12;

    sub_100031918(v0 + 80);
    v13 = swift_allocObject();
    *(v0 + 768) = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v10;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9 & 1;
    *(v13 + 48) = v4;
    *(v13 + 56) = v7;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    *(v0 + 776) = v15;
    *(v15 + 16) = sub_1002A7034;
    *(v15 + 24) = v13;
    v16 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v17 = swift_task_alloc();
    *(v0 + 784) = v17;
    *v17 = v0;
    v17[1] = sub_10029BFAC;

    AsyncCoreDataContainer.performRead<A>(_:)(v17, sub_10021F3D0, v15, &type metadata for () + 8);
  }
}

uint64_t sub_10029BFAC()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v9 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v4 = sub_10029C174;
  }

  else
  {
    v5 = v2[97];
    v6 = v2[96];
    v7 = v2[95];

    v4 = sub_10029C0E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10029C0E0()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = *(v0 + 640);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10029C174()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[88];

  v5 = v0[99];
  v6 = v0[84];
  v7 = v0[82];
  v8 = v0[81];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v6, v8);
  v9 = v0[87];
  v10 = v0[84];
  v11 = v0[83];
  v12 = v0[80];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10029C274()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v10 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v4 = *(v2 + 824);

    v5 = sub_10029C7D8;
  }

  else
  {
    v6 = *(v2 + 824);
    v7 = *(v2 + 816);
    v8 = *(v2 + 808);

    *(v2 + 848) = *(v2 + 560);
    v5 = sub_10029C3C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10029C3C0()
{
  if (*(v0 + 856) && (v1 = *(v0 + 848), IdentityDocumentType.init(documentTypeString:)(), v2 = IdentityDocumentType.rawValue.getter(), v2 != IdentityDocumentType.rawValue.getter()))
  {
    v11 = *(v0 + 664);
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 800);
    v16 = *(v0 + 664);
    v17 = *(v0 + 656);
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    if (v14)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No provisioning failure reason fetched", v22, 2u);
    }

    else
    {
      v23 = *(v0 + 800);
    }

    (*(v17 + 8))(v16, v18);
    (*(v20 + 8))(v19, v21);
  }

  else
  {
    v3 = *(v0 + 800);
    v4 = *(v0 + 672);
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v8 = *(v0 + 632);
    v9 = *(v0 + 624);
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v8 + 16))(v10, v7, v9);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v5 + 8))(v4, v6);
    (*(v8 + 8))(v7, v9);
  }

  v24 = *(v0 + 840);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v25 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v25 + 54);
  sub_100031B5C(&v25[4], v0 + 80);
  os_unfair_lock_unlock(v25 + 54);
  if (!v24)
  {
    v26 = *(v0 + 616);
    v27 = *(v0 + 608);
    v28 = *(v0 + 864);
    v29 = *(v0 + 600);
    v30 = *(v0 + 592);
    v31 = *(v0 + 136);
    *(v0 + 760) = v31;

    sub_100031918(v0 + 80);
    v32 = swift_allocObject();
    *(v0 + 768) = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v29;
    *(v32 + 32) = v27;
    *(v32 + 40) = v28 & 1;
    *(v32 + 48) = &_swiftEmptyArrayStorage;
    *(v32 + 56) = v26;
    v33 = *(v31 + 16);
    v34 = swift_allocObject();
    *(v0 + 776) = v34;
    *(v34 + 16) = sub_1002A7034;
    *(v34 + 24) = v32;
    v35 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v36 = swift_task_alloc();
    *(v0 + 784) = v36;
    *v36 = v0;
    v36[1] = sub_10029BFAC;

    AsyncCoreDataContainer.performRead<A>(_:)();
  }
}

uint64_t sub_10029C7D8()
{
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[88];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];

  (*(v6 + 8))(v5, v7);
  v8 = v0[105];
  v9 = v0[84];
  v10 = v0[82];
  v11 = v0[81];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v10 + 8))(v9, v11);
  v12 = v0[87];
  v13 = v0[84];
  v14 = v0[83];
  v15 = v0[80];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10029C904()
{
  v1 = v0[90];
  v2 = v0[89];
  swift_willThrow();

  v3 = v0[90];
  v0[100] = v3;
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[80];
  _StringGuts.grow(_:)(53);
  v0[68] = 0;
  v0[69] = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x80000001007092A0;
  String.append(_:)(v8);
  v0[72] = v3;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v9 = v0[68];
  v10 = v0[69];
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  sub_1000402AC(&_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v11 + 54);
  sub_100031B5C(&v11[4], (v0 + 35));
  os_unfair_lock_unlock(v11 + 54);
  v12 = v0[75];
  v13 = v0[74];
  v14 = v0[42];
  v0[101] = v14;

  sub_100031918((v0 + 35));
  v15 = swift_allocObject();
  v0[102] = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v16 = *(v14 + 16);
  v17 = swift_allocObject();
  v0[103] = v17;
  *(v17 + 16) = sub_1002A705C;
  *(v17 + 24) = v15;
  v18 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v19 = swift_task_alloc();
  v0[104] = v19;
  v20 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v19 = v0;
  v19[1] = sub_10029C274;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 70, sub_100267AC8, v17, v20);
}

uint64_t sub_10029CC28()
{
  v1 = *(v0 + 744);
  *(v0 + 800) = v1;
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  v5 = *(v0 + 640);
  _StringGuts.grow(_:)(53);
  *(v0 + 544) = 0;
  *(v0 + 552) = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000033;
  v6._object = 0x80000001007092A0;
  String.append(_:)(v6);
  *(v0 + 576) = v1;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v7 = *(v0 + 544);
  v8 = *(v0 + 552);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  sub_1000402AC(&_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], v0 + 280);
  os_unfair_lock_unlock(v9 + 54);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  v12 = *(v0 + 336);
  *(v0 + 808) = v12;

  sub_100031918(v0 + 280);
  v13 = swift_allocObject();
  *(v0 + 816) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = *(v12 + 16);
  v15 = swift_allocObject();
  *(v0 + 824) = v15;
  *(v15 + 16) = sub_1002A705C;
  *(v15 + 24) = v13;
  v16 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v17 = swift_task_alloc();
  *(v0 + 832) = v17;
  v18 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v17 = v0;
  v17[1] = sub_10029C274;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 560, sub_100267AC8, v15, v18);
}

void sub_10029CF44(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100579D9C(a1, a2);
  if (!v3)
  {
    v25[1] = 0;
    if (v12)
    {
      v13 = v12;
      v14 = [v12 documentType];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {

        v16 = 0;
        v18 = 0;
      }

      *a3 = v16;
      a3[1] = v18;
    }

    else
    {
      defaultLogger()();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v25[0] = v19;
        v23 = v22;
        v26 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100141FE4(a1, a2, &v26);
        v24 = v25[0];
        _os_log_impl(&_mh_execute_header, v25[0], v20, "Unable to find proofing session with credentialIdentifier %s. Cannot notify server of provisioning completion", v21, 0xCu);
        sub_10000BB78(v23);
      }

      else
      {
      }

      (*(v8 + 8))(v11, v7);
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

void *sub_10029D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v108 = a7;
  v107 = a6;
  v110 = a5;
  v109 = a4;
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v101 - v11;
  v13 = type metadata accessor for Logger();
  v106 = *(v13 - 8);
  v14 = *(v106 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v101 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v101 - v22;
  __chkstk_darwin(v21);
  v25 = &v101 - v24;
  v26 = v122;
  result = sub_100579D9C(a2, a3);
  if (v26)
  {
    return result;
  }

  v122 = v25;
  v103 = a2;
  v28 = a3;
  v101 = v20;
  v102 = v12;
  v29 = v108;
  v30 = v106;
  v104 = v13;
  v105 = 0;
  if (!result)
  {
    v49 = v17;
    defaultLogger()();
    v50 = v28;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    v53 = os_log_type_enabled(v51, v52);
    v32 = v30;
    v54 = v103;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v112 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_100141FE4(v54, v50, &v112);
      _os_log_impl(&_mh_execute_header, v51, v52, "Unable to find proofing session with credentialIdentifier %s. Cannot notify server of provisioning completion", v55, 0xCu);
      sub_10000BB78(v56);
    }

    return (*(v32 + 8))(v49, v104);
  }

  v31 = result;
  v32 = v106;
  v33 = v107;
  v34 = v28;
  v35 = v23;
  if ([result didAttemptComboProofing])
  {
    v36 = IdentityTarget.rawValue.getter();
    if (v36 == IdentityTarget.rawValue.getter())
    {
      if (v110)
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v37 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      v49 = v122;
      defaultLogger()();
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v98, v99, "This is combo proofing session, don't notify the server", v100, 2u);
      }

      return (*(v32 + 8))(v49, v104);
    }
  }

LABEL_7:
  v122 = v31;
  defaultLogger()();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v112 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_100141FE4(v103, v34, &v112);
    _os_log_impl(&_mh_execute_header, v38, v39, "notifyProvisionComplete called for credential identifier: %s", v40, 0xCu);
    sub_10000BB78(v41);
  }

  v42 = *(v32 + 8);
  v43 = v35;
  v44 = v104;
  v42(v43, v104);
  v45 = v29;
  if (v110)
  {
    v46 = 0x44454C494146;
  }

  else
  {
    v46 = 0x53534543435553;
  }

  v47 = v122;
  if (v110)
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v57 = [v47 provisioningCredentialID];
  if (!v57)
  {
LABEL_22:
    v59 = 0;
    v61 = 0;
    goto LABEL_23;
  }

  v58 = v57;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v47 = v122;
LABEL_23:
  v62 = IdentityTarget.rawValue.getter();
  *&v112 = 0x4F495349564F5250;
  *(&v112 + 1) = 0xEF4D49414C435F4ELL;
  v63 = 0xE700000000000000;
  if (v110)
  {
    v63 = 0xE600000000000000;
  }

  *&v113 = v46;
  *(&v113 + 1) = v63;
  *&v114 = 0;
  *(&v114 + 1) = v59;
  *&v115 = v61;
  *(&v115 + 1) = v62;
  *&v116 = 0;
  *(&v116 + 1) = v33;
  v119 = v114;
  v120 = v115;
  v121 = v116;
  v117 = v112;
  v118 = v113;

  v64 = [v47 documentType];
  if (v64)
  {
    v65 = v64;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = IdentityDocumentType.init(documentTypeString:)();
    v67 = [v47 country];
    if (v67)
    {
      v68 = v67;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0xE000000000000000;
    }

    v76 = [v122 workflowID];
    if (v76)
    {
      v77 = v76;
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    v81 = [v122 proofingSessionID];
    if (v81)
    {
      v82 = v81;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;
    }

    else
    {
      v83 = 0;
      v85 = 0;
    }

    v86 = type metadata accessor for TaskPriority();
    v87 = v102;
    (*(*(v86 - 8) + 56))(v102, 1, 1, v86);
    v88 = swift_allocObject();
    v89 = v117;
    *(v88 + 56) = v118;
    v90 = v120;
    *(v88 + 72) = v119;
    *(v88 + 88) = v90;
    *(v88 + 104) = v121;
    *(v88 + 16) = 0;
    *(v88 + 24) = 0;
    *(v88 + 32) = v45;
    *(v88 + 40) = v89;
    *(v88 + 120) = v69;
    *(v88 + 128) = v71;
    *(v88 + 136) = v78;
    *(v88 + 144) = v80;
    *(v88 + 152) = v83;
    *(v88 + 160) = v85;
    *(v88 + 168) = v66;

    sub_1003E653C(0, 0, v87, &unk_1006DC4E8, v88);

    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v91 = v122;
    [v122 target];
    v111._countAndFlagsBits = IdentityTarget.init(rawValue:)();
    LOBYTE(v111._object) = v92 & 1;
    sub_100007224(&qword_10083EF70, &unk_1006DC4F0);
    v93 = String.init<A>(describing:)();
    v95 = v94;

    v111._countAndFlagsBits = v93;
    v111._object = v95;
    v96._object = 0x80000001007093A0;
    v96._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v96);
    v97._countAndFlagsBits = 0x3837306634353632;
    v97._object = 0xE800000000000000;
    logMilestone(tag:description:)(v97, v111);
  }

  else
  {
    sub_1000B134C(&v112);
    v72 = v101;
    defaultLogger()();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "notifyProvisionComplete - documentTypeString doesn't exist to derive the documentType", v75, 2u);
      v47 = v122;
    }

    return (v42)(v72, v44);
  }
}

uint64_t sub_10029DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v21;
  *(v8 + 160) = v22;
  *(v8 + 136) = v20;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v15 = type metadata accessor for DIPError();
  *(v8 + 216) = v15;
  v16 = *(v15 - 8);
  *(v8 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_10029DCB8, 0, 0);
}

uint64_t sub_10029DCB8()
{
  v1 = v0[13];
  v2 = sub_10000BA08((v0[12] + 24), *(v0[12] + 48));
  sub_100007224(&qword_10083E588, &unk_1006DDA70);
  v3 = swift_allocObject();
  v0[30] = v3;
  v3[1] = xmmword_1006BF520;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[4];
  v3[5] = v1[3];
  v3[6] = v6;
  v3[3] = v4;
  v3[4] = v5;
  v3[2] = *v1;
  v7 = *v2;
  sub_1000B1314(v1, (v0 + 2));
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_10029DDD0;
  v9 = v0[19];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];

  return sub_10022083C(v3, v15, v13, v14, v11, v12, v9, v10);
}

uint64_t sub_10029DDD0()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *v1;
  v4[32] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10029DF4C, 0, 0);
  }

  else
  {
    v5 = v4[29];
    v6 = v4[26];
    v7 = v4[23];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_10029DF4C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v12 = v0[21];
  v13 = v0[32];
  (*(v0[25] + 104))(v0[26], enum case for DIPError.Code.failedToMakeActionNotification(_:), v0[24]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v6, v1, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v4, v12);
  (*(v2 + 8))(v1, v3);

  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10029E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 200) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = type metadata accessor for Logger();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10029E244, 0, 0);
}

uint64_t sub_10029E244()
{
  if (*(v0 + 200))
  {
    goto LABEL_2;
  }

  if (*(v0 + 24))
  {
    v17 = swift_task_alloc();
    *(v0 + 104) = v17;
    *v17 = v0;
    v17[1] = sub_10029E5B4;
    v18 = *(v0 + 24);
    v19 = *(v0 + 16);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    if (!*(v0 + 40))
    {
LABEL_2:
      v1 = *(v0 + 96);
      defaultLogger()();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
      }

      v5 = *(v0 + 96);
      v6 = *(v0 + 64);
      v7 = *(v0 + 72);
      v8 = *(v0 + 200);
      v9 = *(v0 + 24);

      v10 = *(v7 + 8);
      *(v0 + 120) = v10;
      v10(v5, v6);
      if (v9)
      {
        v11 = *(v0 + 24);
        v12 = swift_task_alloc();
        *(v0 + 128) = v12;
        *v12 = v0;
        v12[1] = sub_10029ECF4;
        v13 = *(v0 + 48);
        v14 = *(v0 + 56);
        v15 = *(v0 + 16);

        return sub_10029AFAC(v15, v11, v8 ^ 1u, v13);
      }

      else if (*(v0 + 40))
      {
        v22 = swift_task_alloc();
        *(v0 + 136) = v22;
        *v22 = v0;
        v22[1] = sub_10029EE84;
        v24 = *(v0 + 32);
        v23 = *(v0 + 40);

        return sub_1002A187C(v24, v23, 0, 129);
      }

      else
      {
        v26 = *(v0 + 88);
        v27 = *(v0 + 96);
        v28 = *(v0 + 80);
        sub_1002A3AF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), 0, *(v0 + 48), 0);

        v29 = *(v0 + 8);

        return v29();
      }
    }

    v25 = swift_task_alloc();
    *(v0 + 112) = v25;
    *v25 = v0;
    v25[1] = sub_10029E9A8;
    v18 = *(v0 + 40);
    v20 = *(v0 + 48);
    v19 = *(v0 + 32);
    v21 = 128;
  }

  return (sub_1002A2920)(v19, v18, v20, v21);
}

uint64_t sub_10029E5B4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_10029E6B0, 0, 0);
}

uint64_t sub_10029E6B0()
{
  if (*(v0 + 40))
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_10029E9A8;
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);

    return (sub_1002A2920)(v4, v2, v3, 128);
  }

  else
  {
    v6 = *(v0 + 96);
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to notify provisioning complete to the server", v9, 2u);
    }

    v10 = *(v0 + 96);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 200);
    v14 = *(v0 + 24);

    v15 = *(v12 + 8);
    *(v0 + 120) = v15;
    v15(v10, v11);
    if (v14)
    {
      v16 = *(v0 + 24);
      v17 = swift_task_alloc();
      *(v0 + 128) = v17;
      *v17 = v0;
      v17[1] = sub_10029ECF4;
      v18 = *(v0 + 48);
      v19 = *(v0 + 56);
      v20 = *(v0 + 16);

      return sub_10029AFAC(v20, v16, v13 ^ 1u, v18);
    }

    else if (*(v0 + 40))
    {
      v21 = swift_task_alloc();
      *(v0 + 136) = v21;
      *v21 = v0;
      v21[1] = sub_10029EE84;
      v23 = *(v0 + 32);
      v22 = *(v0 + 40);

      return sub_1002A187C(v23, v22, 0, 129);
    }

    else
    {
      v24 = *(v0 + 88);
      v25 = *(v0 + 96);
      v26 = *(v0 + 80);
      sub_1002A3AF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), 0, *(v0 + 48), 0);

      v27 = *(v0 + 8);

      return v27();
    }
  }
}

uint64_t sub_10029E9A8()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_10029EAA4, 0, 0);
}

uint64_t sub_10029EAA4()
{
  v1 = *(v0 + 96);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 200);
  v9 = *(v0 + 24);

  v10 = *(v7 + 8);
  *(v0 + 120) = v10;
  v10(v5, v6);
  if (v9)
  {
    v11 = *(v0 + 24);
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_10029ECF4;
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = *(v0 + 16);

    return sub_10029AFAC(v15, v11, v8 ^ 1u, v13);
  }

  else if (*(v0 + 40))
  {
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *v17 = v0;
    v17[1] = sub_10029EE84;
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);

    return sub_1002A187C(v19, v18, 0, 129);
  }

  else
  {
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v22 = *(v0 + 80);
    sub_1002A3AF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), 0, *(v0 + 48), 0);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10029ECF4()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_10029EDF0, 0, 0);
}

uint64_t sub_10029EDF0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_1002A3AF8(v0[2], v0[3], v0[4], v0[5], v0[6], 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10029EE84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_10029F310;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_10029EFAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

unint64_t sub_10029EFAC(__n128 a1)
{
  v40 = v1;
  if (*(v1 + 152))
  {
    result = *(v1 + 152);
  }

  else
  {
    result = &_swiftEmptyArrayStorage;
  }

  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 160) = v3;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_24:

    v32 = *(v1 + 88);
    v33 = *(v1 + 96);
    v34 = *(v1 + 80);
    sub_1002A3AF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), 0);

    v35 = *(v1 + 8);

    return v35();
  }

  v36 = result;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  result = v36;
  *(v1 + 160) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = &selRef_setSupportedEncoding_;
    a1.n128_u64[0] = 136315138;
    v37 = a1;
    while (1)
    {
      *(v1 + 168) = v4;
      v6 = *(v1 + 152) ? *(v1 + 152) : &_swiftEmptyArrayStorage;
      v7 = (v6 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v6 + 8 * v4 + 32);
      v8 = v7;
      *(v1 + 176) = v7;
      v9 = [v7 v5[78]];
      if (v9)
      {
        break;
      }

      v10 = *(v1 + 80);
      v11 = *(v1 + 40);
      defaultLogger()();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v1 + 120);
      v16 = *(v1 + 72);
      v17 = *(v1 + 80);
      v18 = *(v1 + 64);
      if (v14)
      {
        v38 = *(v1 + 120);
        v20 = *(v1 + 32);
        v19 = *(v1 + 40);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v39 = v22;
        *v21 = v37.n128_u32[0];
        *(v21 + 4) = sub_100141FE4(v20, v19, &v39);
        _os_log_impl(&_mh_execute_header, v12, v13, "No credentialID for proofing session with proofingSessionID: %s", v21, 0xCu);
        sub_10000BB78(v22);
        v5 = &selRef_setSupportedEncoding_;

        v38(v17, v18);
      }

      else
      {

        v15(v17, v18);
      }

      v4 = *(v1 + 168) + 1;
      if (v4 == *(v1 + 160))
      {
        if (*(v1 + 152))
        {
          v31 = *(v1 + 152);
        }

        goto LABEL_24;
      }
    }

    v23 = *(v1 + 200);
    v24 = v9;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(v1 + 184) = v27;
    v28 = swift_task_alloc();
    *(v1 + 192) = v28;
    *v28 = v1;
    v28[1] = sub_10029F4C8;
    v29 = *(v1 + 48);
    v30 = *(v1 + 56);

    return sub_10029AFAC(v25, v27, (v23 & 1) == 0, v29);
  }

  return result;
}

uint64_t sub_10029F310()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to notify server provisioningComplete: %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v10 = *(v0 + 144);
  }

  v11 = *(v0 + 72) + 8;
  (*(v0 + 120))(*(v0 + 88), *(v0 + 64));
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);
  sub_1002A3AF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), 0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10029F4C8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_10029F5E0, 0, 0);
}

uint64_t sub_10029F5E0()
{
  v38 = v0;

  v2 = *(v0 + 168) + 1;
  if (v2 == *(v0 + 160))
  {
LABEL_2:
    if (*(v0 + 152))
    {
      v3 = *(v0 + 152);
    }

    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    sub_1002A3AF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), 0);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = &selRef_setSupportedEncoding_;
    *&v1 = 136315138;
    v35 = v1;
    while (1)
    {
      *(v0 + 168) = v2;
      v14 = *(v0 + 152) ? *(v0 + 152) : &_swiftEmptyArrayStorage;
      v15 = (v14 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v14 + 8 * v2 + 32);
      v16 = v15;
      *(v0 + 176) = v15;
      v17 = [v15 v9[78]];
      if (v17)
      {
        break;
      }

      v18 = *(v0 + 80);
      v19 = *(v0 + 40);
      defaultLogger()();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 120);
      v24 = *(v0 + 72);
      v25 = *(v0 + 80);
      v26 = *(v0 + 64);
      if (v22)
      {
        v36 = *(v0 + 120);
        v11 = *(v0 + 32);
        v10 = *(v0 + 40);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v37 = v13;
        *v12 = v35;
        *(v12 + 4) = sub_100141FE4(v11, v10, &v37);
        _os_log_impl(&_mh_execute_header, v20, v21, "No credentialID for proofing session with proofingSessionID: %s", v12, 0xCu);
        sub_10000BB78(v13);
        v9 = &selRef_setSupportedEncoding_;

        v36(v25, v26);
      }

      else
      {

        v23(v25, v26);
      }

      v2 = *(v0 + 168) + 1;
      if (v2 == *(v0 + 160))
      {
        goto LABEL_2;
      }
    }

    v27 = *(v0 + 200);
    v28 = v17;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v0 + 184) = v31;
    v32 = swift_task_alloc();
    *(v0 + 192) = v32;
    *v32 = v0;
    v32[1] = sub_10029F4C8;
    v33 = *(v0 + 48);
    v34 = *(v0 + 56);

    return sub_10029AFAC(v29, v31, (v27 & 1) == 0, v33);
  }
}

unint64_t sub_10029F8FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  result = sub_100579D9C(a1, a2);
  if (!v3)
  {
    if (result)
    {
      v6 = result;
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      result = swift_allocObject();
      *(result + 16) = xmmword_1006DAE90;
      *(result + 32) = v6;
    }

    *a3 = result;
  }

  return result;
}

unint64_t sub_10029F980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  result = sub_1005792EC(a1, a2);
  if (!v3)
  {
    if (result)
    {
      v6 = result;
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      result = swift_allocObject();
      *(result + 16) = xmmword_1006DAE90;
      *(result + 32) = v6;
    }

    *a3 = result;
  }

  return result;
}

uint64_t sub_10029FA08()
{
  swift_unknownObjectWeakDestroy();
  sub_10000BB78((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_10029FACC@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_10029FB08()
{
  v1 = type metadata accessor for Logger();
  v0[32] = v1;
  v2 = *(v1 - 8);
  v0[33] = v2;
  v3 = *(v2 + 64) + 15;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();

  return _swift_task_switch(sub_10029FBDC, 0, 0);
}

uint64_t sub_10029FBDC()
{
  v1 = v0[36];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchAssetFilesFromDatabase called", v4, 2u);
  }

  v5 = v0[36];
  v6 = v0[32];
  v7 = v0[33];

  v8 = *(v7 + 8);
  v0[37] = v8;
  v8(v5, v6);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], (v0 + 2));
  os_unfair_lock_unlock(v9 + 54);
  v10 = v0[9];
  v0[38] = v10;

  sub_100031918((v0 + 2));
  v11 = *(v10 + 16);
  v12 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  v13 = swift_task_alloc();
  v0[39] = v13;
  v14 = sub_100007224(&qword_10083EF88, &qword_1006DC560);
  *v13 = v0;
  v13[1] = sub_10029FDE4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 30, sub_10029FA74, 0, v14);
}

uint64_t sub_10029FDE4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1002A00E8;
  }

  else
  {
    v5 = v2[38];

    v2[41] = v2[30];
    v4 = sub_10029FF08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10029FF08()
{
  v24 = v0;
  v1 = v0[41];
  v2 = v0[34];
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[37];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[32];
  if (v5)
  {
    v22 = v0[37];
    v10 = swift_slowAlloc();
    v21 = v8;
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    type metadata accessor for URL();

    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_100141FE4(v12, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asset URLs from database are %s", v10, 0xCu);
    sub_10000BB78(v11);

    v22(v21, v9);
  }

  else
  {

    v6(v8, v9);
  }

  v17 = v0[35];
  v16 = v0[36];
  v18 = v0[34];

  v19 = v0[1];

  return v19(v1);
}

uint64_t sub_1002A00E8()
{
  v46 = v0;
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[35];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[40];
    v41 = v0[35];
    v43 = v0[37];
    v7 = v0[33];
    v40 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[27];
    v10 = v0[28];
    v12 = v0[29];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v45);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occurred in fetching proofing sessions from the database %s", v8, 0xCu);
    sub_10000BB78(v9);

    v43(v41, v40);
  }

  else
  {
    v16 = v0[40];
    v17 = v0[37];
    v18 = v0[35];
    v19 = v0[32];
    v20 = v0[33];

    v17(v18, v19);
  }

  v21 = v0[34];
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[37];
  v26 = v0[33];
  v27 = v0[34];
  v28 = v0[32];
  if (v24)
  {
    v44 = v0[37];
    v29 = swift_slowAlloc();
    v42 = v27;
    v30 = swift_slowAlloc();
    v45 = v30;
    *v29 = 136315138;
    type metadata accessor for URL();

    v31 = Array.description.getter();
    v33 = v32;

    v34 = sub_100141FE4(v31, v33, &v45);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "Asset URLs from database are %s", v29, 0xCu);
    sub_10000BB78(v30);

    v44(v42, v28);
  }

  else
  {

    v25(v27, v28);
  }

  v36 = v0[35];
  v35 = v0[36];
  v37 = v0[34];

  v38 = v0[1];

  return v38(_swiftEmptyArrayStorage);
}

uint64_t sub_1002A0440()
{
  v1 = type metadata accessor for URL();
  v0[33] = v1;
  v2 = *(v1 - 8);
  v0[34] = v2;
  v3 = *(v2 + 64) + 15;
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v0[42] = v4;
  v5 = *(v4 - 8);
  v0[43] = v5;
  v6 = *(v5 + 64) + 15;
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();

  return _swift_task_switch(sub_1002A0614, 0, 0);
}

uint64_t sub_1002A0614()
{
  v1 = v0[50];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteStaleFiles called", v4, 2u);
  }

  v5 = v0[50];
  v6 = v0[42];
  v7 = v0[43];

  v8 = *(v7 + 8);
  v0[51] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[52] = v9;
  *v9 = v0;
  v9[1] = sub_1002A0784;

  return sub_10029FB08();
}

uint64_t sub_1002A0784(uint64_t a1)
{
  v2 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = a1;

  return _swift_task_switch(sub_1002A08B0, 0, 0);
}

uint64_t sub_1002A08B0()
{
  v206 = v0;
  if (qword_100832B68 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v1 = v0[41];
    sub_10003170C(v0[33], qword_100881E80);
    URL.appendingPathComponent(_:isDirectory:)();
    v177 = objc_opt_self();
    v2 = [v177 defaultManager];
    URL._bridgeToObjectiveC()(v3);
    v5 = v4;
    v0[30] = 0;
    v6 = [v2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:4 error:v0 + 30];

    v7 = v0[30];
    if (!v6)
    {
      break;
    }

    v8 = v0[49];
    v9 = v0[33];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v7;

    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[51];
    v16 = v0[49];
    v17 = v0[42];
    v18 = v0[43];
    if (v14)
    {
      v200 = v0[51];
      v19 = v10;
      v20 = v0[33];
      v195 = v0[49];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v205[0] = v22;
      *v21 = 136315138;
      v23 = Array.description.getter();
      v25 = sub_100141FE4(v23, v24, v205);
      v10 = v19;

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Asset URLs from coreidvd/uploads are: %s", v21, 0xCu);
      sub_10000BB78(v22);

      v200(v195, v17);
    }

    else
    {

      v15(v16, v17);
    }

    v31 = *(v10 + 16);
    if (v31)
    {
      v32 = v0[34];
      v205[0] = _swiftEmptyArrayStorage;
      sub_100172C3C(0, v31, 0);
      v33 = v205[0];
      v34 = *(v32 + 16);
      v32 += 16;
      v196 = v34;
      v189 = (*(v32 + 64) + 32) & ~*(v32 + 64);
      v35 = v10 + v189;
      v36 = *(v32 + 56);
      v37 = (v32 - 8);
      v38 = (v32 + 16);
      do
      {
        v39 = v0[39];
        v40 = v0[33];
        v196(v39, v35, v40);
        URL.resolvingSymlinksInPath()();
        (*v37)(v39, v40);
        v205[0] = v33;
        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_100172C3C(v41 > 1, v42 + 1, 1);
          v33 = v205[0];
        }

        v43 = v0[40];
        v44 = v0[33];
        *(v33 + 16) = v42 + 1;
        (*v38)(v33 + v189 + v42 * v36, v43, v44);
        v35 += v36;
        --v31;
      }

      while (v31);
      v197 = v33;
    }

    else
    {
      v197 = _swiftEmptyArrayStorage;
    }

    v45 = v0[48];
    defaultLogger()();
    v46 = v197;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[51];
    v51 = v0[48];
    v53 = v0[42];
    v52 = v0[43];
    if (v49)
    {
      v201 = v0[48];
      v54 = v0[33];
      v190 = v0[51];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v205[0] = v56;
      *v55 = 136315138;
      v57 = Array.description.getter();
      v59 = sub_100141FE4(v57, v58, v205);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "Asset SymLinks resolved URLs from coreidvd/uploads are: %s", v55, 0xCu);
      sub_10000BB78(v56);

      v190(v201, v53);
    }

    else
    {

      v50(v51, v53);
    }

    v191 = v197[2];
    if (v191)
    {
      v60 = 0;
      v61 = v0[34];
      v178 = (v61 + 8);
      v181 = v61;
      v183 = v0[53];
      v185 = (v61 + 32);
      v202 = _swiftEmptyArrayStorage;
      while (v60 < v46[2])
      {
        v66 = v0[53];
        v67 = (*(v181 + 80) + 32) & ~*(v181 + 80);
        v68 = *(v181 + 72);
        (*(v181 + 16))(v0[38], v46 + v67 + v68 * v60++, v0[33]);
        v69 = v66 + v67;
        v70 = *(v183 + 16) + 1;
        while (1)
        {
          v71 = v0[38];
          if (!--v70)
          {
            break;
          }

          v72 = v0[33];
          sub_1002A7708(&qword_10083EF80, &type metadata accessor for URL);
          v69 += v68;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            (*v178)(v0[38], v0[33]);
            goto LABEL_22;
          }
        }

        v73 = *v185;
        (*v185)(v0[37], v0[38], v0[33]);
        v75 = v202;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v205[0] = v202;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100172C3C(0, *(v202 + 2) + 1, 1);
          v75 = v205[0];
        }

        v63 = *(v75 + 16);
        v62 = *(v75 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_100172C3C(v62 > 1, v63 + 1, 1);
          v75 = v205[0];
        }

        v64 = v0[37];
        v65 = v0[33];
        *(v75 + 16) = v63 + 1;
        v202 = v75;
        v73(v75 + v67 + v63 * v68, v64, v65);
LABEL_22:
        v46 = v197;
        if (v60 == v191)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {
      v202 = _swiftEmptyArrayStorage;
LABEL_31:
      v76 = v0[47];
      defaultLogger()();
      v77 = v202;

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();

      v80 = os_log_type_enabled(v78, v79);
      v81 = v0[51];
      v82 = v0[47];
      v83 = v0[42];
      v84 = v0[43];
      if (v80)
      {
        v85 = v0[33];
        v192 = v0[47];
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v205[0] = v87;
        *v86 = 136315138;
        v88 = Array.description.getter();
        v186 = v81;
        v90 = sub_100141FE4(v88, v89, v205);

        *(v86 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v78, v79, "Unknown asset URLs are: %s", v86, 0xCu);
        sub_10000BB78(v87);

        v186(v192, v83);
      }

      else
      {

        v81(v82, v83);
      }

      v179 = *(v202 + 2);
      if (!v179)
      {
        v93 = *(v0[34] + 8);
LABEL_46:
        v125 = v0[53];
        v93(v0[41], v0[33]);

        goto LABEL_54;
      }

      v91 = 0;
      v180 = v0[34];
      v92 = (v180 + 8);
      v176 = v0[43] + 8;
      while (v91 < *(v77 + 2))
      {
        v94 = *(v180 + 16);
        v94(v0[36], &v77[((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v91], v0[33]);
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v95 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v95 + 54);
        sub_100031B5C(&v95[4], (v0 + 2));
        os_unfair_lock_unlock(v95 + 54);
        v96 = v0[12];

        sub_100031918((v0 + 2));
        v97 = *(v96 + 16);
        os_unfair_lock_lock((v97 + 24));
        v98 = *(v97 + 16);
        os_unfair_lock_unlock((v97 + 24));

        if (v98 > 0)
        {
          v193 = (v180 + 8);
          v126 = v0[53];
          v127 = v0[46];

          defaultLogger()();
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.debug.getter();
          v130 = os_log_type_enabled(v128, v129);
          v131 = v0[51];
          v132 = v0[46];
          v133 = v0[41];
          v134 = v0[42];
          v135 = v0[36];
          v136 = v0[33];
          if (v130)
          {
            v137 = swift_slowAlloc();
            *v137 = 0;
            _os_log_impl(&_mh_execute_header, v128, v129, "Breaking out of gc as number of assets persisted on disk counter is non-zero", v137, 2u);
          }

          v131(v132, v134);
          v138 = *v193;
          (*v193)(v135, v136);
          v138(v133, v136);
          goto LABEL_54;
        }

        v99 = v0[36];
        v100 = [v177 defaultManager];
        URL._bridgeToObjectiveC()(v101);
        v103 = v102;
        v0[32] = 0;
        v104 = [v100 removeItemAtURL:v102 error:v0 + 32];

        v105 = v0[32];
        if (!v104)
        {
          v139 = v0[53];
          v140 = v0[41];
          v141 = v0[36];
          v142 = v0[33];
          v143 = v105;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v144 = *v92;
          (*v92)(v141, v142);
          v144(v140, v142);
          goto LABEL_51;
        }

        v187 = v91;
        v106 = v0[45];
        v108 = v0[35];
        v107 = v0[36];
        v109 = v0[33];
        v110 = v105;
        defaultLogger()();
        v94(v108, v107, v109);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        v113 = os_log_type_enabled(v111, v112);
        v114 = v0[51];
        v115 = v0[42];
        v182 = v115;
        v184 = v0[45];
        v116 = v0[35];
        v117 = v0[36];
        v118 = v0[33];
        if (v113)
        {
          v175 = v0[51];
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v205[0] = v120;
          *v119 = 136315138;
          v173 = URL.absoluteString.getter();
          v174 = v117;
          v122 = v121;
          v123 = *v92;
          (*v92)(v116, v118);
          v124 = sub_100141FE4(v173, v122, v205);
          v77 = v202;

          *(v119 + 4) = v124;
          _os_log_impl(&_mh_execute_header, v111, v112, "Successfully removed stale asset file with url :%s", v119, 0xCu);
          sub_10000BB78(v120);
          v93 = v123;

          v175(v184, v182);
          v123(v174, v118);
        }

        else
        {

          v93 = *v92;
          (*v92)(v116, v118);
          v114(v184, v182);
          v93(v117, v118);
        }

        v91 = v187 + 1;
        if (v179 == v187 + 1)
        {
          goto LABEL_46;
        }
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v26 = v0[53];
  v27 = v0[41];
  v28 = v0[33];
  v29 = v0[34];
  v30 = v7;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v29 + 8))(v27, v28);
LABEL_51:
  v145 = v0[44];
  defaultLogger()();
  swift_errorRetain();
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.debug.getter();

  v148 = os_log_type_enabled(v146, v147);
  v149 = v0[51];
  v150 = v0[43];
  v151 = v0[44];
  v152 = v0[42];
  if (v148)
  {
    v203 = v0[44];
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v205[0] = v154;
    *v153 = 136315138;
    swift_getErrorValue();
    v198 = v149;
    v156 = v0[27];
    v155 = v0[28];
    v157 = v0[29];
    v158 = Error.localizedDescription.getter();
    v160 = sub_100141FE4(v158, v159, v205);

    *(v153 + 4) = v160;
    _os_log_impl(&_mh_execute_header, v146, v147, "Error occurred in removing stale file: %s", v153, 0xCu);
    sub_10000BB78(v154);

    v198(v203, v152);
  }

  else
  {

    v149(v151, v152);
  }

LABEL_54:
  v162 = v0[49];
  v161 = v0[50];
  v164 = v0[47];
  v163 = v0[48];
  v166 = v0[45];
  v165 = v0[46];
  v167 = v0[44];
  v169 = v0[40];
  v168 = v0[41];
  v170 = v0[39];
  v188 = v0[38];
  v194 = v0[37];
  v199 = v0[36];
  v204 = v0[35];

  v171 = v0[1];

  return v171();
}

uint64_t sub_1002A187C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 784) = a4;
  *(v4 + 656) = a3;
  *(v4 + 648) = a2;
  *(v4 + 640) = a1;
  return _swift_task_switch(sub_1002A18A8, 0, 0);
}

uint64_t sub_1002A18A8()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 648);
  if (v1 < 0)
  {
    v16 = *(v0 + 648);

    if ((v1 & 1) != 0 || (v17 = *(v0 + 656), v18 = IdentityTarget.rawValue.getter(), v18 == IdentityTarget.rawValue.getter()))
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v19 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v19 + 54);
      sub_100031B5C(&v19[4], v0 + 16);
      os_unfair_lock_unlock(v19 + 54);
      v20 = *(v0 + 640);
      v21 = *(v0 + 72);
      *(v0 + 744) = v21;

      sub_100031918(v0 + 16);
      v22 = swift_allocObject();
      *(v0 + 752) = v22;
      *(v22 + 16) = v20;
      *(v22 + 24) = v2;
      v23 = *(v21 + 16);
      v10 = swift_allocObject();
      *(v0 + 760) = v10;
      *(v10 + 16) = sub_1002A6F28;
      *(v10 + 24) = v22;
      v24 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

      v25 = swift_task_alloc();
      *(v0 + 768) = v25;
      v13 = sub_100007224(&qword_10083EF60, &qword_1006DC4B8);
      *v25 = v0;
      v25[1] = sub_1002A2130;
      v14 = sub_10017F748;
      v15 = v0 + 616;
    }

    else
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v26 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v26 + 54);
      sub_100031B5C(&v26[4], v0 + 216);
      os_unfair_lock_unlock(v26 + 54);
      v27 = *(v0 + 656);
      v28 = *(v0 + 640);
      v29 = *(v0 + 272);
      *(v0 + 704) = v29;

      sub_100031918(v0 + 216);
      v30 = swift_allocObject();
      *(v0 + 712) = v30;
      v30[2] = v28;
      v30[3] = v2;
      v30[4] = v27;
      v31 = *(v29 + 16);
      v10 = swift_allocObject();
      *(v0 + 720) = v10;
      *(v10 + 16) = sub_1002A6F98;
      *(v10 + 24) = v30;
      v32 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

      v33 = swift_task_alloc();
      *(v0 + 728) = v33;
      v13 = sub_100007224(&qword_10083EF68, &unk_1006DC4C0);
      *v33 = v0;
      v33[1] = sub_1002A1F4C;
      v14 = sub_1002A6FB8;
      v15 = v0 + 624;
    }
  }

  else
  {
    v3 = qword_100832B60;
    v4 = *(v0 + 648);

    if (v3 != -1)
    {
      swift_once();
    }

    v5 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v5 + 54);
    sub_100031B5C(&v5[4], v0 + 416);
    os_unfair_lock_unlock(v5 + 54);
    v6 = *(v0 + 640);
    v7 = *(v0 + 472);
    *(v0 + 664) = v7;

    sub_100031918(v0 + 416);
    v8 = swift_allocObject();
    *(v0 + 672) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v2;
    v9 = *(v7 + 16);
    v10 = swift_allocObject();
    *(v0 + 680) = v10;
    *(v10 + 16) = sub_1002A6FD0;
    *(v10 + 24) = v8;
    v11 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v12 = swift_task_alloc();
    *(v0 + 688) = v12;
    v13 = sub_100007224(&qword_10083EF68, &unk_1006DC4C0);
    *v12 = v0;
    v12[1] = sub_1002A1D68;
    v14 = sub_1002A7770;
    v15 = v0 + 632;
  }

  return AsyncCoreDataContainer.performRead<A>(_:)(v15, v14, v10, v13);
}

uint64_t sub_1002A1D68()
{
  v2 = *(*v1 + 688);
  v3 = *v1;
  v3[87] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A1ED0, 0, 0);
  }

  else
  {
    v4 = v3[85];
    v5 = v3[84];
    v6 = v3[83];

    v7 = v3[79];
    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1002A1ED0()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];

  v4 = v0[87];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002A1F4C()
{
  v2 = *(*v1 + 728);
  v3 = *v1;
  v3[92] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A20B4, 0, 0);
  }

  else
  {
    v4 = v3[90];
    v5 = v3[89];
    v6 = v3[88];

    v7 = v3[78];
    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1002A20B4()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];

  v4 = v0[92];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002A2130()
{
  v2 = *(*v1 + 768);
  v3 = *v1;
  v3[97] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A2298, 0, 0);
  }

  else
  {
    v4 = v3[95];
    v5 = v3[94];
    v6 = v3[93];

    v7 = v3[77];
    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1002A2298()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];

  v4 = v0[97];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002A2314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for Logger();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002A23E4, 0, 0);
}

uint64_t sub_1002A23E4()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = *(qword_100882228 + 16);
  v0[26] = v5;
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v0[27] = v7;
  v8 = String._bridgeToObjectiveC()();
  v0[28] = v8;
  v0[2] = v0;
  v0[3] = sub_1002A2580;
  v9 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080BCE8;
  v0[14] = v9;
  [v6 deletePIITokenFromSyncableKeyStoreForIdentifier:v7 credentialIdentifier:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002A2580()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1002A2838;
  }

  else
  {
    v3 = sub_1002A2690;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002A2690()
{
  v21 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);

  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  if (v6)
  {
    v19 = *(v0 + 200);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(v12, v11, &v20);
    _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingCleanupProvider cleaned up PII token for identifier: %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v10 + 8))(v19, v9);
  }

  else
  {

    (*(v10 + 8))(v8, v9);
  }

  v16 = *(v0 + 192);
  v15 = *(v0 + 200);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002A2838()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  swift_willThrow();

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v5, v7);
  v9 = v0[24];
  v8 = v0[25];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002A2920(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for Logger();
  v4[2] = v9;
  v10 = *(v9 - 8);
  v4[3] = v10;
  v11 = *(v10 + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  v4[6] = v12;
  v13 = *(v12 - 8);
  v4[7] = v13;
  v14 = *(v13 + 64) + 15;
  v4[8] = swift_task_alloc();
  v15 = swift_task_alloc();
  v4[9] = v15;
  *v15 = v4;
  v15[1] = sub_1002A2AA0;

  return sub_1002A187C(a1, a2, a3, a4);
}

uint64_t sub_1002A2AA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_1002A32DC;
  }

  else
  {
    v5 = sub_1002A2BB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A2BB4()
{
  v1 = v0[10];
  if (!v1)
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.failedToDeletePIITokenProofingSessionUnavailable(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_23:
    v39 = v0[3];
    v38 = v0[4];
    v40 = v0[2];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v39 + 8))(v38, v40);
    goto LABEL_24;
  }

  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v49 = v0[10];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[12] = result;
  v3 = v0[10];
  if (result)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = *(v3 + 32);
    }

    v5 = v4;
    v0[13] = v4;
    v0[14] = 1;
    v6 = [v4 documentType];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      IdentityDocumentType.init(documentTypeString:)();
      v8 = IdentityDocumentType.rawValue.getter();
      if (v8 != IdentityDocumentType.rawValue.getter())
      {
        v25 = v0[10];
        v26 = v0[5];

        defaultLogger()();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        v29 = os_log_type_enabled(v27, v28);
        v30 = v0[5];
        v31 = v0[2];
        v32 = v0[3];
        if (v29)
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Skipping PII token cleanup, not a passport", v33, 2u);
        }

        (*(v32 + 8))(v30, v31);
        goto LABEL_24;
      }

      v9 = [v5 credentialIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v0[15] = v13;
        v14 = [v5 piiTokenIdentifier];
        if (v14)
        {
          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v0[16] = v18;
          v19 = swift_task_alloc();
          v0[17] = v19;
          *v19 = v0;
          v19[1] = sub_1002A33A0;

          return sub_1002A2314(v16, v18, v11, v13);
        }

        v45 = v0[10];
        v47 = v0[7];
        v46 = v0[8];
        v48 = v0[6];

        (*(v47 + 104))(v46, enum case for DIPError.Code.failedToDeletePIITokenIdentifierUnavailable(_:), v48);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
      }

      else
      {
        v34 = v0[10];
        v36 = v0[7];
        v35 = v0[8];
        v37 = v0[6];

        (*(v36 + 104))(v35, enum case for DIPError.Code.failedToDeletePIITokenCredentialIDUnavailable(_:), v37);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
      }
    }

    else
    {
      v21 = v0[10];
      v23 = v0[7];
      v22 = v0[8];
      v24 = v0[6];

      (*(v23 + 104))(v22, enum case for DIPError.Code.skippingPIITokenCleanupInvalidDocTypeString(_:), v24);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_23;
  }

  v20 = v0[10];

LABEL_24:
  v41 = v0[8];
  v42 = v0[4];
  v43 = v0[5];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1002A32DC()
{
  v1 = v0[11];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002A33A0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_1002A34D4, 0, 0);
}

void sub_1002A34D4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  if (v1 == v2)
  {
    v3 = *(v0 + 80);

LABEL_20:
    v42 = *(v0 + 64);
    v43 = *(v0 + 32);
    v44 = *(v0 + 40);

    v45 = *(v0 + 8);

    v45();
    return;
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v50 = *(v0 + 112);
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  *(v0 + 104) = v6;
  *(v0 + 112) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = [v6 documentType];
  if (!v8)
  {
    v22 = *(v0 + 80);
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);
    v25 = *(v0 + 48);

    (*(v24 + 104))(v23, enum case for DIPError.Code.skippingPIITokenCleanupInvalidDocTypeString(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_19:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v40 = *(v0 + 24);
    v39 = *(v0 + 32);
    v41 = *(v0 + 16);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v40 + 8))(v39, v41);
    goto LABEL_20;
  }

  v9 = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  IdentityDocumentType.init(documentTypeString:)();
  v10 = IdentityDocumentType.rawValue.getter();
  if (v10 != IdentityDocumentType.rawValue.getter())
  {
    v26 = *(v0 + 80);
    v27 = *(v0 + 40);

    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 40);
    v32 = *(v0 + 16);
    v33 = *(v0 + 24);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Skipping PII token cleanup, not a passport", v34, 2u);
    }

    (*(v33 + 8))(v31, v32);
    goto LABEL_20;
  }

  v11 = [v7 credentialIdentifier];
  if (!v11)
  {
    v35 = *(v0 + 80);
    v37 = *(v0 + 56);
    v36 = *(v0 + 64);
    v38 = *(v0 + 48);

    (*(v37 + 104))(v36, enum case for DIPError.Code.failedToDeletePIITokenCredentialIDUnavailable(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_19;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 120) = v15;
  v16 = [v7 piiTokenIdentifier];
  if (!v16)
  {
    v46 = *(v0 + 80);
    v48 = *(v0 + 56);
    v47 = *(v0 + 64);
    v49 = *(v0 + 48);

    (*(v48 + 104))(v47, enum case for DIPError.Code.failedToDeletePIITokenIdentifierUnavailable(_:), v49);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_19;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v0 + 128) = v20;
  v21 = swift_task_alloc();
  *(v0 + 136) = v21;
  *v21 = v0;
  v21[1] = sub_1002A33A0;

  sub_1002A2314(v18, v20, v13, v15);
}

uint64_t sub_1002A3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v28 = a3;
  v29 = a5;
  v27 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v34 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v31 = type metadata accessor for DIPError.Code();
  v13 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v14 = type metadata accessor for DIPError();
  v32 = *(v14 - 8);
  v33 = v14;
  v15 = *(v32 + 64);
  __chkstk_darwin(v14);
  v30 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v18 = v17;
  v19 = swift_allocObject();
  v20 = a6;
  v21 = a2;
  v22 = v19;
  v23 = v28;
  *(v19 + 16) = v27;
  *(v19 + 24) = v21;
  *(v19 + 32) = v18;
  *(v19 + 40) = v23;
  v24 = v29;
  *(v19 + 48) = a4;
  *(v19 + 56) = v24;
  *(v19 + 64) = v20 & 1;

  sub_10057C18C(sub_1002A6F00, v22);
}

uint64_t sub_1002A4034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1002A4154, 0, 0);
}

uint64_t sub_1002A4154()
{
  v15 = v0;
  v1 = v0[26];
  v2 = v0[19];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  if (v5)
  {
    v10 = v0[18];
    v9 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting credential %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_1002A42CC, 0, 0);
}

uint64_t sub_1002A42CC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = String._bridgeToObjectiveC()();
  v0[27] = v4;
  v0[2] = v0;
  v0[3] = sub_1002A43FC;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080BF40;
  v0[14] = v5;
  [v2 deleteCredential:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002A43FC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 48);
  *(*v0 + 224) = v4;
  v5 = *(v1 + 216);
  if (v4)
  {
    swift_willThrow();

    return _swift_task_switch(sub_1002A4584, 0, 0);
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 184);

    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_1002A4584()
{
  v1 = v0[28];
  v2 = v0[26];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002A472C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002A484C, 0, 0);
}

uint64_t sub_1002A484C()
{
  v19 = v0;
  v1 = v0[10];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting credential %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1002A49FC;
  v14 = v0[3];
  v15 = v0[4];
  v16 = v0[2];

  return sub_10067BB00(v16, v14);
}

uint64_t sub_1002A49FC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A4B48, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1002A4B48()
{
  v1 = v0[12];
  v2 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002A4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting upload assets meta data cleanup...", v14, 2u);
  }

  (*(v7 + 8))(v11, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;

  sub_10057C18C(sub_1002A6618, v17);
}

uint64_t sub_1002A5038(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v10;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "clearBiomeMetadata called", v18, 2u);
    v2 = v1;
    v10 = v27;
  }

  (*(v12 + 8))(v15, v11);
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  if (v2)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v22._countAndFlagsBits = 0xD000000000000036;
    v22._object = 0x8000000100708F50;
    String.append(_:)(v22);
    swift_getErrorValue();
    v23._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v23);

    (*(v29 + 104))(v28, enum case for DIPError.Code.failedToDeleteBiomeMetadata(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v24 = v31;
    (*(v31 + 16))(v25, v10, v7);
    swift_willThrow();

    return (*(v24 + 8))(v10, v7);
  }

  else
  {
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a1;

    sub_100576834(sub_1002A5DF4, v21);
  }
}

uint64_t sub_1002A54D0(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for Logger();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002A559C, 0, 0);
}

uint64_t sub_1002A559C()
{
  v1 = v0[35];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if proofing biome data exists to cleaned up after proofing cancellation.", v4, 2u);
  }

  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[33];

  v8 = *(v7 + 8);
  v0[36] = v8;
  v8(v5, v6);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], (v0 + 2));
  os_unfair_lock_unlock(v9 + 54);
  v10 = v0[31];
  v11 = v0[9];
  v0[37] = v11;

  sub_100031918((v0 + 2));
  v12 = swift_allocObject();
  v0[38] = v12;
  *(v12 + 16) = v10;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  v0[39] = v14;
  *(v14 + 16) = sub_1002A76EC;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[40] = v16;
  *v16 = v0;
  v16[1] = sub_1002A57F0;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v16, sub_10021F3D0, v14, &type metadata for () + 8);
}

uint64_t sub_1002A57F0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_1002A5988;
  }

  else
  {
    v6 = v2[38];
    v5 = v2[39];
    v7 = v2[37];

    v4 = sub_1002A5920;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002A5920()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002A5988()
{
  v31 = v0;
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[34];

  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[41];
    v9 = v0[33];
    v28 = v0[34];
    v29 = v0[36];
    v10 = v0[32];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[27];
    v13 = v0[28];
    v15 = v0[29];
    v16 = Error.localizedDescription.getter();
    v18 = sub_100141FE4(v16, v17, &v30);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete proofing biome data. Error: %s", v11, 0xCu);
    sub_10000BB78(v12);

    v29(v28, v10);
  }

  else
  {
    v19 = v0[41];
    v20 = v0[36];
    v22 = v0[33];
    v21 = v0[34];
    v23 = v0[32];

    v20(v21, v23);
  }

  v25 = v0[34];
  v24 = v0[35];

  v26 = v0[1];

  return v26();
}

void *sub_1002A5B90()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  v17[3] = v5;
  v17[4] = &off_10080ADD0;
  v17[0] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370(v17, v5);
  v10 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v8[6] = v5;
  v8[7] = &off_10080ADD0;
  v8[3] = v14;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v8[8] = v7;
  sub_10000BB78(v17);
  return v8;
}

uint64_t sub_1002A5DBC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A5E10(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[35] = v5;
  v6 = *(v5 - 8);
  v1[36] = v6;
  v7 = *(v6 + 64) + 15;
  v1[37] = swift_task_alloc();

  return _swift_task_switch(sub_1002A5F2C, 0, 0);
}

uint64_t sub_1002A5F2C()
{
  v1 = v0[37];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "clearProofingBiomeData called", v4, 2u);
  }

  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], (v0 + 2));
  os_unfair_lock_unlock(v8 + 54);
  v9 = v0[31];
  v10 = v0[9];
  v0[38] = v10;

  sub_100031918((v0 + 2));
  v11 = swift_allocObject();
  v0[39] = v11;
  *(v11 + 16) = v9;
  v12 = *(v10 + 16);
  v13 = swift_allocObject();
  v0[40] = v13;
  *(v13 + 16) = sub_1002A6534;
  *(v13 + 24) = v11;
  v14 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v15 = swift_task_alloc();
  v0[41] = v15;
  *v15 = v0;
  v15[1] = sub_1002A617C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v15, sub_10017F710, v13, &type metadata for () + 8);
}

uint64_t sub_1002A617C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_1002A631C;
  }

  else
  {
    v6 = v2[39];
    v5 = v2[40];
    v7 = v2[38];

    v4 = sub_1002A62AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002A62AC()
{
  v1 = v0[37];
  v2 = v0[34];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002A631C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v15 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];

  _StringGuts.grow(_:)(61);
  v8._countAndFlagsBits = 0xD00000000000003BLL;
  v8._object = 0x8000000100708FF0;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[29];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  (*(v6 + 104))(v5, enum case for DIPError.Code.failedToDeleteProofingBiomeData(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002A657C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A65D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002A6638(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002A67BC, 0, 0);
}

uint64_t sub_1002A67BC()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = *(qword_100882228 + 16);
  v0[33] = v3;
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v0[34] = v5;
  v0[2] = v0;
  v0[3] = sub_1002A6938;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080BD10;
  v0[14] = v6;
  [v4 deletePIIHashFromSyncableKeyStoreForIdentifier:v5 keystoreType:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002A6938()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_1002A6C04;
  }

  else
  {
    v3 = sub_1002A6A48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002A6A48()
{
  v22 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 176);

  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  if (v5)
  {
    v20 = *(v0 + 256);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100141FE4(v11, v10, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityProofingCleanupProvider cleaned up PII hash for credential identifier: %s", v12, 0xCu);
    sub_10000BB78(v13);

    (*(v9 + 8))(v20, v8);
  }

  else
  {

    (*(v9 + 8))(v7, v8);
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002A6C04()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[31];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[29];
  v4 = v0[27];
  v18 = v0[28];
  v19 = v0[26];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  swift_willThrow();

  _StringGuts.grow(_:)(29);
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v8._object = 0x80000001007090D0;
  String.append(_:)(v8);
  v0[20] = v2;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v9 = v0[18];
  v10 = v0[19];
  (*(v5 + 104))(v6, enum case for DIPError.Code.failedToDeletePIIToken(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v11, v18, v19);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v21 + 8))(v3, v22);
  (*(v4 + 8))(v18, v19);

  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[28];
  v15 = v0[25];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002A6EB8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1002A6F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005791C8(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002A6F60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002A6FEC()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002A7078()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  if (v0[9] != 1)
  {

    v5 = v0[11];

    v6 = v0[14];
  }

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1002A7100(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);
  v13 = *(v1 + 144);
  v10 = *(v1 + 160);
  v9 = *(v1 + 168);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100027B9C;

  return sub_10029DB24(a1, v14, v4, v5, v1 + 40, v6, v7, v8);
}

uint64_t sub_1002A7204()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002A7260()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A72B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100041F04;

  return sub_100298310(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002A73B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A740C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A74A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1002A751C(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002A75A8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A75FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1002A7654()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002A7708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002A77FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[80] = a3;
  v3[79] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v3[81] = v6;
  v7 = *(v6 - 8);
  v3[82] = v7;
  v8 = *(v7 + 64) + 15;
  v3[83] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[84] = v9;
  v10 = *(v9 - 8);
  v3[85] = v10;
  v11 = *(v10 + 64) + 15;
  v3[86] = swift_task_alloc();
  v12 = swift_task_alloc();
  v3[87] = v12;
  *v12 = v3;
  v12[1] = sub_1002A7978;

  return sub_1002A8D74((v3 + 2), a2, a3);
}

uint64_t sub_1002A7978()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v5 = *(v2 + 688);
    v6 = *(v2 + 664);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_1002A7AD4, 0, 0);
  }
}

uint64_t sub_1002A7AD4()
{
  v1 = v0[60];
  v0[89] = v1;
  v0[75] = v1;
  if (v1 && (v2 = v0[61], v0[90] = v2, (v0[76] = v2) != 0))
  {
    sub_10000BBC4((v0 + 75), (v0 + 77), &qword_100836F98, &qword_1006DC5A0);
    sub_10000BBC4((v0 + 76), (v0 + 78), &qword_100836F98, &qword_1006DC5A0);
    sub_1000F2758((v0 + 2));
    v3 = swift_task_alloc();
    v0[91] = v3;
    *v3 = v0;
    v3[1] = sub_1002A7D30;
    v4 = v0[80];

    return sub_1002A9488(v4);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[82];
    v8 = v0[81];
    sub_1000F2758((v0 + 2));
    (*(v7 + 104))(v6, enum case for DIPError.Code.attributeConfigUnavailable(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v0[86];
    v10 = v0[83];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1002A7D30(uint64_t a1)
{
  v2 = *(*v1 + 728);
  v4 = *v1;
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_1002A7E30, 0, 0);
}

uint64_t sub_1002A7E30()
{
  v92 = v0;
  if (v0[92])
  {
    v1 = v0[89];
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessOptinConsentSheetContent.getter();
    v5 = NSUserDefaults.internalBool(forKey:)(v4);

    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000022, 0x80000001007099D0, 0xD00000000000003ALL, 0x80000001007049D0, isUniquelyReferenced_nonNull_native);
      v7 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000093, 0x8000000100709A00, 0xD000000000000033, 0x80000001006FA280, v7);
      v8 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000014, 0x8000000100709AA0, 0xD00000000000002DLL, 0x80000001006FA2C0, v8);
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0x65532074276E6F44, 0xEA0000000000646ELL, 0xD000000000000032, 0x80000001006FA2F0, v9);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000012, 0x8000000100709AC0, 0xD000000000000041, 0x8000000100704950, v10);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0x6F746F6850, 0xE500000000000000, 0xD00000000000002ELL, 0x80000001007049A0, v11);
      v12 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD0000000000000A6, 0x8000000100709AE0, 0xD000000000000035, 0x80000001006FA1D0, v12);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v1;
      sub_10016CAB8(0xD000000000000023, 0x8000000100709B90, 0xD00000000000003ALL, 0x80000001006FA210, v13);
    }

    v14 = [v2 standardUserDefaults];
    v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessFaceGuidanceStrings.getter();
    v16 = NSUserDefaults.internalBool(forKey:)(v15);

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000010, 0x8000000100709790, 0xD000000000000038, 0x8000000100709750, v17);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x80000001007097F0, 0xD000000000000039, 0x80000001007097B0, v18);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x8000000100709850, 0xD000000000000039, 0x8000000100709810, v19);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x80000001007098B0, 0xD000000000000039, 0x8000000100709870, v20);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000010, 0x8000000100709790, 0xD000000000000036, 0x80000001007098D0, v21);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x80000001007097F0, 0xD000000000000037, 0x8000000100709910, v22);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      sub_10016CAB8(0xD000000000000011, 0x8000000100709850, 0xD000000000000037, 0x8000000100709950, v23);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v1;
      sub_10016CAB8(0xD000000000000011, 0x80000001007098B0, 0xD000000000000037, 0x8000000100709990, v24);
    }

    v25 = [v2 standardUserDefaults];
    v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectAttributeConfigStrings.getter();
    v27 = NSUserDefaults.internalDictionary(forKey:)(v26);

    if (v27)
    {
      v87 = v1;
      v28 = v0[86];
      defaultLogger()();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[86];
      v33 = v0[85];
      v34 = v0[84];
      if (v31)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v90 = v36;
        *v35 = 134218242;
        *(v35 + 4) = *(v27 + 16);

        *(v35 + 12) = 2080;
        sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
        v37 = Dictionary.description.getter();
        v88 = v34;
        v39 = v32;
        v40 = sub_100141FE4(v37, v38, &v90);

        *(v35 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v29, v30, "IdentityProofingConfigProvider Injecting %ld attribute message ids: %s", v35, 0x16u);
        sub_10000BB78(v36);

        (*(v33 + 8))(v39, v88);
      }

      else
      {

        (*(v33 + 8))(v32, v34);
      }

      v47 = v0[88];
      v48 = sub_1002A89C0(v27);

      v49 = v48 + 64;
      v50 = -1;
      v51 = -1 << *(v48 + 32);
      if (-v51 < 64)
      {
        v50 = ~(-1 << -v51);
      }

      v52 = v50 & *(v48 + 64);
      v53 = (63 - v51) >> 6;

      v55 = 0;
      v83 = v48;
      v84 = v0;
      while (1)
      {
        if (!v52)
        {
          while (1)
          {
            v56 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            if (v56 >= v53)
            {

              goto LABEL_36;
            }

            v52 = *(v49 + 8 * v56);
            ++v55;
            if (v52)
            {
              v55 = v56;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return result;
        }

LABEL_21:
        v57 = __clz(__rbit64(v52)) | (v55 << 6);
        v58 = (*(v48 + 48) + 16 * v57);
        v59 = *v58;
        v60 = v58[1];
        sub_10000BBC4(*(v48 + 56) + 32 * v57, (v0 + 65), &unk_100845ED0, &qword_1006DA1D0);
        v89 = v59;
        v0[63] = v59;
        v0[64] = v60;
        sub_10000BBC4((v0 + 65), (v0 + 69), &unk_100845ED0, &qword_1006DA1D0);
        if (!v0[72])
        {

          sub_10000BE18((v0 + 69), &unk_100845ED0, &qword_1006DA1D0);
          goto LABEL_15;
        }

        if (swift_dynamicCast())
        {
          break;
        }

LABEL_15:
        v52 &= v52 - 1;
        result = sub_10000BE18((v0 + 63), &qword_10083F048, &qword_1006DC5B8);
      }

      v61 = v0[74];
      v90 = v0[73];
      v91 = v61;

      v62._countAndFlagsBits = 42;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);

      v85 = v90;
      v86 = v91;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v87;
      v65 = sub_10003ADCC(v59, v60);
      v66 = *(v87 + 16);
      v67 = (v64 & 1) == 0;
      result = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_44;
      }

      v68 = v64;
      if (*(v87 + 24) < result)
      {
        sub_100165FC0(result, v63);
        v69 = v90;
        result = sub_10003ADCC(v89, v60);
        if ((v68 & 1) != (v70 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v65 = result;
        v87 = v69;
        if ((v68 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        v71 = (v69[7] + 16 * v65);
        v72 = v71[1];
        *v71 = v85;
        v71[1] = v86;

LABEL_34:
        v48 = v83;
        v0 = v84;
        goto LABEL_15;
      }

      if (v63)
      {
        v69 = v87;
        if (v64)
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = sub_10016F53C();
        v69 = v90;
        v87 = v90;
        if (v68)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      v69[(v65 >> 6) + 8] |= 1 << v65;
      v73 = (v69[6] + 16 * v65);
      *v73 = v89;
      v73[1] = v60;
      v74 = (v69[7] + 16 * v65);
      *v74 = v85;
      v74[1] = v86;
      v75 = v69[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_45;
      }

      v69[2] = v77;
      goto LABEL_34;
    }

LABEL_36:
    v78 = v0[92];
    v79 = v0[90];
    v80 = v0[86];
    v81 = v0[83];
    v82 = v0[79];
    IdentityProofingAttributeConfiguration.init(attributeMessages:messageReplacements:unorderedUI:)();

    v46 = v0[1];
  }

  else
  {
    v41 = v0[83];
    v42 = v0[82];
    v43 = v0[81];
    sub_10000BE18((v0 + 75), &qword_100836F98, &qword_1006DC5A0);
    sub_10000BE18((v0 + 76), &qword_100836F98, &qword_1006DC5A0);
    (*(v42 + 104))(v41, enum case for DIPError.Code.invalidStaticWorkflow(_:), v43);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v44 = v0[86];
    v45 = v0[83];

    v46 = v0[1];
  }

  return v46();
}

uint64_t sub_1002A89C0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002A8B20(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002A8CFC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1002A8B20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = v12;
    sub_10000BBC4(*(a3 + 56) + 32 * v12, v25, &unk_100845ED0, &qword_1006DA1D0);
    v23[0] = v14;
    v23[1] = v15;
    sub_10000BBC4(v25, &v24, &unk_100845ED0, &qword_1006DA1D0);
    swift_bridgeObjectRetain_n();
    v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.tableEntryDisabledPrefix.getter();
    LOBYTE(v14) = String.hasPrefix(_:)(v17);

    sub_10000BE18(v23, &qword_10083F048, &qword_1006DC5B8);
    sub_10000BE18(v25, &unk_100845ED0, &qword_1006DA1D0);

    v7 = v26;
    if ((v14 & 1) == 0)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1003D37D8(v20, a2, v21, a3);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1003D37D8(v20, a2, v21, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002A8CFC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1002A8B20(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1002A8D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[126] = a3;
  v3[125] = a2;
  v3[124] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[127] = v4;
  v5 = *(v4 - 8);
  v3[128] = v5;
  v6 = *(v5 + 64) + 15;
  v3[129] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[130] = v7;
  v8 = *(v7 - 8);
  v3[131] = v8;
  v9 = *(v8 + 64) + 15;
  v3[132] = swift_task_alloc();

  return _swift_task_switch(sub_1002A8E98, 0, 0);
}

uint64_t sub_1002A8E98()
{
  v27 = v0;
  v1 = v0[132];
  v2 = v0[125];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  if (v5)
  {
    v25 = v0[132];
    v9 = v0[125];
    v24 = v0[130];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;

    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_100141FE4(v12, v14, &v26);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch active config called for supported languages %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v7 + 8))(v25, v24);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v16 = v2;
  if (!v0[125])
  {
    v16 = off_10083A450;
  }

  v0[133] = v16;
  v17 = v0[126];

  v18 = sub_10058C864();
  v0[134] = v19;
  v20 = v18;
  v21 = v19;
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v22 = swift_task_alloc();
  v0[135] = v22;
  *v22 = v0;
  v22[1] = sub_1002A9198;

  return sub_1005B0A4C((v0 + 63), v20, v21, v16, 1, 1);
}

uint64_t sub_1002A9198()
{
  v1 = *(*v0 + 1080);
  v2 = *(*v0 + 1072);
  v3 = *(*v0 + 1064);
  v5 = *v0;

  return _swift_task_switch(sub_1002A92CC, 0, 0);
}

uint64_t sub_1002A92CC()
{
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  if (sub_1000A257C(v0 + 16) == 1)
  {
    (*(*(v0 + 1024) + 104))(*(v0 + 1032), enum case for DIPError.Code.missingActiveConfig(_:), *(v0 + 1016));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v1 = *(v0 + 1056);
    v2 = *(v0 + 1032);
  }

  else
  {
    v4 = *(v0 + 1056);
    v5 = *(v0 + 1032);
    memcpy(*(v0 + 992), (v0 + 16), 0x1E8uLL);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002A9488(uint64_t a1)
{
  v1[2] = a1;
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
  v11 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v1[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9630, 0, 0);
}

uint64_t sub_1002A9630()
{
  v1 = v0[2];
  v0[14] = sub_1006146AC();
  v2 = sub_10058CB08();
  v4 = v3;
  v0[15] = v6;
  v0[16] = v5;
  v7 = v5;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1002A98EC;
  v10 = v0[13];

  return sub_100612ED4(v10, v2, v7, v4, v8);
}

uint64_t sub_1002A98EC()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = sub_1002A9AF4;
  }

  else
  {
    v5 = sub_1002A9A40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A9A40()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = *(v2 + *(v3 + 48));

  sub_1001A1FAC(v2);
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[5];

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_1002A9AF4()
{
  v13 = v0[14];
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v14 = v0[3];
  v15 = v0[18];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.invalidStaticWorkflow(_:), v0[6]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v2 + 16))(v6, v1, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v4, v14);
  (*(v2 + 8))(v1, v3);

  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1002A9CF0()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x8000000100709E70;
  v0._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_1002A9D84()
{
  _StringGuts.grow(_:)(61);
  v0._object = 0x8000000100709E30;
  v0._countAndFlagsBits = 0xD00000000000003BLL;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_1002A9E18()
{
  _StringGuts.grow(_:)(55);
  v0._object = 0x8000000100709DF0;
  v0._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}