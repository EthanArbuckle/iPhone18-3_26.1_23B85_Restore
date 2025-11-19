uint64_t sub_10027BEA8(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(type metadata accessor for AccessoryPairingAnalytics() - 8);
  v1[3] = v2;
  v3 = *(v2 + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10027BF64, 0, 0);
}

Swift::Int sub_10027BF64()
{
  v13 = v0;
  v1 = v0[2];
  v11 = _swiftEmptyDictionarySingleton;
  v12 = v1;

  result = sub_10027CB30(&v12);
  v3 = v12;
  v4 = v12[2];
  if (v4)
  {
    v5 = 0;
    v6 = v0[3];
    while (v5 < v3[2])
    {
      v7 = v0[4];
      sub_10027E7C8(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, type metadata accessor for AccessoryPairingAnalytics);
      sub_10027C110(v7, &v11);
      ++v5;
      result = sub_10027E768(v0[4], type metadata accessor for AccessoryPairingAnalytics);
      if (v4 == v5)
      {
        v8 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
LABEL_7:
    v9 = v0[4];

    v10 = v0[1];

    return v10(v8);
  }

  return result;
}

uint64_t sub_10027C110(uint64_t a1, uint64_t a2)
{
  v66[2] = a2;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v66[3] = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Endianness();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v66[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  v70 = xmmword_101385D80;
  *(v8 + 16) = xmmword_101385D80;
  v9 = type metadata accessor for AccessoryPairingAnalytics();
  v10 = v9[6];
  v76 = a1;
  v11 = *(a1 + v10);
  LOBYTE(v71) = *(a1 + v10);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  *(v8 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v8 + 64) = v15;
  *(v8 + 32) = v12;
  *(v8 + 40) = v14;
  v69 = String.init(format:arguments:)();
  v17 = v16;

  sub_100313B54(*(a1 + v9[9]), *(a1 + v9[9] + 8));
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v71))
  {
    v18 = 0;
  }

  else
  {
    v18 = v71;
  }

  v73 = &type metadata for Int;
  v74 = sub_1000DFAD8();
  v71 = v18;
  v75 = 2;
  sub_1001DE0D4(&v71, v69, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v70;
  v68 = v11;
  LOBYTE(v71) = v11;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = v15;
  v69 = v15;
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v22 = String.init(format:arguments:)();
  v24 = v23;

  v67 = v9;
  v25 = *(v76 + v9[10]);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = 0xE800000000000000;
      v27 = 0x6465726961706E75;
      goto LABEL_12;
    }

    v26 = 0xE600000000000000;
    v28 = 1801678700;
  }

  else
  {
    if (!*(v76 + v9[10]))
    {
      v26 = 0xE700000000000000;
      v27 = 0x6E776F6E6B6E75;
      goto LABEL_12;
    }

    v26 = 0xE600000000000000;
    v28 = 1919508848;
  }

  v27 = v28 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
LABEL_12:
  v73 = &type metadata for String;
  v29 = sub_1000DF96C();
  v74 = v29;
  v71 = v27;
  v72 = v26;
  v75 = 1;
  sub_1001DE0D4(&v71, v22, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = v70;
  LOBYTE(v71) = v68;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v69;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v32;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v34 = String.init(format:arguments:)();
  v36 = v35;

  v37 = (v76 + v67[7]);
  v38 = *v37;
  v39 = v37[1];
  static String.Encoding.utf8.getter();
  v40 = String.init(data:encoding:)();
  if (!v41)
  {
    v40 = Data.hexString.getter();
  }

  v73 = &type metadata for String;
  v74 = v29;
  v71 = v40;
  v72 = v41;
  v75 = 1;
  sub_1001DE0D4(&v71, v34, v36);
  v42 = swift_allocObject();
  *(v42 + 16) = v70;
  v43 = v68;
  LOBYTE(v71) = v68;
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v69;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v45;
  *(v42 + 32) = v44;
  *(v42 + 40) = v46;
  v47 = String.init(format:arguments:)();
  v49 = v48;

  v50 = v67;
  v51 = v76;
  v52 = (v76 + v67[8]);
  v54 = *v52;
  v53 = v52[1];
  v73 = &type metadata for String;
  v74 = v29;
  v71 = v54;
  v72 = v53;
  v75 = 1;

  result = sub_1001DE0D4(&v71, v47, v49);
  v56 = (v51 + v50[13]);
  v57 = v56[1];
  if (v57)
  {
    v58 = *v56;
    v59 = swift_allocObject();
    *(v59 + 16) = v70;
    LOBYTE(v71) = v43;

    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v69;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = v61;
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v63 = String.init(format:arguments:)();
    v65 = v64;

    v73 = &type metadata for String;
    v74 = v29;
    v71 = v58;
    v72 = v57;
    v75 = 1;
    return sub_1001DE0D4(&v71, v63, v65);
  }

  return result;
}

uint64_t sub_10027C6F0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10027C798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10027C85C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10027C904(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_10027C9AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10026B4D4();
}

uint64_t sub_10027CA38()
{
  v1 = *v0;
  type metadata accessor for AccessoryPairingAnalyticsService();
  sub_10027EB7C(&qword_10169BCB0, v2, type metadata accessor for AccessoryPairingAnalyticsService);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_10027CB30(void **a1)
{
  v2 = *(type metadata accessor for AccessoryPairingAnalytics() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32070(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10027CBD8(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10027CBD8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for AccessoryPairingAnalytics();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for AccessoryPairingAnalytics() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10027CF4C(v8, v9, a1, v4);
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
    return sub_10027CD04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10027CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for AccessoryPairingAnalytics();
  v8 = *(*(v37 - 8) + 64);
  v9 = __chkstk_darwin(v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v37;
    while (1)
    {
      sub_10027E7C8(v24, v18, type metadata accessor for AccessoryPairingAnalytics);
      sub_10027E7C8(v21, v14, type metadata accessor for AccessoryPairingAnalytics);
      v26 = *(v25 + 56);
      v27 = static Date.< infix(_:_:)();
      sub_10027E768(v14, type metadata accessor for AccessoryPairingAnalytics);
      result = sub_10027E768(v18, type metadata accessor for AccessoryPairingAnalytics);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_10027E700(v24, v11, type metadata accessor for AccessoryPairingAnalytics);
      v25 = v37;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10027E700(v11, v21, type metadata accessor for AccessoryPairingAnalytics);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10027CF4C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for AccessoryPairingAnalytics();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_10027D878(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_10027E7C8(v114 + v25 * v24, v19, type metadata accessor for AccessoryPairingAnalytics);
      v27 = v26 + v25 * v21;
      v28 = v120;
      sub_10027E7C8(v27, v120, type metadata accessor for AccessoryPairingAnalytics);
      v29 = *(v9 + 56);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_10027E768(v28, type metadata accessor for AccessoryPairingAnalytics);
      result = sub_10027E768(v19, type metadata accessor for AccessoryPairingAnalytics);
      v106 = v21;
      v30 = v21 + 2;
      v117 = v25;
      v31 = v114 + v25 * (v21 + 2);
      while (v20 != v30)
      {
        sub_10027E7C8(v31, v19, type metadata accessor for AccessoryPairingAnalytics);
        v32 = v120;
        sub_10027E7C8(v5, v120, type metadata accessor for AccessoryPairingAnalytics);
        v33 = *(v121 + 56);
        v34 = static Date.< infix(_:_:)() & 1;
        sub_10027E768(v32, type metadata accessor for AccessoryPairingAnalytics);
        result = sub_10027E768(v19, type metadata accessor for AccessoryPairingAnalytics);
        ++v30;
        v31 += v117;
        v5 += v117;
        if ((v115 & 1) != v34)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v35 = v117 * (v20 - 1);
          v36 = v20;
          v37 = v20 * v117;
          v115 = v20;
          v38 = v106;
          v39 = v106;
          v40 = v106 * v117;
          do
          {
            if (v38 != --v36)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_10027E700(v41 + v40, v111, type metadata accessor for AccessoryPairingAnalytics);
              if (v40 < v35 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10027E700(v111, v41 + v35, type metadata accessor for AccessoryPairingAnalytics);
            }

            ++v38;
            v35 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v38 < v36);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v39;
          v20 = v115;
        }
      }
    }

    v42 = v118[1];
    if (v20 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v42)
    {
      v43 = v118[1];
    }

    else
    {
      v43 = v23 + a4;
    }

    if (v43 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v43)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v88 = v20;
    v89 = v23;
    v90 = *v118;
    v91 = *(v116 + 72);
    v92 = *v118 + v91 * (v20 - 1);
    v93 = -v91;
    v106 = v89;
    v94 = v89 - v20;
    v115 = v88;
    v109 = v91;
    v110 = v43;
    v5 = v90 + v88 * v91;
LABEL_86:
    v113 = v5;
    v114 = v94;
    v117 = v92;
LABEL_87:
    a4 = type metadata accessor for AccessoryPairingAnalytics;
    sub_10027E7C8(v5, v19, type metadata accessor for AccessoryPairingAnalytics);
    v95 = v120;
    sub_10027E7C8(v92, v120, type metadata accessor for AccessoryPairingAnalytics);
    v96 = *(v9 + 56);
    v97 = static Date.< infix(_:_:)();
    sub_10027E768(v95, type metadata accessor for AccessoryPairingAnalytics);
    result = sub_10027E768(v19, type metadata accessor for AccessoryPairingAnalytics);
    if (v97)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v92 = v117 + v109;
    v94 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v44 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      result = sub_100A5B430((v44 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * a4];
    *(v45 + 4) = v23;
    *(v45 + 5) = v21;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v22[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_111;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_114;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v63 >= v55)
          {
            v81 = &v22[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v22[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v22[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v22 + 4);
            v49 = *(v22 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v22[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v85 = v22;
        v86 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_10027D878(*v118 + *(v116 + 72) * v86, *v118 + *(v116 + 72) * *&v22[16 * v47 + 32], *v118 + *(v116 + 72) * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_100B31E68(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v85;
        result = sub_100B31DDC(v47);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v90)
  {
    a4 = type metadata accessor for AccessoryPairingAnalytics;
    v98 = v119;
    sub_10027E700(v5, v119, type metadata accessor for AccessoryPairingAnalytics);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10027E700(v98, v92, type metadata accessor for AccessoryPairingAnalytics);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_10027D878(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for AccessoryPairingAnalytics();
  v8 = *(*(v48 - 8) + 64);
  v9 = __chkstk_darwin(v48);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v46 = &v38 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v42 = a1;
      v43 = a4;
      v41 = -v14;
      do
      {
        v39 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v44 = v28;
        v45 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v25;
          v31 = v48;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v46;
          sub_10027E7C8(v33, v46, type metadata accessor for AccessoryPairingAnalytics);
          v35 = v47;
          sub_10027E7C8(v29, v47, type metadata accessor for AccessoryPairingAnalytics);
          v36 = *(v31 + 56);
          LOBYTE(v31) = static Date.< infix(_:_:)();
          sub_10027E768(v35, type metadata accessor for AccessoryPairingAnalytics);
          sub_10027E768(v34, type metadata accessor for AccessoryPairingAnalytics);
          if (v31)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v27;
            a3 = v32;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v44;
          v30 = v33 > v43;
          v29 = v45;
          v26 = v41;
          if (!v30)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v32 >= v44)
        {
          a3 = v32;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v41;
          a1 = v42;
          v25 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v32;
          a2 = v45;
          v26 = v41;
          a1 = v42;
          v25 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v46;
        sub_10027E7C8(a2, v46, type metadata accessor for AccessoryPairingAnalytics);
        v22 = v47;
        sub_10027E7C8(a4, v47, type metadata accessor for AccessoryPairingAnalytics);
        v23 = *(v48 + 56);
        v24 = static Date.< infix(_:_:)();
        sub_10027E768(v22, type metadata accessor for AccessoryPairingAnalytics);
        sub_10027E768(v21, type metadata accessor for AccessoryPairingAnalytics);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB14(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_10027DD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027DDF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001BBA4C;

  return sub_100276BEC(v2, v3, v5);
}

uint64_t sub_10027DE9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B9EAD8(a1, v4, v5, v6);
}

uint64_t sub_10027DF7C()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_10026EF48(v4, v0 + v3, v5);
}

uint64_t sub_10027E090(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10026F5F4(a1, v6, v1 + v5);
}

uint64_t sub_10027E1B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B9E478(a1, v1);
}

uint64_t sub_10027E254(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100274BA4(a1, v1);
}

uint64_t sub_10027E2F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_100274F84(a1, v5, v4);
}

uint64_t sub_10027E398(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B9E8A8(a1, v6, v1 + v5);
}

uint64_t sub_10027E4A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_10027E538(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100B9E8A8(a1, v6, v1 + v5);
}

uint64_t sub_10027E61C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B9E69C(a1, v6, v1 + v5);
}

uint64_t sub_10027E700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027E768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10027E7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027E838()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10026D580();
}

uint64_t sub_10027E8D4()
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10026C86C(v0 + v3);
}

uint64_t sub_10027E9D8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10027EAA4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100B9EB9C(v4, v0 + v3);
}

uint64_t sub_10027EB7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_10027EBC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[7];
  v50[6] = v1[6];
  v50[7] = v3;
  v50[8] = v1[8];
  v4 = v1[3];
  v50[2] = v1[2];
  v50[3] = v4;
  v5 = v1[5];
  v50[4] = v1[4];
  v50[5] = v5;
  v6 = v1[1];
  v50[0] = *v1;
  v50[1] = v6;
  v7 = sub_10027EE64(v50);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v19 = sub_10004F9D4(v50);
      a1[3] = &type metadata for PencilSendPairingStatusCommandPayload;
      a1[4] = sub_10027EF38();
      v20 = swift_allocObject();
      *a1 = v20;
      v21 = v19[1];
      *(v20 + 16) = *v19;
      *(v20 + 32) = v21;
      v22 = v1[3];
      v43 = v1[2];
      v44 = v22;
      v23 = v1[1];
      v41 = *v1;
      v42 = v23;
      v24 = v1[8];
      v48 = v1[7];
      v49 = v24;
      v25 = v1[6];
      v46 = v1[5];
      v47 = v25;
      v45 = v1[4];
      v26 = sub_10004F9D4(&v41);
      v27 = v26[2];
      v28 = v26[3];
      sub_100017D5C(*v26, v26[1]);
      return sub_100017D5C(v27, v28);
    }

    else
    {
      if (v7 == 4)
      {
        a1[3] = &type metadata for PencilPairingCompleteCommandPayload;
        result = sub_10027EEE4();
      }

      else
      {
        a1[3] = &type metadata for UnpairCommandPayload;
        result = sub_10027EE90();
      }

      a1[4] = result;
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = sub_10004F9D4(v50);
        a1[3] = &type metadata for PencilSendPairingCommandPayload;
        a1[4] = sub_10027EFE0();
        v9 = swift_allocObject();
        *a1 = v9;
        memmove((v9 + 16), v8, 0x90uLL);
        v10 = v1[7];
        v47 = v1[6];
        v48 = v10;
        v49 = v1[8];
        v11 = v1[3];
        v43 = v1[2];
        v44 = v11;
        v12 = v1[5];
        v45 = v1[4];
        v46 = v12;
        v13 = v1[1];
        v41 = *v1;
        v42 = v13;
        v14 = sub_10004F9D4(&v41);
        return sub_10027F034(v14, &v40);
      }

      v16 = sub_10004F9D4(v50);
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);
      a1[3] = &type metadata for PencilFinalizePairingCommandPayload;
      a1[4] = sub_10027EF8C();
    }

    else
    {
      v16 = sub_10004F9D4(v50);
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);
      a1[3] = &type metadata for PencilInitiatePairingCommandPayload;
      a1[4] = sub_10027F0A4();
    }

    v29 = swift_allocObject();
    *a1 = v29;
    v30 = *(v16 + 16);
    *(v29 + 16) = *v16;
    *(v29 + 32) = v30;
    *(v29 + 48) = v17;
    *(v29 + 56) = v18;
    v31 = v1[3];
    v43 = v1[2];
    v44 = v31;
    v32 = v1[1];
    v41 = *v1;
    v42 = v32;
    v33 = v1[8];
    v48 = v1[7];
    v49 = v33;
    v34 = v1[6];
    v46 = v1[5];
    v47 = v34;
    v45 = v1[4];
    v35 = sub_10004F9D4(&v41);
    v36 = v35[2];
    v37 = v35[3];
    v38 = v35[4];
    v39 = v35[5];
    sub_100017D5C(*v35, v35[1]);
    sub_100017D5C(v36, v37);
    return sub_100017D5C(v38, v39);
  }

  return result;
}

uint64_t sub_10027EE64(uint64_t a1)
{
  if (((*(a1 + 136) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 136) >> 59) & 6 | ((*(a1 + 120) & 0x2000000000000000) != 0);
  }
}

unint64_t sub_10027EE90()
{
  result = qword_10169BD20;
  if (!qword_10169BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD20);
  }

  return result;
}

unint64_t sub_10027EEE4()
{
  result = qword_10169BD28;
  if (!qword_10169BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD28);
  }

  return result;
}

unint64_t sub_10027EF38()
{
  result = qword_10169BD30;
  if (!qword_10169BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD30);
  }

  return result;
}

unint64_t sub_10027EF8C()
{
  result = qword_10169BD38;
  if (!qword_10169BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD38);
  }

  return result;
}

unint64_t sub_10027EFE0()
{
  result = qword_10169BD40;
  if (!qword_10169BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD40);
  }

  return result;
}

uint64_t sub_10027F034(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BD48, &qword_101395BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10027F0A4()
{
  result = qword_10169BD50;
  if (!qword_10169BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD50);
  }

  return result;
}

uint64_t sub_10027F0F8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10027F140(uint64_t a1)
{
  if (((*(a1 + 136) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 136) >> 59) & 6 | ((*(a1 + 120) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_10027F16C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFB && *(a1 + 144))
  {
    return (*a1 + 262140);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  v5 = *(a1 + 88);
  v6 = *(a1 + 110);
  v7 = *(a1 + 120);
  if ((((8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0x4000)) | (((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000) >> 15)) ^ 0x3FFFF) >= 0x3FFFB)
  {
    v8 = -1;
  }

  else
  {
    v8 = ((8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0x4000)) | (((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000) >> 15)) ^ 0x3FFFF;
  }

  return (v8 + 1);
}

uint64_t sub_10027F240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFB)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 262140;
    if (a3 >= 0x3FFFC)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFC)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x7FFF) - (a2 << 15);
      *result = 0;
      *(result + 8) = ((-a2 >> 3) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
      *(result + 80) = 0;
      *(result + 88) = (v3 << 50) & 0x3000000000000000;
      *(result + 96) = 0;
      *(result + 104) = (v3 << 48) & 0x3000000000000000;
      *(result + 112) = 0;
      *(result + 120) = (v3 << 46) & 0x3000000000000000;
      *(result + 128) = 0;
      *(result + 136) = (v3 << 44) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_10027F32C(void *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
    v3 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
    v4 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
    v5 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
    v6 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
    v7 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
    v8 = result[15] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v9 = result[17] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
    result[5] = v3;
    result[7] = v4;
    result[9] = v5;
    result[11] = v6;
    result[13] = v7;
    result[15] = v8;
    result[17] = v9;
  }

  else
  {
    *result = a2 - 4;
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *(result + 5) = 0u;
    *(result + 7) = 0u;
    *(result + 9) = 0u;
    *(result + 11) = 0u;
    *(result + 13) = 0u;
    *(result + 15) = 0u;
    result[17] = 0x2000000000000000;
  }

  return result;
}

__n128 sub_10027F3F8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100280218(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10027F454(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = v3[7];
  v67[6] = v3[6];
  v67[7] = v11;
  v67[8] = v3[8];
  v12 = v3[3];
  v67[2] = v3[2];
  v67[3] = v12;
  v13 = v3[5];
  v67[4] = v3[4];
  v67[5] = v13;
  v14 = v3[1];
  v67[0] = *v3;
  v67[1] = v14;
  v15 = sub_10027EE64(v67);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      sub_10004F9D4(v67);
      v16 = 259;
    }

    else if (v15 == 4)
    {
      v16 = 260;
    }

    else
    {
      v16 = 516;
    }
  }

  else if (v15)
  {
    if (v15 == 1)
    {
      sub_10004F9D4(v67);
      v16 = 257;
    }

    else
    {
      sub_10004F9D4(v67);
      v16 = 258;
    }
  }

  else
  {
    sub_10004F9D4(v67);
    v16 = 256;
  }

  LOWORD(v45) = v16;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v9, v5);
  LOWORD(v45) = v54;
  sub_10015049C(v64, v65);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v17 = v3[7];
    v66[6] = v3[6];
    v66[7] = v17;
    v66[8] = v3[8];
    v18 = v3[3];
    v66[2] = v3[2];
    v66[3] = v18;
    v19 = v3[5];
    v66[4] = v3[4];
    v66[5] = v19;
    v20 = v3[1];
    v66[0] = *v3;
    v66[1] = v20;
    v21 = sub_10027EE64(v66);
    if (v21 > 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {
          sub_10027EBC4(&v54);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_33;
          }

          sub_10015049C(v64, v65);
          sub_10027FC0C();
        }

        else
        {
          sub_10027EBC4(&v54);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_33;
          }

          sub_10015049C(v64, v65);
          sub_10027FBB8();
        }

        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v64);
      }

      sub_10004F9D4(v66);
      sub_10027EBC4(&v54);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_33;
      }

      v27 = v45;
      v28 = v46;
      v54 = v45;
      v55 = v46;
      sub_10015049C(v64, v65);
      sub_10027FC60();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_100016590(v27, *(&v27 + 1));
      v30 = v28 >> 64;
      v29 = v28;
    }

    else
    {
      if (v21)
      {
        if (v21 == 1)
        {
          sub_10004F9D4(v66);
          sub_10027EBC4(v63);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v51 = v60;
            v52 = v61;
            v53 = v62;
            v47 = v56;
            v48 = v57;
            v49 = v58;
            v50 = v59;
            v45 = v54;
            v46 = v55;
            v42 = v60;
            v43 = v61;
            v44 = v62;
            v38 = v56;
            v39 = v57;
            v40 = v58;
            v41 = v59;
            v36 = v54;
            v37 = v55;
            sub_10015049C(v64, v65);
            sub_100204624();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_10027FD08(&v45);
            return sub_100007BAC(v64);
          }

LABEL_33:
          sub_10027FB64();
          swift_allocError();
          *v32 = 0;
          swift_willThrow();
          return sub_100007BAC(v64);
        }

        sub_10004F9D4(v66);
        sub_10027EBC4(&v45);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_33;
        }

        v31 = v54;
        v24 = *(&v55 + 1);
        v23 = v55;
        v35 = *(&v56 + 1);
        v68 = v56;
        sub_10015049C(v64, v65);
        sub_10027FCB4();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v26 = v31 >> 64;
        v25 = v31;
      }

      else
      {
        sub_10004F9D4(v66);
        sub_10027EBC4(&v45);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_33;
        }

        v22 = v54;
        v24 = *(&v55 + 1);
        v23 = v55;
        v35 = *(&v56 + 1);
        v68 = v56;
        sub_10015049C(v64, v65);
        sub_10027FD5C();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v26 = v22 >> 64;
        v25 = v22;
      }

      sub_100016590(v25, v26);
      sub_100016590(v23, v24);
      v29 = v68;
      v30 = v35;
    }

    sub_100016590(v29, v30);
  }

  return sub_100007BAC(v64);
}

__n128 sub_10027FAF0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_10027F3F8(a1, v8).n128_u64[0];
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_10027FB64()
{
  result = qword_10169BD58;
  if (!qword_10169BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD58);
  }

  return result;
}

unint64_t sub_10027FBB8()
{
  result = qword_10169BD60;
  if (!qword_10169BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD60);
  }

  return result;
}

unint64_t sub_10027FC0C()
{
  result = qword_10169BD68;
  if (!qword_10169BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD68);
  }

  return result;
}

unint64_t sub_10027FC60()
{
  result = qword_10169BD70;
  if (!qword_10169BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD70);
  }

  return result;
}

unint64_t sub_10027FCB4()
{
  result = qword_10169BD78;
  if (!qword_10169BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD78);
  }

  return result;
}

unint64_t sub_10027FD5C()
{
  result = qword_10169BD80;
  if (!qword_10169BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD80);
  }

  return result;
}

uint64_t sub_10027FDB0(unsigned __int16 a1)
{
  if (a1 > 0x102u)
  {
    if (a1 == 259)
    {
      return 3;
    }

    if (a1 != 260)
    {
      if (a1 == 516)
      {
        return 5;
      }

      return 6;
    }

    return 4;
  }

  else
  {
    if (a1 == 256)
    {
      return 0;
    }

    if (a1 != 257)
    {
      if (a1 == 258)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

void sub_10027FE24(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_10027EF38();
      v6 = &type metadata for PencilSendPairingStatusCommandPayload;
    }

    else if (a1 == 4)
    {
      sub_10027EEE4();
      v6 = &type metadata for PencilPairingCompleteCommandPayload;
    }

    else
    {
      sub_10027EE90();
      v6 = &type metadata for UnpairCommandPayload;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_10027EFE0();
      v6 = &type metadata for PencilSendPairingCommandPayload;
    }

    else
    {
      sub_10027EF8C();
      v6 = &type metadata for PencilFinalizePairingCommandPayload;
    }
  }

  else
  {
    sub_10027F0A4();
    v6 = &type metadata for PencilInitiatePairingCommandPayload;
  }

  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 2u)
    {
      if (a1 != 3)
      {
        if (a1 == 4)
        {
          sub_10001F280(a2, &v24);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_10028067C(&v33);
LABEL_30:
            v9 = v40;
            a3[6] = v39;
            a3[7] = v9;
            a3[8] = v41;
            v10 = v36;
            a3[2] = v35;
            a3[3] = v10;
            v11 = v38;
            a3[4] = v37;
            a3[5] = v11;
            v12 = v34;
            *a3 = v33;
            a3[1] = v12;
            return;
          }
        }

        else
        {
          sub_10001F280(a2, &v24);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100280644(&v33);
            goto LABEL_30;
          }
        }

        goto LABEL_33;
      }

      sub_10001F280(a2, &v14);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_33:
        sub_10027FB64();
        swift_allocError();
        *v13 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      sub_100007BAC(a2);
      v24 = v23[0];
      v25 = v23[1];
      sub_10028069C(&v24);
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          sub_10001F280(a2, v23);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v20 = v30;
            v21 = v31;
            v22 = v32;
            v16 = v26;
            v17 = v27;
            v18 = v28;
            v19 = v29;
            v14 = v24;
            v15 = v25;
            sub_100280788(&v14);
            v39 = v20;
            v40 = v21;
            v41 = v22;
            v35 = v16;
            v36 = v17;
            v37 = v18;
            v38 = v19;
            v8 = v14;
            v7 = v15;
LABEL_29:
            v33 = v8;
            v34 = v7;
            goto LABEL_30;
          }

          goto LABEL_33;
        }

        sub_10001F280(a2, v23);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v24 = v14;
          v25 = v15;
          v26 = v16;
          sub_100280714(&v24);
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_10001F280(a2, v23);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_100007BAC(a2);
      v24 = v14;
      v25 = v15;
      v26 = v16;
      sub_1002807FC(&v24);
    }

LABEL_28:
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v8 = v24;
    v7 = v25;
    goto LABEL_29;
  }

  __break(1u);
}

uint64_t sub_100280218@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  v35 = a1;
  sub_1000035D0(a1, v9);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v38, v38[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v11 = v35;
LABEL_19:
    sub_100007BAC(v38);
    return sub_100007BAC(v11);
  }

  v12 = v34;
  v40 = v36[0];
  static Endianness.current.getter();
  FixedWidthInteger.convert(to:)();
  (*(v5 + 8))(v8, v4);
  v13 = v37[0];
  v14 = sub_10027FDB0(v37[0]);
  if (v14 == 6)
  {
    static os_log_type_t.error.getter();
    v11 = v35;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    LOWORD(v37[0]) = v13;
    v16 = FixedWidthInteger.data.getter();
    v18 = v17;
    v19 = Data.hexString.getter();
    v21 = v20;
    sub_100016590(v16, v18);
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    sub_10027FB64();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  v23 = v35;
  v24 = v14;
  if (v14 > 2u)
  {
    if (v14 == 3)
    {
      v25 = &type metadata for PencilSendPairingStatusCommandPayload;
      v26 = sub_10027EF38();
    }

    else if (v14 == 4)
    {
      v25 = &type metadata for PencilPairingCompleteCommandPayload;
      v26 = sub_10027EEE4();
    }

    else
    {
      v25 = &type metadata for UnpairCommandPayload;
      v26 = sub_10027EE90();
    }
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v25 = &type metadata for PencilSendPairingCommandPayload;
      v26 = sub_10027EFE0();
    }

    else
    {
      v25 = &type metadata for PencilFinalizePairingCommandPayload;
      v26 = sub_10027EF8C();
    }
  }

  else
  {
    v25 = &type metadata for PencilInitiatePairingCommandPayload;
    v26 = sub_10027F0A4();
  }

  v27 = v26;
  sub_10001F280(v23, v36);
  v37[3] = v25;
  v37[4] = v27;
  sub_1000280DC(v37);
  v28 = *(v27 + 8);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v37, v36);
  sub_10027FE24(v24, v36, v39);
  sub_100007BAC(v37);
  sub_100007BAC(v38);
  result = sub_100007BAC(v23);
  v30 = v39[7];
  v12[6] = v39[6];
  v12[7] = v30;
  v12[8] = v39[8];
  v31 = v39[3];
  v12[2] = v39[2];
  v12[3] = v31;
  v32 = v39[5];
  v12[4] = v39[4];
  v12[5] = v32;
  v33 = v39[1];
  *v12 = v39[0];
  v12[1] = v33;
  return result;
}

double sub_100280644(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x2000000000000000;
  return result;
}

double sub_10028067C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x2000000000000000;
  return result;
}

void *sub_10028069C(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[15] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v8 = result[17] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v7;
  result[17] = v8;
  return result;
}

void *sub_100280714(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[17] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v7;
  result[17] = v8;
  return result;
}

void *sub_100280788(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[15] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v8;
  result[17] = v7;
  return result;
}

void *sub_1002807FC(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v7;
  result[17] = v8;
  return result;
}

unint64_t sub_100280880()
{
  result = qword_10169BD88;
  if (!qword_10169BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD88);
  }

  return result;
}

uint64_t sub_1002808D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  *a2 = a1[5];
  a2[1] = v2;
  v3 = a1[4];
  a2[2] = a1[3];
  a2[3] = v3;
}

uint64_t sub_100280910()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = sub_1000BC488();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v11 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = sub_101073BB4(v17);
  v14 = v13;

  *(v1 + 24) = v12;
  *(v1 + 32) = v14;
  strcpy((v1 + 40), "/acsnservice");
  *(v1 + 53) = 0;
  *(v1 + 54) = -5120;
  sub_100280C10();
  return v1;
}

uint64_t sub_100280C10()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[2];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  aBlock[4] = sub_10028101C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101615618;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v6, v3);
  (*(v7 + 8))(v10, v16);
}

uint64_t sub_100280F28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10028106C();
    v4 = v3;
    v6 = v5;
    v7 = v1[4];
    v1[3] = v2;
    v1[4] = v8;

    v9 = v1[6];
    v1[5] = v4;
    v1[6] = v6;
  }

  return result;
}

uint64_t sub_100280FB0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_10028101C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100280F28();
}

uint64_t sub_100281024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10028106C()
{
  v0 = type metadata accessor for FMNAccountType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v14 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = v26;
  if (sub_101073BDC(v26))
  {
    static os_log_type_t.default.getter();
    if (qword_101695008 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  type metadata accessor for FMNAuthenticationProvider();
  (*(v1 + 104))(v4, enum case for FMNAccountType.searchParty(_:), v0);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v1 + 8))(v4, v0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1002815B4(v8);
    goto LABEL_13;
  }

  (*(v10 + 32))(v13, v8, v9);
  v16 = URL.host.getter();
  if (!v17)
  {
    (*(v10 + 8))(v13, v9);
LABEL_13:
    static os_log_type_t.default.getter();
    if (qword_101695008 == -1)
    {
LABEL_14:
      os_log(_:dso:log:_:_:)();
      v18 = sub_101073BB4(v15);

      return v18;
    }

LABEL_16:
    swift_once();
    goto LABEL_14;
  }

  v18 = v16;
  v19 = v17;

  static os_log_type_t.default.getter();
  if (qword_101695008 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v25[3] = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10138BBE0;
  *(v20 + 56) = &type metadata for String;
  v21 = sub_100008C00();
  *(v20 + 64) = v21;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;

  v22 = URL.path.getter();
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v21;
  *(v20 + 72) = v22;
  *(v20 + 80) = v23;
  os_log(_:dso:log:_:_:)();

  URL.path.getter();
  (*(v10 + 8))(v13, v9);
  return v18;
}

uint64_t sub_1002815B4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028161C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100281680(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalPairingMonitorService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100281728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocalPairingMonitorService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1002817EC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalPairingMonitorService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100281894(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalPairingMonitorService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_10028193C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalPairingMonitorService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1002819E4()
{
  v1 = *v0;
  type metadata accessor for LocalPairingMonitorService();
  sub_100281AA0(&qword_1016B1130);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100281AA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalPairingMonitorService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100281AE0(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_1000035D0(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Date.epoch.getter();
  sub_10015049C(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100007BAC(v4);
}

uint64_t sub_100281B88()
{
  v1 = *v0;
  sub_10002E98C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_100281BC8(uint64_t a1)
{
  v2 = sub_100283B9C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100281C04(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C158, &qword_1013969B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100283AF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v14[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(type metadata accessor for FindMyServiceDeviceListPayload(0) + 20);
    v14[14] = 1;
    type metadata accessor for FindMyServiceDeviceListClientContext(0);
    sub_100283A48(&qword_10169C168, type metadata accessor for FindMyServiceDeviceListClientContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100281DBC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C198, &qword_1013969C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100283C44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14[7] = 0;
  sub_1000BC4D4(&qword_10169C1A8, &qword_1013969D0);
  sub_100283C98();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v14[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(type metadata accessor for FindMyServiceDeviceListFilterPayload(0) + 24);
    v14[5] = 2;
    type metadata accessor for FindMyServiceDeviceListClientContext(0);
    sub_100283A48(&qword_10169C168, type metadata accessor for FindMyServiceDeviceListClientContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100282004(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C170, &qword_1013969B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100283B48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1002821C4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E656B6F54737061;
    v7 = 1752397168;
    v8 = 0x54746375646F7270;
    if (a1 != 3)
    {
      v8 = 0x646C697542736FLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4455656369766564;
    v2 = 0x6576697463616E69;
    if (a1 != 9)
    {
      v2 = 0x64657463656C6573;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6954746E65696C63;
    v4 = 0x6F6973726556736FLL;
    if (a1 != 6)
    {
      v4 = 2037149030;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100282344(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C188, &qword_1013969C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100283BF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v33[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v33[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 24);
    v33[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v33[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v33[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v20 = MyServiceDeviceListClientContext[9];
    v33[10] = 5;
    type metadata accessor for Date();
    sub_100283A48(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = (v3 + MyServiceDeviceListClientContext[10]);
    v22 = *v21;
    v23 = v21[1];
    v33[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + MyServiceDeviceListClientContext[11]);
    v33[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = (v3 + MyServiceDeviceListClientContext[12]);
    v26 = *v25;
    v27 = v25[1];
    v33[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v3 + MyServiceDeviceListClientContext[13]);
    v33[6] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = (v3 + MyServiceDeviceListClientContext[14]);
    v30 = *v29;
    v31 = v29[1];
    v33[5] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10028266C()
{
  if (*v0)
  {
    result = 0x6F43746E65696C63;
  }

  else
  {
    result = 0x6544796C696D6166;
  }

  *v0;
  return result;
}

uint64_t sub_1002826C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6544796C696D6166 && a2 == 0xED00007365636976;
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

uint64_t sub_1002827AC(uint64_t a1)
{
  v2 = sub_100283AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002827E8(uint64_t a1)
{
  v2 = sub_100283AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028284C()
{
  v1 = 0x6544796C696D6166;
  if (*v0 != 1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656369766564;
  }
}

uint64_t sub_1002828C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002828E8(uint64_t a1)
{
  v2 = sub_100283C44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282924(uint64_t a1)
{
  v2 = sub_100283C44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282988()
{
  v1 = 0x6449737270;
  v2 = 0x754E6C6169726573;
  if (*v0 != 2)
  {
    v2 = 25705;
  }

  if (*v0)
  {
    v1 = 0x747865746E6F63;
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

uint64_t sub_1002829FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100282A24(uint64_t a1)
{
  v2 = sub_100283B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282A60(uint64_t a1)
{
  v2 = sub_100283B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100282AF0(uint64_t a1)
{
  v2 = sub_100283BF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282B2C(uint64_t a1)
{
  v2 = sub_100283BF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282B80(uint64_t a1)
{
  v1[33] = a1;
  v2 = type metadata accessor for Date();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();
  MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  v1[37] = MyServiceDeviceListClientContext;
  v6 = *(*(MyServiceDeviceListClientContext - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v7 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[39] = v7;
  v8 = *(v7 - 8);
  v1[40] = v8;
  v9 = *(v8 + 64) + 15;
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_100282CCC, 0, 0);
}

uint64_t sub_100282CCC()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[33];
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[42] = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v3);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v8 = v4[4];
  sub_1000035D0(v4, v4[3]);
  v9 = *(v8 + 8);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[43] = v10;
  v0[44] = v11;
  v12 = v11;
  v13 = v10;
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 40) = 0x800000010134EA40;
  v15 = [objc_opt_self() currentDevice];
  if (!v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v15;
  v20 = [v15 serverFriendlyDescription];

  if (!v20)
  {
LABEL_21:
    __break(1u);
    return unsafeBlocking<A>(_:)(v15, v16, v17, v18);
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(inited + 48) = v21;
  *(inited + 56) = v23;
  strcpy((inited + 64), "Accept-Version");
  *(inited + 79) = -18;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  strcpy((inited + 96), "Content-Type");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x800000010134F5C0;
  strcpy((inited + 128), "Content-Length");
  *(inited + 143) = -18;
  if (v12 >> 60 != 15)
  {
    v38 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v38 != 2)
      {
        goto LABEL_4;
      }

      v40 = *(v13 + 16);
      v39 = *(v13 + 24);
      v41 = __OFSUB__(v39, v40);
      v24 = v39 - v40;
      if (!v41)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v24 = BYTE6(v12);
      goto LABEL_5;
    }

    LODWORD(v24) = HIDWORD(v13) - v13;
    if (!__OFSUB__(HIDWORD(v13), v13))
    {
      v24 = v24;
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_4:
  v24 = 0;
LABEL_5:
  v25 = v0[38];
  v43 = v0[37];
  v26 = v0[35];
  v27 = v0[36];
  v29 = v0[33];
  v28 = v0[34];
  v0[30] = v24;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(inited + 160) = 0x652D747065636361;
  *(inited + 168) = 0xEF676E69646F636ELL;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x800000010134F5E0;
  *(inited + 192) = 0xD000000000000015;
  *(inited + 200) = 0x800000010134F600;
  v32 = v4[3];
  v31 = v4[4];
  sub_1000035D0(v29, v32);
  (*(v31 + 16))(v32, v31);
  (*(v26 + 16))(v27, v25 + *(v43 + 36), v28);
  sub_100283474(v25);
  v33 = Date.epoch.getter();
  (*(v26 + 8))(v27, v28);
  v0[31] = v33;
  *(inited + 208) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 216) = v34;
  v0[45] = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v35 = qword_10177B348;
  v0[46] = qword_10177B348;
  v36 = async function pointer to unsafeBlocking<A>(_:)[1];

  v37 = swift_task_alloc();
  v0[47] = v37;
  *v37 = v0;
  v37[1] = sub_100283220;
  v18 = &type metadata for Configuration;
  v16 = sub_1000D2BE0;
  v15 = v0 + 32;
  v17 = v35;

  return unsafeBlocking<A>(_:)(v15, v16, v17, v18);
}

uint64_t sub_100283220()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return _swift_task_switch(sub_100283338, 0, 0);
}

uint64_t sub_100283338()
{
  v1 = sub_101073B80(*(v0 + 256));

  if (v1)
  {
    v2 = *(v0 + 360);
    v3 = *(v0 + 336);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x800000010134F620, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v5 = *(v0 + 336);

    v2 = *(v0 + 360);
  }

  v6 = *(v0 + 328);
  v7 = *(v0 + 304);
  v8 = *(v0 + 288);
  sub_100007BAC(*(v0 + 264));

  v9 = *(v0 + 8);
  v10 = *(v0 + 344);
  v11 = *(v0 + 352);

  return v9(v10, v11, v2);
}

uint64_t sub_100283474(uint64_t a1)
{
  MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  (*(*(MyServiceDeviceListClientContext - 8) + 8))(a1, MyServiceDeviceListClientContext);
  return a1;
}

uint64_t sub_100283518()
{
  result = type metadata accessor for FindMyServiceDeviceListClientContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100283594(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002835A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002835F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100283650(uint64_t a1, int a2)
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

uint64_t sub_100283698(uint64_t result, int a2, int a3)
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

uint64_t sub_100283710()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10028380C()
{
  sub_100283898();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FindMyServiceDeviceListClientContext(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100283898()
{
  if (!qword_10169C100)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10169C100);
    }
  }
}

unint64_t sub_1002838EC()
{
  result = qword_10169C138;
  if (!qword_10169C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C138);
  }

  return result;
}

uint64_t sub_100283940(uint64_t a1)
{
  result = sub_100283A48(&qword_10169C140, type metadata accessor for FindMyServiceDeviceListPayload);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10028399C()
{
  result = qword_10169C148;
  if (!qword_10169C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C148);
  }

  return result;
}

uint64_t sub_1002839F0(uint64_t a1)
{
  result = sub_100283A48(&qword_10169C150, type metadata accessor for FindMyServiceDeviceListFilterPayload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100283A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100283A90(uint64_t a1, uint64_t a2)
{
  MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  (*(*(MyServiceDeviceListClientContext - 8) + 16))(a2, a1, MyServiceDeviceListClientContext);
  return a2;
}

unint64_t sub_100283AF4()
{
  result = qword_10169C160;
  if (!qword_10169C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C160);
  }

  return result;
}

unint64_t sub_100283B48()
{
  result = qword_10169C178;
  if (!qword_10169C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C178);
  }

  return result;
}

unint64_t sub_100283B9C()
{
  result = qword_10169C180;
  if (!qword_10169C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C180);
  }

  return result;
}

unint64_t sub_100283BF0()
{
  result = qword_10169C190;
  if (!qword_10169C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C190);
  }

  return result;
}

unint64_t sub_100283C44()
{
  result = qword_10169C1A0;
  if (!qword_10169C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1A0);
  }

  return result;
}

unint64_t sub_100283C98()
{
  result = qword_10169C1B0;
  if (!qword_10169C1B0)
  {
    sub_1000BC580(&qword_10169C1A8, &qword_1013969D0);
    sub_100283D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1B0);
  }

  return result;
}

unint64_t sub_100283D1C()
{
  result = qword_10169C1B8;
  if (!qword_10169C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMyServiceDeviceListClientContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FindMyServiceDeviceListClientContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100283EF4()
{
  result = qword_10169C1C0;
  if (!qword_10169C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1C0);
  }

  return result;
}

unint64_t sub_100283F4C()
{
  result = qword_10169C1C8;
  if (!qword_10169C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1C8);
  }

  return result;
}

unint64_t sub_100283FA4()
{
  result = qword_10169C1D0;
  if (!qword_10169C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1D0);
  }

  return result;
}

unint64_t sub_100283FFC()
{
  result = qword_10169C1D8;
  if (!qword_10169C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1D8);
  }

  return result;
}

unint64_t sub_100284054()
{
  result = qword_10169C1E0;
  if (!qword_10169C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1E0);
  }

  return result;
}

unint64_t sub_1002840AC()
{
  result = qword_10169C1E8;
  if (!qword_10169C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1E8);
  }

  return result;
}

unint64_t sub_100284104()
{
  result = qword_10169C1F0;
  if (!qword_10169C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1F0);
  }

  return result;
}

unint64_t sub_10028415C()
{
  result = qword_10169C1F8;
  if (!qword_10169C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1F8);
  }

  return result;
}

unint64_t sub_1002841B4()
{
  result = qword_10169C200;
  if (!qword_10169C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C200);
  }

  return result;
}

unint64_t sub_10028420C()
{
  result = qword_10169C208;
  if (!qword_10169C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C208);
  }

  return result;
}

unint64_t sub_100284264()
{
  result = qword_10169C210;
  if (!qword_10169C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C210);
  }

  return result;
}

unint64_t sub_1002842BC()
{
  result = qword_10169C218;
  if (!qword_10169C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C218);
  }

  return result;
}

uint64_t sub_100284310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6544796C696D6166 && a2 == 0xED00007365636976 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
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

uint64_t sub_100284438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449737270 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_100284594(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010134F640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752397168 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646C697542736FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6954746E65696C63 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 2037149030 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4455656369766564 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEE00656369766544)
  {

    return 10;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100284940()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v87 - v3;
  v5 = type metadata accessor for AccessoryMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v91 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v87 - v11;
  v13 = type metadata accessor for AccessoryProductInfo();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocalizationUtility.Table();
  v92 = *(v18 - 8);
  v93 = v18;
  v19 = *(v92 + 64);
  __chkstk_darwin(v18);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0 + *(type metadata accessor for UnwantedTrackingUserNotification() + 20);
  v22 = type metadata accessor for WildModeAssociationRecord(0);
  v23 = v22;
  if (*(v21 + v22[13]) - 2 >= 3)
  {
    v31 = v21 + v22[12];
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v31 + 8);
      v34 = *v31;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_101385D80;
      v36 = sub_100EB3708(v34, v33, v32);
      v37 = [v36 description];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_1010E09D0(v38, v40, 0);
      v43 = v42;

      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = sub_100008C00();
      *(v35 + 32) = v41;
      *(v35 + 40) = v43;
    }

    v26 = v92;
    v30 = v93;
    v27 = v94;
    goto LABEL_23;
  }

  sub_1000D2A70(v21 + v22[15], v12, &qword_101697268, &qword_101394FE0);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_100285FC4(v12, v17, type metadata accessor for AccessoryProductInfo);
    v44 = &v17[*(v13 + 52)];
    v46 = *v44;
    v45 = v44[1];

    v47 = v17;
    v48 = type metadata accessor for AccessoryProductInfo;
    goto LABEL_9;
  }

  sub_10000B3A8(v12, &qword_101697268, &qword_101394FE0);
  sub_1000D2A70(v21 + v23[14], v4, &qword_1016A62A0, &unk_101396E10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000B3A8(v4, &qword_1016A62A0, &unk_101396E10);
    v24 = v21 + v23[12];
    v25 = *(v24 + 16);
    v26 = v92;
    v27 = v94;
    if (!v25)
    {
      v30 = v93;
      goto LABEL_23;
    }

    v28 = *(v24 + 8);
    v29 = *v24;
    v30 = v93;
    goto LABEL_14;
  }

  v70 = v91;
  sub_100285FC4(v4, v91, type metadata accessor for AccessoryMetadata);
  v71 = sub_100302B50();
  v72 = (v70 + *(v5 + 28));
  v26 = v92;
  v27 = v94;
  if (!v71)
  {
    v46 = *v72;
    v45 = v72[1];

    sub_10028602C(v70, type metadata accessor for AccessoryMetadata);
    goto LABEL_10;
  }

  v73 = v72[1];
  if (v73)
  {
    v74 = *v72;
    v95 = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v95 = 0xD00000000000001DLL;
    v96 = 0x800000010134F730;
    v75._countAndFlagsBits = v74;
    v75._object = v73;
    String.append(_:)(v75);
    v77 = v95;
    v76 = v96;
  }

  else
  {
    v76 = 0x800000010134F6E0;
    v77 = 0xD00000000000001CLL;
  }

  v80 = *(v26 + 104);
  v81 = v93;
  v82 = v94;
  v90 = enum case for LocalizationUtility.Table.default(_:);
  v89 = v80;
  v80(v94);
  v46 = static LocalizationUtility.localizedString(key:table:)();
  v45 = v83;

  v88 = *(v26 + 8);
  v88(v82, v81);
  if (v46 != v77 || v45 != v76)
  {
    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v84)
    {
      goto LABEL_29;
    }

    v48 = type metadata accessor for AccessoryMetadata;
    v47 = v91;
LABEL_9:
    sub_10028602C(v47, v48);
    v26 = v92;
    v27 = v94;
    goto LABEL_10;
  }

LABEL_29:

  v85 = v93;
  v27 = v94;
  v89(v94, v90, v93);
  v46 = static LocalizationUtility.localizedString(key:table:)();
  v45 = v86;
  v88(v27, v85);
  sub_10028602C(v91, type metadata accessor for AccessoryMetadata);
  v26 = v92;
LABEL_10:
  v49 = v21 + v23[12];
  v25 = *(v49 + 16);
  if (v25)
  {
    v28 = *(v49 + 8);
    v29 = *v49;
    v30 = v93;
    if (!v45)
    {
LABEL_14:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_101385D80;
      v61 = sub_100EB3708(v29, v28, v25);
      v62 = [v61 description];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_1010E09D0(v63, v65, 0);
      v68 = v67;

      *(v60 + 56) = &type metadata for String;
      *(v60 + 64) = sub_100008C00();
      *(v60 + 32) = v66;
      *(v60 + 40) = v68;
      goto LABEL_23;
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    v51 = sub_100EB3708(v29, v28, v25);
    v52 = [v51 description];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = sub_1010E09D0(v53, v55, 0);
    v58 = v57;

    *(v50 + 56) = &type metadata for String;
    v59 = sub_100008C00();
    *(v50 + 32) = v56;
    *(v50 + 40) = v58;
    *(v50 + 96) = &type metadata for String;
    *(v50 + 104) = v59;
    *(v50 + 64) = v59;
    *(v50 + 72) = v46;
    *(v50 + 80) = v45;
  }

  else
  {
    v30 = v93;
    if (v45)
    {
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_101385D80;
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = sub_100008C00();
      *(v69 + 32) = v46;
      *(v69 + 40) = v45;
    }
  }

LABEL_23:
  (*(v26 + 104))(v27, enum case for LocalizationUtility.Table.default(_:), v30);
  static LocalizationUtility.localizedString(key:table:)();

  (*(v26 + 8))(v27, v30);
  v78 = String.init(format:arguments:)();

  return v78;
}

uint64_t sub_100285338()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v81[-v3];
  v5 = type metadata accessor for AccessoryMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v81[-v12];
  v14 = type metadata accessor for AccessoryProductInfo();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = type metadata accessor for LocalizationUtility.Table();
  v19 = *(v87 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v87);
  v86 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = v0 + *(type metadata accessor for UnwantedTrackingUserNotification() + 20);
  v23 = type metadata accessor for WildModeAssociationRecord(0);
  v24 = *(v22 + v23[13]);
  if (v24 == 3)
  {
    v84 = v9;
    v85 = v19;
    v27 = v23;
    sub_1000D2A70(v22 + v23[15], v13, &qword_101697268, &qword_101394FE0);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10000B3A8(v13, &qword_101697268, &qword_101394FE0);
      sub_1000D2A70(v22 + v27[14], v4, &qword_1016A62A0, &unk_101396E10);
      v28 = v5;
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_10000B3A8(v4, &qword_1016A62A0, &unk_101396E10);
        v30 = v85;
        v29 = v86;
        v31 = v87;
        (v85[13])(v86, enum case for LocalizationUtility.Table.default(_:), v87);
        v32 = static LocalizationUtility.localizedString(key:table:)();
        v30[1](v29, v31);
      }

      else
      {
        v55 = v84;
        sub_100285FC4(v4, v84, type metadata accessor for AccessoryMetadata);
        v56 = sub_100302B50();
        v58 = v85;
        v57 = v86;
        v59 = v87;
        if (v56)
        {
          v60 = (v55 + *(v28 + 28));
          v61 = v60[1];
          if (v61)
          {
            v62 = *v60;
            v88 = 0;
            v89 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            v88 = 0xD00000000000001DLL;
            v89 = 0x800000010134F730;
            v63._countAndFlagsBits = v62;
            v63._object = v61;
            String.append(_:)(v63);
            v65 = v88;
            v64 = v89;
          }

          else
          {
            v64 = 0x800000010134F6E0;
            v65 = 0xD00000000000001CLL;
          }

          v66 = v58[13];
          v82 = enum case for LocalizationUtility.Table.default(_:);
          v83 = v66;
          v66(v57);
          v67 = static LocalizationUtility.localizedString(key:table:)();
          v69 = v68;
          v70 = v58[1];
          v70(v57, v59);
          if (v67 == v65 && v69 == v64)
          {
          }

          else
          {
            v71 = v70;
            v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v72 & 1) == 0)
            {

              v83(v57, v82, v59);
              static LocalizationUtility.localizedString(key:table:)();
              v71(v57, v59);
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_101385D80;
              *(v80 + 56) = &type metadata for String;
              *(v80 + 64) = sub_100008C00();
              *(v80 + 32) = v67;
              *(v80 + 40) = v69;
              v32 = String.init(format:_:)();

              sub_10028602C(v84, type metadata accessor for AccessoryMetadata);
              return v32;
            }

            v70 = v71;
          }

          if (qword_101694910 != -1)
          {
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          sub_1000076D4(v73, qword_10177B2D0);

          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v85 = v70;
            v77 = v76;
            v78 = swift_slowAlloc();
            v88 = v78;
            *v77 = 136315138;
            v79 = sub_1000136BC(v65, v64, &v88);

            *(v77 + 4) = v79;
            _os_log_impl(&_mh_execute_header, v74, v75, "No fallback translation for key: %s", v77, 0xCu);
            sub_100007BAC(v78);

            v70 = v85;
          }

          else
          {
          }

          v55 = v84;
          v83(v57, v82, v59);
          v32 = static LocalizationUtility.localizedString(key:table:)();
          v70(v57, v59);
        }

        else
        {
          (v85[13])(v86, enum case for LocalizationUtility.Table.default(_:), v87);
          v32 = static LocalizationUtility.localizedString(key:table:)();
          (v58[1])(v57, v59);
        }

        sub_10028602C(v55, type metadata accessor for AccessoryMetadata);
      }
    }

    else
    {
      sub_100285FC4(v13, v18, type metadata accessor for AccessoryProductInfo);
      v48 = v85;
      v47 = v86;
      v49 = v87;
      (v85[13])(v86, enum case for LocalizationUtility.Table.default(_:), v87);
      static LocalizationUtility.localizedString(key:table:)();
      v48[1](v47, v49);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_101385D80;
      v51 = &v18[*(v14 + 52)];
      v53 = *v51;
      v52 = v51[1];
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_100008C00();
      *(v50 + 32) = v53;
      *(v50 + 40) = v52;

      v32 = String.init(format:_:)();

      sub_10028602C(v18, type metadata accessor for AccessoryProductInfo);
    }
  }

  else
  {
    if (v24 == 2)
    {
      v25 = v86;
      v26 = v87;
      (*(v19 + 104))(v86, enum case for LocalizationUtility.Table.default(_:), v87);
LABEL_11:
      v32 = static LocalizationUtility.localizedString(key:table:)();
      (*(v19 + 8))(v25, v26);
      return v32;
    }

    v33 = (v22 + v23[12]);
    v34 = v33[2];
    v25 = v86;
    if (!v34)
    {
      v26 = v87;
      (*(v19 + 104))(v86, enum case for LocalizationUtility.Table.default(_:), v87);
      goto LABEL_11;
    }

    v35 = *v33;
    v36 = v33[1];
    v37 = v87;
    (*(v19 + 104))(v86, enum case for LocalizationUtility.Table.default(_:), v87);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v19 + 8))(v25, v37);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_101385D80;
    v39 = sub_100EB3708(v35, v36, v34);
    v40 = [v39 description];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_1010E09D0(v41, v43, 0);
    v46 = v45;

    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_100008C00();
    *(v38 + 32) = v44;
    *(v38 + 40) = v46;
    v32 = String.init(format:_:)();
  }

  return v32;
}

uint64_t sub_100285EC4(uint64_t a1)
{
  _StringGuts.grow(_:)(40);

  v3 = v1 + *(a1 + 20);
  v4._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v4);

  URL.init(string:)();
}

uint64_t type metadata accessor for UnwantedTrackingUserNotification()
{
  result = qword_10169C278;
  if (!qword_10169C278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100285FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028602C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002860B4()
{
  result = type metadata accessor for WildModeAssociationRecord(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100286138(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100286150(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 8))
  {
    return (*a1 + 2147483639);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002861A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_100286208(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0xD000000000000012;
      }

      if (a1 == 1)
      {
        return 0x616E7265746E692ELL;
      }

LABEL_20:
      strcpy(v3, ".underlying(");
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v2._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v2);

      return v3[0];
    }

    if (a1 == 2)
    {
      return 0x74756F656D69742ELL;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0xD00000000000001CLL;
        case 7:
          return 0x6E776F6E6B6E752ELL;
        case 8:
          return 0xD000000000000018;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

unint64_t sub_100286404(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x654C636341616162;
      break;
    case 3:
      result = 0x6E49636341616162;
      break;
    case 4:
      result = 1684628325;
      break;
    case 5:
      result = 0x644970696863;
      break;
    case 6:
      result = 0x754E6C6169726573;
      break;
    case 7:
    case 8:
      result = 0x726F737365636361;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x69634572656E776FLL;
      break;
    case 12:
      result = 0x69684372656E776FLL;
      break;
    case 13:
      result = 0x7372655663657073;
      break;
    case 14:
      result = 0x657261776D726966;
      break;
    case 15:
      result = 0x49746375646F7270;
      break;
    case 16:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100286604(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C2C0, &qword_101397510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100288DC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v39 = *v3;
  v30 = *v3;
  v29 = 0;
  sub_1001022C4(&v39, v28);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v30, *(&v30 + 1));
  if (!v2)
  {
    v11 = *(v3 + 2);
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = *(v3 + 24);
    v30 = *(v3 + 24);
    v29 = 2;
    sub_1001022C4(&v38, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v37 = *(v3 + 40);
    v30 = *(v3 + 40);
    v29 = 3;
    sub_1001022C4(&v37, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v36 = *(v3 + 56);
    v30 = *(v3 + 56);
    v29 = 4;
    sub_1001022C4(&v36, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v35 = *(v3 + 72);
    v30 = *(v3 + 72);
    v29 = 5;
    sub_1001022C4(&v35, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v34 = *(v3 + 88);
    v30 = *(v3 + 88);
    v29 = 6;
    sub_1001022C4(&v34, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v33 = *(v3 + 104);
    v30 = *(v3 + 104);
    v29 = 7;
    sub_1001022C4(&v33, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v32 = *(v3 + 120);
    v30 = *(v3 + 120);
    v29 = 8;
    sub_1001022C4(&v32, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v30 = *(v3 + 136);
    v31 = v30;
    v29 = 9;
    sub_1000D2A70(&v31, v28, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v30, *(&v30 + 1));
    v13 = *(v3 + 19);
    v14 = *(v3 + 20);
    LOBYTE(v30) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 21);
    v16 = *(v3 + 22);
    LOBYTE(v30) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 23);
    v18 = *(v3 + 24);
    LOBYTE(v30) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 25);
    v20 = *(v3 + 26);
    LOBYTE(v30) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 27);
    v22 = *(v3 + 28);
    LOBYTE(v30) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 29);
    v24 = *(v3 + 30);
    LOBYTE(v30) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 31);
    v26 = *(v3 + 32);
    LOBYTE(v30) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100286BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100289070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100286C0C(uint64_t a1)
{
  v2 = sub_100288DC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100286C48(uint64_t a1)
{
  v2 = sub_100288DC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100286CD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1[8];
  v50 = v62;
  v61 = a1[11];
  sub_1001022C4(&v62, &v60);
  sub_1000E0A3C();
  v8 = DataProtocol.intValue.getter();
  v9 = a1[2];
  v61 = a1[3];
  v10 = a1[4];
  v59 = a1[5];
  v60 = v10;
  v48 = v10;
  v49 = v61;
  v11 = a1[6];
  v57 = a1[7];
  v58 = v11;
  v46 = a1[6];
  v47 = v59;
  v44 = a1[10];
  v45 = v57;
  v55 = a1[12];
  v56 = v44;
  v42 = v9;
  v43 = v55;
  v54 = v9;
  v12 = *a1;
  v52 = a1[1];
  v53 = v12;
  v40 = v52;
  v41 = v12;
  v13 = *(a1 + 33);
  v51 = a1[15];
  if (v13 >> 60 == 15)
  {
    sub_1001022C4(&v61, v39);
    sub_1001022C4(&v60, v39);
    sub_1001022C4(&v59, v39);
    sub_1001022C4(&v58, v39);
    sub_1001022C4(&v57, v39);
    sub_1001022C4(&v56, v39);
    sub_1000D2A70(&v55, v39, &qword_1016A40E0, &unk_101396F30);
    sub_1000D2A70(&v54, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v53, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v51, v39, &qword_1016A0AC0, &unk_1013926A0);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_15:
    v33 = v49;
    *a4 = v50;
    *(a4 + 16) = v8;
    *(a4 + 24) = v33;
    v34 = v47;
    *(a4 + 40) = v48;
    *(a4 + 56) = v34;
    v35 = v45;
    *(a4 + 72) = v46;
    *(a4 + 88) = v35;
    *(a4 + 104) = a2;
    *(a4 + 112) = a3;
    v36 = v43;
    *(a4 + 120) = v44;
    *(a4 + 136) = v36;
    v37 = v41;
    *(a4 + 152) = v42;
    *(a4 + 168) = v37;
    *(a4 + 184) = v40;
    *(a4 + 200) = 0x302E302E31;
    *(a4 + 208) = 0xE500000000000000;
    *(a4 + 216) = a1[15];
    *(a4 + 232) = v15;
    *(a4 + 240) = v16;
    *(a4 + 248) = v17;
    *(a4 + 256) = v18;
    return result;
  }

  v38 = a3;
  v19 = *(a1 + 32);
  sub_1001022C4(&v61, v39);
  sub_1001022C4(&v60, v39);
  sub_1001022C4(&v59, v39);
  sub_1001022C4(&v58, v39);
  sub_1001022C4(&v57, v39);
  sub_1001022C4(&v56, v39);
  sub_1000D2A70(&v55, v39, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v54, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v53, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v51, v39, &qword_1016A0AC0, &unk_1013926A0);
  v20 = sub_100313B54(v19, v13);
  v22 = v21;
  v15 = Data.hexString.getter();
  v16 = v23;
  result = sub_100016590(v20, v22);
  v24 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v24 != 2)
    {
LABEL_14:
      v29 = Data.subdata(in:)();
      v31 = v30;
      v17 = Data.hexString.getter();
      v18 = v32;
      result = sub_100016590(v29, v31);
      a3 = v38;
      goto LABEL_15;
    }

    v26 = *(v19 + 16);
    v25 = *(v19 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (!v27)
    {
LABEL_12:
      if (v28 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v24)
  {
    goto LABEL_14;
  }

  LODWORD(v28) = HIDWORD(v19) - v19;
  if (!__OFSUB__(HIDWORD(v19), v19))
  {
    v28 = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10028709C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_100771D58(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_1010056F4();
      }
    }

    else
    {
      v34 = v56;
      sub_100FE6F1C(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_100771D58(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1000128F8();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10028733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[312] = a4;
  v4[311] = a3;
  v4[310] = a2;
  v4[309] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[313] = v5;
  v6 = *(v5 - 8);
  v4[314] = v6;
  v7 = *(v6 + 64) + 15;
  v4[315] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[316] = v8;
  v9 = *(v8 - 8);
  v4[317] = v9;
  v10 = *(v9 + 64) + 15;
  v4[318] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[319] = v11;
  v12 = *(v11 - 8);
  v4[320] = v12;
  v13 = *(v12 + 64) + 15;
  v4[321] = swift_task_alloc();

  return _swift_task_switch(sub_1002874C0, 0, 0);
}

void sub_1002874C0()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v0[321];
  v7 = v0[320];
  v8 = v0[319];
  v9 = v0[318];
  v52 = v0[317];
  v53 = v0[316];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  v0[307] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[308] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v52 + 8))(v9, v53);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  v0[322] = v34;
  v41 = v0[311];
  v42 = v0[310];
  v43 = v0[309];
  sub_100164F7C(v43, (v0 + 2));
  sub_100017D5C(v42, v41);
  sub_100286CD8(v43, v42, v41, (v0 + 36));
  sub_100165224(v43);
  v44 = type metadata accessor for JSONEncoder();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  memcpy(v0 + 69, v0 + 36, 0x108uLL);
  sub_100288BB0();
  v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[323] = 0;
  v0[324] = v47;
  v0[325] = v48;
  v49 = v47;
  v50 = v48;

  sub_100017D5C(v49, v50);
  v51 = swift_task_alloc();
  v0[326] = v51;
  *v51 = v0;
  v51[1] = sub_100287C2C;

  sub_100E9EEAC();
}

uint64_t sub_100287C2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2608);
  v6 = *v2;
  *(v3 + 2616) = a1;
  *(v3 + 2624) = a2;

  return _swift_task_switch(sub_100287D30, 0, 0);
}

uint64_t sub_100287D30()
{
  v1 = *(v0 + 2624);
  v2 = *(v0 + 2616);
  v3 = *(v0 + 2584);
  v4 = *(v0 + 2520);
  v5 = *(v0 + 2512);
  v6 = *(v0 + 2504);
  *(v0 + 2440) = v2;
  *(v0 + 2448) = v1;
  *(v0 + 2424) = &type metadata for Data;
  *(v0 + 2432) = &protocol witness table for Data;
  *(v0 + 2400) = *(v0 + 2592);
  v7 = sub_1000035D0((v0 + 2400), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2400));
  *(v0 + 2632) = *(v0 + 2440);
  *(v0 + 2640) = *(v0 + 2448);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 2648) = v10;
  *(v0 + 2656) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 2664) = v13;
  *v13 = v0;
  v13[1] = sub_100287EE8;
  v14 = *(v0 + 2496);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100287EE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2664);
  v6 = *v2;
  *(*v2 + 2672) = v1;

  if (v1)
  {
    v7 = sub_100288570;
  }

  else
  {
    v8 = v4[332];
    v9 = v4[331];
    v4[335] = a1;
    sub_100016590(v9, v8);
    v7 = sub_10028801C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10028801C()
{
  v56 = v0;
  v1 = v0[335];
  v2 = v0[334];
  v3 = v0[330];
  v4 = v0[329];
  v5 = v0[322];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v55);

  sub_100016590(v4, v3);
  v7 = v55[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v52 = v0;
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C448);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Pairing lock header:", v11, 2u);
  }

  v12 = v7 + 64;
  v13 = -1;
  v14 = -1 << *(v7 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v7 + 64);
  v0 = ((63 - v14) >> 6);

  v16 = 0;
  v53 = v7;
  if (v15)
  {
    while (2)
    {
      v17 = v16;
LABEL_13:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = (v17 << 10) | (16 * v18);
      v20 = (*(v7 + 48) + v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(v7 + 56) + v19);
      v24 = v23[1];
      v54 = *v23;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v27 = 136315394;
        v28 = sub_1000136BC(v21, v22, v55);

        *(v27 + 4) = v28;
        *(v27 + 12) = 2080;
        v29 = sub_1000136BC(v54, v24, v55);

        *(v27 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: %s", v27, 0x16u);
        swift_arrayDestroy();

        v7 = v53;

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      else
      {

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v17 >= v0)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v16;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  sub_100288C04((v52 + 36), (v52 + 201));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  sub_100288C3C((v52 + 36));
  v32 = os_log_type_enabled(v30, v31);
  v33 = v52[312];
  v34 = v52[311];
  v35 = v52[310];
  v36 = v52[309];
  if (v32)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55[0] = v38;
    *v37 = 136315138;
    memcpy(v52 + 234, v52 + 36, 0x108uLL);
    sub_100288C04((v52 + 36), (v52 + 267));
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, v55);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Pairing ack body %s", v37, 0xCu);
    sub_100007BAC(v38);
    v7 = v53;

    sub_100288C3C((v52 + 36));

    sub_100016590(v35, v34);
    sub_100165224(v36);
  }

  else
  {
    v42 = v52[312];

    sub_100016590(v35, v34);
    sub_100165224(v36);

    sub_100288C3C((v52 + 36));
  }

  v43 = v52[325];
  v44 = v52[324];

  sub_100017D5C(v44, v43);

  sub_100016590(v44, v43);
  v45 = v52[325];
  v46 = v52[324];
  v47 = v52[321];
  v48 = v52[318];
  v49 = v52[315];

  v50 = v52[1];

  return v50(v7, v46, v45);
}

uint64_t sub_100288570()
{
  v60 = v0;
  v1 = v0[330];
  v2 = v0[329];
  sub_100016590(v0[331], v0[332]);
  sub_100016590(v2, v1);
  v3 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v4 = v0[334];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C448);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[334];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to generate attestation header: %{public}@.", v10, 0xCu);
    sub_100288C6C(v11);
  }

  else
  {
  }

  v13 = v0[322];
  if (v3[28] != -1)
  {
    swift_once();
  }

  v56 = v0;
  sub_1000076D4(v5, qword_10177C448);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Pairing lock header:", v16, 2u);
  }

  v3 = (v13 + 64);
  v17 = -1;
  v18 = -1 << *(v13 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v13 + 64);
  v0 = ((63 - v18) >> 6);

  v20 = 0;
  v57 = v13;
  if (v19)
  {
    while (2)
    {
      v21 = v20;
LABEL_18:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = (v21 << 10) | (16 * v22);
      v24 = (*(v13 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v13 + 56) + v23);
      v28 = v27[1];
      v58 = *v27;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v31 = 136315394;
        v32 = sub_1000136BC(v25, v26, &v59);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        v33 = sub_1000136BC(v58, v28, &v59);

        *(v31 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s: %s", v31, 0x16u);
        swift_arrayDestroy();

        v13 = v57;

        v20 = v21;
        if (v19)
        {
          continue;
        }
      }

      else
      {

        v20 = v21;
        if (v19)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v21 >= v0)
    {
      break;
    }

    v19 = v3[v21];
    ++v20;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  sub_100288C04((v56 + 36), (v56 + 201));
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  sub_100288C3C((v56 + 36));
  v36 = os_log_type_enabled(v34, v35);
  v37 = v56[312];
  v38 = v56[311];
  v39 = v56[310];
  v40 = v56[309];
  if (v36)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59 = v42;
    *v41 = 136315138;
    memcpy(v56 + 234, v56 + 36, 0x108uLL);
    sub_100288C04((v56 + 36), (v56 + 267));
    v43 = String.init<A>(describing:)();
    v45 = sub_1000136BC(v43, v44, &v59);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v34, v35, "Pairing ack body %s", v41, 0xCu);
    sub_100007BAC(v42);
    v13 = v57;

    sub_100288C3C((v56 + 36));

    sub_100016590(v39, v38);
    sub_100165224(v40);
  }

  else
  {
    v46 = v56[312];

    sub_100016590(v39, v38);
    sub_100165224(v40);

    sub_100288C3C((v56 + 36));
  }

  v47 = v56[325];
  v48 = v56[324];

  sub_100017D5C(v48, v47);

  sub_100016590(v48, v47);
  v49 = v56[325];
  v50 = v56[324];
  v51 = v56[321];
  v52 = v56[318];
  v53 = v56[315];

  v54 = v56[1];

  return v54(v13, v50, v49);
}

unint64_t sub_100288BB0()
{
  result = qword_10169C2B8;
  if (!qword_10169C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2B8);
  }

  return result;
}

uint64_t sub_100288C6C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100288CDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100288D24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100288DC4()
{
  result = qword_10169C2C8;
  if (!qword_10169C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsLEPairingLockAckRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsLEPairingLockAckRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100288F6C()
{
  result = qword_10169C2D0;
  if (!qword_10169C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2D0);
  }

  return result;
}

unint64_t sub_100288FC4()
{
  result = qword_10169C2D8;
  if (!qword_10169C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2D8);
  }

  return result;
}

unint64_t sub_10028901C()
{
  result = qword_10169C2E0;
  if (!qword_10169C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2E0);
  }

  return result;
}

uint64_t sub_100289070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C636341616162 && a2 == 0xEE00747265436661 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49636341616162 && a2 == 0xEC00000031414374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEF74736574744179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

unint64_t sub_1002895EC(uint64_t a1)
{
  *(a1 + 8) = sub_10028961C();
  result = sub_100289670();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10028961C()
{
  result = qword_10169C2E8;
  if (!qword_10169C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2E8);
  }

  return result;
}

unint64_t sub_100289670()
{
  result = qword_10169C2F0;
  if (!qword_10169C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2F0);
  }

  return result;
}

uint64_t sub_1002896C4(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v7, v7[3]);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(a2, a3);
  return sub_100007BAC(v7);
}

uint64_t sub_100289784@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v11, v11[3]);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v11);
    return sub_100007BAC(a1);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_100007BAC(v11);
    result = sub_100007BAC(a1);
    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_1002898F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002899C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100289AB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  type metadata accessor for UUID();
  if (v7 <= 0x3F)
  {
    sub_100289B54(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100289B54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100289BA8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C428, &unk_101397900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028A9A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_10028AB88(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for LegacySelfBeaconingKeyEnvelope(0) + 20));
    v12[15] = 1;
    sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
    sub_10028AA50(&qword_10169C440, &qword_10169C448);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100289DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for UUID();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169C478, &qword_101397920);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for LegacySelfBeaconingKeyEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028A9A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_10028AB88(&qword_101698300, &type metadata accessor for UUID);
  v19 = v30;
  v20 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
  v32 = 1;
  sub_10028AA50(&qword_10169C480, &qword_10169C488);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_10028ABD0(v22, v26, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
  sub_100007BAC(a1);
  return sub_10028AC38(v22, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
}

uint64_t sub_10028A18C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C450, &unk_101397910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028A9FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_10028AB88(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for SelfBeaconingKeyEnvelope(0) + 20));
    v12[15] = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_10028AAEC(&qword_10169C468, &qword_10169C470);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10028A3A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for UUID();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169C490, &qword_101397928);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SelfBeaconingKeyEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028A9FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_10028AB88(&qword_101698300, &type metadata accessor for UUID);
  v19 = v30;
  v20 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v32 = 1;
  sub_10028AAEC(&qword_10169C498, &qword_10169C4A0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_10028ABD0(v22, v26, type metadata accessor for SelfBeaconingKeyEnvelope);
  sub_100007BAC(a1);
  return sub_10028AC38(v22, type metadata accessor for SelfBeaconingKeyEnvelope);
}

uint64_t sub_10028A770(uint64_t a1)
{
  v2 = sub_10028A9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028A7AC(uint64_t a1)
{
  v2 = sub_10028A9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028A818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10028A900(uint64_t a1)
{
  v2 = sub_10028A9FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028A93C(uint64_t a1)
{
  v2 = sub_10028A9FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10028A9A8()
{
  result = qword_10169C430;
  if (!qword_10169C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C430);
  }

  return result;
}

unint64_t sub_10028A9FC()
{
  result = qword_10169C458;
  if (!qword_10169C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C458);
  }

  return result;
}

uint64_t sub_10028AA50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C438, &qword_10140A060);
    sub_10028AB88(a2, type metadata accessor for CryptoKeys);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028AAEC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_10028AB88(a2, type metadata accessor for FamilyCryptoKeysV1);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028AB88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10028ABD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028AC38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10028ACBC()
{
  result = qword_10169C4A8;
  if (!qword_10169C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4A8);
  }

  return result;
}

unint64_t sub_10028AD14()
{
  result = qword_10169C4B0;
  if (!qword_10169C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4B0);
  }

  return result;
}

unint64_t sub_10028AD6C()
{
  result = qword_10169C4B8;
  if (!qword_10169C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4B8);
  }

  return result;
}

unint64_t sub_10028ADC4()
{
  result = qword_10169C4C0;
  if (!qword_10169C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4C0);
  }

  return result;
}

unint64_t sub_10028AE1C()
{
  result = qword_10169C4C8;
  if (!qword_10169C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4C8);
  }

  return result;
}

unint64_t sub_10028AE74()
{
  result = qword_10169C4D0;
  if (!qword_10169C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C4D0);
  }

  return result;
}

void sub_10028AEE0()
{
  sub_1002359B8(319, &qword_10169C540);
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169C548);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_10028B040(319, &qword_10169C550, type metadata accessor for ObservedAdvertisement.Location);
        if (v3 <= 0x3F)
        {
          sub_10028B040(319, &unk_10169C558, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10028B040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10028B094()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10028B118()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10028B19C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6449766461;
    v7 = 0x7369747265766461;
    v8 = 0x737574617473;
    if (a1 != 3)
    {
      v8 = 0x79654B6172747865;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656372756F73;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E6F697461636F6CLL;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x68736F507369;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 1953393000;
    v4 = 1769173874;
    if (a1 != 6)
    {
      v4 = 0x657461446E616373;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10028B2F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C748, &qword_101397F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028E754();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v24) = *(v3 + 9);
    v26 = 1;
    sub_10028E8F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v24 = v3[2];
    v25 = v13;
    v26 = 2;
    sub_100029784(v24, v13);
    sub_10028E94C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001E524(v24, v25);
    LOBYTE(v24) = *(v3 + 32);
    v26 = 3;
    sub_10028E9A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v24) = *(v3 + 33);
    v26 = 4;
    sub_10028E9F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 34);
    v15 = *(v3 + 35);
    LOBYTE(v24) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 9);
    LOBYTE(v24) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = type metadata accessor for ObservedAdvertisement(0);
    v18 = v17[11];
    LOBYTE(v24) = 7;
    type metadata accessor for Date();
    sub_100019F1C(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v17[12];
    LOBYTE(v24) = 8;
    type metadata accessor for ObservedAdvertisement.Location(0);
    sub_100019F1C(&qword_10169C770, type metadata accessor for ObservedAdvertisement.Location);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v17[13];
    LOBYTE(v24) = 9;
    type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    sub_100019F1C(&qword_10169C778, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v3 + v17[14]);
    LOBYTE(v24) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10028B734()
{
  v1 = v0;
  v2 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11);
  }

  Hasher._combine(_:)(*(v0 + 9));
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  Hasher._combine(_:)((v13 >> 61) & 1);
  sub_100017D5C(v12, v13 & 0xDFFFFFFFFFFFFFFFLL);
  Data.hash(into:)();
  sub_10001E524(v12, v13);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 33));
  if (*(v0 + 35))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 34);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(*(v0 + 36));
  v15 = type metadata accessor for ObservedAdvertisement(0);
  v16 = v15[11];
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v17 = v1 + v15[12];
  sub_100EF2240();
  sub_1000D2A70(v1 + v15[13], v10, &qword_101699DB0, &unk_101393100);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_10003461C(v10, v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    Hasher._combine(_:)(1u);
    type metadata accessor for UUID();
    sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v6[*(v2 + 20)];
    v6[*(v2 + 20)];
    String.hash(into:)();

    Hasher._combine(_:)(*&v6[*(v2 + 24)]);
    sub_100034494(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  Hasher._combine(_:)(*(v1 + v15[14]));
}

uint64_t sub_10028BAD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v33 = &v31 - v5;
  v6 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for Date();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&qword_10169C708, &qword_101397F78);
  v35 = *(v37 - 8);
  v14 = *(v35 + 64);
  __chkstk_darwin(v37);
  v16 = &v31 - v15;
  v17 = type metadata accessor for ObservedAdvertisement(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  v40 = a1;
  sub_1000035D0(a1, v21);
  sub_10028E754();
  v38 = v16;
  v23 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_100007BAC(v40);
  }

  v24 = v13;
  v26 = v35;
  v25 = v36;
  v32 = v17;
  v39 = v10;
  LOBYTE(v41) = 0;
  *v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20[8] = v27 & 1;
  v42 = 1;
  sub_10028E7A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20[9] = v41;
  v42 = 2;
  sub_10028E7FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v20 + 1) = v41;
  v42 = 3;
  sub_10028E850();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20[32] = v41;
  v42 = 4;
  sub_10028E8A4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20[33] = v41;
  LOBYTE(v41) = 5;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20[34] = v28;
  v20[35] = HIBYTE(v28) & 1;
  LOBYTE(v41) = 6;
  *(v20 + 9) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v41) = 7;
  sub_100019F1C(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 32))(&v20[v32[11]], v24, v39);
  type metadata accessor for ObservedAdvertisement.Location(0);
  LOBYTE(v41) = 8;
  sub_100019F1C(&qword_10169C738, type metadata accessor for ObservedAdvertisement.Location);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v9, &v20[v32[12]], &qword_1016AA430, &unk_101392650);
  type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  LOBYTE(v41) = 9;
  sub_100019F1C(&qword_10169C740, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v33, &v20[v32[13]], &qword_101699DB0, &unk_101393100);
  LOBYTE(v41) = 10;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v26 + 8))(v38, v37);
  v20[v32[14]] = v29 & 1;
  sub_10001BAD0(v20, v25, type metadata accessor for ObservedAdvertisement);
  sub_100007BAC(v40);
  return sub_100034494(v20, type metadata accessor for ObservedAdvertisement);
}

uint64_t sub_10028C2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028EEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10028C2D0(uint64_t a1)
{
  v2 = sub_10028E754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028C30C(uint64_t a1)
{
  v2 = sub_10028E754();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10028C37C()
{
  Hasher.init(_seed:)();
  sub_10028B734();
  return Hasher._finalize()();
}

Swift::Int sub_10028C3C0()
{
  Hasher.init(_seed:)();
  sub_10028B734();
  return Hasher._finalize()();
}

uint64_t sub_10028C400(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C7C8, &qword_101397FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028EB44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v16[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(type metadata accessor for ObservedAdvertisement.Location(0) + 28);
    v16[12] = 3;
    type metadata accessor for Date();
    sub_100019F1C(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10028C63C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(type metadata accessor for ObservedAdvertisement.Location(0) + 28);
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10028C714()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(type metadata accessor for ObservedAdvertisement.Location(0) + 28);
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10028C80C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for Date();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169C7B8, &qword_101397FA8);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ObservedAdvertisement.Location(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v33 = a1;
  sub_1000035D0(a1, v16);
  sub_10028EB44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = v7;
    v37 = 0;
    v19 = v31;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v15 = v20;
    v36 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v19;
    v15[1] = v22;
    v35 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v15;
    v15[2] = v25;
    v34 = 3;
    sub_100019F1C(&qword_101697F40, &type metadata accessor for Date);
    v26 = v18;
    v27 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v11, v27);
    (*(v29 + 32))(v24 + *(v12 + 28), v26, v4);
    sub_10003461C(v24, v30, type metadata accessor for ObservedAdvertisement.Location);
  }

  return sub_100007BAC(v33);
}

uint64_t sub_10028CC2C()
{
  v1 = 0x6E776F6E6B6E752ELL;
  v2 = 0x6353686365656C2ELL;
  if (*v0 != 2)
  {
    v2 = 0x6E7363612ELL;
  }

  if (*v0)
  {
    v1 = 0x747365767261682ELL;
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

unint64_t sub_10028CCB4()
{
  v1 = 0x656475746974616CLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
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

uint64_t sub_10028CD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028F25C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10028CD68(uint64_t a1)
{
  v2 = sub_10028EB44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028CDA4(uint64_t a1)
{
  v2 = sub_10028EB44();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10028CE18(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v2[1];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = v2[2];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(a2 + 28);
  type metadata accessor for Date();
  sub_100019F1C(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10028D1B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C7A8, &qword_101397FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028EA48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for UUID();
  sub_100019F1C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    v14[14] = *(v3 + *(v11 + 20));
    v14[13] = 1;
    sub_10028EAF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v11 + 24));
    v14[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10028D3B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169C790, &qword_101397F98);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10028EA48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v14;
  v17 = v23;
  v30 = 0;
  sub_100019F1C(&qword_101698300, &type metadata accessor for UUID);
  v18 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v26, v4);
  v28 = 1;
  sub_10028EA9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + *(v11 + 20)) = v29;
  v27 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v24 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v19;
  sub_10001BAD0(v16, v22, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(a1);
  return sub_100034494(v16, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
}

unint64_t sub_10028D760()
{
  v1 = 0x65636E6575716573;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10028D7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028F3D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10028D7E4(uint64_t a1)
{
  v2 = sub_10028EA48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028D820(uint64_t a1)
{
  v2 = sub_10028EA48();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10028D894(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  *(v1 + *(a1 + 20));
  *(v1 + *(a1 + 20));
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_10028D98C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  *(v2 + *(a2 + 20));
  *(v2 + *(a2 + 20));
  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int sub_10028DA6C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100019F1C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  *(v2 + *(a2 + 20));
  *(v2 + *(a2 + 20));
  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

unint64_t sub_10028DBF8()
{
  result = qword_10169C6F8;
  if (!qword_10169C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C6F8);
  }

  return result;
}

uint64_t sub_10028DC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_10028DCD8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x7261646E6F636553;
  }

  else
  {
    v8 = 0x7972616D697250;
  }

  if (v6)
  {
    v9 = 0xE900000000000079;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v7)
  {
    v10 = 0x7261646E6F636553;
  }

  else
  {
    v10 = 0x7972616D697250;
  }

  if (v7)
  {
    v11 = 0xE900000000000079;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

uint64_t sub_10028DDD0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v3 = *(type metadata accessor for ObservedAdvertisement.Location(0) + 28);

  return static Date.== infix(_:_:)();
}

uint64_t sub_10028DE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v76 = &v70 - v10;
  v77 = sub_1000BC4D4(&qword_10169C780, &qword_101397F88);
  v11 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v13 = &v70 - v12;
  v14 = type metadata accessor for ObservedAdvertisement.Location(0);
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  __chkstk_darwin(v14);
  v17 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = (&v70 - v20);
  v22 = sub_1000BC4D4(&qword_10169C788, &qword_101397F90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v70 - v24;
  v26 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v26 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_42;
    }
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
LABEL_42:
    v26 = 0;
    return v26 & 1;
  }

  v73 = v13;
  v74 = v7;
  v72 = v4;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v75 = a2;
  v30 = *(a2 + 16);
  v29 = *(a2 + 24);
  if ((v28 & 0x2000000000000000) != 0)
  {
    if ((v29 & 0x2000000000000000) == 0)
    {
      goto LABEL_42;
    }

    sub_100029784(v27, v28);
    sub_100029784(v30, v29);
    v32 = v28 & 0xDFFFFFFFFFFFFFFFLL;
    v34 = v29 & 0xDFFFFFFFFFFFFFFFLL;
    v31 = v27;
    v33 = v30;
  }

  else
  {
    if ((v29 & 0x2000000000000000) != 0)
    {
      goto LABEL_42;
    }

    sub_100029784(v27, v28);
    sub_100029784(v30, v29);
    v31 = v27;
    v32 = v28;
    v33 = v30;
    v34 = v29;
  }

  LODWORD(v71) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v32, v33, v34);
  sub_10001E524(v30, v29);
  sub_10001E524(v27, v28);
  if ((v71 & 1) == 0)
  {
    goto LABEL_42;
  }

  v35 = v75;
  if (*(a1 + 32) != *(v75 + 32) || *(a1 + 33) != *(v75 + 33))
  {
    goto LABEL_42;
  }

  v26 = *(v75 + 35);
  if ((*(a1 + 35) & 1) == 0)
  {
    if (*(a1 + 34) != *(v75 + 34))
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_42;
    }

LABEL_22:
    if (*(a1 + 36) != *(v75 + 36))
    {
      goto LABEL_42;
    }

    v36 = type metadata accessor for ObservedAdvertisement(0);
    v37 = *(v36 + 44);
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_42;
    }

    v71 = v36;
    v38 = *(v36 + 48);
    v39 = *(v22 + 48);
    sub_1000D2A70(a1 + v38, v25, &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v35 + v38, &v25[v39], &qword_1016AA430, &unk_101392650);
    v40 = *(v79 + 48);
    if (v40(v25, 1, v14) == 1)
    {
      v41 = v40(&v25[v39], 1, v14);
      v42 = v74;
      if (v41 == 1)
      {
        sub_10000B3A8(v25, &qword_1016AA430, &unk_101392650);
        goto LABEL_27;
      }
    }

    else
    {
      sub_1000D2A70(v25, v21, &qword_1016AA430, &unk_101392650);
      if (v40(&v25[v39], 1, v14) != 1)
      {
        sub_10003461C(&v25[v39], v17, type metadata accessor for ObservedAdvertisement.Location);
        if (*v21 == *v17 && v21[1] == v17[1] && v21[2] == v17[2])
        {
          v53 = *(v14 + 28);
          v54 = static Date.== infix(_:_:)();
          sub_100034494(v17, type metadata accessor for ObservedAdvertisement.Location);
          sub_100034494(v21, type metadata accessor for ObservedAdvertisement.Location);
          sub_10000B3A8(v25, &qword_1016AA430, &unk_101392650);
          v42 = v74;
          if ((v54 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_27:
          v43 = *(v71 + 52);
          v44 = *(v77 + 48);
          v45 = v73;
          sub_1000D2A70(a1 + v43, v73, &qword_101699DB0, &unk_101393100);
          v46 = v75 + v43;
          v47 = v45;
          sub_1000D2A70(v46, v45 + v44, &qword_101699DB0, &unk_101393100);
          v48 = *(v78 + 48);
          v49 = v45;
          v50 = v72;
          if (v48(v49, 1, v72) == 1)
          {
            if (v48(v47 + v44, 1, v50) == 1)
            {
              sub_10000B3A8(v47, &qword_101699DB0, &unk_101393100);
LABEL_30:
              v26 = *(a1 + *(v71 + 56)) ^ *(v75 + *(v71 + 56)) ^ 1;
              return v26 & 1;
            }

            goto LABEL_46;
          }

          v57 = v76;
          sub_1000D2A70(v47, v76, &qword_101699DB0, &unk_101393100);
          if (v48(v47 + v44, 1, v50) == 1)
          {
            sub_100034494(v57, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
LABEL_46:
            v51 = &qword_10169C780;
            v52 = &qword_101397F88;
            v55 = v47;
            goto LABEL_41;
          }

          sub_10003461C(v47 + v44, v42, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          if (static UUID.== infix(_:_:)())
          {
            v58 = *(v50 + 20);
            v59 = *(v57 + v58);
            v60 = *(v42 + v58);
            if (v59)
            {
              v61 = 0x7261646E6F636553;
            }

            else
            {
              v61 = 0x7972616D697250;
            }

            if (v59)
            {
              v62 = 0xE900000000000079;
            }

            else
            {
              v62 = 0xE700000000000000;
            }

            if (v60)
            {
              v63 = 0x7261646E6F636553;
            }

            else
            {
              v63 = 0x7972616D697250;
            }

            if (v60)
            {
              v64 = 0xE900000000000079;
            }

            else
            {
              v64 = 0xE700000000000000;
            }

            if (v61 == v63 && v62 == v64)
            {

              v57 = v76;
              goto LABEL_64;
            }

            v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v57 = v76;
            if (v65)
            {
LABEL_64:
              v66 = *(v50 + 24);
              v67 = v57;
              v68 = *(v57 + v66);
              v69 = *(v42 + v66);
              sub_100034494(v42, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
              sub_100034494(v67, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
              sub_10000B3A8(v47, &qword_101699DB0, &unk_101393100);
              if (v68 == v69)
              {
                goto LABEL_30;
              }

              goto LABEL_42;
            }
          }

          sub_100034494(v42, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          sub_100034494(v57, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          v51 = &qword_101699DB0;
          v52 = &unk_101393100;
          v55 = v47;
          goto LABEL_41;
        }

        sub_100034494(v17, type metadata accessor for ObservedAdvertisement.Location);
        sub_100034494(v21, type metadata accessor for ObservedAdvertisement.Location);
        v51 = &qword_1016AA430;
        v52 = &unk_101392650;
LABEL_40:
        v55 = v25;
LABEL_41:
        sub_10000B3A8(v55, v51, v52);
        goto LABEL_42;
      }

      sub_100034494(v21, type metadata accessor for ObservedAdvertisement.Location);
    }

    v51 = &qword_10169C788;
    v52 = &qword_101397F90;
    goto LABEL_40;
  }

  if (*(v75 + 35))
  {
    goto LABEL_22;
  }

  return v26 & 1;
}

unint64_t sub_10028E700()
{
  result = qword_10169C700;
  if (!qword_10169C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C700);
  }

  return result;
}

unint64_t sub_10028E754()
{
  result = qword_10169C710;
  if (!qword_10169C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C710);
  }

  return result;
}

unint64_t sub_10028E7A8()
{
  result = qword_10169C718;
  if (!qword_10169C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C718);
  }

  return result;
}

unint64_t sub_10028E7FC()
{
  result = qword_10169C720;
  if (!qword_10169C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C720);
  }

  return result;
}

unint64_t sub_10028E850()
{
  result = qword_10169C728;
  if (!qword_10169C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C728);
  }

  return result;
}

unint64_t sub_10028E8A4()
{
  result = qword_10169C730;
  if (!qword_10169C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C730);
  }

  return result;
}

unint64_t sub_10028E8F8()
{
  result = qword_10169C750;
  if (!qword_10169C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C750);
  }

  return result;
}

unint64_t sub_10028E94C()
{
  result = qword_10169C758;
  if (!qword_10169C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C758);
  }

  return result;
}

unint64_t sub_10028E9A0()
{
  result = qword_10169C760;
  if (!qword_10169C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C760);
  }

  return result;
}

unint64_t sub_10028E9F4()
{
  result = qword_10169C768;
  if (!qword_10169C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C768);
  }

  return result;
}

unint64_t sub_10028EA48()
{
  result = qword_10169C798;
  if (!qword_10169C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C798);
  }

  return result;
}

unint64_t sub_10028EA9C()
{
  result = qword_10169C7A0;
  if (!qword_10169C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7A0);
  }

  return result;
}

unint64_t sub_10028EAF0()
{
  result = qword_10169C7B0;
  if (!qword_10169C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7B0);
  }

  return result;
}

unint64_t sub_10028EB44()
{
  result = qword_10169C7C0;
  if (!qword_10169C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7C0);
  }

  return result;
}

unint64_t sub_10028EBCC()
{
  result = qword_10169C7D0;
  if (!qword_10169C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7D0);
  }

  return result;
}

unint64_t sub_10028EC24()
{
  result = qword_10169C7D8;
  if (!qword_10169C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7D8);
  }

  return result;
}

unint64_t sub_10028EC7C()
{
  result = qword_10169C7E0;
  if (!qword_10169C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7E0);
  }

  return result;
}

unint64_t sub_10028ECD4()
{
  result = qword_10169C7E8;
  if (!qword_10169C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7E8);
  }

  return result;
}

unint64_t sub_10028ED2C()
{
  result = qword_10169C7F0;
  if (!qword_10169C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7F0);
  }

  return result;
}

unint64_t sub_10028ED84()
{
  result = qword_10169C7F8;
  if (!qword_10169C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C7F8);
  }

  return result;
}

unint64_t sub_10028EDDC()
{
  result = qword_10169C800;
  if (!qword_10169C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C800);
  }

  return result;
}

unint64_t sub_10028EE34()
{
  result = qword_10169C808;
  if (!qword_10169C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C808);
  }

  return result;
}

unint64_t sub_10028EE8C()
{
  result = qword_10169C810;
  if (!qword_10169C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C810);
  }

  return result;
}

uint64_t sub_10028EEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449766461 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xED0000746E656D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79654B6172747865 && a2 == 0xEC00000073746942 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657461446E616373 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F9D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x68736F507369 && a2 == 0xE600000000000000)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_10028F25C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101347FC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_10028F3D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10028F4FC(void *a1, int a2)
{
  v47 = a2;
  v3 = sub_1000BC4D4(&qword_10169C898, &qword_101398428);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v36 - v5;
  v6 = sub_1000BC4D4(&qword_10169C8A0, &qword_101398430);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = &v36 - v8;
  v9 = sub_1000BC4D4(&qword_10169C8A8, &qword_101398438);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v36 = &v36 - v11;
  v12 = sub_1000BC4D4(&qword_10169C8B0, &qword_101398440);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_1000BC4D4(&qword_10169C8B8, &qword_101398448);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v48 = sub_1000BC4D4(&qword_10169C8C0, &qword_101398450);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100290828();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_100290978();
      v35 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_1002909CC();
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_100290924();
    v33 = v36;
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_1002908D0();
    v26 = v39;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_10029087C();
    v26 = v42;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

unint64_t sub_10028FA70()
{
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  else
  {
    v1 = 0xD000000000000018;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_10028FAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028FF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10028FB10(uint64_t a1)
{
  v2 = sub_100290828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FB4C(uint64_t a1)
{
  v2 = sub_100290828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FB88(uint64_t a1)
{
  v2 = sub_100290978();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FBC4(uint64_t a1)
{
  v2 = sub_100290978();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FC00(uint64_t a1)
{
  v2 = sub_1002908D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FC3C(uint64_t a1)
{
  v2 = sub_1002908D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FC78(uint64_t a1)
{
  v2 = sub_10029087C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FCB4(uint64_t a1)
{
  v2 = sub_10029087C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FCF0(uint64_t a1)
{
  v2 = sub_1002909CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FD2C(uint64_t a1)
{
  v2 = sub_1002909CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FD68(uint64_t a1)
{
  v2 = sub_100290924();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028FDA4(uint64_t a1)
{
  v2 = sub_100290924();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028FE00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002900C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10028FE4C()
{
  result = qword_10169C818;
  if (!qword_10169C818)
  {
    sub_1000BC580(&qword_10169C820, qword_101398348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C818);
  }

  return result;
}

unint64_t sub_10028FEB4()
{
  result = qword_10169C828;
  if (!qword_10169C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C828);
  }

  return result;
}

uint64_t sub_10028FF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000010134FA20 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FA40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FA60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FA80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010134FAA0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1002900C4(uint64_t *a1)
{
  v53 = sub_1000BC4D4(&qword_10169C830, &qword_1013983F0);
  v50 = *(v53 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v53);
  v55 = &v43 - v3;
  v4 = sub_1000BC4D4(&qword_10169C838, &qword_1013983F8);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v54 = &v43 - v6;
  v7 = sub_1000BC4D4(&qword_10169C840, &qword_101398400);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v56 = &v43 - v9;
  v10 = sub_1000BC4D4(&qword_10169C848, &qword_101398408);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = sub_1000BC4D4(&qword_10169C850, &qword_101398410);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v18 = sub_1000BC4D4(&qword_10169C858, &qword_101398418);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v57 = a1;
  sub_1000035D0(a1, v24);
  sub_100290828();
  v25 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_9;
  }

  v26 = v17;
  v44 = v14;
  v27 = v56;
  v58 = v19;
  v28 = v22;
  v29 = KeyedDecodingContainer.allKeys.getter();
  v30 = (2 * *(v29 + 16)) | 1;
  v59 = v29;
  v60 = v29 + 32;
  v61 = 0;
  v62 = v30;
  v31 = sub_1002E2778();
  if (v31 == 5 || v61 != v62 >> 1)
  {
    v35 = v18;
    v36 = type metadata accessor for DecodingError();
    v19 = swift_allocError();
    v38 = v37;
    v39 = *(sub_1000BC4D4(&qword_10169C868, &qword_101398420) + 48);
    *v38 = &type metadata for MessagingCapability;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    (*(v58 + 8))(v28, v35);
    swift_unknownObjectRelease();
LABEL_9:
    sub_100007BAC(v57);
    return v19;
  }

  v19 = v31;
  if (v31 <= 1u)
  {
    if (v31)
    {
      v63 = 1;
      sub_100290978();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v46 + 8))(v13, v47);
    }

    else
    {
      v63 = 0;
      sub_1002909CC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v26, v44);
    }

    (*(v58 + 8))(v22, v18);
  }

  else if (v31 == 2)
  {
    v63 = 2;
    sub_100290924();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = v58;
    (*(v48 + 8))(v27, v49);
    (*(v41 + 8))(v22, v18);
  }

  else
  {
    v32 = v58;
    v33 = v28;
    if (v31 == 3)
    {
      v63 = 3;
      sub_1002908D0();
      v34 = v54;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v34, v52);
    }

    else
    {
      v63 = 4;
      sub_10029087C();
      v42 = v55;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v50 + 8))(v42, v53);
    }

    (*(v32 + 8))(v33, v18);
  }

  swift_unknownObjectRelease();
  sub_100007BAC(v57);
  return v19;
}

unint64_t sub_100290828()
{
  result = qword_10169C860;
  if (!qword_10169C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C860);
  }

  return result;
}

unint64_t sub_10029087C()
{
  result = qword_10169C870;
  if (!qword_10169C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C870);
  }

  return result;
}

unint64_t sub_1002908D0()
{
  result = qword_10169C878;
  if (!qword_10169C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C878);
  }

  return result;
}

unint64_t sub_100290924()
{
  result = qword_10169C880;
  if (!qword_10169C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C880);
  }

  return result;
}

unint64_t sub_100290978()
{
  result = qword_10169C888;
  if (!qword_10169C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C888);
  }

  return result;
}

unint64_t sub_1002909CC()
{
  result = qword_10169C890;
  if (!qword_10169C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C890);
  }

  return result;
}

unint64_t sub_100290A84()
{
  result = qword_10169C8C8;
  if (!qword_10169C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8C8);
  }

  return result;
}

unint64_t sub_100290ADC()
{
  result = qword_10169C8D0;
  if (!qword_10169C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8D0);
  }

  return result;
}

unint64_t sub_100290B34()
{
  result = qword_10169C8D8;
  if (!qword_10169C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8D8);
  }

  return result;
}

unint64_t sub_100290B8C()
{
  result = qword_10169C8E0;
  if (!qword_10169C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8E0);
  }

  return result;
}

unint64_t sub_100290BE4()
{
  result = qword_10169C8E8;
  if (!qword_10169C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8E8);
  }

  return result;
}

unint64_t sub_100290C3C()
{
  result = qword_10169C8F0;
  if (!qword_10169C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8F0);
  }

  return result;
}

unint64_t sub_100290C94()
{
  result = qword_10169C8F8;
  if (!qword_10169C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C8F8);
  }

  return result;
}

unint64_t sub_100290CEC()
{
  result = qword_10169C900;
  if (!qword_10169C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C900);
  }

  return result;
}

unint64_t sub_100290D44()
{
  result = qword_10169C908;
  if (!qword_10169C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C908);
  }

  return result;
}

unint64_t sub_100290D9C()
{
  result = qword_10169C910;
  if (!qword_10169C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C910);
  }

  return result;
}

unint64_t sub_100290DF4()
{
  result = qword_10169C918;
  if (!qword_10169C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C918);
  }

  return result;
}

unint64_t sub_100290E4C()
{
  result = qword_10169C920;
  if (!qword_10169C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C920);
  }

  return result;
}

unint64_t sub_100290EA4()
{
  result = qword_10169C928;
  if (!qword_10169C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C928);
  }

  return result;
}

uint64_t sub_100290F08(void *a1)
{
  v3 = [a1 recordZoneID];
  if (v3)
  {

    v4 = [a1 databaseScope];
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    *(v5 + 56) = sub_100008BB8(0, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v5 + 64) = sub_1002917A0(&qword_10169C960, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v5 + 32) = a1;
    v6 = a1;
    os_log(_:dso:log:_:_:)();

    if ((v4 - 2) < 2)
    {
      v7 = *(v1 + 40);
      return QueueSynchronizer.conditionalSync<A>(_:)();
    }

    if (v4 == 1)
    {
      static os_log_type_t.default.getter();

      return os_log(_:dso:log:_:_:)();
    }

    static os_log_type_t.error.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v12 = CKDatabaseScope.description.getter();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    *(v9 + 56) = sub_100008BB8(0, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v9 + 64) = sub_1002917A0(&qword_10169C960, &qword_10169C958, CKRecordZoneNotification_ptr);
    *(v9 + 32) = a1;
    v10 = a1;
    os_log(_:dso:log:_:_:)();
  }
}

void sub_100291298(void *a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 56) = sub_100008BB8(0, &qword_10169C930, APSIncomingMessage_ptr);
  *(v3 + 64) = sub_1002917A0(&qword_10169C938, &qword_10169C930, APSIncomingMessage_ptr);
  *(v3 + 32) = a1;
  v4 = a1;
  os_log(_:dso:log:_:_:)();

  v5 = [v4 userInfo];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

  if (!v22)
  {
    static os_log_type_t.error.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    sub_1000BC4D4(&qword_10169C940, &qword_1013989C8);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    return;
  }

  v8 = [v22 notificationType];
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      goto LABEL_16;
    }

    if (v8 != 4)
    {
LABEL_15:
      static os_log_type_t.error.getter();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_101385D80;
      type metadata accessor for NotificationType(0);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100008C00();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      os_log(_:dso:log:_:_:)();

      return;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      static os_log_type_t.default.getter();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_101385D80;
      *(v16 + 56) = sub_100008BB8(0, &qword_10169C948, CKDatabaseNotification_ptr);
      *(v16 + 64) = sub_1002917A0(&qword_10169C950, &qword_10169C948, CKDatabaseNotification_ptr);
      *(v16 + 32) = v15;
      v22 = v22;
      os_log(_:dso:log:_:_:)();

      v17 = *(v1 + 40);
      QueueSynchronizer.conditionalSync<A>(_:)();
      goto LABEL_17;
    }

LABEL_16:
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    goto LABEL_17;
  }

  if (v8 == 1)
  {
    goto LABEL_16;
  }

  if (v8 != 2)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    goto LABEL_16;
  }

  sub_100290F08(v9);
LABEL_17:
}

uint64_t sub_1002917A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008BB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100291824()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A818);
  sub_1000076D4(v0, qword_10177A818);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002918A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A830);
  sub_1000076D4(v0, qword_10177A830);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100291924(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 120) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  return _swift_task_switch(sub_100291950, v6, 0);
}

uint64_t sub_100291950()
{
  v29 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v24 = v0[8];
    v25 = v0[7];
    v5 = v0[4];
    v23 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315650;
    v26 = v7;
    v27 = 0x7972616D6972702ELL;
    v28 = 0xEA0000000000282FLL;
    v0[2] = v5;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = sub_1000136BC(v27, v28, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v27 = 0x7972616D6972702ELL;
    v28 = 0xEA0000000000282FLL;
    v0[3] = v23;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_1000136BC(v27, v28, &v26);

    *(v6 + 14) = v13;
    *(v6 + 22) = 2080;
    if (v24)
    {
      v14 = v25;
    }

    else
    {
      v14 = 0x6C646E75622D6F6ELL;
    }

    if (v24)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0xE900000000000065;
    }

    v16 = sub_1000136BC(v14, v15, &v26);

    *(v6 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "BeaconSharingService begin fetchSharedBeacons. Index start: %s, End: %s, bundle: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_100291C84;
  v18 = v0[9];
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[4];

  return sub_100291FEC(v21, v19, v20);
}