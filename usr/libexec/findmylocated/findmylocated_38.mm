uint64_t sub_1003EF738()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[41] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v0;
  v6[1] = sub_1003EF89C;
  v7 = v0[10];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1003EF89C(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_1003EF9D0, v4, 0);
}

uint64_t sub_1003EF9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = v3;
  v4 = *(v3 + 344);
  v5 = *(v4 + 2);
  *(v3 + 352) = v5;
  if (v5)
  {
    v6 = 0;
    *(v3 + 456) = *(*(v3 + 272) + 80);
    while (1)
    {
      *(v3 + 360) = v6;
      v7 = *(v3 + 344);
      if (v6 >= *(v7 + 16))
      {
        __break(1u);
        return _swift_task_switch(v4, a2, a3);
      }

      v8 = *(v3 + 320);
      v9 = *(v3 + 264);
      v10 = *(v3 + 272);
      v12 = *(v10 + 16);
      v10 += 16;
      v11 = v12;
      v13 = v7 + ((*(v3 + 456) + 32) & ~*(v3 + 456)) + *(v10 + 56) * v6;
      *(v3 + 368) = v12;
      *(v3 + 376) = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v8, v13, v9);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v14 = *(v3 + 312);
      v15 = *(v3 + 320);
      v16 = *(v3 + 264);
      v17 = type metadata accessor for Logger();
      *(v3 + 384) = sub_10000A6F0(v17, qword_1005E0C30);
      v11(v14, v15, v16);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v3 + 312);
      v23 = *(v3 + 264);
      v22 = *(v3 + 272);
      v78 = v11;
      if (v20)
      {
        v24 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v80 = v74;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v28 = v23;
        v29 = *(v22 + 8);
        v29(v21, v28);
        v30 = sub_10000D01C(v25, v27, &v80);

        *(v24 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v18, v19, "Revoking token from %{private,mask.hash}s", v24, 0x16u);
        sub_100004984(v74);
      }

      else
      {

        v31 = v23;
        v29 = *(v22 + 8);
        v29(v21, v31);
      }

      *(v3 + 392) = v29;
      v32 = *(v3 + 320);
      v33 = *(v3 + 224);
      v34 = *(v3 + 232);
      v36 = *(v3 + 208);
      v35 = *(v3 + 216);
      v38 = *(v3 + 192);
      v37 = *(v3 + 200);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v36 + 8))(v35, v37);
      if ((*(v34 + 48))(v38, 1, v33) != 1)
      {
        break;
      }

      v39 = *(v3 + 320);
      v40 = *(v3 + 288);
      v41 = *(v3 + 264);
      sub_100002CE0(*(v3 + 192), &qword_1005A96E0, &qword_1004C2A80);
      v78(v40, v39, v41);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v3 + 320);
      v46 = *(v3 + 288);
      v48 = *(v3 + 264);
      v47 = *(v3 + 272);
      if (v44)
      {
        v49 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v49 = 136446723;
        *(v49 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v80);
        *(v49 + 12) = 2160;
        *(v49 + 14) = 1752392040;
        *(v49 + 22) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
        v76 = v45;
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v29(v46, v48);
        v53 = sub_10000D01C(v50, v52, &v80);

        *(v49 + 24) = v53;
        _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s No peerID for follower %{private,mask.hash}s", v49, 0x20u);
        swift_arrayDestroy();

        v4 = (v29)(v76, v48);
      }

      else
      {

        v29(v46, v48);
        v4 = (v29)(v45, v48);
      }

      v6 = *(v3 + 360) + 1;
      if (v6 == *(v3 + 352))
      {
        v59 = *(v3 + 344);
        goto LABEL_18;
      }
    }

    v54 = *(v3 + 256);
    v55 = *(v3 + 224);
    v56 = *(v3 + 232);
    v57 = *(v3 + 192);
    v58 = *(v56 + 32);
    *(v3 + 400) = v58;
    *(v3 + 408) = (v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v58(v54, v57, v55);
    v4 = sub_1003F0060;
    a2 = 0;
    a3 = 0;

    return _swift_task_switch(v4, a2, a3);
  }

  else
  {
LABEL_18:

    v61 = *(v3 + 312);
    v60 = *(v3 + 320);
    v63 = *(v3 + 296);
    v62 = *(v3 + 304);
    v64 = *(v3 + 288);
    v66 = *(v3 + 248);
    v65 = *(v3 + 256);
    v67 = *(v3 + 216);
    v69 = *(v3 + 184);
    v68 = *(v3 + 192);
    v72 = *(v3 + 160);
    v73 = *(v3 + 152);
    v75 = *(v3 + 144);
    v77 = *(v3 + 120);
    v79 = *(v3 + 112);

    v70 = *(v3 + 8);

    return v70();
  }
}

uint64_t sub_1003F0060()
{
  v1 = *(v0[11] + 128);
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_1003F0100;
  v3 = v0[32];
  v4 = v0[20];

  return sub_1001C4430(v4, v3);
}

uint64_t sub_1003F0100()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_1003F0B4C;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 96);
    v4 = sub_1003F021C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003F021C()
{
  v105 = v0;
  v1 = *(v0 + 160);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) != 1)
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 184);
    v23 = *(v0 + 104);
    v24 = *(v0 + 88);
    sub_1003F4D30(v1, v22, type metadata accessor for FriendSharedSecretsRecord);
    v25 = swift_task_alloc();
    *(v0 + 432) = v25;
    v25[2] = v22;
    v25[3] = v21;
    v25[4] = v23;
    v26 = sub_1003F0D1C;
    v27 = v24;
LABEL_23:
    v28 = 0;

    return _swift_task_switch(v26, v27, v28);
  }

  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  v7 = *(v0 + 264);
  sub_100002CE0(v1, &unk_1005AECE8, &qword_1004D07A0);
  v4(v6, v5, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 392);
  v12 = *(v0 + 320);
  v13 = *(v0 + 296);
  v14 = *(v0 + 264);
  v15 = *(v0 + 272);
  if (v10)
  {
    v16 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v16 = 136446723;
    *(v16 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v104);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v11(v13, v14);
    v20 = sub_10000D01C(v17, v19, &v104);

    *(v16 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s.", v16, 0x20u);
    swift_arrayDestroy();

    v11(v12, v14);
  }

  else
  {

    v11(v13, v14);
    v11(v12, v14);
  }

  v26 = (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
  v29 = *(v0 + 360) + 1;
  if (v29 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 360) = v29;
      v48 = *(v0 + 344);
      if (v29 >= *(v48 + 16))
      {
        break;
      }

      v49 = *(v0 + 320);
      v50 = *(v0 + 264);
      v51 = *(v0 + 272);
      v53 = *(v51 + 16);
      v51 += 16;
      v52 = v53;
      v54 = v48 + ((*(v0 + 456) + 32) & ~*(v0 + 456)) + *(v51 + 56) * v29;
      *(v0 + 368) = v53;
      *(v0 + 376) = v51 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v53(v49, v54, v50);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 312);
      v56 = *(v0 + 320);
      v57 = *(v0 + 264);
      v58 = type metadata accessor for Logger();
      *(v0 + 384) = sub_10000A6F0(v58, qword_1005E0C30);
      v52(v55, v56, v57);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 312);
      v64 = *(v0 + 264);
      v63 = *(v0 + 272);
      v103 = v52;
      if (v61)
      {
        v65 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v104 = v99;
        *v65 = 141558275;
        *(v65 + 4) = 1752392040;
        *(v65 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        v69 = v64;
        v70 = *(v63 + 8);
        v70(v62, v69);
        v71 = sub_10000D01C(v66, v68, &v104);

        *(v65 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v59, v60, "Revoking token from %{private,mask.hash}s", v65, 0x16u);
        sub_100004984(v99);
      }

      else
      {

        v72 = v64;
        v70 = *(v63 + 8);
        v70(v62, v72);
      }

      *(v0 + 392) = v70;
      v73 = *(v0 + 320);
      v74 = *(v0 + 224);
      v75 = *(v0 + 232);
      v77 = *(v0 + 208);
      v76 = *(v0 + 216);
      v79 = *(v0 + 192);
      v78 = *(v0 + 200);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v77 + 8))(v76, v78);
      v80 = (*(v75 + 48))(v79, 1, v74);
      v81 = *(v0 + 192);
      if (v80 != 1)
      {
        v92 = *(v0 + 256);
        v93 = *(v0 + 224);
        v94 = *(v0 + 232);
        v95 = *(v94 + 32);
        *(v0 + 400) = v95;
        *(v0 + 408) = (v94 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v95(v92, v81, v93);
        v26 = sub_1003F0060;
        v27 = 0;
        goto LABEL_23;
      }

      v82 = *(v0 + 320);
      v83 = *(v0 + 288);
      v84 = *(v0 + 264);
      sub_100002CE0(*(v0 + 192), &qword_1005A96E0, &qword_1004C2A80);
      v103(v83, v82, v84);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 320);
      v89 = *(v0 + 288);
      v91 = *(v0 + 264);
      v90 = *(v0 + 272);
      if (v87)
      {
        v43 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v43 = 136446723;
        *(v43 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v104);
        *(v43 + 12) = 2160;
        *(v43 + 14) = 1752392040;
        *(v43 + 22) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
        v101 = v88;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        v70(v89, v91);
        v47 = sub_10000D01C(v44, v46, &v104);

        *(v43 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v85, v86, "%{public}s No peerID for follower %{private,mask.hash}s", v43, 0x20u);
        swift_arrayDestroy();

        v26 = (v70)(v101, v91);
      }

      else
      {

        v70(v89, v91);
        v26 = (v70)(v88, v91);
      }

      v29 = *(v0 + 360) + 1;
      if (v29 == *(v0 + 352))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    return _swift_task_switch(v26, v27, v28);
  }

LABEL_7:
  v30 = *(v0 + 344);

  v32 = *(v0 + 312);
  v31 = *(v0 + 320);
  v34 = *(v0 + 296);
  v33 = *(v0 + 304);
  v35 = *(v0 + 288);
  v37 = *(v0 + 248);
  v36 = *(v0 + 256);
  v38 = *(v0 + 216);
  v40 = *(v0 + 184);
  v39 = *(v0 + 192);
  v96 = *(v0 + 160);
  v97 = *(v0 + 152);
  v98 = *(v0 + 144);
  v100 = *(v0 + 120);
  v102 = *(v0 + 112);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1003F0B4C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1003F0BB8, v2, 0);
}

uint64_t sub_1003F0BB8()
{
  v1 = *(v0 + 272) + 8;
  (*(v0 + 392))(*(v0 + 320), *(v0 + 264));
  v18 = *(v0 + 424);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 248);
  v8 = *(v0 + 216);
  v9 = *(v0 + 192);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(v0 + 152);
  v10 = *(v0 + 144);
  v16 = *(v0 + 120);
  v17 = *(v0 + 112);
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003F0D1C()
{
  v1 = *(v0[11] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_1003F0DE4;
  v4 = v0[54];
  v5 = v0[19];

  return v7(v5, &unk_1004D8560, v4);
}

uint64_t sub_1003F0DE4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v9 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = sub_1003F199C;
  }

  else
  {
    v6 = v2[54];
    v7 = v2[12];

    v5 = sub_1003F0F0C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003F0F0C()
{
  v131 = v0;
  v123 = *(v0 + 400);
  v127 = *(v0 + 408);
  v107 = *(v0 + 368);
  v108 = *(v0 + 376);
  v1 = *(v0 + 456);
  v106 = *(v0 + 320);
  v2 = *(v0 + 304);
  v110 = *(v0 + 280);
  v116 = *(v0 + 272);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v100 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 224);
  v7 = *(v0 + 144);
  v99 = *(v0 + 152);
  v101 = v7;
  v102 = v3;
  v105 = *(v0 + 136);
  v103 = *(v0 + 128);
  v8 = *(v0 + 120);
  v112 = v8;
  v119 = *(v0 + 112);
  v114 = *(v0 + 104);
  v104 = *(v0 + 240) + v1;
  v113 = *(v0 + 96);
  v109 = *(v0 + 88);
  v9 = type metadata accessor for TaskPriority();
  v111 = *(v9 - 8);
  (*(v111 + 56))(v8, 1, 1, v9);
  sub_100005F04(v99, v7, &qword_1005AF228, &unk_1004D0440);
  (*(v5 + 16))(v4, v100, v6);
  v107(v2, v106, v3);
  v10 = (*(v103 + 80) + 40) & ~*(v103 + 80);
  v11 = (v105 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = (v104 + v11) & ~v1;
  v13 = (v110 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v109;
  sub_1000176A8(v101, &v14[v10], &qword_1005AF228, &unk_1004D0440);
  v123(&v14[v11], v4, v6);
  (*(v116 + 32))(&v14[v12], v2, v102);
  *&v14[v13] = v113;
  *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v114;
  sub_100005F04(v112, v119, &qword_1005A9690, &qword_1004C2A00);
  LODWORD(v13) = (*(v111 + 48))(v119, 1, v9);

  v15 = *(v0 + 112);
  if (v13 == 1)
  {
    sub_100002CE0(*(v0 + 112), &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v111 + 8))(v15, v9);
  }

  if (*(v14 + 2))
  {
    v16 = *(v14 + 3);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = **(v0 + 72);

  if (v19 | v17)
  {
    v21 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v17;
    *(v0 + 40) = v19;
  }

  else
  {
    v21 = 0;
  }

  v117 = *(v0 + 392);
  v22 = *(v0 + 320);
  v23 = *(v0 + 264);
  v24 = *(v0 + 232);
  v120 = *(v0 + 224);
  v124 = *(v0 + 256);
  v25 = *(v0 + 184);
  v26 = *(v0 + 152);
  v27 = *(v0 + 120);
  v28 = *(v0 + 272) + 8;
  *(v0 + 48) = 1;
  *(v0 + 56) = v21;
  *(v0 + 64) = v20;
  swift_task_create();

  sub_100002CE0(v27, &qword_1005A9690, &qword_1004C2A00);
  sub_100002CE0(v26, &qword_1005AF228, &unk_1004D0440);
  v117(v22, v23);
  sub_1003F4E48(v25, type metadata accessor for FriendSharedSecretsRecord);
  v29 = (*(v24 + 8))(v124, v120);
  v32 = *(v0 + 360) + 1;
  if (v32 == *(v0 + 352))
  {
LABEL_11:
    v33 = *(v0 + 344);

    v35 = *(v0 + 312);
    v34 = *(v0 + 320);
    v37 = *(v0 + 296);
    v36 = *(v0 + 304);
    v38 = *(v0 + 288);
    v40 = *(v0 + 248);
    v39 = *(v0 + 256);
    v41 = *(v0 + 216);
    v43 = *(v0 + 184);
    v42 = *(v0 + 192);
    v115 = *(v0 + 160);
    v118 = *(v0 + 152);
    v121 = *(v0 + 144);
    v125 = *(v0 + 120);
    v128 = *(v0 + 112);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    while (1)
    {
      *(v0 + 360) = v32;
      v51 = *(v0 + 344);
      if (v32 >= *(v51 + 16))
      {
        __break(1u);
        return _swift_task_switch(v29, v30, v31);
      }

      v52 = *(v0 + 320);
      v53 = *(v0 + 264);
      v54 = *(v0 + 272);
      v56 = *(v54 + 16);
      v54 += 16;
      v55 = v56;
      v57 = v51 + ((*(v0 + 456) + 32) & ~*(v0 + 456)) + *(v54 + 56) * v32;
      *(v0 + 368) = v56;
      *(v0 + 376) = v54 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v56(v52, v57, v53);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 312);
      v59 = *(v0 + 320);
      v60 = *(v0 + 264);
      v61 = type metadata accessor for Logger();
      *(v0 + 384) = sub_10000A6F0(v61, qword_1005E0C30);
      v55(v58, v59, v60);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 312);
      v67 = *(v0 + 264);
      v66 = *(v0 + 272);
      v129 = v55;
      if (v64)
      {
        v68 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v130[0] = v122;
        *v68 = 141558275;
        *(v68 + 4) = 1752392040;
        *(v68 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        v72 = v67;
        v73 = *(v66 + 8);
        v73(v65, v72);
        v74 = sub_10000D01C(v69, v71, v130);

        *(v68 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v62, v63, "Revoking token from %{private,mask.hash}s", v68, 0x16u);
        sub_100004984(v122);
      }

      else
      {

        v75 = v67;
        v73 = *(v66 + 8);
        v73(v65, v75);
      }

      *(v0 + 392) = v73;
      v76 = *(v0 + 320);
      v77 = *(v0 + 224);
      v78 = *(v0 + 232);
      v80 = *(v0 + 208);
      v79 = *(v0 + 216);
      v82 = *(v0 + 192);
      v81 = *(v0 + 200);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v80 + 8))(v79, v81);
      v83 = (*(v78 + 48))(v82, 1, v77);
      v84 = *(v0 + 192);
      if (v83 != 1)
      {
        break;
      }

      v85 = *(v0 + 320);
      v86 = *(v0 + 288);
      v87 = *(v0 + 264);
      sub_100002CE0(*(v0 + 192), &qword_1005A96E0, &qword_1004C2A80);
      v129(v86, v85, v87);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      v90 = os_log_type_enabled(v88, v89);
      v91 = *(v0 + 320);
      v92 = *(v0 + 288);
      v94 = *(v0 + 264);
      v93 = *(v0 + 272);
      if (v90)
      {
        v46 = swift_slowAlloc();
        v130[0] = swift_slowAlloc();
        *v46 = 136446723;
        *(v46 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, v130);
        *(v46 + 12) = 2160;
        *(v46 + 14) = 1752392040;
        *(v46 + 22) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
        v126 = v91;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v73(v92, v94);
        v50 = sub_10000D01C(v47, v49, v130);

        *(v46 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s No peerID for follower %{private,mask.hash}s", v46, 0x20u);
        swift_arrayDestroy();

        v29 = (v73)(v126, v94);
      }

      else
      {

        v73(v92, v94);
        v29 = (v73)(v91, v94);
      }

      v32 = *(v0 + 360) + 1;
      if (v32 == *(v0 + 352))
      {
        goto LABEL_11;
      }
    }

    v95 = *(v0 + 256);
    v96 = *(v0 + 224);
    v97 = *(v0 + 232);
    v98 = *(v97 + 32);
    *(v0 + 400) = v98;
    *(v0 + 408) = (v97 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v98(v95, v84, v96);
    v29 = sub_1003F0060;
    v30 = 0;
    v31 = 0;

    return _swift_task_switch(v29, v30, v31);
  }
}

uint64_t sub_1003F199C()
{
  v1 = v0[54];
  v2 = v0[43];
  v3 = v0[12];

  return _swift_task_switch(sub_1003F1A14, v3, 0);
}

uint64_t sub_1003F1A14()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 272) + 8;
  (*(v0 + 392))(*(v0 + 320), *(v0 + 264));
  sub_1003F4E48(v1, type metadata accessor for FriendSharedSecretsRecord);
  v19 = *(v0 + 448);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 288);
  v8 = *(v0 + 248);
  v9 = *(v0 + 216);
  v10 = *(v0 + 192);
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);
  v16 = *(v0 + 152);
  v11 = *(v0 + 144);
  v17 = *(v0 + 120);
  v18 = *(v0 + 112);
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003F1B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1003F1BBC, 0, 0);
}

uint64_t sub_1003F1BBC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = async function pointer to CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendSharedSecretsRecord();
  v5 = sub_1003F50C4(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
  *v3 = v0;
  v3[1] = sub_1003F1CD4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(v6, sub_1003F50BC, v1, v4, v5);
}

uint64_t sub_1003F1CD4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003F1E10, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1003F1E10()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1003F1E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C30);
  (*(v5 + 16))(v8, a2, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    sub_1003F50C4(&qword_1005A92C0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_10000D01C(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Removing incomingSharedSecret for %{public}s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v18 = type metadata accessor for FriendSharedSecretsRecord();
  v19 = *(v18 + 32);
  sub_100002CE0(a1 + v19, &qword_1005AEB98, &unk_1004D07C0);
  v20 = type metadata accessor for SharedSecretKey();
  (*(*(v20 - 8) + 56))(a1 + v19, 1, 1, v20);
  v21 = *(v18 + 36);
  sub_100002CE0(a1 + v21, &unk_1005AE5B0, &qword_1004C32F0);
  v22 = type metadata accessor for Date();
  return (*(*(v22 - 8) + 56))(a1 + v21, 1, 1, v22);
}

uint64_t sub_1003F21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for Handle();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v12 = type metadata accessor for Friend();
  v8[10] = v12;
  v13 = *(v12 - 8);
  v8[11] = v13;
  v14 = *(v13 + 64) + 15;
  v8[12] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[13] = v15;
  v16 = *(v15 - 8);
  v8[14] = v16;
  v17 = *(v16 + 64) + 15;
  v8[15] = swift_task_alloc();
  v18 = type metadata accessor for CloudKitCoordinator.Database();
  v8[16] = v18;
  v19 = *(v18 - 8);
  v8[17] = v19;
  v20 = *(v19 + 64) + 15;
  v8[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003F238C, 0, 0);
}

uint64_t sub_1003F238C()
{
  v1 = v0[2];
  (*(v0[17] + 104))(v0[18], enum case for CloudKitCoordinator.Database.private(_:), v0[16]);

  return _swift_task_switch(sub_1003F2414, v1, 0);
}

uint64_t sub_1003F2414()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1003F24C8;
  v4 = v0[18];
  v5 = v0[3];

  return v7(v5, v4);
}

uint64_t sub_1003F24C8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_1003F2960;
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v5 = sub_1003F25FC;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003F25FC()
{
  v39 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C30);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[13];
  v18 = v0[10];
  v17 = v0[11];
  if (v12)
  {
    v19 = v0[9];
    v35 = v0[8];
    v36 = v0[7];
    log = v10;
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v20 = 136446723;
    sub_1003F50C4(&qword_1005A92C0, &type metadata accessor for UUID);
    v34 = v11;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v18;
    v23 = v22;
    (*(v13 + 8))(v14, v16);
    v24 = sub_10000D01C(v21, v23, &v38);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    Friend.handle.getter();
    v25 = Handle.identifier.getter();
    v27 = v26;
    (*(v35 + 8))(v19, v36);
    (*(v17 + 8))(v15, v33);
    v28 = sub_10000D01C(v25, v27, &v38);

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, log, v34, "Successfully removed incomingSharedSecret for %{public}s %{private,mask.hash}s)", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_1003F2A68;
  v30 = v0[5];
  v31 = v0[6];

  return sub_10041AF84(v30);
}

uint64_t sub_1003F2960()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  return _swift_task_switch(sub_1003F29D8, 0, 0);
}

uint64_t sub_1003F29D8()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003F2A68()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v9 = *v0;

  v3 = v1[18];
  v4 = v1[15];
  v5 = v1[12];
  v6 = v1[9];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1003F2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v6 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v4[16] = *(v8 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2D08, a3, 0);
}

uint64_t sub_1003F2D08()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1003F2E6C;
  v7 = v0[10];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1003F2E6C(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1003F2FA0, v4, 0);
}

uint64_t sub_1003F2FA0()
{
  v63 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = *(v3 + 64);
    v7 = v1 + ((v6 + 32) & ~v6);
    v60 = (v3 - 8);
    v55 = *(v0 + 128);
    v54 = (v6 + 40) & ~v6;
    v52 = **(v0 + 72);
    v53 = (v3 + 16);
    v51 = *(v3 + 56);
    v61 = v5;
    while (1)
    {
      v58 = v7;
      v59 = v2;
      v12 = *(v0 + 112);
      (v4)(*(v0 + 152));
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      v15 = *(v0 + 112);
      v16 = type metadata accessor for Logger();
      sub_10000A6F0(v16, qword_1005E0C30);
      v4(v14, v13, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 144);
      v21 = *(v0 + 112);
      if (v19)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v62 = v23;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v57 = *v60;
        (*v60)(v20, v21);
        v27 = sub_10000D01C(v24, v26, &v62);

        *(v22 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v17, v18, "Generate token for %{private,mask.hash}s", v22, 0x16u);
        sub_100004984(v23);
      }

      else
      {

        v57 = *v60;
        (*v60)(v20, v21);
      }

      v28 = *(v0 + 152);
      v29 = *(v0 + 136);
      v31 = *(v0 + 104);
      v30 = *(v0 + 112);
      v32 = *(v0 + 88);
      v56 = *(v0 + 96);
      v33 = type metadata accessor for TaskPriority();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v31, 1, 1, v33);
      v61(v29, v28, v30);
      v35 = swift_allocObject();
      v35[2] = 0;
      v36 = v35 + 2;
      v35[3] = 0;
      v35[4] = v32;
      (*v53)(v35 + v54, v29, v30);
      sub_100005F04(v31, v56, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v29) = (*(v34 + 48))(v56, 1, v33);

      v37 = *(v0 + 96);
      if (v29 == 1)
      {
        sub_100002CE0(*(v0 + 96), &qword_1005A9690, &qword_1004C2A00);
        if (*v36)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v34 + 8))(v37, v33);
        if (*v36)
        {
LABEL_14:
          v40 = v35[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v38 = dispatch thunk of Actor.unownedExecutor.getter();
          v39 = v41;
          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }

      v38 = 0;
      v39 = 0;
LABEL_15:
      v42 = swift_allocObject();
      *(v42 + 16) = &unk_1004D8550;
      *(v42 + 24) = v35;

      if (v39 | v38)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v38;
        *(v0 + 40) = v39;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 152);
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v52;
      swift_task_create();

      sub_100002CE0(v11, &qword_1005A9690, &qword_1004C2A00);
      v57(v9, v10);
      v7 = v58 + v51;
      v2 = v59 - 1;
      v4 = v61;
      if (v59 == 1)
      {
        v43 = *(v0 + 176);
        break;
      }
    }
  }

  v45 = *(v0 + 144);
  v44 = *(v0 + 152);
  v46 = *(v0 + 136);
  v48 = *(v0 + 96);
  v47 = *(v0 + 104);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1003F355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1003F357C, a4, 0);
}

uint64_t sub_1003F357C()
{
  v1 = v0[2];
  sub_1004053C0(v0[3]);
  v2 = v0[1];

  return v2();
}

unint64_t sub_1003F35DC(char a1)
{
  result = 0x64696C61766E692ELL;
  switch(a1)
  {
    case 1:
    case 12:
      return 0xD000000000000014;
    case 2:
      return result;
    case 3:
      return 0xD000000000000012;
    case 4:
    case 13:
      return 0xD000000000000013;
    case 5:
    case 14:
      v3 = 9;
      goto LABEL_22;
    case 6:
      v3 = 13;
      goto LABEL_22;
    case 7:
      return 0xD00000000000001ELL;
    case 8:
      return 0xD000000000000024;
    case 9:
    case 17:
      return 0xD000000000000019;
    case 10:
      return 0xD000000000000012;
    case 11:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0xD000000000000011;
    case 18:
    case 22:
      return 0xD000000000000016;
    case 19:
      return 0xD00000000000001ALL;
    case 20:
      return 0x67696C45746F6E2ELL;
    case 21:
      return 0xD000000000000020;
    case 23:
      v3 = 5;
LABEL_22:
      result = v3 | 0xD000000000000012;
      break;
    case 24:
      result = 0x6E776F6E6B6E752ELL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1003F3890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F54DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003F38BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003F5488();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_1003F391C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0C60);
  sub_10000A6F0(v0, qword_1005E0C60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003F399C()
{
  v0 = [objc_msgSend(objc_opt_self() "deviceCapabilities")];
  swift_unknownObjectRelease();
  if (v0)
  {
    return 1;
  }

  if (static SystemInfo.isInternalBuild.getter())
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = static SystemInfo.arrowChipID.getter();
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5;
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0C30);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109632;
    *(v11 + 8) = 2048;
    *(v11 + 10) = v7;
    *(v11 + 18) = 1024;
    *(v11 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v9, v10, "isFindingCapable supportsExtendedDistanceMeasurement: %{BOOL}d. arrowChipID: %ld. AllowPeopleFindingOnR1Devices: %{BOOL}d", v11, 0x18u);
  }

  if (v7 == 8198)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F3B84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E4304();
}

uint64_t sub_1003F3C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E59BC();
}

uint64_t sub_1003F3CBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E918C();
}

uint64_t sub_1003F3D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EA348();
}

uint64_t sub_1003F3DF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EB4F0();
}

uint64_t sub_1003F3E90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EB580();
}

uint64_t sub_1003F3F2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10044BD24(a1);
}

uint64_t sub_1003F3FD8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000368C;

  return sub_10044C4BC(a1, a2, v2);
}

uint64_t sub_1003F4080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1003ED534(a1);
}

uint64_t sub_1003F411C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10004B074();
}

uint64_t sub_1003F41B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003ED5D0();
}

uint64_t sub_1003F4254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F42BC()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_10040F940(v0 + v3, v6, v7, v8);
}

uint64_t sub_1003F43E8(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for Handle() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_100412A84(a1, a2 & 1, v2 + v7);
}

uint64_t sub_1003F4500()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1003F45AC()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100003690;

  return sub_10040F940(v0 + v3, v6, v7, v8);
}

uint64_t sub_1003F46D8(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for Handle() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100003690;

  return sub_100412A84(a1, a2 & 1, v2 + v7);
}

uint64_t sub_1003F47F0()
{
  v2 = *(type metadata accessor for Friend() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100406098(v4, v0 + v3, v5);
}

uint64_t sub_1003F48F8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_1003F4994(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for Friend() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_10040EF18(a1, a2 & 1, v2 + v7, v8);
}

uint64_t sub_1003F4AAC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1003EF3E0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1003F4B74(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_1003F2BDC(a1, a2, v6, v7);
}

uint64_t sub_1003F4C38(uint64_t a1)
{
  v4 = *(type metadata accessor for Friend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1003F355C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003F4D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F4D98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1003F1B98(a1, v4, v5, v6);
}

uint64_t sub_1003F4E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F4EA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Friend() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v12);
  v17 = *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10000368C;

  return sub_1003F21AC(a1, v13, v14, v15, v1 + v5, v1 + v8, v1 + v11, v16);
}

uint64_t sub_1003F50C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F510C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003ED660(a1, v1);
}

uint64_t sub_1003F51A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1003ED6EC(a1);
}

uint64_t sub_1003F5244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10004B074();
}

uint64_t getEnumTagSinglePayload for NITokenService.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NITokenService.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003F5434()
{
  result = qword_1005B3770;
  if (!qword_1005B3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3770);
  }

  return result;
}

unint64_t sub_1003F5488()
{
  result = qword_1005B3778;
  if (!qword_1005B3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3778);
  }

  return result;
}

uint64_t sub_1003F54DC(uint64_t a1)
{
  if ((a1 - 1) >= 0x19)
  {
    return 25;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1003F54F4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  v3 = *(*(sub_10004B564(&qword_1005B29F0, &qword_1004D8830) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = type metadata accessor for Device();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v2 + 56) = v8;
  *v8 = v2;
  v8[1] = sub_1003F5620;

  return daemon.getter();
}

uint64_t sub_1003F5620(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalMessagingService();
  v9 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService);
  *v6 = v12;
  v6[1] = sub_1003F5804;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003F5804(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_1003F5CBC;
  }

  else
  {
    v9 = v4[8];

    v8 = sub_1003F593C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003F593C()
{
  *(v0 + 96) = *(*(v0 + 80) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_10001DF0C(&qword_1005B1880, &qword_1005AD518, &qword_1004D54F0);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F5A0C, v2, v1);
}

uint64_t sub_1003F5A0C()
{
  v1 = v0[12];
  v3 = v0[2];
  v2 = v0[3];
  dispatch thunk of LocalMessaging.connectedDevice.getter();

  return _swift_task_switch(sub_1003F5A78, v3, 0);
}

uint64_t sub_1003F5A78()
{
  v20 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    if (qword_1005A8560 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0C80);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 80);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E9F50, &v19);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s no connected device!", v9, 0xCu);
      sub_100004984(v10);
    }
  }

  else
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 48);
    v13 = *(v0 + 16);
    v14 = *(v0 + 104);
    (*(v2 + 32))(v12, v3, v1);
    sub_1003F97F4(v12, v14);

    (*(v2 + 8))(v12, v1);
  }

  v15 = *(v0 + 48);
  v16 = *(v0 + 24);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1003F5CBC()
{
  v17 = v0;
  v1 = v0[8];

  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C80);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E9F50, &v16);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}@", v8, 0x16u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v10);
  }

  else
  {
  }

  v12 = v0[6];
  v13 = v0[3];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003F5EDC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0C80);
  v1 = sub_10000A6F0(v0, qword_1005E0C80);
  if (qword_1005A8588 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0CB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003F5FA4()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005B3780);
  sub_10000A6F0(v0, qword_1005B3780);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_1003F6008()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005E0C98);
  v1 = sub_10000A6F0(v0, qword_1005E0C98);
  if (qword_1005A8568 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005B3780);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003F60D0()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  sub_10004F154(v5, qword_1005B3798);
  sub_10000A6F0(v5, qword_1005B3798);
  if (qword_1005A8570 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A6F0(v0, qword_1005E0C98);
  (*(v1 + 16))(v4, v6, v0);
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_1004022A0();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003F6254()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  sub_10004F154(v5, qword_1005B37B0);
  sub_10000A6F0(v5, qword_1005B37B0);
  if (qword_1005A8570 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A6F0(v0, qword_1005E0C98);
  (*(v1 + 16))(v4, v6, v0);
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_1004022A0();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003F63D8()
{
  v1[98] = v0;
  v2 = type metadata accessor for UUID();
  v1[99] = v2;
  v3 = *(v2 - 8);
  v1[100] = v3;
  v4 = *(v3 + 64) + 15;
  v1[101] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v1[102] = v6;
  *v6 = v1;
  v6[1] = sub_1003F64C8;

  return daemon.getter();
}

uint64_t sub_1003F64C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 816);
  v12 = *v1;
  *(v3 + 824) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 832) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalMessagingService();
  v9 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService);
  *v6 = v12;
  v6[1] = sub_1003F66AC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003F66AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 832);
  v10 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  if (v1)
  {
    v5 = v3[98];
    v6 = sub_1003F6B44;
  }

  else
  {
    v7 = v3[103];
    v8 = v3[98];

    v6 = sub_1003F67D8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003F67D8()
{
  v1 = v0[98];
  v0[90] = type metadata accessor for NITokenService_LocalMessaging();
  v0[91] = sub_1004028E8(&qword_1005B3988, v2, type metadata accessor for NITokenService_LocalMessaging);
  v0[87] = v1;

  v3 = swift_task_alloc();
  v0[107] = v3;
  *v3 = v0;
  v3[1] = sub_1003F68C8;
  v4 = v0[105];
  v5 = v0[101];

  return sub_1002F3E48(v5, (v0 + 87));
}

uint64_t sub_1003F68C8()
{
  v2 = *v1;
  v3 = (*v1)[107];
  v8 = *v1;
  (*v1)[108] = v0;

  if (v0)
  {
    v4 = v2[98];
    v5 = sub_1003F6BB4;
  }

  else
  {
    v6 = v2[98];
    (*(v2[100] + 8))(v2[101], v2[99]);
    sub_100004984(v2 + 87);
    v5 = sub_1003F6A0C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003F6A0C()
{
  v1 = *(v0 + 784);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v2, sub_1003F6A9C, v0 + 656);
}

uint64_t sub_1003F6AD4()
{
  v1 = v0[105];
  v2 = v0[101];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003F6B44()
{
  v1 = v0[103];
  v2 = v0[101];

  v3 = v0[1];
  v4 = v0[106];

  return v3();
}

uint64_t sub_1003F6BB4()
{
  v16 = v0;
  sub_100004984(v0 + 87);
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = v0[108];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C80);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[108];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v0[97] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalMessagingService subscription up error: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
  }

  v12 = v0[98];
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v13, sub_1003F6A9C, v0 + 82);
}

uint64_t sub_1003F6DC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1003F6E58();
}

uint64_t sub_1003F6E58()
{
  v1[2] = v0;
  v2 = type metadata accessor for DarwinNotification();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005AACD0, &unk_1004C4750) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003F7020, v0, 0);
}

uint64_t sub_1003F7020()
{
  v10 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004EA190, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[14] = 0x80000001004EA190;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1003F71F0;

  return daemon.getter();
}

uint64_t sub_1003F71F0(uint64_t a1)
{
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = a1;

  type metadata accessor for Daemon();
  sub_1004028E8(&qword_1005AB4E0, 255, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F734C, v5, v4);
}

uint64_t sub_1003F734C()
{
  v1 = *(v0 + 128);
  *(v0 + 136) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1004028E8(&qword_1005AACE8, 255, &type metadata accessor for DarwinNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F7428, v3, v2);
}

uint64_t sub_1003F7428()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[2];
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1003F74AC, v4, 0);
}

uint64_t sub_1003F74AC()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1004028E8(&qword_1005B3918, v5, type metadata accessor for NITokenService_LocalMessaging);
  v0[18] = v6;
  v7 = v0[2];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1003F75C8;
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v12, v7, v6, v11);
}

uint64_t sub_1003F75C8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1003F76D8, v2, 0);
}

uint64_t sub_1003F76D8()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    (*(v3 + 32))(v0[5], v1, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315138;
      sub_1004028E8(&qword_1005B3240, 255, &type metadata accessor for DarwinNotification);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_10000D01C(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Process NanoRegistryDeviceDidUnpair event: %s", v15, 0xCu);
      sub_100004984(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = v0[13];
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Clearing paired devices.", v24, 2u);
    }

    sub_10040231C();
    v25 = v0[18];
    v26 = v0[2];
    v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v28 = swift_task_alloc();
    v0[19] = v28;
    *v28 = v0;
    v28[1] = sub_1003F75C8;
    v29 = v0[12];
    v30 = v0[10];
    v31 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v31, v26, v25, v30);
  }
}

uint64_t sub_1003F7A38()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003F7A9C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for NITokenService_LocalMessaging();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1003F7B44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003F63D8();
}

uint64_t sub_1003F7BD0()
{
  v1 = *v0;
  type metadata accessor for NITokenService_LocalMessaging();
  sub_1004028E8(&qword_1005AD550, v2, type metadata accessor for NITokenService_LocalMessaging);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003F7C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = type metadata accessor for Destination();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = type metadata accessor for Account();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003F7DC0, v3, 0);
}

uint64_t sub_1003F7DC0()
{
  v58 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[8];
  v6 = v0[6];
  v54 = v0[5];
  v55 = v0[7];
  v7 = v0[3];
  v50 = v0[10];
  v52 = v0[4];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C80);
  v49 = *(v3 + 16);
  v49(v1, v8, v2);
  (*(v4 + 16))(v50, v7, v5);
  (*(v6 + 16))(v55, v52, v54);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[14];
  if (v12)
  {
    v56 = v11;
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    v51 = v0[7];
    v53 = v0[6];
    v47 = v0[10];
    v48 = v0[5];
    v19 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v19 = 136446978;
    *(v19 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004DECA0, &v57);
    *(v19 + 12) = 2080;
    v49(v15, v13, v16);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v14 + 8))(v13, v16);
    v23 = sub_10000D01C(v20, v22, &v57);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v47, v18);
    v27 = sub_10000D01C(v24, v26, &v57);

    *(v19 + 24) = v27;
    *(v19 + 32) = 2080;
    sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v53 + 8))(v51, v48);
    v31 = sub_10000D01C(v28, v30, &v57);

    *(v19 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v10, v56, "Local IDS %{public}s %s id %s from: %s", v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[11];
    v33 = v0[12];
    v35 = v0[9];
    v34 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v10;
    v40 = v0[5];
    v39 = v0[6];

    (*(v39 + 8))(v37, v40);
    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v13, v32);
  }

  v42 = v0[13];
  v41 = v0[14];
  v43 = v0[10];
  v44 = v0[7];

  v45 = v0[1];

  return v45();
}

uint64_t sub_1003F821C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Destination();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B29F0, &qword_1004D8830) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = type metadata accessor for Device();
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003F8404, v1, 0);
}

uint64_t sub_1003F8404()
{
  v17 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    sub_10040263C();
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_10000D01C(v6, v7, &v16);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Extracted CompanionPeopleFindingCapabilityRequestEnvelopeV1: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000D01C(0xD000000000000039, 0x80000001004EA120, &v16);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Watch requested companion finding capability. Sending now.", v11, 0xCu);
    sub_100004984(v12);
  }

  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_1003F86A0;

  return daemon.getter();
}

uint64_t sub_1003F86A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalMessagingService();
  v9 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService);
  *v6 = v12;
  v6[1] = sub_1003F8884;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003F8884(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v10 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_1003F8F50;
  }

  else
  {
    v7 = v3[19];
    v8 = v3[5];

    v6 = sub_1003F89AC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003F89AC()
{
  v1 = v0[21];
  v2 = v0[4];
  v0[23] = Destination.destination.getter();
  v0[24] = v3;

  return _swift_task_switch(sub_1003F8A1C, v1, 0);
}

uint64_t sub_1003F8A1C()
{
  *(v0 + 200) = *(*(v0 + 168) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_10001DF0C(&qword_1005B1880, &qword_1005AD518, &qword_1004D54F0);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F8AEC, v2, v1);
}

uint64_t sub_1003F8AEC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[13];
  v5 = v0[5];
  dispatch thunk of LocalMessaging.device(fromID:)();

  return _swift_task_switch(sub_1003F8B74, v5, 0);
}

uint64_t sub_1003F8B74()
{
  v42 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    v8 = v0[4];
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    (*(v6 + 16))(v5, v8, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[21];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    if (v11)
    {
      v39 = v0[21];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_10000D01C(v18, v20, &v41);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "No IDSDevice for %{private,mask.hash}s!", v16, 0x16u);
      sub_100004984(v17);
    }

    else
    {
      v28 = v0[21];

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v22 = v0[16];
    v24 = v0[11];
    v23 = v0[12];
    v38 = v0[21];
    v40 = v0[10];
    v36 = v0[9];
    v37 = v0[5];
    (*(v2 + 32))(v22, v3, v1);
    Device.uniqueIDOverride.getter();
    v25 = String.utf8Data.getter();
    v27 = v26;

    v0[2] = v25;
    v0[3] = v27;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v25, v27);
    v41 = sub_100401AFC(&qword_1005A8580, qword_1005B37B0);
    sub_1001ACB04(v23, v36);
    sub_100002CE0(v36, &qword_1005A96E0, &qword_1004C2A80);
    sub_100401FE8(v41, &qword_1005A8580, qword_1005B37B0, sub_1003F6254);
    sub_1003FD068(v22);

    (*(v24 + 8))(v23, v40);
    (*(v2 + 8))(v22, v1);
  }

  v29 = v0[16];
  v30 = v0[12];
  v31 = v0[13];
  v33 = v0[8];
  v32 = v0[9];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1003F8F50()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

uint64_t sub_1003F9018()
{
  v13 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA0B0, &v12);
    *(v6 + 12) = 2080;
    type metadata accessor for Account();
    sub_1004028E8(&qword_1005A9258, 255, &type metadata accessor for Account);
    v7 = Set.description.getter();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Local IDS %{public}s. Accounts: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003F9254()
{
  v15 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA090, &v14);
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v6 + 16);

    *(v7 + 22) = 2080;
    type metadata accessor for Device();
    sub_1004028E8(&qword_1005A9250, 255, &type metadata accessor for Device);
    v8 = Set.description.getter();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v7 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Local IDS %{public}s. Devices[%ld]: %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = *(v0 + 16);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003F9490(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B29F0, &qword_1004D8830);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0C80);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v10;
    v15 = v14;
    v21 = swift_slowAlloc();
    v23 = v21;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA060, &v23);
    *(v15 + 12) = 2080;
    sub_1004028E8(&qword_1005A9250, 255, &type metadata accessor for Device);
    v16 = Set.description.getter();
    v18 = sub_10000D01C(v16, v17, &v23);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Local IDS %{public}s. Connected devices: %s", v15, 0x16u);
    swift_arrayDestroy();

    v10 = v22;
  }

  sub_1003AE5B0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100002CE0(v5, &qword_1005B29F0, &qword_1004D8830);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1003F97F4(v10, 0);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1003F97F4(uint64_t a1, int a2)
{
  v40 = *v2;
  v41 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v42 = a2;
  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0C80);
  v15 = *(v9 + 16);
  v15(v13, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v17;
    v19 = v18;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v19 = 136446722;
    *(v19 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v43);
    *(v19 + 12) = 2080;
    sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device);
    v35 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v15;
    v22 = v10;
    v23 = a1;
    v25 = v24;
    (*(v9 + 8))(v13, v8);
    v26 = sub_10000D01C(v20, v25, &v43);
    a1 = v23;
    v10 = v22;
    v15 = v21;

    *(v19 + 14) = v26;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v42 & 1;
    v27 = v35;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s to: %s. Force? %{BOOL}d", v19, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v28 = v41;
  v37 = v41[16];
  type metadata accessor for WorkItemQueue.WorkItem();
  v29 = v38;
  v15(v38, a1, v8);
  v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v31 = (v30 + v10) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v30, v29, v8);
  *(v32 + v30 + v10) = v42 & 1;
  *(v32 + v31 + 8) = v28;
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v40;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003F9C84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 96) = a2;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Device();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1003F9D54, 0, 0);
}

uint64_t sub_1003F9D54()
{
  v21 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s entered queue.", v4, 0xCu);
    sub_100004984(v5);
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v19 = *(v0 + 32);
  v18 = *(v0 + 96);
  (*(v9 + 16))(v6, *(v0 + 16), v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = v11 + v7;
  v13 = (v11 + v7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 72) = v14;
  (*(v9 + 32))(v14 + v11, v6, v8);
  *(v14 + v12) = v18;
  *(v14 + v13 + 8) = v10;
  *(v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v15 = async function pointer to withTimeout<A>(_:block:)[1];

  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_1001EDCA8;

  return withTimeout<A>(_:block:)(v16, 0x8155A43676E00000, 6, &unk_1004D8860, v14, &type metadata for () + 8);
}

uint64_t sub_1003F9FF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 489) = a3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  v5 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v6 = type metadata accessor for MessagingOptions();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v12 = type metadata accessor for OwnerTokenEnvelopeV1();
  *(v4 + 104) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v15 = type metadata accessor for OwnerSharedSecretsRecord();
  *(v4 + 136) = v15;
  v16 = *(v15 - 8);
  *(v4 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v18 = type metadata accessor for Device();
  *(v4 + 168) = v18;
  v19 = *(v18 - 8);
  *(v4 + 176) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  *(v4 + 192) = v21;
  v22 = *(v21 - 8);
  *(v4 + 200) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1003FA358, 0, 0);
}

uint64_t sub_1003FA358()
{
  v71 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 32);
  Device.uniqueIDOverride.getter();
  v3 = String.utf8Data.getter();
  v5 = v4;

  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v3, v5);
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v10 = type metadata accessor for Logger();
  *(v0 + 288) = sub_10000A6F0(v10, qword_1005E0C80);
  v11 = *(v8 + 16);
  *(v0 + 296) = v11;
  *(v0 + 304) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v6, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 272);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v70);
    *(v18 + 12) = 2082;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    log = v12;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v15;
    v22 = v21;
    v65 = v13;
    v23 = *(v16 + 8);
    v23(v20, v17);
    v24 = sub_10000D01C(v19, v22, &v70);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, log, v65, "%{public}s to device: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v16 + 8);
    v23(v15, v17);
  }

  *(v0 + 312) = v23;
  if (*(v0 + 489))
  {
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 280);
    v28 = *(v0 + 288);
    v29 = *(v0 + 256);
    v30 = *(v0 + 192);
    (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 32), *(v0 + 168));
    v26(v29, v27, v30);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 312);
    v35 = *(v0 + 256);
    v36 = *(v0 + 192);
    v37 = *(v0 + 200);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v40 = *(v0 + 168);
    if (v33)
    {
      loga = v32;
      v41 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v41 = 136315394;
      sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device);
      v66 = v34;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v39 + 8))(v38, v40);
      v45 = sub_10000D01C(v42, v44, &v70);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v66(v35, v36);
      v49 = sub_10000D01C(v46, v48, &v70);

      *(v41 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v31, loga, "Connected device: %s ID: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v34(v35, v36);
      (*(v39 + 8))(v38, v40);
    }

    v61 = async function pointer to daemon.getter[1];
    v62 = swift_task_alloc();
    *(v0 + 328) = v62;
    *v62 = v0;
    v62[1] = sub_1003FB144;

    return daemon.getter();
  }

  else
  {
    v11(*(v0 + 264), *(v0 + 280), *(v0 + 192));
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 264);
    v54 = *(v0 + 192);
    v55 = *(v0 + 200);
    if (v52)
    {
      v69 = v23;
      v56 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v56 = 136446466;
      *(v56 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v70);
      *(v56 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v69(v53, v54);
      v60 = sub_10000D01C(v57, v59, &v70);

      *(v56 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "%{public}s Checking if we should send to %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v23(v53, v54);
    }

    v63 = *(v0 + 40);

    return _swift_task_switch(sub_1003FAADC, v63, 0);
  }
}

uint64_t sub_1003FAADC()
{
  *(v0 + 320) = sub_100401AFC(&qword_1005A8578, qword_1005B3798);

  return _swift_task_switch(sub_1003FAB64, 0, 0);
}

uint64_t sub_1003FAB64()
{
  v69 = v0;
  v1 = sub_10021B5B8(v0[35], v0[40]);

  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[24];
  if (v1)
  {
    v3(v0[26], v0[35], v0[24]);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[39];
    v11 = v0[35];
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[24];
    if (v9)
    {
      v66 = v0[39];
      v15 = swift_slowAlloc();
      v63 = v11;
      v16 = swift_slowAlloc();
      v68 = v16;
      *v15 = 136446210;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v66(v12, v14);
      v20 = sub_10000D01C(v17, v19, &v68);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already sent owner token to %{public}s.", v15, 0xCu);
      sub_100004984(v16);

      v66(v63, v14);
    }

    else
    {

      v10(v12, v14);
      v10(v11, v14);
    }

    v42 = v0[34];
    v41 = v0[35];
    v44 = v0[32];
    v43 = v0[33];
    v45 = v0[30];
    v46 = v0[31];
    v48 = v0[28];
    v47 = v0[29];
    v50 = v0[26];
    v49 = v0[27];
    v55 = v0[23];
    v56 = v0[20];
    v57 = v0[19];
    v58 = v0[16];
    v59 = v0[15];
    v60 = v0[14];
    v62 = v0[12];
    v65 = v0[9];
    v67 = v0[6];

    v51 = v0[1];

    return v51();
  }

  else
  {
    v21 = v0[32];
    (*(v0[22] + 16))(v0[23], v0[4], v0[21]);
    v3(v21, v4, v6);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[39];
    v26 = v0[32];
    v27 = v0[24];
    v28 = v0[25];
    v30 = v0[22];
    v29 = v0[23];
    v31 = v0[21];
    if (v24)
    {
      v64 = v23;
      v32 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v32 = 136315394;
      sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device);
      v61 = v25;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v30 + 8))(v29, v31);
      v36 = sub_10000D01C(v33, v35, &v68);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v61(v26, v27);
      v40 = sub_10000D01C(v37, v39, &v68);

      *(v32 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v22, v64, "Connected device: %s ID: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v25(v26, v27);
      (*(v30 + 8))(v29, v31);
    }

    v53 = async function pointer to daemon.getter[1];
    v54 = swift_task_alloc();
    v0[41] = v54;
    *v54 = v0;
    v54[1] = sub_1003FB144;

    return daemon.getter();
  }
}

uint64_t sub_1003FB144(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 328);
  v12 = *v1;
  v3[42] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[43] = v6;
  v7 = type metadata accessor for Daemon();
  v3[44] = v7;
  v8 = type metadata accessor for NITokenService();
  v3[45] = v8;
  v9 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v3[46] = v9;
  v10 = sub_1004028E8(&qword_1005AD548, 255, type metadata accessor for NITokenService);
  *v6 = v12;
  v6[1] = sub_1003FB33C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003FB33C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  v7 = v4[42];

  if (v1)
  {

    return _swift_task_switch(sub_1003FCCF0, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[49] = v8;
    *v8 = v6;
    v8[1] = sub_1003FB4E0;
    v9 = v4[16];

    return sub_100437A14(v9);
  }
}

uint64_t sub_1003FB4E0()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return _swift_task_switch(sub_1003FB5DC, 0, 0);
}

uint64_t sub_1003FB5DC()
{
  v114 = v0;
  v1 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v1, 1, *(v0 + 136)) == 1)
  {
    v2 = *(v0 + 288);
    sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 376);
    v7 = *(v0 + 312);
    v8 = *(v0 + 280);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    if (v5)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v113[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, v113);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s No owner token record!", v11, 0xCu);
      sub_100004984(v12);
    }

    v7(v8, v9);
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);
    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v22 = *(v0 + 208);
    v21 = *(v0 + 216);
    v93 = *(v0 + 184);
    v95 = *(v0 + 160);
    v97 = *(v0 + 152);
    v99 = *(v0 + 128);
    v101 = *(v0 + 120);
    v103 = *(v0 + 112);
    v105 = *(v0 + 96);
    v107 = *(v0 + 72);
    v110 = *(v0 + 48);

    v23 = *(v0 + 8);
    goto LABEL_10;
  }

  v25 = *(v0 + 296);
  v24 = *(v0 + 304);
  v27 = *(v0 + 280);
  v26 = *(v0 + 288);
  v28 = *(v0 + 248);
  v29 = *(v0 + 192);
  sub_100401EBC(v1, *(v0 + 160));
  v25(v28, v27, v29);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 312);
  v34 = *(v0 + 248);
  v35 = *(v0 + 192);
  v36 = *(v0 + 200);
  if (v32)
  {
    v111 = *(v0 + 312);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v113[0] = v38;
    *v37 = 136446210;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v111(v34, v35);
    v42 = sub_10000D01C(v39, v41, v113);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v30, v31, "Sending owner shared secret to local device %{public}s over IDS.", v37, 0xCu);
    sub_100004984(v38);
  }

  else
  {

    v33(v34, v35);
  }

  v43 = *(v0 + 296);
  v44 = *(v0 + 304);
  v45 = *(v0 + 192);
  v46 = *(v0 + 152);
  v47 = *(v0 + 136);
  v48 = *(v0 + 112);
  v49 = *(v0 + 120);
  v50 = *(v0 + 104);
  v108 = *(v0 + 96);
  v112 = *(v0 + 384);
  sub_100401F20(*(v0 + 160), v46, type metadata accessor for OwnerSharedSecretsRecord);
  v43(v49, v46, v45);
  *(v49 + v50[5]) = *(v46 + v47[5]);
  v51 = v47[7];
  v52 = v50[6];
  v53 = type metadata accessor for Date();
  (*(*(v53 - 8) + 16))(v49 + v52, v46 + v51, v53);
  v54 = v46 + v47[6];
  v55 = SharedSecretKey.data.getter();
  v57 = v56;
  sub_100401F88(v46, type metadata accessor for OwnerSharedSecretsRecord);
  v58 = (v49 + v50[7]);
  *v58 = v55;
  v58[1] = v57;
  *(v0 + 488) = 0;
  sub_100401F20(v49, v48, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_1003B0678();
  sub_1004028E8(&qword_1005B3928, 255, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_1004028E8(&qword_1005B3930, 255, type metadata accessor for OwnerTokenEnvelopeV1);
  Message.init<A>(type:version:payload:)();
  if (v112)
  {
    v59 = *(v0 + 376);
    v60 = *(v0 + 312);
    v61 = *(v0 + 280);
    v62 = *(v0 + 192);
    v63 = *(v0 + 200);
    v64 = *(v0 + 160);
    v65 = *(v0 + 120);

    sub_100401F88(v65, type metadata accessor for OwnerTokenEnvelopeV1);
    sub_100401F88(v64, type metadata accessor for OwnerSharedSecretsRecord);
    v60(v61, v62);
    v67 = *(v0 + 272);
    v66 = *(v0 + 280);
    v68 = *(v0 + 256);
    v69 = *(v0 + 264);
    v71 = *(v0 + 240);
    v70 = *(v0 + 248);
    v73 = *(v0 + 224);
    v72 = *(v0 + 232);
    v74 = *(v0 + 208);
    v75 = *(v0 + 216);
    v92 = *(v0 + 184);
    v94 = *(v0 + 160);
    v96 = *(v0 + 152);
    v98 = *(v0 + 128);
    v100 = *(v0 + 120);
    v102 = *(v0 + 112);
    v104 = *(v0 + 96);
    v106 = *(v0 + 72);
    v109 = *(v0 + 48);

    v23 = *(v0 + 8);
LABEL_10:

    return v23();
  }

  v77 = *(v0 + 192);
  v78 = *(v0 + 200);
  v79 = *(v0 + 72);
  v80 = *(v0 + 48);
  v81 = *(v0 + 32);
  sub_10004B564(&qword_1005A9270, &qword_1004C5810);
  v82 = *(type metadata accessor for Destination() - 8);
  v83 = *(v82 + 72);
  v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  *(swift_allocObject() + 16) = xmmword_1004C1900;
  Device.destination.getter();
  (*(v78 + 56))(v80, 1, 1, v77);
  sub_10004B564(&qword_1005AB930, &qword_1004C5818);
  v85 = type metadata accessor for MessagingCapability();
  v86 = *(v85 - 8);
  v87 = *(v86 + 72);
  v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1004C1900;
  (*(v86 + 104))(v89 + v88, enum case for MessagingCapability.supportsPeopleFindingV1(_:), v85);
  sub_10025EC18(v89);
  swift_setDeallocating();
  (*(v86 + 8))(v89 + v88, v85);
  swift_deallocClassInstance();
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
  v90 = async function pointer to daemon.getter[1];
  v91 = swift_task_alloc();
  *(v0 + 400) = v91;
  *v91 = v0;
  v91[1] = sub_1003FBF44;

  return daemon.getter();
}

uint64_t sub_1003FBF44(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v5 = *v1;
  v3[51] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[52] = v7;
  v8 = type metadata accessor for LocalMessagingService();
  v9 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService);
  *v7 = v5;
  v7[1] = sub_1003FC0FC;
  v10 = v3[46];
  v11 = v3[44];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003FC0FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 416);
  v7 = *v2;
  *(v5 + 424) = a1;
  *(v5 + 432) = v1;

  v8 = *(v4 + 408);

  if (v1)
  {
    v9 = sub_1003FCE68;
    v10 = 0;
  }

  else
  {
    v9 = sub_1003FC240;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1003FC240()
{
  v1 = *(v0[53] + 128);
  v2 = async function pointer to LocalMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_1003FC2E8;
  v4 = v0[30];
  v5 = v0[12];
  v6 = v0[9];

  return LocalMessaging.send(message:messageOptions:)(v4, v5, v6);
}

uint64_t sub_1003FC2E8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v10 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_1003FC5F4;
  }

  else
  {
    v5 = v2[30];
    v6 = v2[24];
    v7 = v2[25];
    v8 = *(v7 + 8);
    v2[57] = v8;
    v2[58] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v4 = sub_1003FC420;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003FC420()
{
  v19 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  (*(v0 + 296))(*(v0 + 232), *(v0 + 280), *(v0 + 192));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 456);
  v7 = *(v0 + 232);
  v8 = *(v0 + 192);
  if (v5)
  {
    v17 = *(v0 + 464);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v6(v7, v8);
    v14 = sub_10000D01C(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent owner shared secret over local IDS to device: %{public}s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {

    v6(v7, v8);
  }

  v15 = *(v0 + 40);

  return _swift_task_switch(sub_1003FC804, v15, 0);
}

uint64_t sub_1003FC5F4()
{
  v1 = v0[53];
  v2 = v0[47];
  v3 = v0[25];
  v32 = v0[24];
  v34 = v0[35];
  v30 = v0[20];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[7];
  v9 = v0[8];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  sub_100401F88(v4, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_100401F88(v30, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v3 + 8))(v34, v32);
  v35 = v0[56];
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[32];
  v14 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[12];
  v31 = v0[9];
  v33 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1003FC804()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 304);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 192);
  (*(v0 + 296))(v5, *(v0 + 280), v6);
  v8 = sub_100401AFC(&qword_1005A8578, qword_1005B3798);
  sub_10001CFF8(v4, v5);
  v2(v4, v6);
  sub_100401FE8(v8, &qword_1005A8578, qword_1005B3798, sub_1003F60D0);

  return _swift_task_switch(sub_1003FC908, 0, 0);
}

uint64_t sub_1003FC908()
{
  v1 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[59] = v1;
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_1003FC9D4;
  v3 = v0[45];

  return sub_100402934(0xD00000000000003DLL, 0x80000001004E9FB0, 0, v1);
}

uint64_t sub_1003FC9D4()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v4 = *v0;

  return _swift_task_switch(sub_1003FCAEC, 0, 0);
}

uint64_t sub_1003FCAEC()
{
  v32 = v0[57];
  v34 = v0[58];
  v1 = v0[53];
  v2 = v0[47];
  v28 = v0[24];
  v30 = v0[35];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[7];
  v9 = v0[8];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  sub_100401F88(v4, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_100401F88(v3, type metadata accessor for OwnerSharedSecretsRecord);
  v32(v30, v28);
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v15 = v0[30];
  v16 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[15];
  v29 = v0[14];
  v31 = v0[12];
  v33 = v0[9];
  v35 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1003FCCF0()
{
  v1 = *(v0 + 200) + 8;
  (*(v0 + 312))(*(v0 + 280), *(v0 + 192));
  v23 = *(v0 + 384);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);
  v19 = *(v0 + 112);
  v20 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003FCE68()
{
  v1 = v0[47];
  v2 = v0[25];
  v31 = v0[24];
  v33 = v0[35];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[7];
  v9 = v0[8];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  sub_100401F88(v4, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_100401F88(v3, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v2 + 8))(v33, v31);
  v34 = v0[54];
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[32];
  v14 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[12];
  v30 = v0[9];
  v32 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1003FD068(uint64_t a1)
{
  v38 = *v1;
  v39 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005E0C80);
  v13 = *(v7 + 16);
  v13(v11, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v15;
    v17 = v16;
    v35 = swift_slowAlloc();
    v40 = v35;
    *v17 = 136446466;
    *(v17 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA160, &v40);
    *(v17 + 12) = 2080;
    sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device);
    v33 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v13;
    v20 = v8;
    v21 = a1;
    v23 = v22;
    (*(v7 + 8))(v11, v6);
    v24 = sub_10000D01C(v18, v23, &v40);
    a1 = v21;
    v8 = v20;
    v13 = v19;

    *(v17 + 14) = v24;
    v25 = v33;
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s to: %s.", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v26 = v39;
  v27 = v39[16];
  type metadata accessor for WorkItemQueue.WorkItem();
  v28 = v36;
  v13(v36, a1, v6);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = (v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v7 + 32))(v31 + v29, v28, v6);
  *(v31 + v30) = v26;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003FD4CC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MessagingOptions();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for Device();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1003FD738, 0, 0);
}

uint64_t sub_1003FD738()
{
  v1 = v0[26];
  v2 = v0[5];
  v3 = v0[6];
  Device.uniqueIDOverride.getter();
  v4 = String.utf8Data.getter();
  v6 = v5;

  v0[2] = v4;
  v0[3] = v6;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v4, v6);

  return _swift_task_switch(sub_1003FD7FC, v3, 0);
}

uint64_t sub_1003FD7FC()
{
  *(v0 + 216) = sub_100401AFC(&qword_1005A8580, qword_1005B37B0);

  return _swift_task_switch(sub_1003FD884, 0, 0);
}

uint64_t sub_1003FD884()
{
  v101 = v0;
  v1 = sub_10021B5B8(*(v0 + 208), *(v0 + 216));

  if (v1)
  {
    if (qword_1005A8560 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 208);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0C80);
    (*(v4 + 16))(v3, v2, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 208);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 136);
    if (v9)
    {
      v96 = *(v0 + 208);
      v14 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v100[0] = v94;
      *v14 = 136446210;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_10000D01C(v15, v17, v100);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already sent finding capability to %{public}s.", v14, 0xCu);
      sub_100004984(v94);

      v18(v96, v13);
    }

    else
    {

      v48 = *(v12 + 8);
      v48(v11, v13);
      v48(v10, v13);
    }

    v80 = *(v0 + 200);
    v79 = *(v0 + 208);
    v82 = *(v0 + 184);
    v81 = *(v0 + 192);
    v84 = *(v0 + 168);
    v83 = *(v0 + 176);
    v86 = *(v0 + 152);
    v85 = *(v0 + 160);
    v87 = *(v0 + 128);
    v88 = *(v0 + 104);
    v95 = *(v0 + 80);
    v99 = *(v0 + 56);

    v89 = *(v0 + 8);

    return v89();
  }

  else
  {
    if (qword_1005A8560 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 136);
    v23 = *(v0 + 144);
    v24 = *(v0 + 120);
    v25 = *(v0 + 128);
    v26 = *(v0 + 112);
    v27 = *(v0 + 40);
    v28 = type metadata accessor for Logger();
    *(v0 + 224) = sub_10000A6F0(v28, qword_1005E0C80);
    (*(v24 + 16))(v25, v27, v26);
    v29 = *(v23 + 16);
    *(v0 + 232) = v29;
    *(v0 + 240) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v21, v20, v22);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v97 = *(v0 + 200);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v36 = *(v0 + 120);
    v35 = *(v0 + 128);
    v37 = *(v0 + 112);
    if (v32)
    {
      log = v30;
      v38 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v38 = 136315394;
      sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device);
      v91 = v31;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v29;
      v41 = v40;
      (*(v36 + 8))(v35, v37);
      v42 = sub_10000D01C(v39, v41, v100);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v43 = v97;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v98 = *(v33 + 8);
      v98(v43, v34);
      v47 = sub_10000D01C(v44, v46, v100);
      v29 = v93;

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, log, v91, "Connected device: %s ID: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v49 = v97;
      v98 = *(v33 + 8);
      v98(v49, v34);
      (*(v36 + 8))(v35, v37);
    }

    v29(*(v0 + 192), *(v0 + 208), *(v0 + 136));
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 192);
    v54 = *(v0 + 136);
    v55 = *(v0 + 144);
    if (v52)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v100[0] = v57;
      *v56 = 136446210;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v98(v53, v54);
      v61 = sub_10000D01C(v58, v60, v100);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v50, v51, "Sending finding capability to local device %{public}s over IDS.", v56, 0xCu);
      sub_100004984(v57);
    }

    else
    {

      v98(v53, v54);
    }

    v62 = *(v0 + 104);
    v63 = sub_1003F399C();
    *(v0 + 320) = 2;
    *(v0 + 321) = v63 & 1;
    sub_1003B0678();
    sub_1004027A4();
    sub_1004027F8();
    Message.init<A>(type:version:payload:)();
    v64 = *(v0 + 136);
    v65 = *(v0 + 144);
    v66 = *(v0 + 80);
    v67 = *(v0 + 56);
    v68 = *(v0 + 40);
    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    v69 = *(type metadata accessor for Destination() - 8);
    v70 = *(v69 + 72);
    v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    *(swift_allocObject() + 16) = xmmword_1004C1900;
    Device.destination.getter();
    (*(v65 + 56))(v67, 1, 1, v64);
    sub_10004B564(&qword_1005AB930, &qword_1004C5818);
    v72 = type metadata accessor for MessagingCapability();
    v73 = *(v72 - 8);
    v74 = *(v73 + 72);
    v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1004C1900;
    (*(v73 + 104))(v76 + v75, enum case for MessagingCapability.supportsPeopleFindingV1(_:), v72);
    sub_10025EC18(v76);
    swift_setDeallocating();
    (*(v73 + 8))(v76 + v75, v72);
    swift_deallocClassInstance();
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
    v77 = async function pointer to daemon.getter[1];
    v78 = swift_task_alloc();
    *(v0 + 248) = v78;
    *v78 = v0;
    v78[1] = sub_1003FE414;

    return daemon.getter();
  }
}

uint64_t sub_1003FE414(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalMessagingService();
  v9 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService);
  *v6 = v12;
  v6[1] = sub_1003FE5F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003FE5F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 264);
  v7 = *v2;
  *(v5 + 272) = a1;
  *(v5 + 280) = v1;

  v8 = *(v4 + 256);

  if (v1)
  {
    v9 = sub_1003FF010;
    v10 = 0;
  }

  else
  {
    v9 = sub_1003FE73C;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1003FE73C()
{
  v1 = *(v0[34] + 128);
  v2 = async function pointer to LocalMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_1003FE7E4;
  v4 = v0[23];
  v5 = v0[13];
  v6 = v0[10];

  return LocalMessaging.send(message:messageOptions:)(v4, v5, v6);
}

uint64_t sub_1003FE7E4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v10 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_1003FEAF4;
  }

  else
  {
    v5 = v2[23];
    v6 = v2[17];
    v7 = v2[18];
    v8 = *(v7 + 8);
    v2[38] = v8;
    v2[39] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v4 = sub_1003FE91C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003FE91C()
{
  v19 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 208), *(v0 + 136));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 304);
  v7 = *(v0 + 176);
  v8 = *(v0 + 136);
  if (v5)
  {
    v17 = *(v0 + 312);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v6(v7, v8);
    v14 = sub_10000D01C(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent finding capability over local IDS to device: %{public}s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {

    v6(v7, v8);
  }

  v15 = *(v0 + 48);

  return _swift_task_switch(sub_1003FEDAC, v15, 0);
}

uint64_t sub_1003FEAF4()
{
  v34 = v0;
  v1 = v0[34];
  v2 = v0[26];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v11 = v0[37];
  v12 = v0[28];
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA160, &v33);
    *(v15 + 12) = 2082;
    v0[4] = v11;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v16 = String.init<A>(describing:)();
    v18 = sub_10000D01C(v16, v17, &v33);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s error: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = v0[25];
  v19 = v0[26];
  v22 = v0[23];
  v21 = v0[24];
  v24 = v0[21];
  v23 = v0[22];
  v26 = v0[19];
  v25 = v0[20];
  v27 = v0[16];
  v28 = v0[13];
  v31 = v0[10];
  v32 = v0[7];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1003FEDAC()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 240);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 136);
  (*(v0 + 232))(v5, *(v0 + 208), v6);
  v8 = sub_100401AFC(&qword_1005A8580, qword_1005B37B0);
  sub_10001CFF8(v4, v5);
  v2(v4, v6);
  sub_100401FE8(v8, &qword_1005A8580, qword_1005B37B0, sub_1003F6254);

  return _swift_task_switch(sub_1003FEEB0, 0, 0);
}

uint64_t sub_1003FEEB0()
{
  v1 = v0[38];
  v24 = v0[39];
  v2 = v0[34];
  v3 = v0[26];
  v4 = v0[17];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  v12 = v0[25];
  v11 = v0[26];
  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[21];
  v15 = v0[22];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v20 = v0[13];
  v23 = v0[10];
  v25 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1003FF010()
{
  v30 = v0;
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[35];
  v8 = v0[28];
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA160, &v29);
    *(v11 + 12) = 2082;
    v0[4] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D01C(v12, v13, &v29);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s error: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[25];
  v15 = v0[26];
  v18 = v0[23];
  v17 = v0[24];
  v20 = v0[21];
  v19 = v0[22];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[16];
  v24 = v0[13];
  v27 = v0[10];
  v28 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1003FF2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_1003F7C38(a1, a2, a3);
}

uint64_t sub_1003FF368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_100400C6C(a1, a2, a3);
}

uint64_t sub_1003FF43C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1003F8FF8(a1);
}

uint64_t sub_1003FF4D4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1003F9234(a1);
}

uint64_t sub_1003FF56C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1003FF58C, v3, 0);
}

uint64_t sub_1003FF58C()
{
  v1 = v0[3];
  sub_1003F9490(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1003FF67C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0CB0);
  sub_10000A6F0(v0, qword_1005E0CB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003FF6FC()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100003690;

  return sub_1003F9C84(v0 + v3, v5, v6, v7);
}

uint64_t sub_1003FF820(uint64_t a1, char a2)
{
  *(v2 + 25) = a2;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_1003FF844, 0, 0);
}

uint64_t sub_1003FF844()
{
  v19 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 25);
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C80);
  sub_10037DB5C(v1, v2 & 1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_1002BC5B4(v1, v2 & 1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 25);
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v18);
    *(v8 + 12) = 2082;
    *(v0 + 16) = v6;
    *(v0 + 24) = v7 & 1;
    sub_10037DB5C(v6, v7 & 1);
    sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v18);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s completed with %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 25))
  {
    v12 = *(v0 + 32);
    type metadata accessor for NITokenService();
    sub_10037DB5C(v12, 1);
    sub_10037DB5C(v12, 1);
    v13 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 40) = v13;
    v14 = swift_task_alloc();
    *(v0 + 48) = v14;
    *v14 = v0;
    v14[1] = sub_1003FFB30;
    v15 = *(v0 + 32);

    return sub_100402934(0xD00000000000003DLL, 0x80000001004E9FB0, v15, v13);
  }

  else
  {
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1003FFB30()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v5 = *v0;

  sub_1002BC5B4(v3, 1);

  return _swift_task_switch(sub_1003FFC68, 0, 0);
}

uint64_t sub_1003FFC68()
{
  sub_1002BC5B4(*(v0 + 32), 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003FFCCC()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1003FFD70(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + v6);
  v8 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1003F9FF4(a1, v1 + v5, v7, v8);
}

uint64_t sub_1003FFE9C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Destination();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B29F0, &qword_1004D8830) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003FFFF0, v1, 0);
}

uint64_t sub_1003FFFF0()
{
  v24 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    *(v4 + 14) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004EA100, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "Extracted OwnerTokenEnvelopeRequestV1: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1004028E8(&qword_1005A9EE8, 255, &type metadata accessor for Feature.FindMy);
  v7 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v7, enum case for Feature.FindMy.redStripe(_:), My);
  v8 = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004EA0D0, &v23);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Watch requested owner token. Sending now.", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = async function pointer to daemon.getter[1];
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_10040042C;

    return daemon.getter();
  }

  else
  {
    if (v11)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004EA0D0, &v23);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Feature.FindMy.redStripe FF disabled.", v16, 0xCu);
      sub_100004984(v17);
    }

    v18 = v0[15];
    v19 = v0[11];
    v20 = v0[12];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10040042C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v12 = *v1;
  *(v3 + 144) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalMessagingService();
  v9 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService);
  *v6 = v12;
  v6[1] = sub_100400610;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100400610(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v10 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[8];
    v6 = sub_100400BE0;
  }

  else
  {
    v7 = v3[18];
    v8 = v3[8];

    v6 = sub_100400738;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100400738()
{
  v1 = v0[20];
  v2 = v0[7];
  v0[22] = Destination.destination.getter();
  v0[23] = v3;

  return _swift_task_switch(sub_1004007A8, v1, 0);
}

uint64_t sub_1004007A8()
{
  *(v0 + 192) = *(*(v0 + 160) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_10001DF0C(&qword_1005B1880, &qword_1005AD518, &qword_1004D54F0);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100400878, v2, v1);
}

uint64_t sub_100400878()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[12];
  v5 = v0[8];
  dispatch thunk of LocalMessaging.device(fromID:)();

  return _swift_task_switch(sub_100400900, v5, 0);
}

uint64_t sub_100400900()
{
  v33 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[16];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[7];
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    (*(v6 + 16))(v5, v8, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[20];
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];
    if (v11)
    {
      v31 = v0[20];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_10000D01C(v18, v20, &v32);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "No IDSDevice for %{private,mask.hash}s!", v16, 0x16u);
      sub_100004984(v17);
    }

    else
    {
      v25 = v0[20];

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v22 = v0[20];
    v23 = v0[15];
    v24 = v0[8];
    (*(v2 + 32))(v23, v3, v1);
    sub_1003F97F4(v23, 1);

    (*(v2 + 8))(v23, v1);
  }

  v26 = v0[15];
  v27 = v0[11];
  v28 = v0[12];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100400BE0()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_100400C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for Account();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100400E00, v3, 0);
}

uint64_t sub_100400E00()
{
  v71 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v67 = *(v0 + 48);
  v69 = *(v0 + 64);
  v7 = *(v0 + 24);
  v63 = *(v0 + 88);
  v65 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000A6F0(v9, qword_1005E0C80);
  v10 = v1;
  v11 = *(v3 + 16);
  v11(v10, v8, v2);
  (*(v4 + 16))(v63, v7, v5);
  (*(v6 + 16))(v69, v65, v67);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 120);
  if (v14)
  {
    v61 = v13;
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v60 = *(v0 + 72);
    v66 = *(v0 + 64);
    v68 = *(v0 + 56);
    v62 = *(v0 + 88);
    v64 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v20 = 136447747;
    *(v20 + 4) = sub_10000D01C(0xD00000000000003ELL, 0x80000001004DEC60, v70);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v11(v17, v15, v18);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v16 + 8))(v15, v18);
    v24 = sub_10000D01C(v21, v23, v70);

    *(v20 + 24) = v24;
    *(v20 + 32) = 2160;
    *(v20 + 34) = 1752392040;
    *(v20 + 42) = 2081;
    sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v19 + 8))(v62, v60);
    v28 = sub_10000D01C(v25, v27, v70);

    *(v20 + 44) = v28;
    *(v20 + 52) = 2160;
    *(v20 + 54) = 1752392040;
    *(v20 + 62) = 2081;
    sub_10001DF0C(&qword_1005B3968, &qword_1005B1888, &unk_1004D8870);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v68 + 8))(v66, v64);
    v32 = sub_10000D01C(v29, v31, v70);

    *(v20 + 64) = v32;
    _os_log_impl(&_mh_execute_header, v12, v61, "Local IDS %{public}s\naccount: %{private,mask.hash}s\ndestination %{private,mask.hash}s\nmessage: %{private,mask.hash}s", v20, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v38 = *(v0 + 64);
    v37 = *(v0 + 72);
    v39 = v12;
    v41 = *(v0 + 48);
    v40 = *(v0 + 56);

    (*(v40 + 8))(v38, v41);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v15, v33);
  }

  v42 = *(v0 + 48);
  v43 = *(v0 + 32);
  Message.type.getter();
  if (*(v0 + 168) <= 1u)
  {
    if (*(v0 + 168))
    {
      v44 = *(v0 + 48);
      v45 = *(v0 + 32);
      sub_100402594();
      sub_1004025E8();
      Message.extract<A>()();
      v46 = swift_task_alloc();
      *(v0 + 136) = v46;
      *v46 = v0;
      v46[1] = sub_100401514;
      v47 = *(v0 + 40);
      v48 = *(v0 + 24);

      return sub_1003FFE9C(v48);
    }

    goto LABEL_13;
  }

  if (*(v0 + 168) == 2)
  {
LABEL_13:
    v53 = *(v0 + 112);
    v52 = *(v0 + 120);
    v54 = *(v0 + 88);
    v55 = *(v0 + 64);

    v56 = *(v0 + 8);

    return v56();
  }

  v50 = *(v0 + 48);
  v51 = *(v0 + 32);
  sub_1004024EC();
  sub_100402540();
  Message.extract<A>()();
  v57 = swift_task_alloc();
  *(v0 + 152) = v57;
  *v57 = v0;
  v57[1] = sub_10040184C;
  v58 = *(v0 + 40);
  v59 = *(v0 + 24);

  return sub_1003F821C(v59);
}

uint64_t sub_100401514()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1004016C8;
  }

  else
  {
    v6 = sub_100401640;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100401640()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004016C8()
{
  v1 = v0[18];
  v2 = v0[16];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "messageReceived handler error: %{public}@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10040184C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100401978;
  }

  else
  {
    v6 = sub_100402930;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100401978()
{
  v1 = v0[20];
  v2 = v0[16];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "messageReceived handler error: %{public}@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

void *sub_100401AFC(void *a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for UUID();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  if (*a1 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v16 = sub_10000A6F0(v11, a2);
    swift_beginAccess();
    (*(v12 + 16))(v15, v16, v11);
    ManagedDefault.wrappedValue.getter();
    (*(v12 + 8))(v15, v11);
    a2 = v30;
    if (!v30)
    {
      return &_swiftEmptySetSingleton;
    }

    v28 = *(v30 + 16);
    if (!v28)
    {
      break;
    }

    v11 = 0;
    v12 = v27 + 48;
    v17 = (v27 + 32);
    v18 = (v30 + 40);
    v19 = _swiftEmptyArrayStorage;
    v26 = v30;
    while (v11 < *(a2 + 16))
    {
      v20 = *(v18 - 1);
      v15 = *v18;

      UUID.init(uuidString:)();

      if ((*v12)(v7, 1, v8) == 1)
      {
        sub_100002CE0(v7, &qword_1005A96E0, &qword_1004C2A80);
      }

      else
      {
        v21 = *v17;
        (*v17)(v29, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1001FD1A0(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        v15 = (v23 + 1);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_1001FD1A0(v22 > 1, v23 + 1, 1, v19);
        }

        *(v19 + 2) = v15;
        v21(&v19[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v29, v8);
        a2 = v26;
      }

      ++v11;
      v18 += 2;
      if (v28 == v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_16:

  v24 = sub_10023F15C(v19);

  return v24;
}

uint64_t sub_100401EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharedSecretsRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100401F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100401F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100401FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = type metadata accessor for UUID();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v38);
  v37 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = sub_10022BD1C(*(a1 + 16), 0);
    v13 = sub_10023EA90(&v40, &v12[(*(v8 + 80) + 32) & ~*(v8 + 80)], v11, a1);
    sub_10000E3F8();
    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_5:
  v32[0] = a4;
  v14 = *(v12 + 2);
  if (v14)
  {
    v33 = a2;
    v34 = a3;
    v40 = _swiftEmptyArrayStorage;
    sub_10002B3C0(0, v14, 0);
    v15 = v40;
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v18 = *(v16 + 64);
    v32[1] = v12;
    v19 = &v12[(v18 + 32) & ~v18];
    v35 = *(v16 + 56);
    v36 = v17;
    v20 = (v16 - 8);
    do
    {
      v22 = v37;
      v21 = v38;
      v23 = v16;
      v36(v37, v19, v38);
      v24 = UUID.uuidString.getter();
      v26 = v25;
      (*v20)(v22, v21);
      v40 = v15;
      v28 = v15[2];
      v27 = v15[3];
      if (v28 >= v27 >> 1)
      {
        sub_10002B3C0((v27 > 1), v28 + 1, 1);
        v15 = v40;
      }

      v15[2] = v28 + 1;
      v29 = &v15[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      v19 += v35;
      --v14;
      v16 = v23;
    }

    while (v14);

    a2 = v33;
    a3 = v34;
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  v30 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  sub_10000A6F0(v30, a3);
  v39 = v15;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  return swift_endAccess();
}

unint64_t sub_1004022A0()
{
  result = qword_1005B3940;
  if (!qword_1005B3940)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3940);
  }

  return result;
}

uint64_t sub_10040231C()
{
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005E0C80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004EA010, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  sub_100401AFC(&qword_1005A8578, qword_1005B3798);

  sub_100401FE8(&_swiftEmptySetSingleton, &qword_1005A8578, qword_1005B3798, sub_1003F60D0);
  sub_100401AFC(&qword_1005A8580, qword_1005B37B0);

  return sub_100401FE8(&_swiftEmptySetSingleton, &qword_1005A8580, qword_1005B37B0, sub_1003F6254);
}

unint64_t sub_1004024EC()
{
  result = qword_1005B3948;
  if (!qword_1005B3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3948);
  }

  return result;
}

unint64_t sub_100402540()
{
  result = qword_1005B3950;
  if (!qword_1005B3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3950);
  }

  return result;
}

unint64_t sub_100402594()
{
  result = qword_1005B3958;
  if (!qword_1005B3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3958);
  }

  return result;
}

unint64_t sub_1004025E8()
{
  result = qword_1005B3960;
  if (!qword_1005B3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3960);
  }

  return result;
}

unint64_t sub_10040263C()
{
  result = qword_1005B3970;
  if (!qword_1005B3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3970);
  }

  return result;
}

uint64_t sub_100402690()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_1003FD4CC(v0 + v3, v5);
}

unint64_t sub_1004027A4()
{
  result = qword_1005B3978;
  if (!qword_1005B3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3978);
  }

  return result;
}

unint64_t sub_1004027F8()
{
  result = qword_1005B3980;
  if (!qword_1005B3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3980);
  }

  return result;
}

uint64_t sub_10040284C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003F6DC8();
}

uint64_t sub_1004028E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100402934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004029D8, 0, 0);
}

uint64_t sub_1004029D8()
{
  v23 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004EA1C0, &v22);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10000D01C(v8, v6, &v22);
    *(v9 + 22) = 2080;
    *(v0 + 16) = v7;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v22);

    *(v9 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s %{public}s %s", v9, 0x20u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 24);
  v17 = type metadata accessor for TaskPriority();
  v21 = *(v0 + 48);
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v16;
  *(v18 + 40) = v14;
  *(v18 + 48) = v15;
  *(v18 + 56) = v21;

  swift_errorRetain();

  sub_1001D7F30(0, 0, v13, &unk_1004D8918, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100402CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_100402CF8, 0, 0);
}

uint64_t sub_100402CF8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = type metadata accessor for AnalyticsEvent();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  swift_defaultActor_initialize();
  *(v7 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v8 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(*(v9 - 8) + 56);
  v10(&v7[v8], 1, 1, v9);
  v10(&v7[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v9);
  *(v7 + 15) = v3;
  *(v7 + 16) = v2;
  if (v1)
  {
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);

    swift_errorRetain();
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_100402FE8;

    return sub_1000502C4(v12);
  }

  else
  {
    v15 = *(v0 + 72);
    v16 = *(v0 + 88);
    *(v0 + 16) = 1;
    *(v0 + 56) = 0;
    v17 = *(v16 + 16);

    if (v17)
    {

      v18 = swift_task_alloc();
      *(v0 + 112) = v18;
      *v18 = v0;
      v18[1] = sub_100403250;
      v19 = *(v0 + 88);
      v20 = *(v0 + 96);

      return sub_100052618(v20, v19);
    }

    else
    {
      v21 = swift_task_alloc();
      *(v0 + 128) = v21;
      *(v21 + 16) = v0 + 16;
      v22 = swift_task_alloc();
      *(v0 + 136) = v22;
      *v22 = v0;
      v22[1] = sub_100403660;
      v23 = *(v0 + 96);

      return sub_10004F258(&unk_1004D8928, v21);
    }
  }
}

uint64_t sub_100402FE8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1004030E4, 0, 0);
}

uint64_t sub_1004030E4()
{
  v1 = *(v0 + 80);

  *(v0 + 16) = 0;
  v2 = *(v0 + 88);
  *(v0 + 56) = 0;
  if (*(v2 + 16))
  {

    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_100403250;
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);

    return sub_100052618(v5, v4);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *(v7 + 16) = v0 + 16;
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_100403660;
    v9 = *(v0 + 96);

    return sub_10004F258(&unk_1004D8928, v7);
  }
}

uint64_t sub_100403250()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100403440;
  }

  else
  {
    v4 = sub_100403380;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100403380()
{
  v1 = swift_task_alloc();
  v0[16] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100403660;
  v3 = v0[12];

  return sub_10004F258(&unk_1004D8928, v1);
}

uint64_t sub_100403440()
{
  v16 = v0;
  v1 = v0[12];

  v2 = v0[15];
  sub_100053520((v0 + 2));
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C30);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_10000D01C(v8, v7, &v15);
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to publish %{public}s. Error %{public}@", v9, 0x16u);
    sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100403660()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {

    return _swift_task_switch(sub_100403998, 0, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[19] = swift_allocObject();
    swift_defaultActor_initialize();
    v6 = swift_task_alloc();
    v2[20] = v6;
    *v6 = v4;
    v6[1] = sub_100403818;
    v7 = v2[12];

    return sub_100050D70(v7);
  }
}

uint64_t sub_100403818()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_100403930, 0, 0);
}

uint64_t sub_100403930()
{
  v1 = *(v0 + 96);

  sub_100053520(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100403998()
{
  v16 = v0;
  v1 = v0[12];

  v2 = v0[18];
  sub_100053520((v0 + 2));
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C30);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_10000D01C(v8, v7, &v15);
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to publish %{public}s. Error %{public}@", v9, 0x16u);
    sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100403BB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_100402CD4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100403CB4()
{
  v1 = *(v0 + 112);
  sub_10004B564(&qword_1005B2DD0, &unk_1004D7C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  sub_10005345C(v1, inited + 48);
  v3 = sub_100209E2C(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005B0160, &qword_1004D16F0);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100403DA4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002D40;

  return sub_100403C94(v2);
}

uint64_t sub_100403E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_100403E84, 0, 0);
}

uint64_t sub_100403E84()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  *v6 = v0;
  v6[1] = sub_1003061B4;
  v8 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000015, 0x80000001004EA260, sub_10041A380, v3, v7);
}

uint64_t sub_100403F98()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for OwnerSharedSecretsRecord();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004040D0, v0, 0);
}

uint64_t sub_1004040D0()
{
  v19 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100006964(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0C30);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004EA200, &v18);
    v10 = "%{public}s Feature.FindMy.redStripe FF disabled.";
    goto LABEL_14;
  }

  if (sub_1003F399C())
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_10040445C;

    return daemon.getter();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0C30);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004EA200, &v18);
    v10 = "%{public}s isFindingCapable == false.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v6, v7, v10, v8, 0xCu);
    sub_100004984(v9);
  }

LABEL_15:

  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v15 = v0[9];

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_10040445C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100006964(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100404638;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100404638(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[7];

    return _swift_task_switch(sub_100405280, v7, 0);
  }

  else
  {
    v8 = v4[16];

    v9 = swift_task_alloc();
    v4[20] = v9;
    *v9 = v6;
    v9[1] = sub_1004047C4;
    v10 = v4[9];

    return sub_100309F04(v10);
  }
}

uint64_t sub_1004047C4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_100405320;
  }

  else
  {
    v6 = sub_1004048F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004048F0()
{
  v39 = v0;
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No OwnerSharedSecretRecord!", v5, 2u);
    }

    v6 = v0[8];

    v0[25] = sub_1003DA6A0();
    v7 = swift_allocError();
    v0[26] = v7;
    *v8 = 17;
    v9 = sub_100209E2C(_swiftEmptyArrayStorage);
    v0[27] = v9;
    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_100405068;
    v11 = v7;
    v12 = v9;
  }

  else
  {
    sub_10041AAB8(v1, v0[14], type metadata accessor for OwnerSharedSecretsRecord);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v14 = v0[13];
    v13 = v0[14];
    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005E0C30);
    sub_10041ADFC(v13, v14, type metadata accessor for OwnerSharedSecretsRecord);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[13];
    if (v18)
    {
      v20 = v0[12];
      v21 = v0[10];
      v22 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004EA200, &v38);
      *(v22 + 12) = 2080;
      sub_10041ADFC(v19, v20, type metadata accessor for OwnerSharedSecretsRecord);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_10041AE64(v19, type metadata accessor for OwnerSharedSecretsRecord);
      v26 = sub_10000D01C(v23, v25, &v38);

      *(v22 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s found existing owner record: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10041AE64(v19, type metadata accessor for OwnerSharedSecretsRecord);
    }

    v27 = sub_10042F8D8(v0[14] + *(v0[10] + 24), 0, 1);
    v0[22] = v27;
    v28 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2113;
      *(v31 + 14) = v28;
      *v32 = v27;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "ownerToken: %{private,mask.hash}@.", v31, 0x16u);
      sub_100002CE0(v32, &qword_1005A9670, &unk_1004C2480);
    }

    v34 = v0[8];

    v35 = sub_100209E2C(_swiftEmptyArrayStorage);
    v0[23] = v35;
    v36 = swift_task_alloc();
    v0[24] = v36;
    *v36 = v0;
    v36[1] = sub_100404E80;
    v11 = 0;
    v12 = v35;
  }

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA220, v11, v12);
}

uint64_t sub_100404E80()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_100404FAC, v3, 0);
}

uint64_t sub_100404FAC()
{
  v1 = v0[18];
  v2 = v0[14];

  sub_10041AE64(v2, type metadata accessor for OwnerSharedSecretsRecord);
  v3 = v0[22];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8(v3);
}

uint64_t sub_100405068()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 56);
  v6 = *v0;

  return _swift_task_switch(sub_1004051B8, v4, 0);
}

uint64_t sub_1004051B8()
{
  v1 = v0[25];
  swift_allocError();
  *v2 = 17;
  swift_willThrow();
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100405280()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100405320()
{
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004053C0(uint64_t a1)
{
  v25 = a1;
  v3 = v1;
  v29 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Friend();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v30 = v1[16];
  v26 = v1;
  v28 = type metadata accessor for WorkItemQueue.WorkItem();
  v24 = *(v8 + 16);
  v24(v12, a1, v7);
  v13 = *(v8 + 80);
  v14 = (v13 + 24) & ~v13;
  v15 = v9 + 7;
  v16 = (v9 + 7 + v14) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  v18 = *(v8 + 32);
  v18(v17 + v14, v12, v7);
  v19 = v29;
  *(v17 + v16) = v29;
  v20 = v27;
  v24(v27, v25, v7);
  v21 = (v13 + 16) & ~v13;
  v22 = swift_allocObject();
  v18(v22 + v21, v20, v7);
  *(v22 + ((v15 + v21) & 0xFFFFFFFFFFFFFFF8)) = v19;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100405674()
{
  v1[2] = v0;
  v2 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_100405740;

  return daemon.getter();
}

uint64_t sub_100405740(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100006964(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10040591C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10040591C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_100406024, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v6;
    v9[1] = sub_100405AA8;
    v10 = v4[3];

    return sub_1001DB14C(v10);
  }
}

uint64_t sub_100405AA8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100405BB8, v2, 0);
}

uint64_t sub_100405BB8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 16);
  if (v4 == 1)
  {
    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v6 = sub_100405E94;
  }

  else
  {
    *(v0 + 80) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v6 = sub_100405CE8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100405CE8()
{
  v14 = v0;
  v1 = *(v0 + 80);
  if (v1 == 1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0C30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 56);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA390, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s not Me device.", v8, 0xCu);
      sub_100004984(v9);
    }
  }

  v10 = *(v0 + 24);

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_100405E94()
{
  v12 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA390, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s not Me device.", v6, 0xCu);
    sub_100004984(v7);
  }

  v8 = v0[3];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_100406024()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[8];

  return v3(0);
}

uint64_t sub_100406098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for MessagingOptions();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for FindingTokenEnvelopeV1();
  v3[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v13 = type metadata accessor for SharedSecretKey();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v17 = type metadata accessor for FriendSharedSecretsRecord();
  v3[26] = v17;
  v18 = *(v17 - 8);
  v3[27] = v18;
  v19 = *(v18 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v20 = type metadata accessor for Friend();
  v3[31] = v20;
  v21 = *(v20 - 8);
  v3[32] = v21;
  v22 = *(v21 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v23 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v24 = type metadata accessor for Date();
  v3[42] = v24;
  v25 = *(v24 - 8);
  v3[43] = v25;
  v26 = *(v25 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v27 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v28 = type metadata accessor for Account();
  v3[50] = v28;
  v29 = *(v28 - 8);
  v3[51] = v29;
  v30 = *(v29 + 64) + 15;
  v3[52] = swift_task_alloc();
  v31 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v32 = type metadata accessor for UUID();
  v3[55] = v32;
  v33 = *(v32 - 8);
  v3[56] = v33;
  v34 = *(v33 + 64) + 15;
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v35 = type metadata accessor for Handle();
  v3[60] = v35;
  v36 = *(v35 - 8);
  v3[61] = v36;
  v37 = *(v36 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();

  return _swift_task_switch(sub_1004066BC, 0, 0);
}

uint64_t sub_1004066BC()
{
  v55 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100006964(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0C30);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_15;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v54[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v54);
    v11 = "%{public}s Feature.FindMy.redStripe FF disabled.";
    goto LABEL_14;
  }

  if (sub_1003F399C())
  {
    v3 = swift_task_alloc();
    v0[69] = v3;
    *v3 = v0;
    v3[1] = sub_100406C18;
    v4 = v0[7];

    return sub_100405674();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005E0C30);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v54[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v54);
    v11 = "%{public}s isFindingCapable == false.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v7, v8, v11, v9, 0xCu);
    sub_100004984(v10);
  }

LABEL_15:

  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[65];
  v18 = v0[63];
  v17 = v0[64];
  v19 = v0[62];
  v20 = v0[58];
  v21 = v0[59];
  v22 = v0[57];
  v24 = v0[54];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[49];
  v28 = v0[48];
  v29 = v0[47];
  v30 = v0[46];
  v31 = v0[45];
  v32 = v0[44];
  v33 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[38];
  v37 = v0[37];
  v38 = v0[36];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[33];
  v42 = v0[30];
  v43 = v0[29];
  v44 = v0[28];
  v45 = v0[25];
  v46 = v0[24];
  v47 = v0[21];
  v48 = v0[20];
  v49 = v0[19];
  v50 = v0[18];
  v51 = v0[17];
  v52 = v0[15];
  v53 = v0[12];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100406C18(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 544);
    v8 = *(v4 + 536);
    v9 = *(v4 + 528);
    v10 = *(v4 + 520);
    v12 = *(v4 + 504);
    v11 = *(v4 + 512);
    v13 = *(v4 + 496);
    v15 = *(v4 + 464);
    v14 = *(v4 + 472);
    v19 = *(v4 + 456);
    v20 = *(v4 + 432);
    v21 = *(v4 + 424);
    v22 = *(v4 + 416);
    v23 = *(v4 + 392);
    v24 = *(v4 + 384);
    v25 = *(v4 + 376);
    v26 = *(v4 + 368);
    v27 = *(v4 + 360);
    v28 = *(v4 + 352);
    v29 = *(v4 + 328);
    v30 = *(v4 + 320);
    v31 = *(v4 + 312);
    v32 = *(v4 + 304);
    v33 = *(v4 + 296);
    v34 = *(v4 + 288);
    v35 = *(v4 + 280);
    v36 = *(v4 + 272);
    v37 = *(v4 + 264);
    v38 = *(v4 + 240);
    v39 = *(v4 + 232);
    v40 = *(v4 + 224);
    v41 = *(v4 + 200);
    v42 = *(v4 + 192);
    v43 = *(v4 + 168);
    v44 = *(v4 + 160);
    v45 = *(v4 + 152);
    v46 = *(v4 + 144);
    v47 = *(v4 + 136);
    v48 = *(v4 + 120);
    v16 = *(v4 + 96);

    v17 = *(v6 + 8);

    return v17();
  }

  else
  {
    *(v4 + 913) = a1 & 1;

    return _swift_task_switch(sub_100406F70, 0, 0);
  }
}

uint64_t sub_100406F70()
{
  v78 = v0;
  if (*(v0 + 913) != 1)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005E0C30);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v77[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v77);
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s this device is NOT eligible to generate finding tokens.", v26, 0xCu);
      sub_100004984(v27);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v28 = 20;
    swift_willThrow();
    goto LABEL_17;
  }

  v1 = *(v0 + 544);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 64);
  Friend.handle.getter();
  Handle.peerID.getter();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100002CE0(*(v0 + 432), &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 544);
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v9 = *(v0 + 480);
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0C30);
    (*(v8 + 16))(v7, v6, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 488);
    v14 = *(v0 + 496);
    v16 = *(v0 + 480);
    if (v13)
    {
      v75 = *(v0 + 480);
      v17 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v17 = 136446723;
      *(v17 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v77);
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      v18 = Handle.identifier.getter();
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v14, v75);
      v22 = sub_10000D01C(v18, v20, v77);

      *(v17 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s Missing peerID for handle %{private,mask.hash}s!", v17, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v21 = *(v15 + 8);
      v21(v14, v16);
    }

    v31 = *(v0 + 544);
    v32 = *(v0 + 480);
    sub_1003DA6A0();
    swift_allocError();
    *v33 = 15;
    swift_willThrow();
    v21(v31, v32);
LABEL_17:
    v34 = *(v0 + 544);
    v35 = *(v0 + 536);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    v39 = *(v0 + 504);
    v38 = *(v0 + 512);
    v40 = *(v0 + 496);
    v41 = *(v0 + 464);
    v42 = *(v0 + 472);
    v43 = *(v0 + 456);
    v46 = *(v0 + 432);
    v47 = *(v0 + 424);
    v48 = *(v0 + 416);
    v49 = *(v0 + 392);
    v50 = *(v0 + 384);
    v51 = *(v0 + 376);
    v52 = *(v0 + 368);
    v53 = *(v0 + 360);
    v54 = *(v0 + 352);
    v55 = *(v0 + 328);
    v56 = *(v0 + 320);
    v57 = *(v0 + 312);
    v58 = *(v0 + 304);
    v59 = *(v0 + 296);
    v60 = *(v0 + 288);
    v61 = *(v0 + 280);
    v62 = *(v0 + 272);
    v63 = *(v0 + 264);
    v64 = *(v0 + 240);
    v65 = *(v0 + 232);
    v66 = *(v0 + 224);
    v67 = *(v0 + 200);
    v68 = *(v0 + 192);
    v69 = *(v0 + 168);
    v70 = *(v0 + 160);
    v71 = *(v0 + 152);
    v72 = *(v0 + 144);
    v73 = *(v0 + 136);
    v74 = *(v0 + 120);
    v76 = *(v0 + 96);

    v44 = *(v0 + 8);

    return v44();
  }

  (*(*(v0 + 448) + 32))(*(v0 + 472), *(v0 + 432), *(v0 + 440));
  v29 = async function pointer to daemon.getter[1];
  v30 = swift_task_alloc();
  *(v0 + 560) = v30;
  *v30 = v0;
  v30[1] = sub_100407634;

  return daemon.getter();
}

uint64_t sub_100407634(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 560);
  v12 = *v1;
  v3[71] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[72] = v6;
  v7 = type metadata accessor for Daemon();
  v3[73] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[74] = v9;
  v10 = sub_100006964(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_100407814;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100407814(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 576);
  v6 = *v2;
  v4[75] = a1;
  v4[76] = v1;

  v7 = v4[71];

  if (v1)
  {

    return _swift_task_switch(sub_10040B814, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[77] = v8;
    *v8 = v6;
    v8[1] = sub_1004079BC;
    v9 = v4[49];

    return sub_10000EB24(v9);
  }
}

uint64_t sub_1004079BC()
{
  v1 = *(*v0 + 616);
  v3 = *v0;

  return _swift_task_switch(sub_100407AB8, 0, 0);
}

uint64_t sub_100407AB8()
{
  v156 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0C30);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v155[0] = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v155);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Missing primary account to send friend token!", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = v0[75];
    v10 = v0[68];
    v11 = v0[60];
    v12 = v0[61];
    v13 = v0[59];
    v14 = v0[55];
    v15 = v0[56];
    sub_1003DA6A0();
    swift_allocError();
    *v16 = 16;
    swift_willThrow();

    (*(v15 + 8))(v13, v14);
    (*(v12 + 8))(v10, v11);
LABEL_18:
    v88 = v0[68];
    v89 = v0[67];
    v90 = v0[66];
    v91 = v0[65];
    v93 = v0[63];
    v92 = v0[64];
    v94 = v0[62];
    v95 = v0[58];
    v96 = v0[59];
    v97 = v0[57];
    v110 = v0[54];
    v111 = v0[53];
    v112 = v0[52];
    v113 = v0[49];
    v114 = v0[48];
    v115 = v0[47];
    v116 = v0[46];
    v117 = v0[45];
    v118 = v0[44];
    v119 = v0[41];
    v120 = v0[40];
    v121 = v0[39];
    v122 = v0[38];
    v123 = v0[37];
    v124 = v0[36];
    v125 = v0[35];
    v126 = v0[34];
    v127 = v0[33];
    v128 = v0[30];
    v129 = v0[29];
    v130 = v0[28];
    v131 = v0[25];
    v133 = v0[24];
    v135 = v0[21];
    v137 = v0[20];
    v139 = v0[19];
    v141 = v0[18];
    v145 = v0[17];
    v147 = v0[15];
    v151 = v0[12];

    v98 = v0[1];

    return v98();
  }

  v17 = v0[42];
  v18 = v0[43];
  v19 = v0[41];
  v20 = v0[8];
  (*(v2 + 32))(v0[52], v3, v1);
  Friend.createdAt.getter();
  v21 = *(v18 + 48);
  v0[78] = v21;
  v0[79] = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v19, 1, v17) == 1)
  {
    sub_100002CE0(v0[41], &unk_1005AE5B0, &qword_1004C32F0);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v22 = v0[68];
    v23 = v0[63];
    v24 = v0[60];
    v25 = v0[61];
    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005E0C30);
    (*(v25 + 16))(v23, v22, v24);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[63];
    v31 = v0[60];
    v32 = v0[61];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v155[0] = swift_slowAlloc();
      *v33 = 136446723;
      *(v33 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v155);
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2081;
      v34 = Handle.identifier.getter();
      v36 = v35;
      v148 = *(v32 + 8);
      v148(v30, v31);
      v37 = sub_10000D01C(v34, v36, v155);

      *(v33 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s Missing relationship date: %{private,mask.hash}s!", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v148 = *(v32 + 8);
      v148(v30, v31);
    }

    v79 = v0[75];
    v144 = v0[68];
    v81 = v0[59];
    v80 = v0[60];
    v82 = v0[55];
    v83 = v0[56];
    v84 = v0[51];
    v85 = v0[52];
    v86 = v0[50];
    sub_1003DA6A0();
    swift_allocError();
    *v87 = 15;
    swift_willThrow();

    (*(v84 + 8))(v85, v86);
    (*(v83 + 8))(v81, v82);
    v148(v144, v80);
    goto LABEL_18;
  }

  v38 = v0[48];
  v39 = v0[42];
  v40 = v0[43];
  v41 = v0[41];
  v42 = *(v40 + 32);
  v0[80] = v42;
  v0[81] = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v42(v38, v41, v39);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v43 = v0[58];
  v44 = v0[59];
  v45 = v0[55];
  v46 = v0[56];
  v149 = v0[47];
  v152 = v0[48];
  v47 = v0[43];
  v142 = v0[34];
  v146 = v0[42];
  v49 = v0[31];
  v48 = v0[32];
  v50 = v0[8];
  v51 = type metadata accessor for Logger();
  v0[82] = sub_10000A6F0(v51, qword_1005E0C30);
  (*(v46 + 16))(v43, v44, v45);
  v52 = *(v48 + 16);
  v0[83] = v52;
  v0[84] = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v142, v50, v49);
  v53 = *(v47 + 16);
  v0[85] = v53;
  v0[86] = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53(v149, v152, v146);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v0[67];
    v57 = v0[61];
    v153 = v55;
    v58 = v0[58];
    v59 = v0[55];
    v60 = v0[56];
    v140 = v0[47];
    v143 = v0[43];
    v136 = v0[60];
    v138 = v0[42];
    v150 = v54;
    v61 = v0[32];
    v132 = v0[34];
    v134 = v0[31];
    v62 = swift_slowAlloc();
    v155[0] = swift_slowAlloc();
    *v62 = 136446979;
    sub_100006964(&qword_1005A92C0, &type metadata accessor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v66 = v59;
    v67 = *(v60 + 8);
    v67(v58, v66);
    v68 = sub_10000D01C(v63, v65, v155);

    *(v62 + 4) = v68;
    *(v62 + 12) = 2160;
    *(v62 + 14) = 1752392040;
    *(v62 + 22) = 2081;
    Friend.handle.getter();
    v69 = Handle.identifier.getter();
    v71 = v70;
    (*(v57 + 8))(v56, v136);
    v72 = *(v61 + 8);
    v72(v132, v134);
    v73 = sub_10000D01C(v69, v71, v155);

    *(v62 + 24) = v73;
    *(v62 + 32) = 2082;
    sub_100006964(&qword_1005A9800, &type metadata accessor for Date);
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    v77 = *(v143 + 8);
    v77(v140, v138);
    v78 = sub_10000D01C(v74, v76, v155);

    *(v62 + 34) = v78;
    _os_log_impl(&_mh_execute_header, v150, v153, "Adding peer %{public}s %{private,mask.hash}s baseDate: %{public}s", v62, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v154 = v0[58];
    v100 = v0[55];
    v101 = v0[56];
    v102 = v0[47];
    v103 = v0[42];
    v104 = v0[43];
    v105 = v0[34];
    v107 = v0[31];
    v106 = v0[32];

    v77 = *(v104 + 8);
    v77(v102, v103);
    v72 = *(v106 + 8);
    v72(v105, v107);
    v67 = *(v101 + 8);
    v67(v154, v100);
  }

  v0[89] = v77;
  v0[88] = v67;
  v0[87] = v72;
  v108 = async function pointer to daemon.getter[1];
  v109 = swift_task_alloc();
  v0[90] = v109;
  *v109 = v0;
  v109[1] = sub_100408670;

  return daemon.getter();
}

uint64_t sub_100408670(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 720);
  v5 = *v1;
  v3[91] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[92] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100006964(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_100408824;
  v10 = v3[74];
  v11 = v3[73];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100408824(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 736);
  v6 = *v2;
  *(v4 + 744) = a1;
  *(v4 + 752) = v1;

  v7 = *(v3 + 728);

  if (v1)
  {
    v8 = sub_10040BAB4;
  }

  else
  {
    v8 = sub_100408964;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100408964()
{
  v1 = v0[93];
  v2 = v0[9];
  v3 = swift_allocObject();
  v0[95] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[96] = v5;
  *v5 = v0;
  v5[1] = sub_100408A64;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1004D8A00, v3, &type metadata for () + 8);
}

uint64_t sub_100408A64()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v4 = *v1;
  *(*v1 + 776) = v0;

  v5 = *(v2 + 760);

  if (v0)
  {
    v6 = sub_10040BDB4;
  }

  else
  {
    v6 = sub_100408B98;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100408B98()
{
  v1 = *(v0[93] + 128);
  v2 = swift_task_alloc();
  v0[98] = v2;
  *v2 = v0;
  v2[1] = sub_100408C38;
  v3 = v0[59];
  v4 = v0[25];

  return sub_1001C4430(v4, v3);
}

uint64_t sub_100408C38()
{
  v2 = *(*v1 + 784);
  v5 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = sub_10040996C;
  }

  else
  {
    v3 = sub_100408D4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100408D4C()
{
  v154 = v0;
  v1 = *(v0 + 200);
  if ((*(*(v0 + 216) + 48))(v1, 1, *(v0 + 208)) == 1)
  {
    v2 = &unk_1005AECE8;
    v3 = &qword_1004D07A0;
    v4 = v1;
LABEL_11:
    sub_100002CE0(v4, v2, v3);
    goto LABEL_12;
  }

  v5 = *(v0 + 656);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  sub_10041AAB8(v1, v6, type metadata accessor for FriendSharedSecretsRecord);
  sub_10041ADFC(v6, v7, type metadata accessor for FriendSharedSecretsRecord);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 232);
  if (v10)
  {
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = swift_slowAlloc();
    v153[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v153);
    *(v14 + 12) = 2080;
    sub_10041ADFC(v11, v12, type metadata accessor for FriendSharedSecretsRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10041AE64(v11, type metadata accessor for FriendSharedSecretsRecord);
    v18 = sub_10000D01C(v15, v17, v153);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s found existing peer record %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10041AE64(v11, type metadata accessor for FriendSharedSecretsRecord);
  }

  v19 = *(v0 + 632);
  v20 = *(v0 + 624);
  v21 = *(v0 + 336);
  v22 = *(v0 + 320);
  v23 = *(v0 + 240);
  v24 = *(*(v0 + 208) + 36);
  sub_100005F04(v23 + v24, v22, &unk_1005AE5B0, &qword_1004C32F0);
  if (v20(v22, 1, v21) == 1)
  {
    v25 = *(v0 + 320);
LABEL_10:
    sub_10041AE64(*(v0 + 240), type metadata accessor for FriendSharedSecretsRecord);
    v2 = &unk_1005AE5B0;
    v3 = &qword_1004C32F0;
    v4 = v25;
    goto LABEL_11;
  }

  v26 = *(v0 + 632);
  v27 = *(v0 + 624);
  v28 = *(v0 + 336);
  v29 = *(v0 + 312);
  sub_100002CE0(*(v0 + 320), &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v23 + v24, v29, &unk_1005AE5B0, &qword_1004C32F0);
  if (v27(v29, 1, v28) == 1)
  {
    v25 = *(v0 + 312);
    goto LABEL_10;
  }

  v75 = *(v0 + 648);
  v76 = *(v0 + 384);
  (*(v0 + 640))(*(v0 + 368), *(v0 + 312), *(v0 + 336));
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    v79 = *(v0 + 656);
    (*(*(v0 + 488) + 16))(*(v0 + 528), *(v0 + 544), *(v0 + 480));
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 528);
    v84 = *(v0 + 480);
    v85 = *(v0 + 488);
    if (v82)
    {
      v86 = swift_slowAlloc();
      v153[0] = swift_slowAlloc();
      *v86 = 136446723;
      *(v86 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v153);
      *(v86 + 12) = 2160;
      *(v86 + 14) = 1752392040;
      *(v86 + 22) = 2081;
      v87 = Handle.identifier.getter();
      v89 = v88;
      v151 = *(v85 + 8);
      v151(v83, v84);
      v90 = sub_10000D01C(v87, v89, v153);

      *(v86 + 24) = v90;
      _os_log_impl(&_mh_execute_header, v80, v81, "%{public}s Peer already exists: %{private,mask.hash}s!", v86, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v151 = *(v85 + 8);
      v151(v83, v84);
    }

    v91 = *(v0 + 744);
    v92 = *(v0 + 712);
    v93 = *(v0 + 600);
    v144 = *(v0 + 544);
    v136 = *(v0 + 704);
    v140 = *(v0 + 480);
    v127 = *(v0 + 448);
    v130 = *(v0 + 440);
    v133 = *(v0 + 472);
    v94 = *(v0 + 408);
    v122 = *(v0 + 400);
    v124 = *(v0 + 416);
    v120 = *(v0 + 384);
    v95 = *(v0 + 368);
    v97 = *(v0 + 336);
    v96 = *(v0 + 344);
    v98 = *(v0 + 240);
    sub_1003DA6A0();
    swift_allocError();
    *v99 = 0;
    swift_willThrow();

    v92(v95, v97);
    sub_10041AE64(v98, type metadata accessor for FriendSharedSecretsRecord);
    v92(v120, v97);
    (*(v94 + 8))(v124, v122);
    v136(v133, v130);
    v151(v144, v140);
LABEL_16:
    v47 = *(v0 + 544);
    v48 = *(v0 + 536);
    v49 = *(v0 + 528);
    v50 = *(v0 + 520);
    v52 = *(v0 + 504);
    v51 = *(v0 + 512);
    v53 = *(v0 + 496);
    v54 = *(v0 + 464);
    v55 = *(v0 + 472);
    v56 = *(v0 + 456);
    v100 = *(v0 + 432);
    v101 = *(v0 + 424);
    v102 = *(v0 + 416);
    v103 = *(v0 + 392);
    v104 = *(v0 + 384);
    v105 = *(v0 + 376);
    v106 = *(v0 + 368);
    v107 = *(v0 + 360);
    v108 = *(v0 + 352);
    v109 = *(v0 + 328);
    v110 = *(v0 + 320);
    v111 = *(v0 + 312);
    v112 = *(v0 + 304);
    v113 = *(v0 + 296);
    v114 = *(v0 + 288);
    v115 = *(v0 + 280);
    v116 = *(v0 + 272);
    v117 = *(v0 + 264);
    v118 = *(v0 + 240);
    v119 = *(v0 + 232);
    v121 = *(v0 + 224);
    v123 = *(v0 + 200);
    v126 = *(v0 + 192);
    v129 = *(v0 + 168);
    v132 = *(v0 + 160);
    v135 = *(v0 + 152);
    v138 = *(v0 + 144);
    v142 = *(v0 + 136);
    v146 = *(v0 + 120);
    v149 = *(v0 + 96);

    v57 = *(v0 + 8);

    return v57();
  }

  v77 = *(v0 + 240);
  v78 = *(v0 + 344) + 8;
  (*(v0 + 712))(*(v0 + 368), *(v0 + 336));
  sub_10041AE64(v77, type metadata accessor for FriendSharedSecretsRecord);
LABEL_12:
  v30 = *(v0 + 176);
  v31 = *(v0 + 184);
  v32 = *(v0 + 168);
  static SharedSecretKey.length.getter();
  static Data.random(bytes:)();
  sub_100006964(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
  KeyRepresenting.init(rawValue:)();
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    v33 = *(v0 + 656);
    sub_100002CE0(*(v0 + 168), &qword_1005AEB98, &unk_1004D07C0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v153[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v153);
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s Unable to generate SharedSecretKey!", v36, 0xCu);
      sub_100004984(v37);
    }

    v38 = *(v0 + 744);
    v39 = *(v0 + 600);
    v148 = *(v0 + 544);
    v40 = *(v0 + 488);
    v141 = *(v0 + 704);
    v145 = *(v0 + 480);
    v128 = *(v0 + 712);
    v131 = *(v0 + 448);
    v134 = *(v0 + 440);
    v137 = *(v0 + 472);
    v41 = *(v0 + 408);
    v125 = *(v0 + 416);
    v42 = *(v0 + 400);
    v43 = *(v0 + 384);
    v44 = *(v0 + 336);
    v45 = *(v0 + 344);
    sub_1003DA6A0();
    swift_allocError();
    *v46 = 21;
    swift_willThrow();

    v128(v43, v44);
    (*(v41 + 8))(v125, v42);
    v141(v137, v134);
    (*(v40 + 8))(v148, v145);
    goto LABEL_16;
  }

  v150 = *(v0 + 680);
  v152 = *(v0 + 688);
  v59 = *(v0 + 336);
  v60 = *(v0 + 344);
  v139 = *(v0 + 304);
  v143 = *(v0 + 296);
  v147 = *(v0 + 384);
  v61 = *(v0 + 184);
  v62 = *(v0 + 192);
  v63 = *(v0 + 176);
  v65 = *(v0 + 152);
  v64 = *(v0 + 160);
  (*(v61 + 32))(v62, *(v0 + 168), v63);
  v66 = *(v61 + 56);
  v66(v64, 1, 1, v63);
  v67 = *(v60 + 56);
  v67(v139, 1, 1, v59);
  (*(v61 + 16))(v65, v62, v63);
  v66(v65, 0, 1, v63);
  v150(v143, v147, v59);
  v67(v143, 0, 1, v59);
  v68 = swift_task_alloc();
  *(v0 + 800) = v68;
  *v68 = v0;
  v68[1] = sub_100409C7C;
  v69 = *(v0 + 472);
  v71 = *(v0 + 296);
  v70 = *(v0 + 304);
  v73 = *(v0 + 152);
  v72 = *(v0 + 160);
  v74 = *(v0 + 56);

  return sub_10040CCB0(v69, v72, v70, v73, v71);
}

uint64_t sub_10040996C()
{
  v1 = v0[93];
  v2 = v0[89];
  v3 = v0[75];
  v58 = v0[68];
  v4 = v0[61];
  v54 = v0[88];
  v56 = v0[60];
  v48 = v0[56];
  v50 = v0[55];
  v52 = v0[59];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[50];
  v8 = v0[48];
  v10 = v0[42];
  v9 = v0[43];

  v2(v8, v10);
  (*(v5 + 8))(v6, v7);
  v54(v52, v50);
  (*(v4 + 8))(v58, v56);
  v59 = v0[99];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[59];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[44];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v40 = v0[33];
  v41 = v0[30];
  v42 = v0[29];
  v43 = v0[28];
  v44 = v0[25];
  v45 = v0[24];
  v46 = v0[21];
  v47 = v0[20];
  v49 = v0[19];
  v51 = v0[18];
  v53 = v0[17];
  v55 = v0[15];
  v57 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100409C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *v1;
  v2[101] = v0;

  v5 = v2[38];
  v6 = v2[37];
  v7 = v2[20];
  v8 = v2[19];
  if (v0)
  {
    sub_100002CE0(v6, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v8, &qword_1005AEB98, &unk_1004D07C0);
    sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v7, &qword_1005AEB98, &unk_1004D07C0);

    return _swift_task_switch(sub_10040C0C4, 0, 0);
  }

  else
  {
    sub_100002CE0(v6, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v8, &qword_1005AEB98, &unk_1004D07C0);
    sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v7, &qword_1005AEB98, &unk_1004D07C0);
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    v2[102] = v10;
    *v10 = v4;
    v10[1] = sub_100409F14;

    return daemon.getter();
  }
}

uint64_t sub_100409F14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 816);
  v5 = *v1;
  v3[103] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[104] = v7;
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_10005A3CC();
  *v7 = v5;
  v7[1] = sub_10040A0A4;
  v10 = v3[74];
  v11 = v3[73];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10040A0A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 832);
  v6 = *v2;
  *(v4 + 840) = a1;
  *(v4 + 848) = v1;

  v7 = *(v3 + 824);

  if (v1)
  {
    v8 = sub_10040C3F8;
  }

  else
  {
    v8 = sub_10040A1E4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10040A1E4()
{
  v147 = v0;
  v1 = *(v0 + 664);
  v138 = *(v0 + 672);
  v142 = *(v0 + 656);
  v2 = *(v0 + 544);
  v3 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 488);
  v6 = *(v0 + 416);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  v9 = *(v0 + 64);
  v10 = Account.dsidBase64EncodedString()();
  v11 = *(v5 + 16);
  *(v0 + 856) = v11;
  *(v0 + 864) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v3, v2, v4);
  v12 = v9;
  object = v10._object;
  v1(v7, v12, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v139 = v15;
    v130 = *(v0 + 624);
    v133 = *(v0 + 632);
    v16 = *(v0 + 520);
    v17 = *(v0 + 480);
    v18 = *(v0 + 488);
    v19 = *(v0 + 288);
    v124 = *(v0 + 264);
    v127 = *(v0 + 336);
    v20 = swift_slowAlloc();
    v146[0] = swift_slowAlloc();
    *v20 = 141559043;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v21 = Handle.identifier.getter();
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v16, v17);
    v25 = sub_10000D01C(v21, v23, v146);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2050;
    Friend.expiry.getter();
    if (v130(v19, 1, v127) == 1)
    {
      v26 = 0x4143C68000000000;
    }

    else
    {
      v35 = *(v0 + 712);
      v36 = *(v0 + 648);
      v37 = *(v0 + 352);
      v38 = *(v0 + 360);
      v39 = *(v0 + 336);
      (*(v0 + 640))(v38, *(v0 + 288), v39);
      static Date.trustedNow.getter(v37);
      Date.timeIntervalSince(_:)();
      v26 = v40;
      v35(v37, v39);
      v35(v38, v39);
    }

    countAndFlagsBits = v10._countAndFlagsBits;
    v41 = *(v0 + 256) + 8;
    (*(v0 + 696))(*(v0 + 264), *(v0 + 248));
    *(v20 + 24) = v26;
    *(v20 + 32) = 2160;
    *(v20 + 34) = 1752392040;
    *(v20 + 42) = 2081;
    object = v10._object;
    *(v20 + 44) = sub_10000D01C(v10._countAndFlagsBits, v10._object, v146);
    _os_log_impl(&_mh_execute_header, v14, v139, "Sending shared secret to %{private,mask.hash}s. TTL: %{public}f\nfrom my serverID: %{private,mask.hash}s over IDS.", v20, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
    v27 = *(v0 + 696);
    v28 = *(v0 + 520);
    v29 = *(v0 + 480);
    v30 = *(v0 + 488);
    v32 = *(v0 + 256);
    v31 = *(v0 + 264);
    v33 = *(v0 + 248);

    v27(v31, v33);
    v24 = *(v30 + 8);
    v24(v28, v29);
    countAndFlagsBits = v10._countAndFlagsBits;
  }

  *(v0 + 872) = v24;
  v42 = *(v0 + 848);
  v43 = *(v0 + 688);
  v44 = *(v0 + 192);
  v46 = *(v0 + 136);
  v45 = *(v0 + 144);
  v48 = *(v0 + 120);
  v47 = *(v0 + 128);
  (*(v0 + 680))(v45 + *(v47 + 20), *(v0 + 384), *(v0 + 336));
  v49 = SharedSecretKey.data.getter();
  *v45 = countAndFlagsBits;
  v45[1] = object;
  v50 = (v45 + *(v47 + 24));
  *v50 = v49;
  v50[1] = v51;
  *(v0 + 912) = 1;
  sub_10041ADFC(v45, v46, type metadata accessor for FindingTokenEnvelopeV1);
  sub_10006DFA4();
  sub_100006964(&qword_1005B3998, type metadata accessor for FindingTokenEnvelopeV1);
  sub_100006964(&qword_1005B39A0, type metadata accessor for FindingTokenEnvelopeV1);
  Message.init<A>(type:version:payload:)();
  if (v42)
  {
    v52 = *(v0 + 840);
    v53 = *(v0 + 744);
    v120 = *(v0 + 712);
    v54 = *(v0 + 600);
    v134 = *(v0 + 488);
    v136 = *(v0 + 704);
    v140 = *(v0 + 480);
    v143 = *(v0 + 544);
    v128 = *(v0 + 472);
    v122 = *(v0 + 448);
    v125 = *(v0 + 440);
    v55 = *(v0 + 408);
    v116 = *(v0 + 400);
    v118 = *(v0 + 416);
    v114 = *(v0 + 384);
    v131 = v24;
    v56 = *(v0 + 336);
    v57 = *(v0 + 344);
    v59 = *(v0 + 184);
    v58 = *(v0 + 192);
    v60 = *(v0 + 176);
    v61 = *(v0 + 144);

    sub_10041AE64(v61, type metadata accessor for FindingTokenEnvelopeV1);
    (*(v59 + 8))(v58, v60);
    v120(v114, v56);
    (*(v55 + 8))(v118, v116);
    v136(v128, v125);
    v131(v143, v140);
    v62 = *(v0 + 544);
    v63 = *(v0 + 536);
    v64 = *(v0 + 528);
    v65 = *(v0 + 520);
    v67 = *(v0 + 504);
    v66 = *(v0 + 512);
    v68 = *(v0 + 496);
    v69 = *(v0 + 464);
    v70 = *(v0 + 472);
    v71 = *(v0 + 456);
    v96 = *(v0 + 432);
    v97 = *(v0 + 424);
    v98 = *(v0 + 416);
    v99 = *(v0 + 392);
    v100 = *(v0 + 384);
    v101 = *(v0 + 376);
    v102 = *(v0 + 368);
    v103 = *(v0 + 360);
    v104 = *(v0 + 352);
    v105 = *(v0 + 328);
    v106 = *(v0 + 320);
    v107 = *(v0 + 312);
    v108 = *(v0 + 304);
    v109 = *(v0 + 296);
    v110 = *(v0 + 288);
    v111 = *(v0 + 280);
    v112 = *(v0 + 272);
    v113 = *(v0 + 264);
    v115 = *(v0 + 240);
    v117 = *(v0 + 232);
    v119 = *(v0 + 224);
    v121 = *(v0 + 200);
    v123 = *(v0 + 192);
    v126 = *(v0 + 168);
    v129 = *(v0 + 160);
    v132 = *(v0 + 152);
    v135 = *(v0 + 144);
    v137 = *(v0 + 136);
    v141 = *(v0 + 120);
    v144 = *(v0 + 96);

    v72 = *(v0 + 8);

    return v72();
  }

  else
  {
    v74 = *(v0 + 544);
    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    v75 = *(type metadata accessor for Destination() - 8);
    v76 = *(v75 + 72);
    v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    *(swift_allocObject() + 16) = xmmword_1004C1900;
    v78 = Handle.isPhoneNumber.getter();
    Handle.identifier.getter();
    if (v78)
    {
      Destination.init(phoneNumber:)();
    }

    else
    {
      Destination.init(email:)();
    }

    v79 = *(v0 + 632);
    v80 = *(v0 + 624);
    v81 = *(v0 + 336);
    v82 = *(v0 + 280);
    v83 = *(v0 + 64);
    (*(*(v0 + 448) + 56))(*(v0 + 424), 1, 1, *(v0 + 440));
    Friend.expiry.getter();
    if (v80(v82, 1, v81) != 1)
    {
      v84 = *(v0 + 712);
      v85 = *(v0 + 648);
      v87 = *(v0 + 352);
      v86 = *(v0 + 360);
      v88 = *(v0 + 336);
      (*(v0 + 640))(v86, *(v0 + 280), v88);
      static Date.trustedNow.getter(v87);
      Date.timeIntervalSince(_:)();
      v84(v87, v88);
      v84(v86, v88);
    }

    v145 = *(v0 + 840);
    v89 = *(v0 + 424);
    v90 = *(v0 + 96);
    sub_10004B564(&qword_1005AB930, &qword_1004C5818);
    v91 = type metadata accessor for MessagingCapability();
    v92 = *(v91 - 8);
    v93 = *(v92 + 72);
    v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1004C1900;
    (*(v92 + 104))(v95 + v94, enum case for MessagingCapability.supportsPeopleFindingV1(_:), v91);
    sub_10025EC18(v95);
    swift_setDeallocating();
    (*(v92 + 8))(v95 + v94, v91);
    swift_deallocClassInstance();
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

    return _swift_task_switch(sub_10040AC88, v145, 0);
  }
}

uint64_t sub_10040AC88()
{
  v1 = *(v0[105] + 128);
  v2 = async function pointer to InternetMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[110] = v3;
  *v3 = v0;
  v3[1] = sub_10040AD30;
  v4 = v0[57];
  v5 = v0[15];
  v6 = v0[12];

  return InternetMessaging.send(message:messageOptions:)(v4, v5, v6);
}

uint64_t sub_10040AD30()
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v9 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v4 = sub_10040B038;
  }

  else
  {
    v5 = v2[88];
    v6 = v2[57];
    v7 = v2[55];
    v2[112] = (v2[56] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v6, v7);
    v4 = sub_10040AE6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10040AE6C()
{
  v21 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 656);
  (*(v0 + 856))(*(v0 + 512), *(v0 + 544), *(v0 + 480));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 872);
  v7 = *(v0 + 512);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  if (v5)
  {
    v19 = *(v0 + 872);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = Handle.identifier.getter();
    v14 = v13;
    v15 = v9 + 8;
    v19(v7, v8);
    v16 = sub_10000D01C(v12, v14, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent finding token over IDS for %{private,mask.hash}s", v10, 0x16u);
    sub_100004984(v11);
  }

  else
  {

    v15 = v9 + 8;
    v6(v7, v8);
  }

  *(v0 + 904) = v15;
  v17 = *(v0 + 56);

  return _swift_task_switch(sub_10040B400, v17, 0);
}

uint64_t sub_10040B038()
{
  v70 = v0[109];
  v1 = v0[105];
  v36 = v0[93];
  v2 = v0[75];
  v62 = v0[61];
  v64 = v0[88];
  v66 = v0[60];
  v68 = v0[68];
  v60 = v0[59];
  v54 = v0[89];
  v56 = v0[56];
  v58 = v0[55];
  v3 = v0[51];
  v52 = v0[52];
  v48 = v0[48];
  v50 = v0[50];
  v44 = v0[43];
  v46 = v0[42];
  v4 = v0[23];
  v40 = v0[22];
  v42 = v0[24];
  v38 = v0[18];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];

  (*(v10 + 8))(v8, v9);
  (*(v5 + 8))(v6, v7);
  sub_10041AE64(v38, type metadata accessor for FindingTokenEnvelopeV1);
  (*(v4 + 8))(v42, v40);
  v54(v48, v46);
  (*(v3 + 8))(v52, v50);
  v64(v60, v58);
  v70(v68, v66);
  v71 = v0[111];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[59];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[44];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v37 = v0[37];
  v39 = v0[36];
  v41 = v0[35];
  v43 = v0[34];
  v45 = v0[33];
  v47 = v0[30];
  v49 = v0[29];
  v51 = v0[28];
  v53 = v0[25];
  v55 = v0[24];
  v57 = v0[21];
  v59 = v0[20];
  v61 = v0[19];
  v63 = v0[18];
  v65 = v0[17];
  v67 = v0[15];
  v69 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10040B400()
{
  v1 = *(v0 + 56);
  sub_100438FC0();

  return _swift_task_switch(sub_10040B468, 0, 0);
}

uint64_t sub_10040B468()
{
  v65 = v0[112];
  v67 = v0[109];
  v69 = v0[113];
  v1 = v0[105];
  v35 = v0[93];
  v2 = v0[75];
  v63 = v0[68];
  v59 = v0[88];
  v61 = v0[60];
  v57 = v0[59];
  v53 = v0[89];
  v55 = v0[55];
  v3 = v0[51];
  v51 = v0[52];
  v47 = v0[48];
  v49 = v0[50];
  v43 = v0[43];
  v45 = v0[42];
  v4 = v0[23];
  v39 = v0[22];
  v41 = v0[24];
  v37 = v0[18];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];

  (*(v10 + 8))(v8, v9);
  (*(v5 + 8))(v6, v7);
  sub_10041AE64(v37, type metadata accessor for FindingTokenEnvelopeV1);
  (*(v4 + 8))(v41, v39);
  v53(v47, v45);
  (*(v3 + 8))(v51, v49);
  v59(v57, v55);
  v67(v63, v61);
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[59];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[44];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v36 = v0[38];
  v38 = v0[37];
  v40 = v0[36];
  v42 = v0[35];
  v44 = v0[34];
  v46 = v0[33];
  v48 = v0[30];
  v50 = v0[29];
  v52 = v0[28];
  v54 = v0[25];
  v56 = v0[24];
  v58 = v0[21];
  v60 = v0[20];
  v62 = v0[19];
  v64 = v0[18];
  v66 = v0[17];
  v68 = v0[15];
  v70 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10040B814()
{
  v1 = v0[68];
  v2 = v0[60];
  v3 = v0[61];
  (*(v0[56] + 8))(v0[59], v0[55]);
  (*(v3 + 8))(v1, v2);
  v46 = v0[76];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  v11 = v0[58];
  v12 = v0[59];
  v13 = v0[57];
  v16 = v0[54];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v22 = v0[46];
  v23 = v0[45];
  v24 = v0[44];
  v25 = v0[41];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v32 = v0[34];
  v33 = v0[33];
  v34 = v0[30];
  v35 = v0[29];
  v36 = v0[28];
  v37 = v0[25];
  v38 = v0[24];
  v39 = v0[21];
  v40 = v0[20];
  v41 = v0[19];
  v42 = v0[18];
  v43 = v0[17];
  v44 = v0[15];
  v45 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10040BAB4()
{
  v1 = v0[89];
  v2 = v0[75];
  v57 = v0[68];
  v3 = v0[61];
  v53 = v0[88];
  v55 = v0[60];
  v4 = v0[56];
  v49 = v0[55];
  v51 = v0[59];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[50];
  v8 = v0[48];
  v10 = v0[42];
  v9 = v0[43];

  v1(v8, v10);
  (*(v5 + 8))(v6, v7);
  v53(v51, v49);
  (*(v3 + 8))(v57, v55);
  v58 = v0[94];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[59];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[44];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v40 = v0[33];
  v41 = v0[30];
  v42 = v0[29];
  v43 = v0[28];
  v44 = v0[25];
  v45 = v0[24];
  v46 = v0[21];
  v47 = v0[20];
  v48 = v0[19];
  v50 = v0[18];
  v52 = v0[17];
  v54 = v0[15];
  v56 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10040BDB4()
{
  v1 = v0[93];
  v2 = v0[89];
  v3 = v0[75];
  v58 = v0[68];
  v4 = v0[61];
  v54 = v0[88];
  v56 = v0[60];
  v48 = v0[56];
  v50 = v0[55];
  v52 = v0[59];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[50];
  v8 = v0[48];
  v10 = v0[42];
  v9 = v0[43];

  v2(v8, v10);
  (*(v5 + 8))(v6, v7);
  v54(v52, v50);
  (*(v4 + 8))(v58, v56);
  v59 = v0[97];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[59];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[44];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v40 = v0[33];
  v41 = v0[30];
  v42 = v0[29];
  v43 = v0[28];
  v44 = v0[25];
  v45 = v0[24];
  v46 = v0[21];
  v47 = v0[20];
  v49 = v0[19];
  v51 = v0[18];
  v53 = v0[17];
  v55 = v0[15];
  v57 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10040C0C4()
{
  v1 = v0[93];
  v2 = v0[75];
  v61 = v0[68];
  v3 = v0[61];
  v57 = v0[88];
  v59 = v0[60];
  v49 = v0[89];
  v51 = v0[56];
  v53 = v0[55];
  v55 = v0[59];
  v4 = v0[51];
  v45 = v0[50];
  v47 = v0[52];
  v5 = v0[48];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];

  (*(v9 + 8))(v8, v10);
  v49(v5, v7);
  (*(v4 + 8))(v47, v45);
  v57(v55, v53);
  (*(v3 + 8))(v61, v59);
  v62 = v0[101];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[59];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[44];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v40 = v0[33];
  v41 = v0[30];
  v42 = v0[29];
  v43 = v0[28];
  v44 = v0[25];
  v46 = v0[24];
  v48 = v0[21];
  v50 = v0[20];
  v52 = v0[19];
  v54 = v0[18];
  v56 = v0[17];
  v58 = v0[15];
  v60 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10040C3F8()
{
  v1 = v0[93];
  v2 = v0[75];
  v61 = v0[68];
  v3 = v0[61];
  v57 = v0[88];
  v59 = v0[60];
  v49 = v0[89];
  v51 = v0[56];
  v53 = v0[55];
  v55 = v0[59];
  v4 = v0[51];
  v45 = v0[50];
  v47 = v0[52];
  v5 = v0[48];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];

  (*(v9 + 8))(v8, v10);
  v49(v5, v7);
  (*(v4 + 8))(v47, v45);
  v57(v55, v53);
  (*(v3 + 8))(v61, v59);
  v62 = v0[106];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[59];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[44];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v40 = v0[33];
  v41 = v0[30];
  v42 = v0[29];
  v43 = v0[28];
  v44 = v0[25];
  v46 = v0[24];
  v48 = v0[21];
  v50 = v0[20];
  v52 = v0[19];
  v54 = v0[18];
  v56 = v0[17];
  v58 = v0[15];
  v60 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10040C72C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10040C7EC, 0, 0);
}

uint64_t sub_10040C7EC()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_10040C990, v6, 0);
}

uint64_t sub_10040C990()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10040CA40;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_10040CA40()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_1002C78BC;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_10040CB74;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10040CB74()
{
  v10 = v0;
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10040CCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  v7 = type metadata accessor for CloudKitCoordinator.Database();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v14 = type metadata accessor for FriendSharedSecretsRecord();
  v6[16] = v14;
  v15 = *(v14 - 8);
  v6[17] = v15;
  v16 = *(v15 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v6[27] = v19;
  *v19 = v6;
  v19[1] = sub_10040CF4C;

  return daemon.getter();
}

uint64_t sub_10040CF4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v12 = *v1;
  *(v3 + 224) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 232) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100006964(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_10040D128;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10040D128(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v10 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_10040ECFC;
  }

  else
  {
    v7 = v3[28];
    v8 = v3[7];

    v6 = sub_10040D250;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10040D250()
{
  v1 = v0[30];
  v2 = v0[8];
  v3 = swift_allocObject();
  v0[32] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_10040D350;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1004D89B8, v3, &type metadata for () + 8);
}

uint64_t sub_10040D350()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_10040EE04;
  }

  else
  {
    v6 = *(v2 + 256);
    v7 = *(v2 + 56);

    v5 = sub_10040D478;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10040D494()
{
  v1 = *(v0[30] + 128);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_10040D534;
  v3 = v0[15];
  v4 = v0[2];

  return sub_1001C4430(v3, v4);
}

uint64_t sub_10040D534()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_10040DB08;
  }

  else
  {
    v6 = sub_10040D660;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10040D660()
{
  v52 = v0;
  v1 = v0[16];
  v2 = v0[15];
  if ((*(v0[17] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[20];
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[5];
    v48 = v0[6];
    v49 = v0[30];
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    (*(v5 + 16))(v3, v9, v4);
    sub_100005F04(v8, v3 + v1[6], &qword_1005AEB98, &unk_1004D07C0);
    sub_100005F04(v7, v3 + v1[7], &unk_1005AE5B0, &qword_1004C32F0);
    sub_100005F04(v6, v3 + v1[8], &qword_1005AEB98, &unk_1004D07C0);
    sub_100005F04(v48, v3 + v1[9], &unk_1005AE5B0, &qword_1004C32F0);
    *(v3 + v1[5]) = 1;
    v10 = swift_task_alloc();
    v0[40] = v10;
    *(v10 + 16) = v3;
    v11 = sub_10040E058;
    v12 = v49;
  }

  else
  {
    sub_10041AAB8(v2, v0[23], type metadata accessor for FriendSharedSecretsRecord);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v13 = v0[22];
    v14 = v0[23];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    v18 = v0[2];
    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0C30);
    sub_10041ADFC(v14, v13, type metadata accessor for FriendSharedSecretsRecord);
    (*(v16 + 16))(v15, v18, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[22];
    if (v22)
    {
      v24 = v0[21];
      v25 = v0[16];
      v27 = v0[13];
      v26 = v0[14];
      v50 = v0[12];
      v28 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v28 = 136315394;
      sub_10041ADFC(v23, v24, type metadata accessor for FriendSharedSecretsRecord);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      sub_10041AE64(v23, type metadata accessor for FriendSharedSecretsRecord);
      v32 = sub_10000D01C(v29, v31, &v51);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      sub_100006964(&qword_1005A92C0, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v27 + 8))(v26, v50);
      v36 = sub_10000D01C(v33, v35, &v51);

      *(v28 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v20, v21, "Found existing %s for %{public}s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v38 = v0[13];
      v37 = v0[14];
      v39 = v0[12];

      (*(v38 + 8))(v37, v39);
      sub_10041AE64(v23, type metadata accessor for FriendSharedSecretsRecord);
    }

    v40 = v0[30];
    v41 = v0[23];
    v42 = v0[8];
    v43 = v0[2];
    v44 = swift_task_alloc();
    v0[37] = v44;
    v45 = *(v0 + 3);
    v46 = *(v0 + 5);
    *(v44 + 16) = v41;
    *(v44 + 24) = v45;
    *(v44 + 40) = v43;
    *(v44 + 48) = v46;
    *(v44 + 64) = v42;
    v11 = sub_10040DC10;
    v12 = v40;
  }

  return _swift_task_switch(v11, v12, 0);
}