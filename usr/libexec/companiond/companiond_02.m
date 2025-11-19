uint64_t sub_100044434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v16[2] = __chkstk_darwin(Strong);
      v16[3] = a1;
      v16[4] = a4;
      v16[5] = a5;
      type metadata accessor for CPSRequesterDaemonSession();
      sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession);
      dispatch thunk of Actor.unownedExecutor.getter();
      if (swift_task_isCurrentExecutor())
      {
        v12 = swift_allocObject();
        *(v12 + 16) = sub_100045A18;
        *(v12 + 24) = v16;
        v13 = swift_allocObject();
        *(v13 + 16) = sub_100040098;
        *(v13 + 24) = v12;

        v17[0] = isEscapingClosureAtFileLocation;
        sub_100045AAC(v17);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        __break(1u);
      }

      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v14._object = 0x8000000100073410;
      v14._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v14);
      v16[7] = isEscapingClosureAtFileLocation;
      _print_unlocked<A, B>(_:_:)();
      v15._countAndFlagsBits = 46;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_100044700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v37 = a4;
  v10 = type metadata accessor for CPSRequesterSession.Event();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CPSRequesterDaemonSession();
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 24);
  if (v14 && v14 == a2)
  {
    if (a3)
    {
      swift_errorRetain();
      if (qword_10009AD50 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10002AF48(v15, qword_10009B788);
      swift_errorRetain();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v35 = a2;
        v19 = v18;
        v20 = swift_slowAlloc();
        v36 = v5;
        v21 = v20;
        v34 = swift_slowAlloc();
        v39 = v34;
        *v19 = 136315394;
        *(v19 + 4) = sub_100030690(v37, a5, &v39);
        *(v19 + 12) = 2112;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "[%s] ### bluetooth scanner start failed: error=%@", v19, 0x16u);
        sub_10002556C(v21, &unk_10009B2F0, &unk_10006E0C0);

        sub_100024EF0(v34);

        a2 = v35;
      }

      v23 = objc_allocWithZone(type metadata accessor for CUError());
      swift_errorRetain();
      *v13 = CUError.init(_:)();
      v24 = v38;
      v25 = (*(v38 + 104))(v13, enum case for CPSRequesterSession.Event.error(_:), v10);
      v26 = *(a1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__xpcConnection);
      __chkstk_darwin(v25);
      *(&v33 - 2) = a1;
      *(&v33 - 1) = v13;
      sub_100041780(sub_100040108, (&v33 - 4));
      (*(v24 + 8))(v13, v10);
      [a2 invalidate];

      v27 = *(a1 + 24);
      *(a1 + 24) = 0;
    }

    else
    {
      if (qword_10009AD50 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10002AF48(v28, qword_10009B788);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100030690(v37, a5, &v39);
        _os_log_impl(&_mh_execute_header, v29, v30, "[%s] bluetooth scanner started", v31, 0xCu);
        sub_100024EF0(v32);
      }
    }
  }
}

void sub_100044C04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100044C70(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100045C88(&qword_10009B8B0, type metadata accessor for CPSRequesterDaemonSession);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_100044D10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_100044D8C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100038BB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100044DF8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100044DF8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100044FF4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100044EF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100044EF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1000347D4();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v19 = v7;
    v12 = v8;
    while (1)
    {
      v17 = *(v12 - 2);
      v18 = *(v12 - 1);
      result = StringProtocol.caseInsensitiveCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v19 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v12;
      v14 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v14;
      *(v12 - 2) = v13;
      v12 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100044FF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v97 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v94 = v10;
        v13 = (*v7 + 16 * v12);
        v14 = 16 * v11;
        v15 = v11;
        v16 = (*v7 + 16 * v11);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16 + 5;
        v105 = *v13;
        v107 = v13[1];
        v5 = sub_1000347D4();
        result = StringProtocol.caseInsensitiveCompare<A>(_:)();
        v20 = result;
        v96 = v15;
        v21 = v15 + 2;
        while (v8 != v21)
        {
          v106 = *(v19 - 1);
          v108 = *v19;
          v101 = *(v19 - 3);
          v103 = *(v19 - 2);
          result = StringProtocol.caseInsensitiveCompare<A>(_:)();
          ++v21;
          v19 += 2;
          if ((v20 == -1) == (result != -1))
          {
            v8 = v21 - 1;
            break;
          }
        }

        v11 = v96;
        if (v20 == -1)
        {
          if (v8 < v96)
          {
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
            return result;
          }

          if (v96 < v8)
          {
            v22 = 0;
            v23 = 16 * v8;
            v24 = v96;
            do
            {
              if (v24 != v8 + v22 - 1)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v25 = (v29 + v14);
                v26 = v29 + v23;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v24;
              --v22;
              v23 -= 16;
              v14 += 16;
            }

            while (v24 < v8 + v22);
          }
        }

        v7 = a3;
        v10 = v94;
      }

      v30 = v7[1];
      if (v8 < v30)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v30)
          {
            v30 = v11 + a4;
          }

          if (v30 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v30)
          {
            v99 = v30;
            v95 = v10;
            v92 = v6;
            v31 = *v7;
            v5 = sub_1000347D4();
            v32 = (v31 + 16 * v8);
            v33 = v11 - v8;
            do
            {
              v34 = (v31 + 16 * v8);
              v35 = *v34;
              v36 = v34[1];
              v37 = v33;
              v38 = v32;
              do
              {
                v102 = *(v38 - 2);
                v104 = *(v38 - 1);
                result = StringProtocol.caseInsensitiveCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_121;
                }

                v39 = *v38;
                v40 = v38[1];
                *v38 = *(v38 - 1);
                *(v38 - 1) = v40;
                *(v38 - 2) = v39;
                v38 -= 2;
              }

              while (!__CFADD__(v37++, 1));
              ++v8;
              v32 += 2;
              --v33;
            }

            while (v8 != v99);
            v6 = v92;
            v7 = a3;
            v8 = v99;
            v10 = v95;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100037674(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v43 = *(v10 + 2);
      v42 = *(v10 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_100037674((v42 > 1), v43 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v44;
      v45 = &v10[16 * v43];
      *(v45 + 4) = v11;
      *(v45 + 5) = v8;
      v5 = *v97;
      if (!*v97)
      {
        goto LABEL_125;
      }

      v100 = v8;
      if (v43)
      {
        while (1)
        {
          v46 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v47 = *(v10 + 4);
            v48 = *(v10 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_57:
            if (v50)
            {
              goto LABEL_104;
            }

            v63 = &v10[16 * v44];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_107;
            }

            v69 = &v10[16 * v46 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_111;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v46 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v73 = &v10[16 * v44];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_71:
          if (v68)
          {
            goto LABEL_106;
          }

          v76 = &v10[16 * v46];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_109;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_78:
          v84 = v46 - 1;
          if (v46 - 1 >= v44)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v85 = *&v10[16 * v84 + 32];
          v86 = *&v10[16 * v46 + 40];
          sub_100045658((*v7 + 16 * v85), (*v7 + 16 * *&v10[16 * v46 + 32]), (*v7 + 16 * v86), v5);
          if (v6)
          {
          }

          if (v86 < v85)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000387B0(v10);
          }

          if (v84 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v87 = &v10[16 * v84];
          *(v87 + 4) = v85;
          *(v87 + 5) = v86;
          result = sub_100038724(v46);
          v44 = *(v10 + 2);
          if (v44 <= 1)
          {
            goto LABEL_3;
          }
        }

        v51 = &v10[16 * v44 + 32];
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_102;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_103;
        }

        v58 = &v10[16 * v44];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_105;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v62 >= v54)
        {
          v80 = &v10[16 * v46 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_112;
          }

          if (v49 < v83)
          {
            v46 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v100;
      if (v100 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = &_swiftEmptyArrayStorage;
LABEL_88:
  v5 = v10;
  v10 = *v97;
  if (!*v97)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1000387B0(v5);
    v5 = result;
  }

  v88 = *(v5 + 16);
  if (v88 >= 2)
  {
    while (*v7)
    {
      v89 = *(v5 + 16 * v88);
      v90 = *(v5 + 16 * (v88 - 1) + 40);
      sub_100045658((*v7 + 16 * v89), (*v7 + 16 * *(v5 + 16 * (v88 - 1) + 32)), (*v7 + 16 * v90), v10);
      if (v6)
      {
      }

      if (v90 < v89)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000387B0(v5);
      }

      if (v88 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v91 = (v5 + 16 * v88);
      *v91 = v89;
      v91[1] = v90;
      result = sub_100038724(v88 - 1);
      v88 = *(v5 + 16);
      if (v88 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_100045658(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_1000347D4();
LABEL_27:
      v22 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);
        v17 -= 16;
        v24 = *(v6 - 2);
        v26 = *(v6 - 1);
        if (StringProtocol.caseInsensitiveCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v22;
          }

          if (v14 <= v4 || (v6 -= 16, v22 <= v7))
          {
            v6 = v22;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_1000347D4();
      while (1)
      {
        v27 = *v6;
        v28 = *(v6 + 1);
        v23 = *v4;
        v25 = *(v4 + 1);
        if (StringProtocol.caseInsensitiveCompare<A>(_:)() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000458E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045958(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100042854(a1);
}

uint64_t sub_100045960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004597C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000459BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100043BAC(a1);
}

uint64_t sub_1000459C4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100045A74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045AAC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void *sub_100045AD8@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void *sub_100045B1C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_100045B9C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045BDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000240AC;

  return sub_100042E6C(a1, v5, v4);
}

uint64_t sub_100045C88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CUEnvironmentValues.cpsResponderDaemonEnabled.getter()
{
  sub_10002B3AC();
  CUEnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100045D6C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *v1;
  v4 = type metadata accessor for CUEnvironmentValues();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_100046F44(&qword_10009B998);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v8;
  v2[12] = v7;

  return _swift_task_switch(sub_100045E88, v8, v7);
}

uint64_t sub_100045E88()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = CUNextIDDecimal64();
  v25 = *(v2 + 16);
  v26 = v6;
  v25(v1, v3 + OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment, v4);
  v7 = type metadata accessor for CPSResponderSession();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v0[13] = v10;
  *(v10 + 16) = 0;
  *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;
  *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;
  *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession) = 0;
  v11 = OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration;
  v12 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  swift_weakInit();
  v13 = OBJC_IVAR____TtC10companiond19CPSResponderSession__startTicks;
  *(v10 + v13) = mach_absolute_time();
  *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  v14 = *(v10 + 16);
  *(v10 + 16) = v5;
  v15 = v5;

  v25(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession_environment, v1, v4);
  v0[5] = v26;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  (*(v2 + 8))(v1, v4);
  v19 = (v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
  *v19 = v16;
  v19[1] = v18;
  swift_weakAssign();
  *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__sessionID) = v26;
  v20 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon__sessions;
  swift_beginAccess();

  v21 = *(v3 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + v20);
  *(v3 + v20) = 0x8000000000000000;
  sub_100031B5C(v10, v26, isUniquelyReferenced_nonNull_native);
  *(v3 + v20) = v27;
  swift_endAccess();
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_100046130;

  return sub_100047C44();
}

uint64_t sub_100046130()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_100046250, v4, v3);
}

uint64_t sub_100046250()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1000462BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_100031B5C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_1000311FC(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_1000323E4();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_100037A54(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_10004637C()
{
  v1[8] = v0;
  v2 = *v0;
  sub_100046F44(&qword_10009B998);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v4;
  v1[10] = v3;

  return _swift_task_switch(sub_10004643C, v4, v3);
}

uint64_t sub_10004643C()
{
  v26 = v0;
  v1 = *(v0 + 64);
  _StringGuts.grow(_:)(26);

  v24 = 0xD000000000000017;
  v25 = 0x80000001000735D0;
  v2 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon__sessions;
  swift_beginAccess();
  *(v0 + 56) = *(*(v1 + v2) + 16);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5 = v25;
  *(v0 + 40) = v24;
  *(v0 + 48) = v5;
  v6 = *(v1 + v2);
  *(v0 + 88) = v6;
  v7 = *(v6 + 32);
  *(v0 + 152) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  *(v0 + 96) = &_swiftEmptyArrayStorage;

  if (v10)
  {
    v12 = 0;
LABEL_8:
    *(v0 + 104) = v10;
    *(v0 + 112) = v12;
    *(v0 + 120) = *(*(v11 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));

    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_10004671C;

    return sub_100046F88();
  }

  else
  {
    v13 = 0;
    while (((63 - v9) >> 6) - 1 != v13)
    {
      v12 = v13 + 1;
      v10 = *(v11 + 8 * v13++ + 72);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v24 = &_swiftEmptyArrayStorage;

    sub_100037BC8(&v24);

    v16 = *(v24 + 2);
    if (v16)
    {
      v17 = (v24 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        v20._countAndFlagsBits = v18;
        v20._object = v19;
        String.append(_:)(v20);

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 8);

    return v23(v21, v22);
  }
}

uint64_t sub_10004671C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v9 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;

  v6 = *(v3 + 80);
  v7 = *(v3 + 72);

  return _swift_task_switch(sub_100046844, v7, v6);
}

uint64_t sub_100046844()
{
  v26 = v0;
  v1 = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 96);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v3 = sub_100037778(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100037778((v4 > 1), v5 + 1, 1, v3);
  }

  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);

  *(v3 + 2) = v5 + 1;
  v9 = &v3[16 * v5];
  *(v9 + 4) = v7;
  *(v9 + 5) = v6;
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  *(v0 + 96) = v3;
  v12 = (v11 - 1) & v11;
  if (v12)
  {
    v13 = *(v0 + 88);
LABEL_10:
    *(v0 + 104) = v12;
    *(v0 + 112) = v10;
    *(v0 + 120) = *(*(v13 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v12)))));

    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_10004671C;

    return sub_100046F88();
  }

  else
  {
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v13 = *(v0 + 88);
      if (v14 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v12 = *(v13 + 8 * v14 + 64);
      ++v10;
      if (v12)
      {
        v10 = v14;
        goto LABEL_10;
      }
    }

    v25 = v3;

    sub_100037BC8(&v25);

    v17 = *(v25 + 2);
    if (v17)
    {
      v18 = (v25 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        v21._countAndFlagsBits = v19;
        v21._object = v20;
        String.append(_:)(v21);

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    v24 = *(v0 + 8);

    return v24(v22, v23);
  }
}

uint64_t sub_100046ACC()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment;
  v2 = type metadata accessor for CUEnvironmentValues();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10companiond18CPSResponderDaemon__sessions);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_100046B80(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100046F44(&qword_10009B990);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_100046C0C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002B200;

  return sub_10004637C();
}

uint64_t sub_100046C9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t (*CUEnvironmentValues.cpsResponderDaemonEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10002B3AC();
  CUEnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_100046DBC;
}

uint64_t sub_100046DBC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return CUEnvironmentValues.subscript.setter();
}

uint64_t type metadata accessor for CPSResponderDaemon()
{
  result = qword_10009B8F8;
  if (!qword_10009B8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100046E48()
{
  result = type metadata accessor for CUEnvironmentValues();
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

uint64_t sub_100046F00(uint64_t a1)
{
  result = sub_100046F44(&qword_10009B990);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100046F44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CPSResponderDaemon();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100046F88()
{
  v1[7] = v0;
  v2 = *v0;
  v3 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(sub_100024EA8(&qword_10009BB08, &qword_10006E808) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  appended = type metadata accessor for CUStringAppendFlags();
  v1[15] = appended;
  v11 = *(appended - 8);
  v1[16] = v11;
  v12 = *(v11 + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000471A8, v14, v13);
}

uint64_t sub_10004758C()
{
  v1[5] = v0;
  v2 = *v0;
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v4;
  v1[7] = v3;

  return _swift_task_switch(sub_100047660, v4, v3);
}

uint64_t sub_100047660()
{
  v23 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_10002AF48(v2, qword_10009B9A0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100030690(*(v5 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v5 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] invalidate", v6, 0xCu);
    sub_100024EF0(v7);
  }

  v8 = v0[5];
  v9 = *(v8 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
  *(v8 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  [v9 invalidate];

  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  swift_weakAssign();
  v11 = v0[5];
  if (Strong)
  {
    v0[9] = *(v11 + OBJC_IVAR____TtC10companiond19CPSResponderSession__sessionID);
    type metadata accessor for CPSResponderDaemon();
    sub_10004F4C0(&qword_10009B998, type metadata accessor for CPSResponderDaemon);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10004798C, v13, v12);
  }

  else
  {
    v14 = *(v11 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler);
    *(v11 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;

    v15 = *(v11 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler);
    *(v11 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;

    v16 = OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession;
    v17 = *(v11 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);
    v0[10] = v17;
    *(v11 + v16) = 0;
    if (v17)
    {
      v18 = async function pointer to NXSession.cancel()[1];
      v19 = swift_task_alloc();
      v0[11] = v19;
      *v19 = v0;
      v19[1] = sub_100047B34;

      return NXSession.cancel()();
    }

    else
    {
      v20 = v0[1];

      return v20();
    }
  }
}

uint64_t sub_10004798C()
{
  v2 = v0[8];
  v1 = v0[9];
  swift_beginAccess();
  sub_1000462BC(0, v1);
  swift_endAccess();

  v3 = v0[6];
  v4 = v0[7];

  return _swift_task_switch(sub_100047A30, v3, v4);
}

uint64_t sub_100047A30()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler);
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;

  v3 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler);
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;

  v4 = OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession;
  v5 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);
  v0[10] = v5;
  *(v1 + v4) = 0;
  if (v5)
  {
    v6 = async function pointer to NXSession.cancel()[1];
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_100047B34;

    return NXSession.cancel()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100047B34()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100047C44()
{
  v1[28] = v0;
  v2 = *v0;
  v3 = sub_100024EA8(&qword_10009B2E0, &qword_10006E0B0);
  v1[29] = v3;
  v4 = *(v3 - 8);
  v1[30] = v4;
  v5 = *(v4 + 64) + 15;
  v1[31] = swift_task_alloc();
  v6 = type metadata accessor for CUEnvironmentValues();
  v1[32] = v6;
  v7 = *(v6 - 8);
  v1[33] = v7;
  v8 = *(v7 + 64) + 15;
  v1[34] = swift_task_alloc();
  v9 = *(*(type metadata accessor for NXSession.Configuration() - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[37] = v11;
  v1[38] = v10;

  return _swift_task_switch(sub_100047E1C, v11, v10);
}

uint64_t sub_100047E1C()
{
  v23 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = type metadata accessor for Logger();
  *(v0 + 312) = sub_10002AF48(v2, qword_10009B9A0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100030690(*(v5 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v5 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] activate", v6, 0xCu);
    sub_100024EF0(v7);
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 224);
  type metadata accessor for NXSession();
  static NXSession.Configuration.default.getter();
  swift_getKeyPath();
  *(v0 + 424) = 1;
  sub_10004F4C0(&qword_10009B760, &type metadata accessor for NXSession.Configuration);
  CUKeyPathModifiable.set<A>(_:_:)();

  v14 = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  *(v0 + 320) = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  (*(v11 + 16))(v10, v13 + v14, v12);
  v15 = NXSession.__allocating_init(configuration:environment:)();
  *(v0 + 328) = v15;
  v16 = *(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);
  *(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession) = v15;

  v17 = swift_allocObject();
  *(v0 + 336) = v17;
  swift_weakInit();
  v18 = swift_allocObject();
  *(v0 + 344) = v18;
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10004F4C0(&qword_10009B770, &type metadata accessor for NXSession);

  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 352) = v20;
  *(v0 + 360) = v19;

  return _swift_task_switch(sub_100048140, v20, v19);
}

uint64_t sub_100048140()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  _s5Nexus9NXSessionC15setEventHandleryyyAC0D0OYaYbYAcF();

  v4 = v0[37];
  v5 = v0[38];

  return _swift_task_switch(sub_1000481D8, v4, v5);
}

uint64_t sub_1000481D8()
{
  v1 = v0[28];
  swift_allocObject();
  swift_weakInit();
  v0[21] = type metadata accessor for CPSRequesterStartHandler();
  v0[22] = sub_10004F4C0(&qword_10009BB20, &type metadata accessor for CPSRequesterStartHandler);
  sub_100034710(v0 + 18);
  CPSRequesterStartHandler.init(handler:)();
  v2 = v0[44];
  v3 = v0[45];

  return _swift_task_switch(sub_1000482C8, v2, v3);
}

uint64_t sub_1000482C8()
{
  v1 = v0[41];
  v0[46] = NXSession.register(requestHandler:)();
  v0[47] = 0;
  sub_100024EF0(v0 + 18);
  v2 = v0[37];
  v3 = v0[38];

  return _swift_task_switch(sub_100048368, v2, v3);
}

uint64_t sub_100048368()
{
  v1 = v0[46];
  v0[48] = v0[47];
  v2 = v0[28];
  v3 = *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler);
  *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = v1;

  swift_allocObject();
  swift_weakInit();
  v0[26] = type metadata accessor for CPSRequesterEndHandler();
  v0[27] = sub_10004F4C0(&qword_10009BB28, &type metadata accessor for CPSRequesterEndHandler);
  sub_100034710(v0 + 23);
  CPSRequesterEndHandler.init(handler:)();
  v4 = v0[44];
  v5 = v0[45];

  return _swift_task_switch(sub_100048474, v4, v5);
}

uint64_t sub_100048474()
{
  v1 = v0[48];
  v2 = v0[41];
  v0[49] = NXSession.register(requestHandler:)();
  if (v1)
  {

    v3 = v0[37];
    v4 = v0[38];
    v5 = sub_100048DB4;
  }

  else
  {
    sub_100024EF0(v0 + 23);
    v3 = v0[37];
    v4 = v0[38];
    v5 = sub_100048514;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100048514()
{
  v30 = v0;
  v1 = v0[28];
  v2 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler);
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = v0[49];

  v3 = *(v1 + 16);
  v0[50] = v3;
  if (v3)
  {
    v4 = v0[40];
    v6 = v0[30];
    v5 = v0[31];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v3;
    v10 = CUEnvironmentValues.dispatchQueue.getter();
    [v9 setDispatchQueue:v10];

    v0[2] = v0;
    v0[3] = sub_100048920;
    swift_continuation_init();
    v0[17] = v7;
    v11 = sub_100034710(v0 + 14);
    sub_100024EA8(&qword_10009B2E8, &qword_10006E0B8);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(v11, v5, v7);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10002DCC0;
    v0[13] = &unk_10008B598;
    [v9 activateWithCompletion:v0 + 10];
    (*(v6 + 8))(v11, v7);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    v13 = v0[41];
    v14 = v0[39];
    v15 = v0[28];

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[28];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_100030690(*(v18 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v18 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v29);
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] ### activate failed: error=%@", v19, 0x16u);
      sub_10002556C(v20, &unk_10009B2F0, &unk_10006E0C0);

      sub_100024EF0(v21);
    }

    else
    {
    }

    v24 = v0[35];
    v23 = v0[36];
    v25 = v0[34];
    v26 = v0[31];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100048920()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 408) = v3;
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);
  if (v3)
  {
    v6 = sub_1000491C4;
  }

  else
  {
    v6 = sub_100048A50;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100048A50()
{
  v1 = v0[50];
  v2 = async function pointer to NXSession.add(bluetoothServerConnection:)[1];
  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_100048AEC;
  v4 = v0[41];

  return NXSession.add(bluetoothServerConnection:)(v1);
}

uint64_t sub_100048AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v6 = *v0;

  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return _swift_task_switch(sub_100048C0C, v4, v3);
}

uint64_t sub_100048C0C()
{
  v1 = v0[50];
  v2 = v0[41];

  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100048CA4()
{
  sub_100024EF0(v0 + 18);
  v0[48] = 0;
  v1 = v0[28];
  v2 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler);
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;

  swift_allocObject();
  swift_weakInit();
  v0[26] = type metadata accessor for CPSRequesterEndHandler();
  v0[27] = sub_10004F4C0(&qword_10009BB28, &type metadata accessor for CPSRequesterEndHandler);
  sub_100034710(v0 + 23);
  CPSRequesterEndHandler.init(handler:)();
  v3 = v0[44];
  v4 = v0[45];

  return _swift_task_switch(sub_100048474, v3, v4);
}

uint64_t sub_100048DB4()
{
  v30 = v0;
  sub_100024EF0(v0 + 23);
  v1 = v0[28];
  v2 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler);
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;

  v3 = *(v1 + 16);
  v0[50] = v3;
  if (v3)
  {
    v4 = v0[40];
    v6 = v0[30];
    v5 = v0[31];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v3;
    v10 = CUEnvironmentValues.dispatchQueue.getter();
    [v9 setDispatchQueue:v10];

    v0[2] = v0;
    v0[3] = sub_100048920;
    swift_continuation_init();
    v0[17] = v7;
    v11 = sub_100034710(v0 + 14);
    sub_100024EA8(&qword_10009B2E8, &qword_10006E0B8);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(v11, v5, v7);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10002DCC0;
    v0[13] = &unk_10008B598;
    [v9 activateWithCompletion:v0 + 10];
    (*(v6 + 8))(v11, v7);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    v13 = v0[41];
    v14 = v0[39];
    v15 = v0[28];

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[28];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_100030690(*(v18 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v18 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v29);
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] ### activate failed: error=%@", v19, 0x16u);
      sub_10002556C(v20, &unk_10009B2F0, &unk_10006E0C0);

      sub_100024EF0(v21);
    }

    else
    {
    }

    v24 = v0[35];
    v23 = v0[36];
    v25 = v0[34];
    v26 = v0[31];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1000491C4()
{
  v21 = v0;
  v1 = v0[50];
  v2 = v0[51];
  swift_willThrow();

  v3 = v0[51];
  v4 = v0[41];
  v5 = v0[39];
  v6 = v0[28];

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[28];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100030690(*(v9 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v9 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v20);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] ### activate failed: error=%@", v10, 0x16u);
    sub_10002556C(v11, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v12);
  }

  else
  {
  }

  v15 = v0[35];
  v14 = v0[36];
  v16 = v0[34];
  v17 = v0[31];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000493CC()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009B9A0);
  sub_10002AF48(v0, qword_10009B9A0);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100049438()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label;
  v4 = *(v0 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
  v3 = *(v0 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8);
  v5 = qword_10009AD58;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10002AF48(v6, qword_10009B9A0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_100030690(v4, v3, &v19);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] deinit", v9, 0xCu);
    sub_100024EF0(v10);
  }

  else
  {
  }

  v12 = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  v13 = type metadata accessor for CUEnvironmentValues();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = *(v2 + 8);

  v15 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler);

  v16 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler);

  v17 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);

  sub_10002556C(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration, &qword_10009BB08, &qword_10006E808);
  swift_weakDestroy();

  return v1;
}

uint64_t sub_100049678()
{
  sub_100049438();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CPSResponderSession()
{
  result = qword_10009BA28;
  if (!qword_10009BA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049724()
{
  v0 = type metadata accessor for CUEnvironmentValues();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100049824();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100049824()
{
  if (!qword_10009BA38)
  {
    type metadata accessor for CPSRequesterUseCaseConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10009BA38);
    }
  }
}

uint64_t sub_10004987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10004989C, 0, 0);
}

uint64_t sub_10004989C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10004998C;
    v4 = v0[5];

    return sub_100049A9C(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10004998C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100049A9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = type metadata accessor for NXConnection.Event();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for NXSession.Event();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v11;
  v2[12] = v10;

  return _swift_task_switch(sub_100049C3C, v11, v10);
}

uint64_t sub_100049C3C()
{
  v37 = v0;
  v2 = v0 + 10;
  v1 = v0[10];
  v3 = v0[9];
  v5 = v0 + 8;
  v4 = v0[8];
  (*(v3 + 16))(v1, v0[2], v4);
  if ((*(v3 + 88))(v1, v4) == enum case for NXSession.Event.connectionEvent(_:))
  {
    v2 = v0 + 6;
    v6 = v0[6];
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[5];
    v5 = v0 + 4;
    v10 = v0[4];
    (*(v0[9] + 96))(v7, v0[8]);
    v11 = *v7;

    v12 = sub_100024EA8(&unk_10009BB80, &qword_10006E8E0);
    (*(v9 + 32))(v8, &v7[*(v12 + 48)], v10);
    (*(v9 + 16))(v6, v8, v10);
    v13 = (*(v9 + 88))(v6, v10);
    v14 = v0[5];
    v15 = v0[4];
    if (v13 == enum case for NXConnection.Event.disconnected(_:))
    {
      v16 = v0[6];
      (*(v14 + 96))(v16, v15);
      v17 = *v16;
      v0[13] = *v16;
      if (qword_10009AD58 != -1)
      {
        swift_once();
      }

      v18 = v0[3];
      v19 = type metadata accessor for Logger();
      sub_10002AF48(v19, qword_10009B9A0);
      v20 = v17;

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v0[3];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36 = v26;
        *v24 = 136315394;
        *(v24 + 4) = sub_100030690(*(v23 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v23 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v36);
        *(v24 + 12) = 2112;
        *(v24 + 14) = v20;
        *v25 = v17;
        v27 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%s] disconnected: error=%@", v24, 0x16u);
        sub_10002556C(v25, &unk_10009B2F0, &unk_10006E0C0);

        sub_100024EF0(v26);
      }

      v28 = swift_task_alloc();
      v0[14] = v28;
      *v28 = v0;
      v28[1] = sub_10004A03C;
      v29 = v0[3];

      return sub_10004758C();
    }

    v31 = *(v14 + 8);
    v31(v0[7], v15);
  }

  else
  {
    v31 = *(v0[9] + 8);
  }

  v32 = v0[10];
  v34 = v0[6];
  v33 = v0[7];
  v31(*v2, *v5);

  v35 = v0[1];

  return v35();
}

uint64_t sub_10004A03C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_10004A15C, v4, v3);
}

uint64_t sub_10004A15C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  (*(v1 + 8))(*(v0 + 56), *(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004A200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return _swift_task_switch(sub_10004A224, 0, 0);
}

uint64_t sub_10004A224()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10004A364;
    v4 = v0[6];

    return sub_10004A478(v4);
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10004A364()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10004F520;
  }

  else
  {
    v3 = sub_10004F51C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004A478(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *v1;
  v4 = *(*(sub_100024EA8(&qword_10009BB30, &qword_10006E890) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative();
  v2[26] = v5;
  v6 = *(v5 - 8);
  v2[27] = v6;
  v7 = *(v6 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v8 = type metadata accessor for CPSLocalizationKey();
  v2[30] = v8;
  v9 = *(v8 - 8);
  v2[31] = v9;
  v10 = *(v9 + 64) + 15;
  v2[32] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v12 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v13 = *(*(sub_100024EA8(&qword_10009BB38, &qword_10006E898) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v14 = *(*(sub_100024EA8(&qword_10009BB08, &qword_10006E808) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v15 = type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase();
  v2[38] = v15;
  v16 = *(v15 - 8);
  v2[39] = v16;
  v17 = *(v16 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v18 = type metadata accessor for CPSResponderUseCaseConfiguration();
  v2[42] = v18;
  v19 = *(v18 - 8);
  v2[43] = v19;
  v20 = *(v19 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v21 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v2[46] = v21;
  v22 = *(v21 - 8);
  v2[47] = v22;
  v23 = *(v22 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A868, v25, v24);
}

uint64_t sub_10004A868()
{
  v237 = v0;
  v1 = v0[50];
  v2 = v0[41];
  v3 = v0[23];
  CPSRequesterStartMessage.configuration.getter();
  v4 = static CPSResponderUseCaseConfiguration.useCases.getter();
  CPSRequesterUseCaseConfiguration.useCase.getter();
  if (*(v4 + 16))
  {
    v5 = sub_1000312FC(v0[41]);
    if (v6)
    {
      v228 = v0[50];
      v8 = v0[46];
      v7 = v0[47];
      v9 = v0[43];
      v10 = v0[41];
      v12 = v0[38];
      v11 = v0[39];
      v13 = v0[37];
      v14 = v0[24];
      log = *(v9 + 16);
      (log)(v0[45], *(v4 + 56) + *(v9 + 72) * v5, v0[42]);
      (*(v11 + 8))(v10, v12);

      v15 = v228;
      v229 = *(v7 + 16);
      v229(v13, v15, v8);
      (*(v7 + 56))(v13, 0, 1, v8);
      v16 = OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration;
      swift_beginAccess();
      sub_10004EF20(v13, v14 + v16);
      swift_endAccess();
      if (qword_10009AD58 != -1)
      {
        swift_once();
      }

      v17 = v0[49];
      v18 = v0[50];
      v19 = v0[46];
      v225 = v0[45];
      v20 = v0[44];
      v21 = v0[42];
      v22 = v0[24];
      v23 = type metadata accessor for Logger();
      sub_10002AF48(v23, qword_10009B9A0);
      v229(v17, v18, v19);
      (log)(v20, v225, v21);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      v26 = os_log_type_enabled(v24, v25);
      v27 = v0[49];
      v29 = v0[46];
      v28 = v0[47];
      v30 = v0[43];
      v31 = v0[44];
      v32 = v0[42];
      if (v26)
      {
        logc = v24;
        v33 = v0[24];
        v217 = v25;
        v34 = swift_slowAlloc();
        v236[0] = swift_slowAlloc();
        *v34 = 136315650;
        *(v34 + 4) = sub_100030690(*(v33 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v33 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v236);
        *(v34 + 12) = 2080;
        sub_10004F4C0(&qword_10009B740, &type metadata accessor for CPSRequesterUseCaseConfiguration);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v230 = *(v28 + 8);
        v230(v27, v29);
        v38 = sub_100030690(v35, v37, v236);

        *(v34 + 14) = v38;
        *(v34 + 22) = 2080;
        sub_10004F4C0(&qword_10009BB50, &type metadata accessor for CPSResponderUseCaseConfiguration);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        v226 = *(v30 + 8);
        v226(v31, v32);
        v42 = sub_100030690(v39, v41, v236);

        *(v34 + 24) = v42;
        _os_log_impl(&_mh_execute_header, logc, v217, "[%s] requester start: requesterConfiguration={%s}, responderConfiguration={%s}", v34, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v226 = *(v30 + 8);
        v226(v31, v32);
        v230 = *(v28 + 8);
        v230(v27, v29);
      }

      v80 = v0[24];
      v81 = OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession;
      v82 = *(v80 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
      *(v80 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
      if (v82)
      {
        v83 = v0[24];

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = v0[24];
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v236[0] = v88;
          *v87 = 136315138;
          *(v87 + 4) = sub_100030690(*(v86 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v86 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v236);
          _os_log_impl(&_mh_execute_header, v84, v85, "[%s] cancel previous banner", v87, 0xCu);
          sub_100024EF0(v88);
        }

        [v82 invalidate];
      }

      v89 = v0[45];
      v90 = [objc_allocWithZone(CUUserNotificationSession) init];
      v91 = *(v80 + v81);
      *(v80 + v81) = v90;
      v92 = v90;

      static CPSConstants.userNotificationBundleID.getter();
      v93 = String._bridgeToObjectiveC()();

      [v92 setBundleID:v93];

      CPSResponderUseCaseConfiguration.bannerCategoryID.getter();
      if (!v94)
      {
        static CPSConstants.userNotificationCategoryGeneric.getter();
      }

      v95 = v0[45];
      v96 = v0[24];
      v97 = String._bridgeToObjectiveC()();

      [v92 setCategoryID:v97];

      v98 = CUEnvironmentValues.dispatchQueue.getter();
      [v92 setDispatchQueue:v98];

      CPSResponderUseCaseConfiguration.bannerDefaultActionID.getter();
      if (v99 || (v100 = v0[45], CPSResponderUseCaseConfiguration.bannerOtherActionID.getter(), v101))
      {

        v102 = 153;
      }

      else
      {
        v102 = 17;
      }

      v103 = v0[45];
      [v92 setFlags:v102];
      CPSResponderUseCaseConfiguration.bannerIconSystemName.getter();
      if (v104)
      {
        v105 = String._bridgeToObjectiveC()();
      }

      else
      {
        v105 = 0;
      }

      v106 = v0[45];
      v107 = v0[36];
      v108 = v0[30];
      v109 = v0[31];
      logb = v92;
      [v92 setIconSystemName:v105];

      CPSResponderUseCaseConfiguration.bannerTitleKey.getter();
      v110 = *(v109 + 48);
      if (v110(v107, 1, v108) == 1)
      {
        sub_10002556C(v0[36], &qword_10009BB38, &qword_10006E898);
      }

      else
      {
        v111 = v0[45];
        v112 = v0[36];
        v113 = v0[30];
        v114 = v0[31];
        v115 = CPSLocalizationKey.resolve()();
        (*(v114 + 8))(v112, v113);
        CPSResponderUseCaseConfiguration.bannerLocalizedFilename.getter();
        if (v116)
        {
          v118 = v0[33];
          v117 = v0[34];
          String.LocalizationValue.init(_:)();
          static CPSConstants.userNotificationBundlePath.getter();
          v119 = objc_allocWithZone(NSBundle);
          v120 = String._bridgeToObjectiveC()();

          [v119 initWithPath:v120];

          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v121 = String._bridgeToObjectiveC()();

          [v92 setTitleKey:v121];
        }

        else
        {

          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v236[0] = v125;
            *v124 = 136315138;
            *(v124 + 4) = sub_100030690(v115._countAndFlagsBits, v115._object, v236);
            _os_log_impl(&_mh_execute_header, v122, v123, "$$$ titleKey=%s", v124, 0xCu);
            sub_100024EF0(v125);
          }

          v126 = String._bridgeToObjectiveC()();

          [v92 setTitleKey:v126];
        }
      }

      v127 = v0[45];
      v128 = v0[35];
      v129 = v0[30];
      CPSResponderUseCaseConfiguration.bannerBodyKey.getter();
      if (v110(v128, 1, v129) == 1)
      {
        v130 = v0[50];
        v131 = v0[26];
        v132 = v0[27];
        v133 = v0[25];
        sub_10002556C(v0[35], &qword_10009BB38, &qword_10006E898);
        CPSRequesterUseCaseConfiguration.requesterAlternative.getter();
        v134 = logb;
        if ((*(v132 + 48))(v133, 1, v131) == 1)
        {
          sub_10002556C(v0[25], &qword_10009BB30, &qword_10006E890);
          goto LABEL_48;
        }

        v145 = v0[28];
        v146 = v0[29];
        v147 = v0[26];
        v148 = v0[27];
        (*(v148 + 32))(v146, v0[25], v147);
        (*(v148 + 16))(v145, v146, v147);
        if ((*(v148 + 88))(v145, v147) != enum case for CPSRequesterUseCaseConfiguration.RequesterAlternative.qrCodeURL(_:))
        {
          v157 = v0[28];
          v158 = v0[26];
          v159 = *(v0[27] + 8);
          v159(v0[29], v158);
          v159(v157, v158);
          goto LABEL_48;
        }

        v149 = v0[28];
        (*(v0[27] + 96))(v149, v0[26]);
        v150 = sub_100024EA8(&qword_10009BB48, &qword_10006E8A0);
        v151 = *(v149 + v150[12] + 8);
        v152 = *(v149 + v150[16] + 8);

        v153 = *(v149 + v150[20] + 8);

        v154 = type metadata accessor for URL();
        (*(*(v154 - 8) + 8))(v149, v154);
        if (v151)
        {
        }

        v155 = String._bridgeToObjectiveC()();
        v160 = CUAddSuffixForCurrentDeviceClass();

        v161 = v0[29];
        v162 = v0[26];
        v163 = v0[27];
        if (!v160)
        {
          (*(v163 + 8))(v0[29], v0[26]);
          goto LABEL_48;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v163 + 8))(v161, v162);
      }

      else
      {
        v136 = v0[31];
        v135 = v0[32];
        v137 = v0[30];
        (*(v136 + 32))(v135, v0[35], v137);
        CPSLocalizationKey.resolve()();
        (*(v136 + 8))(v135, v137);
        v134 = v92;
      }

      v138 = v0[45];
      CPSResponderUseCaseConfiguration.bannerLocalizedFilename.getter();
      if (v139)
      {
        v141 = v0[33];
        v140 = v0[34];
        String.LocalizationValue.init(_:)();
        static CPSConstants.userNotificationBundlePath.getter();
        v142 = objc_allocWithZone(NSBundle);
        v143 = String._bridgeToObjectiveC()();

        [v142 initWithPath:v143];

        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v144 = String._bridgeToObjectiveC()();

        [v134 setBodyKey:v144];
      }

      else
      {
        v156 = String._bridgeToObjectiveC()();

        [v134 setBodyKey:v156];
      }

LABEL_48:
      v164 = v0[50];
      v165 = CPSRequesterUseCaseConfiguration.bannerBodyParameters.getter();
      if (v165)
      {
        sub_10004C360(v165);

        v166.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v166.super.isa = 0;
      }

      v167 = v0[45];
      v168 = v0[24];
      [v134 setBodyArguments:v166.super.isa];

      v169 = swift_allocObject();
      swift_weakInit();
      v0[6] = sub_10004EF90;
      v0[7] = v169;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10004CEC0;
      v0[5] = &unk_10008B5C0;
      v170 = _Block_copy(v0 + 2);
      v171 = v0[7];

      [v134 setActionHandler:v170];
      _Block_release(v170);
      v172 = CPSResponderUseCaseConfiguration.bannerDefaultActionID.getter();
      if (v173)
      {
        v174 = v0[24];
        v175 = v172;
        v176 = v173;
        v177 = String._bridgeToObjectiveC()();
        v178 = String._bridgeToObjectiveC()();
        v179 = swift_allocObject();
        swift_weakInit();
        v180 = swift_allocObject();
        v180[2] = v179;
        v180[3] = v175;
        v180[4] = v176;
        v0[18] = sub_10004F040;
        v0[19] = v180;
        v0[14] = _NSConcreteStackBlock;
        v0[15] = 1107296256;
        v0[16] = sub_100025F68;
        v0[17] = &unk_10008B660;
        v181 = _Block_copy(v0 + 14);
        v182 = v0[19];

        [v134 addActionWithIdentifier:v177 title:v178 flags:0 handler:v181];

        _Block_release(v181);
      }

      v183 = v0[45];
      v184 = CPSResponderUseCaseConfiguration.bannerOtherActionID.getter();
      if (v185)
      {
        v186 = v0[24];
        v187 = v184;
        v188 = v185;
        v189 = String._bridgeToObjectiveC()();
        v190 = String._bridgeToObjectiveC()();
        v191 = swift_allocObject();
        swift_weakInit();
        v192 = swift_allocObject();
        v192[2] = v191;
        v192[3] = v187;
        v192[4] = v188;
        v0[12] = sub_10004EFDC;
        v0[13] = v192;
        v0[8] = _NSConcreteStackBlock;
        v0[9] = 1107296256;
        v0[10] = sub_100025F68;
        v0[11] = &unk_10008B610;
        v193 = _Block_copy(v0 + 8);
        v194 = v0[13];

        [v134 addActionWithIdentifier:v189 title:v190 flags:0 handler:v193];

        _Block_release(v193);
      }

      v196 = v0[49];
      v195 = v0[50];
      v197 = v0[47];
      v198 = v0[48];
      v200 = v0[45];
      v199 = v0[46];
      v201 = v0[43];
      v202 = v0[42];
      v204 = v0[41];
      v206 = v0[40];
      v208 = v0[37];
      v210 = v0[36];
      v212 = v0[35];
      v214 = v0[34];
      v216 = v0[33];
      v219 = v0[32];
      v221 = v0[29];
      v224 = v0[28];
      logd = v0[25];
      [v134 activate];

      v226(v200, v202);
      v230(v195, v199);

      v79 = v0[1];
      goto LABEL_56;
    }
  }

  v43 = v0[50];
  v44 = v0[40];
  v45 = v0[41];
  v46 = v0[38];
  v47 = v0[39];

  v48 = *(v47 + 8);
  v48(v45, v46);
  _StringGuts.grow(_:)(24);

  v236[0] = 0xD000000000000016;
  v236[1] = 0x8000000100073710;
  CPSRequesterUseCaseConfiguration.useCase.getter();
  sub_10004F4C0(&qword_10009BB40, &type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase);
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  v48(v44, v46);
  v50 = objc_allocWithZone(type metadata accessor for CUError());
  v51 = CUError.init(_:_:_:)();
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v52 = v0[50];
  v54 = v0[47];
  v53 = v0[48];
  v55 = v0[46];
  v56 = v0[24];
  v57 = type metadata accessor for Logger();
  sub_10002AF48(v57, qword_10009B9A0);
  (*(v54 + 16))(v53, v52, v55);

  v58 = v51;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();

  v61 = os_log_type_enabled(v59, v60);
  v62 = v0[47];
  v63 = v0[48];
  v64 = v0[46];
  if (v61)
  {
    v65 = v0[24];
    v66 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v236[0] = swift_slowAlloc();
    *v66 = 136315650;
    *(v66 + 4) = sub_100030690(*(v65 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v65 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v236);
    *(v66 + 12) = 2080;
    sub_10004F4C0(&qword_10009B740, &type metadata accessor for CPSRequesterUseCaseConfiguration);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    loga = *(v62 + 8);
    (loga)(v63, v64);
    v70 = sub_100030690(v67, v69, v236);

    *(v66 + 14) = v70;
    *(v66 + 22) = 2112;
    *(v66 + 24) = v58;
    *v222 = v58;
    v71 = v58;
    _os_log_impl(&_mh_execute_header, v59, v60, "[%s] ### requester start failed: requesterConfiguration={%s}, error=%@", v66, 0x20u);
    sub_10002556C(v222, &unk_10009B2F0, &unk_10006E0C0);

    swift_arrayDestroy();
  }

  else
  {

    loga = *(v62 + 8);
    (loga)(v63, v64);
  }

  v73 = v0[49];
  v72 = v0[50];
  v74 = v0[48];
  v76 = v0[45];
  v75 = v0[46];
  v77 = v0[44];
  v78 = v0[41];
  v205 = v0[40];
  v207 = v0[37];
  v209 = v0[36];
  v211 = v0[35];
  v213 = v0[34];
  v215 = v0[33];
  v218 = v0[32];
  v220 = v0[29];
  v223 = v0[28];
  v227 = v0[25];
  swift_willThrow();
  (loga)(v72, v75);

  v79 = v0[1];
LABEL_56:

  return v79();
}

uint64_t sub_10004BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return _swift_task_switch(sub_10004BE70, 0, 0);
}

uint64_t sub_10004BE70()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10003F1BC;
    v4 = v0[6];

    return sub_10004BFB0(v4);
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10004BFB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = type metadata accessor for CPSRequesterEndMessage();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004C0E0, v8, v7);
}

uint64_t sub_10004C0E0()
{
  v24 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_10002AF48(v6, qword_10009B9A0);
  (*(v2 + 16))(v1, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_100030690(*(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v23);
    *(v14 + 12) = 2112;
    v17 = CPSRequesterEndMessage.error.getter();
    *(v14 + 14) = v17;
    *v15 = v17;
    (*(v11 + 8))(v10, v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] requester end: error=%@", v14, 0x16u);
    sub_10002556C(v15, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v16);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = v0[6];
  v19 = v0[3];
  v20 = *(v19 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
  *(v19 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  [v20 invalidate];

  v21 = v0[1];

  return v21();
}

unint64_t *sub_10004C360(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_10004F04C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10004F04C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_1000347C4(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10004C460(int a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    __chkstk_darwin(result);
    v10[4] = a1;
    v11 = a2;
    type metadata accessor for CPSResponderSession();
    sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v6 = swift_allocObject();
      *(v6 + 16) = sub_10004F490;
      *(v6 + 24) = v10;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100040098;
      *(v7 + 24) = v6;

      v13[0] = isEscapingClosureAtFileLocation;
      sub_100045CD8(v13);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v8._object = 0x8000000100073410;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v12 = isEscapingClosureAtFileLocation;
    _print_unlocked<A, B>(_:_:)();
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10004C6E8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  type metadata accessor for CPSResponderSession();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10004C7B0(a2, a3);
}

void sub_10004C7B0(unsigned int a1, uint64_t a2)
{
  v3 = v2;
  v61 = a1;
  v5 = type metadata accessor for CPSResponderEvent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024EA8(&qword_10009BB30, &qword_10006E890);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v59 = &v51 - v16;
  v17 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v60 = &v51 - v22;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10002AF48(v23, qword_10009B9A0);

  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v51 = v11;
    v52 = v10;
    v53 = v9;
    v54 = v6;
    v55 = v5;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v26 = 136315650;
    *(v26 + 4) = sub_100030690(*(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v62);
    *(v26 + 12) = 2080;
    sub_10004F0C4(v61);
    v28 = String.init(cString:)();
    v30 = sub_100030690(v28, v29, v62);

    *(v26 + 14) = v30;
    *(v26 + 22) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = v31;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v33 = v21;
    *(v26 + 24) = v31;
    *v27 = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%s] user notification action: action=%s, error=%@", v26, 0x20u);
    sub_10002556C(v27, &unk_10009B2F0, &unk_10006E0C0);

    swift_arrayDestroy();

    v6 = v54;
    v5 = v55;
    v10 = v52;
    v9 = v53;
    v11 = v51;
  }

  else
  {

    v33 = v21;
  }

  v34 = v59;
  v35 = v60;
  if (v61 == 2)
  {
    v38 = &enum case for CPSResponderEvent.userDenied(_:);
LABEL_17:
    (*(v6 + 104))(v9, *v38, v5);
    sub_10004DA38(v9);
    (*(v6 + 8))(v9, v5);
    goto LABEL_18;
  }

  if (v61 == 1)
  {
    v36 = OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration;
    swift_beginAccess();
    v37 = type metadata accessor for CPSRequesterUseCaseConfiguration();
    if ((*(*(v37 - 8) + 48))(v3 + v36, 1, v37))
    {
      swift_endAccess();
      (*(v57 + 56))(v34, 1, 1, v58);
    }

    else
    {
      CPSRequesterUseCaseConfiguration.requesterAlternative.getter();
      swift_endAccess();
      v39 = v57;
      if ((*(v57 + 48))(v34, 1, v58) != 1)
      {
        v41 = v34;
        v42 = v58;
        (*(v39 + 32))(v35, v41, v58);
        (*(v39 + 16))(v33, v35, v42);
        if ((*(v39 + 88))(v33, v42) == enum case for CPSRequesterUseCaseConfiguration.RequesterAlternative.qrCodeURL(_:))
        {
          (*(v39 + 96))(v33, v42);
          v43 = v39;
          v44 = sub_100024EA8(&qword_10009BB48, &qword_10006E8A0);
          v45 = *&v33[v44[12] + 8];

          v46 = *&v33[v44[16] + 8];

          v47 = *&v33[v44[20] + 8];

          v48 = v33;
          v49 = v56;
          (*(v11 + 32))(v56, v48, v10);
          sub_10004D668(v49);
          (*(v11 + 8))(v49, v10);
          (*(v43 + 8))(v60, v42);
        }

        else
        {
          v50 = *(v39 + 8);
          v50(v35, v42);
          v50(v33, v42);
        }

        goto LABEL_16;
      }
    }

    sub_10002556C(v34, &qword_10009BB30, &qword_10006E890);
LABEL_16:
    v38 = &enum case for CPSResponderEvent.userAccepted(_:);
    goto LABEL_17;
  }

LABEL_18:
  v40 = *(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
  *(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  [v40 invalidate];
}

void sub_10004CEC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10004CF38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v8 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
    v7 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8);
    v9 = qword_10009AD58;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10002AF48(v10, qword_10009B9A0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_100030690(v8, v7, v18);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100030690(a2, a3, v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] default action tapped: actionID=%s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    type metadata accessor for CPSResponderSession();
    sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v15 = swift_allocObject();
      *(v15 + 16) = sub_10004EAFC;
      *(v15 + 24) = 0;
      v18[0] = v6;
      sub_100045AAC(v18);

      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();
      __break(1u);
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v16._object = 0x8000000100073410;
    v16._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v16);
    _print_unlocked<A, B>(_:_:)();
    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D2D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v8 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
    v7 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8);
    v9 = qword_10009AD58;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10002AF48(v10, qword_10009B9A0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_100030690(v8, v7, v18);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100030690(a2, a3, v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] other action tapped: actionID=%s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    type metadata accessor for CPSResponderSession();
    sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v15 = swift_allocObject();
      *(v15 + 16) = sub_10004EB1C;
      *(v15 + 24) = 0;
      v18[0] = v6;
      sub_100045CD8(v18);

      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();
      __break(1u);
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v16._object = 0x8000000100073410;
    v16._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v16);
    _print_unlocked<A, B>(_:_:)();
    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10004D668(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v11 = v9;
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    sub_100024EA8(&qword_10009BB58, &qword_10006E8A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006E730;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v15;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_10004F0E8(inited);
    swift_setDeallocating();
    sub_10002556C(inited + 32, &qword_10009BB60, &qword_10006E8B0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v11 openURL:v13 withOptions:isa];

    if ((v17 & 1) == 0)
    {
      if (qword_10009AD58 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10002AF48(v18, qword_10009B9A0);
      (*(v5 + 16))(v8, a1, v4);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v21 = 136315394;
        *(v21 + 4) = sub_100030690(*(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v27);
        *(v21 + 12) = 2080;
        sub_10004F4C0(&qword_10009BB68, &type metadata accessor for URL);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v5 + 8))(v8, v4);
        v25 = sub_100030690(v22, v24, &v27);

        *(v21 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "[%s] ### open URL failed: url=%s", v21, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004DA38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CPSResponderEvent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - v13;
  v15 = *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);
  if (v15)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    (*(v5 + 16))(v10, a1, v4);
    v17 = sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
    v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = v2;
    *(v19 + 3) = v17;
    *(v19 + 4) = v2;
    (*(v5 + 32))(&v19[v18], v10, v4);
    *&v19[(v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;
    swift_retain_n();

    sub_100057714(0, 0, v14, &unk_10006E8D0, v19);
  }

  else
  {
    if (qword_10009AD58 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10002AF48(v20, qword_10009B9A0);
    (*(v5 + 16))(v8, a1, v4);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_100030690(*(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v29);
      *(v23 + 12) = 2080;
      sub_10004F4C0(&qword_10009B780, &type metadata accessor for CPSResponderEvent);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v5 + 8))(v8, v4);
      v27 = sub_100030690(v24, v26, &v29);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s] report response event ignored: no nexus session, event=%s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_10004DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for NXRequestMetadata();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for CPSResponderEventMessage();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = type metadata accessor for NXNoResponseMessage();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v16 = type metadata accessor for CPSResponderEvent();
  v6[14] = v16;
  v17 = *(v16 - 8);
  v6[15] = v17;
  v18 = *(v17 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  type metadata accessor for CPSResponderSession();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v20;
  v6[20] = v19;

  return _swift_task_switch(sub_10004E0E8, v20, v19);
}

uint64_t sub_10004E0E8()
{
  v37 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for Logger();
  v0[21] = sub_10002AF48(v6, qword_10009B9A0);
  v7 = *(v3 + 16);
  v0[22] = v7;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v13 = v0[14];
  v12 = v0[15];
  if (v10)
  {
    v35 = v9;
    v14 = v0[2];
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100030690(*(v14 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v14 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v36);
    *(v15 + 12) = 2080;
    sub_10004F4C0(&qword_10009B780, &type metadata accessor for CPSResponderEvent);
    log = v8;
    v16 = v7;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v21 = v17;
    v7 = v16;
    v22 = sub_100030690(v21, v19, &v36);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, log, v35, "[%s] report event: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v11, v13);
  }

  v0[24] = v20;
  v23 = v0[10];
  v24 = v0[7];
  v7(v0[17], v0[3], v0[14]);
  CPSResponderEventMessage.init(event:)();
  static NXRequestMetadata.default.getter();
  v25 = async function pointer to NXSession.send<A>(request:metadata:)[1];
  v26 = swift_task_alloc();
  v0[25] = v26;
  v27 = sub_10004F4C0(&qword_10009BB78, &type metadata accessor for CPSResponderEventMessage);
  *v26 = v0;
  v26[1] = sub_10004E450;
  v28 = v0[13];
  v29 = v0[10];
  v30 = v0[7];
  v31 = v0[8];
  v32 = v0[4];

  return NXSession.send<A>(request:metadata:)(v28, v29, v30, v31, v27);
}

uint64_t sub_10004E450()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 208) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v11 = v2[19];
    v12 = v2[20];
    v13 = sub_10004E6F0;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v11 = v2[19];
    v12 = v2[20];
    v13 = sub_10004E648;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_10004E648()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10004E6F0()
{
  v32 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 16);
  (*(v0 + 176))(*(v0 + 128), *(v0 + 24), *(v0 + 112));

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);
  if (v7)
  {
    v30 = v6;
    v13 = *(v0 + 16);
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100030690(*(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v31);
    *(v14 + 12) = 2080;
    sub_10004F4C0(&qword_10009B780, &type metadata accessor for CPSResponderEvent);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v9(v10, v12);
    v18 = sub_100030690(v15, v17, &v31);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v29 = v19;
    _os_log_impl(&_mh_execute_header, v5, v30, "[%s] ### report event failed: event=%s, error=%@", v14, 0x20u);
    sub_10002556C(v29, &unk_10009B2F0, &unk_10006E0C0);

    swift_arrayDestroy();
  }

  else
  {
    v20 = *(v0 + 208);

    v9(v10, v12);
  }

  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 80);
  v26 = *(v0 + 56);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10004E9E0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_10004F4C0(&qword_10009BB18, type metadata accessor for CPSResponderSession);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_10004EA80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_10004EB3C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = *a1;
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10004C7B0(a3, 0);
}

uint64_t sub_10004EC20@<X0>(_BYTE *a1@<X8>)
{
  result = NXSession.Configuration.serverMode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004EC78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004ECDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000257F4;

  return sub_10004987C(a1, v4, v5, v6);
}

uint64_t sub_10004ED8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000257F4;

  return sub_10004A200(a1, a2, a3, v3);
}

uint64_t sub_10004EE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000240AC;

  return sub_10004BE4C(a1, a2, a3, v3);
}

uint64_t sub_10004EF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024EA8(&qword_10009BB08, &qword_10006E808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004EF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004EFE8(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

char *sub_10004F04C(char *a1, int64_t a2, char a3)
{
  result = sub_1000388D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10004F06C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000389E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10004F08C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

const char *sub_10004F0C4(unsigned int a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_10008B750[a1];
  }
}

unint64_t sub_10004F0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024EA8(&qword_10009BB70, &unk_10006E8B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10004F218(v4, &v13, &qword_10009BB60, &qword_10006E8B0);
      v5 = v13;
      v6 = v14;
      result = sub_100031284(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000347C4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10004F218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024EA8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004F280()
{
  v1 = type metadata accessor for CPSResponderEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004F360(uint64_t a1)
{
  v4 = *(type metadata accessor for CPSResponderEvent() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000240AC;

  return sub_10004DEA0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10004F4C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F52C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CPSXPCServerRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection);
  sub_100053DD8(&qword_10009BD28, &type metadata accessor for CPSXPCServerRequest);
  v11 = CUXPCCoder.encode<A>(message:)();
  if (v2)
  {
    if (qword_10009AD60 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10002AF48(v12, qword_10009BB90);
    (*(v6 + 16))(v9, a1, v5);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v15 = 136315650;
      sub_100053DD8(&unk_10009BD30, &type metadata accessor for CPSXPCServerRequest);
      v24 = v14;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v6 + 8))(v9, v5);
      v19 = sub_100030690(v16, v18, &v27);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_100030690(*(v3 + 64), *(v3 + 72), &v27);
      *(v15 + 22) = 2112;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v20;
      v21 = v25;
      *v25 = v20;
      _os_log_impl(&_mh_execute_header, v13, v24, "### send request failed: request={%s}, client=%s error=%@", v15, 0x20u);
      sub_10002556C(v21, &unk_10009B2F0, &unk_10006E0C0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return swift_willThrow();
  }

  else
  {
    xpc_connection_send_message(v10, v11);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10004F8E4()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BB90);
  sub_10002AF48(v0, qword_10009BB90);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004F950()
{
  appended = type metadata accessor for CUStringAppendFlags();
  v2 = *(appended - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(appended);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  static CUStringAppendFlags.standard.getter();
  v6 = *(v0 + 56);
  v22 = *(v0 + 48);
  v23 = v6;

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  LODWORD(v21[0]) = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__pid);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  String.append(_:_:)();

  if (*(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel + 8))
  {
    v9 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel);
    v10 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel + 8);

    String.append(_:_:)();
  }

  v11 = mach_absolute_time();
  v12 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__startTicks);
  v13 = v11 >= v12;
  result = v11 - v12;
  if (v13)
  {
    UpTicksToSeconds();
    v15 = CUPrintDuration64();
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    v20._countAndFlagsBits = 4026485;
    v20._object = 0xE300000000000000;
    String.append(_:)(v20);
    v21[0] = v17;
    v21[1] = v19;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    String.append(_:_:)();

    (*(v2 + 8))(v5, appended);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004FB8C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection);
  v3 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_100053BA8;
  v11[5] = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10005445C;
  v11[3] = &unk_10008B7A8;
  v4 = _Block_copy(v11);

  xpc_connection_set_event_handler(v2, v4);
  _Block_release(v4);
  v5 = CUEnvironmentValues.dispatchQueue.getter();
  xpc_connection_set_target_queue(v2, v5);

  xpc_connection_activate(v2);
  if (qword_10009AD60 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10002AF48(v6, qword_10009BB90);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100030690(*(v1 + 64), *(v1 + 72), v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "XPC connection started: client=%s", v9, 0xCu);
    sub_100024EF0(v10);
  }
}

uint64_t sub_10004FDA8(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v37 = a1;
    swift_unknownObjectRetain();
    sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
    CUSendableWrapper.init(_:)();
    v30 = CUEnvironmentValues.dispatchQueue.getter();
    v18 = type metadata accessor for TaskPriority();
    v19 = v15;
    v20 = *(v18 - 8);
    (*(v20 + 56))(v8, 1, 1, v18);
    v21 = *(v10 + 16);
    v31 = v19;
    v21(v13, v19, v9);
    v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    v24 = *(v10 + 32);
    v32 = v9;
    v24(v23 + v22, v13, v9);
    sub_10004F218(v8, v6, &qword_10009B150, &qword_10006DC50);
    LODWORD(v22) = (*(v20 + 48))(v6, 1, v18);

    if (v22 == 1)
    {
      sub_10002556C(v6, &qword_10009B150, &qword_10006DC50);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v6, v18);
    }

    v25 = sub_100053DD8(&qword_10009B330, sub_10002B6E8);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_10006EAD0;
    *(v26 + 24) = v23;
    v33 = 6;
    v34 = 0;
    v27 = v30;
    v35 = v30;
    v36 = v25;

    v28 = v27;
    swift_task_create();
    sub_10002556C(v8, &qword_10009B150, &qword_10006DC50);

    return (*(v10 + 8))(v31, v32);
  }

  return result;
}

uint64_t sub_1000501D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000240AC;

  return sub_100050274(a3);
}

uint64_t sub_100050274(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *v1;
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v5;
  v2[6] = v4;

  return _swift_task_switch(sub_100050348, v5, v4);
}

uint64_t sub_100050348()
{
  v28 = v0;
  v1 = v0[3];
  sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  v2 = v0[2];
  v0[7] = v2;
  type = xpc_get_type(v2);
  if (type == XPC_TYPE_DICTIONARY.getter())
  {
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_1000507AC;
    v17 = v0[4];

    return sub_1000515F0(v2);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v4 = XPC_ERROR_CONNECTION_INVALID.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v2 == v4)
    {
      if (qword_10009AD60 != -1)
      {
        swift_once();
      }

      v18 = v0[4];
      v19 = type metadata accessor for Logger();
      sub_10002AF48(v19, qword_10009BB90);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v0[4];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v27 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100030690(*(v22 + 64), *(v22 + 72), &v27);
        _os_log_impl(&_mh_execute_header, v20, v21, "XPC connection ended: client=%s", v23, 0xCu);
        sub_100024EF0(v24);
      }

      *(v0[4] + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated) = 1;
      v25 = swift_task_alloc();
      v0[10] = v25;
      *v25 = v0;
      v25[1] = sub_100050948;
      v26 = v0[4];

      return sub_100050AF0();
    }

    else
    {
      if (qword_10009AD60 != -1)
      {
        swift_once();
      }

      v5 = v0[4];
      v6 = type metadata accessor for Logger();
      sub_10002AF48(v6, qword_10009BB90);
      swift_unknownObjectRetain();

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = v0[4];
        v10 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v10 = 136315394;
        v11 = OS_xpc_object.nestedDescription.getter();
        v13 = sub_100030690(v11, v12, &v27);

        *(v10 + 4) = v13;
        *(v10 + 12) = 2080;
        *(v10 + 14) = sub_100030690(*(v9 + 64), *(v9 + 72), &v27);
        _os_log_impl(&_mh_execute_header, v7, v8, "### XPC connection error: xpc=%s, client=%s", v10, 0x16u);
        swift_arrayDestroy();
      }

      swift_unknownObjectRelease();
      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_1000507AC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100050A68;
  }

  else
  {
    v7 = sub_1000508E8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000508E8()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100050948()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10005416C, v4, v3);
}

uint64_t sub_100050A68()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  sub_10005112C(*(v0 + 56));
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100050AF0()
{
  v1[2] = v0;
  v2 = *v0;
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[3] = v4;
  v1[4] = v3;

  return _swift_task_switch(sub_100050BC4, v4, v3);
}

uint64_t sub_100050BC4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated;
  v0[5] = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated;
  if ((*(v1 + v2) & 1) == 0)
  {
    xpc_connection_cancel(*(v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection));
    v3 = v0[2];
  }

  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon;
    type metadata accessor for CPSDaemon();
    sub_100053DD8(&qword_10009B140, type metadata accessor for CPSDaemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100050D64, v6, v5);
  }

  else
  {
    v7 = v0[2];
    if (*(v7 + v0[5]) == 1)
    {
      v8 = (v7 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      v9 = *(v7 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      if (v9)
      {
        v10 = v8[1];

        v9(v11);
        sub_100025C1C(v9);
        v12 = *v8;
      }

      else
      {
        v12 = 0;
      }

      v13 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      sub_100025C1C(v12);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100050D64()
{
  v0[8] = *(v0[6] + v0[7]);
  v1 = v0[3];
  v2 = v0[4];

  return _swift_task_switch(sub_100050DE4, v1, v2);
}

uint64_t sub_100050DE4()
{
  v1 = v0[8];
  v2 = v0[6];

  if (v1)
  {
    v3 = v0[8];
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100050F28;
    v5 = v0[2];

    return sub_1000350B8(v5);
  }

  else
  {
    v7 = v0[2];
    if (*(v7 + v0[5]) == 1)
    {
      v8 = (v7 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      v9 = *(v7 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      if (v9)
      {
        v10 = v8[1];

        v9(v11);
        sub_100025C1C(v9);
        v12 = *v8;
      }

      else
      {
        v12 = 0;
      }

      v13 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      sub_100025C1C(v12);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100050F28()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 24);

  return _swift_task_switch(sub_10005106C, v5, v4);
}

uint64_t sub_10005106C()
{
  v1 = v0[2];
  if (*(v1 + v0[5]) == 1)
  {
    v2 = (v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
    v3 = *(v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
    if (v3)
    {
      v4 = v2[1];

      v3(v5);
      sub_100025C1C(v3);
      v6 = *v2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    sub_100025C1C(v6);
  }

  v8 = v0[1];

  return v8();
}

void sub_10005112C(void *a1)
{
  v2 = v1;
  if (qword_10009AD60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10002AF48(v4, qword_10009BB90);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_100030690(*(v2 + 64), *(v2 + 72), &v17);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "### XPC error reply: client=%s, error=%@", v7, 0x16u);
    sub_10002556C(v8, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v9);
  }

  if (xpc_dictionary_expects_reply())
  {
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v12 = reply;
      CUXPCCoder.encode(error:into:)();
      xpc_connection_send_message(*(v2 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection), v12);

      swift_unknownObjectRelease();
    }

    else
    {

      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_100030690(*(v2 + 64), *(v2 + 72), &v17);
        _os_log_impl(&_mh_execute_header, oslog, v13, "### XPC create reply failed: client=%s", v14, 0xCu);
        sub_100024EF0(v15);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000515F0(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = *v1;
  v4 = type metadata accessor for CPSXPCClientRequesterRequest();
  v2[34] = v4;
  v5 = *(v4 - 8);
  v2[35] = v5;
  v6 = *(v5 + 64) + 15;
  v2[36] = swift_task_alloc();
  v7 = type metadata accessor for CPSXPCClientDiagnosticRequest();
  v2[37] = v7;
  v8 = *(v7 - 8);
  v2[38] = v8;
  v9 = *(v8 + 64) + 15;
  v2[39] = swift_task_alloc();
  v10 = type metadata accessor for CPSXPCClientRequest();
  v2[40] = v10;
  v11 = *(v10 - 8);
  v2[41] = v11;
  v12 = *(v11 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[45] = v14;
  v2[46] = v13;

  return _swift_task_switch(sub_1000517F8, v14, v13);
}

uint64_t sub_1000517F8()
{
  v74 = v0;
  if (*(v0[33] + 88) == 1)
  {
    v1 = v0[44];
    v2 = v0[40];
    v3 = v0[32];
    v0[47] = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcCoder;
    sub_100053DD8(&unk_10009BCF8, &type metadata accessor for CPSXPCClientRequest);
    CUXPCCoder.decode<A>(_:)();
    if (qword_10009AD60 != -1)
    {
      swift_once();
    }

    v4 = v0[43];
    v5 = v0[44];
    v6 = v0[40];
    v7 = v0[41];
    v8 = type metadata accessor for Logger();
    v0[48] = sub_10002AF48(v8, qword_10009BB90);
    v9 = *(v7 + 16);
    v9(v4, v5, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[43];
    v15 = v0[40];
    v14 = v0[41];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73[0] = v72;
      *v16 = 136315138;
      sub_100053DD8(&qword_10009BD10, &type metadata accessor for CPSXPCClientRequest);
      v71 = v11;
      v17 = v9;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v14 + 8);
      v21(v13, v15);
      v22 = v18;
      v9 = v17;
      v23 = sub_100030690(v22, v20, v73);

      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v10, v71, "XPC request: %s", v16, 0xCu);
      sub_100024EF0(v72);
    }

    else
    {

      v21 = *(v14 + 8);
      v21(v13, v15);
    }

    v0[49] = v21;
    v33 = v0[44];
    v35 = v0[41];
    v34 = v0[42];
    v36 = v0[40];
    v37 = v0[33];
    v38 = CPSXPCClientRequest.description.getter();
    v39 = (v37 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel);
    v40 = *(v37 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel + 8);
    *v39 = v38;
    v39[1] = v41;

    v9(v34, v33, v36);
    v42 = (*(v35 + 88))(v34, v36);
    if (v42 == enum case for CPSXPCClientRequest.diagnostic(_:))
    {
      v43 = v0[42];
      v44 = v0[39];
      v45 = v0[37];
      v46 = v0[38];
      (*(v0[41] + 96))(v43, v0[40]);
      (*(v46 + 32))(v44, v43, v45);
      v47 = swift_task_alloc();
      v0[50] = v47;
      *v47 = v0;
      v47[1] = sub_100051EEC;
      v48 = v0[39];
      v49 = v0[33];

      return sub_100052CB4((v0 + 26), v48);
    }

    if (v42 == enum case for CPSXPCClientRequest.requester(_:))
    {
      v50 = v0[42];
      v52 = v0[35];
      v51 = v0[36];
      v54 = v0[33];
      v53 = v0[34];
      (*(v0[41] + 96))(v50, v0[40]);
      (*(v52 + 32))(v51, v50, v53);
      Strong = swift_weakLoadStrong();
      v0[52] = Strong;
      if (Strong)
      {
        v0[53] = OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon;
        type metadata accessor for CPSDaemon();
        sub_100053DD8(&qword_10009B140, type metadata accessor for CPSDaemon);
        v57 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1000523BC, v57, v56);
      }

      v63 = v0[49];
      v64 = v0[44];
      v65 = v0[40];
      v66 = v0[41];
      v68 = v0[35];
      v67 = v0[36];
      v69 = v0[34];
      v70 = objc_allocWithZone(type metadata accessor for CUError());
      CUError.init(_:_:_:)();
      swift_willThrow();
      (*(v68 + 8))(v67, v69);
      v63(v64, v65);
    }

    else
    {
      v58 = v0[44];
      v60 = v0[41];
      v59 = v0[42];
      v61 = v0[40];
      v62 = objc_allocWithZone(type metadata accessor for CUError());
      CUError.init(_:_:_:)();
      swift_willThrow();
      v21(v58, v61);
      v21(v59, v61);
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);

    v73[0] = 0xD000000000000015;
    v73[1] = 0x80000001000738B0;
    v24._countAndFlagsBits = CUEnvironmentValues.cpsEntitlement.getter();
    String.append(_:)(v24);

    v25 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
  }

  v27 = v0[43];
  v26 = v0[44];
  v28 = v0[42];
  v29 = v0[39];
  v30 = v0[36];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100051EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 368);
  v6 = *(v2 + 360);
  if (v0)
  {
    v7 = sub_100052AE4;
  }

  else
  {
    v7 = sub_100052028;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100052028()
{
  v41 = v0;
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  v1 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 240);
  v2 = *(v0 + 408);
  sub_10004F218(v0 + 16, v0 + 160, &qword_10009BD08, &qword_10006EB00);
  if (*(v0 + 184))
  {
    v3 = *(v0 + 256);
    sub_100053DC0((v0 + 160), (v0 + 112));
    reply = xpc_dictionary_create_reply(v3);
    v5 = *(v0 + 264);
    if (reply)
    {
      v6 = reply;
      v7 = *(v0 + 376);
      v8 = *(v0 + 152);
      sub_10002AFE4((v0 + 112), *(v0 + 136));
      CUXPCCoder.encode<A>(message:into:)();
      v9 = *(v0 + 392);
      v10 = *(v0 + 352);
      v11 = *(v0 + 320);
      v12 = *(v0 + 328);
      if (v2)
      {
        swift_unknownObjectRelease();
        sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
        v9(v10, v11);
        sub_100024EF0((v0 + 112));
        v14 = *(v0 + 344);
        v13 = *(v0 + 352);
        v15 = *(v0 + 336);
        v16 = *(v0 + 312);
        v17 = *(v0 + 288);

        v18 = *(v0 + 8);
        goto LABEL_12;
      }

      xpc_connection_send_message(*(*(v0 + 264) + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection), v6);
      swift_unknownObjectRelease();
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v9(v10, v11);
    }

    else
    {
      v23 = *(v0 + 384);
      v24 = *(v0 + 264);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = *(v0 + 264);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v40 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100030690(*(v27 + 64), *(v27 + 72), &v40);
        _os_log_impl(&_mh_execute_header, v25, v26, "### XPC create reply failed: client=%s", v28, 0xCu);
        sub_100024EF0(v29);
      }

      v30 = *(v0 + 392);
      v31 = *(v0 + 352);
      v32 = *(v0 + 320);
      v33 = *(v0 + 328);
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v30(v31, v32);
    }

    sub_100024EF0((v0 + 112));
  }

  else
  {
    v19 = *(v0 + 392);
    v20 = *(v0 + 352);
    v21 = *(v0 + 320);
    v22 = *(v0 + 328);
    sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
    v19(v20, v21);
    sub_10002556C(v0 + 160, &qword_10009BD08, &qword_10006EB00);
  }

  v35 = *(v0 + 344);
  v34 = *(v0 + 352);
  v36 = *(v0 + 336);
  v37 = *(v0 + 312);
  v38 = *(v0 + 288);

  v18 = *(v0 + 8);
LABEL_12:

  return v18();
}

uint64_t sub_1000523BC()
{
  v0[54] = *(v0[52] + v0[53]);
  v1 = v0[45];
  v2 = v0[46];

  return _swift_task_switch(sub_10005243C, v1, v2);
}

uint64_t sub_10005243C()
{
  v1 = v0[54];
  v2 = v0[52];

  if (v1)
  {
    v3 = v0[54];
    v4 = swift_task_alloc();
    v0[55] = v4;
    *v4 = v0;
    v4[1] = sub_100052604;
    v5 = v0[36];
    v6 = v0[33];

    return sub_100035F78((v0 + 8), v5, v6);
  }

  else
  {
    v8 = v0[49];
    v9 = v0[44];
    v10 = v0[40];
    v11 = v0[41];
    v13 = v0[35];
    v12 = v0[36];
    v14 = v0[34];
    v15 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    v8(v9, v10);
    v17 = v0[43];
    v16 = v0[44];
    v18 = v0[42];
    v19 = v0[39];
    v20 = v0[36];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100052604()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 368);
  v6 = *(v2 + 360);
  if (v0)
  {
    v7 = sub_100052BC0;
  }

  else
  {
    v7 = sub_100052740;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100052740()
{
  v45 = v0;
  v1 = *(v0 + 432);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v5;
  *(v0 + 48) = *(v0 + 96);
  v6 = *(v0 + 448);
  sub_10004F218(v0 + 16, v0 + 160, &qword_10009BD08, &qword_10006EB00);
  if (*(v0 + 184))
  {
    v7 = *(v0 + 256);
    sub_100053DC0((v0 + 160), (v0 + 112));
    reply = xpc_dictionary_create_reply(v7);
    v9 = *(v0 + 264);
    if (reply)
    {
      v10 = reply;
      v11 = *(v0 + 376);
      v12 = *(v0 + 152);
      sub_10002AFE4((v0 + 112), *(v0 + 136));
      CUXPCCoder.encode<A>(message:into:)();
      v13 = *(v0 + 392);
      v14 = *(v0 + 352);
      v15 = *(v0 + 320);
      v16 = *(v0 + 328);
      if (v6)
      {
        swift_unknownObjectRelease();
        sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
        v13(v14, v15);
        sub_100024EF0((v0 + 112));
        v18 = *(v0 + 344);
        v17 = *(v0 + 352);
        v19 = *(v0 + 336);
        v20 = *(v0 + 312);
        v21 = *(v0 + 288);

        v22 = *(v0 + 8);
        goto LABEL_12;
      }

      xpc_connection_send_message(*(*(v0 + 264) + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection), v10);
      swift_unknownObjectRelease();
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v13(v14, v15);
    }

    else
    {
      v27 = *(v0 + 384);
      v28 = *(v0 + 264);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 264);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v44 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100030690(*(v31 + 64), *(v31 + 72), &v44);
        _os_log_impl(&_mh_execute_header, v29, v30, "### XPC create reply failed: client=%s", v32, 0xCu);
        sub_100024EF0(v33);
      }

      v34 = *(v0 + 392);
      v35 = *(v0 + 352);
      v36 = *(v0 + 320);
      v37 = *(v0 + 328);
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v34(v35, v36);
    }

    sub_100024EF0((v0 + 112));
  }

  else
  {
    v23 = *(v0 + 392);
    v24 = *(v0 + 352);
    v25 = *(v0 + 320);
    v26 = *(v0 + 328);
    sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
    v23(v24, v25);
    sub_10002556C(v0 + 160, &qword_10009BD08, &qword_10006EB00);
  }

  v39 = *(v0 + 344);
  v38 = *(v0 + 352);
  v40 = *(v0 + 336);
  v41 = *(v0 + 312);
  v42 = *(v0 + 288);

  v22 = *(v0 + 8);
LABEL_12:

  return v22();
}

uint64_t sub_100052AE4()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[40];
  v4 = v0[41];
  (*(v0[38] + 8))(v0[39], v0[37]);
  v1(v2, v3);
  v5 = v0[51];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v9 = v0[39];
  v10 = v0[36];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100052BC0()
{
  v1 = v0[54];
  v2 = v0[49];
  v3 = v0[44];
  v4 = v0[40];
  v5 = v0[41];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[34];

  (*(v7 + 8))(v6, v8);
  v2(v3, v4);
  v9 = v0[56];
  v11 = v0[43];
  v10 = v0[44];
  v12 = v0[42];
  v13 = v0[39];
  v14 = v0[36];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100052CB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = type metadata accessor for CPSXPCClientDiagnosticRequest();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v9;
  v3[9] = v8;

  return _swift_task_switch(sub_100052DE8, v9, v8);
}

uint64_t sub_100052DE8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == enum case for CPSXPCClientDiagnosticRequest.show(_:))
  {
    v4 = v0[2];
    v4[3] = type metadata accessor for CPSXPCShowReply();
    v4[4] = sub_100053DD8(&qword_10009BD18, &type metadata accessor for CPSXPCShowReply);
    v4[5] = sub_100053DD8(&qword_10009BD20, &type metadata accessor for CPSXPCShowReply);
    v5 = sub_100034710(v4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_100053004;
    v7 = v0[4];

    return sub_100053210(v5);
  }

  else
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100053004()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1000531A4;
  }

  else
  {
    v7 = sub_100053140;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100053140()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000531A4()
{
  sub_100034774(*(v0 + 16));
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100053210(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[4] = v5;
  v2[5] = v4;

  return _swift_task_switch(sub_1000532E4, v5, v4);
}

uint64_t sub_1000532E4()
{
  if (qword_10009AD60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "diagnostic show", v4, 2u);
  }

  v5 = v0[3];

  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100053490;

    return sub_100026720();
  }

  else
  {
    v9 = v0[2];
    CPSXPCShowReply.init(_:)();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100053490(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v10 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  v7 = *(v3 + 40);
  v8 = *(v3 + 32);

  return _swift_task_switch(sub_1000535DC, v8, v7);
}

uint64_t sub_1000535DC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];
  CPSXPCShowReply.init(_:)();
  v4 = v0[1];

  return v4();
}

uint64_t sub_100053644()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  swift_weakDestroy();
  v3 = OBJC_IVAR____TtC10companiond16CPSXPCConnection_environment;
  v4 = type metadata accessor for CUEnvironmentValues();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler + 8);
  sub_100025C1C(*(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler));
  v6 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel + 8);

  v7 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcCoder;
  v8 = type metadata accessor for CUXPCCoder();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100053734()
{
  sub_100053644();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CPSXPCConnection()
{
  result = qword_10009BBF8;
  if (!qword_10009BBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000537E0()
{
  result = type metadata accessor for CUEnvironmentValues();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for CUXPCCoder();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100053908(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100053DD8(&unk_10009BCE8, type metadata accessor for CPSXPCConnection);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_1000539A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond16CPSXPCConnection_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_100053A24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100053A98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100053ADC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100053B70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100053BC8()
{
  v1 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100053C98(uint64_t a1)
{
  v4 = *(sub_100024EA8(&qword_10009B148, &qword_10006E0A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000240AC;

  return sub_1000501D8(a1, v6, v1 + v5);
}

uint64_t sub_100053D88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_100053DC0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100053DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100053E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_weakInit();
  *(v3 + 88) = 0;
  v7 = (v3 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__startTicks;
  *(v3 + v9) = mach_absolute_time();
  CUXPCCoder.init()();
  *(v3 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated) = 0;
  swift_weakAssign();
  v10 = OBJC_IVAR____TtC10companiond16CPSXPCConnection_environment;
  v11 = type metadata accessor for CUEnvironmentValues();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a3, v11);
  v13 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  v14 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection;
  *(v4 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection) = connection;
  pid = xpc_connection_get_pid(connection);
  v16 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__pid;
  *(v4 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__pid) = pid;
  v17 = *(v4 + v14);
  xpc_connection_get_audit_token();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v18 = xpc_copy_entitlement_for_token();
  if (v18)
  {
    swift_unknownObjectRetain();
    CUEnvironmentValues.cpsEntitlement.getter();
    v19 = String.utf8CString.getter();

    v20 = xpc_dictionary_get_BOOL(v18, (v19 + 32));

    swift_unknownObjectRelease();
    *(v4 + 88) = v20;
    v21 = swift_unknownObjectRetain();
    if (xpc_dictionary_get_string(v21, "application-identifier"))
    {
      v22 = String.init(cString:)();
      v24 = v23;
      swift_unknownObjectRelease();
LABEL_8:
      *(v4 + 48) = v22;
      *(v4 + 56) = v24;
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  v25 = xpc_copy_code_signing_identity_for_token();
  if (!v25)
  {
    v22 = 63;
    v24 = 0xE100000000000000;
    goto LABEL_8;
  }

  v37 = v12;
  v26 = v16;
  v27 = v13;
  v28 = v11;
  v29 = a3;
  v30 = a1;
  v31 = v25;
  v22 = String.init(cString:)();
  v24 = v32;
  *(v4 + 48) = v22;
  *(v4 + 56) = v32;
  v33 = v31;
  a1 = v30;
  a3 = v29;
  v11 = v28;
  v13 = v27;
  v16 = v26;
  v12 = v37;
  free(v33);
LABEL_9:

  v34._countAndFlagsBits = 58;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v38 = *(v4 + v16);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);
  swift_unknownObjectRelease();

  (*(v12 + 8))(a3, v11);
  (*(*(v13 - 8) + 8))(a1, v13);
  *(v4 + 64) = v22;
  *(v4 + 72) = v24;
  return v4;
}

uint64_t CUEnvironmentValues.cpsXPCServerEnabled.getter()
{
  sub_10002B400();
  CUEnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000541AC()
{
  *(v1 + 64) = v0;
  v2 = *v0;
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100054280, v4, v3);
}

uint64_t sub_100054280()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener;
  if (!*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener))
  {
    CUEnvironmentValues.cpsXPCServiceName.getter();
    if (v3)
    {
      v4 = CUEnvironmentValues.dispatchQueue.getter();
      v5 = String.utf8CString.getter();

      mach_service = xpc_connection_create_mach_service((v5 + 32), v4, 1uLL);
    }

    else
    {
      v4 = CUEnvironmentValues.dispatchQueue.getter();
      mach_service = xpc_connection_create(0, v4);
    }

    v7 = v0[8];
    v8 = *(v1 + v2);
    *(v1 + v2) = mach_service;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v9 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1000575A4;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10005445C;
    v0[5] = &unk_10008B898;
    v10 = _Block_copy(v0 + 2);
    v11 = v0[7];

    xpc_connection_set_event_handler(mach_service, v10);
    _Block_release(v10);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease_n();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10005445C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000544BC()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BD40);
  sub_10002AF48(v0, qword_10009BD40);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005452C()
{
  v1[15] = v0;
  v2 = *v0;
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v4;
  v1[17] = v3;

  return _swift_task_switch(sub_100054600, v4, v3);
}

uint64_t sub_100054600()
{
  v46 = v0;
  v0[10] = 0;
  v1 = v0[15];
  v0[11] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    v5 = *(v1 + v2);

    v6 = __CocoaSet.count.getter();

    if (!v6)
    {
      goto LABEL_31;
    }

LABEL_7:
    v7 = *(v1 + v2);
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v8 = *(v1 + v2);
      }

      __CocoaSet.makeIterator()();
      type metadata accessor for CPSXPCConnection();
      sub_1000564E4(&qword_10009BE68, type metadata accessor for CPSXPCConnection);
      Set.Iterator.init(_cocoa:)();
      v11 = v0[2];
      v0[18] = v11;
      v12 = v0 + 18;
      v14 = v0[3];
      v13 = v0[4];
      v16 = v0[5];
      v15 = v0[6];
      v0[20] = v13;
      v17 = v0 + 20;
      v0[19] = v14;
      v18 = v0 + 19;
      v0[21] = _swiftEmptyArrayStorage;
      if (v11 < 0)
      {
        v30 = __CocoaSet.Iterator.next()();
        if (!v30)
        {
LABEL_27:
          v31 = *v17;
          v32 = *v18;
          v33 = *v12;
          sub_1000564B4();
          _StringGuts.grow(_:)(23);

          v45._countAndFlagsBits = 0xD000000000000014;
          v45._object = 0x8000000100073980;
          v0[12] = _swiftEmptyArrayStorage[2];
          v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v34);

          v35._countAndFlagsBits = 10;
          v35._object = 0xE100000000000000;
          String.append(_:)(v35);
          String.append(_:)(v45);

          v45._countAndFlagsBits = _swiftEmptyArrayStorage;

          sub_100037BC8(&v45);

          v36 = *(v45._countAndFlagsBits + 16);
          if (v36)
          {
            v37 = (v45._countAndFlagsBits + 40);
            do
            {
              v38 = *(v37 - 1);
              v39 = *v37;

              v40._countAndFlagsBits = v38;
              v40._object = v39;
              String.append(_:)(v40);

              v37 += 2;
              --v36;
            }

            while (v36);
          }

          goto LABEL_31;
        }

        v0[14] = v30;
        swift_dynamicCast();
        v26 = v0[12];
        v23 = v16;
        v25 = v15;
LABEL_21:
        v0[23] = v23;
        v0[24] = v25;
        v0[22] = v26;
        if (v26)
        {
          type metadata accessor for CPSXPCConnection();
          sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
          v27 = dispatch thunk of Actor.unownedExecutor.getter();
          v29 = v28;
          v11 = sub_100054AB0;
          v9 = v27;
          v10 = v29;

          return _swift_task_switch(v11, v9, v10);
        }

        goto LABEL_27;
      }

      v19 = v13 + 64;
    }

    else
    {
      v20 = -1;
      v21 = -1 << *(v7 + 32);
      v14 = v7 + 56;
      if (-v21 < 64)
      {
        v20 = ~(-1 << -v21);
      }

      v15 = v20 & *(v7 + 56);
      v0[20] = ~v21;
      v17 = v0 + 20;
      v0[19] = v14;
      v18 = v0 + 19;
      v0[18] = v7;
      v12 = v0 + 18;
      v19 = 63 - v21;
      v0[21] = _swiftEmptyArrayStorage;

      v16 = 0;
    }

    v22 = v15;
    v23 = v16;
    if (!v15)
    {
      v24 = v16;
      while (1)
      {
        v23 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v23 >= (v19 >> 6))
        {
          goto LABEL_27;
        }

        v22 = *(v14 + 8 * v23);
        ++v24;
        if (v22)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return _swift_task_switch(v11, v9, v10);
    }

LABEL_20:
    v25 = (v22 - 1) & v22;
    v26 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

    goto LABEL_21;
  }

  if (*(v3 + 16))
  {
    goto LABEL_7;
  }

LABEL_31:
  v41 = v0[10];
  v42 = v0[11];
  v43 = v0[1];

  return v43(v41, v42);
}

uint64_t sub_100054AB0()
{
  v1 = v0[22];
  v0[25] = sub_10004F950();
  v0[26] = v2;
  v3 = v0[16];
  v4 = v0[17];

  return _swift_task_switch(sub_100054B18, v3, v4);
}

uint64_t sub_100054B18()
{
  v35 = v0;
  v0[12] = v0[25];
  v1 = v0[21];
  v0[13] = v0[26];
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = v0[12];
  v4 = v0[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100037778((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = v0[22];

    *(v6 + 2) = v8 + 1;
    v10 = &v6[16 * v8];
    *(v10 + 4) = v3;
    *(v10 + 5) = v4;
    v4 = v0[23];
    v11 = v0[24];
    v0[21] = v6;
    v12 = v0[18];
    if (v12 < 0)
    {
      break;
    }

    v13 = v11;
    v3 = v4;
    if (v11)
    {
LABEL_10:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v12 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v13)))));

      goto LABEL_13;
    }

    v14 = v4;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= ((v0[20] + 64) >> 6))
      {
        goto LABEL_17;
      }

      v13 = *(v0[19] + 8 * v3);
      ++v14;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    v6 = sub_100037778(0, *(v6 + 2) + 1, 1, v6);
  }

  v17 = __CocoaSet.Iterator.next()();
  if (!v17)
  {
    goto LABEL_17;
  }

  v0[14] = v17;
  type metadata accessor for CPSXPCConnection();
  swift_dynamicCast();
  v16 = v0[12];
  v3 = v4;
  v15 = v11;
LABEL_13:
  v0[23] = v3;
  v0[24] = v15;
  v0[22] = v16;
  if (v16)
  {
    type metadata accessor for CPSXPCConnection();
    sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100054AB0, v19, v18);
  }

LABEL_17:
  v20 = v0[19];
  v21 = v0[20];
  v22 = v0[18];
  sub_1000564B4();
  _StringGuts.grow(_:)(23);

  v34._countAndFlagsBits = 0xD000000000000014;
  v34._object = 0x8000000100073980;
  v0[12] = *(v6 + 2);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  String.append(_:)(v34);

  v34._countAndFlagsBits = v6;

  sub_100037BC8(&v34);

  v25 = *(v34._countAndFlagsBits + 16);
  if (v25)
  {
    v26 = (v34._countAndFlagsBits + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;

      v29._countAndFlagsBits = v27;
      v29._object = v28;
      String.append(_:)(v29);

      v26 += 2;
      --v25;
    }

    while (v25);
  }

  v30 = v0[10];
  v31 = v0[11];
  v32 = v0[1];

  return v32(v30, v31);
}

uint64_t sub_100054EE0(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v18[0] = a1;
    swift_unknownObjectRetain();
    sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
    v9 = CUSendableWrapper.init(_:)();
    __chkstk_darwin(v9);
    v15 = v6;
    type metadata accessor for CPSXPCServer();
    sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1000575C4;
      *(v10 + 24) = &v17[-4];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1000575E0;
      *(v11 + 24) = v10;

      v18[0] = v8;
      sub_100045AAC(v18);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return (*(v3 + 8))(v6, v2);
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v13._object = 0x8000000100073410;
    v13._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v13);
    v17[2] = v8;
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v16 = 0;
    v15 = 54;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100055238()
{
  type metadata accessor for CPSXPCServer();
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000552F8();
}

void sub_1000552F8()
{
  v1 = v0;
  sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  type = xpc_get_type(object[0]);
  if (type == XPC_TYPE_CONNECTION.getter())
  {
    sub_100055564(object[0]);
LABEL_13:
    swift_unknownObjectRelease();
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (object[0] == v3)
  {
    v12 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener;
    v13 = *(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener);
    *(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener) = 0;
    swift_unknownObjectRelease();
    if (*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) == 1 && !*(v1 + v12))
    {
      v14 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections;
      swift_beginAccess();
      if ((*(v1 + v14) & 0xC000000000000001) != 0)
      {

        __CocoaSet.count.getter();
      }
    }

    goto LABEL_13;
  }

  if (qword_10009AD68 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10002AF48(v4, qword_10009BD40);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    object[0] = v8;
    *v7 = 136315138;
    v9 = OS_xpc_object.nestedDescription.getter();
    v11 = sub_100030690(v9, v10, object);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "### XPC listener error: error=%s", v7, 0xCu);
    sub_100024EF0(v8);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100055564(uint64_t a1)
{
  v3 = type metadata accessor for CUEnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26[-v10];
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if ((*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) & 1) == 0)
    {
      v27[0] = a1;
      swift_unknownObjectRetain();
      sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
      CUSendableWrapper.init(_:)();
      (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer_environment, v3);
      v14 = type metadata accessor for CPSXPCConnection();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();

      v17 = sub_100053E20(v11, v13, v7);

      swift_beginAccess();

      sub_10005652C(&v28, v17);
      swift_endAccess();

      __chkstk_darwin(v18);
      v24 = v1;
      v25 = v17;
      sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
      dispatch thunk of Actor.unownedExecutor.getter();
      if (swift_task_isCurrentExecutor())
      {
        v19 = swift_allocObject();
        *(v19 + 16) = sub_100057608;
        *(v19 + 24) = &v26[-32];
        v20 = swift_allocObject();
        *(v20 + 16) = sub_1000576FC;
        *(v20 + 24) = v19;

        v27[0] = v17;
        sub_100045CD8(v27);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        __break(1u);
      }

      v27[0] = 0;
      v27[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v22._object = 0x8000000100073410;
      v22._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v22);
      v28 = v17;
      _print_unlocked<A, B>(_:_:)();
      v23._countAndFlagsBits = 46;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      LODWORD(v25) = 0;
      v24 = 105;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_1000559B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = (a1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
  v9 = *(a1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
  v10 = *(a1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler + 8);
  *v8 = sub_1000576AC;
  v8[1] = v7;

  sub_100025C1C(v9);

  sub_10004FB8C();
}

uint64_t sub_100055B44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v3 = Strong;
    type metadata accessor for CPSXPCServer();
    sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      _StringGuts.grow(_:)(66);
      v7._object = 0x8000000100073410;
      v7._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v7);
      _print_unlocked<A, B>(_:_:)();
      v8._countAndFlagsBits = 46;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v4 = swift_allocObject();
    *(v4 + 16) = sub_1000576B4;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1000576FC;
    *(v5 + 24) = v4;

    v9 = v1;
    sub_100045CD8(&v9);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100055DCC(uint64_t a1, Swift::UInt a2)
{
  type metadata accessor for CPSXPCServer();
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_100055E8C(a2);
}

uint64_t sub_100055E8C(Swift::UInt a1)
{
  v3 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections;
  swift_beginAccess();
  sub_1000570F8(a1);
  swift_endAccess();

  if (*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) == 1 && !*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener) && (*(v1 + v3) & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  return result;
}

uint64_t sub_100055F50()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC10companiond12CPSXPCServer_environment;
  v2 = type metadata accessor for CUEnvironmentValues();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections);

  v4 = *(v0 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener);
  swift_unknownObjectRelease();
  sub_100057504(v0 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcEndpoint);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_100056024(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1000564E4(&qword_10009BE58, type metadata accessor for CPSXPCServer);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_1000560C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002B200;

  return sub_10005452C();
}

uint64_t sub_100056154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond12CPSXPCServer_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t (*CUEnvironmentValues.cpsXPCServerEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10002B400();
  CUEnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_100056274;
}

uint64_t sub_100056274(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return CUEnvironmentValues.subscript.setter();
}

uint64_t type metadata accessor for CPSXPCServer()
{
  result = qword_10009BDA0;
  if (!qword_10009BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100056300()
{
  v0 = type metadata accessor for CUEnvironmentValues();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000563F4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000563F4()
{
  if (!qword_10009BDB0)
  {
    type metadata accessor for CUXPCEndpoint();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10009BDB0);
    }
  }
}

uint64_t sub_10005645C(uint64_t a1)
{
  result = sub_1000564E4(&qword_10009BE58, type metadata accessor for CPSXPCServer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000564E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005652C(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CPSXPCConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_100056730(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100056930(v19 + 1);
    }

    sub_100056B80(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_100056C24(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

Swift::Int sub_100056730(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CPSXPCConnection();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100056930(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100056930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100056B80(Swift::UInt a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100056C24(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100056930(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100056D80();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100056ED0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for CPSXPCConnection();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100056D80()
{
  v1 = v0;
  sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100056ED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_1000570F8(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100057268(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (*(*(v3 + 48) + 8 * v12) != a1)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v18 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100056D80();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v12);
  sub_10005735C(v12);
  result = v17;
  *v1 = v18;
  return result;
}

Swift::Int sub_100057268(uint64_t a1, Swift::UInt a2)
{
  v4 = *v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_100056730(v6, v5);
  v16 = v7;
  v8 = *(v7 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v9 = Hasher._finalize()();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (v7 == a2)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_10005735C(v12);
  *v2 = v16;
  return v7;
}

unint64_t sub_10005735C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100057504(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009BE80, &qword_10006EC78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005756C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000575AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000575E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100057634()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005766C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000576AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100055B44();
}

uint64_t sub_100057714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10004F218(a3, v27 - v11, &qword_10009B150, &qword_10006DC50);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002556C(v12, &qword_10009B150, &qword_10006DC50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10002556C(a3, &qword_10009B150, &qword_10006DC50);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002556C(a3, &qword_10009B150, &qword_10006DC50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100057A14()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BE90);
  sub_10002AF48(v0, qword_10009BE90);
  return Logger.init(subsystem:category:)();
}

id sub_100057BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100057C54(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_100057CB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_100057D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t CompanionDevice.color.getter()
{
  v1 = OBJC_IVAR____TtC10companiond15CompanionDevice_color;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CompanionDevice.color.setter(int a1)
{
  v3 = OBJC_IVAR____TtC10companiond15CompanionDevice_color;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100057F88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024EA8(&qword_10009BF48, &qword_10006ECF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR____TtC10companiond15CompanionDevice_idsIdentifier];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v2[OBJC_IVAR____TtC10companiond15CompanionDevice_name];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC10companiond15CompanionDevice_model];
  *v15 = 0;
  v15[1] = 0;
  v35 = a1;
  sub_10004F218(a1, v7, &qword_10009BF48, &qword_10006ECF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002556C(v35, &qword_10009BF48, &qword_10006ECF8);
    sub_10002556C(v7, &qword_10009BF48, &qword_10006ECF8);
    v16 = v13[1];

    v17 = v14[1];

    v18 = v15[1];

    type metadata accessor for CompanionDevice();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v20 = NWEndpoint.deviceID.getter();
    v22 = v21;
    swift_beginAccess();
    v23 = v13[1];
    *v13 = v20;
    v13[1] = v22;

    v24 = NWEndpoint.deviceName.getter();
    v26 = v25;
    swift_beginAccess();
    v27 = v14[1];
    *v14 = v24;
    v14[1] = v26;

    v28 = NWEndpoint.deviceModel.getter();
    v30 = v29;
    swift_beginAccess();
    v31 = v15[1];
    *v15 = v28;
    v15[1] = v30;

    v32 = NWEndpoint.deviceColor.getter();
    (*(v9 + 8))(v12, v8);
    *&v2[OBJC_IVAR____TtC10companiond15CompanionDevice_color] = v32;
    v33 = type metadata accessor for CompanionDevice();
    v36.receiver = v2;
    v36.super_class = v33;
    v34 = objc_msgSendSuper2(&v36, "init");
    sub_10002556C(v35, &qword_10009BF48, &qword_10006ECF8);
    return v34;
  }
}

uint64_t CompanionDevice.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  _StringGuts.grow(_:)(64);
  v3._object = 0x80000001000739C0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  v4 = (v0 + OBJC_IVAR____TtC10companiond15CompanionDevice_idsIdentifier);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A656D616E207C20;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  v9 = (v1 + OBJC_IVAR____TtC10companiond15CompanionDevice_name);
  swift_beginAccess();
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x6C65646F6D207C20;
  v13._object = 0xEA0000000000203ALL;
  String.append(_:)(v13);
  v14 = (v1 + OBJC_IVAR____TtC10companiond15CompanionDevice_model);
  swift_beginAccess();
  if (v14[1])
  {
    v2 = *v14;
    v15 = v14[1];
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v16._countAndFlagsBits = v2;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x726F6C6F63207C20;
  v17._object = 0xEA0000000000203ALL;
  String.append(_:)(v17);
  v18 = OBJC_IVAR____TtC10companiond15CompanionDevice_color;
  swift_beginAccess();
  v22 = *(v1 + v18);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return 0;
}

id CompanionDevice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompanionDevice();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id CompanionDeviceMonitor.__allocating_init(queue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser] = 0;
  *&v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout] = 0;
  v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling] = 0;
  *&v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_queue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id CompanionDeviceMonitor.init(queue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser] = 0;
  *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout] = 0;
  v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling] = 0;
  *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_queue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompanionDeviceMonitor();
  return objc_msgSendSuper2(&v3, "init");
}

id CompanionDeviceMonitor.__deallocating_deinit()
{
  v1 = v0;
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002AF48(v2, qword_10009BE90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "getCompanionDevice deinit", v5, 2u);
  }

  v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling] = 1;
  if (*&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout])
  {
    v6 = *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout];

    Task.cancel()();
  }

  v7 = OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser;
  if (*&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser])
  {
    v8 = *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser];

    NWBrowser.cancel()();

    v9 = *&v1[v7];
  }

  *&v1[v7] = 0;

  v11.receiver = v1;
  v11.super_class = type metadata accessor for CompanionDeviceMonitor();
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t CompanionDeviceMonitor.getCompanionDevice(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_100024EA8(&qword_10009BEE8, &unk_10006EC90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v46[1] = v46 - v7;
  v8 = type metadata accessor for NWBrowser.Descriptor.Options.Scope();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v46[0] = type metadata accessor for NWBrowser.Descriptor();
  v10 = *(v46[0] - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v46[0]);
  v13 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v46 - v16;
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10002AF48(v18, qword_10009BE90);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "getCompanionDevice", v21, 2u);
  }

  v22 = OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout;
  if (*(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout))
  {
    v23 = *(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout);

    Task.cancel()();
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser;
  v26 = *(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;
  v27[5] = a1;
  v47 = a1;
  v27[6] = v48;

  v28 = sub_100057714(0, 0, v17, &unk_10006ECA8, v27);
  v29 = *(v3 + v22);
  *(v3 + v22) = v28;

  if (*(v3 + v25))
  {
    v30 = *(v3 + v25);

    NWBrowser.cancel()();
  }

  v31 = *(sub_100024EA8(&qword_10009BEF0, &qword_10006ECB0) + 48);
  *v13 = 0xD000000000000014;
  v13[1] = 0x8000000100073A00;
  static NWBrowser.Descriptor.Options.Scope.all.getter();
  NWBrowser.Descriptor.Options.init(scope:)();
  (*(v10 + 104))(v13, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v46[0]);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  NWParameters.requiredNetworkAgents.setter();
  static NWApplicationID.self.getter();
  NWParameters.applicationID.setter();
  NWParameters.nw.getter();
  nw_parameters_set_companion_proxy_required_interface_type();
  NWParameters.__allocating_init(_:)();

  v32 = type metadata accessor for NWBrowser();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = NWBrowser.init(for:using:)();
  v36 = *(v3 + v25);
  *(v3 + v25) = v35;

  v37 = *(v3 + v25);
  v38 = swift_allocObject();
  v40 = v47;
  v39 = v48;
  v38[2] = v37;
  v38[3] = v40;
  v38[4] = v39;
  swift_retain_n();

  NWBrowser.stateUpdateHandler.setter();

  if (*(v3 + v25))
  {
    v42 = *(v3 + v22);
    v43 = *(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling);
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    *(v44 + 32) = v40;
    *(v44 + 40) = v39;
    swift_retain_n();

    NWBrowser.browseResultsChangedHandler.setter();

    if (*(v3 + v25))
    {
      v45 = *(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_queue);

      NWBrowser.start(queue:)();
    }
  }

  return result;
}

uint64_t sub_100058F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10005902C, 0, 0);
}

uint64_t sub_10005902C()
{
  v1 = *(v0 + 56);
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_100059108;
  v6 = *(v0 + 56);

  return sub_10005ADB0(v2, v4, 0, 0, 1);
}

uint64_t sub_100059108()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000593B4;
  }

  else
  {
    v6 = sub_100059278;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100059278()
{
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009BE90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getCompanionDevice took to long, cancelling after 2 seconds.", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    v6 = *(v0 + 16);
    NWBrowser.cancel()();
  }

  v7 = *(v0 + 32);
  (*(v0 + 24))(0);
  v8 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000593B4()
{
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009BE90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getCompanionDevice Timeout cancelled.", v6, 2u);
  }

  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

void sub_1000594DC(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v63 = a4;
  v60 = a3;
  v6 = type metadata accessor for NWError();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v57 - v11;
  v12 = type metadata accessor for NWBrowser.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v57 - v18;
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10002AF48(v22, qword_10009BE90);
  v24 = *(v13 + 16);
  v65 = a1;
  v68 = v24;
  v24(v21, a1, v12);
  v64 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v59 = v10;
    v28 = v27;
    v29 = swift_slowAlloc();
    v70 = v29;
    *v28 = 136315138;
    v68(v19, v21, v12);
    v30 = String.init<A>(describing:)();
    v57 = v13;
    v58 = a2;
    v32 = v31;
    v33 = *(v13 + 8);
    v33(v21, v12);
    v34 = sub_100030690(v30, v32, &v70);
    a2 = v58;

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "getCompanionDevice NWBrowser updated state: %s", v28, 0xCu);
    sub_100024EF0(v29);

    v10 = v59;

    v35 = v33;
    v13 = v57;
  }

  else
  {

    v35 = *(v13 + 8);
    v35(v21, v12);
  }

  v36 = v66;
  v68(v66, v65, v12);
  v37 = (*(v13 + 88))(v36, v12);
  if (v37 == enum case for NWBrowser.State.failed(_:))
  {
    (*(v13 + 96))(v36, v12);
    v39 = v61;
    v38 = v62;
    v40 = v67;
    (*(v61 + 32))(v67, v36, v62);
    v41 = *(v39 + 16);
    v41(v10, v40, v38);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v44 = 138412290;
      sub_10005BE14(&qword_10009BF60, &type metadata accessor for NWError);
      swift_allocError();
      v41(v45, v10, v38);
      v46 = _swift_stdlib_bridgeErrorToNSError();
      v47 = *(v39 + 8);
      v47(v10, v38);
      *(v44 + 4) = v46;
      v48 = v68;
      *v68 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "getCompanionDevice NWBrowser failed with error: %@", v44, 0xCu);
      sub_10002556C(v48, &unk_10009B2F0, &unk_10006E0C0);
    }

    else
    {

      v47 = *(v39 + 8);
      v47(v10, v38);
    }

    v60(0);
    v47(v67, v38);
    return;
  }

  if (v37 == enum case for NWBrowser.State.waiting(_:))
  {
LABEL_10:
    v35(v36, v12);
    return;
  }

  if (v37 == enum case for NWBrowser.State.setup(_:))
  {
    return;
  }

  if (v37 != enum case for NWBrowser.State.ready(_:))
  {
    if (v37 == enum case for NWBrowser.State.cancelled(_:))
    {
      return;
    }

    goto LABEL_10;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v70 = v52;
    *v51 = 136315138;
    if (a2)
    {
      v53 = NWBrowser.browseResults.getter();
    }

    else
    {
      v53 = 0;
    }

    v69 = v53;
    sub_100024EA8(&qword_10009BF68, &qword_10006ED10);
    v54 = String.init<A>(describing:)();
    v56 = sub_100030690(v54, v55, &v70);

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "getCompanionDevice initial results: %s", v51, 0xCu);
    sub_100024EF0(v52);
  }
}

uint64_t sub_100059C08(char *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v63 = a1;
  v10 = sub_100024EA8(&qword_10009BF48, &qword_10006ECF8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = type metadata accessor for NWEndpoint();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v25 = &v56 - v24;
  if ((a3 & 1) == 0)
  {
    v61 = a6;
    v62 = a5;
    if (qword_10009AD70 != -1)
    {
      swift_once();
    }

    v58 = v22;
    v26 = type metadata accessor for Logger();
    sub_10002AF48(v26, qword_10009BE90);
    v27 = v63;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v59 = a4;
    v60 = v14;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v57 = v18;
      v32 = v31;
      v33 = swift_slowAlloc();
      v64[0] = v33;
      *v32 = 136315138;
      type metadata accessor for NWBrowser.Result();
      sub_10005BE14(&qword_10009BF50, &type metadata accessor for NWBrowser.Result);
      v34 = Set.description.getter();
      v36 = v17;
      v37 = v25;
      v38 = sub_100030690(v34, v35, v64);

      *(v32 + 4) = v38;
      v25 = v37;
      v17 = v36;
      v27 = v63;
      _os_log_impl(&_mh_execute_header, v28, v29, "getCompanionDevice results changed: %s", v32, 0xCu);
      sub_100024EF0(v33);

      v18 = v57;
    }

    v39 = sub_10005A174(v27);
    sub_10005A538(v39, v16);

    if ((v18[6])(v16, 1, v17) == 1)
    {
      return sub_10002556C(v16, &qword_10009BF48, &qword_10006ECF8);
    }

    else
    {
      (v18[4])(v25, v16, v17);
      v40 = v18[2];
      v41 = v58;
      v40(v58, v25, v17);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v41;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v57 = v40;
        v47 = v46;
        v64[0] = v46;
        *v45 = 136315138;
        v56 = NWEndpoint.debugDescription.getter();
        v63 = v25;
        v48 = v18;
        v50 = v49;
        v51 = v48[1];
        v51(v44, v17);
        v52 = sub_100030690(v56, v50, v64);
        v18 = v48;
        v25 = v63;

        *(v45 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "getCompanionDevice found meDevice: %s", v45, 0xCu);
        sub_100024EF0(v47);
        v40 = v57;
      }

      else
      {

        v51 = v18[1];
        v51(v41, v17);
      }

      v53 = v60;
      if (v59)
      {
        Task.cancel()();
      }

      v40(v53, v25, v17);
      (v18[7])(v53, 0, 1, v17);
      v54 = objc_allocWithZone(type metadata accessor for CompanionDevice());
      v55 = sub_100057F88(v53);
      v62();

      return (v51)(v25, v17);
    }
  }

  return result;
}

void *sub_10005A174(uint64_t a1)
{
  v46 = type metadata accessor for NWBrowser.Result();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for NWEndpoint();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = _swiftEmptyArrayStorage;
    v36 = a1;
    sub_10004F06C(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = _HashTable.startBucket.getter();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      NWBrowser.Result.endpoint.getter();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = v49[2];
      v24 = v49[3];
      if (v25 >= v24 >> 1)
      {
        sub_10004F06C(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      v23[2] = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_10005BC60(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_10005BC60(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_10005A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100024EA8(&qword_10009BF58, &unk_10006ED00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v42 = 1;
    return (*(v9 + 56))(a2, v42, 1, v8);
  }

  v43 = v9;
  v44 = a2;
  v14 = 0;
  v16 = *(v9 + 16);
  v15 = v9 + 16;
  v48 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v49 = v16;
  v45 = v50 + 1;
  v46 = v13;
  v17 = (v15 - 8);
  v47 = *(v15 + 56);
  v16(v12, v48, v8);
  while (1)
  {
    NWEndpoint.txtRecord.getter();
    v18 = type metadata accessor for NWTXTRecord();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      (*v17)(v12, v8);
      sub_10002556C(v7, &qword_10009BF58, &unk_10006ED00);
      goto LABEL_4;
    }

    v20 = NWTXTRecord.subscript.getter();
    v22 = v21;
    result = (*(v19 + 8))(v7, v18);
    if (v22)
    {
      break;
    }

LABEL_74:
    (*v17)(v12, v8);
    v13 = v46;
LABEL_4:
    if (++v14 == v13)
    {
      v42 = 1;
      v9 = v43;
      a2 = v44;
      return (*(v9 + 56))(a2, v42, 1, v8);
    }

    v49(v12, v48 + v47 * v14, v8);
  }

  v24 = HIBYTE(v22) & 0xF;
  v25 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v26 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_74;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    LOBYTE(v20) = sub_10005B268(v20, v22, 10);
    v40 = v41;
    goto LABEL_72;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    v50[0] = v20;
    v50[1] = v22 & 0xFFFFFFFFFFFFFFLL;
    if (v20 == 43)
    {
      if (!v24)
      {
        goto LABEL_83;
      }

      if (--v24)
      {
        v20 = 0;
        v35 = v45;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v30 = __CFADD__(10 * v20, v36);
          v20 = 10 * v20 + v36;
          if (v30)
          {
            break;
          }

          ++v35;
          if (!--v24)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v20 == 45)
    {
      if (!v24)
      {
        goto LABEL_85;
      }

      if (--v24)
      {
        v20 = 0;
        v31 = v45;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v30 = 10 * v20 >= v32;
          v20 = 10 * v20 - v32;
          if (!v30)
          {
            break;
          }

          ++v31;
          if (!--v24)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v24)
    {
      v20 = 0;
      v38 = v50;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        if (!is_mul_ok(v20, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v20, v39);
        v20 = 10 * v20 + v39;
        if (v30)
        {
          break;
        }

        ++v38;
        if (!--v24)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    result = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v27 = *result;
  if (v27 != 43)
  {
    if (v27 == 45)
    {
      if (v25 < 1)
      {
        goto LABEL_84;
      }

      v24 = v25 - 1;
      if (v25 != 1)
      {
        v20 = 0;
        if (result)
        {
          v28 = result + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              goto LABEL_70;
            }

            v30 = 10 * v20 >= v29;
            v20 = 10 * v20 - v29;
            if (!v30)
            {
              goto LABEL_70;
            }

            ++v28;
            if (!--v24)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v24) = 0;
LABEL_71:
        v51 = v24;
        v40 = v24;
LABEL_72:

        if ((v40 & 1) == 0 && (v20 & 0x80) != 0)
        {
          v9 = v43;
          a2 = v44;
          (*(v43 + 32))(v44, v12, v8);
          v42 = 0;
          return (*(v9 + 56))(a2, v42, 1, v8);
        }

        goto LABEL_74;
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_70;
      }

      v20 = 0;
      if (!result)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v37 = *result - 48;
        if (v37 > 9)
        {
          break;
        }

        if (!is_mul_ok(v20, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v20, v37);
        v20 = 10 * v20 + v37;
        if (v30)
        {
          break;
        }

        ++result;
        if (!--v25)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_70:
    LOBYTE(v20) = 0;
    LOBYTE(v24) = 1;
    goto LABEL_71;
  }

  if (v25 >= 1)
  {
    v24 = v25 - 1;
    if (v25 == 1)
    {
      goto LABEL_70;
    }

    v20 = 0;
    if (!result)
    {
      goto LABEL_62;
    }

    v33 = result + 1;
    while (1)
    {
      v34 = *v33 - 48;
      if (v34 > 9)
      {
        goto LABEL_70;
      }

      if (!is_mul_ok(v20, 0xAuLL))
      {
        goto LABEL_70;
      }

      v30 = __CFADD__(10 * v20, v34);
      v20 = 10 * v20 + v34;
      if (v30)
      {
        goto LABEL_70;
      }

      ++v33;
      if (!--v24)
      {
        goto LABEL_71;
      }
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_10005ABB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005AC00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000240AC;

  return sub_100058F68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10005ACC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005AD14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005AD64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10005AEB0, 0, 0);
}

uint64_t sub_10005AEB0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10005BE14(&qword_10009BF70, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10005BE14(&qword_10009BF78, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10005B040;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10005B040()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10005B1FC, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10005B1FC()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unsigned __int8 *sub_10005B268(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10005B7EC();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}