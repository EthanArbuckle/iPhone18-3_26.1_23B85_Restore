uint64_t sub_1002D1348()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[4];
  v5 = v0[2];
  v6 = SESnapshot.canFit(proposedESimProfilesUsage:)();

  *v5 = v6 & 1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D13E8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1002D14B4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1002D14D8, 0, 0);
}

uint64_t sub_1002D14D8()
{
  *(v0 + 32) = _swiftEmptyArrayStorage;
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 64) = qword_10051B858;

  return _swift_task_switch(sub_1002D157C, v1, 0);
}

uint64_t sub_1002D157C()
{
  v1 = v0[8];
  v0[9] = sub_100362B68(0, 0);
  v0[10] = 0;

  return _swift_task_switch(sub_1002D1610, 0, 0);
}

uint64_t sub_1002D1610()
{
  v39 = v0;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509A58);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38 = v7;
    *v6 = 136315138;
    type metadata accessor for CredentialInternal();
    v8 = Array.description.getter();
    v10 = sub_1002FFA0C(v8, v9, &v38);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Matching Vienna credentials against: %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v11 = *(v0 + 40);
  v12 = swift_task_alloc();
  v36 = *(v0 + 48);
  v12[1] = vextq_s8(v36, v36, 8uLL);
  v12[2].i64[0] = v0 + 32;
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  *(v13 + 24) = xmmword_1004098E0;
  *(v13 + 40) = &off_1004C47E0;
  *(v13 + 48) = sub_1002D903C;
  *(v13 + 56) = v12;
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v14 = qword_100501D80;
  v15 = v36.i64[0];
  if (v14 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((*(v0 + 24) & 1) != 0 || *(v0 + 16) != 0x534F534543555245)
  {
    v19 = *(v0 + 80);
    v18 = sub_1003AF3D8(*(v0 + 40));
    OS_dispatch_queue.sync<A>(execute:)();
    v17 = *(v0 + 48);
    if (v19)
    {
LABEL_12:
      v20 = *(v0 + 72);

      v34 = *(v0 + 32);

      v35 = *(v0 + 8);

      return v35();
    }

    v37 = (v0 + 32);
  }

  else
  {
    v16 = *(v0 + 80);
    sub_10007FC60(*(v0 + 40), 0, 0, 0xF000000000000000, &off_1004C47E0, *(v0 + 48), (v0 + 32));
    v17 = *(v0 + 48);
    if (v16)
    {
      v18 = *(v0 + 48);
      goto LABEL_12;
    }

    v37 = (v0 + 32);
    v18 = *(v0 + 48);
  }

  v21 = *(v0 + 72);
  v22 = *(v0 + 56);
  v23 = *(v0 + 40);

  v24 = swift_task_alloc();
  v24[2] = v22;
  v24[3] = v21;
  v24[4] = v37;
  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  *(v25 + 24) = xmmword_1004098E0;
  *(v25 + 40) = &off_1004C4808;
  *(v25 + 48) = sub_1002D9084;
  *(v25 + 56) = v24;
  swift_bridgeObjectRetain_n();
  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((*(v0 + 24) & 1) != 0 || *(v0 + 16) != 0x534F534543555245)
  {
    v32 = sub_1003AF3D8(*(v0 + 40));
    OS_dispatch_queue.sync<A>(execute:)();
    v33 = *(v0 + 72);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v26 = *(v0 + 72);
    v27 = *(v0 + 40);

    sub_10007EF98(v27, 1, 0, 0xF000000000000000, &off_1004C4808, v26, v37);
    v28 = *(v0 + 72);
    swift_bridgeObjectRelease_n();
  }

  v29 = *(v0 + 32);
  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_1002D1B34()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;
  v4 = *(*(sub_100068FC4(&qword_100509B28, &qword_1004147E8) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for CredentialType();
  v3[37] = v5;
  v6 = *(v5 - 8);
  v3[38] = v6;
  v7 = *(v6 + 64) + 15;
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1002D1CC0, 0, 0);
}

uint64_t sub_1002D1CC0()
{
  v1 = [objc_opt_self() getServer];
  v0[40] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[33];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_1002D2008;
    v4 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100509B30, &qword_1004147F0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1002D3CC4;
    v0[13] = &unk_1004CF488;
    v0[14] = v4;
    [v2 getEndpoints:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_100509A58);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SESEndpointAndKeyXPCServer not initalized?", v8, 2u);
    }

    v9 = v0[35];

    *v9 = 0xD000000000000028;
    v9[1] = 0x800000010046B320;
    v10 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
    v11 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
    v12 = v0[39];
    v13 = v0[36];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1002D2008()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_1002D2C74;
  }

  else
  {
    v3 = sub_1002D2144;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002D2144()
{
  v120 = v0;
  v1 = *(v0 + 304);
  v92 = v0 + 144;
  v93 = *(v0 + 288);
  v2 = sub_1002D8008(*(v0 + 224));

  v3 = 0;
  v4 = v2 + 8;
  v98 = v2;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2[8];
  v8 = (63 - v6) >> 6;
  v94 = enum case for SEStorageCredential.pta(_:);
  v95 = (v1 + 8);
  v100 = v0;
  v96 = v8;
  v97 = v2 + 8;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_121;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = v4[v10];
    ++v3;
    if (v7)
    {
      v3 = v10;
LABEL_11:
      v11 = __clz(__rbit64(v7)) | (v3 << 6);
      v12 = (v98[6] + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = v14 >> 62;
      v110 = v14;
      v111 = HIDWORD(*v12);
      v109 = *v12;
      v102 = v7;
      v104 = *(v98[7] + 8 * v11);
      v99 = v3;
      if ((v14 >> 62) > 1)
      {
        if (v15 == 2)
        {
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          v16 = v17 - v18;
          if (__OFSUB__(v17, v18))
          {
            goto LABEL_135;
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (!v15)
        {
          v16 = BYTE6(v14);
          if (!BYTE6(v14))
          {
            goto LABEL_25;
          }

LABEL_22:

          sub_10019F3C0(0, v16 & ~(v16 >> 63), 0);
          v19 = _swiftEmptyArrayStorage;
          v20 = v13;
          if (v15 == 2)
          {
            v21 = *(v13 + 16);
            goto LABEL_27;
          }

          if (v15 == 1)
          {
            v21 = v13;
LABEL_27:
            if (v16 < 0)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v16 < 0)
            {
              goto LABEL_137;
            }

            v21 = 0;
          }

          v22 = v13 >> 32;
          v23 = BYTE6(v14);
          while (2)
          {
            if (!v16)
            {
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

            if (v15 == 2)
            {
              if (v21 < *(v13 + 16))
              {
                goto LABEL_122;
              }

              if (v21 >= *(v13 + 24))
              {
                goto LABEL_125;
              }

              v28 = __DataStorage._bytes.getter();
              if (!v28)
              {
                goto LABEL_142;
              }

              v25 = v28;
              v29 = __DataStorage._offset.getter();
              v27 = v21 - v29;
              if (__OFSUB__(v21, v29))
              {
                goto LABEL_127;
              }

LABEL_45:
              v30 = *(v25 + v27);
            }

            else
            {
              if (v15 == 1)
              {
                if (v21 < v20 || v21 >= v22)
                {
                  goto LABEL_124;
                }

                v24 = __DataStorage._bytes.getter();
                if (!v24)
                {
                  goto LABEL_141;
                }

                v25 = v24;
                v26 = __DataStorage._offset.getter();
                v27 = v21 - v26;
                if (__OFSUB__(v21, v26))
                {
                  goto LABEL_126;
                }

                goto LABEL_45;
              }

              if (v21 >= v23)
              {
                goto LABEL_123;
              }

              LOWORD(v114) = v13;
              BYTE2(v114) = BYTE2(v13);
              BYTE3(v114) = BYTE3(v13);
              BYTE4(v114) = v111;
              BYTE5(v114) = BYTE5(v13);
              BYTE6(v114) = BYTE6(v13);
              HIBYTE(v114) = HIBYTE(v13);
              v115 = v14;
              v116 = BYTE2(v14);
              v117 = BYTE3(v14);
              v118 = BYTE4(v14);
              v119 = BYTE5(v14);
              v30 = *(&v114 + v21);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1004098F0;
            *(v31 + 56) = &type metadata for UInt8;
            *(v31 + 64) = &protocol witness table for UInt8;
            *(v31 + 32) = v30;
            v32 = String.init(format:_:)();
            v112 = v19;
            v35 = v19[2];
            v34 = v19[3];
            if (v35 >= v34 >> 1)
            {
              v108 = v32;
              v37 = v33;
              sub_10019F3C0((v34 > 1), v35 + 1, 1);
              v33 = v37;
              v32 = v108;
              v19 = v112;
            }

            v19[2] = v35 + 1;
            v36 = &v19[2 * v35];
            v36[4] = v32;
            v36[5] = v33;
            ++v21;
            --v16;
            v13 = v109;
            v14 = v110;
            if (!v16)
            {
              v0 = v100;
LABEL_52:
              v103 = (v102 - 1) & v102;
              v38 = *(v0 + 312);
              v39 = *(v0 + 288);
              v40 = *(v0 + 272);
              *(v0 + 248) = v19;
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              BidirectionalCollection<>.joined(separator:)();

              CredentialType.init(instanceAID:)();
              v41 = *v40;
              static SEStorageCredential.find(in:withType:)();
              v42 = type metadata accessor for SEStorageCredential();
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(v39, 1, v42) == 1)
              {
                v9 = *(v0 + 288);
                (*v95)(*(v0 + 312), *(v0 + 296));
                sub_10006A178(v109, v110);

                sub_100075768(v9, &qword_100509B28, &qword_1004147E8);
              }

              else if ((*(v43 + 88))(*(v0 + 288), v42) == v94)
              {
                v44 = *(v0 + 288);
                (*(v43 + 96))(v44, v42);
                v91 = *(v93 + 8);

                if (v104 >> 62)
                {
                  v45 = _CocoaArrayWrapper.endIndex.getter();
                  if (v45)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                  v45 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v45)
                  {
LABEL_56:
                    sub_10019F3C0(0, v45 & ~(v45 >> 63), 0);
                    if (v45 < 0)
                    {
                      goto LABEL_138;
                    }

                    v46 = 0;
                    v47 = _swiftEmptyArrayStorage;
                    v101 = v45;
                    while (2)
                    {
                      v48 = v46 + 1;
                      if (__OFADD__(v46, 1))
                      {
                        goto LABEL_128;
                      }

                      if ((v104 & 0xC000000000000001) != 0)
                      {
                        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v46 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_129;
                        }

                        v49 = *(v104 + 32 + 8 * v46);
                      }

                      v50 = v49;
                      v51 = [v49 publicKeyIdentifier];
                      v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v54 = v53;

                      v55 = v54 >> 62;
                      v106 = v48;
                      v107 = v47;
                      v105 = v50;
                      if ((v54 >> 62) > 1)
                      {
                        if (v55 != 2)
                        {
                          v57 = _swiftEmptyArrayStorage;
                          goto LABEL_102;
                        }

                        v59 = *(v52 + 16);
                        v58 = *(v52 + 24);
                        v56 = v58 - v59;
                        if (__OFSUB__(v58, v59))
                        {
                          goto LABEL_131;
                        }

                        if (!v56)
                        {
                          goto LABEL_66;
                        }
                      }

                      else if (v55)
                      {
                        v61 = HIDWORD(v52) - v52;
                        if (__OFSUB__(HIDWORD(v52), v52))
                        {
                          goto LABEL_132;
                        }

                        v56 = v61;
                        if (!v61)
                        {
LABEL_66:
                          v57 = _swiftEmptyArrayStorage;
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                        v56 = BYTE6(v54);
                        if (!BYTE6(v54))
                        {
                          goto LABEL_66;
                        }
                      }

                      sub_10019F3C0(0, v56 & ~(v56 >> 63), 0);
                      v57 = _swiftEmptyArrayStorage;
                      if (v55 == 2)
                      {
                        v60 = *(v52 + 16);
                        goto LABEL_78;
                      }

                      if (v55 == 1)
                      {
                        v60 = v52;
LABEL_78:
                        if ((v56 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_82;
                        }

LABEL_130:
                        __break(1u);
LABEL_131:
                        __break(1u);
LABEL_132:
                        __break(1u);
LABEL_133:
                        __break(1u);
LABEL_134:
                        __break(1u);
LABEL_135:
                        __break(1u);
LABEL_136:
                        __break(1u);
LABEL_137:
                        __break(1u);
LABEL_138:
                        __break(1u);
LABEL_139:
                        __break(1u);
LABEL_140:
                        __break(1u);
LABEL_141:
                        __break(1u);
LABEL_142:
                        __break(1u);
                      }

                      if (v56 < 0)
                      {
                        goto LABEL_133;
                      }

                      v60 = 0;
LABEL_82:
                      if (!v56)
                      {
                        __break(1u);
                        goto LABEL_114;
                      }

                      if (v55 == 2)
                      {
                        if (v60 < *(v52 + 16))
                        {
                          goto LABEL_116;
                        }

                        if (v60 >= *(v52 + 24))
                        {
                          goto LABEL_118;
                        }

                        v66 = __DataStorage._bytes.getter();
                        if (!v66)
                        {
                          goto LABEL_140;
                        }

                        v63 = v66;
                        v67 = __DataStorage._offset.getter();
                        v65 = v60 - v67;
                        if (__OFSUB__(v60, v67))
                        {
                          goto LABEL_120;
                        }

LABEL_95:
                        v68 = *(v63 + v65);
                      }

                      else
                      {
                        if (v55 == 1)
                        {
                          if (v60 < v52 || v60 >= v52 >> 32)
                          {
                            goto LABEL_117;
                          }

                          v62 = __DataStorage._bytes.getter();
                          if (!v62)
                          {
                            goto LABEL_139;
                          }

                          v63 = v62;
                          v64 = __DataStorage._offset.getter();
                          v65 = v60 - v64;
                          if (__OFSUB__(v60, v64))
                          {
                            goto LABEL_119;
                          }

                          goto LABEL_95;
                        }

                        if (v60 >= BYTE6(v54))
                        {
                          goto LABEL_115;
                        }

                        v114 = v52;
                        v115 = v54;
                        v116 = BYTE2(v54);
                        v117 = BYTE3(v54);
                        v118 = BYTE4(v54);
                        v119 = BYTE5(v54);
                        v68 = *(&v114 + v60);
                      }

                      sub_100068FC4(&qword_100502440, &unk_10040B240);
                      v69 = swift_allocObject();
                      *(v69 + 16) = xmmword_1004098F0;
                      *(v69 + 56) = &type metadata for UInt8;
                      *(v69 + 64) = &protocol witness table for UInt8;
                      *(v69 + 32) = v68;
                      v70 = String.init(format:_:)();
                      v113 = v57;
                      v73 = v57[2];
                      v72 = v57[3];
                      if (v73 >= v72 >> 1)
                      {
                        v90 = v70;
                        v75 = v71;
                        sub_10019F3C0((v72 > 1), v73 + 1, 1);
                        v71 = v75;
                        v70 = v90;
                        v57 = v113;
                      }

                      v57[2] = v73 + 1;
                      v74 = &v57[2 * v73];
                      v74[4] = v70;
                      v74[5] = v71;
                      ++v60;
                      if (!--v56)
                      {
                        v0 = v100;
LABEL_102:
                        *(v0 + 256) = v57;
                        v76 = BidirectionalCollection<>.joined(separator:)();
                        v78 = v77;

                        sub_10006A178(v52, v54);

                        v47 = v107;
                        v80 = v107[2];
                        v79 = v107[3];
                        if (v80 >= v79 >> 1)
                        {
                          sub_10019F3C0((v79 > 1), v80 + 1, 1);
                          v47 = v107;
                        }

                        v47[2] = v80 + 1;
                        v81 = &v47[2 * v80];
                        v81[4] = v76;
                        v81[5] = v78;
                        v46 = v106;
                        if (v106 == v101)
                        {

                          goto LABEL_109;
                        }

                        continue;
                      }

                      goto LABEL_82;
                    }
                  }
                }

                v47 = _swiftEmptyArrayStorage;
LABEL_109:
                v83 = *(v0 + 312);
                v84 = *(v0 + 296);
                v85 = dispatch thunk of SEStorageCredential.Endpoints.endpointIds.modify();
                sub_1002F903C(v47);
                v85(v92, 0);

                sub_10006A178(v109, v110);
                (*v95)(v83, v84);
              }

              else
              {
                v82 = *(v0 + 288);
                (*v95)(*(v0 + 312), *(v0 + 296));
                sub_10006A178(v109, v110);

                (*(v43 + 8))(v82, v42);
              }

              v8 = v96;
              v4 = v97;
              v3 = v99;
              v7 = v103;
              goto LABEL_6;
            }

            continue;
          }
        }

        if (__OFSUB__(v111, v13))
        {
          goto LABEL_136;
        }

        v16 = v111 - v13;
LABEL_21:
        sub_100069E2C(v13, v14);
        if (v16)
        {
          goto LABEL_22;
        }
      }

LABEL_25:

      v19 = _swiftEmptyArrayStorage;
      goto LABEL_52;
    }
  }

  v86 = *(v0 + 312);
  v87 = *(v0 + 288);

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_1002D2C74()
{
  v32 = v0;
  v1 = v0[41];
  swift_willThrow();
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[41];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[27];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v30);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not get endpoints %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v16 = v0[40];
  v15 = v0[41];
  v17 = v0[35];
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v30 = 0xD000000000000018;
  v31 = 0x800000010046B350;
  swift_getErrorValue();
  v19 = v0[22];
  v18 = v0[23];
  v20 = v0[24];
  v21._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23 = v31;
  *v17 = v30;
  v17[1] = v23;
  v24 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
  v25 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v25 - 8) + 104))(v17, v24, v25);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v26 = v0[39];
  v27 = v0[36];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002D2F8C()
{
  v0 = type metadata accessor for AppletType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v28 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = String.uppercased()();
  countAndFlagsBits = v7._countAndFlagsBits;
  object = v7._object;
  result = static AppletType.allCases.getter();
  v26 = *(result + 16);
  if (v26)
  {
    v9 = 0;
    v20 = (v1 + 8);
    v22 = (v1 + 32);
    v23 = v1 + 16;
    v10 = _swiftEmptyArrayStorage;
    v21 = v0;
    v24 = result;
    v25 = v1;
    while (v9 < *(result + 16))
    {
      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      (*(v1 + 16))(v6, result + v11 + v12 * v9, v0);
      v13 = AppletType.moduleAID.getter();
      v30[0] = countAndFlagsBits;
      v30[1] = object;
      __chkstk_darwin(v13);
      *(&v20 - 2) = v30;
      v14 = sub_1002F784C(sub_10021C254, (&v20 - 4), v13);

      if (v14)
      {
        v15 = *v22;
        (*v22)(v28, v6, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019FAA8(0, v10[2] + 1, 1);
          v10 = v31;
        }

        v18 = v10[2];
        v17 = v10[3];
        if (v18 >= v17 >> 1)
        {
          sub_10019FAA8(v17 > 1, v18 + 1, 1);
          v10 = v31;
        }

        v10[2] = v18 + 1;
        v19 = v10 + v11 + v18 * v12;
        v0 = v21;
        v15(v19, v28, v21);
      }

      else
      {
        (*v20)(v6, v0);
      }

      ++v9;
      v1 = v25;
      result = v24;
      if (v26 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_13:

    return v10;
  }

  return result;
}

void sub_1002D326C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, size_t *a4@<X3>, size_t a5@<X8>)
{
  v44 = a4;
  v46 = a5;
  v47 = a3;
  v45 = type metadata accessor for SEStorageCredential();
  v42 = *(v45 - 8);
  v8 = *(v42 + 64);
  v9 = __chkstk_darwin(v45);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for CredentialType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v21 = sub_100288788(a1, a2);
  v48 = v5;
  v49 = v21;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  BidirectionalCollection<>.joined(separator:)();

  v22 = *(v14 + 16);
  v23 = v47;
  v22(v20, v47, v13);
  v24 = objc_allocWithZone(type metadata accessor for SEPackageDetails());
  v25 = SEPackageDetails.init(packageLoaded:containers:instances:moduleAID:type:)();
  if (CredentialType.isCopernicus.getter())
  {
    type metadata accessor for SEStorageCredential.Endpoints();
    v22(v18, v23, v13);
    v26 = v48;
    v27 = SEStorageCredential.Endpoints.__allocating_init(type:endpointIds:)();
    if (v26)
    {

      return;
    }

    v48 = 0;
    *v12 = v25;
    *(v12 + 1) = v27;
    v28 = &enum case for SEStorageCredential.pta(_:);
  }

  else
  {
    *v12 = v25;
    v28 = &enum case for SEStorageCredential.classicPackage(_:);
  }

  v29 = v42;
  v30 = v45;
  (*(v42 + 104))(v12, *v28, v45);
  v31 = v43;
  (*(v29 + 16))(v43, v12, v30);
  v32 = v44;
  v33 = *v44;
  v34 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_10012FAA8(0, v33[2] + 1, 1, v33);
    *v32 = v33;
  }

  v37 = v33[2];
  v36 = v33[3];
  if (v37 >= v36 >> 1)
  {
    *v32 = sub_10012FAA8(v36 > 1, v37 + 1, 1, v33);
  }

  v38 = *v32;
  *(v38 + 16) = v37 + 1;
  v39 = *(v29 + 32);
  v39(v38 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v37, v31, v30);
  v40 = v46;
  v39(v46, v12, v30);
  (*(v29 + 56))(v40, 0, 1, v30);
}

uint64_t sub_1002D3668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = AppletMemoryInfo.pids.getter();
  v10[0] = a4;
  v10[1] = a5;
  v9[2] = v10;
  LOBYTE(a5) = sub_1002F784C(sub_10012E558, v9, v7);

  return a5 & 1;
}

uint64_t sub_1002D36E8(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  CredentialInternal.identifier.getter();
  LOBYTE(v7) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

void sub_1002D37D8(uint64_t a1@<X2>, size_t *a2@<X3>, size_t a3@<X8>)
{
  v41 = a2;
  v43 = a3;
  v42 = type metadata accessor for SEStorageCredential();
  v39 = *(v42 - 8);
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v42);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v36 - v7);
  v9 = type metadata accessor for CredentialType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = *(v10 + 16);
  v16(&v36 - v14, a1, v9);
  objc_allocWithZone(type metadata accessor for SEPackageDetails());

  v17 = SEPackageDetails.init(packageLoaded:containers:instances:moduleAID:type:)();
  v38 = a1;
  v16(v15, a1, v9);
  v18 = CredentialType.isCopernicus.getter();
  (*(v10 + 8))(v15, v9);
  if (v18)
  {
    type metadata accessor for SEStorageCredential.Endpoints();
    v16(v37, v38, v9);
    v19 = v44;
    v20 = SEStorageCredential.Endpoints.__allocating_init(type:endpointIds:)();
    if (v19)
    {

      return;
    }

    v22 = v17;
    *v8 = v17;
    v8[1] = v20;
    v21 = &enum case for SEStorageCredential.pta(_:);
  }

  else
  {
    *v8 = v17;
    v21 = &enum case for SEStorageCredential.classicPackage(_:);
    v22 = v17;
  }

  v23 = v39;
  v24 = v42;
  (*(v39 + 104))(v8, *v21, v42);
  v25 = *(v23 + 16);
  v26 = v40;
  v44 = v8;
  v25(v40, v8, v24);
  v27 = v41;
  v28 = *v41;
  v29 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_10012FAA8(0, v28[2] + 1, 1, v28);
    *v27 = v28;
  }

  v32 = v28[2];
  v31 = v28[3];
  if (v32 >= v31 >> 1)
  {
    *v27 = sub_10012FAA8(v31 > 1, v32 + 1, 1, v28);
  }

  v33 = *v27;
  *(v33 + 16) = v32 + 1;
  v34 = *(v23 + 32);
  v34(v33 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v32, v26, v24);
  v35 = v43;
  v34(v43, v44, v24);
  (*(v23 + 56))(v35, 0, 1, v24);
}

uint64_t sub_1002D3BC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1002D3CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1002D3DB4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v48 = a3;
  v4 = type metadata accessor for UUID();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for CredentialType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v46 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v45 - v22;
  v24 = *a1;
  v25 = [v24 type];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  sub_1002820E0(v27, v29, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100075768(v15, &qword_100507468, &qword_10040FA20);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    v30 = [v24 uuid];
    if (v30)
    {
      v31 = v30;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v49;
      v32 = v50;
      v34 = v51;
      (*(v50 + 32))(v49, v9, v51);
      v35 = [v24 metadata];
      if (v35)
      {
        v36 = v32;
        v37 = v35;
        v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v36 + 16))(v47, v33, v34);
        (*(v17 + 16))(v46, v23, v16);
        v38 = objc_allocWithZone(type metadata accessor for Reservation());
        v39 = Reservation.init(uuid:type:metadata:)();
        (*(v36 + 8))(v33, v34);
        result = (*(v17 + 8))(v23, v16);
        *v48 = v39;
        return result;
      }

      (*(v32 + 8))(v33, v34);
    }

    (*(v17 + 8))(v23, v16);
  }

  v41 = objc_allocWithZone(NSError);
  v42 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v44 = [v41 initWithDomain:v42 code:23 userInfo:isa];

  result = swift_willThrow();
  *v52 = v44;
  return result;
}

id sub_1002D425C(double a1)
{
  sub_1003F7018(a1);
  result = [objc_allocWithZone(*(v1 + 1360)) init];
  qword_10051B6E0 = result;
  return result;
}

uint64_t sub_1002D4290(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a2;
    sub_100075D50(&v7, &v9);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v4 = *(*(v3 + 64) + 40);
  v5 = v10;
  *v4 = v9;
  v4[1] = v5;
  swift_unknownObjectRetain();
  return swift_continuation_resume();
}

uint64_t sub_1002D4324()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1002D4388()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100509A58);
  sub_1000958E4(v0, qword_100509A58);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002D4404(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = *(a1 + 16);

  v37 = a2;

  if (!v7)
  {
LABEL_25:
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  v8 = 0;
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a1 + 40);
  v34 = a2 & 0xC000000000000001;
  v35 = a2 >> 62;
  v33 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 >= v7)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_31;
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    if (v35)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_25;
      }
    }

    else if (v8 == *(v9 + 16))
    {
      goto LABEL_25;
    }

    if (v34)
    {

      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_28;
      }

      v13 = *(v37 + 8 * v8 + 32);

      v14 = v13;
    }

    v38 = v14;
    v15 = *a4;
    v17 = sub_10008C908(v11, v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_27;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_10031317C();
      if (v21)
      {
        goto LABEL_23;
      }
    }

LABEL_16:
    v25 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v11;
    v26[1] = v12;
    *(v25[7] + 8 * v17) = v38;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_29;
    }

    ++v8;
    v25[2] = v29;
    v7 = *(a1 + 16);
    v10 += 2;
    a3 = 1;
    v9 = v33;
    if (v8 == v7)
    {
      goto LABEL_25;
    }
  }

  sub_10030E04C(v20, a3 & 1);
  v22 = *a4;
  v23 = sub_10008C908(v11, v12);
  if ((v21 & 1) != (v24 & 1))
  {
    goto LABEL_30;
  }

  v17 = v23;
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_23:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_31:
  _StringGuts.grow(_:)(30);
  v31._object = 0x8000000100466020;
  v31._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v31);
  _print_unlocked<A, B>(_:_:)();
  v32._countAndFlagsBits = 39;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1002D4798(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
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

    sub_1002D618C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1002D4828(void *a1, unint64_t a2, size_t *a3)
{
  v175 = a3;
  v176 = a2;
  v4 = sub_100068FC4(&qword_100509B28, &qword_1004147E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v172 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v178 = (&v160 - v9);
  v10 = __chkstk_darwin(v8);
  v174 = &v160 - v11;
  v12 = __chkstk_darwin(v10);
  v177 = (&v160 - v13);
  __chkstk_darwin(v12);
  v15 = &v160 - v14;
  v16 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v160 - v18);
  v20 = type metadata accessor for UUID();
  isa = v20[-1].isa;
  v179 = v20;
  v180 = isa;
  v22 = isa[8].isa;
  v23 = __chkstk_darwin(v20);
  v173 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v160 - v26;
  __chkstk_darwin(v25);
  v29 = &v160 - v28;
  v30 = type metadata accessor for CredentialType();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v160 - v36;
  if ([a1 tag] != 227)
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000958E4(v71, qword_100509A58);
    v179 = a1;
    v180 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v180, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67109120;
      *(v73 + 4) = [v179 tag];

      _os_log_impl(&_mh_execute_header, v180, v72, "Error get status, expect E3 got %u, skip and continue to process next TLV.", v73, 8u);

      v74 = v180;
    }

    else
    {

      v74 = v179;
    }

    return;
  }

  v171 = v15;
  v38 = [a1 childWithTag:79];
  if (!v38)
  {
LABEL_24:
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_1000958E4(v75, qword_100509A58);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Error get status, E3 children not as expected, skip and continue to process next TLV.", v78, 2u);
    }

    return;
  }

  v39 = v38;
  v40 = [v38 value];
  if (!v40)
  {

    goto LABEL_24;
  }

  v164 = v29;
  v169 = v37;
  v168 = v30;
  v167 = v31;
  v41 = v40;
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v182[0] = sub_100288788(v42, v44);
  v45 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v46 = sub_10007A2D0();
  v166 = v45;
  v165 = v46;
  v163 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;
  sub_10006A178(v42, v44);

  v49 = [a1 childWithTag:40816];
  if (!v49)
  {
    goto LABEL_23;
  }

  v50 = v49;
  v170 = v48;
  v51 = [v49 value];
  if (!v51)
  {
    goto LABEL_22;
  }

  v52 = v51;
  v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v56 = [a1 childWithTag:132];
  if (!v56)
  {
    sub_10006A178(v53, v55);
LABEL_23:

    goto LABEL_24;
  }

  v50 = v56;
  v162 = v53;
  v57 = [v56 value];
  if (!v57)
  {
    sub_10006A178(v162, v55);
LABEL_22:

    goto LABEL_23;
  }

  v58 = v57;
  v161 = v55;
  v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v182[0] = sub_100288788(v59, v61);
  v62 = BidirectionalCollection<>.joined(separator:)();
  v64 = v63;
  sub_10006A178(v59, v61);

  v65 = v169;
  v165 = v62;
  v166 = v64;
  CredentialType.init(moduleAID:)();
  v66 = a1;
  v67 = [v66 childWithTag:165];

  sub_1000B7D0C(v67, v182);
  sub_1000B6F08(v19);
  v69 = v179;
  v68 = v180;
  if ((v180[6].isa)(v19, 1, v179) == 1)
  {
    sub_100075768(v19, &unk_10050BE80, &unk_10040B360);
    v70 = v167;
    goto LABEL_35;
  }

  v79 = v164;
  v80 = (v68[4].isa)(v164, v19, v69);
  v70 = &v160;
  __chkstk_darwin(v80);
  *(&v160 - 2) = v79;
  v81 = v176;

  v82 = sub_10033322C(sub_1002D9170, &v160 - 4, v81);
  v83 = v82;
  if (v82 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_31;
    }
  }

  else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    if ((v83 & 0xC000000000000001) != 0)
    {
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_84;
      }

      v84 = *(v83 + 32);
    }

    v85 = v84;

    CredentialInternal.configUUID.getter();
    v86 = UUID.uuidString.getter();
    v88 = v87;

    v89 = v180[1].isa;
    v89(v27, v69);
    v70 = v167;
    v90 = v168;
    (*(v167 + 8))(v65, v168);
    *v35 = v86;
    *(v35 + 1) = v88;
    (v70[13])(v35, enum case for CredentialType.Vienna(_:), v90);
    (v70[4])(v65, v35, v90);
    v89(v164, v69);
LABEL_35:
    v19 = v178;
    v91 = CredentialType.isNightmare.getter();
    v92 = v177;
    if (v91)
    {

      v93 = v170;
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_1000958E4(v94, qword_100509A58);

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v181[0] = v98;
        *v97 = 136315138;
        v99 = sub_1002FFA0C(v163, v93, v181);

        *(v97 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v95, v96, "%s not recognized.", v97, 0xCu);
        sub_1000752F4(v98);

        sub_10006A178(v162, v161);
        sub_1000B8860(v182);
      }

      else
      {

        sub_10006A178(v162, v161);
        sub_1000B8860(v182);
      }

      (v70[1])(v65, v168);
      return;
    }

    v100 = v175;
    v101 = *v175;
    static SEStorageCredential.find(in:withType:)();
    v27 = type metadata accessor for SEStorageCredential();
    v69 = *(v27 - 1);
    v35 = v69[6].isa;
    if ((v35)(v92, 1, v27) == 1)
    {
      v102 = v100;
      v103 = v171;
      sub_1002D37D8(v65, v102, v171);
      v117 = (v35)(v92, 1, v27);
      v104 = v174;
      if (v117 != 1)
      {
        sub_100075768(v92, &qword_100509B28, &qword_1004147E8);
      }
    }

    else
    {
      v103 = v171;
      (v69[4].isa)(v171, v92, v27);
      (v69[7].isa)(v103, 0, 1, v27);
      v104 = v174;
    }

    sub_1002D9100(v103, v104);
    if ((v35)(v104, 1, v27) == 1)
    {

      sub_100075768(v104, &qword_100509B28, &qword_1004147E8);
      goto LABEL_57;
    }

    v105 = SEStorageCredential.packageDetails.getter();
    (v69[1].isa)(v104, v27);
    if (!v105)
    {

LABEL_57:
      if (qword_100501C78 == -1)
      {
LABEL_58:
        v118 = type metadata accessor for Logger();
        sub_1000958E4(v118, qword_100509A58);
        v119 = v171;
        sub_1002D9100(v171, v19);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v181[0] = swift_slowAlloc();
          *v122 = 136315650;
          *(v122 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046B3F0, v181);
          *(v122 + 12) = 2048;
          *(v122 + 14) = 568;
          *(v122 + 22) = 2080;
          v123 = v172;
          sub_1002D9100(v19, v172);
          if ((v35)(v123, 1, v27) == 1)
          {
            sub_100075768(v123, &qword_100509B28, &qword_1004147E8);
            v124 = 0xE300000000000000;
            v125 = 7104878;
          }

          else
          {
            v125 = SEStorageCredential.description.getter();
            v124 = v127;
            (v69[1].isa)(v123, v27);
          }

          sub_100075768(v19, &qword_100509B28, &qword_1004147E8);
          v128 = sub_1002FFA0C(v125, v124, v181);

          *(v122 + 24) = v128;
          _os_log_impl(&_mh_execute_header, v120, v121, "%s:%ld %s", v122, 0x20u);
          swift_arrayDestroy();

          sub_10006A178(v162, v161);
          sub_1000B8860(v182);
          sub_100075768(v171, &qword_100509B28, &qword_1004147E8);
          (*(v167 + 8))(v169, v168);
          return;
        }

        sub_10006A178(v162, v161);
        sub_1000B8860(v182);
        sub_100075768(v19, &qword_100509B28, &qword_1004147E8);
        v126 = v119;
LABEL_74:
        sub_100075768(v126, &qword_100509B28, &qword_1004147E8);
        (v70[1])(v169, v168);
        return;
      }

LABEL_84:
      swift_once();
      goto LABEL_58;
    }

    if ((v182[0] & 0x10000) != 0 || (v182[0] & 4) == 0)
    {
      v129 = v161;
      Data._Representation.subscript.getter();
      v130 = objc_allocWithZone(type metadata accessor for SEApplet());
      SEApplet.init(identifier:moduleIdentifier:lifecycleState:)();
      v131 = SEPackageDetails.instances.modify();
      v133 = v132;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v159 = *((*v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v70 = v167;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v131(v181, 0);
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v134 = type metadata accessor for Logger();
      sub_1000958E4(v134, qword_100509A58);
      v108 = v105;
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v112 = v70;
        v138 = swift_slowAlloc();
        v181[0] = v138;
        *v137 = 136315138;
        v139 = SEPackageDetails.description.getter();
        v141 = sub_1002FFA0C(v139, v140, v181);

        *(v137 + 4) = v141;
        _os_log_impl(&_mh_execute_header, v135, v136, "PackageDetails: %s", v137, 0xCu);
        sub_1000752F4(v138);

        sub_10006A178(v162, v129);
        goto LABEL_70;
      }

      sub_10006A178(v162, v129);
    }

    else
    {

      SEPackageDetails.containers.setter();
      v106 = v161;
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      sub_1000958E4(v107, qword_100509A58);
      v108 = v105;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = v70;
        v113 = swift_slowAlloc();
        v181[0] = v113;
        *v111 = 136315138;
        v114 = SEPackageDetails.description.getter();
        v116 = sub_1002FFA0C(v114, v115, v181);

        *(v111 + 4) = v116;
        _os_log_impl(&_mh_execute_header, v109, v110, "Adding container %s ", v111, 0xCu);
        sub_1000752F4(v113);

        sub_10006A178(v162, v106);

LABEL_70:
        sub_1000B8860(v182);

        sub_100075768(v171, &qword_100509B28, &qword_1004147E8);
        (v112[1])(v169, v168);
        return;
      }

      sub_10006A178(v162, v106);
    }

    sub_1000B8860(v182);

    v126 = v171;
    goto LABEL_74;
  }

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v142 = type metadata accessor for Logger();
  sub_1000958E4(v142, qword_100509A58);
  v143 = v180;
  v144 = v173;
  (v180[2].isa)(v173, v79, v69);
  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.error.getter();
  v147 = os_log_type_enabled(v145, v146);
  v148 = v167;
  if (v147)
  {
    v149 = swift_slowAlloc();
    v178 = v145;
    v150 = v144;
    v151 = v149;
    v177 = swift_slowAlloc();
    v181[0] = v177;
    *v151 = 136315138;
    sub_1002D9BE4(&qword_100504C70, &type metadata accessor for UUID);
    v152 = dispatch thunk of CustomStringConvertible.description.getter();
    v154 = v153;
    v155 = v143[1].isa;
    v156 = v69;
    v155(v150, v69);
    v157 = sub_1002FFA0C(v152, v154, v181);

    *(v151 + 4) = v157;
    v158 = v178;
    _os_log_impl(&_mh_execute_header, v178, v146, "Failed to match config to credential uuid: %s", v151, 0xCu);
    sub_1000752F4(v177);

    sub_10006A178(v162, v161);
    sub_1000B8860(v182);

    (*(v167 + 8))(v169, v168);
  }

  else
  {
    sub_10006A178(v162, v161);
    sub_1000B8860(v182);

    v155 = v143[1].isa;
    v156 = v69;
    v155(v144, v69);
    (*(v148 + 8))(v169, v168);
  }

  v155(v79, v156);
}

uint64_t sub_1002D5ECC(uint64_t a1, uint64_t a2, unint64_t a3, size_t *a4)
{
  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 TLVsWithData:isa];

  if (v8)
  {
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 >= 1)
        {
          for (i = 0; i != v10; ++i)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v12 = *(v9 + 8 * i + 32);
            }

            v13 = v12;
            sub_1002D4828(v12, a3, a4);
          }
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }

  if (qword_100501C78 != -1)
  {
LABEL_17:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_100509A58);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Instances: No TLV in the reponse of get status for applets", v17, 2u);
  }

  v18 = type metadata accessor for SERXPCInternalErrors();
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  *v19 = 0xD00000000000003ALL;
  v19[1] = 0x800000010046B3B0;
  (*(*(v18 - 8) + 104))(v19, enum case for SERXPCInternalErrors.formatError(_:), v18);
  return swift_willThrow();
}

void sub_1002D618C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
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
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100332BA0(a1, a2, v22, a3);
        return;
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
      goto LABEL_15;
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
}

void sub_1002D62FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1002D4798(v9, v6, v4, a2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v8 = &v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1002D618C(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1002D647C(unint64_t a1, uint64_t a2, void **a3)
{
  v194 = a3;
  v167 = a2;
  v4 = type metadata accessor for SEStorageCredential();
  v174 = *(v4 - 8);
  v5 = *(v174 + 64);
  v6 = __chkstk_darwin(v4);
  v173 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v172 = (&v162 - v8);
  v9 = sub_100068FC4(&qword_100509B28, &qword_1004147E8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v170 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v162 - v14;
  __chkstk_darwin(v13);
  v17 = &v162 - v16;
  v212 = type metadata accessor for AppletType();
  v217 = *(v212 - 1);
  v18 = *(v217 + 64);
  __chkstk_darwin(v212);
  v211 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CredentialType();
  v213 = *(v20 - 8);
  v21 = *(v213 + 64);
  v22 = __chkstk_darwin(v20);
  v169 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v162 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v162 - v28;
  __chkstk_darwin(v27);
  v31 = &v162 - v30;
  v32 = &selRef_mockFleetIntermediateCert;
  if ([a1 tag] != 227)
  {
    if (qword_100501C78 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_116;
  }

  v171 = v26;
  v33 = sub_1002EA4AC(1);
  v34 = *(v33 + 2);
  v200 = v4;
  v201 = v20;
  v178 = v34;
  if (!v34)
  {

    v198 = 0;
    goto LABEL_124;
  }

  v35 = 0;
  v198 = 0;
  v177 = v33 + 32;
  v209 = v217 + 16;
  LODWORD(v208) = enum case for CredentialType.wallet(_:);
  v206 = v217 + 8;
  v207 = (v213 + 104);
  v205 = v213 + 32;
  v199 = (v213 + 16);
  v204 = (v174 + 48);
  v197 = (v213 + 8);
  v182 = (v174 + 32);
  v196 = (v174 + 56);
  *(&v36 + 1) = 2;
  v203 = xmmword_1004098F0;
  *&v36 = 136315138;
  v166 = v36;
  v179 = a1;
  v202 = v17;
  v175 = v29;
  v210 = v31;
  v37 = v15;
  v176 = v33;
  while (2)
  {
    if (v35 >= *(v33 + 2))
    {
      goto LABEL_153;
    }

    v38 = &v177[16 * v35];
    v39 = *v38;
    v40 = v38[1];
    v41 = v40 >> 62;
    v193 = v39 >> 8;
    v192 = v39 >> 16;
    v191 = v39 >> 24;
    v195 = HIDWORD(v39);
    v190 = v39 >> 40;
    v189 = HIWORD(v39);
    v188 = HIBYTE(v39);
    v187 = v40 >> 8;
    v186 = v40 >> 16;
    v185 = v40 >> 24;
    v184 = HIDWORD(v40);
    v183 = v40 >> 40;
    v218 = v40;
    v219 = v39;
    v214 = (v40 >> 62);
    v180 = v35;
    if ((v40 >> 62) > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_21;
      }

      v43 = *(v39 + 16);
      v42 = *(v39 + 24);
      v32 = v42 - v43;
      if (__OFSUB__(v42, v43))
      {
        goto LABEL_162;
      }

LABEL_17:
      sub_100069E2C(v39, v40);
      if (!v32)
      {
        goto LABEL_21;
      }

LABEL_18:
      v228 = _swiftEmptyArrayStorage;
      v44 = v32 & ~(v32 >> 63);
      sub_10019F3C0(0, v44, 0);
      v45 = v214;
      a1 = v228;
      if (v214 == 2)
      {
        v46 = *(v39 + 16);
      }

      else
      {
        if (v214 != 1)
        {
          if (v32 < 0)
          {
            goto LABEL_163;
          }

          v46 = 0;
          goto LABEL_55;
        }

        v46 = v39;
      }

      if (v32 < 0)
      {
        goto LABEL_160;
      }

LABEL_55:
      v216 = v39;
      v181 = v39 >> 32;
      v215 = BYTE6(v40);
      while (1)
      {
        if (!v44)
        {
          goto LABEL_144;
        }

        if (v45 == 2)
        {
          if (v46 < *(v39 + 16))
          {
            goto LABEL_146;
          }

          if (v46 >= *(v39 + 24))
          {
            goto LABEL_148;
          }

          v87 = __DataStorage._bytes.getter();
          if (!v87)
          {
            goto LABEL_169;
          }

          v84 = v87;
          v88 = __DataStorage._offset.getter();
          v86 = v46 - v88;
          if (__OFSUB__(v46, v88))
          {
            goto LABEL_150;
          }
        }

        else
        {
          if (v45 != 1)
          {
            if (v46 >= v215)
            {
              goto LABEL_145;
            }

            LOBYTE(v220) = v39;
            BYTE1(v220) = v193;
            BYTE2(v220) = v192;
            BYTE3(v220) = v191;
            BYTE4(v220) = v195;
            BYTE5(v220) = v190;
            BYTE6(v220) = v189;
            HIBYTE(v220) = v188;
            v221 = v40;
            v222 = v187;
            v223 = v186;
            v224 = v185;
            v225 = v184;
            v226 = v183;
            v89 = *(&v220 + v46);
            goto LABEL_72;
          }

          if (v46 < v216 || v46 >= v181)
          {
            goto LABEL_147;
          }

          v83 = __DataStorage._bytes.getter();
          if (!v83)
          {
            goto LABEL_168;
          }

          v84 = v83;
          v85 = __DataStorage._offset.getter();
          v86 = v46 - v85;
          if (__OFSUB__(v46, v85))
          {
            goto LABEL_149;
          }
        }

        v89 = *(v84 + v86);
LABEL_72:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v90 = swift_allocObject();
        *(v90 + 16) = v203;
        *(v90 + 56) = &type metadata for UInt8;
        *(v90 + 64) = &protocol witness table for UInt8;
        *(v90 + 32) = v89;
        v91 = String.init(format:_:)();
        v93 = v92;
        v228 = a1;
        v95 = *(a1 + 16);
        v94 = *(a1 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_10019F3C0((v94 > 1), v95 + 1, 1);
          a1 = v228;
        }

        *(a1 + 16) = v95 + 1;
        v96 = a1 + 16 * v95;
        *(v96 + 32) = v91;
        *(v96 + 40) = v93;
        ++v46;
        --v44;
        --v32;
        v20 = v201;
        v40 = v218;
        v39 = v219;
        v45 = v214;
        if (!v32)
        {
          goto LABEL_22;
        }
      }
    }

    if (v41)
    {
      if (__OFSUB__(v195, v39))
      {
        goto LABEL_161;
      }

      v32 = v195 - v39;
      goto LABEL_17;
    }

    v32 = BYTE6(v40);
    if (BYTE6(v40))
    {
      goto LABEL_18;
    }

LABEL_21:
    a1 = _swiftEmptyArrayStorage;
LABEL_22:
    v220 = a1;
    v47 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    v48 = sub_10007A2D0();
    BidirectionalCollection<>.joined(separator:)();

    a1 = sub_1002D2F8C();

    v49 = *(a1 + 16);
    if (v49)
    {
      v220 = _swiftEmptyArrayStorage;
      sub_10019FAEC(0, v49, 0);
      v32 = 0;
      v50 = v220;
      v214 = (a1 + ((*(v217 + 80) + 32) & ~*(v217 + 80)));
      v215 = v49;
      v216 = a1;
      while (v32 < *(a1 + 16))
      {
        v51 = v37;
        v52 = v217;
        v53 = *(v217 + 16);
        v55 = v211;
        v54 = v212;
        v53(v211, &v214[*(v217 + 72) * v32], v212);
        v56 = v210;
        v53(v210, v55, v54);
        (*v207)(v56, v208, v20);
        (*(v52 + 8))(v55, v54);
        v220 = v50;
        v57 = v20;
        v59 = v50[2];
        v58 = v50[3];
        if (v59 >= v58 >> 1)
        {
          sub_10019FAEC(v58 > 1, v59 + 1, 1);
          v50 = v220;
        }

        ++v32;
        v50[2] = v59 + 1;
        v60 = (*(v213 + 80) + 32) & ~*(v213 + 80);
        v61 = *(v213 + 72);
        (*(v213 + 32))(v50 + v60 + v61 * v59, v56, v57);
        v20 = v57;
        v37 = v51;
        a1 = v216;
        if (v215 == v32)
        {

          v62 = v50[2];
          if (!v62)
          {
LABEL_42:

            sub_10006A178(v219, v218);
            goto LABEL_114;
          }

          v216 = *v199;
          v63 = v50 + v60;
          v32 = v194;
          v64 = v200;
          v65 = v175;
          while (2)
          {
            (v216)(v65, v63, v20);
            v66 = *v32;
            static SEStorageCredential.find(in:withType:)();
            v67 = *v204;
            if ((*v204)(v37, 1, v64) != 1)
            {
              (*v197)(v65, v20);
              v74 = v202;
              (*v182)(v202, v37, v64);
              v73 = 0;
              goto LABEL_36;
            }

            v68 = v37;
            v69 = v65;
            v70 = v202;
            v71 = v32;
            v72 = v198;
            sub_1002D326C(v219, v218, v69, v71, v202);
            if (v72)
            {
              v198 = 0;

              (*v197)(v69, v20);
              v65 = v69;
              if (v67(v68, 1, v200) != 1)
              {
                sub_100075768(v68, &qword_100509B28, &qword_1004147E8);
              }

              v73 = 1;
              v32 = v194;
              v74 = v202;
              v37 = v68;
              v64 = v200;
LABEL_36:
              (*v196)(v74, v73, 1, v64);
              v75 = v74;
LABEL_37:
              sub_100075768(v75, &qword_100509B28, &qword_1004147E8);
            }

            else
            {
              v198 = 0;
              sub_100075768(v70, &qword_100509B28, &qword_1004147E8);
              (*v197)(v69, v20);
              v76 = v67(v68, 1, v200);
              v75 = v68;
              v32 = v194;
              v65 = v69;
              v37 = v68;
              v64 = v200;
              if (v76 != 1)
              {
                goto LABEL_37;
              }
            }

            v63 += v61;
            if (!--v62)
            {
              goto LABEL_42;
            }

            continue;
          }
        }
      }

      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000958E4(v77, qword_100509A58);
    v78 = v219;
    sub_100069E2C(v219, v40);
    v79 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    sub_10006A178(v78, v40);
    v80 = os_log_type_enabled(v79, v32);
    a1 = v179;
    if (!v80)
    {

      sub_10006A178(v78, v40);
      goto LABEL_5;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v228 = v82;
    *v81 = v166;
    v215 = v81;
    v181 = v82;
    if (v214 > 1)
    {
      if (v214 != 2)
      {
        a1 = _swiftEmptyArrayStorage;
        goto LABEL_113;
      }

      v168 = v32;
      v98 = *(v78 + 16);
      v97 = *(v78 + 24);
      v32 = v97 - v98;
      if (__OFSUB__(v97, v98))
      {
        goto LABEL_166;
      }

      if (!v32)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v168 = v32;
      if (v214)
      {
        v102 = v195 - v78;
        if (__OFSUB__(v195, v78))
        {
          goto LABEL_165;
        }

        v32 = v102;
        if (!v102)
        {
LABEL_84:
          a1 = _swiftEmptyArrayStorage;
          goto LABEL_112;
        }
      }

      else
      {
        v32 = BYTE6(v40);
        if (!BYTE6(v40))
        {
          goto LABEL_84;
        }
      }
    }

    v163 = v79;
    v227 = _swiftEmptyArrayStorage;
    v99 = v32 & ~(v32 >> 63);
    sub_10019F3C0(0, v99, 0);
    v100 = v214;
    a1 = v227;
    v216 = v78;
    v165 = v47;
    v164 = v48;
    if (v214 == 2)
    {
      v101 = *(v78 + 16);
LABEL_87:
      if (v32 < 0)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
      }

      goto LABEL_91;
    }

    if (v214 == 1)
    {
      v101 = v216;
      goto LABEL_87;
    }

    if (v32 < 0)
    {
      goto LABEL_167;
    }

    v101 = 0;
LABEL_91:
    v103 = v78 >> 32;
    v104 = BYTE6(v40);
    do
    {
      if (!v99)
      {
        goto LABEL_151;
      }

      if (v100 == 2)
      {
        if (v101 < *(v78 + 16))
        {
          goto LABEL_154;
        }

        if (v101 >= *(v78 + 24))
        {
          goto LABEL_157;
        }

        v109 = __DataStorage._bytes.getter();
        if (!v109)
        {
          goto LABEL_171;
        }

        v106 = v109;
        v110 = __DataStorage._offset.getter();
        v108 = v101 - v110;
        if (__OFSUB__(v101, v110))
        {
          goto LABEL_159;
        }

        goto LABEL_105;
      }

      if (v100 == 1)
      {
        if (v101 < v216 || v101 >= v103)
        {
          goto LABEL_156;
        }

        v105 = __DataStorage._bytes.getter();
        if (!v105)
        {
          goto LABEL_170;
        }

        v106 = v105;
        v107 = __DataStorage._offset.getter();
        v108 = v101 - v107;
        if (__OFSUB__(v101, v107))
        {
          goto LABEL_158;
        }

LABEL_105:
        v111 = *(v106 + v108);
        goto LABEL_108;
      }

      if (v101 >= v104)
      {
        goto LABEL_155;
      }

      LOBYTE(v220) = v78;
      BYTE1(v220) = v193;
      BYTE2(v220) = v192;
      BYTE3(v220) = v191;
      BYTE4(v220) = v195;
      BYTE5(v220) = v190;
      BYTE6(v220) = v189;
      HIBYTE(v220) = v188;
      v221 = v40;
      v222 = v187;
      v223 = v186;
      v224 = v185;
      v225 = v184;
      v226 = v183;
      v111 = *(&v220 + v101);
LABEL_108:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v112 = swift_allocObject();
      *(v112 + 16) = v203;
      *(v112 + 56) = &type metadata for UInt8;
      *(v112 + 64) = &protocol witness table for UInt8;
      *(v112 + 32) = v111;
      v113 = String.init(format:_:)();
      v227 = a1;
      v116 = *(a1 + 16);
      v115 = *(a1 + 24);
      if (v116 >= v115 >> 1)
      {
        v162 = v113;
        v118 = v114;
        sub_10019F3C0((v115 > 1), v116 + 1, 1);
        v114 = v118;
        v113 = v162;
        a1 = v227;
      }

      *(a1 + 16) = v116 + 1;
      v117 = a1 + 16 * v116;
      *(v117 + 32) = v113;
      *(v117 + 40) = v114;
      ++v101;
      --v99;
      --v32;
      v40 = v218;
      v78 = v219;
      v100 = v214;
    }

    while (v32);
    v20 = v201;
    v79 = v163;
LABEL_112:
    v32 = v168;
LABEL_113:
    v220 = a1;
    v119 = BidirectionalCollection<>.joined(separator:)();
    v121 = v120;

    v122 = sub_1002FFA0C(v119, v121, &v228);

    v123 = v215;
    *(v215 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v79, v32, "%s not recognized.", v123, 0xCu);
    sub_1000752F4(v181);

    sub_10006A178(v219, v40);

LABEL_114:
    a1 = v179;
LABEL_5:
    v33 = v176;
    v35 = v180 + 1;
    if (v180 + 1 != v178)
    {
      continue;
    }

    break;
  }

LABEL_124:
  v128 = sub_1002EA4AC(0);
  if (*(v128 + 2))
  {
    v129 = *(v128 + 4);
    v130 = *(v128 + 5);
    sub_100069E2C(v129, v130);

    v208 = v130;
    v209 = v129;
    v131 = v130;
    v132 = v198;
    v220 = sub_100288788(v129, v131);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v133 = BidirectionalCollection<>.joined(separator:)();
    v135 = v134;

    v136 = SERDataSource.credentialSizes.getter();
    v137 = __chkstk_darwin(v136);
    *(&v162 - 2) = v133;
    *(&v162 - 1) = v135;
    sub_1002D62FC(v137, sub_1002D90F8);
    a1 = v138;
    v207 = v132;

    v32 = 0;
    v140 = a1 + 64;
    v139 = *(a1 + 64);
    v217 = a1;
    v141 = 1 << *(a1 + 32);
    v142 = -1;
    if (v141 < 64)
    {
      v142 = ~(-1 << v141);
    }

    v143 = v142 & v139;
    v144 = (v141 + 63) >> 6;
    LODWORD(v216) = enum case for CredentialType.Vienna(_:);
    v215 = v213 + 104;
    v214 = (v213 + 8);
    v218 = (v174 + 32);
    v219 = (v174 + 48);
    v212 = (v174 + 8);
    v213 += 16;
    LODWORD(v211) = enum case for SEStorageCredential.classicPackage(_:);
    v210 = (v174 + 104);
    v145 = v170;
    while (v143)
    {
LABEL_134:
      v148 = __clz(__rbit64(v143));
      v143 &= v143 - 1;
      v149 = (*(v217 + 48) + ((v32 << 10) | (16 * v148)));
      v150 = v149[1];
      v151 = v171;
      *v171 = *v149;
      v151[1] = v150;
      v152 = v201;
      (*v215)(v151, v216, v201);
      v153 = *v194;
      v154 = v151;

      static SEStorageCredential.find(in:withType:)();
      isa = v219->isa;
      a1 = v200;
      if ((v219->isa)(v145, 1, v200) == 1)
      {
        (*v213)(v169, v154, v152);
        v156 = objc_allocWithZone(type metadata accessor for SEPackageDetails());
        v157 = SEPackageDetails.init(packageLoaded:containers:instances:moduleAID:type:)();
        v158 = v172;
        *v172 = v157;
        (*v210)(v158, v211, a1);
        v159 = v218->isa;
        (v218->isa)(v173, v158, a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_10012FAA8(0, v153[2] + 1, 1, v153);
        }

        a1 = v153[2];
        v160 = v153[3];
        if (a1 >= v160 >> 1)
        {
          v153 = sub_10012FAA8(v160 > 1, a1 + 1, 1, v153);
        }

        (*v214)(v171, v201);
        v153[2] = a1 + 1;
        v161 = v200;
        v159((v153 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * a1), v173, v200);
        *v194 = v153;
        v145 = v170;
        if (isa(v170, 1, v161) != 1)
        {
          sub_100075768(v145, &qword_100509B28, &qword_1004147E8);
        }
      }

      else
      {
        (*v214)(v154, v152);
        v146 = v172;
        (v218->isa)(v172, v145, a1);
        (*v212)(v146, a1);
      }
    }

    while (1)
    {
      v147 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v147 >= v144)
      {
        sub_10006A178(v209, v208);

        return;
      }

      v143 = *(v140 + 8 * v147);
      ++v32;
      if (v143)
      {
        v32 = v147;
        goto LABEL_134;
      }
    }

LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
LABEL_116:
    v124 = type metadata accessor for Logger();
    sub_1000958E4(v124, qword_100509A58);
    v218 = a1;
    v219 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v219, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 67109120;
      *(v126 + 4) = [v218 *(v32 + 3920)];

      _os_log_impl(&_mh_execute_header, v219, v125, "Error get status, expect E3 got %u, skip and continue to process next TLV.", v126, 8u);

      v127 = v219;
    }

    else
    {

      v127 = v218;
    }
  }

  else
  {
  }
}

uint64_t sub_1002D7C5C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 TLVsWithData:isa];

  if (v8)
  {
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 >= 1)
        {
          for (i = 0; i != v10; ++i)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v12 = *(v9 + 8 * i + 32);
            }

            v13 = v12;
            sub_1002D647C(v12, a3, a4);
          }
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }

  if (qword_100501C78 != -1)
  {
LABEL_17:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_100509A58);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Packages: No TLV in the reponse of get status for applets", v17, 2u);
  }

  v18 = type metadata accessor for SERXPCInternalErrors();
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  *v19 = 0xD000000000000039;
  v19[1] = 0x800000010046B370;
  (*(*(v18 - 8) + 104))(v19, enum case for SERXPCInternalErrors.formatError(_:), v18);
  return swift_willThrow();
}

void *sub_1002D7F1C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_100068FC4(&qword_100509B38, &qword_1004147F8);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = _swiftEmptyDictionarySingleton;
  }

  v8 = v6;

  sub_1002D4404(a1, a2, 1, &v8);
  return v8;
}

void *sub_1002D8008(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v27 = v6;
    v7 = v5;
    v8 = [v5 appletIdentifier];
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v13 = sub_10008C8DC(v9, v11);
    v14 = _swiftEmptyDictionarySingleton[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_22;
    }

    v17 = v12;
    if (_swiftEmptyDictionarySingleton[3] < v16)
    {
      break;
    }

LABEL_15:
    if (v17)
    {
      sub_10006A178(v9, v11);
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v13);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_100068FC4(&qword_100504060, &qword_10040B370);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100409E40;
      *(v20 + 32) = v7;
      _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (_swiftEmptyDictionarySingleton[6] + 16 * v13);
      *v21 = v9;
      v21[1] = v11;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = v20;
      v22 = _swiftEmptyDictionarySingleton[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v24;
    }

    if (v27 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_10030D5F8(v16, 1);
  v18 = sub_10008C8DC(v9, v11);
  if ((v17 & 1) == (v19 & 1))
  {
    v13 = v18;
    goto LABEL_15;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002D82BC()
{
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_1000958E4(v1, qword_100509A58);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling into CT to get profile size information", v4, 2u);
  }

  v5 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:0];
  v0[20] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002D84AC;
  v6 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100509B20, &qword_1004147E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002D3BC4;
  v0[13] = &unk_1004CF460;
  v0[14] = v6;
  [v5 getProfileSizeInformationWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002D84AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1002D8804;
  }

  else
  {
    v3 = sub_1002D85BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002D85BC()
{
  v20 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = *(v3 + 16);

    *(v6 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v4, v5, "Received profile size information : %ld", v6, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v8 = v0[19];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v13 = Dictionary.description.getter();
    v15 = sub_1002FFA0C(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s returned for getProfileSizeInfo", v11, 0xCu);
    sub_1000752F4(v12);
  }

  v16 = sub_1002BC604(v3);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_1002D8804()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetching eSIM information failed: %@", v8, 0xCu);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

void *sub_1002D8968(uint64_t *a1)
{
  v2 = type metadata accessor for CredentialType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for CredentialType.muirfield(_:), v2);
  v7 = CredentialType.instanceAID.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = sub_10013044C(v7, v9);
  v12 = v11;
  sub_10007A334(v10, v11, &off_1004C4830, a1);
  sub_10006A2D0(v10, v12);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_100509A58);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Calling into Muirfield to get profile size information", v16, 2u);
  }

  v17 = objc_opt_self();
  v57 = 0;
  v18 = [v17 getSPRInspectorAndReturnError:&v57];
  v19 = v57;
  if (v18)
  {
    v20 = v18;
    v57 = 0;
    v21 = v19;
    v22 = sub_100053D3C(a1);
    if (!v22)
    {
      v47 = v57;

      goto LABEL_13;
    }

    v23 = v22;
    v24 = v57;
    v26 = sub_1003AF3C4(a1, v25);
    v27 = [v26 seid];

    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v57 = sub_100288788(v28, v30);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    BidirectionalCollection<>.joined(separator:)();
    sub_10006A178(v28, v30);

    v31 = String._bridgeToObjectiveC()();

    v33 = sub_1003AF3C4(a1, v32);
    v34 = [v33 isProd];

    v57 = 0;
    v35 = [v20 getMemoryInfoWithSession:v23 seid:v31 isProduction:v34 error:&v57];

    v19 = v57;
    if (v35)
    {
      v36 = v57;
      [v35 nvm];
      [v35 cor];
      [v35 cod];
      [v35 idx];
      v37 = objc_allocWithZone(type metadata accessor for MemoryUsage());
      v38 = MemoryUsage.init(pHeap:cor:cod:usedIndices:)();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v57 = v42;
        *v41 = 136315138;
        if (v38)
        {
          v43 = [v38 description];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v46 = 0xE500000000000000;
          v44 = 0x3F3F6C696ELL;
        }

        v55 = sub_1002FFA0C(v44, v46, &v57);

        *(v41 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v39, v40, "Received Muirfield size information %s", v41, 0xCu);
        sub_1000752F4(v42);
      }

      return v38;
    }
  }

  v47 = v19;
LABEL_13:
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1000958E4(v48, qword_100509A58);
  swift_errorRetain();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    swift_errorRetain();
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v53;
    *v52 = v53;
    _os_log_impl(&_mh_execute_header, v49, v50, "Muirfield get credential size failed: %@", v51, 0xCu);
    sub_100075768(v52, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002D9100(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100509B28, &qword_1004147E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D9190()
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for SERXPCServer();
  inited = swift_initStaticObject();
  v3 = inited[3];
  v4 = inited[4];

  static XPCListener.InitializationOptions.none.getter();
  v5 = type metadata accessor for XPCListener();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  v9 = inited[2];
  inited[2] = v8;
}

uint64_t sub_1002D92A0()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002D9328()
{
  v0 = *(*(type metadata accessor for XPCReceivedMessage() - 8) + 80);

  return sub_1002BDDE4();
}

uint64_t sub_1002D9398()
{
  v1 = type metadata accessor for SERXPCRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1002D948C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SERXPCRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000C288C;

  return sub_1002BE5A8(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1002D9630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_1002CBD1C(a1, a2);
}

uint64_t sub_1002D96DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000C288C;

  return sub_1002CEBDC(a1, a2);
}

uint64_t sub_1002D978C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002D97CC()
{
  v1 = sub_100068FC4(&qword_100509B80, &qword_1004148E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002D9860(uint64_t a1)
{
  v2 = *(*(sub_100068FC4(&qword_100509B80, &qword_1004148E8) - 8) + 80);

  return sub_1002CFDD8(a1);
}

uint64_t sub_1002D98DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D98F4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10012E598;

  return sub_1002D00D8(a1, a2, v7);
}

uint64_t sub_1002D99A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002D046C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002D9A6C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10012E598;

  return sub_1002D0A94(a1, a2, v7, v6);
}

uint64_t sub_1002D9B20(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002D0F98(a1, a2, v6, v7, v8);
}

uint64_t sub_1002D9BE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002D9C74(int a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, NSObject *a6, unint64_t *a7, int a8)
{
  v212 = a8;
  v207 = a6;
  v208 = a7;
  v213 = a4;
  v214 = a5;
  v215 = a3;
  LODWORD(v216) = a1;
  v196 = type metadata accessor for Logger();
  v195 = *(v196 - 8);
  v9 = *(v195 + 64);
  v10 = __chkstk_darwin(v196);
  v194 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v193 = &v193 - v12;
  v13 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v204 = *(v13 - 8);
  v14 = *(v204 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v203 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v210 = &v193 - v17;
  v18 = __chkstk_darwin(v16);
  v199 = &v193 - v19;
  __chkstk_darwin(v18);
  v202 = &v193 - v20;
  v211 = type metadata accessor for UUID();
  v209 = *(v211 - 8);
  v21 = *(v209 + 64);
  v22 = __chkstk_darwin(v211);
  v197 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v198 = &v193 - v25;
  v26 = __chkstk_darwin(v24);
  v200 = &v193 - v27;
  v28 = __chkstk_darwin(v26);
  v201 = &v193 - v29;
  __chkstk_darwin(v28);
  v205 = &v193 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v33 = v32[8];
  __chkstk_darwin(v31);
  v35 = &v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v36 = qword_10051B7F0;
  *v35 = qword_10051B7F0;
  v37 = enum case for DispatchPredicate.onQueue(_:);
  v38 = v32[13];
  v38(v35, enum case for DispatchPredicate.onQueue(_:), v31);
  v206 = v36;
  v39 = _dispatchPreconditionTest(_:)();
  v42 = v32[1];
  v41 = (v32 + 1);
  v40 = v42;
  (v42)(v35, v31);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_80:
    swift_once();
    goto LABEL_10;
  }

  if (v217[OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning] != 1)
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Not running", v62, 2u);
LABEL_18:
    }

LABEL_19:

    return;
  }

  if (v216 != 11)
  {
    v63 = a2;
    v64 = a2;
    v65 = v215;
    sub_100069E2C(v63, v215);
    v60 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    sub_10006A178(v64, v65);
    if (os_log_type_enabled(v60, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v218 = v68;
      *v67 = 16777730;
      *(v67 + 4) = v216;
      *(v67 + 5) = 2080;
      v221 = sub_100288788(v64, v65);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v69 = BidirectionalCollection<>.joined(separator:)();
      v71 = v70;

      v72 = sub_1002FFA0C(v69, v71, &v218);

      *(v67 + 7) = v72;
      _os_log_impl(&_mh_execute_header, v60, v66, "Ignoring unknown message with identifier %hhu payload %s", v67, 0xFu);
      sub_1000752F4(v68);

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v216 = v40;
  v43 = a2;
  v44 = a2;
  v45 = v215;
  v46 = sub_1002DC834(v43, v215);
  if ((v46 & 0x10000) != 0)
  {
    sub_100069E2C(v44, v45);
    v205 = v44;
    v73 = sub_1000939AC(v44, v45, 1, 0, 0);
    switch(v73)
    {
      case 164:
        LOBYTE(v35) = 1;
        break;
      case 113:
        v83 = objc_opt_self();
        v31 = v213;
        UUID.uuidString.getter();
        v84 = String._bridgeToObjectiveC()();

        sub_1003ADCE0(v83, 1u, v84);

        LOBYTE(v35) = 0;
        goto LABEL_34;
      case 60:
        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v210 = qword_10051B5A0;
        v74 = sub_1002B3B94(&off_1004C3818);
        v217 = v75;
        v76 = v206;
        *v35 = v206;
        v38(v35, v37, v31);
        v77 = v76;
        v78 = _dispatchPreconditionTest(_:)();
        v216(v35, v31);
        if ((v78 & 1) == 0)
        {
          __break(1u);
          goto LABEL_84;
        }

        v31 = v213;
        v79 = v214;
        v80 = v211;
        v81 = v209;
        if (v214)
        {
          v82 = v199;
          sub_1000756F8(v207, v199);
          if ((*(v81 + 48))(v82, 1, v80) == 1)
          {
            sub_100075768(v82, &unk_10050BE80, &unk_10040B360);
          }

          else
          {
            v143 = v198;
            (*(v81 + 32))(v198, v82, v80);
            v144 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
            swift_beginAccess();
            v145 = v201;
            v216 = *(v81 + 16);
            (v216)(v201, v31 + v144, v80);
            v146 = static UUID.== infix(_:_:)();
            v148 = *(v81 + 8);
            v147 = v81 + 8;
            v149 = v145;
            v150 = v148;
            v148(v149, v80);
            if ((v146 & 1) == 0)
            {
              v214 = v150;
              v209 = v147;
              v157 = v197;
              (v216)(v197, v143, v80);

              v158 = Logger.logObject.getter();
              v159 = static os_log_type_t.error.getter();

              v212 = v159;
              if (os_log_type_enabled(v158, v159))
              {
                v160 = swift_slowAlloc();
                v208 = swift_slowAlloc();
                v221 = v208;
                *v160 = 136315394;
                v206 = sub_10007554C();
                v207 = v158;
                v161 = dispatch thunk of CustomStringConvertible.description.getter();
                v163 = v162;
                (v214)(v157, v80);
                v164 = sub_1002FFA0C(v161, v163, &v221);

                v204 = v160;
                *(v160 + 4) = v164;
                *(v160 + 12) = 2080;
                v165 = v201;
                (v216)(v201, v213 + v144, v80);
                v166 = v198;
                v167 = dispatch thunk of CustomStringConvertible.description.getter();
                v169 = v168;
                v170 = v165;
                v171 = v214;
                (v214)(v170, v80);
                v172 = sub_1002FFA0C(v167, v169, &v221);
                v31 = v213;

                v173 = v204;
                *(v204 + 14) = v172;
                v174 = v207;
                _os_log_impl(&_mh_execute_header, v207, v212, "Connection identifier has changed %s %s", v173, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
                v166 = v143;

                v175 = v157;
                v171 = v214;
                (v214)(v175, v80);
              }

              v171(v166, v80);
              v38 = v217;
              goto LABEL_75;
            }

            v150(v143, v80);
          }

          v79 = v214;
        }

        if ((v79 & 2) == 0 || (v212 & 1) != 0 || (v151 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber, *(v31 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v208))
        {
          v38 = v217;
          v35 = sub_100239160(1, 12, v74, v217);
          v41 = v152;
          if (qword_100501960 == -1)
          {
LABEL_67:
            sub_1000E71A0(v35, v41, v31);
            sub_10006A178(v35, v41);
            goto LABEL_75;
          }

LABEL_84:
          swift_once();
          goto LABEL_67;
        }

        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.error.getter();
        v155 = os_log_type_enabled(v153, v154);
        v38 = v217;
        if (v155)
        {
          v156 = swift_slowAlloc();
          *v156 = 134218240;
          *(v156 + 4) = v208;
          *(v156 + 12) = 2048;
          *(v156 + 14) = *(v31 + v151);

          _os_log_impl(&_mh_execute_header, v153, v154, "Sequence number has changed %ld %ld", v156, 0x16u);
        }

        else
        {
        }

LABEL_75:
        sub_10006A178(v74, v38);
        v176 = objc_opt_self();
        UUID.uuidString.getter();
        v177 = String._bridgeToObjectiveC()();

        v178 = sub_1003AE1A8(v176, v177);

        if (v178 == 4)
        {
          v179 = v205;
          v180 = v215;
          sub_100069E2C(v205, v215);
          v181 = sub_1000939AC(v179, v180, 2, 0, 0);
          sub_100069E2C(v179, v180);
          v182 = sub_1000939AC(v179, v180, 3, 0, 0);
          if (v181 == 1 && (v182 & 0xFE) == 0x90)
          {
            sub_1002370C8(v31);
          }
        }

        return;
      default:
        LOBYTE(v35) = 0;
        break;
    }

    v31 = v213;
LABEL_34:
    LOBYTE(v37) = v212;
    v40 = v217;
    if (qword_100501A30 == -1)
    {
LABEL_35:
      v85 = *&v40[OBJC_IVAR____TtC10seserviced8AlishaSE_seTimeoutInSec];
      v216 = qword_10051B358;
      v86 = *(v31 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      v206 = v85;
      if (v86 >> 60 == 15)
      {
        v220 = 0;
        v218 = 0u;
        v219 = 0u;
      }

      else
      {
        v87 = *(v31 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
        v88 = type metadata accessor for AlishaSE.HandoffToken();
        v89 = swift_allocObject();
        *(v89 + 16) = v87;
        *(v89 + 24) = v86;
        *(&v219 + 1) = v88;
        v220 = &off_1004CF620;
        *&v218 = v89;
        sub_100069E2C(v87, v86);
      }

      v90 = v204;
      v91 = v207;
      sub_1000756F8(v207, v210);
      v92 = v203;
      sub_1000756F8(v91, v203);
      v93 = (*(v90 + 80) + 64) & ~*(v90 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = v35;
      v96 = v214;
      v95 = v215;
      *(v94 + 24) = v205;
      *(v94 + 32) = v95;
      *(v94 + 40) = v217;
      *(v94 + 48) = v31;
      *(v94 + 56) = v96;
      sub_100075390(v92, v94 + v93);
      v97 = v94 + ((v14 + v93 + 7) & 0xFFFFFFFFFFFFFFF8);
      v98 = v208;
      *v97 = v208;
      *(v97 + 8) = v37 & 1;
      v99 = type metadata accessor for SERequest();
      v100 = *(v99 + 48);
      v101 = *(v99 + 52);
      v102 = swift_allocObject();
      if (v96)
      {
        v103 = (*(v209 + 48))(v210, 1, v211);
        v96 = v214;
        if (v103 == 1)
        {
          swift_retain_n();
          sub_100069E2C(v205, v95);
          v187 = qword_100501D88;

          if (v187 != -1)
          {
            swift_once();
          }

          (*(v195 + 16))(v193, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v196);
          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            *v190 = 0;
            _os_log_impl(&_mh_execute_header, v188, v189, "Requesting connection identifier check with no connection identifier", v190, 2u);
          }

          else
          {
          }

          v194 = v193;
          goto LABEL_95;
        }
      }

      if (v96 & 2) != 0 && (v37)
      {
        swift_retain_n();
        sub_100069E2C(v205, v95);
        v183 = qword_100501D88;

        if (v183 != -1)
        {
          goto LABEL_96;
        }

        while (1)
        {
          (*(v195 + 16))(v194, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v196);
          v184 = Logger.logObject.getter();
          v185 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            *v186 = 0;
            _os_log_impl(&_mh_execute_header, v184, v185, "Requesting sequence number check with no sequence number", v186, 2u);
          }

          else
          {
          }

LABEL_95:

          (*(v195 + 8))(v194, v196);
          sub_100075768(&v218, &qword_100502438, &qword_100409990);
          v191 = *(*v102 + 48);
          v192 = *(*v102 + 52);
          swift_deallocPartialClassInstance();
          sub_100075768(v210, &unk_10050BE80, &unk_10040B360);
          __break(1u);
          swift_unexpectedError();
          __break(1u);
LABEL_96:
          swift_once();
        }
      }

      v104 = (v102 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
      *v104 = 0xD000000000000019;
      v104[1] = 0x800000010046BA20;
      *(v102 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = v35;
      *(v102 + 16) = v206;
      *(v102 + 24) = 0;
      v105 = v102 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      *(v105 + 32) = v220;
      v106 = v219;
      *v105 = v218;
      *(v105 + 16) = v106;
      *(v102 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
      *(v102 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v31;
      v107 = v102 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
      *v107 = v96;
      *(v107 + 8) = 0;
      v108 = v210;
      sub_1000756F8(v210, v102 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
      v109 = v102 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
      *v109 = v98;
      *(v109 + 8) = v37 & 1;
      *(v102 + 32) = sub_1002DFFD8;
      *(v102 + 40) = v94;
      swift_retain_n();
      sub_100069E2C(v205, v95);

      sub_100075768(v108, &unk_10050BE80, &unk_10040B360);
      sub_1001939C8(1, v102);

      return;
    }

LABEL_82:
    swift_once();
    goto LABEL_35;
  }

  LODWORD(a2) = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Blocking invalid command", v49, 2u);
  }

  v40 = v216;
  if (qword_100501B60 != -1)
  {
    goto LABEL_80;
  }

LABEL_10:
  v14 = qword_10051B5A0;
  LOWORD(v218) = bswap32(a2) >> 16;
  v215 = sub_1002B1854(&v218, &v218 + 2);
  v217 = v50;
  v51 = v206;
  *v35 = v206;
  v38(v35, v37, v31);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  (v40)(v35, v31);
  if ((v51 & 1) == 0)
  {
    __break(1u);
    goto LABEL_82;
  }

  v54 = v213;
  v53 = v214;
  v55 = v211;
  v56 = v209;
  v57 = v212;
  v58 = v205;
  if ((v214 & 1) == 0)
  {
LABEL_46:
    if ((v53 & 2) == 0 || (v57 & 1) != 0 || (v116 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber, *(v54 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v208))
    {
      v117 = v215;
      v118 = v217;
      v119 = sub_100239160(1, 12, v215, v217);
      v121 = v120;
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E71A0(v119, v121, v54);
      sub_10006A178(v119, v121);
      sub_10006A178(v117, v118);
    }

    else
    {

      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 134218240;
        *(v124 + 4) = v208;
        *(v124 + 12) = 2048;
        *(v124 + 14) = *(v54 + v116);

        _os_log_impl(&_mh_execute_header, v122, v123, "Sequence number has changed %ld %ld", v124, 0x16u);
      }

      else
      {
      }

      sub_10006A178(v215, v217);
    }

    return;
  }

  v59 = v202;
  sub_1000756F8(v207, v202);
  if ((*(v56 + 48))(v59, 1, v55) == 1)
  {
    sub_100075768(v59, &unk_10050BE80, &unk_10040B360);
LABEL_45:
    v53 = v214;
    goto LABEL_46;
  }

  (*(v56 + 32))(v58, v59, v55);
  v110 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v111 = *(v56 + 16);
  v112 = v201;
  v111(v201, v54 + v110, v55);
  v113 = static UUID.== infix(_:_:)();
  v114 = v112;
  v115 = *(v56 + 8);
  v115(v114, v55);
  if (v113)
  {
    v115(v58, v55);
    v57 = v212;
    goto LABEL_45;
  }

  v216 = v115;
  v125 = v200;
  v111(v200, v58, v55);

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v221 = v214;
    *v128 = 136315394;
    sub_10007554C();
    v212 = v127;
    v129 = dispatch thunk of CustomStringConvertible.description.getter();
    v131 = v130;
    v132 = v125;
    v133 = v216;
    v216(v132, v211);
    v134 = sub_1002FFA0C(v129, v131, &v221);

    *(v128 + 4) = v134;
    *(v128 + 12) = 2080;
    v135 = v201;
    v111(v201, v213 + v110, v211);
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = v137;
    v133(v135, v211);
    v139 = sub_1002FFA0C(v136, v138, &v221);

    *(v128 + 14) = v139;
    _os_log_impl(&_mh_execute_header, v126, v212, "Connection identifier has changed %s %s", v128, 0x16u);
    swift_arrayDestroy();

    v55 = v211;
  }

  else
  {

    v140 = v125;
    v133 = v216;
    v216(v140, v55);
  }

  v141 = v217;
  v142 = v215;
  v133(v205, v55);
  sub_10006A178(v142, v141);
}

void sub_1002DB638()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning);
    v11 = Logger.logObject.getter();
    if (v10)
    {
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "AlishaSE is already running", v13, 2u);
      }
    }

    else
    {
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, v14, "Starting AlishaSE", v15, 2u);
      }

      *(v1 + v9) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DB870()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning);
    v11 = Logger.logObject.getter();
    if (v10 == 1)
    {
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Stopping AlishaSE", v13, 2u);
      }

      *(v1 + v9) = 0;
    }

    else
    {
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, v14, "AlishaSE is not running", v15, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DBAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a7;
  v64 = a8;
  v65 = a3;
  v62 = a1;
  v13 = type metadata accessor for Logger();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  v15 = __chkstk_darwin(v13);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v58 - v17;
  v18 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v27 = qword_10051B7F0;
  *v26 = qword_10051B7F0;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (*(v8 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) != 1)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Not running", v33, 2u);
    }

    return;
  }

  if (qword_100501A30 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v29 = v65;
  v30 = *(v65 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v30 >> 60 == 15)
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
  }

  else
  {
    v34 = *(v65 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v35 = type metadata accessor for AlishaSE.HandoffToken();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v30;
    *(&v67 + 1) = v35;
    v68 = &off_1004CF620;
    *&v66 = v36;
    sub_100069E2C(v34, v30);
  }

  sub_1000756F8(a6, v21);
  v37 = type metadata accessor for SERequest();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  if ((a5 & 1) == 0)
  {
    if (a4)
    {
      v41 = type metadata accessor for UUID();
      if ((*(*(v41 - 8) + 48))(v21, 1, v41) == 1)
      {
        v52 = qword_100501D88;

        if (v52 != -1)
        {
          swift_once();
        }

        (*(v60 + 16))(v58, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v61);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Requesting connection identifier check with no connection identifier", v55, 2u);
        }

        else
        {
        }

        v59 = v58;
        goto LABEL_29;
      }
    }

    if ((a4 & 2) != 0)
    {
      v48 = qword_100501D88;

      if (v48 != -1)
      {
        goto LABEL_30;
      }

      while (1)
      {
        (*(v60 + 16))(v59, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v61);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Requesting sequence number check with no sequence number", v51, 2u);
        }

        else
        {
        }

LABEL_29:
        (*(v60 + 8))(v59, v61);
        sub_100075768(&v66, &qword_100502438, &qword_100409990);
        v56 = *(*v40 + 48);
        v57 = *(*v40 + 52);
        swift_deallocPartialClassInstance();
        sub_100075768(v21, &unk_10050BE80, &unk_10040B360);
        __break(1u);
LABEL_30:
        swift_once();
      }
    }
  }

  v42 = (v40 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
  *v42 = v62;
  v42[1] = a2;
  *(v40 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
  *(v40 + 16) = 0;
  *(v40 + 24) = 1;
  v43 = v40 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
  *(v43 + 32) = v68;
  v44 = v67;
  *v43 = v66;
  *(v43 + 16) = v44;
  *(v40 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
  *(v40 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v29;
  v45 = v40 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
  *v45 = a4;
  *(v45 + 8) = a5 & 1;
  sub_1000756F8(v21, v40 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
  v46 = v40 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = v64;
  *(v40 + 32) = v63;
  *(v40 + 40) = v47;

  sub_100075768(v21, &unk_10050BE80, &unk_10040B360);
  sub_1001939C8(0, v40);
}

void sub_1002DC22C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) == 1)
  {
    if (qword_100501A30 == -1)
    {
LABEL_6:
      sub_1001990A4(a1);
      sub_100194774(a1);
      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Not running", v12, 2u);
  }
}

uint64_t sub_1002DC444()
{
  v0 = type metadata accessor for AlishaSE();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1002DC484();
  qword_10051B6E8 = result;
  return result;
}

uint64_t sub_1002DC484()
{
  v1 = v0;
  v2 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) = 0;
  v7 = OBJC_IVAR____TtC10seserviced8AlishaSE_seTimeoutInSec;
  v17 = 0x4008000000000000;
  aBlock = 0;
  LOBYTE(v12) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  *(v1 + v7) = aBlock;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = sub_1002DFE80;
  v16 = v1;
  aBlock = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100193978;
  v14 = &unk_1004CF638;
  v8 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v8);
  return v1;
}

_DWORD *sub_1002DC6DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning);
  v10 = &type metadata for Bool;
  LOBYTE(v9) = v1;
  sub_100075D50(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v8, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced8AlishaSE_seTimeoutInSec);
  v10 = &type metadata for Double;
  *&v9 = v3;
  sub_100075D50(&v9, v8);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v8, 0x756F656D69546573, 0xEE006365536E4974, v4);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = sub_100015DA0("alishase.state", isa);

  return v6;
}

uint64_t sub_1002DC834(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v64[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (!v14)
    {
      if (v15 >= 4)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    goto LABEL_62;
  }

  if (v11)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 4)
      {
        goto LABEL_18;
      }

LABEL_11:
      sub_100069E2C(a1, a2);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_14:

        v25 = 0;
        v26 = 26368;
        return v26 | (v25 << 16);
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64[0] = v19;
      *v18 = 136315138;
      v63 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v20 = BidirectionalCollection<>.joined(separator:)();
      v22 = v21;

      v23 = sub_1002FFA0C(v20, v22, v64);

      *(v18 + 4) = v23;
      v24 = "Payload is too short %s";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v16, v17, v24, v18, 0xCu);
      sub_1000752F4(v19);

      goto LABEL_14;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_11;
  }

LABEL_18:
  sub_100069E2C(a1, a2);
  v28 = sub_100090214(a1, a2, 0, 0, 0);
  sub_10006A178(a1, a2);
  v26 = 0;
  v25 = 1;
  if (v28 > 0x8070u)
  {
    if (v28 - 32881 <= 0x10 && ((1 << (v28 - 113)) & 0x18001) != 0 || v28 == 33928 || v28 == 33993)
    {
      return v26 | (v25 << 16);
    }

    goto LABEL_30;
  }

  if (v28 - 32828 < 3)
  {
    return v26 | (v25 << 16);
  }

  if (v28 != 164)
  {
LABEL_30:
    sub_100069E2C(a1, a2);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64[0] = v33;
      *v32 = 136315138;
      v63 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      v37 = sub_1002FFA0C(v34, v36, v64);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Blocked command %s", v32, 0xCu);
      sub_1000752F4(v33);
    }

    v25 = 0;
    v26 = 27904;
    return v26 | (v25 << 16);
  }

  if (v11 != 2)
  {
    if (v11 == 1)
    {
      LODWORD(v29) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v29 = v29;
        goto LABEL_37;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    goto LABEL_36;
  }

  v39 = *(a1 + 16);
  v38 = *(a1 + 24);
  v14 = __OFSUB__(v38, v39);
  v29 = v38 - v39;
  if (v14)
  {
    __break(1u);
LABEL_36:
    v29 = BYTE6(a2);
  }

LABEL_37:
  if (v29 < 5)
  {
LABEL_47:
    sub_100069E2C(a1, a2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64[0] = v19;
    *v18 = 136315138;
    v63 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v44 = BidirectionalCollection<>.joined(separator:)();
    v46 = v45;

    v47 = sub_1002FFA0C(v44, v46, v64);

    *(v18 + 4) = v47;
    v24 = "Payload for SELECT is too short %s";
    goto LABEL_13;
  }

  sub_100069E2C(a1, a2);
  v40 = sub_1000939AC(a1, a2, 4, 0, 0);
  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    v14 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (!v14)
    {
LABEL_46:
      if (v41 < v40 + 5)
      {
        goto LABEL_47;
      }

      v48 = Data.subdata(in:)();
      v50 = v49;
      sub_100069E2C(v48, v49);
      v52 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
      v53 = v51;
      if (v50 >> 60 == 15)
      {
        if (v51 >> 60 == 15)
        {
          sub_10006A178(v48, v50);
          sub_10006A2D0(v48, v50);
LABEL_60:
          v26 = 0;
          v25 = 1;
          return v26 | (v25 << 16);
        }
      }

      else if (v51 >> 60 != 15)
      {
        sub_100069E2C(v48, v50);
        sub_10006A2BC(v52, v53);
        v62 = sub_10008FB4C(v48, v50, v52, v53);
        sub_10006A2D0(v52, v53);
        sub_10006A2D0(v52, v53);
        sub_10006A178(v48, v50);
        sub_10006A2D0(v48, v50);
        if (v62)
        {
          sub_10006A178(v48, v50);
          goto LABEL_60;
        }

LABEL_54:
        sub_100069E2C(v48, v50);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        sub_10006A178(v48, v50);
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v64[0] = v57;
          *v56 = 136315138;
          v63 = sub_100288788(v48, v50);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v58 = BidirectionalCollection<>.joined(separator:)();
          v60 = v59;

          v61 = sub_1002FFA0C(v58, v60, v64);

          *(v56 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v54, v55, "Invalid AID for SELECT %s", v56, 0xCu);
          sub_1000752F4(v57);

          sub_10006A178(v48, v50);
        }

        else
        {

          sub_10006A178(v48, v50);
        }

        v25 = 0;
        v26 = 27266;
        return v26 | (v25 << 16);
      }

      sub_10006A2D0(v48, v50);
      sub_10006A2D0(v52, v53);
      goto LABEL_54;
    }

    __break(1u);
LABEL_45:
    v41 = BYTE6(a2);
    goto LABEL_46;
  }

  if (v11 != 1)
  {
    goto LABEL_45;
  }

  LODWORD(v41) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v41 = v41;
    goto LABEL_46;
  }

LABEL_65:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1002DD1A0(void *a1, char a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, void (*a8)(uint64_t, uint64_t), char *a9, NSObject *a10, unsigned __int8 a11)
{
  v344 = a7;
  v345 = a8;
  LODWORD(v340) = a11;
  v339 = a10;
  v337 = a9;
  v17 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v323 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v331 = &v323 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v323 - v25;
  v27 = __chkstk_darwin(v24);
  v332 = (&v323 - v28);
  __chkstk_darwin(v27);
  v333 = &v323 - v29;
  v338 = type metadata accessor for UUID();
  v341 = *(v338 - 8);
  v30 = *(v341 + 64);
  v31 = __chkstk_darwin(v338);
  v330 = &v323 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v334 = &v323 - v34;
  v35 = __chkstk_darwin(v33);
  v324 = &v323 - v36;
  v37 = __chkstk_darwin(v35);
  v327 = &v323 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v323 - v40;
  v42 = __chkstk_darwin(v39);
  v329 = &v323 - v43;
  v44 = __chkstk_darwin(v42);
  v325 = &v323 - v45;
  v46 = __chkstk_darwin(v44);
  v328 = &v323 - v47;
  v48 = __chkstk_darwin(v46);
  v326 = &v323 - v49;
  v50 = __chkstk_darwin(v48);
  v336 = &v323 - v51;
  __chkstk_darwin(v50);
  v335 = &v323 - v52;
  v53 = type metadata accessor for DispatchPredicate();
  v342 = *(v53 - 8);
  v343 = v53;
  v54 = v342[8];
  __chkstk_darwin(v53);
  v56 = (&v323 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v57 = a1;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v347[0] = v61;
      *v60 = 136315138;
      LOBYTE(v346) = a1;
      sub_100075400();
      v62 = Error.localizedDescription.getter();
      v64 = sub_1002FFA0C(v62, v63, v347);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to get SE %s", v60, 0xCu);
      sub_1000752F4(v61);
    }

    if (v57)
    {
      v65 = 3;
    }

    else
    {
      v65 = -126;
    }

    if (v57 == 3)
    {
      v66 = -127;
    }

    else
    {
      v66 = v65;
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100409900;
    *(v67 + 32) = 1;
    *(v67 + 33) = v66;
    v68 = sub_1002B3B94(v67);
    v70 = v69;

    v41 = v344;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v71 = qword_10051B7F0;
    *v56 = qword_10051B7F0;
    v73 = v342;
    v72 = v343;
    (v342[13])(v56, enum case for DispatchPredicate.onQueue(_:), v343);
    v74 = v71;
    LOBYTE(v71) = _dispatchPreconditionTest(_:)();
    v76 = v73[1];
    v75 = (v73 + 1);
    v76(v56, v72);
    if ((v71 & 1) == 0)
    {
      __break(1u);
      goto LABEL_141;
    }

    v77 = v345;
    if (v345)
    {
      sub_1000756F8(v337, v21);
      v78 = v341;
      v79 = v338;
      if ((*(v341 + 48))(v21, 1, v338) != 1)
      {
        v343 = v70;
        v139 = v334;
        (*(v78 + 32))(v334, v21, v79);
        v140 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        v141 = *(v78 + 16);
        v337 = v140;
        v142 = v336;
        v342 = v141;
        (v141)(v336, v140 + v41, v79);
        v143 = static UUID.== infix(_:_:)();
        v146 = *(v78 + 8);
        v145 = v78 + 8;
        v144 = v146;
        v146(v142, v79);
        if ((v143 & 1) == 0)
        {
          v345 = v144;
          v341 = v145;
          v187 = v330;
          (v342)(v330, v139, v79);

          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            v340 = swift_slowAlloc();
            v346 = v340;
            *v190 = 136315394;
            v333 = sub_10007554C();
            v191 = dispatch thunk of CustomStringConvertible.description.getter();
            v192 = v41;
            v194 = v193;
            LODWORD(v335) = v189;
            v339 = v188;
            v195 = v345;
            v345(v187, v79);
            v196 = sub_1002FFA0C(v191, v194, &v346);

            *(v190 + 4) = v196;
            *(v190 + 12) = 2080;
            v197 = v336;
            (v342)(v336, v337 + v192, v79);
            v198 = dispatch thunk of CustomStringConvertible.description.getter();
            v200 = v199;
            v201 = v197;
            v202 = v195;
            v195(v201, v79);
            v203 = sub_1002FFA0C(v198, v200, &v346);

            *(v190 + 14) = v203;
            v204 = v339;
            _os_log_impl(&_mh_execute_header, v339, v335, "Connection identifier has changed %s %s", v190, 0x16u);
            swift_arrayDestroy();

            v205 = v334;
          }

          else
          {
            v205 = v139;

            v202 = v345;
            v345(v187, v79);
          }

          v70 = v343;
          v202(v205, v79);
          goto LABEL_96;
        }

        v144(v139, v79);
        v70 = v343;
        if ((v345 & 2) == 0)
        {
LABEL_21:
          v72 = sub_100239160(3, 17, v68, v70);
          v75 = v81;
          if (qword_100501960 == -1)
          {
LABEL_22:
            v82 = v72;
            v83 = v75;
            v84 = v41;
LABEL_23:
            sub_1000E71A0(v82, v83, v84);
            sub_10006A178(v72, v75);
LABEL_96:
            v115 = v68;
            v116 = v70;
            return sub_10006A178(v115, v116);
          }

LABEL_141:
          swift_once();
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      sub_100075768(v21, &unk_10050BE80, &unk_10040B360);
    }

    if ((v77 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (v340)
    {
      goto LABEL_21;
    }

    v80 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
    if (*(v41 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v339)
    {
      goto LABEL_21;
    }

LABEL_60:

    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 134218240;
      *(v149 + 4) = v339;
      *(v149 + 12) = 2048;
      *(v149 + 14) = *(v41 + v80);

      _os_log_impl(&_mh_execute_header, v147, v148, "Sequence number has changed %ld %ld", v149, 0x16u);
    }

    else
    {
    }

    goto LABEL_96;
  }

  v334 = a6;
  if ((a3 & 1) == 0)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v347[0] = 0;
    v99 = sub_1003AE9C8(a1, isa, v347);

    if (!v99)
    {
      v150 = v347[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100069E2C(a4, a5);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();
      sub_10006A178(a4, a5);
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v347[0] = v154;
        *v153 = 136315138;
        v346 = sub_100288788(a4, a5);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v155 = BidirectionalCollection<>.joined(separator:)();
        v157 = v156;

        v158 = sub_1002FFA0C(v155, v157, v347);

        *(v153 + 4) = v158;
        _os_log_impl(&_mh_execute_header, v151, v152, "Failed to transceive %s", v153, 0xCu);
        sub_1000752F4(v154);
      }

      v41 = v344;
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v68 = sub_1002B3B94(&off_1004C4F58);
      v70 = v159;
      if (qword_100501D90 != -1)
      {
        swift_once();
      }

      v160 = qword_10051B7F0;
      *v56 = qword_10051B7F0;
      v162 = v342;
      v161 = v343;
      (v342[13])(v56, enum case for DispatchPredicate.onQueue(_:), v343);
      v163 = v160;
      LOBYTE(v160) = _dispatchPreconditionTest(_:)();
      v164 = v162[1];
      v21 = (v162 + 1);
      v164(v56, v161);
      if (v160)
      {
        v165 = v341;
        v166 = v345;
        v167 = v331;
        if (v345)
        {
          sub_1000756F8(v337, v331);
          v168 = v338;
          if ((*(v165 + 48))(v167, 1, v338) == 1)
          {
            sub_100075768(v167, &unk_10050BE80, &unk_10040B360);
          }

          else
          {
            v343 = v70;
            v228 = v327;
            (*(v165 + 32))(v327, v167, v168);
            v229 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
            swift_beginAccess();
            v230 = *(v165 + 16);
            v337 = v229;
            v231 = v336;
            v342 = v230;
            (v230)(v336, v41 + v229, v168);
            LOBYTE(v229) = static UUID.== infix(_:_:)();
            v232 = v231;
            v233 = *(v165 + 8);
            v233(v232, v168);
            if ((v229 & 1) == 0)
            {
              v345 = v233;
              v286 = v324;
              (v342)(v324, v228, v168);

              v287 = Logger.logObject.getter();
              v288 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v287, v288))
              {
                v289 = swift_slowAlloc();
                v341 = swift_slowAlloc();
                v346 = v341;
                *v289 = 136315394;
                sub_10007554C();
                LODWORD(v340) = v288;
                v339 = v287;
                v290 = dispatch thunk of CustomStringConvertible.description.getter();
                v292 = v291;
                v293 = v345;
                v345(v286, v168);
                v294 = sub_1002FFA0C(v290, v292, &v346);

                *(v289 + 4) = v294;
                *(v289 + 12) = 2080;
                v295 = v336;
                (v342)(v336, v337 + v344, v168);
                v296 = dispatch thunk of CustomStringConvertible.description.getter();
                v298 = v297;
                v299 = v295;
                v300 = v293;
                v293(v299, v168);
                v301 = sub_1002FFA0C(v296, v298, &v346);
                v228 = v327;

                *(v289 + 14) = v301;
                v302 = v339;
                _os_log_impl(&_mh_execute_header, v339, v340, "Connection identifier has changed %s %s", v289, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                v321 = v286;
                v300 = v345;
                v345(v321, v168);
              }

              v300(v228, v168);
              v115 = v68;
              v116 = v343;
              return sub_10006A178(v115, v116);
            }

            v233(v228, v168);
            v166 = v345;
            v70 = v343;
          }
        }

        if ((v166 & 2) != 0 && (v340 & 1) == 0)
        {
          v80 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
          if (*(v41 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v339)
          {
            goto LABEL_60;
          }
        }

        v72 = sub_100239160(3, 17, v68, v70);
        v75 = v234;
        if (qword_100501960 == -1)
        {
LABEL_104:
          v82 = v72;
          v83 = v75;
          v84 = v41;
          goto LABEL_23;
        }

LABEL_149:
        swift_once();
        goto LABEL_104;
      }

      __break(1u);
      goto LABEL_147;
    }

    v100 = qword_100501B60;
    v101 = v347[0];
    if (v100 != -1)
    {
      swift_once();
    }

    v102 = qword_10051B5A0;
    v103 = sub_1003AAA78(v99);
    v335 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v104;

    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v105 = qword_10051B7F0;
    *v56 = qword_10051B7F0;
    v107 = v342;
    v106 = v343;
    (v342[13])(v56, enum case for DispatchPredicate.onQueue(_:), v343);
    v108 = v105;
    LOBYTE(v105) = _dispatchPreconditionTest(_:)();
    (v107[1])(v56, v106);
    if ((v105 & 1) == 0)
    {
      __break(1u);
      goto LABEL_143;
    }

    v109 = v341;
    v110 = v345;
    if (v345)
    {
      sub_1000756F8(v337, v26);
      v111 = v338;
      if ((*(v109 + 48))(v26, 1, v338) != 1)
      {
        v343 = v102;
        v334 = a4;
        v206 = v329;
        (*(v109 + 32))(v329, v26, v111);
        v207 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        v208 = v344;
        swift_beginAccess();
        v209 = *(v109 + 16);
        v337 = v207;
        v210 = v336;
        v342 = v209;
        (v209)(v336, v208 + v207, v111);
        LOBYTE(v207) = static UUID.== infix(_:_:)();
        v211 = *(v109 + 8);
        v211(v210, v111);
        if ((v207 & 1) == 0)
        {
          v345 = v211;
          (v342)(v41, v206, v111);

          v250 = Logger.logObject.getter();
          v251 = static os_log_type_t.error.getter();

          v252 = os_log_type_enabled(v250, v251);
          v253 = v334;
          if (v252)
          {
            v254 = swift_slowAlloc();
            LODWORD(v341) = v251;
            v255 = v254;
            v343 = swift_slowAlloc();
            v346 = v343;
            *v255 = 136315394;
            v339 = sub_10007554C();
            v340 = v250;
            v256 = dispatch thunk of CustomStringConvertible.description.getter();
            v258 = v257;
            v259 = v345;
            v345(v41, v111);
            v260 = sub_1002FFA0C(v256, v258, &v346);

            *(v255 + 4) = v260;
            *(v255 + 12) = 2080;
            v261 = v337 + v208;
            v262 = v336;
            (v342)(v336, v261, v111);
            v263 = dispatch thunk of CustomStringConvertible.description.getter();
            v265 = v264;
            v259(v262, v111);
            v266 = sub_1002FFA0C(v263, v265, &v346);
            v253 = v334;

            *(v255 + 14) = v266;
            v267 = v340;
            _os_log_impl(&_mh_execute_header, v340, v341, "Connection identifier has changed %s %s", v255, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v259 = v345;
            v345(v41, v111);
          }

          v320 = v335;
          v259(v329, v111);

          v115 = v320;
          v116 = v253;
          return sub_10006A178(v115, v116);
        }

        v211(v206, v111);
        a4 = v334;
        v41 = v344;
        if ((v345 & 2) == 0)
        {
LABEL_39:
          v106 = v335;
          v113 = sub_100239160(1, 12, v335, a4);
          v56 = v114;
          if (qword_100501960 == -1)
          {
LABEL_40:
            sub_1000E71A0(v113, v56, v41);
            sub_10006A178(v113, v56);

            v115 = v106;
            v116 = a4;
            return sub_10006A178(v115, v116);
          }

LABEL_145:
          swift_once();
          goto LABEL_40;
        }

LABEL_37:
        if ((v340 & 1) == 0)
        {
          v112 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
          if (*(v41 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v339)
          {

            v220 = Logger.logObject.getter();
            v221 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v220, v221))
            {
              v222 = swift_slowAlloc();
              *v222 = 134218240;
              *(v222 + 4) = v339;
              *(v222 + 12) = 2048;
              *(v222 + 14) = *(v41 + v112);

              _os_log_impl(&_mh_execute_header, v220, v221, "Sequence number has changed %ld %ld", v222, 0x16u);
            }

            else
            {
            }

            v115 = v335;
            v116 = a4;
            return sub_10006A178(v115, v116);
          }
        }

        goto LABEL_39;
      }

      sub_100075768(v26, &unk_10050BE80, &unk_10040B360);
      v110 = v345;
    }

    v41 = v344;
    if ((v110 & 2) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  sub_100069E2C(a4, a5);
  sub_1000939AC(a4, a5, 4, 0, 0);
  v21 = Data.subdata(in:)();
  a4 = v85;
  v86 = OBJC_IVAR____TtC10seserviced8AlishaSE_logger;
  sub_100069E2C(v21, v85);
  v329 = v86;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();
  sub_10006A178(v21, a4);
  v89 = os_log_type_enabled(v87, v88);
  v331 = v21;
  if (v89)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v347[0] = v91;
    *v90 = 136315138;
    v92 = sub_100288788(v331, a4);
    v330 = 0;
    v346 = v92;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    v93 = a4;
    sub_10007A2D0();
    v94 = BidirectionalCollection<>.joined(separator:)();
    v96 = v95;

    v97 = sub_1002FFA0C(v94, v96, v347);
    a4 = v93;

    *(v90 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v87, v88, "Selecting %s", v90, 0xCu);
    sub_1000752F4(v91);
    v21 = v331;
  }

  else
  {
    v330 = 0;
  }

  v41 = v344;
  v117 = Data._bridgeToObjectiveC()().super.isa;
  v347[0] = 0;
  v106 = sub_1003AF230(a1, v117, 1, v347);

  if (v106)
  {
    v118 = qword_100501B60;
    v119 = v347[0];
    if (v118 == -1)
    {
LABEL_44:
      v120 = sub_1003AAA78(v106);
      v334 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      if (qword_100501D90 != -1)
      {
        swift_once();
      }

      v123 = qword_10051B7F0;
      *v56 = qword_10051B7F0;
      v125 = v342;
      v124 = v343;
      (v342[13])(v56, enum case for DispatchPredicate.onQueue(_:), v343);
      v126 = v123;
      v99 = _dispatchPreconditionTest(_:)();
      v127 = v125[1];
      v113 = (v125 + 1);
      v127(v56, v124);
      if (v99)
      {
        v128 = v341;
        v129 = v345;
        v130 = v335;
        v131 = v333;
        if ((v345 & 1) == 0)
        {
          goto LABEL_50;
        }

        sub_1000756F8(v337, v333);
        v132 = v338;
        if ((*(v128 + 48))(v131, 1, v338) == 1)
        {
          sub_100075768(v131, &unk_10050BE80, &unk_10040B360);
          v21 = v331;
LABEL_50:
          if ((v129 & 2) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        v342 = v122;
        v343 = a4;
        (*(v128 + 32))(v130, v131, v132);
        v212 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        v213 = *(v128 + 16);
        v333 = v212;
        v214 = v336;
        v337 = v213;
        (v213)(v336, v41 + v212, v132);
        v215 = v130;
        v216 = static UUID.== infix(_:_:)();
        v219 = *(v128 + 8);
        v217 = v128 + 8;
        v218 = v219;
        v219(v214, v132);
        if (v216)
        {
          v218(v215, v132);
          v122 = v342;
          a4 = v343;
          v21 = v331;
          if ((v345 & 2) == 0)
          {
            goto LABEL_53;
          }

LABEL_51:
          if ((v340 & 1) == 0)
          {
            v133 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
            if (*(v41 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v339)
            {

              v223 = Logger.logObject.getter();
              v224 = static os_log_type_t.error.getter();
              v225 = os_log_type_enabled(v223, v224);
              v134 = v334;
              if (v225)
              {
                v226 = swift_slowAlloc();
                *v226 = 134218240;
                *(v226 + 4) = v339;
                *(v226 + 12) = 2048;
                *(v226 + 14) = *(v41 + v133);

                _os_log_impl(&_mh_execute_header, v223, v224, "Sequence number has changed %ld %ld", v226, 0x16u);
              }

              else
              {
              }

LABEL_124:
              sub_10006A178(v21, a4);

              v115 = v134;
              v116 = v122;
              return sub_10006A178(v115, v116);
            }
          }

LABEL_53:
          v134 = v334;
          v135 = sub_100239160(1, 12, v334, v122);
          v137 = v136;
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          v138 = v330;
          sub_1000E71A0(v135, v137, v41);
          sub_10006A178(v135, v137);
          if (v138)
          {
          }

          goto LABEL_124;
        }

        v345 = v218;
        v341 = v217;
        v268 = v326;
        v337(v326, v215, v132);

        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v269, v270))
        {
          v271 = v268;
          v272 = swift_slowAlloc();
          v340 = swift_slowAlloc();
          v346 = v340;
          *v272 = 136315394;
          v330 = sub_10007554C();
          LODWORD(v339) = v270;
          v273 = dispatch thunk of CustomStringConvertible.description.getter();
          v332 = v269;
          v275 = v274;
          v276 = v271;
          v277 = v345;
          v345(v276, v132);
          v278 = sub_1002FFA0C(v273, v275, &v346);

          *(v272 + 4) = v278;
          *(v272 + 12) = 2080;
          v279 = v336;
          v337(v336, v41 + v333, v132);
          v280 = v335;
          v281 = dispatch thunk of CustomStringConvertible.description.getter();
          v283 = v282;
          v277(v279, v132);
          v284 = sub_1002FFA0C(v281, v283, &v346);

          *(v272 + 14) = v284;
          v285 = v332;
          _os_log_impl(&_mh_execute_header, v332, v339, "Connection identifier has changed %s %s", v272, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v280 = v215;

          v277 = v345;
          v345(v268, v132);
        }

        v277(v280, v132);
        sub_10006A178(v331, v343);

        v115 = v334;
LABEL_139:
        v116 = v342;
        return sub_10006A178(v115, v116);
      }

      __break(1u);
      goto LABEL_145;
    }

LABEL_143:
    swift_once();
    goto LABEL_44;
  }

  v169 = v347[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_100069E2C(v21, a4);
  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.error.getter();
  sub_10006A178(v21, a4);
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v347[0] = v173;
    *v172 = 136315138;
    v346 = sub_100288788(v21, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v174 = BidirectionalCollection<>.joined(separator:)();
    v176 = v175;
    v21 = v331;

    v177 = sub_1002FFA0C(v174, v176, v347);
    v41 = v344;

    *(v172 + 4) = v177;
    _os_log_impl(&_mh_execute_header, v170, v171, "Failed to select %s", v172, 0xCu);
    sub_1000752F4(v173);
  }

  if (qword_100501B60 != -1)
  {
LABEL_147:
    swift_once();
  }

  v335 = sub_1002B3B94(&off_1004C4F30);
  v72 = v178;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v179 = qword_10051B7F0;
  *v56 = qword_10051B7F0;
  v180 = v342;
  v68 = v343;
  (v342[13])(v56, enum case for DispatchPredicate.onQueue(_:), v343);
  v181 = v179;
  v70 = _dispatchPreconditionTest(_:)();
  v182 = v180[1];
  v75 = (v180 + 1);
  v182(v56, v68);
  if ((v70 & 1) == 0)
  {
    __break(1u);
    goto LABEL_149;
  }

  v183 = v341;
  v184 = v345;
  v185 = v332;
  if (v345)
  {
    sub_1000756F8(v337, v332);
    v186 = v338;
    if ((*(v183 + 48))(v185, 1, v338) == 1)
    {
      sub_100075768(v185, &unk_10050BE80, &unk_10040B360);
    }

    else
    {
      v342 = v72;
      v343 = a4;
      v235 = v328;
      (*(v183 + 32))(v328, v185, v186);
      v236 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v237 = v336;
      v337 = *(v183 + 16);
      v337(v336, v41 + v236, v186);
      v238 = static UUID.== infix(_:_:)();
      v239 = v237;
      v240 = *(v183 + 8);
      v240(v239, v186);
      if ((v238 & 1) == 0)
      {
        v345 = v240;
        v303 = v325;
        v337(v325, v235, v186);

        v304 = Logger.logObject.getter();
        v305 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v304, v305))
        {
          v306 = swift_slowAlloc();
          v341 = swift_slowAlloc();
          v346 = v341;
          *v306 = 136315394;
          sub_10007554C();
          v340 = v304;
          LODWORD(v339) = v305;
          v307 = dispatch thunk of CustomStringConvertible.description.getter();
          v309 = v308;
          v310 = v345;
          v345(v303, v186);
          v311 = sub_1002FFA0C(v307, v309, &v346);

          *(v306 + 4) = v311;
          *(v306 + 12) = 2080;
          v312 = v336;
          v337(v336, v344 + v236, v186);
          v313 = dispatch thunk of CustomStringConvertible.description.getter();
          v315 = v314;
          v316 = v312;
          v317 = v310;
          v310(v316, v186);
          v318 = sub_1002FFA0C(v313, v315, &v346);

          *(v306 + 14) = v318;
          v319 = v340;
          _os_log_impl(&_mh_execute_header, v340, v339, "Connection identifier has changed %s %s", v306, 0x16u);
          swift_arrayDestroy();

          v235 = v328;
        }

        else
        {

          v322 = v303;
          v317 = v345;
          v345(v322, v186);
        }

        v317(v235, v186);
        sub_10006A178(v331, v343);
        v115 = v335;
        goto LABEL_139;
      }

      v240(v235, v186);
      v184 = v345;
      v72 = v342;
      a4 = v343;
    }

    v21 = v331;
  }

  if ((v184 & 2) == 0 || (v340 & 1) != 0 || (v241 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber, *(v41 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v339))
  {
    v242 = v335;
    v243 = sub_100239160(3, 17, v335, v72);
    v245 = v244;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v243, v245, v41);
    sub_10006A178(v243, v245);
  }

  else
  {

    v246 = Logger.logObject.getter();
    v247 = static os_log_type_t.error.getter();
    v248 = os_log_type_enabled(v246, v247);
    v242 = v335;
    if (v248)
    {
      v249 = swift_slowAlloc();
      *v249 = 134218240;
      *(v249 + 4) = v339;
      *(v249 + 12) = 2048;
      *(v249 + 14) = *(v41 + v241);

      _os_log_impl(&_mh_execute_header, v246, v247, "Sequence number has changed %ld %ld", v249, 0x16u);
    }

    else
    {
    }
  }

  sub_10006A178(v21, a4);
  v115 = v242;
  v116 = v72;
  return sub_10006A178(v115, v116);
}

void sub_1002DF844()
{
  v5 = [objc_opt_self() sessionManager];
  v6 = [v5 getActiveDCKSessions];

  sub_1002E00AC();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_54:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_55:

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_55;
  }

LABEL_3:
  v9 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_45;
    }

LABEL_11:
    v26 = v10;
    v12 = [v10 activeEndpoint];
    if (!v12)
    {
      v2 = 0;
      v4 = *(v0 + 16);
      v3 = *(v0 + 24);
      v1 = 0xF000000000000000;
LABEL_5:
      if (v3 >> 60 == 15)
      {
        goto LABEL_46;
      }

      goto LABEL_6;
    }

    v13 = v12;
    v14 = [v12 publicKeyIdentifier];

    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v15;

    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    if (v1 >> 60 == 15)
    {
      goto LABEL_5;
    }

    if (v3 >> 60 != 15)
    {
      v16 = v1 >> 62;
      v17 = v3 >> 62;
      if (v1 >> 62 == 3)
      {
        v18 = 0;
        if (!v2 && v1 == 0xC000000000000000 && v3 >> 62 == 3)
        {
          v18 = 0;
          if (!v4 && v3 == 0xC000000000000000)
          {
            sub_100069E2C(0, 0xC000000000000000);
            sub_10006A2D0(0, 0xC000000000000000);
            v2 = 0;
LABEL_48:
            sub_10006A2D0(v2, v1);
LABEL_49:

            goto LABEL_50;
          }
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          LODWORD(v18) = HIDWORD(v2) - v2;
          if (__OFSUB__(HIDWORD(v2), v2))
          {
            goto LABEL_60;
          }

          v18 = v18;
        }

        else
        {
          v20 = *(v2 + 16);
          v19 = *(v2 + 24);
          v21 = __OFSUB__(v19, v20);
          v18 = v19 - v20;
          if (v21)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        v18 = BYTE6(v1);
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          if (!v18)
          {
LABEL_47:
            sub_100069E2C(*(v0 + 16), *(v0 + 24));
            sub_10006A2D0(v4, v3);
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        v23 = *(v4 + 16);
        v22 = *(v4 + 24);
        v21 = __OFSUB__(v22, v23);
        v24 = v22 - v23;
        if (v21)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          return;
        }

        if (v18 != v24)
        {
LABEL_41:
          sub_100069E2C(*(v0 + 16), *(v0 + 24));
          sub_10006A2D0(v4, v3);
          sub_10006A2D0(v2, v1);
LABEL_42:

          goto LABEL_7;
        }
      }

      else if (v17)
      {
        if (__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_59;
        }

        if (v18 != HIDWORD(v4) - v4)
        {
          goto LABEL_41;
        }
      }

      else if (v18 != BYTE6(v3))
      {
        goto LABEL_41;
      }

      if (v18 < 1)
      {
        goto LABEL_47;
      }

      sub_100069E2C(*(v0 + 16), *(v0 + 24));
      sub_100069E2C(v4, v3);
      sub_10006A2BC(v4, v3);
      sub_10006A2BC(v2, v1);
      v25 = sub_10008C678(v2, v1, v4, v3);
      sub_10006A178(v4, v3);
      sub_10006A2D0(v2, v1);
      sub_10006A2D0(v4, v3);
      sub_10006A2D0(v2, v1);
      if (v25)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

LABEL_6:
    sub_100069E2C(v4, v3);

    sub_10006A2D0(v2, v1);
    sub_10006A2D0(v4, v3);
LABEL_7:
    ++v9;
    if (v11 == v8)
    {
      goto LABEL_55;
    }
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_54;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_11;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  sub_100069E2C(v4, v3);

  sub_10006A2D0(v2, v1);
LABEL_50:
  [v26 useSecureElementToken];
}

uint64_t sub_1002DFC8C()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1002DFCC4()
{
  v1 = OBJC_IVAR____TtC10seserviced8AlishaSE_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaSE()
{
  result = qword_100509BD0;
  if (!qword_100509BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DFDB4()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1002DFE84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002DFE9C()
{
  v1 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  sub_10006A178(*(v0 + 3), *(v0 + 4));
  v5 = *(v0 + 5);

  v6 = *(v0 + 6);

  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v0[v3], 1, v7))
  {
    (*(v8 + 8))(&v0[v3], v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_1002DFFD8(void *a1, char a2)
{
  v5 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002DD1A0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), (v2 + v6), *(v2 + v7), *(v2 + v7 + 8));
}

unint64_t sub_1002E00AC()
{
  result = qword_100505370;
  if (!qword_100505370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100505370);
  }

  return result;
}

uint64_t sub_1002E00F8(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v3 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      v5 = *(a1 + 80);
      v6 = *(a1 + 88);
      result = type metadata accessor for TriggerCoalescer.State();
      if (v7 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1002E0224(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return 1819047278;
  }

  (*(v7 + 8))(v4, v6);
  return 0x676E6974696177;
}

uint64_t *sub_1002E036C()
{
  v1 = *v0;
  v2 = v0[3];

  v3 = qword_100509D18;
  v4 = type metadata accessor for DispatchTimeInterval();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_100509D20 + 8);

  v6 = qword_100509D28;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 136);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = type metadata accessor for TriggerCoalescer.State();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  return v0;
}

uint64_t sub_1002E04B0()
{
  sub_1002E036C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1002E0538(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1002E0594(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1002E0714(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t sub_1002E09BC(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] != 1)
  {
    return 0;
  }

  v2 = [v1 revocationAttestation];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006A178(v4, v6);
    return 0;
  }

  return 1;
}

id sub_1002E0A44()
{
  result = [objc_allocWithZone(type metadata accessor for AlishaExternal()) init];
  qword_10051B6F0 = result;
  return result;
}

id sub_1002E0BC4(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v7 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = a4(v8, v10);
  sub_10006A178(v8, v10);

  return v11;
}

void sub_1002E0C58(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002E7B2C;
  *(v7 + 24) = v6;

  v8 = sub_1000CAA04();

  v9 = sub_1000CA810(v8);

  if (!v9)
  {
    goto LABEL_11;
  }

  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  v10 = [v9 publicKeyIdentifier];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v9 appletIdentifier];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_1001C1F18(v11, v13, v15, v17);
  sub_10006A178(v15, v17);
  sub_10006A178(v11, v13);
  if (v18 != 1)
  {

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B5B0;

  v20 = *(v19 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable);
LABEL_12:
  *a3 = v20;
}

uint64_t sub_1002E0EA8(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v6 = [a1 readerIdentifier];
  if (!v6)
  {
    v8 = 0;
    v10 = 0xF000000000000000;
LABEL_8:
    if (a3 >> 60 == 15)
    {
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v8, v10);
      goto LABEL_10;
    }

LABEL_12:
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v8, v10);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  v7 = v6;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    goto LABEL_8;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_12;
  }

  sub_100069E2C(a2, a3);
  sub_10006A2BC(v8, v10);
  v11 = sub_10008FB4C(v8, v10, a2, a3);
  sub_10006A2D0(a2, a3);
  sub_10006A2D0(v8, v10);
  sub_10006A2D0(v8, v10);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1002E11E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002E7A6C;
  *(v11 + 24) = v10;

  v12 = sub_1000CAAC4();

  v13 = sub_1000CA840(v12);

  if (v13)
  {
    v15 = *(v13 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

void sub_1002E162C(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_100501DB0 != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    swift_once();
    a1 = v7;
    a2 = v8;
    a3 = v9;
  }

  sub_10034D0AC(a1, a2, a3);
  if (v4)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    swift_dynamicCast();
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
}

void sub_1002E1930(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v8 = v7;
  v62 = a5;
  v68 = a4;
  v71 = a3;
  LOBYTE(v10) = a2;
  LODWORD(v75) = a1;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501DB0 != -1)
  {
LABEL_86:
    swift_once();
  }

  v67 = qword_10051B820;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  v61 = a6;
  v66 = a7;
  v20 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  v21 = v67;
  swift_beginAccess();
  a6 = *(v21 + v20);
  if (a6 >> 62)
  {
LABEL_88:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  v12 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v13 = v8;

  if (!v12)
  {
LABEL_81:

    v55 = objc_allocWithZone(NSError);
    v56 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v58 = [v55 initWithDomain:v56 code:16 userInfo:isa];

    *v66 = v58;
    return;
  }

  v16 = 0;
  a7 = v10;
  v73 = v75;
  v74 = a6 & 0xFFFFFFFFFFFFFF8;
  v75 = a6 & 0xC000000000000001;
  v10 = v68;
  if (v71)
  {
    v22 = 0;
  }

  else
  {
    v22 = v68 == 0xC000000000000000;
  }

  v23 = !v22;
  v70 = v23;
  v24 = v68 >> 62;
  v25 = __OFSUB__(HIDWORD(v71), v71);
  v65 = v25;
  v64 = HIDWORD(v71) - v71;
  v69 = BYTE6(v68);
  v26 = v68 >> 62;
  v72 = a7;
  while (1)
  {
    if (v75)
    {
      v24 = v26;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v27 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }

    else
    {
      if (v16 >= *(v74 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v8 = *(a6 + 8 * v16 + 32);

      v27 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        goto LABEL_80;
      }
    }

    if (*(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != v73 || *(v8 + 16) != a7)
    {
      goto LABEL_19;
    }

    v28 = *(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v29 = *(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v30 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      break;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_47;
      }

      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_91;
      }

      if (v24 > 1)
      {
        goto LABEL_48;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_92;
      }

      v34 = v34;
      if (v24 > 1)
      {
LABEL_48:
        if (v24 != 2)
        {
          a7 = v72;
          if (!v34)
          {
            goto LABEL_82;
          }

          goto LABEL_19;
        }

        v40 = *(v71 + 16);
        v39 = *(v71 + 24);
        v37 = __OFSUB__(v39, v40);
        v38 = v39 - v40;
        if (v37)
        {
          __break(1u);
LABEL_90:
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
          __break(1u);
LABEL_96:
          __break(1u);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v34 = BYTE6(v29);
      if (v24 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_44:
    v38 = v69;
    if (v24)
    {
      v38 = v64;
      if (v65)
      {
        goto LABEL_90;
      }
    }

LABEL_50:
    if (v34 != v38)
    {
      a7 = v72;
      goto LABEL_19;
    }

    if (v34 < 1)
    {
      goto LABEL_82;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        memset(v76, 0, 14);
LABEL_69:
        sub_10019F024(v76, v71, v10, &v77);
        a7 = v72;
        if (v77)
        {
          goto LABEL_82;
        }

        goto LABEL_19;
      }

      v63 = v13;
      v41 = *(v28 + 16);
      v60 = *(v28 + 24);
      v42 = __DataStorage._bytes.getter();
      if (v42)
      {
        v59 = v42;
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v43))
        {
          goto LABEL_95;
        }

        v44 = v41 - v43 + v59;
      }

      else
      {
        v44 = 0;
      }

      if (__OFSUB__(v60, v41))
      {
        goto LABEL_94;
      }

      v52 = v44;
      __DataStorage._length.getter();
      v53 = v52;
    }

    else
    {
      if (!v30)
      {
        v76[0] = *(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
        LOWORD(v76[1]) = v29;
        BYTE2(v76[1]) = BYTE2(v29);
        BYTE3(v76[1]) = BYTE3(v29);
        BYTE4(v76[1]) = BYTE4(v29);
        BYTE5(v76[1]) = BYTE5(v29);
        goto LABEL_69;
      }

      v63 = v13;
      v45 = v28;
      v46 = v28 >> 32;
      v47 = v46 < v45;
      v48 = v46 - v45;
      if (v47)
      {
        goto LABEL_93;
      }

      v60 = v48;
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v59 = v49;
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v50))
        {
          goto LABEL_96;
        }

        v51 = v45 - v50 + v59;
      }

      else
      {
        v51 = 0;
      }

      __DataStorage._length.getter();
      v53 = v51;
    }

    v10 = v68;
    v54 = v63;
    sub_10019F024(v53, v71, v68, v76);
    v13 = v54;
    a7 = v72;
    if (v76[0])
    {
      goto LABEL_82;
    }

LABEL_19:

    ++v16;
    v24 = v26;
    if (v27 == v12)
    {
      goto LABEL_81;
    }
  }

  if (v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29 == 0xC000000000000000;
  }

  v33 = !v31 || v24 < 3;
  if ((v33 | v70))
  {
LABEL_47:
    v34 = 0;
    if (v24 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_82:

  sub_10034E460(v8, v62, v61);

  if (v13)
  {
    v76[0] = v13;
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    swift_dynamicCast();
    *v66 = v77;
  }

  else
  {
    *v66 = 0;
  }
}

unint64_t sub_1002E2304@<X0>(char a1@<W0>, unint64_t *a2@<X8>)
{
  if (qword_100501C40 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  result = sub_1002A9798(a1 & 1);
  *a2 = result;
  return result;
}

id sub_1002E2590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002E7BE0;
  *(v16 + 24) = v15;

  v17 = sub_1000CAAC4();

  v18 = sub_1000CA840(v17);

  if (!v18)
  {
    goto LABEL_13;
  }

  if (*(v18 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {

LABEL_13:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    result = sub_10030990C(13, 0, 0xD000000000000018, 0x800000010046BBF0, 0);
    goto LABEL_14;
  }

  if (qword_100501960 != -1)
  {
    swift_once();
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v19 = sub_100239160(4, 16, a2, a3);
  v21 = v20;
  sub_1000E71A0(v19, v20, v18);
  if (v4)
  {
  }

  sub_10006A178(v19, v21);
  result = 0;
LABEL_14:
  *a4 = result;
  return result;
}

uint64_t sub_1002E2B6C@<X0>(void *a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501DB0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v6 = qword_10051B820;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v2 += 8;
  v10(v5, v1);
  if (v9)
  {
    v2 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
    swift_beginAccess();
    v9 = *(v6 + v2);
    v32 = _swiftEmptyArrayStorage;
    if (!(v9 >> 62))
    {
      v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:

  if (v5)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v1 = &OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType;
    v30 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v2 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v15 = v32;
          goto LABEL_21;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v13 = *(v9 + 8 * v11 + 32);

        v2 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_18;
        }
      }

      if (*(v13 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) == 2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = v32[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 = v30;
      }

      else
      {
      }

      ++v11;
      if (v2 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_21:

  if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_36:

    v28 = _swiftEmptyArrayStorage;
LABEL_37:
    *v29 = v28;
    return result;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_36;
  }

LABEL_24:
  v32 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v30 = v15 & 0xC000000000000001;
    v19 = v15;
    do
    {
      if (v30)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      ++v18;
      v21 = *(v20 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v22 = *(v20 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v23 = *(v20 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
      v24 = type metadata accessor for AlishaExternal.RequestInProgress();
      v25 = objc_allocWithZone(v24);
      v26 = &v25[OBJC_IVAR____TtCC10seserviced14AlishaExternal17RequestInProgress_keyIdentifier];
      *v26 = v21;
      v26[1] = v22;
      *&v25[OBJC_IVAR____TtCC10seserviced14AlishaExternal17RequestInProgress_functionIdentifier] = v23;
      sub_100069E2C(v21, v22);
      sub_100069E2C(v21, v22);
      v31.receiver = v25;
      v31.super_class = v24;
      objc_msgSendSuper2(&v31, "init");

      sub_10006A178(v21, v22);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = v32[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 = v19;
    }

    while (v16 != v18);

    v28 = v32;
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E3170(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, void (*a13)(Class, id), unint64_t a14)
{
  if (a2)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v18 = sub_1002E7938;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  sub_100113B54(a2);
  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  if (a1 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = a1 == 1;
  }

  v20 = qword_10051B820;

  sub_10035A558(a4, a5, a6, a7, v19, a8, a9, a10, v18, v17, a11, a12, v20, a13, a14);

  return sub_1000B2A4C(v18);
}

void sub_1002E32CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(Class, Class, uint64_t, uint64_t, uint64_t, uint64_t))
{
  isa = UInt16._bridgeToObjectiveC()().super.super.isa;
  v13 = UInt8._bridgeToObjectiveC()().super.super.isa;
  a7(isa, v13, a3, a4, a5, a6);
}

void sub_1002E3370(__int16 a1, void (*a2)(Class, id))
{
  v3 = a1;
  if ((a1 & 0x100) != 0)
  {
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7 = [v4 initWithDomain:v5 code:qword_100414AB0[v3] userInfo:isa];

    v8 = v7;
    a2(0, v7);
  }

  else
  {
    v8 = UInt8._bridgeToObjectiveC()().super.super.isa;
    a2(v8, 0);
  }
}

void sub_1002E3668(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v11 = Data._bridgeToObjectiveC()().super.isa;
  (*(a7 + 16))(a7, a1, a2, isa, v11);
}

void sub_1002E371C(uint64_t a1)
{
  if (qword_100501B70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  __chkstk_darwin(a1);
  v1 = sub_100240880(sub_1002E77EC);
  v2 = sub_1000CA828(v1);

  if (v2)
  {
    sub_1002463FC();
    sub_100246268(0);
  }
}

uint64_t sub_1002E37F4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, *(a1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v2, v5);
  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v7, v2);
  return v8 & 1;
}

uint64_t sub_1002E3934(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002E7740;
  *(v9 + 24) = v8;

  v10 = sub_1000CAAC4();

  v11 = sub_1000CA840(v10);

  if (v11)
  {
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    sub_100230F04(a3, a4, v11);
  }

  return result;
}

uint64_t sub_1002E3AE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = sub_1002E7BE4;
  *(v14 + 24) = v13;

  v15 = sub_1000CAAC4();

  v16 = sub_1000CA840(v15);

  if (v16)
  {
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v18 = qword_10051B5A0;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v19 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v8);
    if (v19)
    {
      if (qword_100501DA0 == -1)
      {
LABEL_10:
        sub_100338E68(v16 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, a3, a4);
        if (*(v18 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) == 1)
        {
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E67E4(v16);
        }
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002E3E24(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a4;
  v16 = a1;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_1002E60DC(v12, v14, v17, v19, a5, a6, a7);
  sub_10006A178(v17, v19);
}

uint64_t sub_1002E3EEC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002E7BE0;
  *(v8 + 24) = v7;

  v9 = sub_1000CAAC4();

  v10 = sub_1000CA840(v9);

  if (v10)
  {
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000F5CB8(v10);
  }

  return result;
}

uint64_t sub_1002E411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E6390(v13, a4, a5, a6);
  return (*(v10 + 8))(v13, v9);
}

void sub_1002E4214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (a1 != 0xFFFF && a2 != 0xFFFF)
  {
    if (qword_100501DB0 != -1)
    {
      swift_once();
    }

    v9 = qword_10051B820;
    v10 = OBJC_IVAR____TtC10seserviced9AlishaRKE_peersAvailableToSubscribe;
    swift_beginAccess();
    v11 = *(v9 + v10);

    v12 = sub_1000C6C94(a3, v11);

    if (v12)
    {
      (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
      v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v14 = swift_allocObject();
      (*(v7 + 32))(v14 + v13, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (qword_100501D78 != -1)
      {
        swift_once();
      }

      v15 = swift_allocObject();
      *(v15 + 16) = sub_1002E7614;
      *(v15 + 24) = v14;

      v16 = sub_1000CAAC4();

      v17 = sub_1000CA840(v16);

      if (v17)
      {
        v18 = a1 + a2;
        if (__OFADD__(a1, a2))
        {
          __break(1u);
        }

        else if (v18 >= a1)
        {
          sub_10034F23C(a1, v18, v17);

          return;
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1002E45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (qword_100501DA0 != -1)
  {
    v5 = a4;
    swift_once();
    a4 = v5;
  }

  return a4();
}

uint64_t sub_1002E4678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = a1;
  sub_1002E6A50(v15, v16, v18, a5, a6, a7);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1002E47AC(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_10006A278;
  *(v5 + 24) = v4;

  v6 = sub_1000CAAC4();

  v7 = sub_1000CA840(v6);

  if (v7)
  {
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100251228(v7);
  }

  return result;
}

uint64_t sub_1002E495C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002E7BE4;
  *(v9 + 24) = v8;

  v10 = sub_1000CAAC4();

  v11 = sub_1000CA840(v10);

  if (v11)
  {
    if (qword_1005019F0 != -1)
    {
      swift_once();
    }

    sub_10014EEBC(a3, a4, 0, v11);
  }

  return result;
}

uint64_t sub_1002E4AE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v7 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v6 >> 60 == 15)
  {
    if (a3 >> 60 == 15)
    {
      sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (a3 >> 60 == 15)
  {
LABEL_7:
    sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v7, v6);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
  sub_10006A2BC(v7, v6);
  sub_100069E2C(a2, a3);
  v8 = sub_10008FB4C(v7, v6, a2, a3);
  sub_10006A2D0(a2, a3);
  sub_10006A2D0(v7, v6);
  sub_10006A2D0(v7, v6);
  return v8 & 1;
}

void sub_1002E4D0C(uint64_t a1, unint64_t a2)
{
  if (qword_100501B60 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_100236714(a1, a2);
}

void sub_1002E4DA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v14 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_1002E7098(v11, v13, a4, a5, a6);
  sub_10006A178(v11, v13);
}

id sub_1002E4EF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlishaExternal.RequestInProgress();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002E4FC8(uint64_t a1, unint64_t a2)
{
  if (qword_1005019E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v4 = sub_1000CAA04();
    v5 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      sub_10023EFC4();
      Set.Iterator.init(_cocoa:)();
      v6 = v61[3];
      v7 = v61[4];
      v8 = v61[5];
      v9 = v61[6];
      v10 = v61[7];
    }

    else
    {
      v11 = -1 << *(v4 + 32);
      v7 = (v4 + 56);
      v8 = ~v11;
      v12 = -v11;
      v13 = v12 < 64 ? ~(-1 << v12) : -1;
      v10 = (v13 & *(v4 + 56));

      v9 = 0;
      v6 = v5;
    }

    v55 = a1;
    v56 = 0;
    v14 = (v8 + 64) >> 6;
    v15 = !a1 && a2 == 0xC000000000000000;
    v16 = !v15;
    v54 = v16;
    v57 = v6;
    v58 = a2 >> 62;
    v17 = __OFSUB__(HIDWORD(a1), a1);
    v52 = v17;
    v51 = HIDWORD(a1) - a1;
    v53 = BYTE6(a2);
    v18 = v10;
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    while (1)
    {
      v21 = v9;
      v22 = v18;
      if (!v18)
      {
        break;
      }

LABEL_25:
      v59 = (v22 - 1) & v22;
      v20 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v20)
      {
        goto LABEL_78;
      }

LABEL_26:
      v23 = [v20 publicKeyIdentifier];
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = v26 >> 62;
      if (v26 >> 62 == 3)
      {
        if (v24)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26 == 0xC000000000000000;
        }

        v29 = v58;
        v31 = !v28 || v58 < 3;
        if (((v31 | v54) & 1) == 0)
        {
          sub_100093854();
          v47 = 0;
          v48 = 0xC000000000000000;
LABEL_81:
          sub_10006A178(v47, v48);
          goto LABEL_79;
        }

LABEL_48:
        v32 = 0;
        if (v29 > 1)
        {
          goto LABEL_49;
        }

LABEL_45:
        v36 = v53;
        if (v29)
        {
          v36 = v51;
          if (v52)
          {
            goto LABEL_85;
          }
        }

LABEL_51:
        if (v32 != v36)
        {
          goto LABEL_57;
        }

        if (v32 < 1)
        {
          goto LABEL_80;
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v49 = v5;
            v50 = a2;
            v40 = *(v24 + 16);
            v39 = *(v24 + 24);
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v42 = __DataStorage._offset.getter();
              if (__OFSUB__(v40, v42))
              {
                goto LABEL_91;
              }

              v41 += v40 - v42;
            }

            if (__OFSUB__(v39, v40))
            {
              goto LABEL_90;
            }

            goto LABEL_72;
          }

          memset(v61, 0, 14);
        }

        else
        {
          if (v27)
          {
            v50 = a2;
            if (v24 >> 32 < v24)
            {
              goto LABEL_89;
            }

            v49 = v5;
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v24, v43))
              {
                goto LABEL_92;
              }

              v41 += v24 - v43;
            }

LABEL_72:
            __DataStorage._length.getter();
            a2 = v50;
            v44 = v56;
            sub_10019F024(v41, v55, v50, v61);
            sub_10006A178(v24, v26);
            v5 = v49;
            if (v61[0])
            {
              goto LABEL_82;
            }

            goto LABEL_76;
          }

          v61[0] = v24;
          LOWORD(v61[1]) = v26;
          BYTE2(v61[1]) = BYTE2(v26);
          BYTE3(v61[1]) = BYTE3(v26);
          BYTE4(v61[1]) = BYTE4(v26);
          BYTE5(v61[1]) = BYTE5(v26);
        }

        v45 = a1;
        v44 = v56;
        sub_10019F024(v61, v45, a2, &v60);
        sub_10006A178(v24, v26);
        if (v60)
        {
LABEL_82:
          sub_100093854();
          goto LABEL_79;
        }

LABEL_76:
        v56 = v44;
        v6 = v57;

        v18 = v59;
        a1 = v55;
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = v58;
        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_48;
          }

          v34 = *(v24 + 16);
          v33 = *(v24 + 24);
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v35)
          {
            goto LABEL_88;
          }

          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else if (v27)
        {
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
          }

          v32 = v32;
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v32 = BYTE6(v26);
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

LABEL_49:
        if (v29 == 2)
        {
          v38 = *(a1 + 16);
          v37 = *(a1 + 24);
          v35 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v35)
          {
            goto LABEL_84;
          }

          goto LABEL_51;
        }

        if (!v32)
        {
LABEL_80:
          sub_100093854();
          v47 = v24;
          v48 = v26;
          goto LABEL_81;
        }

LABEL_57:

        sub_10006A178(v24, v26);
        v18 = v59;
        v6 = v57;
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_78;
      }

      v22 = v7[v9];
      ++v21;
      if (v22)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

LABEL_18:
  v19 = __CocoaSet.Iterator.next()();
  if (v19)
  {
    v60 = v19;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();
    v20 = v61[0];
    v59 = v18;
    if (v61[0])
    {
      goto LABEL_26;
    }
  }

LABEL_78:
  sub_100093854();
  v20 = 0;
LABEL_79:

  return v20;
}

id sub_1002E55F8(uint64_t a1, unint64_t a2)
{
  if (qword_1005019E8 != -1)
  {
LABEL_93:
    swift_once();
  }

  v3 = sub_1000CAA04();
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v5 = v62[3];
    v4 = v62[4];
    v6 = v62[5];
    v7 = v62[6];
    v8 = v62[7];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v56 = v14;
  v57 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v54 = v15;
  v55 = BYTE6(a2);
  v58 = v5;
  while (1)
  {
    while (1)
    {
      if (v5 < 0)
      {
        v19 = __CocoaSet.Iterator.next()();
        if (!v19 || (v61 = v19, sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr), swift_dynamicCast(), v18 = v62[0], v60 = v8, !v62[0]))
        {
LABEL_86:
          sub_100093854();
          v18 = 0;
          goto LABEL_87;
        }
      }

      else
      {
        v16 = v7;
        v17 = v8;
        if (!v8)
        {
          while (1)
          {
            v7 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_86;
            }

            v17 = *(v4 + 8 * v7);
            ++v16;
            if (v17)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_93;
        }

LABEL_23:
        v60 = (v17 - 1) & v17;
        v18 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v17)))));
        if (!v18)
        {
          goto LABEL_86;
        }
      }

      v20 = [v18 readerIdentifier];
      v21 = a2;
      v22 = a2 >> 60;
      if (v20)
      {
        break;
      }

      v24 = 0;
      v26 = 0xF000000000000000;
LABEL_43:
      if (v22 > 0xE)
      {
        sub_100069E2C(a1, v21);
        sub_100093854();
        sub_10006A2D0(v24, v26);
        goto LABEL_87;
      }

LABEL_44:
      a2 = v21;
      sub_100069E2C(a1, v21);

      sub_10006A2D0(v24, v26);
      sub_10006A2D0(a1, v21);
      v5 = v58;
      v8 = v60;
    }

    v23 = v20;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v26 >> 60 == 15)
    {
      goto LABEL_43;
    }

    if (v22 > 0xE)
    {
      goto LABEL_44;
    }

    v27 = v26 >> 62;
    a2 = v21;
    if (v26 >> 62 == 3)
    {
      if (v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26 == 0xC000000000000000;
      }

      v30 = !v28 || v57 < 3;
      if (((v30 | v56) & 1) == 0)
      {
        sub_100069E2C(0, 0xC000000000000000);
        sub_10006A2D0(0, 0xC000000000000000);
        v49 = 0;
        goto LABEL_90;
      }

LABEL_55:
      v31 = 0;
      if (v57 <= 1)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_55;
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_97;
      }

      if (v57 <= 1)
      {
        goto LABEL_52;
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_96;
      }

      v31 = v31;
      if (v57 <= 1)
      {
LABEL_52:
        v35 = v55;
        if (v57)
        {
          v35 = HIDWORD(a1) - a1;
          if (v54)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_58;
      }
    }

    else
    {
      v31 = BYTE6(v26);
      if (v57 <= 1)
      {
        goto LABEL_52;
      }
    }

LABEL_56:
    if (v57 != 2)
    {
      break;
    }

    v37 = *(a1 + 16);
    v36 = *(a1 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
    }

LABEL_58:
    if (v31 != v35)
    {
      goto LABEL_64;
    }

    if (v31 < 1)
    {
      goto LABEL_89;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v62, 0, 14);
        v38 = a1;
        sub_100069E2C(a1, v21);
        sub_10006A2BC(v24, v26);
        goto LABEL_77;
      }

      v51 = *(v24 + 24);
      v53 = *(v24 + 16);
      sub_100069E2C(a1, v21);
      sub_10006A2BC(v24, v26);
      v39 = __DataStorage._bytes.getter();
      if (v39)
      {
        v40 = v39;
        v41 = __DataStorage._offset.getter();
        v42 = v53;
        if (__OFSUB__(v53, v41))
        {
          goto LABEL_100;
        }

        v50 = v53 - v41 + v40;
      }

      else
      {
        v50 = 0;
        v42 = v53;
      }

      if (__OFSUB__(v51, v42))
      {
        goto LABEL_99;
      }

      __DataStorage._length.getter();
      v47 = v50;
    }

    else
    {
      if (!v27)
      {
        v62[0] = v24;
        LOWORD(v62[1]) = v26;
        BYTE2(v62[1]) = BYTE2(v26);
        BYTE3(v62[1]) = BYTE3(v26);
        BYTE4(v62[1]) = BYTE4(v26);
        BYTE5(v62[1]) = BYTE5(v26);
        v38 = a1;
        sub_100069E2C(a1, v21);
        sub_10006A2BC(v24, v26);
LABEL_77:
        sub_10019F024(v62, v38, v21, &v61);
        a2 = v21;
        sub_10006A2D0(v24, v26);
        sub_10006A2D0(v38, v21);
        v46 = v61;
        goto LABEL_84;
      }

      if (v24 >> 32 < v24)
      {
        goto LABEL_98;
      }

      sub_100069E2C(a1, v21);
      sub_10006A2BC(v24, v26);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v52 = v43;
        v44 = __DataStorage._offset.getter();
        if (__OFSUB__(v24, v44))
        {
          goto LABEL_101;
        }

        v45 = v24 - v44 + v52;
      }

      else
      {
        v45 = 0;
      }

      __DataStorage._length.getter();
      v47 = v45;
    }

    sub_10019F024(v47, a1, v21, v62);
    a2 = v21;
    sub_10006A2D0(v24, v26);
    sub_10006A2D0(a1, v21);
    v46 = v62[0];
LABEL_84:
    sub_10006A2D0(v24, v26);
    v5 = v58;
    if (v46)
    {
      goto LABEL_91;
    }

LABEL_85:

    v8 = v60;
  }

  if (v31)
  {
LABEL_64:
    sub_100069E2C(a1, v21);
    sub_10006A2D0(a1, v21);
    sub_10006A2D0(v24, v26);
    v5 = v58;
    goto LABEL_85;
  }

LABEL_89:
  sub_100069E2C(a1, v21);
  sub_10006A2D0(a1, v21);
  v49 = v24;
LABEL_90:
  sub_10006A2D0(v49, v26);
LABEL_91:
  sub_100093854();
LABEL_87:

  return v18;
}

uint64_t sub_1002E5D90(__int16 a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a8;
  v36 = a14;
  v37 = a6;
  v35 = a13;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v41 - 8);
  v20 = *(v43 + 64);
  __chkstk_darwin(v41);
  v40 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v42 = *(v45 - 8);
  v22 = *(v42 + 64);
  __chkstk_darwin(v45);
  v39 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v38 = qword_10051B7F0;
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  *(v24 + 24) = a9;
  *(v24 + 32) = a10;
  *(v24 + 40) = a1;
  *(v24 + 42) = a2;
  *(v24 + 48) = a3;
  *(v24 + 56) = a4;
  v25 = v36;
  *(v24 + 64) = v37;
  *(v24 + 72) = a7;
  v26 = a7;
  v27 = v44;
  *(v24 + 80) = v44;
  *(v24 + 88) = a11;
  v28 = v35;
  *(v24 + 96) = a12;
  *(v24 + 104) = v28;
  *(v24 + 112) = v25;
  aBlock[4] = sub_1002E78B4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CFD28;
  v29 = _Block_copy(aBlock);
  sub_100113B54(a9);
  sub_100069E2C(a3, a4);
  sub_10006A2BC(v26, v27);
  sub_10006A2BC(a11, a12);

  v30 = v39;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  v32 = v40;
  v31 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v43 + 8))(v32, v31);
  (*(v42 + 8))(v30, v45);
}

uint64_t sub_1002E60DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v24 = a1;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v15 = *(v27 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v27);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v20 = v25;
  v19[4] = v24;
  v19[5] = a2;
  aBlock[4] = v20;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);
  sub_100069E2C(a3, a4);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v27);
}

uint64_t sub_1002E6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22[1] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v25);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22[0] = qword_10051B7F0;
  (*(v15 + 16))(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v25);
}

uint64_t sub_1002E66E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v25);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22[1] = qword_10051B7F0;
  (*(v14 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v23;
  *(v18 + 24) = v19;
  (*(v14 + 32))(v18 + v17, v16, v13);
  aBlock[4] = sub_1002E75B0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CFA08;
  v20 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v25);
}