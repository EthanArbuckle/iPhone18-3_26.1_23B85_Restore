void *sub_1001855F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100186CDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100185638(uint64_t a1)
{
  v2 = sub_1001875E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185674(uint64_t a1)
{
  v2 = sub_1001875E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001856B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100186F94(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

id sub_10018573C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v6 = result;
    v7 = [result serverFriendlyDescription];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    sub_10014571C(v8, v10, 0xD000000000000011, 0x80000001004E2990);
    v11 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v11;
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v13 = v21;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v13;
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v14);
    v22 = v21;
    Date.init()();
    v15 = Date.epoch.getter();
    (*(v1 + 8))(v4, v0);
    v21 = v15;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = v22;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v19;
    sub_1004525D4(v16, v18, 0xD000000000000015, 0x80000001004E3D70, v20);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001859CC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v79[0] = 0;
  if (!sub_1000B9F08(v5, v4))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005DFB98);
    sub_1001865F4(a1, v79);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v33 = sub_10000D01C(v5, v4, v79);

    *(v31 + 4) = v33;
    v34 = "Bad value for minTimeBetweenPublish: %s";
    goto LABEL_103;
  }

  v6 = v79[0];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v79[0] = 0;
  if (!sub_1000B9F08(v8, v7))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFB98);
    sub_1001865F4(a1, v79);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v36 = sub_10000D01C(v8, v7, v79);

    *(v31 + 4) = v36;
    v34 = "Bad value for heartbeatPublish: %s";
    goto LABEL_103;
  }

  v78 = v79[0];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v79[0] = 0;
  if (!sub_1000B9F08(v10, v9))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A6F0(v37, qword_1005DFB98);
    sub_1001865F4(a1, v79);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v38 = sub_10000D01C(v10, v9, v79);

    *(v31 + 4) = v38;
    v34 = "Bad value for accuracyThreshold: %s";
    goto LABEL_103;
  }

  v77 = v79[0];
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v79[0] = 0;
  if (!sub_1000B9F08(v12, v11))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005DFB98);
    sub_1001865F4(a1, v79);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v40 = sub_10000D01C(v12, v11, v79);

    *(v31 + 4) = v40;
    v34 = "Bad value for expirationInterval: %s";
    goto LABEL_103;
  }

  v13 = v79[0];
  v15 = *(a1 + 88);
  v14 = *(a1 + 96);
  v79[0] = 0;
  if (!sub_1000B9F08(v15, v14))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005DFB98);
    sub_1001865F4(a1, v79);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_104;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79[0] = v32;
    *v31 = 136315138;

    sub_10018662C(a1);
    v42 = sub_10000D01C(v15, v14, v79);

    *(v31 + 4) = v42;
    v34 = "Bad value for minDistanceBetweenPublish: %s";
LABEL_103:
    _os_log_impl(&_mh_execute_header, v29, v30, v34, v31, 0xCu);
    sub_100004984(v32);

LABEL_105:
    v6 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v66 = 0;
    v13 = 0;
    v21 = 0;
    v24 = 0;
    v64 = 0;
    v65 = 0;
    v68 = 0;
    goto LABEL_106;
  }

  v17 = *(a1 + 104);
  v16 = *(a1 + 112);
  v18 = HIBYTE(v16) & 0xF;
  v19 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_88;
  }

  v21 = v79[0];
  if ((v16 & 0x1000000000000000) == 0)
  {
    if ((v16 & 0x2000000000000000) != 0)
    {
      v79[0] = *(a1 + 104);
      v79[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (v17 == 43)
      {
        if (v18)
        {
          if (--v18)
          {
            v24 = 0;
            v49 = v79 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                break;
              }

              ++v49;
              if (!--v18)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_86;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        swift_once();
LABEL_101:
        v73 = type metadata accessor for Logger();
        sub_10000A6F0(v73, qword_1005DFB98);
        sub_1001865F4(a1, v79);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        sub_10018662C(a1);
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v79[0] = v32;
          *v31 = 136315138;

          sub_10018662C(a1);
          v74 = sub_10000D01C(v17, v16, v79);

          *(v31 + 4) = v74;
          v34 = "Bad value for onDemandThreshold: %s";
          goto LABEL_103;
        }

        goto LABEL_104;
      }

      if (v17 != 45)
      {
        if (v18)
        {
          v24 = 0;
          v54 = v79;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            v54 = (v54 + 1);
            if (!--v18)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

      if (v18)
      {
        if (--v18)
        {
          v24 = 0;
          v43 = v79 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v45 - v44;
            if (__OFSUB__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v18)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }
    }

    else
    {
      if ((v17 & 0x1000000000000000) != 0)
      {
        v22 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v75 = *(a1 + 104);
        v76 = *(a1 + 112);
        v22 = _StringObject.sharedUTF8.getter();
      }

      v23 = *v22;
      if (v23 == 43)
      {
        if (v19 >= 1)
        {
          v18 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            if (v22)
            {
              v46 = v22 + 1;
              while (1)
              {
                v47 = *v46 - 48;
                if (v47 > 9)
                {
                  goto LABEL_86;
                }

                v48 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  goto LABEL_86;
                }

                v24 = v48 + v47;
                if (__OFADD__(v48, v47))
                {
                  goto LABEL_86;
                }

                ++v46;
                if (!--v18)
                {
                  goto LABEL_87;
                }
              }
            }

            goto LABEL_78;
          }

          goto LABEL_86;
        }

        goto LABEL_110;
      }

      if (v23 != 45)
      {
        if (v19)
        {
          v24 = 0;
          if (v22)
          {
            while (1)
            {
              v52 = *v22 - 48;
              if (v52 > 9)
              {
                goto LABEL_86;
              }

              v53 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_86;
              }

              v24 = v53 + v52;
              if (__OFADD__(v53, v52))
              {
                goto LABEL_86;
              }

              ++v22;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_78;
        }

LABEL_86:
        v24 = 0;
        LOBYTE(v18) = 1;
LABEL_87:
        if (v18)
        {
          goto LABEL_88;
        }

        goto LABEL_93;
      }

      if (v19 >= 1)
      {
        v18 = v19 - 1;
        if (v19 != 1)
        {
          v24 = 0;
          if (v22)
          {
            v25 = v22 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_86;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_86;
              }

              v24 = v27 - v26;
              if (__OFSUB__(v27, v26))
              {
                goto LABEL_86;
              }

              ++v25;
              if (!--v18)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_78:
          LOBYTE(v18) = 0;
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      __break(1u);
    }

    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v59 = *(a1 + 112);

  v24 = sub_1004BA5C8(v17, v16, 10);
  v61 = v60;

  if (v61)
  {
LABEL_88:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000A6F0(v57, qword_1005DFB98);
    sub_1001865F4(a1, v79);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v79[0] = v32;
      *v31 = 136315138;

      sub_10018662C(a1);
      v58 = sub_10000D01C(v17, v16, v79);

      *(v31 + 4) = v58;
      v34 = "Bad value for priority: %s";
      goto LABEL_103;
    }

LABEL_104:

    sub_10018662C(a1);
    goto LABEL_105;
  }

LABEL_93:
  v63 = *(a1 + 120);
  v62 = *(a1 + 128);
  v79[0] = 0;
  if (!sub_1000B9F08(v63, v62))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10000A6F0(v71, qword_1005DFB98);
    sub_1001865F4(a1, v79);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10018662C(a1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v79[0] = v32;
      *v31 = 136315138;

      sub_10018662C(a1);
      v72 = sub_10000D01C(v63, v62, v79);

      *(v31 + 4) = v72;
      v34 = "Bad value for minTimeBetweenVisitPublish: %s";
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  v64 = v79[0];
  v17 = *(a1 + 136);
  v16 = *(a1 + 144);
  v79[0] = 0;
  if (!sub_1000B9F08(v17, v16))
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_101;
    }

    goto LABEL_112;
  }

  v65 = v79[0];
  v67 = *(a1 + 48);
  v66 = *(a1 + 56);

  sub_10018662C(a1);
  v68 = *(a1 + 80);
  v70 = v77;
  v69 = v78;
LABEL_106:
  *a2 = v6;
  a2[1] = v69;
  a2[2] = v70;
  a2[3] = v67;
  a2[4] = v66;
  a2[5] = v13;
  a2[6] = v68;
  a2[7] = v21;
  a2[8] = v24;
  a2[9] = v64;
  a2[10] = v65;
}

unint64_t sub_10018665C()
{
  result = qword_1005ADCA8;
  if (!qword_1005ADCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCA8);
  }

  return result;
}

uint64_t sub_1001866B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100186720()
{
  result = qword_1005ADCD8;
  if (!qword_1005ADCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCD8);
  }

  return result;
}

unint64_t sub_100186774()
{
  result = qword_1005ADCE0;
  if (!qword_1005ADCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCE0);
  }

  return result;
}

uint64_t sub_1001867C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADCB0, &qword_1004CF4F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100186834(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADCC8, &qword_1004CC1F0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001868C4()
{
  result = qword_1005ADD08;
  if (!qword_1005ADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD08);
  }

  return result;
}

unint64_t sub_100186918()
{
  result = qword_1005ADD10;
  if (!qword_1005ADD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD10);
  }

  return result;
}

uint64_t sub_10018696C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1001869D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100186A04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_100186A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100186AD4()
{
  result = qword_1005ADD20;
  if (!qword_1005ADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD20);
  }

  return result;
}

unint64_t sub_100186B2C()
{
  result = qword_1005ADD28;
  if (!qword_1005ADD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD28);
  }

  return result;
}

unint64_t sub_100186B84()
{
  result = qword_1005ADD30;
  if (!qword_1005ADD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD30);
  }

  return result;
}

unint64_t sub_100186BDC()
{
  result = qword_1005ADD38;
  if (!qword_1005ADD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD38);
  }

  return result;
}

unint64_t sub_100186C34()
{
  result = qword_1005ADD40;
  if (!qword_1005ADD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD40);
  }

  return result;
}

uint64_t sub_100186C88()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

void *sub_100186CDC(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005ADD48, &qword_1004CC608);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100011AEC(a1, a1[3]);
  sub_100186E98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    sub_10004B564(&qword_1005ADD58, &qword_1004CC610);
    sub_100187634(&qword_1005ADD60, sub_100186EEC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100004984(a1);
  }

  return v9;
}

unint64_t sub_100186E98()
{
  result = qword_1005ADD50;
  if (!qword_1005ADD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD50);
  }

  return result;
}

unint64_t sub_100186EEC()
{
  result = qword_1005ADD68;
  if (!qword_1005ADD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD68);
  }

  return result;
}

unint64_t sub_100186F40()
{
  result = qword_1005ADD70;
  if (!qword_1005ADD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD70);
  }

  return result;
}

uint64_t sub_100186F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_10004B564(&qword_1005ADD78, &qword_1004CC618);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v50);
  v8 = &v34 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001875E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v10 = v5;
  v49 = a2;
  LOBYTE(v61[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v12;
  LOBYTE(v61[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v14;
  v43 = v13;
  LOBYTE(v61[0]) = 2;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v15;
  LOBYTE(v61[0]) = 3;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v16;
  LOBYTE(v61[0]) = 4;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v17;
  LOBYTE(v61[0]) = 5;
  v71 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v61[0]) = 6;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v19;
  v37 = v18;
  LOBYTE(v61[0]) = 7;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v20;
  LOBYTE(v61[0]) = 8;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v21;
  v72 = 9;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  v25 = v71 & 1;
  (*(v10 + 8))(v8, v50);
  v26 = v48;
  *&v51 = v11;
  *(&v51 + 1) = v48;
  *&v52 = v43;
  *(&v52 + 1) = v47;
  *&v53 = v42;
  *(&v53 + 1) = v46;
  *&v54 = v41;
  *(&v54 + 1) = v45;
  v27 = v39;
  *&v55 = v40;
  *(&v55 + 1) = v44;
  LOBYTE(v56) = v25;
  *(&v56 + 1) = v37;
  *&v57 = v39;
  *(&v57 + 1) = v35;
  *&v58 = v38;
  *(&v58 + 1) = v34;
  *&v59 = v36;
  *(&v59 + 1) = v22;
  v60 = v24;
  sub_1001865F4(&v51, v61);
  sub_100004984(a1);
  v61[0] = v11;
  v61[1] = v26;
  v61[2] = v43;
  v61[3] = v47;
  v61[4] = v42;
  v61[5] = v46;
  v61[6] = v41;
  v61[7] = v45;
  v61[8] = v40;
  v61[9] = v44;
  v62 = v25;
  v63 = v37;
  v64 = v27;
  v65 = v35;
  v66 = v38;
  v67 = v34;
  v68 = v36;
  v69 = v22;
  v70 = v24;
  result = sub_10018662C(v61);
  v29 = v58;
  v30 = v49;
  *(v49 + 96) = v57;
  *(v30 + 112) = v29;
  *(v30 + 128) = v59;
  *(v30 + 144) = v60;
  v31 = v54;
  *(v30 + 32) = v53;
  *(v30 + 48) = v31;
  v32 = v56;
  *(v30 + 64) = v55;
  *(v30 + 80) = v32;
  v33 = v52;
  *v30 = v51;
  *(v30 + 16) = v33;
  return result;
}

unint64_t sub_1001875E0()
{
  result = qword_1005ADD80;
  if (!qword_1005ADD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD80);
  }

  return result;
}

uint64_t sub_100187634(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADD58, &qword_1004CC610);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001876B8()
{
  result = qword_1005ADDA0;
  if (!qword_1005ADDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDA0);
  }

  return result;
}

unint64_t sub_100187730()
{
  result = qword_1005ADDA8;
  if (!qword_1005ADDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDA8);
  }

  return result;
}

unint64_t sub_100187788()
{
  result = qword_1005ADDB0;
  if (!qword_1005ADDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDB0);
  }

  return result;
}

unint64_t sub_1001877E0()
{
  result = qword_1005ADDB8;
  if (!qword_1005ADDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDB8);
  }

  return result;
}

unint64_t sub_100187838()
{
  result = qword_1005ADDC0;
  if (!qword_1005ADDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDC0);
  }

  return result;
}

unint64_t sub_100187890()
{
  result = qword_1005ADDC8;
  if (!qword_1005ADDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDC8);
  }

  return result;
}

unint64_t sub_1001878E8()
{
  result = qword_1005ADDD0;
  if (!qword_1005ADDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDD0);
  }

  return result;
}

uint64_t sub_10018793C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100187984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001879E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentDevice];
  if (v11 && (v12 = v11, v13 = [v11 uniqueDeviceIdentifier], v12, v13))
  {
    v55 = a2;
    v59 = v7;
    v60 = v6;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    v17 = *a1;
    v16 = a1[1];
    v18 = URLComponents.path.modify();
    v56 = v17;
    v57 = v16;
    v19._countAndFlagsBits = v17;
    v19._object = v16;
    String.append(_:)(v19);
    v18(&v61, 0);
    v20 = URLComponents.path.modify();
    v21._countAndFlagsBits = 47;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v20(&v61, 0);
    v22 = URLComponents.path.modify();
    v23._countAndFlagsBits = v58;
    v23._object = v15;
    String.append(_:)(v23);

    v22(&v61, 0);
    v24 = URLComponents.path.modify();
    v25._countAndFlagsBits = 0xD000000000000016;
    v25._object = 0x80000001004E4020;
    String.append(_:)(v25);
    v24(&v61, 0);
    v26 = (a1 + *(type metadata accessor for Credentials(0) + 36));
    if (v26[1])
    {
      v27 = *v26;
      v28 = v26[1];

      URLComponents.host.setter();
      a3[3] = type metadata accessor for AnyEndpoint();
      a3[4] = sub_1001886EC();
      v29 = sub_10000331C(a3);
      v31 = v59;
      v30 = v60;
      (*(v59 + 16))(v29, v10, v60);
      v32 = sub_100188744();
      v34 = v33;
      v36 = v35;
      a3[8] = &type metadata for SecureLocationsLabelledLocationsRequest;
      a3[9] = sub_1001889A8();
      a3[5] = v32;
      a3[6] = v34;
      a3[7] = v36;
      v38 = a1[4];
      v37 = a1[5];
      a3[13] = &type metadata for AnyRequestCredential;
      a3[14] = sub_1001889FC();
      v39 = swift_allocObject();
      a3[10] = v39;
      v40 = v57;
      v39[2] = v56;
      v39[3] = v40;
      v39[4] = v38;
      v39[5] = v37;
      v41 = *(v31 + 8);

      return v41(v10, v30);
    }

    v49 = v59;
    v48 = v60;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000A6F0(v50, qword_1005DFB98);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    a2 = v55;
    if (v53)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Unable to get appHostName to create request for LabelledLocations", v54, 2u);
    }

    v61 = xmmword_1004C52D0;
    v47 = 2;
    v62 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    result = (*(v49 + 8))(v10, v48);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFB98);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to get device identifier to create request for LabelledLocations", v46, 2u);
    }

    v61 = xmmword_1004CC840;
    v62 = 2;
    sub_1000C7488();
    result = swift_willThrowTypedImpl();
    v47 = 1;
  }

  *a2 = v47;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_100187F48(uint64_t a1)
{
  v2 = sub_1001889A8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100187F84(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADE00, &qword_1004CC900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100188EAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v23[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v23[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v23[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v23[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[7];
  v23[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v23[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = v3[9];
  v22 = v3[10];
  v23[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001881BC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1001882C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100188A50(*a1);
  *a2 = result;
  return result;
}

void sub_1001882F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x7354657461647075;
  if (v2 != 5)
  {
    v6 = 0x644972657375;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656475746974616CLL;
  if (v2 != 3)
  {
    v8 = 0x64757469676E6F6CLL;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v10 = 0x7079546C6562616CLL;
    v9 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1001883BC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7354657461647075;
  if (v1 != 5)
  {
    v3 = 0x644972657375;
  }

  v4 = 0x656475746974616CLL;
  if (v1 != 3)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0x7079546C6562616CLL;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_100188484@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100188A50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001884AC(uint64_t a1)
{
  v2 = sub_100188EAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001884E8(uint64_t a1)
{
  v2 = sub_100188EAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100188524@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100188A9C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1001885B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001004E40A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100188648(uint64_t a1)
{
  v2 = sub_100189324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100188684(uint64_t a1)
{
  v2 = sub_100189324();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001886C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001891A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001886EC()
{
  result = qword_1005ADDD8;
  if (!qword_1005ADDD8)
  {
    type metadata accessor for AnyEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDD8);
  }

  return result;
}

id sub_100188744()
{
  v12 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v1 = result;
    v2 = [result serverFriendlyDescription];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    sub_10014571C(v3, v5, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v7);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x747065636341, 0xE600000000000000, v8);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(3157554, 0xE300000000000000, 0xD000000000000014, 0x80000001004E4040, v9);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0xD000000000000013, 0x80000001004E4060, v10);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0x72657665726F46, 0xE700000000000000, 0xD000000000000012, 0x80000001004E4080, v11);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001889A8()
{
  result = qword_1005ADDE0;
  if (!qword_1005ADDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDE0);
  }

  return result;
}

unint64_t sub_1001889FC()
{
  result = qword_1005ADDE8;
  if (!qword_1005ADDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDE8);
  }

  return result;
}

unint64_t sub_100188A50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B840, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100188A9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADDF0, &qword_1004CC8F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100188EAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v38 = a2;
    v14 = v11;
    LOBYTE(v45[0]) = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v37 + 1) = v16;
    *&v37 = v15;
    LOBYTE(v45[0]) = 2;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    LOBYTE(v45[0]) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    LOBYTE(v45[0]) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    LOBYTE(v45[0]) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    v54 = 6;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    (*(v6 + 8))(v9, v5);
    *&v39 = v14;
    *(&v39 + 1) = v13;
    v27 = v37;
    v40 = v37;
    v28 = v36;
    *&v41 = v36;
    *(&v41 + 1) = v18;
    *&v42 = v20;
    *(&v42 + 1) = v22;
    *&v43 = v24;
    v29 = v35;
    *(&v43 + 1) = v35;
    v44 = v26;
    sub_1000C81D0(&v39, v45);
    sub_100004984(a1);
    v45[0] = v14;
    v45[1] = v13;
    v46 = __PAIR128__(*(&v37 + 1), v27);
    v47 = v28;
    v48 = v18;
    v49 = v20;
    v50 = v22;
    v51 = v24;
    v52 = v29;
    v53 = v26;
    result = sub_1000C822C(v45);
    v31 = v42;
    v32 = v38;
    *(v38 + 32) = v41;
    *(v32 + 48) = v31;
    *(v32 + 64) = v43;
    *(v32 + 80) = v44;
    v33 = v40;
    *v32 = v39;
    *(v32 + 16) = v33;
  }

  return result;
}

unint64_t sub_100188EAC()
{
  result = qword_1005ADDF8;
  if (!qword_1005ADDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADDF8);
  }

  return result;
}

uint64_t sub_100188F1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_100188F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100188FEC()
{
  result = qword_1005ADE08;
  if (!qword_1005ADE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE08);
  }

  return result;
}

unint64_t sub_100189044()
{
  result = qword_1005ADE10;
  if (!qword_1005ADE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE10);
  }

  return result;
}

unint64_t sub_10018909C()
{
  result = qword_1005ADE18;
  if (!qword_1005ADE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE18);
  }

  return result;
}

unint64_t sub_1001890F4()
{
  result = qword_1005ADE20;
  if (!qword_1005ADE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE20);
  }

  return result;
}

unint64_t sub_10018914C()
{
  result = qword_1005ADE28;
  if (!qword_1005ADE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE28);
  }

  return result;
}

void *sub_1001891A0(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005ADE30, &unk_1004CCC40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100011AEC(a1, a1[3]);
  sub_100189324();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    sub_10004B564(&qword_1005AABB8, &qword_1004C4610);
    sub_1000F78FC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100004984(a1);
  }

  return v9;
}

unint64_t sub_100189324()
{
  result = qword_1005ADE38;
  if (!qword_1005ADE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE38);
  }

  return result;
}

unint64_t sub_10018938C()
{
  result = qword_1005ADE40;
  if (!qword_1005ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE40);
  }

  return result;
}

unint64_t sub_1001893E4()
{
  result = qword_1005ADE48;
  if (!qword_1005ADE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE48);
  }

  return result;
}

unint64_t sub_10018943C()
{
  result = qword_1005ADE50;
  if (!qword_1005ADE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE50);
  }

  return result;
}

uint64_t sub_100189490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1 + *(type metadata accessor for Credentials(0) + 32);
  v14 = v13 + *(type metadata accessor for Credentials.SecureLocationsProperties(0) + 20);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10018977C(v7);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No url found in account bag", v18, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v12, v7, v8);
    v21 = URLComponents.path.modify();
    v22._countAndFlagsBits = 0x6863746566;
    v22._object = 0xE500000000000000;
    String.append(_:)(v22);
    v21(v23, 0);
    return v20(a2, v12, v8);
  }
}

uint64_t sub_10018977C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1001897F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001898BC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100189974()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100189A3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018AF70(*a1);
  *a2 = result;
  return result;
}

void sub_100189A6C(unint64_t *a1@<X8>)
{
  v2 = 0xEE007379654B6574;
  v3 = 0x7562697274736964;
  v4 = 0xD000000000000014;
  v5 = 0x80000001004DE390;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000015;
    v5 = 0x80000001004DE3B0;
  }

  if (*v1)
  {
    v3 = 1818322280;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100189BA4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADEB8, &unk_1004CD0B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018B724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v15 = v3[2];
    HIBYTE(v14) = 1;
    sub_10004B564(&qword_1005ADEC8, &qword_1004CE150);
    sub_10018B778();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v3[3];
    HIBYTE(v14) = 2;
    type metadata accessor for SPSecureLocationSubscriptionMode(0);
    sub_10018B7FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = *(v3 + 32);
    HIBYTE(v14) = 3;
    sub_10018B854();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100189DBC()
{
  v1 = 1682533734;
  v2 = 1701080941;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E69;
  }

  if (*v0)
  {
    v1 = 7562345;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100189E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018AFBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100189E44(uint64_t a1)
{
  v2 = sub_10018B724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189E80(uint64_t a1)
{
  v2 = sub_10018B724();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189ED4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADE70, &qword_1004CD090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018ADF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v20 = *v3;
  LOBYTE(v18[0]) = 0;
  sub_10004B564(&qword_1005ADE80, &qword_1004CD098);
  sub_10018AE44();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 88);
    v28[4] = *(v3 + 72);
    v28[5] = v12;
    v28[6] = *(v3 + 104);
    v29 = *(v3 + 120);
    v13 = *(v3 + 24);
    v28[0] = *(v3 + 8);
    v28[1] = v13;
    v14 = *(v3 + 56);
    v28[2] = *(v3 + 40);
    v28[3] = v14;
    v15 = *(v3 + 88);
    v24 = *(v3 + 72);
    v25 = v15;
    v26 = *(v3 + 104);
    v27 = *(v3 + 120);
    v16 = *(v3 + 24);
    v20 = *(v3 + 8);
    v21 = v16;
    v17 = *(v3 + 56);
    v22 = *(v3 + 40);
    v23 = v17;
    v30 = 1;
    sub_1000C8BA0(v28, v18);
    sub_10018AF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18[4] = v24;
    v18[5] = v25;
    v18[6] = v26;
    v19 = v27;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    sub_1000C8BFC(v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10018A144(uint64_t a1)
{
  v2 = sub_10018B8A8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10018A180()
{
  if (*v0)
  {
    result = 0x6F43746E65696C63;
  }

  else
  {
    result = 0x6863746566;
  }

  *v0;
  return result;
}

uint64_t sub_10018A1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746566 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10018A2A4(uint64_t a1)
{
  v2 = sub_10018ADF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018A2E0(uint64_t a1)
{
  v2 = sub_10018ADF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018A31C(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_100189ED4(a1);
}

uint64_t sub_10018A368(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADEB0, &qword_1004CD0A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018B5C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  HIBYTE(v16) = 0;
  sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
  sub_10018B6A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[3];
    HIBYTE(v16) = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v3[4];
    v15 = *(v3 + 40);
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10018A5D0()
{
  v1 = 0x6E6F697461636F6CLL;
  v2 = 0x6D4664656C696166;
  if (*v0 != 2)
  {
    v2 = 0x65566769666E6F63;
  }

  if (*v0)
  {
    v1 = 0x6F43737574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10018A670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018B11C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018A698(uint64_t a1)
{
  v2 = sub_10018B5C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018A6D4(uint64_t a1)
{
  v2 = sub_10018B5C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10018A710@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10018B29C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

id sub_10018A76C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v37 = *(a2 + 64);
  v38 = v4;
  v39 = *(a2 + 96);
  v40 = *(a2 + 112);
  v5 = *(a2 + 16);
  v33 = *a2;
  v34 = v5;
  v6 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v6;
  if (!*(a1 + 16))
  {
    sub_1000C8BFC(a2);

    return 0;
  }

  v32 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v8 = result;
    v9 = [result serverFriendlyDescription];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    sub_10014571C(v10, v12, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v15);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x747065636341, 0xE600000000000000, v16);
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v13 = v32;
    v23 = a1;
    v31 = v40;
    v27 = v36;
    v17 = type metadata accessor for JSONEncoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_10018AA7C();
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v22 = v21;

    sub_10018AAD0(&v23);
    if (v2)
    {
    }

    else
    {

      sub_10002CF44(v20, v22);

      sub_10001A794(v20, v22);
    }

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_10018AA7C()
{
  result = qword_1005ADE58;
  if (!qword_1005ADE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE58);
  }

  return result;
}

uint64_t sub_10018AB00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10018AB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10018ABA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10018ABC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10018AC10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10018AC80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10018AC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10018ACDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018AD44()
{
  result = qword_1005ADE60;
  if (!qword_1005ADE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE60);
  }

  return result;
}

unint64_t sub_10018AD9C()
{
  result = qword_1005ADE68;
  if (!qword_1005ADE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE68);
  }

  return result;
}

unint64_t sub_10018ADF0()
{
  result = qword_1005ADE78;
  if (!qword_1005ADE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE78);
  }

  return result;
}

unint64_t sub_10018AE44()
{
  result = qword_1005ADE88;
  if (!qword_1005ADE88)
  {
    sub_10004B610(&qword_1005ADE80, &qword_1004CD098);
    sub_10018AEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE88);
  }

  return result;
}

unint64_t sub_10018AEC8()
{
  result = qword_1005ADE90;
  if (!qword_1005ADE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE90);
  }

  return result;
}

unint64_t sub_10018AF1C()
{
  result = qword_1005ADE98;
  if (!qword_1005ADE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADE98);
  }

  return result;
}

unint64_t sub_10018AF70(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B908, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018AFBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1682533734 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10018B11C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D4664656C696166 && a2 == 0xEB00000000736449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10018B29C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADEA0, &qword_1004CD0A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018B5C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
  v24 = 0;
  sub_10018B61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v25;
  LOBYTE(v25) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v12;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v24 = 2;
  sub_10001CCC4(&qword_1005A9E80);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v11;
  v13 = v25;
  LOBYTE(v25) = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = sub_100004984(a1);
  v20 = v21;
  v19 = v22;
  *a2 = v23;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v17 & 1;
  return result;
}

unint64_t sub_10018B5C8()
{
  result = qword_1005ADEA8;
  if (!qword_1005ADEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEA8);
  }

  return result;
}

unint64_t sub_10018B61C()
{
  result = qword_1005AB0F8;
  if (!qword_1005AB0F8)
  {
    sub_10004B610(&qword_1005AB0F0, &qword_1004CDC90);
    sub_1000F7CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0F8);
  }

  return result;
}

unint64_t sub_10018B6A0()
{
  result = qword_1005AB130;
  if (!qword_1005AB130)
  {
    sub_10004B610(&qword_1005AB0F0, &qword_1004CDC90);
    sub_1000F7D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB130);
  }

  return result;
}

unint64_t sub_10018B724()
{
  result = qword_1005ADEC0;
  if (!qword_1005ADEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEC0);
  }

  return result;
}

unint64_t sub_10018B778()
{
  result = qword_1005ADED0;
  if (!qword_1005ADED0)
  {
    sub_10004B610(&qword_1005ADEC8, &qword_1004CE150);
    sub_10010670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADED0);
  }

  return result;
}

unint64_t sub_10018B7FC()
{
  result = qword_1005ADED8;
  if (!qword_1005ADED8)
  {
    type metadata accessor for SPSecureLocationSubscriptionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADED8);
  }

  return result;
}

unint64_t sub_10018B854()
{
  result = qword_1005ADEE0;
  if (!qword_1005ADEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEE0);
  }

  return result;
}

unint64_t sub_10018B8A8()
{
  result = qword_1005ADEE8;
  if (!qword_1005ADEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEE8);
  }

  return result;
}

unint64_t sub_10018B940()
{
  result = qword_1005ADEF0;
  if (!qword_1005ADEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEF0);
  }

  return result;
}

unint64_t sub_10018B998()
{
  result = qword_1005ADEF8;
  if (!qword_1005ADEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADEF8);
  }

  return result;
}

unint64_t sub_10018B9F0()
{
  result = qword_1005ADF00;
  if (!qword_1005ADF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF00);
  }

  return result;
}

unint64_t sub_10018BA48()
{
  result = qword_1005ADF08;
  if (!qword_1005ADF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF08);
  }

  return result;
}

unint64_t sub_10018BAA0()
{
  result = qword_1005ADF10;
  if (!qword_1005ADF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF10);
  }

  return result;
}

unint64_t sub_10018BAF8()
{
  result = qword_1005ADF18;
  if (!qword_1005ADF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF18);
  }

  return result;
}

unint64_t sub_10018BB50()
{
  result = qword_1005ADF20;
  if (!qword_1005ADF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF20);
  }

  return result;
}

unint64_t sub_10018BBA8()
{
  result = qword_1005ADF28;
  if (!qword_1005ADF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF28);
  }

  return result;
}

unint64_t sub_10018BC00()
{
  result = qword_1005ADF30;
  if (!qword_1005ADF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF30);
  }

  return result;
}

unint64_t sub_10018BC58()
{
  result = qword_1005ADF38;
  if (!qword_1005ADF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF38);
  }

  return result;
}

unint64_t sub_10018BCAC()
{
  result = qword_1005ADF40;
  if (!qword_1005ADF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF40);
  }

  return result;
}

uint64_t sub_10018BD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1 + *(type metadata accessor for Credentials(0) + 32);
  v14 = v13 + *(type metadata accessor for Credentials.SecureLocationsProperties(0) + 20);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10018977C(v7);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No url found in account bag", v18, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v12, v7, v8);
    v21 = URLComponents.path.modify();
    v22._countAndFlagsBits = 7037793;
    v22._object = 0xE300000000000000;
    String.append(_:)(v22);
    v21(v23, 0);
    return v20(a2, v12, v8);
  }
}

uint64_t sub_10018BFF8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADF88, &unk_1004CD8C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018D220();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v24 = v3[4];
    LOBYTE(v22[0]) = 3;
    sub_10004B564(&qword_1005A9E18, &qword_1004C3338);
    sub_10018D274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 15);
    v32[4] = *(v3 + 13);
    v32[5] = v15;
    v32[6] = *(v3 + 17);
    v33 = v3[19];
    v16 = *(v3 + 7);
    v32[0] = *(v3 + 5);
    v32[1] = v16;
    v17 = *(v3 + 11);
    v32[2] = *(v3 + 9);
    v32[3] = v17;
    v18 = *(v3 + 15);
    v28 = *(v3 + 13);
    v29 = v18;
    v30 = *(v3 + 17);
    v31 = v3[19];
    v19 = *(v3 + 7);
    v24 = *(v3 + 5);
    v25 = v19;
    v20 = *(v3 + 11);
    v26 = *(v3 + 9);
    v27 = v20;
    v34 = 4;
    sub_1000C8BA0(v32, v22);
    sub_10018AF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v30;
    v23 = v31;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_1000C8BFC(v22);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10018C2D4(uint64_t a1)
{
  v2 = sub_10018D34C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

Swift::Int sub_10018C31C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10018C3FC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10018C4C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10018C5A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018D4B8(*a1);
  *a2 = result;
  return result;
}

void sub_10018C5D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000053;
  v4 = 0x54646E6553706174;
  v5 = 0xE500000000000000;
  v6 = 0x6449646D63;
  v7 = 0xE600000000000000;
  v8 = 0x737574617473;
  if (v2 != 3)
  {
    v8 = 0x6F43746E65696C63;
    v7 = 0xED0000747865746ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 29556;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10018C670()
{
  v1 = *v0;
  v2 = 0x54646E6553706174;
  v3 = 0x6449646D63;
  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x6F43746E65696C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 29556;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10018C708@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10018D4B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10018C730(uint64_t a1)
{
  v2 = sub_10018D220();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018C76C(uint64_t a1)
{
  v2 = sub_10018D220();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018C7C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_10004B564(&qword_1005ADF50, &unk_1004CD580);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018CEB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
    sub_10018CF08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10018C964()
{
  if (*v0)
  {
    result = 0x73726F727265;
  }

  else
  {
    result = 1682533734;
  }

  *v0;
  return result;
}

uint64_t sub_10018C994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1682533734 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726F727265 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10018CA6C(uint64_t a1)
{
  v2 = sub_10018CEB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018CAA8(uint64_t a1)
{
  v2 = sub_10018CEB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10018CB04(__int128 *a1)
{
  v27 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v3 = result;
    v4 = [result serverFriendlyDescription];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    sub_10014571C(v5, v7, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v9);
    v10 = type metadata accessor for JSONEncoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v24 = a1[8];
    v25 = a1[9];
    v26 = a1[10];
    v20 = a1[4];
    v21 = a1[5];
    v22 = a1[6];
    v23 = a1[7];
    v16 = *a1;
    v17 = a1[1];
    v18 = a1[2];
    v19 = a1[3];
    sub_10018CE30();
    v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v15 = v14;

    sub_10018CE84(a1);

    sub_10002CF44(v13, v15);

    sub_10001A794(v13, v15);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10018CE30()
{
  result = qword_1005ADF48;
  if (!qword_1005ADF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF48);
  }

  return result;
}

unint64_t sub_10018CEB4()
{
  result = qword_1005ADF58;
  if (!qword_1005ADF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF58);
  }

  return result;
}

unint64_t sub_10018CF08()
{
  result = qword_1005ADCF0;
  if (!qword_1005ADCF0)
  {
    sub_10004B610(&qword_1005ADCB0, &qword_1004CF4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADCF0);
  }

  return result;
}

uint64_t sub_10018CF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_10018CFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018D06C()
{
  result = qword_1005ADF60;
  if (!qword_1005ADF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF60);
  }

  return result;
}

unint64_t sub_10018D0C4()
{
  result = qword_1005ADF68;
  if (!qword_1005ADF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF68);
  }

  return result;
}

unint64_t sub_10018D11C()
{
  result = qword_1005ADF70;
  if (!qword_1005ADF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF70);
  }

  return result;
}

unint64_t sub_10018D174()
{
  result = qword_1005ADF78;
  if (!qword_1005ADF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF78);
  }

  return result;
}

unint64_t sub_10018D1CC()
{
  result = qword_1005ADF80;
  if (!qword_1005ADF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF80);
  }

  return result;
}

unint64_t sub_10018D220()
{
  result = qword_1005ADF90;
  if (!qword_1005ADF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF90);
  }

  return result;
}

unint64_t sub_10018D274()
{
  result = qword_1005ADF98;
  if (!qword_1005ADF98)
  {
    sub_10004B610(&qword_1005A9E18, &qword_1004C3338);
    sub_10018D2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADF98);
  }

  return result;
}

unint64_t sub_10018D2F8()
{
  result = qword_1005ADFA0;
  if (!qword_1005ADFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFA0);
  }

  return result;
}

unint64_t sub_10018D34C()
{
  result = qword_1005ADFA8;
  if (!qword_1005ADFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFA8);
  }

  return result;
}

unint64_t sub_10018D3B4()
{
  result = qword_1005ADFB0;
  if (!qword_1005ADFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFB0);
  }

  return result;
}

unint64_t sub_10018D40C()
{
  result = qword_1005ADFB8;
  if (!qword_1005ADFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFB8);
  }

  return result;
}

unint64_t sub_10018D464()
{
  result = qword_1005ADFC0;
  if (!qword_1005ADFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFC0);
  }

  return result;
}

unint64_t sub_10018D4B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B988, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018D504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1 + *(type metadata accessor for Credentials(0) + 32);
  v14 = v13 + *(type metadata accessor for Credentials.SecureLocationsProperties(0) + 20);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10018977C(v7);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No url found in account bag", v18, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v12, v7, v8);
    v21 = URLComponents.path.modify();
    v22._countAndFlagsBits = 0x74696D627573;
    v22._object = 0xE600000000000000;
    String.append(_:)(v22);
    v21(v23, 0);
    return v20(a2, v12, v8);
  }
}

uint64_t sub_10018D7F0(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADFF0, &qword_1004CDC88);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018E5D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[2];
  v11 = *v3;
  v26 = v3[1];
  v27 = v10;
  v12 = v3[2];
  v13 = v3[4];
  v28 = v3[3];
  v29 = v13;
  v14 = *v3;
  v22 = v12;
  v23 = v28;
  v24 = v3[4];
  v25 = v14;
  v20 = v11;
  v21 = v26;
  v19 = 0;
  sub_10018E628(&v25, v18);
  sub_10018E684();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[0] = v20;
  v18[1] = v21;
  sub_10018E400(v18);
  if (!v2)
  {
    v17 = *(v3 + 10);
    v16[7] = 1;
    sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
    sub_10018B6A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v30 + 8))(v8, v5);
}

uint64_t sub_10018DA20(uint64_t a1)
{
  v2 = sub_10018E6D8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10018DA5C()
{
  if (*v0)
  {
    result = 0x74696D627573;
  }

  else
  {
    result = 0x6F43746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_10018DAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D627573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10018DB80(uint64_t a1)
{
  v2 = sub_10018E5D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018DBBC(uint64_t a1)
{
  v2 = sub_10018E5D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018DC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10018DCC4(uint64_t a1)
{
  v2 = sub_10018E580();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018DD00(uint64_t a1)
{
  v2 = sub_10018E580();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018DD3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADFE0, &qword_1004CDC80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018E580();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100004984(a1);
  *a2 = v11;
  *(a2 + 8) = v13 & 1;
  return result;
}

id sub_10018DEC0(uint64_t a1, __int128 *a2)
{
  v4 = a2[3];
  v52 = a2[2];
  v53 = v4;
  v54 = a2[4];
  v5 = a2[1];
  v50 = *a2;
  v51 = v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    sub_10018E400(a2);

    return 0;
  }

  v49 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v12 = result;
    v13 = [result serverFriendlyDescription];

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    sub_10014571C(v14, v16, 0xD000000000000011, 0x80000001004E2990);
    v17 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37 = v17;
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v19 = v37;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v37 = v19;
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v20);
    v49 = v37;
    Date.init()();
    v21 = Date.epoch.getter();
    (*(v7 + 8))(v10, v6);
    *&v37 = v21;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v49;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v37 = v25;
    sub_1004525D4(v22, v24, 0xD000000000000015, 0x80000001004E3D70, v26);
    v27 = v37;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v37 = v27;
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x747065636341, 0xE600000000000000, v28);
    v32 = v37;
    v48 = a1;
    v49 = v37;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v43 = v50;
    v44 = v51;
    v29 = type metadata accessor for JSONEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    sub_10018E37C();
    v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v35 = v34;

    sub_10018E3D0(&v43);

    sub_10002CF44(v33, v35);

    sub_10001A794(v33, v35);
    return v32;
  }

  __break(1u);
  return result;
}

unint64_t sub_10018E37C()
{
  result = qword_1005ADFC8;
  if (!qword_1005ADFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsSubmitResponseBody(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SecureLocationsSubmitResponseBody(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_10018E4D4()
{
  result = qword_1005ADFD0;
  if (!qword_1005ADFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFD0);
  }

  return result;
}

unint64_t sub_10018E52C()
{
  result = qword_1005ADFD8;
  if (!qword_1005ADFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFD8);
  }

  return result;
}

unint64_t sub_10018E580()
{
  result = qword_1005ADFE8;
  if (!qword_1005ADFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFE8);
  }

  return result;
}

unint64_t sub_10018E5D4()
{
  result = qword_1005ADFF8;
  if (!qword_1005ADFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADFF8);
  }

  return result;
}

unint64_t sub_10018E684()
{
  result = qword_1005AE000;
  if (!qword_1005AE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE000);
  }

  return result;
}

unint64_t sub_10018E6D8()
{
  result = qword_1005AE008;
  if (!qword_1005AE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE008);
  }

  return result;
}

unint64_t sub_10018E750()
{
  result = qword_1005AE010;
  if (!qword_1005AE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE010);
  }

  return result;
}

unint64_t sub_10018E7A8()
{
  result = qword_1005AE018;
  if (!qword_1005AE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE018);
  }

  return result;
}

unint64_t sub_10018E800()
{
  result = qword_1005AE020;
  if (!qword_1005AE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE020);
  }

  return result;
}

unint64_t sub_10018E858()
{
  result = qword_1005AE028;
  if (!qword_1005AE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE028);
  }

  return result;
}

unint64_t sub_10018E8B0()
{
  result = qword_1005AE030;
  if (!qword_1005AE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE030);
  }

  return result;
}

unint64_t sub_10018E908()
{
  result = qword_1005AE038;
  if (!qword_1005AE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE038);
  }

  return result;
}

uint64_t sub_10018E95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1 + *(type metadata accessor for Credentials(0) + 32);
  v14 = v13 + *(type metadata accessor for Credentials.SecureLocationsProperties(0) + 20);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10018977C(v7);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No url found in account bag", v18, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v12, v7, v8);
    v21 = URLComponents.path.modify();
    v22._countAndFlagsBits = 0x7263736275736E75;
    v22._object = 0xEB00000000656269;
    String.append(_:)(v22);
    v21(v23, 0);
    return v20(a2, v12, v8);
  }
}

uint64_t sub_10018EC54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = sub_10004B564(&qword_1005AE080, &qword_1004CE148);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018FA90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_10004B564(&qword_1005ADEC8, &qword_1004CE150);
    sub_10018FAE4(&qword_1005ADED0, &qword_1005ADEC8, &qword_1004CE150, sub_10010670C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v13;
    v18 = 2;
    type metadata accessor for SPSecureLocationSubscriptionMode(0);
    sub_10018B7FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10018EE68()
{
  v1 = 7562345;
  if (*v0 != 1)
  {
    v1 = 1701080941;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1682533734;
  }
}

uint64_t sub_10018EEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018FDE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018EED4(uint64_t a1)
{
  v2 = sub_10018FA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018EF10(uint64_t a1)
{
  v2 = sub_10018FA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018EF6C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AE058, &qword_1004CE138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018F9E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v20 = *v3;
  LOBYTE(v18[0]) = 0;
  sub_10004B564(&qword_1005AE068, &qword_1004CE140);
  sub_10018FAE4(&qword_1005AE070, &qword_1005AE068, &qword_1004CE140, sub_10018FA3C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 88);
    v28[4] = *(v3 + 72);
    v28[5] = v12;
    v28[6] = *(v3 + 104);
    v29 = *(v3 + 120);
    v13 = *(v3 + 24);
    v28[0] = *(v3 + 8);
    v28[1] = v13;
    v14 = *(v3 + 56);
    v28[2] = *(v3 + 40);
    v28[3] = v14;
    v15 = *(v3 + 88);
    v24 = *(v3 + 72);
    v25 = v15;
    v26 = *(v3 + 104);
    v27 = *(v3 + 120);
    v16 = *(v3 + 24);
    v20 = *(v3 + 8);
    v21 = v16;
    v17 = *(v3 + 56);
    v22 = *(v3 + 40);
    v23 = v17;
    v30 = 1;
    sub_1000C8BA0(v28, v18);
    sub_10018AF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18[4] = v24;
    v18[5] = v25;
    v18[6] = v26;
    v19 = v27;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    sub_1000C8BFC(v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10018F208(uint64_t a1)
{
  v2 = sub_10018FB60();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10018F244()
{
  if (*v0)
  {
    result = 0x6F43746E65696C63;
  }

  else
  {
    result = 0x7263736275736E75;
  }

  *v0;
  return result;
}

uint64_t sub_10018F294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10018F37C(uint64_t a1)
{
  v2 = sub_10018F9E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018F3B8(uint64_t a1)
{
  v2 = sub_10018F9E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018F3F4(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_10018EF6C(a1);
}

id sub_10018F440(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35 = v3;
  v36 = *(a2 + 96);
  v4 = *(a2 + 16);
  v30 = *a2;
  v31 = v4;
  v5 = *(a2 + 48);
  v32 = *(a2 + 32);
  v37 = *(a2 + 112);
  v33 = v5;
  if (!*(a1 + 16))
  {
    sub_1000C8BFC(a2);

    return 0;
  }

  v29 = sub_100208D38(_swiftEmptyArrayStorage);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v7 = result;
    v8 = [result serverFriendlyDescription];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_10014571C(v9, v11, 0xD000000000000011, 0x80000001004E2990);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1004525D4(0xD000000000000010, 0x80000001004E3D50, 0x2D746E65746E6F43, 0xEC00000065707954, v13);
    v17 = v29;
    v26 = v34;
    v27[0] = v35;
    v27[1] = v36;
    v21 = a1;
    v28 = v37;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v14 = type metadata accessor for JSONEncoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_10018F7FC();
    v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v20 = v19;

    sub_10018F850(&v21);

    sub_10002CF44(v18, v20);

    sub_10001A794(v18, v20);
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_10018F7FC()
{
  result = qword_1005AE040;
  if (!qword_1005AE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE040);
  }

  return result;
}

uint64_t sub_10018F890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10018F8D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018F93C()
{
  result = qword_1005AE048;
  if (!qword_1005AE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE048);
  }

  return result;
}

unint64_t sub_10018F994()
{
  result = qword_1005AE050;
  if (!qword_1005AE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE050);
  }

  return result;
}

unint64_t sub_10018F9E8()
{
  result = qword_1005AE060;
  if (!qword_1005AE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE060);
  }

  return result;
}

unint64_t sub_10018FA3C()
{
  result = qword_1005AE078;
  if (!qword_1005AE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE078);
  }

  return result;
}

unint64_t sub_10018FA90()
{
  result = qword_1005AE088;
  if (!qword_1005AE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE088);
  }

  return result;
}

uint64_t sub_10018FAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018FB60()
{
  result = qword_1005AE090;
  if (!qword_1005AE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE090);
  }

  return result;
}

unint64_t sub_10018FBD8()
{
  result = qword_1005AE098;
  if (!qword_1005AE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE098);
  }

  return result;
}

unint64_t sub_10018FC30()
{
  result = qword_1005AE0A0;
  if (!qword_1005AE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0A0);
  }

  return result;
}

unint64_t sub_10018FC88()
{
  result = qword_1005AE0A8;
  if (!qword_1005AE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0A8);
  }

  return result;
}

unint64_t sub_10018FCE0()
{
  result = qword_1005AE0B0;
  if (!qword_1005AE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0B0);
  }

  return result;
}

unint64_t sub_10018FD38()
{
  result = qword_1005AE0B8;
  if (!qword_1005AE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0B8);
  }

  return result;
}

unint64_t sub_10018FD90()
{
  result = qword_1005AE0C0;
  if (!qword_1005AE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0C0);
  }

  return result;
}

uint64_t sub_10018FDE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1682533734 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10018FEFC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AE0C8);
  v1 = sub_10000A6F0(v0, qword_1005AE0C8);
  if (qword_1005A7FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFC98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10018FFC4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 stringForKey:v5];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!a2)
  {
    if (v9)
    {
    }

    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    v12 = 1;
    return v12 & 1;
  }

  if (v7 == a1 && v9 == a2)
  {

    v12 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v11 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1001900E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return _swift_task_switch(sub_100190104, 0, 0);
}

uint64_t sub_100190104()
{
  v33 = v0;
  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005AE0C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0x72656C41656B616DLL, 0xEB00000000292874, v32);
    *(v7 + 12) = 2082;
    if (v5)
    {
      v8 = v1;
    }

    else
    {
      v6 = 7104878;
      v8 = 0xE300000000000000;
    }

    v9 = sub_10000D01C(v6, v8, v32);

    *(v7 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s. Alert ID: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v10 = sub_10018FFC4(v0[16], v0[17]);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v15 = v0[16];
      v14 = v0[17];
      v16 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_10000D01C(0x72656C41656B616DLL, 0xEB00000000292874, v32);
      *(v16 + 12) = 2082;
      v17 = v14 == 0;
      if (v14)
      {
        v18 = v15;
      }

      else
      {
        v18 = 7104878;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = v1;
      }

      v20 = sub_10000D01C(v18, v19, v32);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s. Will make SaveMeAlert with ID: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_1001905F8;

    return sub_100191890((v0 + 2));
  }

  else
  {
    if (v13)
    {
      v24 = v0[16];
      v23 = v0[17];
      v25 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(0x72656C41656B616DLL, 0xEB00000000292874, v32);
      *(v25 + 12) = 2082;
      v26 = v23 == 0;
      if (v23)
      {
        v27 = v24;
      }

      else
      {
        v27 = 7104878;
      }

      if (v26)
      {
        v28 = 0xE300000000000000;
      }

      else
      {
        v28 = v1;
      }

      v29 = sub_10000D01C(v27, v28, v32);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s. Alert ID: %{public}s should not show. Skipping", v25, 0x16u);
      swift_arrayDestroy();
    }

    sub_100191294();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1001905F8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 16);
    v7 = *(v2 + 48);
    *(v5 + 16) = *(v2 + 32);
    *(v5 + 32) = v7;
    *v5 = v6;
    v8 = *(v2 + 64);
    v9 = *(v2 + 80);
    v10 = *(v2 + 96);
    *(v5 + 96) = *(v2 + 112);
    *(v5 + 64) = v9;
    *(v5 + 80) = v10;
    *(v5 + 48) = v8;
  }

  v11 = *(v4 + 8);

  return v11();
}

uint64_t sub_100190728(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_1001D7F30(0, 0, v7, &unk_1004CE3A8, v9);
}

uint64_t sub_100190838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1001908CC;

  return daemon.getter();
}

uint64_t sub_1001908CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SettingsService();
  v9 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService);
  *v6 = v12;
  v6[1] = sub_100190AA8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100190AA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100190E6C, 0, 0);
  }

  else
  {
    v7 = v4[6];

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_100190C38;
    v9 = v4[4];
    v10 = v4[3];

    return sub_100485D1C(v10, v9);
  }
}

uint64_t sub_100190C38()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100191040;
  }

  else
  {
    v3 = sub_100190D4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100190D4C()
{
  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005AE0C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully set this device as me device, through SAVEME alert", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100190E6C()
{
  v14 = v0;
  v1 = v0[9];
  v2 = v0[6];

  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005AE0C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed while trying to set this device as me device, error: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100191040()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_1005A7FB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005AE0C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed while trying to set this device as me device, error: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100191214()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC98);
  sub_10000A6F0(v0, qword_1005DFC98);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100191294()
{
  result = qword_1005AE0E0;
  if (!qword_1005AE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0E0);
  }

  return result;
}

uint8_t *sub_1001912E8(uint8_t *a1)
{
  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {

    if (qword_1005A7FB8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005AE0C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      a1 = swift_slowAlloc();
      *a1 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Location services is disabled. Not showing Save Me alert or acking it.", a1, 2u);
    }

    sub_100191294();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  return a1;
}

id sub_100191428(uint64_t a1, uint64_t a2)
{
  v27[0] = a1;
  v27[1] = a2;

  v3._countAndFlagsBits = 0x544C55414645445FLL;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v4 = v27[0];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    v7 = MobileGestalt_copy_productType_obj();

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = 4 * v11;
        do
        {
          String.subscript.getter();
          v13 = Character.isNumber.getter();
        }

        while ((v13 & 1) == 0 && v12 != String.index(after:)() >> 14);
      }

      String.subscript.getter();

      v19 = Substring.uppercased()();

      v20 = sub_10025EF38(&off_10058BA20);
      swift_arrayDestroy();
      v21 = sub_10021B304(v19._countAndFlagsBits, v19._object, v20);

      if (v21)
      {

        v22._countAndFlagsBits = 95;
        v22._object = 0xE100000000000000;
        String.append(_:)(v22);
        String.append(_:)(v19);

        return a1;
      }

      if (qword_1005A7FB8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000A6F0(v23, qword_1005AE0C8);

      v15 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v15, v24))
      {

        goto LABEL_22;
      }

      v25 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E41F0, v27);
      *(v25 + 12) = 2082;
      v26 = sub_10000D01C(v19._countAndFlagsBits, v19._object, v27);

      *(v25 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v24, "%{public}s. Unexpected device type: %{public}s.", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      if (qword_1005A7FB8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000A6F0(v14, qword_1005AE0C8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_22;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E41F0, v27);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s. Failed to get productType.", v17, 0xCu);
      sub_100004984(v18);
    }

LABEL_22:

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100191890(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for LocalizationUtility.Table();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for DeviceWithCompanion();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v1[16] = v10;
  *v10 = v1;
  v10[1] = sub_100191A44;

  return daemon.getter();
}

uint64_t sub_100191A44(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SettingsService();
  v9 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService);
  *v6 = v12;
  v6[1] = sub_100191C20;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100191C20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100192728, 0, 0);
  }

  else
  {
    v7 = v4[17];

    v8 = swift_task_alloc();
    v4[21] = v8;
    *v8 = v6;
    v8[1] = sub_100191DB0;
    v9 = v4[14];

    return sub_100484570(v9, 0);
  }
}

uint64_t sub_100191DB0()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1001927E8;
  }

  else
  {
    v3 = sub_100191EC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100191EC4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = type metadata accessor for Device();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_100192DA0(v2, v1);
  v5 = v0[13];
  sub_100192CC0(v0[15], v5);
  v0[23] = v3;
  v0[24] = v4;
  v6 = *(v4 + 48);
  v0[25] = v6;
  v0[26] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v5, 1, v3);
  v8 = v0[13];
  if (v7 == 1)
  {
    sub_100192D30(v0[13]);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = Device.deviceName.getter();
    v10 = v11;
    (*(v4 + 8))(v8, v3);
  }

  v0[27] = v9;
  v0[28] = v10;
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_100192074;
  v13 = v0[19];
  v14 = v0[10];

  return sub_1004856D4(v14);
}

uint64_t sub_100192074()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 224);

    v5 = sub_100192BF4;
  }

  else
  {
    v5 = sub_100192190;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100192190()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  DeviceWithCompanion.thisDevice.getter();
  (*(v7 + 8))(v6, v8);
  sub_100192CC0(v4, v5);
  v9 = v2(v5, 1, v3);
  v10 = v0[28];
  if (v9 == 1)
  {
    v11 = v0[11];
    v12 = v0[28];

    sub_100192D30(v11);
    if (qword_1005A7FB8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005AE0C8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not get this device identifier.", v16, 2u);
    }

    v17 = v0[19];
    v18 = v0[15];
    v19 = v0[12];

    sub_100191294();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

    sub_100192D30(v19);
    sub_100192D30(v18);
    v22 = v0[14];
    v21 = v0[15];
    v24 = v0[12];
    v23 = v0[13];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[7];

    v28 = v0[1];
  }

  else
  {
    v29 = v0[23];
    v30 = v0[24];
    v31 = v0[11];
    v33 = v0[6];
    v32 = v0[7];
    v34 = v0[5];
    v73 = Device.identifier.getter();
    v72 = v35;
    (*(v30 + 8))(v31, v29);
    sub_100191428(0xD000000000000017, 0x80000001004E4140);
    v36 = enum case for LocalizationUtility.Table.default(_:);
    v74 = *(v33 + 104);
    v74(v32, enum case for LocalizationUtility.Table.default(_:), v34);
    v37 = static LocalizationUtility.localizedString(key:table:)();
    v70 = v38;
    v71 = v37;

    v39 = *(v33 + 8);
    v39(v32, v34);
    if (v10)
    {
      v41 = v0[27];
      v40 = v0[28];
      v42 = v0[7];
      v43 = v0[5];
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1004C1900;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      v74(v42, v36, v43);
      v45 = static LocalizationUtility.localizedString(key:table:_:)();
      v64 = v46;
      v65 = v45;
    }

    else
    {
      v74(v0[7], v36, v0[5]);
      v47 = static LocalizationUtility.localizedString(key:table:)();
      v64 = v48;
      v65 = v47;
    }

    v63 = v0[15];
    v66 = v0[14];
    v67 = v0[13];
    v59 = v0[19];
    v60 = v0[12];
    v68 = v0[11];
    v69 = v0[10];
    v49 = v0[7];
    v51 = v0[4];
    v50 = v0[5];
    v39(v49, v50);
    v74(v49, v36, v50);
    v52 = static LocalizationUtility.localizedString(key:table:)();
    v61 = v53;
    v62 = v52;
    v39(v49, v50);
    v74(v49, v36, v50);
    v54 = static LocalizationUtility.localizedString(key:table:)();
    v56 = v55;

    v39(v49, v50);
    sub_100192D30(v60);
    sub_100192D30(v63);
    v57 = swift_allocObject();
    *(v57 + 16) = v73;
    *(v57 + 24) = v72;
    *v51 = v71;
    v51[1] = v70;
    v51[2] = v65;
    v51[3] = v64;
    v51[4] = v62;
    v51[5] = v61;
    v51[6] = sub_100192D98;
    v51[7] = v57;
    v51[8] = v54;
    v51[9] = v56;
    v51[10] = DarwinNotification.init(name:value:);
    v51[11] = 0;
    v51[12] = 0;

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_100192728()
{
  v1 = v0[17];

  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001927E8()
{
  v40 = v0;
  *(v0 + 16) = *(v0 + 176);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 248) == 8;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v24 = *(v0 + 176);
    v25 = *(v0 + 120);

    v26 = type metadata accessor for Device();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v25, 1, 1, v26);
    v28 = *(v0 + 16);

    v29 = *(v0 + 104);
    sub_100192CC0(*(v0 + 120), v29);
    *(v0 + 184) = v26;
    *(v0 + 192) = v27;
    v30 = *(v27 + 48);
    *(v0 + 200) = v30;
    *(v0 + 208) = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v31 = v30(v29, 1, v26);
    v32 = *(v0 + 104);
    if (v31 == 1)
    {
      sub_100192D30(*(v0 + 104));
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = Device.deviceName.getter();
      v34 = v35;
      (*(v27 + 8))(v32, v26);
    }

    *(v0 + 216) = v33;
    *(v0 + 224) = v34;
    v36 = swift_task_alloc();
    *(v0 + 232) = v36;
    *v36 = v0;
    v36[1] = sub_100192074;
    v37 = *(v0 + 152);
    v38 = *(v0 + 80);

    return sub_1004856D4(v38);
  }

  else
  {
    v2 = *(v0 + 16);

    if (qword_1005A7FB8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 176);
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005AE0C8);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 176);
      v8 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_10000D01C(0x656C41656B616D5FLL, 0xEC00000029287472, v39);
      *(v8 + 12) = 2080;
      *(v0 + 24) = v7;
      swift_errorRetain();
      v9 = String.init<A>(describing:)();
      v11 = sub_10000D01C(v9, v10, v39);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s. Failed to get active location sharing device: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    swift_willThrow();

    v14 = *(v0 + 176);
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 56);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100192BF4()
{
  v1 = v0[19];
  v2 = v0[15];

  sub_100192D30(v2);
  v3 = v0[30];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100192CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192D30(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_100190838(a1, v4, v5, v7, v6);
}

unint64_t sub_100192EE4()
{
  result = qword_1005AE0E8;
  if (!qword_1005AE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE0E8);
  }

  return result;
}

uint64_t sub_100192F38()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AE0F0);
  v1 = sub_10000A6F0(v0, qword_1005AE0F0);
  if (qword_1005A7FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100193000@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001932D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10019302C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100193BD0();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100193084()
{
  if (qword_1005A7FC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005AE0F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E4280, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  v5 = type metadata accessor for Transaction();
  __chkstk_darwin(v5);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100193250()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFCB0);
  sub_10000A6F0(v0, qword_1005DFCB0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001932D0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1001932E0(double *a1)
{
  error = 0;
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_48;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *a1;
  v3 = *(a1 + 1);
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v6 = sub_100208D38(inited);
  swift_setDeallocating();
  sub_1001939E4(inited + 32);
  responseFlags[1] = v6;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = *(a1 + 2);
  v11 = *(a1 + 3);

  sub_10014571C(v10, v11, v7, v9);
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = *(a1 + 5);
  v16 = *(a1 + 7);
  v57 = *(a1 + 6);
  if (v15)
  {
    v17 = *(a1 + 4);
  }

  else
  {
    v17 = 0;
  }

  sub_10014571C(v17, v15, v12, v14);
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_50:
    __break(1u);
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v22 = *(a1 + 9);
  v21 = *(a1 + 10);
  v23 = *(a1 + 11);
  if (v22)
  {
    v24 = *(a1 + 8);
    v25 = *(a1 + 9);
  }

  else
  {
    v24 = 0;
  }

  sub_10014571C(v24, v22, v18, v20);
  v26 = a1[12];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = CFUserNotificationCreate(kCFAllocatorDefault, v26, 0, &error, isa);

  if (v28)
  {
    responseFlags[0] = 0;
    if (CFUserNotificationReceiveResponse(v28, 0.0, responseFlags))
    {
      sub_100193A4C();
      swift_allocError();
      v30 = 1;
LABEL_14:
      *v29 = v30;
      swift_willThrow();
LABEL_46:

      return;
    }

    switch(responseFlags[0])
    {
      case 3uLL:
        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000A6F0(v50, qword_1005AE0F0);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "Cancelled.", v53, 2u);
        }

        sub_100193A4C();
        swift_allocError();
        v30 = 3;
        goto LABEL_14;
      case 1uLL:
        if (v22)
        {
          v21();
        }

        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_10000A6F0(v41, qword_1005AE0F0);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v42, v43))
        {
          goto LABEL_45;
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Alternate button response.";
        v46 = v43;
        v47 = v42;
        v48 = v44;
        v49 = 2;
        break;
      case 0uLL:
        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_10000A6F0(v37, qword_1005AE0F0);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Default button response.", v40, 2u);
        }

        if (v15)
        {
          v57();
        }

        goto LABEL_46;
      default:
        if (qword_1005A7FC8 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_10000A6F0(v54, qword_1005AE0F0);
        v42 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v42, v55))
        {
          goto LABEL_45;
        }

        v56 = swift_slowAlloc();
        *v56 = 134217984;
        swift_beginAccess();
        *(v56 + 4) = responseFlags[0];
        v45 = "Unexpected result from user notification: %lu";
        v46 = v55;
        v47 = v42;
        v48 = v56;
        v49 = 12;
        break;
    }

    _os_log_impl(&_mh_execute_header, v47, v46, v45, v48, v49);

LABEL_45:

    goto LABEL_46;
  }

  v31 = error;
  if (qword_1005A7FC8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A6F0(v32, qword_1005AE0F0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109632;
    *(v35 + 4) = v31 >> 26;
    *(v35 + 8) = 1024;
    *(v35 + 10) = (v31 >> 14) & 0xFFF;
    *(v35 + 14) = 1024;
    *(v35 + 16) = v31 & 0x3FFF;
    _os_log_impl(&_mh_execute_header, v33, v34, "    Failed to create user notification. Error system: %d, subsystem: %d, code: %d", v35, 0x14u);
  }

  sub_100193A4C();
  swift_allocError();
  *v36 = 0;
  swift_willThrow();
}

uint64_t sub_1001939E4(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AE110, &qword_1004CE7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100193A4C()
{
  result = qword_1005AE118;
  if (!qword_1005AE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE118);
  }

  return result;
}

uint64_t sub_100193AB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100193AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100193B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100193B7C()
{
  result = qword_1005AE120;
  if (!qword_1005AE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE120);
  }

  return result;
}

unint64_t sub_100193BD0()
{
  result = qword_1005AE128;
  if (!qword_1005AE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE128);
  }

  return result;
}

uint64_t sub_100193C34()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AE130);
  v1 = sub_10000A6F0(v0, qword_1005AE130);
  if (qword_1005A7FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFCC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100193CFC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_100193D94;

  return sub_100194F68(a1);
}

uint64_t sub_100193D94()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100193EC4, 0, 0);
  }
}

uint64_t sub_100193EC4()
{
  v1 = v0[2];
  sub_100193F28(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100193F28(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005AE130);
  sub_10017E60C(a1, v24);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_10017E644(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v8 = 136446467;
    if (*(a1 + 168))
    {
      v9 = *(a1 + 160);
      v10 = *(a1 + 168);
    }

    else
    {
      v9 = 7104878;
      v10 = 0xE300000000000000;
    }

    v11 = sub_10000D01C(v9, v10, v24);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2081;
    if (*(a1 + 40))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
    }

    else
    {
      v12 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_10000D01C(v12, v13, v24);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Enqueuing server alert presentation. Alert ID: %{public}s Description: %{private}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v2[2];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = *(a1 + 96);
  *(v17 + 136) = *(a1 + 112);
  v19 = *(a1 + 144);
  *(v17 + 152) = *(a1 + 128);
  *(v17 + 168) = v19;
  *(v17 + 184) = *(a1 + 160);
  v20 = *(a1 + 32);
  *(v17 + 72) = *(a1 + 48);
  v21 = *(a1 + 80);
  *(v17 + 88) = *(a1 + 64);
  *(v17 + 104) = v21;
  *(v17 + 120) = v18;
  v22 = *(a1 + 16);
  *(v17 + 24) = *a1;
  *(v17 + 40) = v22;
  *(v17 + 16) = v16;
  *(v17 + 56) = v20;
  *(v17 + 200) = v4;
  sub_10017E60C(a1, v24);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100194208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[54] = a2;
  v3[55] = a3;
  v3[53] = a1;
  v4 = type metadata accessor for UUID();
  v3[56] = v4;
  v5 = *(v4 - 8);
  v3[57] = v5;
  v6 = *(v5 + 64) + 15;
  v3[58] = swift_task_alloc();

  return _swift_task_switch(sub_1001942CC, 0, 0);
}

uint64_t sub_1001942CC()
{
  v23 = v0;
  v1 = v0[54];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[59] = Strong;
  if (Strong)
  {
    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v3 = v0[53];
    v4 = type metadata accessor for Logger();
    v0[60] = sub_10000A6F0(v4, qword_1005AE130);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[57];
      v7 = v0[58];
      v9 = v0[56];
      v10 = v0[53];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v8 + 8))(v7, v9);
      v16 = sub_10000D01C(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Started work on enqueued alert presentation, workItem ID:%{public}s", v11, 0xCu);
      sub_100004984(v12);
    }

    v17 = swift_task_alloc();
    v0[61] = v17;
    *v17 = v0;
    v17[1] = sub_10019458C;
    v18 = v0[55];

    return sub_1001965FC(v18);
  }

  else
  {
    v20 = v0[58];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10019458C()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_100194908;
  }

  else
  {
    v3 = sub_1001946A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001946A0()
{
  v25 = v0;
  v1 = v0[60];
  v2 = v0[55];
  v3 = v0[53];

  sub_10017E60C(v2, (v0 + 24));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_10017E644(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[57];
    v6 = v0[58];
    v8 = v0[56];
    v23 = v0[55];
    v9 = v0[53];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136446466;
    WorkItemQueue.WorkItem.id.getter();
    sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    v14 = sub_10000D01C(v11, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    if (*(v23 + 168))
    {
      v15 = *(v0[55] + 160);
      v16 = *(v23 + 168);
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v17 = sub_10000D01C(v15, v16, &v24);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Presented alert successfully WorkItem ID:%{public}s Alert ID: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = v0[59];
  v19 = v0[53];
  sub_100197274();

  v20 = v0[58];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100194908()
{
  v34 = v0;
  v1 = v0[62];
  v2 = v0[60];
  v3 = v0[55];
  v4 = v0[53];

  sub_10017E60C(v3, (v0 + 2));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  sub_10017E644(v3);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[57];
    v7 = v0[58];
    v9 = v0[56];
    v32 = v0[55];
    v10 = v0[53];
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v11 = 136446723;
    WorkItemQueue.WorkItem.id.getter();
    sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v8 + 8))(v7, v9);
    v15 = sub_10000D01C(v12, v14, &v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    if (*(v32 + 168))
    {
      v16 = *(v0[55] + 160);
      v17 = *(v32 + 168);
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = v0[62];

    v20 = sub_10000D01C(v16, v17, &v33);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2081;
    swift_getErrorValue();
    v22 = v0[49];
    v21 = v0[50];
    v23 = v0[51];
    v24 = Error.localizedDescription.getter();
    v26 = sub_10000D01C(v24, v25, &v33);

    *(v11 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to present alert WorkItem ID:%{public}s Alert ID: %{public}s Error: %{private}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[62];
  }

  v27 = v0[59];
  v28 = v0[53];
  sub_100197274();

  v29 = v0[58];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100194BE4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100194C40(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18[-v5];
  v7 = *v1;
  if (*(a1 + 152))
  {
    v8 = *v1;
    return sub_100193F28(a1);
  }

  else
  {
    v10 = *(a1 + 144);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v7;
    *(v12 + 40) = v10;
    v13 = *(a1 + 144);
    *(v12 + 176) = *(a1 + 128);
    *(v12 + 192) = v13;
    *(v12 + 208) = *(a1 + 160);
    v14 = *(a1 + 80);
    *(v12 + 112) = *(a1 + 64);
    *(v12 + 128) = v14;
    v15 = *(a1 + 112);
    *(v12 + 144) = *(a1 + 96);
    *(v12 + 160) = v15;
    v16 = *(a1 + 16);
    *(v12 + 48) = *a1;
    *(v12 + 64) = v16;
    v17 = *(a1 + 48);
    *(v12 + 80) = *(a1 + 32);
    *(v12 + 96) = v17;

    sub_10017E60C(a1, v18);
    sub_10020D620(0, 0, v6, &unk_1004CE6D8, v12);
  }
}

uint64_t sub_100194DB8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100193CFC(v7, a1, v4, v5, v6, (v1 + 6));
}

void sub_100194E80()
{
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005AE130);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Delaying alert presentation finished.", v2, 2u);
  }
}

uint64_t sub_100194F88()
{
  if (v0[2] > 0.0)
  {
    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005AE130);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 2);
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "Delaying alert presentation by seconds: %f", v5, 0xCu);
    }

    v6 = v0[2];

    v8 = v6 * 1000000000.0;
    if (v6 * 1000000000.0 > 1.84467441e19)
    {
      v8 = 1.84467441e19;
    }

    if (*&v8 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v8 > -1.0)
    {
      if (v8 < 1.84467441e19)
      {
        v9 = v8;
        v10 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
        v11 = swift_task_alloc();
        *(v0 + 3) = v11;
        *v11 = v0;
        v11[1] = sub_10019518C;
        v7 = v9;

        return static Task<>.sleep(nanoseconds:)(v7);
      }

LABEL_19:
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(v7);
    }

    __break(1u);
    goto LABEL_19;
  }

  v12 = *(v0 + 1);

  return v12();
}

uint64_t sub_10019518C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100195300;
  }

  else
  {
    v3 = sub_1001952A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001952A0()
{
  sub_100194E80();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100195300()
{
  sub_100194E80();
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1();
}

uint64_t sub_100195360(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 200);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003690;

  return sub_100194208(a1, v4, v1 + 24);
}

uint64_t sub_100195410(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_1001954A4;

  return daemon.getter();
}

uint64_t sub_1001954A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10019753C(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10019753C(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100195680;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100195680(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100195AB4, 0, 0);
  }

  else
  {
    v7 = v4[9];

    v8 = swift_task_alloc();
    v4[13] = v8;
    *v8 = v6;
    v8[1] = sub_100195810;
    v9 = v4[7];
    v10 = v4[6];

    return sub_10020C1B4(v10, v9);
  }
}

uint64_t sub_100195810()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100195CBC;
  }

  else
  {
    v3 = sub_100195924;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100195924()
{
  v14 = v0;
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005AE130);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10000D01C(v8, v7, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully acked Alert ID: %{public}s", v9, 0xCu);
    sub_100004984(v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100195AB4()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[9];

  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005AE130);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136446467;
    *(v9 + 4) = sub_10000D01C(v8, v7, &v18);
    *(v9 + 12) = 2081;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_10000D01C(v13, v14, &v18);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to ack Alert ID: %{public}s, error: %{private}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100195CBC()
{
  v19 = v0;
  v1 = v0[14];
  v2 = v0[11];

  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005AE130);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136446467;
    *(v9 + 4) = sub_10000D01C(v8, v7, &v18);
    *(v9 + 12) = 2081;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_10000D01C(v13, v14, &v18);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to ack Alert ID: %{public}s, error: %{private}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100195EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005AE1F0, &qword_1004CE718);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v67 - v8;
  v10 = type metadata accessor for ServerAlertURLAction();
  v11 = *(v10 - 8);
  v75 = v10;
  v76 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v69 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v67 - v15;
  __chkstk_darwin(v14);
  v18 = &v67 - v17;
  v19 = type metadata accessor for LocalizationUtility.Table();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[1];
  if (v24)
  {
    v68 = v16;
    v71 = *a1;
    v25 = a1[7];
    v74 = v24;
    if (v25)
    {
      v73 = a1[6];

      v77 = v25;
    }

    else
    {
      (*(v20 + 104))(v23, enum case for LocalizationUtility.Table.default(_:), v19);

      v73 = static LocalizationUtility.localizedString(key:table:)();
      v77 = v28;
      (*(v20 + 8))(v23, v19);
    }

    v30 = a1[8];
    v29 = a1[9];
    v32 = sub_100198164(a1[10], a1[11], v30, v29);
    v33 = v31;
    if (v29)
    {
      if (v31 == 3)
      {

        v32 = v30;
        v33 = v29;
      }
    }

    else if (v31 == 3)
    {
      (*(v76 + 56))(v9, 1, 1, v75);

      v24 = v74;
      goto LABEL_14;
    }

    v34 = v77;

    sub_100197E5C(v32, v33, v9);
    sub_100197584(v32, v33);
    v35 = v76;
    if ((*(v76 + 48))(v9, 1, v75) != 1)
    {
      sub_1001975A8(v9, v18);
      v38 = v68;
      sub_1001975A8(v18, v68);
      v39 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v37 = swift_allocObject();
      sub_1001975A8(v38, v37 + v39);

      v36 = sub_10019773C;
      v24 = v74;
LABEL_16:
      v70 = v36;
      v40 = a1[13];
      if (!v40)
      {
        v43 = 0;
        v47 = 0;
        v48 = 0;
LABEL_28:
        v55 = a1[4];
        v54 = a1[5];

        v58 = v70;
        v57 = v71;
        v59 = v73;
        goto LABEL_36;
      }

      v77 = v34;
      v42 = a1[14];
      v41 = a1[15];
      v43 = a1[12];
      v45 = sub_100198164(a1[16], a1[17], v42, v41);
      v46 = v44;
      if (v41)
      {
        if (v44 == 3)
        {

          v45 = v42;
          v46 = v41;
        }
      }

      else if (v44 == 3)
      {
        v49 = v72;
        (*(v76 + 56))(v72, 1, 1, v75);
        goto LABEL_25;
      }

      v49 = v72;
      sub_100197E5C(v45, v46, v72);
      sub_100197584(v45, v46);
      v50 = v76;
      if ((*(v76 + 48))(v49, 1, v75) != 1)
      {
        v51 = v69;
        sub_1001975A8(v49, v69);
        v52 = v68;
        sub_1001975A8(v51, v68);
        v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
        v48 = swift_allocObject();
        sub_1001975A8(v52, v48 + v53);
        v47 = sub_10019760C;
        v24 = v74;
        goto LABEL_27;
      }

LABEL_25:
      v24 = v74;
      sub_100002CE0(v49, &qword_1005AE1F0, &qword_1004CE718);
      v43 = 0;
      v40 = 0;
      v47 = 0;
      v48 = 0;
LABEL_27:
      v34 = v77;
      goto LABEL_28;
    }

    v24 = v74;
LABEL_14:
    sub_100002CE0(v9, &qword_1005AE1F0, &qword_1004CE718);

    v73 = 0;
    v34 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_16;
  }

  if (a1[21])
  {
    v26 = a1[20];
    v27 = a1[21];
  }

  else
  {
    v27 = 0xE300000000000000;
    v26 = 7104878;
  }

  v60 = qword_1005A7FD8;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_10000A6F0(v61, qword_1005AE130);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v78 = v65;
    *v64 = 136446210;
    v66 = sub_10000D01C(v26, v27, &v78);

    *(v64 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v62, v63, "Could not create generic alert: missing title. Alert ID:%{public}s", v64, 0xCu);
    sub_100004984(v65);
  }

  else
  {
  }

  v57 = 0;
  v55 = 0;
  result = 0;
  v59 = 0;
  v34 = 0;
  v58 = 0;
  v37 = 0;
  v43 = 0;
  v40 = 0;
  v47 = 0;
  v48 = 0;
LABEL_36:
  *a2 = v57;
  a2[1] = v24;
  a2[2] = v55;
  a2[3] = result;
  a2[4] = v59;
  a2[5] = v34;
  a2[6] = v58;
  a2[7] = v37;
  a2[8] = v43;
  a2[9] = v40;
  a2[10] = v47;
  a2[11] = v48;
  a2[12] = 0;
  return result;
}

uint64_t sub_10019661C()
{
  v1 = *(v0 + 544);
  v2 = v1[3];
  if (v2 && (*(v0 + 504) = v1[2], *(v0 + 512) = v2, *(v0 + 520) = 0x454D45564153, *(v0 + 528) = 0xE600000000000000, sub_1000246F4(), v3 = StringProtocol.caseInsensitiveCompare<A>(_:)(), v1 = *(v0 + 544), !v3))
  {
    v7 = v1[20];
    *(v0 + 552) = v7;
    *(v0 + 560) = v1[21];
    swift_bridgeObjectRetain_n();
    v8 = sub_1001912E8(v7);
    *(v0 + 568) = v9;
    v10 = v8;
    v11 = v9;
    v12 = swift_task_alloc();
    *(v0 + 576) = v12;
    *v12 = v0;
    v12[1] = sub_100196A24;

    return sub_1001900E0(v0 + 400, v10, v11);
  }

  else
  {
    sub_100195EC4(v1, (v0 + 296));
    v4 = *(v0 + 304);
    if (v4)
    {
      *(v0 + 192) = *(v0 + 296);
      *(v0 + 200) = v4;
      *(v0 + 288) = *(v0 + 392);
      v5 = *(v0 + 360);
      *(v0 + 240) = *(v0 + 344);
      *(v0 + 256) = v5;
      *(v0 + 272) = *(v0 + 376);
      v6 = *(v0 + 328);
      *(v0 + 208) = *(v0 + 312);
      *(v0 + 224) = v6;
      sub_100193084();
      sub_100002CE0(v0 + 296, &qword_1005AE1E8, &unk_1004CE700);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100196A24()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v7 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = sub_100196EF4;
  }

  else
  {
    v5 = *(v2 + 568);

    v4 = sub_100196B40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100196B40()
{
  v27 = v0;
  v1 = *(v0 + 584);
  sub_100193084();
  if (v1)
  {
    sub_1001974E8(v0 + 400);
    *(v0 + 536) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 600) == 3;
    }

    else
    {
      v2 = 0;
    }

    if (!v2)
    {
      v3 = *(v0 + 560);

      v4 = *(v0 + 536);

      swift_willThrow();
      v5 = *(v0 + 8);
LABEL_23:

      return v5();
    }

    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 544);
    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005AE130);
    sub_10017E60C(v15, v0 + 16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    sub_10017E644(v15);
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 560);
    if (v19)
    {
      v21 = *(v0 + 552);
      v22 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E42E0, v26);
      *(v22 + 12) = 2080;
      if (v20)
      {
        v23 = v21;
      }

      else
      {
        v23 = 7104878;
      }

      if (!v20)
      {
        v20 = 0xE300000000000000;
      }

      v24 = sub_10000D01C(v23, v20, v26);

      *(v22 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s - SaveMe alert with ID: %s was already shown.", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v25 = *(v0 + 536);

LABEL_22:
    v5 = *(v0 + 8);
    goto LABEL_23;
  }

  v6 = *(v0 + 560);

  sub_1001974E8(v0 + 400);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = *(v0 + 560);
  v8 = *(v0 + 552);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  [v9 setObject:v10 forKey:v11];

  v12 = swift_task_alloc();
  *(v0 + 592) = v12;
  *v12 = v0;
  v12[1] = sub_10019717C;
  v13 = *(v0 + 552);

  return sub_100195410(v13, v7);
}

uint64_t sub_100196EF4()
{
  v19 = v0;
  v1 = *(v0 + 568);

  *(v0 + 536) = *(v0 + 584);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 600) == 3;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {

    if (qword_1005A7FD8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 544);
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005AE130);
    sub_10017E60C(v6, v0 + 16);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_10017E644(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 560);
    if (v10)
    {
      v12 = *(v0 + 552);
      v13 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v13 = 136446466;
      *(v13 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E42E0, v18);
      *(v13 + 12) = 2080;
      if (v11)
      {
        v14 = v12;
      }

      else
      {
        v14 = 7104878;
      }

      if (!v11)
      {
        v11 = 0xE300000000000000;
      }

      v15 = sub_10000D01C(v14, v11, v18);

      *(v13 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s - SaveMe alert with ID: %s was already shown.", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v16 = *(v0 + 536);

    v5 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 560);

    v4 = *(v0 + 536);

    swift_willThrow();
    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_10019717C()
{
  v1 = *(*v0 + 592);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100197274()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7FD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005AE130);

  v14 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    WorkItemQueue.WorkItem.id.getter();
    sub_10019753C(&qword_1005A92C0, &type metadata accessor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v1 + 8))(v4, v0);
    v12 = sub_10000D01C(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v14, v6, "Finished work on enqueued alert presentation, workItem ID:%{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
    v13 = v14;
  }
}

uint64_t sub_10019753C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100197584(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_100197594(a1, a2);
  }

  return a1;
}

uint64_t sub_100197594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1001975A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerAlertURLAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197610()
{
  v1 = *(type metadata accessor for ServerAlertURLAction() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1001976DC()
{
  v1 = *(type metadata accessor for ServerAlertURLAction() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100197844(v2);
}

uint64_t sub_100197740()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFCC8);
  sub_10000A6F0(v0, qword_1005DFCC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001977C4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFCE0);
  sub_10000A6F0(v0, qword_1005DFCE0);
  return Logger.init(subsystem:category:)();
}

void sub_100197844(uint64_t a1)
{
  v2 = type metadata accessor for ServerAlertURLAction();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + *(v4 + 28));
  v8 = [objc_opt_self() defaultWorkspace];
  v10 = v8;
  if (v7 == 1)
  {
    if (v8)
    {
      URL._bridgeToObjectiveC()(v9);
      v12 = v11;
      sub_100207CD4(_swiftEmptyArrayStorage);
      v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v33 = 0;
      v14 = [v10 openSensitiveURL:v12 withOptions:v13.super.isa error:&v33];
      goto LABEL_6;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  URL._bridgeToObjectiveC()(v9);
  v12 = v15;
  sub_100207CD4(_swiftEmptyArrayStorage);
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = 0;
  v14 = [v10 openURL:v12 withOptions:v13.super.isa error:&v33];
LABEL_6:
  v16 = v14;

  v17 = v33;
  if (v16)
  {

    v18 = v17;
  }

  else
  {
    v32[1] = v33;
    v19 = v33;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A7FE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFCE0);
    sub_100197CA8(a1, v6);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v24 = 141558531;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      type metadata accessor for URL();
      sub_100197D68();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_100197D0C(v6);
      v28 = sub_10000D01C(v25, v27, &v33);

      *(v24 + 14) = v28;
      *(v24 + 22) = 2080;
      v32[2] = v20;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v29 = String.init<A>(describing:)();
      v31 = sub_10000D01C(v29, v30, &v33);

      *(v24 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to open URL %{private,mask.hash}s, error: %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100197D0C(v6);
    }
  }
}

uint64_t type metadata accessor for ServerAlertURLAction()
{
  result = qword_1005AE250;
  if (!qword_1005AE250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100197CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerAlertURLAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197D0C(uint64_t a1)
{
  v2 = type metadata accessor for ServerAlertURLAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100197D68()
{
  result = qword_1005ADD18;
  if (!qword_1005ADD18)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADD18);
  }

  return result;
}

uint64_t sub_100197DE8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100197E5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001980E8(a1, a2);
  URL.init(string:)();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1001980FC(v9);
    v15 = type metadata accessor for ServerAlertURLAction();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v14, v9, v10);
    v17(a3, v14, v10);
    v18 = type metadata accessor for ServerAlertURLAction();
    a3[*(v18 + 20)] = a2 < 3;
    return (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
  }
}

uint64_t sub_1001980E8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1001980FC(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100198164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x747465732D666D66 && a2 == 0xEC00000073676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x7465732D70696D66 && a2 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x6C72752D6E65706FLL && a2 == 0xE800000000000000)
  {
    if (!a4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && a4)
  {
LABEL_22:

    return a3;
  }

  return result;
}

uint64_t type metadata accessor for SavePreferencesEndpoint()
{
  result = qword_1005AE2E0;
  if (!qword_1005AE2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019837C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 1520) = a3;
  *(v3 + 1464) = a2;
  *(v3 + 1456) = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v3 + 1472) = v5;
  *v5 = v3;
  v5[1] = sub_100198418;

  return daemon.getter();
}

uint64_t sub_100198418(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1472);
  v12 = *v1;
  *(v3 + 1480) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1488) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009320(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009320(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1001985F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001985F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1488);
  v6 = *v2;
  v4[187] = a1;
  v4[188] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001989D0, 0, 0);
  }

  else
  {
    v7 = v4[185];

    v8 = swift_task_alloc();
    v4[189] = v8;
    *v8 = v6;
    v8[1] = sub_100198784;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_100198784()
{
  v1 = *(*v0 + 1512);
  v2 = *(*v0 + 1496);
  v4 = *v0;

  return _swift_task_switch(sub_100198894, v2, 0);
}

uint64_t sub_100198894()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100198A54, 0, 0);
}

uint64_t sub_1001989D0()
{
  v1 = v0[185];
  v2 = v0[183];

  sub_10019B7B0(v2, type metadata accessor for ClientContext);
  v3 = v0[1];
  v4 = v0[188];

  return v3();
}

uint64_t sub_100198A54()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1456);

  v5 = *(v0 + 992);
  *v4 = *(v0 + 976);
  v4[1] = v5;
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1056);
  v4[4] = *(v0 + 1040);
  v4[5] = v8;
  v4[2] = v6;
  v4[3] = v7;
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1120);
  v4[8] = *(v0 + 1104);
  v4[9] = v11;
  v4[6] = v9;
  v4[7] = v10;
  v12 = type metadata accessor for SavePreferencesRequestContent(0);
  sub_10019B748(v3, v4 + *(v12 + 20), type metadata accessor for ClientContext);
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  v13 = swift_allocObject();
  *(v13 + 32) = 0x61636F4C65646968;
  v14 = v13 + 32;
  *(v13 + 16) = xmmword_1004C1900;
  v15 = 28494;
  if (v2)
  {
    v15 = 7562585;
  }

  v16 = 0xE200000000000000;
  if (v2)
  {
    v16 = 0xE300000000000000;
  }

  *(v13 + 40) = 0xEC0000006E6F6974;
  *(v13 + 48) = v15;
  *(v13 + 56) = v16;
  v17 = sub_100208D38(v13);
  swift_setDeallocating();
  sub_100002CE0(v14, &qword_1005AE110, &qword_1004CE7D0);
  swift_deallocClassInstance();
  sub_10019B7B0(v3, type metadata accessor for ClientContext);
  *(v4 + *(v12 + 24)) = v17;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100198C0C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 1520) = a3;
  *(v3 + 1464) = a2;
  *(v3 + 1456) = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v3 + 1472) = v5;
  *v5 = v3;
  v5[1] = sub_100198CA8;

  return daemon.getter();
}

uint64_t sub_100198CA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1472);
  v12 = *v1;
  *(v3 + 1480) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1488) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009320(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009320(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100198E84;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100198E84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1488);
  v6 = *v2;
  v4[187] = a1;
  v4[188] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10019DB84, 0, 0);
  }

  else
  {
    v7 = v4[185];

    v8 = swift_task_alloc();
    v4[189] = v8;
    *v8 = v6;
    v8[1] = sub_100199014;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_100199014()
{
  v1 = *(*v0 + 1512);
  v2 = *(*v0 + 1496);
  v4 = *v0;

  return _swift_task_switch(sub_100199124, v2, 0);
}

uint64_t sub_100199124()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100199260, 0, 0);
}

uint64_t sub_100199260()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1456);

  v5 = *(v0 + 992);
  *v4 = *(v0 + 976);
  v4[1] = v5;
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1056);
  v4[4] = *(v0 + 1040);
  v4[5] = v8;
  v4[2] = v6;
  v4[3] = v7;
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1120);
  v4[8] = *(v0 + 1104);
  v4[9] = v11;
  v4[6] = v9;
  v4[7] = v10;
  v12 = type metadata accessor for SavePreferencesRequestContent(0);
  sub_10019B748(v3, v4 + *(v12 + 20), type metadata accessor for ClientContext);
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  v13 = swift_allocObject();
  *(v13 + 32) = 0xD000000000000013;
  v14 = v13 + 32;
  v15 = 28494;
  if (v2)
  {
    v15 = 7562585;
  }

  v16 = 0xE200000000000000;
  if (v2)
  {
    v16 = 0xE300000000000000;
  }

  *(v13 + 16) = xmmword_1004C1900;
  *(v13 + 40) = 0x80000001004DDFA0;
  *(v13 + 48) = v15;
  *(v13 + 56) = v16;
  v17 = sub_100208D38(v13);
  swift_setDeallocating();
  sub_100002CE0(v14, &qword_1005AE110, &qword_1004CE7D0);
  swift_deallocClassInstance();
  sub_10019B7B0(v3, type metadata accessor for ClientContext);
  *(v4 + *(v12 + 24)) = v17;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100199414(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AE488, &qword_1004CEA80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10019D5F4();
  v10 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v2[7];
  v12 = v2[5];
  v56 = v2[6];
  v57 = v11;
  v13 = v2[7];
  v14 = v2[9];
  v58 = v2[8];
  v59 = v14;
  v15 = v2[3];
  v16 = v2[1];
  v52 = v2[2];
  v53 = v15;
  v17 = v2[3];
  v18 = v2[5];
  v54 = v2[4];
  v55 = v18;
  v19 = v2[1];
  v51[0] = *v2;
  v51[1] = v19;
  v47 = v56;
  v48 = v13;
  v20 = v2[9];
  v49 = v58;
  v50 = v20;
  v43 = v52;
  v44 = v17;
  v45 = v54;
  v46 = v12;
  v41 = v51[0];
  v42 = v16;
  v40 = 0;
  sub_100005F04(v51, &v30, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v21 = v60;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v21)
  {
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v30 = v41;
    v31 = v42;
    sub_100002CE0(&v30, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v30 = v41;
    v31 = v42;
    sub_100002CE0(&v30, &qword_1005A9328, &unk_1004C7F20);
    v22 = type metadata accessor for SaveMeDevicePreferencesRequestContent(0);
    v23 = *(v22 + 20);
    v29 = 1;
    type metadata accessor for ClientContext();
    sub_100009320(&qword_1005AC568, type metadata accessor for ClientContext);
    v10 = v4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = (v2 + *(v22 + 24));
    v25 = *v24;
    v26 = v24[1];
    v29 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t sub_100199720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for ClientContext();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AE4B0, &qword_1004CEAA0);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for SaveMeDevicePreferencesRequestContent(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v34 = a1;
  sub_100011AEC(a1, v16);
  sub_10019D5F4();
  v17 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100004984(v34);
  }

  v33 = v3;
  v46 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v43;
  v14[6] = v42;
  v14[7] = v18;
  v19 = v45;
  v14[8] = v44;
  v14[9] = v19;
  v20 = v39;
  v14[2] = v38;
  v14[3] = v20;
  v21 = v41;
  v14[4] = v40;
  v14[5] = v21;
  v22 = v37;
  *v14 = v36;
  v14[1] = v22;
  v35 = 1;
  sub_100009320(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v6, v14 + *(v11 + 20));
  v35 = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v24;
  v25 = v23;
  (*(v31 + 8))(v10, v32);
  v26 = (v14 + *(v11 + 24));
  v27 = v33;
  *v26 = v25;
  v26[1] = v27;
  sub_10019B748(v14, v30, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  sub_100004984(v34);
  return sub_10019B7B0(v14, type metadata accessor for SaveMeDevicePreferencesRequestContent);
}

uint64_t sub_100199B4C(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AE498, &unk_1004CEA88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10019D648();
  v10 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v2[7];
  v12 = v2[5];
  v53 = v2[6];
  v54 = v11;
  v13 = v2[7];
  v14 = v2[9];
  v55 = v2[8];
  v56 = v14;
  v15 = v2[3];
  v16 = v2[1];
  v49 = v2[2];
  v50 = v15;
  v17 = v2[3];
  v18 = v2[5];
  v51 = v2[4];
  v52 = v18;
  v19 = v2[1];
  v48[0] = *v2;
  v48[1] = v19;
  v44 = v53;
  v45 = v13;
  v20 = v2[9];
  v46 = v55;
  v47 = v20;
  v40 = v49;
  v41 = v17;
  v42 = v51;
  v43 = v12;
  v38 = v48[0];
  v39 = v16;
  v37 = 0;
  sub_100005F04(v48, &v27, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v21 = v57;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v21)
  {
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v27 = v38;
    v28 = v39;
    sub_100002CE0(&v27, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v27 = v38;
    v28 = v39;
    sub_100002CE0(&v27, &qword_1005A9328, &unk_1004C7F20);
    v22 = type metadata accessor for SavePreferencesRequestContent(0);
    v23 = *(v22 + 20);
    LOBYTE(v26) = 1;
    type metadata accessor for ClientContext();
    sub_100009320(&qword_1005AC568, type metadata accessor for ClientContext);
    v10 = v4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v2 + *(v22 + 24));
    v25[7] = 2;
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    sub_10014D0DC(&qword_1005AC980);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t sub_100199EA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for ClientContext();
  v3 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AE4A8, &qword_1004CEA98);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SavePreferencesRequestContent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v46 = a1;
  sub_100011AEC(a1, v14);
  sub_10019D648();
  v16 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100004984(v46);
  }

  v17 = v13;
  v18 = v5;
  v32 = v10;
  v35 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v43;
  v20 = v17;
  v17[6] = v42;
  v17[7] = v19;
  v21 = v45;
  v17[8] = v44;
  v17[9] = v21;
  v22 = v39;
  v17[2] = v38;
  v17[3] = v22;
  v23 = v41;
  v17[4] = v40;
  v17[5] = v23;
  v24 = v37;
  *v17 = v36;
  v17[1] = v24;
  LOBYTE(v34) = 1;
  sub_100009320(&qword_1005AC580, type metadata accessor for ClientContext);
  v25 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v32;
  sub_100144E70(v25, v20 + *(v32 + 20));
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  v33 = 2;
  sub_10014D0DC(&qword_1005AC970);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v9, v31);
  *(v20 + *(v26 + 24)) = v34;
  sub_10019B748(v20, v28, type metadata accessor for SavePreferencesRequestContent);
  sub_100004984(v46);
  return sub_10019B7B0(v20, type metadata accessor for SavePreferencesRequestContent);
}

uint64_t sub_10019A2EC(uint64_t a1)
{
  v2 = sub_10019D69C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10019A328()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x656369766544656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_10019A390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019D920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019A3B8(uint64_t a1)
{
  v2 = sub_10019D5F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A3F4(uint64_t a1)
{
  v2 = sub_10019D5F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019A460()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x7366657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_10019A4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019DA50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019A4E8(uint64_t a1)
{
  v2 = sub_10019D648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A524(uint64_t a1)
{
  v2 = sub_10019D648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019A590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[184] = a3;
  v3[183] = a2;
  v3[182] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[185] = v4;
  v5 = *(v4 - 8);
  v3[186] = v5;
  v6 = *(v5 + 64) + 15;
  v3[187] = swift_task_alloc();
  v7 = type metadata accessor for SaveMeDevicePreferencesRequestContent(0);
  v3[188] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v3[192] = v9;
  v10 = *(v9 - 8);
  v3[193] = v10;
  v11 = *(v10 + 64) + 15;
  v3[194] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[197] = swift_task_alloc();
  v3[198] = swift_task_alloc();
  v14 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v3[199] = swift_task_alloc();
  v3[200] = swift_task_alloc();

  return _swift_task_switch(sub_10019A7BC, 0, 0);
}

uint64_t sub_10019A7BC()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[195];
  v5 = v0[194];
  v6 = v0[193];
  v7 = v0[192];
  v8 = v0[182];
  v0[201] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[202] = v11;
  *v11 = v0;
  v11[1] = sub_10019A978;
  v12 = v0[200];
  v13 = v0[197];
  v14 = v0[195];
  v15 = v0[194];

  return sub_1001667E8(v12, v15, v14, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10019A978()
{
  v1 = *v0;
  v2 = *(*v0 + 1616);
  v3 = *(*v0 + 1600);
  v4 = *(*v0 + 1592);
  v5 = *(*v0 + 1584);
  v6 = *(*v0 + 1568);
  v10 = *v0;

  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_10019B748(v3, v4, type metadata accessor for ClientContext);
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v1 + 1624) = v8;
  *v8 = v10;
  v8[1] = sub_10019AB54;

  return daemon.getter();
}

uint64_t sub_10019AB54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1624);
  v12 = *v1;
  *(v3 + 1632) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1640) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009320(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009320(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10019AD30;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10019AD30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1640);
  v6 = *v2;
  v4[206] = a1;
  v4[207] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10019B10C, 0, 0);
  }

  else
  {
    v7 = v4[204];

    v8 = swift_task_alloc();
    v4[208] = v8;
    *v8 = v6;
    v8[1] = sub_10019AEC0;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10019AEC0()
{
  v1 = *(*v0 + 1664);
  v2 = *(*v0 + 1648);
  v4 = *v0;

  return _swift_task_switch(sub_10019AFD0, v2, 0);
}

uint64_t sub_10019AFD0()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10019B28C, 0, 0);
}

uint64_t sub_10019B10C()
{
  v1 = v0[204];
  v2 = v0[201];
  v3 = v0[200];
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[197];
  v14 = v0[196];
  v15 = v0[195];
  v7 = v0[193];
  v8 = v0[192];
  v16 = v0[194];
  v17 = v0[191];
  v18 = v0[190];
  v19 = v0[189];
  v20 = v0[187];
  v9 = v0[184];
  v10 = v0[182];

  sub_10019B7B0(v4, type metadata accessor for ClientContext);
  (*(v7 + 8))(v10, v8);
  sub_10019B7B0(v3, type metadata accessor for ClientContext);

  v11 = v0[1];
  v12 = v0[207];

  return v11();
}

uint64_t sub_10019B28C()
{
  v59 = v0;
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 1472);
  v6 = *(v0 + 1464);

  v7 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v7;
  v8 = *(v0 + 1008);
  v9 = *(v0 + 1024);
  v10 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v10;
  v3[2] = v8;
  v3[3] = v9;
  v11 = *(v0 + 1072);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v13;
  v3[6] = v11;
  v3[7] = v12;
  sub_100144E70(v2, v3 + *(v4 + 20));
  v14 = (v3 + *(v4 + 24));
  *v14 = v6;
  v14[1] = v5;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 1528);
  v16 = *(v0 + 1520);
  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFC28);
  sub_10019B748(v15, v16, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 1520);
  if (v20)
  {
    v22 = *(v0 + 1512);
    v23 = *(v0 + 1504);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v58 = v25;
    *v24 = 136315138;
    sub_10019B748(v21, v22, type metadata accessor for SaveMeDevicePreferencesRequestContent);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_10019B7B0(v21, type metadata accessor for SaveMeDevicePreferencesRequestContent);
    v29 = sub_10000D01C(v26, v28, &v58);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Request content: %s", v24, 0xCu);
    sub_100004984(v25);
  }

  else
  {

    sub_10019B7B0(v21, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  }

  v30 = *(v0 + 1656);
  v31 = *(v0 + 1528);
  v32 = *(v0 + 1504);
  v33 = *(v0 + 1496);
  v34 = *(v0 + 1488);
  v35 = *(v0 + 1480);
  v36 = type metadata accessor for JSONEncoder();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v33 = sub_10019E890;
  v33[1] = 0;
  (*(v34 + 104))(v33, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v35);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009320(&qword_1005AE318, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v30)
  {

    v41 = 0;
    v42 = 0xF000000000000000;
  }

  else
  {
    v41 = v39;
    v42 = v40;
  }

  v43 = *(v0 + 1608);
  v44 = *(v0 + 1600);
  v45 = *(v0 + 1592);
  v46 = *(v0 + 1584);
  v47 = *(v0 + 1576);
  v48 = *(v0 + 1568);
  v54 = *(v0 + 1560);
  v55 = *(v0 + 1552);
  v49 = *(v0 + 1528);
  v50 = *(v0 + 1520);
  v56 = *(v0 + 1512);
  v57 = *(v0 + 1496);
  (*(*(v0 + 1544) + 8))(*(v0 + 1456), *(v0 + 1536));
  sub_10019B7B0(v49, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  sub_10019B7B0(v44, type metadata accessor for ClientContext);

  sub_10002CF44(v41, v42);

  sub_10001A794(v41, v42);

  v51 = *(v0 + 8);
  v52 = *(v0 + 1608);

  return v51(v52, v41, v42);
}

uint64_t sub_10019B748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019B7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10019B810(uint64_t a1, char a2)
{
  *(v2 + 200) = a2;
  *(v2 + 32) = a1;
  v3 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = type metadata accessor for SavePreferencesRequestContent(0);
  *(v2 + 64) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  v8 = type metadata accessor for Account();
  *(v2 + 96) = v8;
  v9 = *(v8 - 8);
  *(v2 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v13 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_10019BA38, 0, 0);
}

uint64_t sub_10019BA38()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[4];
  v0[21] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v2, v1, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_10019BBE4;
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[15];

  return sub_1001667E8(v12, v14, v15, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10019BBE4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 128);
  v7 = *v0;

  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_10019B748(v3, v4, type metadata accessor for ClientContext);
  v8 = swift_task_alloc();
  *(v1 + 184) = v8;
  *v8 = v7;
  v8[1] = sub_10019BDE0;
  v9 = *(v1 + 152);
  v10 = *(v1 + 88);
  v11 = *(v1 + 200);

  return sub_10019837C(v10, v9, v11);
}

uint64_t sub_10019BDE0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_10019C4D0;
  }

  else
  {
    v3 = sub_10019BEF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019BEF4()
{
  v58 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC28);
  sub_10019B748(v2, v1, type metadata accessor for SavePreferencesRequestContent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v56 = v11;
    *v10 = 136315138;
    sub_10019B748(v7, v8, type metadata accessor for SavePreferencesRequestContent);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
    v15 = sub_10000D01C(v12, v14, &v56);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request content: %s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
  }

  v54 = v0[24];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004C1900;
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v56 = 0xD00000000000001DLL;
  v57 = 0x80000001004E43D0;
  sub_10019B748(v16, v18, type metadata accessor for SavePreferencesRequestContent);
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24 = v56;
  v25 = v57;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 32) = v24;
  *(v22 + 40) = v25;
  print(_:separator:terminator:)();

  v26 = type metadata accessor for JSONEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v19 = sub_10019E890;
  v19[1] = 0;
  (*(v20 + 104))(v19, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v21);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009320(&qword_1005AE328, type metadata accessor for SavePreferencesRequestContent);
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v54)
  {

    v31 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    v31 = v29;
    v32 = v30;
  }

  v33 = v0[20];
  v34 = v0[21];
  v46 = v0[19];
  v47 = v0[18];
  v48 = v0[17];
  v49 = v0[16];
  v50 = v0[15];
  v51 = v0[14];
  v35 = v0[13];
  v44 = v0[12];
  v45 = v0[11];
  v52 = v0[10];
  v53 = v0[9];
  v55 = v0[7];
  v43 = v0[4];
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004C1900;
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v56 = 0xD000000000000013;
  v57 = 0x80000001004E4410;
  v0[2] = v31;
  v0[3] = v32;
  sub_10002CF44(v31, v32);
  sub_10004B564(&qword_1005AB500, &qword_1004C5470);
  v37._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v37);

  v38 = v56;
  v39 = v57;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 32) = v38;
  *(v36 + 40) = v39;
  print(_:separator:terminator:)();

  (*(v35 + 8))(v43, v44);
  sub_10019B7B0(v45, type metadata accessor for SavePreferencesRequestContent);
  sub_10019B7B0(v33, type metadata accessor for ClientContext);

  sub_10002CF44(v31, v32);

  sub_10001A794(v31, v32);

  v40 = v0[1];
  v41 = v0[21];

  return v40(v41, v31, v32);
}

uint64_t sub_10019C4D0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[10];
  v13 = v0[9];
  v14 = v0[7];
  (*(v0[13] + 8))(v0[4], v0[12]);
  sub_10019B7B0(v2, type metadata accessor for ClientContext);

  v10 = v0[1];
  v11 = v0[24];

  return v10();
}

uint64_t sub_10019C604(uint64_t a1, char a2)
{
  *(v2 + 200) = a2;
  *(v2 + 32) = a1;
  v3 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = type metadata accessor for SavePreferencesRequestContent(0);
  *(v2 + 64) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  v8 = type metadata accessor for Account();
  *(v2 + 96) = v8;
  v9 = *(v8 - 8);
  *(v2 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v13 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_10019C82C, 0, 0);
}