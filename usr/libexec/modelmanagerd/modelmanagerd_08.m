uint64_t sub_1000B6428()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 264);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

void sub_1000B650C()
{
  sub_100003884();
  sub_100003324((v2 + 128));
  v3 = sub_100007DE0();
  if (v0)
  {
    v4 = 0;
LABEL_6:
    sub_10000EE54(v3);
    sub_1000081F4();
    v9 = v4;
  }

  else
  {
    sub_10000BFB0();
    while (v5 != v6)
    {
      v4 = v6 + 1;
      if (*(v7 + 8 * v6++))
      {
        goto LABEL_6;
      }
    }

    sub_1000039F8();
  }

  *(v2 + 280) = v1;
  *(v2 + 288) = v9;
  if (sub_100012794())
  {

    sub_100004A04((v2 + 32), v2 + 208);
    v10 = *(v2 + 240);
    sub_100003370((v2 + 208), *(v2 + 232));
    sub_100005828();
    v22 = v11 + *v11;
    v13 = *(v12 + 4);
    v14 = swift_task_alloc();
    *(v2 + 296) = v14;
    *v14 = v2;
    sub_100003010();
    *(v15 + 8) = v16;
    sub_1000088B8();
    sub_100004CC8();

    __asm { BRAA            X2, X16 }
  }

  v19 = *(v2 + 272);

  sub_100001F00();
  sub_100004CC8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000B6698()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 296);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B677C()
{
  sub_100003884();
  result = sub_100003324((v1 + 208));
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = *(v1 + 272);
    goto LABEL_7;
  }

  while (1)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v6 >= (((1 << *(v1 + 304)) + 63) >> 6))
    {
      sub_1000039F8();
      goto LABEL_8;
    }

    v5 = *(v1 + 272);
    v3 = *(v5 + 8 * v6 + 64);
    ++v4;
    if (v3)
    {
      v4 = v6;
LABEL_7:
      v0 = (v3 - 1) & v3;
      v7 = __clz(__rbit64(v3)) | (v4 << 6);
      v8 = (*(v5 + 48) + 16 * v7);
      v10 = *v8;
      v9 = v8[1];
      sub_1000480AC(*(v5 + 56) + 40 * v7, v1 + 168);
      sub_1000081F4();
LABEL_8:
      *(v1 + 280) = v0;
      *(v1 + 288) = v4;
      if (sub_100012794())
      {

        sub_100004A04((v1 + 32), v1 + 208);
        v11 = *(v1 + 240);
        sub_100003370((v1 + 208), *(v1 + 232));
        sub_100005828();
        v23 = v12 + *v12;
        v14 = *(v13 + 4);
        v15 = swift_task_alloc();
        *(v1 + 296) = v15;
        *v15 = v1;
        v16 = sub_100003010();
        *(v16 + 8) = v17;
        sub_1000088B8();
        sub_100004CC8();

        __asm { BRAA            X2, X16 }
      }

      v20 = *(v1 + 272);

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B6950()
{
  sub_10000C1C0();
  v3 = v2;
  v4 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  v5 = sub_100002BDC(v4);
  v67 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100005630();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v71 = &v61 - v13;
  v70 = type metadata accessor for BuiltInInferenceProvider();
  v14 = sub_100002BDC(v70);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100005630();
  v69 = (v19 - v20);
  sub_100002F1C();
  __chkstk_darwin(v21);
  v68 = &v61 - v22;
  v72 = v4;
  *v3 = Dictionary.init(dictionaryLiteral:)();
  v73 = v0;
  sub_1000480AC(v0, (v3 + 1));
  v23 = *(v1 + 16);
  if (v23)
  {
    v25 = *(v16 + 16);
    v24 = v16 + 16;
    v66 = v25;
    v26 = v1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v64 = v11;
    v65 = (v24 + 16);
    v27 = *(v24 + 56);
    v61 = v1;
    v62 = v27;
    v63 = v24;
    while (1)
    {
      v74 = v26;
      v75 = v23;
      v28 = v68;
      v29 = v70;
      v66(v68);
      v30 = BuiltInInferenceProvider.rawValue.getter();
      v32 = v31;
      v33 = *v65;
      v34 = v69;
      (*v65)(v69, v28, v29);
      v35 = v71;
      v36 = v72;
      sub_1000480AC(v73, &v71[*(v72 + 28)]);
      v37 = &v35[*(v36 + 20)];
      *(v37 + 32) = 0;
      sub_100013AB8();
      v38 = *(v36 + 24);
      sub_100065020(&qword_1001BA8F8, "ޅ");
      *&v35[v38] = Dictionary.init(dictionaryLiteral:)();
      v33(v35, v34, v29);
      type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
      swift_storeEnumTagMultiPayload();
      sub_10000ECD8(v37, &qword_1001B9CB0, &qword_100171E70);
      sub_100013AB8();
      *(v37 + 32) = 0;
      sub_1000050EC();
      v39 = v64;
      sub_1000BA610();
      v40 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v3;
      v76 = *v3;
      v43 = v76;
      v44 = sub_1000236F4(v30, v32);
      v46 = *(v43 + 16);
      v47 = (v45 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        break;
      }

      v49 = v44;
      v50 = v45;
      sub_100065020(&qword_1001BAA08, &qword_100171580);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v48))
      {
        v51 = sub_1000236F4(v30, v32);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_15;
        }

        v49 = v51;
      }

      v53 = v76;
      if (v50)
      {
        sub_100019B88();
        sub_1000BA5AC(v39, v54);
      }

      else
      {
        sub_100061AC4(v76 + 8 * (v49 >> 6));
        v56 = (v55 + 16 * v49);
        *v56 = v30;
        v56[1] = v32;
        sub_100019B88();
        sub_1000050EC();
        sub_1000BA610();
        v57 = *(v53 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_14;
        }

        *(v53 + 16) = v59;
      }

      v3 = v42;
      *v42 = v53;
      v26 = v74 + v62;
      v23 = v75 - 1;
      if (v75 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_12:

    return sub_100003324(v73);
  }

  return result;
}

void sub_1000B6D68()
{
  v45 = sub_100065020(&qword_1001BAA18, &qword_1001715B8);
  v1 = sub_100002C00(v45);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v41 - v4);
  v6 = *v0;
  v7 = *(*v0 + 64);
  *(&v41 + 1) = *v0 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  *&v41 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  *v44 = xmmword_10016FF40;
  v42 = v6;
  v43 = v5;
  do
  {
    while (1)
    {
      if (!v10)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= v41)
          {
            goto LABEL_27;
          }

          v10 = *(*(&v41 + 1) + 8 * v13);
          ++v11;
          if (v10)
          {
            v11 = v13;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

LABEL_9:
      v14 = __clz(__rbit64(v10)) | (v11 << 6);
      v15 = *(v6 + 56);
      v16 = (*(v6 + 48) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
      sub_100002C00(v19);
      v21 = v15 + *(v20 + 72) * v14;
      v22 = v5 + *(v45 + 48);
      sub_100003B80();
      sub_1000BA4FC();
      *v5 = v17;
      v5[1] = v18;
      v23 = *(v19 + 20);
      sub_100012F04();
      v48 = v12;
      if (v55)
      {
        sub_100004A04(&v53, &v49);
        sub_100065020(&qword_1001BAA20, &unk_1001715C0);
        v24 = swift_allocObject();
        *(v24 + 1) = *v44;
        sub_100004A04(&v49, (v24 + 4));
      }

      else
      {
        v24 = _swiftEmptyArrayStorage;
      }

      v25 = *&v22[*(v19 + 24)];
      v26 = *(v25 + 16);
      if (v26)
      {
        v46 = v24;
        sub_100065020(&qword_1001BAA20, &unk_1001715C0);
        v27 = swift_allocObject();
        v28 = j__malloc_size(v27);
        v27[2] = v26;
        v27[3] = 2 * ((v28 - 32) / 40);
        sub_1001499D4(&v53, (v27 + 4), v26, v25, v29, v30, v31, v32, v41, v42, v43, *v44, *&v44[8], v45, v46, v47, v48, v49, *(&v49 + 1), v50, v51, v52, v53, *(&v53 + 1), v54, v55, v56, v57);
        v47 = v33;

        sub_100007F18();
        if (v47 != v26)
        {
          goto LABEL_30;
        }

        v6 = v42;
        v5 = v43;
        v24 = v46;
      }

      else
      {

        v27 = _swiftEmptyArrayStorage;
      }

      *&v53 = v24;
      sub_100140910(v27);
      v34 = v53;
      sub_10000ECD8(v5, &qword_1001BAA18, &qword_1001715B8);
      v35 = *(v34 + 16);
      v12 = v48;
      v36 = v48[2];
      if (__OFADD__(v36, v35))
      {
        goto LABEL_29;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v36 + v35 > v12[3] >> 1)
      {
        sub_10013FF18();
        v12 = v37;
      }

      v10 &= v10 - 1;
      if (!*(v34 + 16))
      {
        break;
      }

      if ((v12[3] >> 1) - v12[2] < v35)
      {
        goto LABEL_31;
      }

      sub_100065020(&qword_1001BA8F8, "ޅ");
      swift_arrayInitWithCopy();

      if (v35)
      {
        v38 = v12[2];
        v39 = __OFADD__(v38, v35);
        v40 = v38 + v35;
        if (v39)
        {
          goto LABEL_32;
        }

        v12[2] = v40;
      }
    }
  }

  while (!v35);
  __break(1u);
LABEL_27:
}

uint64_t InferenceProviderManager.inferenceProviderConnections.setter(uint64_t a1)
{
  sub_100004B50();
  sub_1000B71AC(a1, v1 + 112);
  return swift_endAccess();
}

void *sub_1000B7230(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t InferenceProviderManager.allConnections.getter()
{
  sub_100012D7C();
  sub_10006ABDC(v0 + 112, v4);
  sub_1000B6D68();
  v2 = v1;
  sub_10006ACCC(v4);
  return v2;
}

uint64_t InferenceProviderManager.__allocating_init(connectionCollection:waitingForFirstUpdate:extensionKit:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  swift_allocObject();
  v7 = a3[4];
  sub_100016494(a3, a3[3]);
  sub_1000124CC();
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = sub_100004BB8(v11, v16);
  v13(v12);
  v14 = sub_1000352E0();
  sub_100003324(a3);
  return v14;
}

uint64_t InferenceProviderManager.init(connectionCollection:waitingForFirstUpdate:extensionKit:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[4];
  sub_100016494(a3, a3[3]);
  sub_1000124CC();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = sub_100004BB8(v8, v13);
  v10(v9);
  v11 = sub_1000352E0();
  sub_100003324(a3);
  return v11;
}

uint64_t sub_1000B7454(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100004B70(sub_1000B7470, 0);
}

uint64_t sub_1000B7470()
{
  sub_100003884();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = sub_100065020(&qword_1001BA648, &qword_100171330);
  *v5 = v0;
  v5[1] = sub_1000B75C8;
  v7 = v0[3];

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v6, 0xD00000000000003ELL, 0x8000000100176830);
}

uint64_t sub_1000B75C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {
    v8 = *(v3 + 32);

    v9 = sub_100003000();

    return _swift_task_switch(v9, v10, v11);
  }

  return result;
}

uint64_t sub_1000B76C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B4668;

  return sub_1000B7908();
}

uint64_t sub_1000B7764()
{
  sub_10000C1C0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0) + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1000B77CC()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0) + 20);
  type metadata accessor for UUID();
  sub_10006AB90();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000B782C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0) + 20);
  type metadata accessor for UUID();
  sub_10006AB90();
  sub_10000317C();
  return Hasher._finalize()();
}

Swift::Int sub_1000B78A4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for UUID();
  sub_10006AB90();
  sub_10000317C();
  return Hasher._finalize()();
}

uint64_t sub_1000B7908()
{
  sub_100002BAC();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(sub_100065020(&qword_1001BAA10, &qword_100171590) - 8) + 64);
  v1[9] = sub_100002C58();
  v4 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000B7A28()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v113 = v0[10];
    v109 = v0[11];
    v111 = v0[9];
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v115 = v4;
      sub_1000480AC(v3, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      sub_100003370(v0 + 2, v5);
      v7 = (*(v6 + 16))(v5, v6);
      v10 = v0[9];
      v9 = v0[10];
      if (v8)
      {
        v11 = v8;
        v119 = v0[10];
        v122 = v2;
        v12 = v0[5];
        v13 = v0[6];
        v117 = v7;
        sub_100003370(v0 + 2, v12);
        v14 = type metadata accessor for UUID();
        sub_100002BDC(v14);
        v16 = v15;
        v18 = *(v17 + 64);
        v19 = sub_100002C58();
        v20 = v12;
        v2 = v122;
        (*(v13 + 8))(v20, v13);
        *v10 = v117;
        *(v111 + 8) = v11;
        (*(v16 + 32))(v10 + *(v113 + 20), v19, v14);

        v21 = v10;
        v22 = 0;
        v9 = v119;
      }

      else
      {
        v21 = v0[9];
        v22 = 1;
      }

      sub_100009BFC(v21, v22, 1, v9);
      v23 = v0[9];
      v24 = v0[10];
      sub_100003324(v0 + 2);
      v4 = v115;
      if (sub_10000C6C0(v23, 1, v24) == 1)
      {
        sub_10000ECD8(v0[9], &qword_1001BAA10, &qword_100171590);
      }

      else
      {
        v25 = v0[17];
        v26 = v0[9];
        sub_10000860C();
        sub_1000BA610();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = v115[2];
          sub_10014029C();
          v4 = v32;
        }

        v27 = v4[2];
        if (v27 >= v4[3] >> 1)
        {
          sub_10014029C();
          v4 = v33;
        }

        v28 = v0[17];
        v4[2] = v27 + 1;
        v29 = v4 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
        v30 = *(v109 + 72);
        sub_10000860C();
        sub_1000BA610();
      }

      v3 += 40;
      v2 = (v2 - 1);
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v118 = v0[15];
  v112 = v0[11];
  v123 = v0[10];
  v105 = v0[16];
  v106 = v4[2];
  v107 = OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_discoveredIdentities;
  v108 = v0[8];
  v35 = _swiftEmptyArrayStorage;
  v116 = v4;
  while (1)
  {
    v114 = v35;
    if (v34 == v106)
    {
      v61 = v0[13];
      v62 = *(v108 + v107);

      v64 = sub_1000FD874(v63);
      v65 = 0;
      v121 = v64[2];
      v2 = _swiftEmptyArrayStorage;
      while (1)
      {
LABEL_37:
        v0[18] = _swiftEmptyArrayStorage;
        if (v65 == v121)
        {

          sub_100077C0C();
          v81 = *(v108 + v107);
          *(v108 + v107) = v82;

          if (qword_1001B8910 == -1)
          {
            goto LABEL_56;
          }

          goto LABEL_70;
        }

        if (v65 >= v64[2])
        {
          goto LABEL_69;
        }

        v66 = v0[13];
        v67 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v68 = *(v112 + 72);
        sub_100011384();
        sub_1000BA4FC();
        ++v65;
        v69 = v4[2];
        v70 = (v4 + v67);
        while (v69)
        {
          if (*v70 != *v0[13] || v70[1] != *(v61 + 8))
          {
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_48;
            }

            v72 = v0[13];
          }

          v73 = *(v123 + 20);
          if (static UUID.== infix(_:_:)())
          {
            v78 = v0[13];
            sub_1000056AC();
            sub_1000BA554(v79, v80);
            goto LABEL_37;
          }

LABEL_48:
          v70 = (v70 + v68);
          --v69;
        }

        v74 = v0[12];
        sub_10000860C();
        sub_1000BA610();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = _swiftEmptyArrayStorage[2];
          sub_100070F70();
        }

        v76 = _swiftEmptyArrayStorage[2];
        if (v76 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          sub_100070F70();
        }

        v77 = v0[12];
        _swiftEmptyArrayStorage[2] = v76 + 1;
        sub_10000860C();
        sub_1000BA610();
        v4 = v116;
      }
    }

    if (v34 >= v4[2])
    {
      break;
    }

    v36 = v0[16];
    v37 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v120 = *(v112 + 72);
    sub_100011384();
    sub_1000BA4FC();
    ++v34;
    v2 = *(v108 + v107);
    if (!v2[2])
    {
      goto LABEL_30;
    }

    v110 = v34;
    v38 = v0[16];
    v39 = v2[5];
    Hasher.init(_seed:)();
    v40 = *v38;
    v41 = *(v105 + 8);

    String.hash(into:)();
    v42 = *(v123 + 20);
    type metadata accessor for UUID();
    sub_10006AB90();
    dispatch thunk of Hashable.hash(into:)();
    v43 = Hasher._finalize()();
    v44 = -1 << *(v2 + 32);
    v45 = v43 & ~v44;
    if ((*(v2 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v45))
    {
      v46 = ~v44;
      while (1)
      {
        v47 = v0[15];
        v48 = v2[6];
        sub_100011384();
        sub_1000BA4FC();
        v49 = *v47 == v40 && *(v118 + 8) == v41;
        if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v50 = v0[15];
          v51 = *(v123 + 20);
          if (static UUID.== infix(_:_:)())
          {
            break;
          }
        }

        v52 = v0[15];
        sub_1000056AC();
        sub_1000BA554(v53, v54);
        v45 = (v45 + 1) & v46;
        if (((*(v2 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v45) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v60 = v0[16];
      sub_1000BA554(v0[15], type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation);

      sub_1000BA554(v60, type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation);
      v35 = v114;
      v4 = v116;
      v34 = v110;
    }

    else
    {
LABEL_29:

      v35 = v114;
      v4 = v116;
      v34 = v110;
LABEL_30:
      v55 = v0[16];
      v56 = v0[14];
      sub_10000860C();
      sub_1000BA610();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = v35[2];
        sub_100070F70();
      }

      v58 = v35[2];
      v2 = (v58 + 1);
      if (v58 >= v35[3] >> 1)
      {
        sub_100070F70();
      }

      v59 = v0[14];
      v35[2] = v2;
      sub_10000860C();
      sub_1000BA610();
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  sub_100005C4C();
  swift_once();
LABEL_56:
  v83 = type metadata accessor for Logger();
  sub_10000641C(v83, qword_1001BA630);

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 134218240;
    *(v86 + 4) = *(v114 + 16);

    *(v86 + 12) = 2048;
    *(v86 + 14) = v2[2];

    sub_1000078B4();
    _os_log_impl(v87, v88, v89, v90, v91, 0x16u);
    sub_100002BB8();
  }

  else
  {
  }

  if (*(v114 + 16))
  {
    v92 = v0[8];
    sub_1000B8580(v114, 1);
  }

  if (v2[2])
  {
    v93 = swift_task_alloc();
    v0[19] = v93;
    *v93 = v0;
    v93[1] = sub_1000B8300;
    v94 = v0[8];

    return sub_1000B8EEC();
  }

  else
  {
    v97 = v0[17];
    v96 = v0[18];
    v99 = v0[15];
    v98 = v0[16];
    v101 = v0[13];
    v100 = v0[14];
    v102 = v0[12];
    v103 = v0[9];

    sub_100001F00();

    return v104();
  }
}

uint64_t sub_1000B8300()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = v1[18];
  v6 = v1[17];
  v7 = v1[16];
  v8 = v1[15];
  v9 = v1[14];
  v10 = v1[13];
  v11 = v1[12];
  v12 = v1[9];

  v13 = *(v3 + 8);

  return v13();
}

uint64_t sub_1000B84E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100004B70(sub_1000B8504, v2);
}

uint64_t sub_1000B8504()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = (v0[4] + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler);
  v4 = *v2;
  v3 = v2[1];
  *v2 = v0[2];
  v2[1] = v1;

  sub_100016484(v4);
  sub_100001F00();

  return v5();
}

void sub_1000B8580(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  v7 = sub_100002BDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v124 - v12;
  v139 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  v14 = sub_100002C00(v139);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002B8C();
  v131 = v18 - v17;
  v134 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  v19 = sub_100002BDC(v134);
  v138 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_100005630();
  v141 = v23 - v24;
  sub_100002F1C();
  __chkstk_darwin(v25);
  v133 = &v124 - v26;
  sub_100002F1C();
  __chkstk_darwin(v27);
  v129 = &v124 - v28;
  sub_100002F1C();
  __chkstk_darwin(v29);
  v132 = &v124 - v30;
  v31 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31);
  v137 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 16);
  v38 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  v140 = v3;
  v127 = v6;
  v126 = v9;
  v125 = v13;
  v128 = a2;
  if (!v37)
  {
    if (qword_1001B8910 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

  v39 = *(v33 + 20);
  v40 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v135 = *(v34 + 72);
  v136 = v39;
  *&v35 = 136315138;
  v130 = v35;
  do
  {
    v144 = v37;
    sub_100011384();
    v142 = v41;
    v42 = v137;
    sub_1000BA4FC();
    v44 = *v42;
    v43 = v42[1];
    v45 = type metadata accessor for UUID();
    v143 = &v124;
    v46 = sub_100002BDC(v45);
    v48 = v47;
    v50 = *(v49 + 64);
    __chkstk_darwin(v46);
    v145 = v48;
    v146 = v51;
    v52 = *(v48 + 16);
    v147 = &v124 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52();

    sub_1000056AC();
    sub_1000BA554(v42, v53);
    sub_100004B50();
    if (*(v3[14] + 16))
    {
      v54 = sub_10000CF04();
      sub_1000236F4(v54, v55);
      if (v56)
      {
        sub_10000A44C();
        sub_100003B80();
        sub_1000BA4FC();
        sub_1000050EC();
        sub_1000BA610();
        sub_1000BA4FC();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v58 = v131;
            v59 = *(v131 + 8);

            v60 = sub_100065020(&qword_1001BA9F8, &qword_100171570);
            v61 = v146;
            v62 = *(v145 + 8);
            v62(v58 + *(v60 + 48), v146);
            sub_1000064F0();
            sub_1000BA554(v132, v63);
            goto LABEL_24;
          }
        }

        else
        {
          sub_1000BA554(v131, type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype);
        }

        sub_1000064F0();
        sub_1000BA554(v132, v64);
      }
    }

    if (v38[290] != -1)
    {
      sub_100005C4C();
      swift_once();
    }

    v65 = v52;
    v66 = type metadata accessor for Logger();
    sub_10000641C(v66, qword_1001BA630);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v148 = v70;
      *v69 = v130;
      v71 = sub_10000CF04();
      *(v69 + 4) = sub_100004A3C(v71, v72, v73);
      _os_log_impl(&_mh_execute_header, v67, v68, "Found inference provider extension: %s", v69, 0xCu);
      sub_100003324(v70);
      v3 = v140;
      sub_100002BB8();
      sub_100002BB8();
    }

    __chkstk_darwin(v74);
    v75 = &v124 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = v146;
    (v65)(v75, v147, v146);
    v77 = v133;
    v78 = v134;
    sub_1000480AC((v3 + 15), &v133[*(v134 + 28)]);
    v79 = &v77[*(v78 + 20)];
    *(v79 + 32) = 0;
    sub_100013AB8();
    v80 = v3;
    v81 = *(v78 + 24);
    v61 = v76;

    sub_100065020(&qword_1001BA8F8, "ޅ");
    *&v77[v81] = Dictionary.init(dictionaryLiteral:)();
    v82 = *(sub_100065020(&qword_1001BA9F8, &qword_100171570) + 48);
    *v77 = v44;
    *(v77 + 1) = v43;
    v83 = v145;
    (*(v145 + 32))(&v77[v82], v75, v61);
    swift_storeEnumTagMultiPayload();

    sub_10000ECD8(v79, &qword_1001B9CB0, &qword_100171E70);
    sub_100013AB8();
    *(v79 + 32) = 0;
    sub_1000050EC();
    sub_1000BA610();
    v84 = v80[14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v80[14];
    v86 = v148;
    v87 = sub_10000CF04();
    v89 = sub_1000236F4(v87, v88);
    v91 = v86[2];
    v92 = (v90 & 1) == 0;
    v3 = (v91 + v92);
    if (__OFADD__(v91, v92))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v93 = v89;
    v94 = v90;
    sub_100065020(&qword_1001BAA08, &qword_100171580);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v3))
    {
      v95 = sub_10000CF04();
      v97 = sub_1000236F4(v95, v96);
      v3 = v140;
      v38 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
      if ((v94 & 1) != (v98 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v93 = v97;
    }

    else
    {
      v3 = v140;
      v38 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    }

    v99 = v148;
    if (v94)
    {
      sub_10000A44C();
      sub_1000BA5AC(v141, v100 + v101 * v93);
    }

    else
    {
      sub_100061AC4(&v148[v93 >> 6]);
      v103 = (v102 + 16 * v93);
      *v103 = v44;
      v103[1] = v43;
      sub_10000A44C();
      sub_1000050EC();
      sub_1000BA610();
      v104 = v99[2];
      v105 = __OFADD__(v104, 1);
      v106 = v104 + 1;
      if (v105)
      {
        goto LABEL_40;
      }

      v99[2] = v106;
    }

    v3[14] = v99;
    v62 = *(v83 + 8);
LABEL_24:
    v107 = v144;
    v62(v147, v61);
    swift_endAccess();

    v37 = v107 - 1;
  }

  while (v37);
  while ((v128 & 1) != 0)
  {
    v113 = v3[21];
    v105 = __OFADD__(v113, 1);
    v114 = v113 + 1;
    if (!v105)
    {
      v3[21] = v114;
      if (v114 >= 1)
      {
        v115 = v3[22];
        v116 = *(v115 + 16);
        if (v116)
        {
          v117 = *(v126 + 16);
          v118 = v115 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
          v119 = *(v126 + 72);
          v120 = (v126 + 8);

          v121 = v127;
          v122 = v125;
          do
          {
            v117(v122, v118, v121);
            CheckedContinuation.resume(returning:)();
            (*v120)(v122, v121);
            v118 += v119;
            --v116;
          }

          while (v116);

          v3 = v140;
          v123 = v140[22];
        }

        v3[22] = _swiftEmptyArrayStorage;
      }

      return;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    sub_100005C4C();
    swift_once();
LABEL_27:
    v108 = type metadata accessor for Logger();
    sub_10000641C(v108, qword_1001BA630);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v109, v110))
    {
      *swift_slowAlloc() = 0;
      sub_10000EDF4(&_mh_execute_header, v111, v112, "Query found no inference provider extensions");
      sub_100002BB8();
    }
  }
}

uint64_t sub_1000B8EEC()
{
  sub_100002BAC();
  v1[14] = v2;
  v1[15] = v0;
  v3 = *(*(sub_100065020(&qword_1001BAA00, &qword_100171578) - 8) + 64);
  v1[16] = sub_100002C58();
  v4 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  v1[17] = v4;
  v5 = *(v4 - 8);
  v1[18] = v5;
  v6 = *(v5 + 64);
  v1[19] = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000B8FC8()
{
  sub_100001ED0();
  v1 = *(*(v0 + 112) + 16);
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = *(v0 + 120);
    *(v0 + 168) = OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler;
    v3 = *(type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0) - 8);
    *(v0 + 248) = *(v3 + 80);
    swift_beginAccess();
    *(v0 + 176) = *(v3 + 72);
    *(v0 + 184) = 0;
    v4 = *(v0 + 112) + ((*(v0 + 248) + 32) & ~*(v0 + 248));
    sub_10006ABDC(*(v0 + 120) + 112, v0 + 16);
    v5 = sub_1000083FC();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);

    sub_100001F00();

    return v10();
  }
}

uint64_t sub_1000B9104()
{
  if (qword_1001B8910 != -1)
  {
    sub_100005C4C();
    swift_once();
  }

  v1 = v0[25];
  v2 = type metadata accessor for Logger();
  v0[26] = sub_10000641C(v2, qword_1001BA630);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[24];
    v5 = v0[25];
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = sub_10000CF04();
    *(v7 + 4) = sub_100004A3C(v8, v9, v10);
    sub_1000078B4();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_100003324(v26);
    sub_100002BB8();
    sub_100002BB8();
  }

  v16 = v0[2];
  if (*(v16 + 16) && (sub_1000236F4(v0[24], v0[25]), (v17 & 1) != 0))
  {
    v18 = v0[19];
    v19 = *(v16 + 56);
    v20 = *(v0[18] + 72);
    sub_100003B80();
    sub_1000BA4FC();
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    v21[1] = sub_1000B9310;
    v22 = v0[19];

    return sub_1000B6190();
  }

  else
  {
    v24 = v0[15];
    sub_10006ACCC((v0 + 2));
    v25 = sub_10000A8A4();

    return _swift_task_switch(v25, v24, 0);
  }
}

uint64_t sub_1000B9310()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = v1[27];
  v5 = v1[19];
  *v3 = *v0;

  sub_1000064F0();
  sub_1000BA554(v5, v6);
  v7 = v1[15];
  sub_10006ACCC((v2 + 2));
  v8 = sub_10000A8A4();

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000B9438()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[15];
  sub_100004B50();
  v4 = *(v3 + 112);
  v5 = sub_1000236F4(v1, v2);
  if (v6)
  {
    v7 = v5;
    v8 = v0[17];
    v9 = v0[18];
    v11 = v0[15];
    v10 = v0[16];
    v12 = *(v11 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v11 + 112);
    v14 = v56[3];
    sub_100065020(&qword_1001BAA08, &qword_100171580);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14);
    v15 = *(v56[6] + 16 * v7 + 8);

    v16 = v56[7];
    v17 = *(v9 + 72);
    sub_1000050EC();
    sub_1000BA610();
    sub_1000062B0();
    _NativeDictionary._delete(at:)();
    v18 = 0;
    *(v11 + 112) = v56;
  }

  else
  {
    v18 = 1;
  }

  v20 = v0[25];
  v19 = v0[26];
  v21 = v0[16];
  sub_100009BFC(v21, v18, 1, v0[17]);
  sub_10000ECD8(v21, &qword_1001BAA00, &qword_100171578);

  v22 = Logger.logObject.getter();
  LOBYTE(v21) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v21))
  {
    v24 = v0[24];
    v23 = v0[25];
    v25 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v25 = 136315138;
    v26 = sub_10000CF04();
    *(v25 + 4) = sub_100004A3C(v26, v27, v28);
    sub_1000078B4();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_100003324(v57);
    sub_100002BB8();
    sub_100002BB8();
  }

  v34 = v0[21];
  v35 = v0[15];
  swift_endAccess();
  v36 = *(v35 + v34);
  v0[28] = v36;
  if (v36)
  {
    v0[29] = *(v0[15] + v0[21] + 8);

    v55 = v36 + *v36;
    v37 = v36[1];
    v38 = swift_task_alloc();
    v0[30] = v38;
    *v38 = v0;
    v38[1] = sub_1000B9790;
    v40 = v0[24];
    v39 = v0[25];
    sub_100016688();

    __asm { BRAA            X2, X16 }
  }

  sub_1000126A0();
  if (v44)
  {
    v45 = v0[19];
    v46 = v0[16];

    sub_100001F00();
    sub_100016688();

    __asm { BRAA            X1, X16 }
  }

  v49 = sub_1000185C4(v43);
  sub_1000083FC(v49);
  sub_100016688();

  return _swift_task_switch(v50, v51, v52);
}

uint64_t sub_1000B9790()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[30];
  v3 = v1[29];
  v4 = v1[28];
  v5 = v1[15];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  v8 = sub_1000062B0();
  sub_100016484(v8);

  return _swift_task_switch(sub_1000B98C8, v5, 0);
}

uint64_t sub_1000B98C8()
{
  sub_100002BAC();
  sub_1000126A0();
  if (v2)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 128);

    sub_100001F00();

    return v5();
  }

  else
  {
    v7 = sub_1000185C4(v1);
    v8 = sub_1000083FC(v7);

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_1000B995C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000B9A54()
{
  sub_100001ED0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_100004B50();
  sub_100025EF0(v1, v3);
  swift_endAccess();
  sub_100001F00();

  return v4();
}

uint64_t sub_1000B9ADC(uint64_t a1, uint64_t a2)
{
  sub_10013FA54();
  v4 = *(*(a2 + 176) + 16);
  sub_10013FAE4(v4);
  v5 = *(a2 + 176);
  *(v5 + 16) = v4 + 1;
  v6 = sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 176) = v5;
  return result;
}

uint64_t InferenceProviderManager.deinit()
{
  sub_10006ACCC(v0 + 112);
  v1 = *(v0 + 176);

  sub_100003324((v0 + 184));
  v2 = OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager__workQueue;
  v3 = sub_100065020(&qword_1001BA648, &qword_100171330);
  sub_100002C00(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler + 8);
  sub_100016484(*(v0 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler));
  v6 = *(v0 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_discoveredIdentities);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InferenceProviderManager.__deallocating_deinit()
{
  InferenceProviderManager.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B9C64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  v11 = sub_10000366C(v17);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  swift_defaultActor_initialize();
  *(a4 + 160) = xmmword_10016F6C0;
  *(a4 + 176) = _swiftEmptyArrayStorage;
  type metadata accessor for InferenceProviderManager(0);
  sub_1000BA43C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager);
  WorkQueue.init()();
  v12 = (a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler);
  *v12 = 0;
  v12[1] = 0;
  *(a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_discoveredIdentities) = &_swiftEmptySetSingleton;
  sub_10006ABDC(a1, a4 + 112);
  *(a4 + 168) = (a2 & 1) == 0;
  sub_1000480AC(v17, a4 + 184);
  v13 = *(a4 + 208);
  v14 = *(a4 + 216);
  sub_100003370((a4 + 184), v13);
  v15 = *(v14 + 8);

  v15(&off_1001AFF30, &unk_10016F810, a4, v13, v14);

  sub_10006ACCC(a1);
  sub_100003324(v17);
  return a4;
}

void sub_1000B9E4C()
{
  sub_1000B9F24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000B9F24()
{
  if (!qword_1001BA688)
  {
    type metadata accessor for InferenceProviderManager(255);
    sub_1000BA43C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager);
    v0 = type metadata accessor for WorkQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BA688);
    }
  }
}

__n128 sub_1000B9FB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000B9FCC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA00C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000BA0B0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000BA12C()
{
  type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(319);
  if (v0 <= 0x3F)
  {
    sub_1000BA1E0();
    if (v1 <= 0x3F)
    {
      sub_1000BA244();
      if (v2 <= 0x3F)
      {
        sub_1000BA2B8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000BA1E0()
{
  if (!qword_1001BA8F0)
  {
    sub_10006A614(&qword_1001BA8F8, "ޅ");
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BA8F0);
    }
  }
}

void sub_1000BA244()
{
  if (!qword_1001BA900)
  {
    sub_10006A614(&qword_1001BA8F8, "ޅ");
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BA900);
    }
  }
}

unint64_t sub_1000BA2B8()
{
  result = qword_1001BA908;
  if (!qword_1001BA908)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001BA908);
  }

  return result;
}

void sub_1000BA314()
{
  type metadata accessor for BuiltInInferenceProvider();
  if (v0 <= 0x3F)
  {
    sub_1000BA388();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000BA388()
{
  if (!qword_1001BA9C0)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001BA9C0);
    }
  }
}

uint64_t sub_1000BA43C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BA48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B9CB0, &qword_100171E70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA4FC()
{
  sub_10000C1C0();
  v2 = v1(0);
  sub_100002C00(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000062B0();
  v6(v5);
  return v0;
}

uint64_t sub_1000BA554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002C00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000BA5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA610()
{
  sub_10000C1C0();
  v2 = v1(0);
  sub_100002C00(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000062B0();
  v6(v5);
  return v0;
}

uint64_t sub_1000BA668()
{
  sub_100001ED0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006F558;

  return sub_1000B76C8();
}

void sub_1000BA718(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v75 = a3;
  v74 = a2;
  v4 = sub_100065020(&qword_1001B9C70, &qword_1001706C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v68 = &v65 - v6;
  v69 = type metadata accessor for InferenceError.Context();
  sub_100004F60();
  v67 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_100008624();
  v66 = v11;
  type metadata accessor for InferenceError();
  sub_100004F60();
  v71 = v13;
  v72 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100008624();
  v70 = v16;
  v17 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v65 - v19;
  sub_100004F60();
  v22 = v21;
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v65 - v29;
  v31 = type metadata accessor for ModelManagerError();
  sub_100004F60();
  v33 = v32;
  v35 = *(v34 + 64);
  v37 = __chkstk_darwin(v36);
  v39 = &v65 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v65 - v40;
  v73 = v22;
  v42 = *(v22 + 16);
  v42(v30, v76, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100009BFC(v20, 1, 1, v31);
    sub_10000C790(v20, &qword_1001B9C80, &unk_1001726D0);
    goto LABEL_7;
  }

  sub_100009BFC(v20, 0, 1, v31);
  (*(v33 + 32))(v41, v20, v31);
  (*(v33 + 16))(v39, v41, v31);
  if ((*(v33 + 88))(v39, v31) != enum case for ModelManagerError.inferenceError(_:))
  {
    v51 = *(v33 + 8);
    v51(v41, v31);
    v51(v39, v31);
LABEL_7:
    v42(v28, v76, a1);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v73 + 8))(v28, a1);
    }

    else
    {
      swift_allocError();
      (*(v73 + 32))(v52, v28, a1);
    }

    v53 = _convertErrorToNSError(_:)();

    sub_1000BAF18(v53, v75);

    return;
  }

  v76 = v41;
  v43 = v33;
  v44 = *(v33 + 96);
  v45 = v31;
  v44(v39, v31);
  v47 = v70;
  v46 = v71;
  v48 = v72;
  (*(v71 + 32))(v70, v39, v72);
  v49 = v68;
  InferenceError.context.getter();
  v50 = v69;
  if (sub_10000C6C0(v49, 1, v69) == 1)
  {
    sub_10000C790(v49, &qword_1001B9C70, &qword_1001706C0);
  }

  else
  {
    v54 = v66;
    v55 = v67;
    (*(v67 + 32))(v66, v49, v50);
    v56 = InferenceError.Context.domain.getter();
    v58 = v57;

    v59 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v77 = 0x636E657265666E49;
      v78 = 0xEF2E726F72724565;
      v60._countAndFlagsBits = InferenceError.caseName.getter();
      String.append(_:)(v60);

      v61._countAndFlagsBits = 46;
      v61._object = 0xE100000000000000;
      String.append(_:)(v61);
      v62._countAndFlagsBits = InferenceError.Context.domain.getter();
      String.append(_:)(v62);

      InferenceError.Context.code.getter();
      sub_1000BAE38(v75);

      (*(v55 + 8))(v54, v50);
      (*(v46 + 8))(v47, v48);
      (*(v43 + 8))(v76, v45);
      return;
    }

    (*(v55 + 8))(v54, v50);
  }

  sub_1000BAFAC();
  swift_allocError();
  (*(v46 + 16))(v63, v47, v48);
  v64 = _convertErrorToNSError(_:)();
  sub_1000BAF18(v64, v75);

  (*(v46 + 8))(v47, v48);
  (*(v43 + 8))(v76, v45);
}

uint64_t sub_1000BAE38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
  v2 = swift_allocBox();
  static Buildable.with(_:)();
  *a1 = v2;
  v3 = enum case for GenerativeFunctionsInstrumentationError.genericError(_:);
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationError();
  return (*(*(v4 - 8) + 104))(a1, v3, v4);
}

uint64_t sub_1000BAF18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [a1 code];
  sub_1000BAE38(a2);
}

unint64_t sub_1000BAFAC()
{
  result = qword_1001BAA28;
  if (!qword_1001BAA28)
  {
    type metadata accessor for InferenceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAA28);
  }

  return result;
}

uint64_t sub_1000BB004()
{

  GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  return GenerativeFunctionsInstrumentationError.GenericError.code.setter();
}

uint64_t sub_1000BB060()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000BB004();
}

uint64_t AssetInferenceProvider.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetInferenceProvider.instanceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static AssetInferenceProvider.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_100008638(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(v3 + 24);
  v8 = *(v2 + 24);
  if (v7)
  {
    if (v8)
    {
      v9 = *(v3 + 16) == *(v2 + 16) && v7 == v8;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v10 = 0;
    return v10 & 1;
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_13:
  v10 = *(v3 + 32) ^ *(v2 + 32) ^ 1;
  return v10 & 1;
}

void AssetInferenceProvider.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  if (v0[3])
  {
    v3 = v0[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v0[4] & 1);
}

Swift::Int AssetInferenceProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000BB224(uint64_t *a1, uint64_t *a2)
{
  sub_100008638(a1, a2);
  v6 = v6 && v4 == v5;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_1000BB68C(v3[2], v2[2]) & 1) != 0 && (sub_1000BB718(v3[3], v2[3]) & 1) != 0 && (sub_1000BB718(v3[4], v2[4]) & 1) != 0 && (v7 = type metadata accessor for ModelCatalogAsset(0), v8 = v7[8], (static AssetCost.== infix(_:_:)()) && (sub_100005104(v7[9]), v6) && (sub_100005104(v7[10]), v6) && (sub_100005104(v7[11]), v6) && (sub_100005104(v7[12]), v6) && (sub_100005104(v7[13]), v6) && (sub_1000BB68C(*(v3 + v7[14]), *(v2 + v7[14])))
  {
    v9 = *(v3 + v7[15]) ^ *(v2 + v7[15]) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Int sub_1000BB320()
{
  Hasher.init(_seed:)();
  sub_10000C228(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000BB368()
{
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000BB3A8()
{
  result = qword_1001BAA30;
  if (!qword_1001BAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAA30);
  }

  return result;
}

uint64_t sub_1000BB408@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 sub_1000BB418(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BB42C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BB46C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000BB4C0()
{
  sub_1000BB5B0(319, &qword_1001BAAA0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000BB5B0(319, &unk_1001BAAA8);
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = type metadata accessor for AssetCost();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1000BB5B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

Swift::Int sub_1000BB604()
{
  Hasher.init(_seed:)();
  sub_10000C228(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000BB68C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000BB718(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v4 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  result = *(a1 + 32);
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  v8 = *(v4 + 64);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *(a2 + 64);
  if (result != *(a2 + 32) || *(v4 + 40) != *(a2 + 40))
  {
    v13 = *(v4 + 48);
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v13;
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v14 = 0;
  v15 = 1;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (!v9)
  {
    return 0;
  }

  if (v6 == v10 && v7 == v9)
  {
    if (((v11 ^ v8) & 1) == 0)
    {
      while (v2 != v15)
      {
        if (v15 >= v2)
        {
          __break(1u);
          return result;
        }

        result = *(v4 + v14 + 72);
        v6 = *(v4 + v14 + 88);
        v7 = *(v4 + v14 + 96);
        v8 = *(v4 + v14 + 104);
        v10 = *(v3 + v14 + 88);
        v9 = *(v3 + v14 + 96);
        v11 = *(v3 + v14 + 104);
        if (result != *(v3 + v14 + 72) || *(v4 + v14 + 80) != *(v3 + v14 + 80))
        {
          v28 = v15;
          v19 = v14;
          v20 = *(v3 + v14 + 96);
          v21 = v7;
          v22 = v2;
          v23 = v4;
          v24 = v3;
          v25 = v10;
          v26 = v11;
          v27 = v6;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v6 = v27;
          v11 = v26;
          v10 = v25;
          v3 = v24;
          v4 = v23;
          v2 = v22;
          v7 = v21;
          v9 = v20;
          v14 = v19;
          v15 = v28;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v14 += 40;
        ++v15;
        if (v7)
        {
          goto LABEL_10;
        }

LABEL_17:
        result = 0;
        if (v9)
        {
          return result;
        }

LABEL_18:
        if ((v11 ^ v8))
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v17)
  {
    goto LABEL_18;
  }

  return result;
}

unint64_t sub_1000BB8F8()
{
  result = type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    result = sub_1000BB98C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000BB98C()
{
  result = qword_1001BAB78;
  if (!qword_1001BAB78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001BAB78);
  }

  return result;
}

uint64_t type metadata accessor for RemoteXPCReceivedMessage()
{
  result = qword_1001BAC20;
  if (!qword_1001BAC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BBA5C()
{
  sub_1000BBB08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for XPCDictionary();
    if (v1 <= 0x3F)
    {
      type metadata accessor for audit_token_t(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000BBB08()
{
  result = qword_1001BAC30;
  if (!qword_1001BAC30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001BAC30);
  }

  return result;
}

uint64_t sub_1000BBB64()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BABB0);
  sub_10000641C(v0, qword_1001BABB0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_1000BBC50()
{
  v1 = type metadata accessor for XPCDictionary();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteXPCReceivedMessage();
  if (*(v0 + *(v6 + 24)) == 1)
  {
    (*(v2 + 16))(v5, v0 + *(v6 + 20), v1);
    XPCDictionary.encode<A>(_:forKey:)();
    XPCDictionary.reply(_:)();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (qword_1001B8918 != -1)
    {
      sub_100005114();
    }

    v7 = type metadata accessor for Logger();
    sub_10000641C(v7, qword_1001BABB0);
    v11 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v11, v8, "remoteXPC reply was called when message does not expect a reply", v9, 2u);
    }

    v10 = v11;
  }
}

uint64_t sub_1000BBFD0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  result = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  return result;
}

void sub_1000BC00C()
{
  type metadata accessor for AssetPolicy();
  if (v0 <= 0x3F)
  {
    sub_1000BC0B8();
    if (v1 <= 0x3F)
    {
      sub_1000BC108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000BC0B8()
{
  if (!qword_1001BACD8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BACD8);
    }
  }
}

void sub_1000BC108()
{
  if (!qword_1001BACE0)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BACE0);
    }
  }
}

void sub_1000BC160(uint64_t a1, uint64_t a2)
{
  if ((sub_100116A30(a1, a2) & 1) == 0)
  {
    return;
  }

  v4 = _s6PolicyVMa_0();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*v6 != *v8)
  {
    LOBYTE(v9) = 1;
  }

  if ((v9 & 1) == 0)
  {
LABEL_8:
    if (*(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
    {
      v10 = v4[8];
      v11 = *(a1 + v10);
      v12 = *(a2 + v10);

      sub_10007B664();
    }
  }
}

uint64_t sub_1000BC220()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BAD20);
  sub_10000641C(v0, qword_1001BAD20);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BC294()
{
  swift_defaultActor_initialize();
  if (TRIClient)
  {
    v1 = [objc_opt_self() client];
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 112) = v1;
  return v0;
}

uint64_t sub_1000BC2EC()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 experimentIdentifiersWithNamespaceName:v3];

    if (v4)
    {

      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v1);
  return v4;
}

id sub_1000BC384()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 112);
  if (v2 && (v3 = String._bridgeToObjectiveC()(), v4 = String._bridgeToObjectiveC()(), v5 = [v2 levelForFactor:v3 withNamespaceName:v4], v3, v4, v5))
  {
    v6 = [v5 longValue];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v1);
  return v6;
}

void sub_1000BC460(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_autoreleasePoolPush();
  v10 = *(v4 + 112);
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = v4;
    v12[5] = a3;
    v12[6] = a4;
    v20[4] = sub_1000BCDA4;
    v20[5] = v12;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_1000BCB44;
    v20[3] = &unk_1001B1110;
    v13 = _Block_copy(v20);

    v14 = [v10 addUpdateHandlerForNamespaceName:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  objc_autoreleasePoolPop(v9);
  if (qword_1001B8920 != -1)
  {
    sub_100005134();
  }

  v15 = type metadata accessor for Logger();
  sub_10000641C(v15, qword_1001BAD20);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100004A3C(a1, a2, v20);
    _os_log_impl(&_mh_execute_header, v16, v17, "Added update handler for namespace %s", v18, 0xCu);
    sub_100003324(v19);
    sub_100002BB8();
    sub_100002BB8();
  }
}

uint64_t sub_1000BC6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for TaskPriority();
  sub_100009BFC(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = a6;

  sub_1000652FC();
}

uint64_t sub_1000BC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000BC7F0, 0, 0);
}

uint64_t sub_1000BC7F0()
{
  v12 = v0;
  if (qword_1001B8920 != -1)
  {
    sub_100005134();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BAD20);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004A3C(v6, v5, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Received update for namespace %s", v7, 0xCu);
    sub_100003324(v8);
    sub_100002BB8();
    sub_100002BB8();
  }

  v9 = v0[4];

  return _swift_task_switch(sub_1000BC95C, v9, 0);
}

uint64_t sub_1000BC95C()
{
  sub_100002BAC();
  v1 = v0[5];
  [*(v0[4] + 112) refresh];
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1000BCA54;
  v4 = v0[6];

  return v6();
}

uint64_t sub_1000BCA54()
{
  sub_100002BAC();
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000BCB44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000BCBA4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000BCC00(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_1000BCC24, v4, 0);
}

uint64_t sub_1000BCC24()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1000BC2EC();
  v5 = v0[1];
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_1000BCC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return _swift_task_switch(sub_1000BCCB0, v6, 0);
}

uint64_t sub_1000BCCB0()
{
  sub_100002BAC();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_1000BC384();
  v7 = v0[1];
  v9 = v8 & 1;

  return v7(v6, v9);
}

uint64_t sub_1000BCD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return _swift_task_switch(sub_1000BCD40, v6, 0);
}

uint64_t sub_1000BCD40()
{
  sub_100002BAC();
  v1 = v0[6];
  sub_1000BC460(v0[2], v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000BCDB4(uint64_t a1)
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
  v11[1] = sub_1000BCE90;

  return sub_1000BC7C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000BCE90()
{
  sub_100002BAC();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1000BCF80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1000BCFC4()
{
  result = qword_1001BAE08;
  if (!qword_1001BAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAE08);
  }

  return result;
}

uint64_t sub_1000BD028()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BAE10);
  sub_10000641C(v0, qword_1001BAE10);
  return generalLogHandle.getter();
}

uint64_t sub_1000BD074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppExtensionIdentity();
  v6 = sub_100002BDC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002B8C();
  v13 = v12 - v11;
  v14 = type metadata accessor for UUID();
  v15 = sub_100002BDC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100002B8C();
  v22 = v21 - v20;
  (*(v17 + 16))(v21 - v20, a1, v14);
  v23 = objc_allocWithZone(LSApplicationExtensionRecord);
  sub_1000BF37C(v22);
  if (v2)
  {
    return (*(v17 + 8))(a1, v14);
  }

  AppExtensionIdentity.init(record:)();
  (*(v17 + 8))(a1, v14);
  return (*(v8 + 32))(a2, v13, v5);
}

uint64_t sub_1000BD230()
{
  v1 = type metadata accessor for EKExtensionIdentity(0);
  v2 = sub_100002F04(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v7 = v6 - v5;
  v8 = AppExtensionIdentity.attributes.getter();
  type metadata accessor for InferenceProviderXPCSender();
  v9 = static InferenceProviderXPCSender.inferenceProviderIdentifierKey.getter();
  sub_100072CDC(v9, v10, v8, v32);

  if (v33)
  {
    sub_10006B8DC(v32, v34);
    sub_10000603C(v34, v32);
    if (swift_dynamicCast())
    {
      sub_100003324(v34);
      return v30;
    }

    if (qword_1001B8928 != -1)
    {
      sub_100002CEC();
    }

    v21 = type metadata accessor for Logger();
    sub_10000641C(v21, qword_1001BAE10);
    sub_10000603C(v34, v32);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_10000603C(v32, &v30);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_100003324(v32);
      v29 = sub_100004A3C(v26, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Found inference provider extension, but with invalid InferenceProviderIdentifier value: %s", v24, 0xCu);
      sub_100003324(v25);
      sub_100002BB8();
      sub_100002BB8();
    }

    else
    {

      sub_100003324(v32);
    }

    sub_100003324(v34);
  }

  else
  {
    sub_10000ED30(v32, &unk_1001BB100, &qword_100171BA0);
    if (qword_1001B8928 != -1)
    {
      sub_100002CEC();
    }

    v12 = type metadata accessor for Logger();
    sub_10000641C(v12, qword_1001BAE10);
    sub_1000714C8(v0, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v34[0] = v16;
      *v15 = 136315138;
      v17 = AppExtensionIdentity.bundleIdentifier.getter();
      v19 = v18;
      sub_10007152C(v7);
      v20 = sub_100004A3C(v17, v19, v34);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Found inference provider extension %s, but it lacks an InferenceProviderIdentifier key", v15, 0xCu);
      sub_100003324(v16);
      sub_100002BB8();
      sub_100002BB8();
    }

    else
    {

      sub_10007152C(v7);
    }
  }

  return 0;
}

uint64_t sub_1000BD5AC()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for AppExtensionIdentity();
  v1[4] = v3;
  sub_100002F44(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_100002C58();
  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000BD654()
{
  sub_100002BAC();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = type metadata accessor for EKExtensionProcess(0);
  v0[7] = v1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000BD718;
  v5 = v0[6];

  return sub_1000BD9A0();
}

uint64_t sub_1000BD718(uint64_t a1)
{
  sub_100001EF4();
  v5 = v4;
  v6 = *(v4 + 64);
  v7 = *v2;
  sub_100002B9C();
  *v8 = v7;
  *(v5 + 72) = v1;

  if (!v1)
  {
    *(v5 + 80) = a1;
  }

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000BD830()
{
  sub_100002BAC();
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[2];
  v3[3] = v0[7];
  v3[4] = &off_1001B11A0;
  *v3 = v1;

  sub_100001F00();

  return v4();
}

uint64_t sub_1000BD8A4()
{
  sub_100002BAC();
  v1 = *(v0 + 48);

  sub_100001F00();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1000BD908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000BD5AC();
}

uint64_t sub_1000BD9A0()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for AppExtensionProcess();
  v1[4] = v3;
  sub_100002F44(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_100002C58();
  v7 = type metadata accessor for AppExtensionProcess._InstanceIdentifier();
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v1[7] = sub_100002C58();
  v10 = type metadata accessor for AppExtensionIdentity();
  v1[8] = v10;
  sub_100002F44(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = sub_100002C58();
  v14 = type metadata accessor for AppExtensionProcess.Configuration();
  v1[11] = v14;
  sub_100002F44(v14);
  v1[12] = v15;
  v17 = *(v16 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1000059F8();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000BDB14()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[2];
  v9 = v0[3];
  swift_defaultActor_initialize();
  (*(v6 + 16))(v5, v10, v7);
  AppExtensionProcess.Configuration.init(appExtensionIdentity:onInterruption:)();
  AppExtensionProcess._InstanceIdentifier.init()();
  AppExtensionProcess.Configuration._instanceIdentifier.setter();
  (*(v4 + 16))(v1, v2, v3);
  v11 = async function pointer to AppExtensionProcess.init(configuration:)[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1000BDC54;
  v13 = v0[13];
  v14 = v0[6];

  return AppExtensionProcess.init(configuration:)(v14, v13);
}

uint64_t sub_1000BDC54()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = *(v2 + 120);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000BDD54()
{
  sub_100002BAC();
  v1 = v0[3];
  (*(v0[5] + 32))(v1 + OBJC_IVAR____TtC13modelmanagerd18EKExtensionProcess_process, v0[6], v0[4]);

  return _swift_task_switch(sub_1000BDDD4, v1, 0);
}

uint64_t sub_1000BDDD4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[6];
  (*(v0[9] + 8))(v0[2], v0[8]);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];
  v9 = v0[3];

  return v8(v9);
}

uint64_t sub_1000BDEB4()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v13 = v0[6];
  v7 = v0[2];
  v6 = v0[3];
  (*(v0[12] + 8))(v0[14], v0[11]);
  type metadata accessor for EKExtensionProcess(0);
  swift_defaultActor_destroy();
  (*(v2 + 8))(v7, v4);
  v8 = *(*v6 + 48);
  v9 = *(*v6 + 52);
  swift_deallocPartialClassInstance();

  sub_100001F00();
  v11 = v0[16];

  return v10();
}

uint64_t sub_1000BDFE8()
{
  result = AppExtensionProcess._auditToken.getter();
  if ((v1 & 0x8000000000000000) == 0)
  {
    return HIDWORD(v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BE020@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for XPCSession.InitializationOptions();
  v4 = sub_100002F04(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002B8C();
  result = AppExtensionProcess._makeLibXPCConnection()();
  if (!v1)
  {
    v8 = type metadata accessor for XPCSession();
    swift_unknownObjectRetain();
    static XPCSession.InitializationOptions.none.getter();
    v9 = XPCSession.__allocating_init(fromConnection:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
    a1[3] = v8;
    a1[4] = &protocol witness table for XPCSession;
    result = swift_unknownObjectRelease();
    *a1 = v9;
  }

  return result;
}

void sub_1000BE144(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for XPCReceivedMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  if (qword_1001B8928 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000641C(v12, qword_1001BAE10);
  v13 = *(v5 + 16);
  v13(v11, a1, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v13(v9, v11, v4);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v5 + 8))(v11, v4);
    v22 = sub_100004A3C(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unexpected message received from InferenceProvider XPC service: %s", v17, 0xCu);
    sub_100003324(v18);

    a2 = v23;
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  a2[3] = &type metadata for String;
  a2[4] = &protocol witness table for String;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
}

void sub_1000BE3DC(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B8928 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000641C(v7, qword_1001BAE10);
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_1000BF5EC();
    swift_allocError();
    v8(v13, v6, v2);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Connection to InferenceProvider XPC service cancelled: %@", v11, 0xCu);
    sub_10000ED30(v12, &qword_1001B8F68, &qword_10016FB80);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1000BE630()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd18EKExtensionProcess_process;
  v2 = type metadata accessor for AppExtensionProcess();
  sub_1000055EC(v2);
  (*(v3 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000BE6C4()
{
  result = type metadata accessor for AppExtensionProcess();
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

uint64_t sub_1000BE760()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000BE780, v2, 0);
}

uint64_t sub_1000BE780()
{
  sub_100002BAC();
  v1 = *(v0 + 16);
  v2 = sub_1000BDFE8();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000BE7DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000BE7FC, v3, 0);
}

uint64_t sub_1000BE7FC()
{
  v1 = *(v0 + 24);
  sub_1000BE020(*(v0 + 16));
  sub_100001F00();

  return v2();
}

void sub_1000BE874(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EKExtensionIdentity(0);
  v5 = sub_100002F44(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002B8C();
  v12 = v11 - v10;
  v13 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v14 = sub_100002F04(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v19 = [a1 extensionIdentities];
  sub_10000E2C0(0, &qword_1001BB058, _EXExtensionIdentity_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_10000E8DC(v20);
  if (!v21)
  {

    v24 = _swiftEmptyArrayStorage;
LABEL_12:
    v27 = type metadata accessor for TaskPriority();
    sub_100009BFC(v18, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v2;
    v28[5] = v24;
    v29 = v2;
    sub_1000652FC();

    return;
  }

  v22 = v21;
  v33 = _swiftEmptyArrayStorage;
  sub_100070FC8();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v31 = v18;
    v32 = v2;
    v23 = 0;
    v24 = v33;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v20 + 8 * v23 + 32);
      }

      AppExtensionIdentity.init(_:)();
      v33 = v24;
      v26 = v24[2];
      if (v26 >= v24[3] >> 1)
      {
        sub_100070FC8();
        v24 = v33;
      }

      ++v23;
      v24[2] = v26 + 1;
      sub_1000BF4C8(v12, v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26);
    }

    while (v22 != v23);

    v18 = v31;
    v2 = v32;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1000BEB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000BEB34, 0, 0);
}

uint64_t sub_1000BEB34()
{
  v1 = v0[3];
  v2 = v0[2] + OBJC_IVAR____TtC13modelmanagerd15EKQueryDelegate_onUpdate;
  v3 = *v2;
  v4 = *(v2 + 8);
  sub_1000706AC();
  v6 = v5;
  v0[4] = v5;
  v10 = (v3 + *v3);
  v7 = v3[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1000BEC44;

  return v10(v6);
}

uint64_t sub_1000BEC44()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100001F00();

  return v6();
}

id sub_1000BEDE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000BEE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  os_unfair_lock_lock((v3 + 32));
  sub_1000BF090((v3 + 40));
  os_unfair_lock_unlock((v3 + 32));
  v8 = *(a1 + 16);
  if (v8)
  {
    v26 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = objc_allocWithZone(_EXQuery);

      v13 = String._bridgeToObjectiveC()();

      [v12 initWithExtensionPointIdentifier:v13];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = v26[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v15 = type metadata accessor for EKQueryDelegate();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC13modelmanagerd15EKQueryDelegate_onUpdate];
  *v17 = a2;
  *(v17 + 1) = a3;
  v25.receiver = v16;
  v25.super_class = v15;

  v18 = objc_msgSendSuper2(&v25, "init");
  v19 = objc_allocWithZone(_EXQueryController);
  sub_10000E2C0(0, &qword_1001BB038, _EXQuery_ptr);
  v20 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithQueries:isa delegate:{v20, v25.receiver, v25.super_class}];

  [v22 resume];
  os_unfair_lock_lock((v4 + 16));

  *(v4 + 24) = v20;
  v23 = v20;
  os_unfair_lock_unlock((v4 + 16));
  os_unfair_lock_lock((v4 + 32));

  *(v4 + 40) = v22;
  v24 = v22;
  os_unfair_lock_unlock((v4 + 32));
}

void sub_1000BF090(void *a1)
{
  if (!*a1)
  {
    if (qword_1001B8928 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000641C(v1, qword_1001BAE10);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "EK startQuery was called more than once", v4, 2u);
    }
  }
}

uint64_t *sub_1000BF178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = sub_100002BDC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002B8C();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, a1);
  a2[3] = type metadata accessor for EKExtensionIdentity(0);
  a2[4] = &off_1001B11E0;
  v13 = sub_10000366C(a2);
  result = sub_1000BD074(v11, v13);
  if (v2)
  {
    return sub_1000B5008(a2);
  }

  return result;
}

uint64_t sub_1000BF268()
{
  sub_10000ED30(v0 + 24, &qword_1001BB040, &qword_100171B30);
  sub_10000ED30(v0 + 40, &qword_1001BB048, &unk_100171B38);
  return v0;
}

uint64_t sub_1000BF2B0()
{
  sub_1000BF268();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000BF308()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

id sub_1000BF37C(uint64_t a1)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = 0;
  v5 = [v2 initWithUUID:isa error:&v13];

  v6 = v13;
  if (v5)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1000BF4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EKExtensionIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006F558;

  return sub_1000BEB14(a1, v4, v5, v7, v6);
}

unint64_t sub_1000BF5EC()
{
  result = qword_1001BB060;
  if (!qword_1001BB060)
  {
    type metadata accessor for XPCRichError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB060);
  }

  return result;
}

uint64_t sub_1000BF66C()
{
  result = type metadata accessor for AppExtensionIdentity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000BF6D8(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3 - 8);
  v33 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v38 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v6, 0);
  v7 = v38;
  result = sub_10001E724(a1);
  v11 = result;
  v12 = 0;
  v37 = a1 + 56;
  v30 = a1 + 64;
  v31 = v6;
  v32 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v13 = v11 >> 6;
      if ((*(v37 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_25;
      }

      v36 = v10;
      v35 = v9;
      v14 = v33;
      sub_1000192DC(*(a1 + 48) + *(v34 + 72) * v11, v33);
      v16 = *v14;
      v15 = v14[1];

      result = sub_100019338();
      v38 = v7;
      v18 = v7[2];
      v17 = v7[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10002045C((v17 > 1), v18 + 1, 1);
        v7 = v38;
      }

      v7[2] = v18 + 1;
      v19 = &v7[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
      if (v36)
      {
        goto LABEL_29;
      }

      a1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v11 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v37 + 8 * v13);
      if ((v21 & (1 << v11)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v32 + 36) != v35)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v23 = v31;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v23 = v31;
        v26 = (v30 + 8 * v13);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100016E94(v11, v35, 0);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v11, v35, 0);
      }

LABEL_19:
      if (++v12 == v23)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v20;
      if (v20 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000C0078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v6 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000C0124, 0, 0);
}

uint64_t sub_1000C0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  v19 = v18[17];
  if ((v19 & 0xC000000000000001) != 0)
  {
    if (v19 < 0)
    {
      v20 = v18[17];
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v21 = sub_100005B00();
    type metadata accessor for InferenceProviderAsset(v21);
    sub_1000056C4();
    sub_100011B14(v22, v23);
    sub_100001F70();
    result = Set.Iterator.init(_cocoa:)();
    v19 = v18[2];
    v25 = v18[3];
    v26 = v18[4];
    v27 = v18[5];
    v28 = v18[6];
  }

  else
  {
    v29 = *(v19 + 32);
    sub_100011E24();
    v25 = v19 + 56;
    v30 = *(v19 + 56);
    v26 = ~v31;
    sub_10000A5E8();
    v28 = v32 & v33;

    v27 = 0;
  }

  v81 = v26;
  v82 = v18 + 7;
  v34 = (v26 + 64) >> 6;
  v83 = v25;
  v84 = v19;
  v85 = v34;
  if (v19 < 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v35 = v27;
    v36 = v27;
    if (!v28)
    {
      break;
    }

LABEL_11:
    sub_1000062A0();
    v39 = v38 & v37;
    v40 = *(v19 + 48);
    sub_10004D404(v41);
    if (!v26)
    {
LABEL_27:
      v69 = sub_1000125D0();
      sub_100019334(v69, v70, v81, v27, v28);
      v71 = swift_task_alloc();
      v18[22] = v71;
      *v71 = v18;
      v71[1] = sub_1000C0504;
      v72 = v18[16];
      sub_1000494E8();
      sub_1000037A0();

      return v75(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, a14, sub_1000C0838, a16, a17, a18);
    }

    while (1)
    {
      v86 = v39;
      v44 = v18[20];
      v43 = v18[21];
      v46 = v18[18];
      v45 = v18[19];
      type metadata accessor for TaskPriority();
      sub_100042D9C();
      sub_100003978();
      sub_100009BFC(v47, v48, v49, v34);
      v50 = swift_allocObject();
      v50[2] = 0;
      a14 = v50 + 2;
      v50[3] = 0;
      v50[4] = v46;
      v50[5] = v45;
      v50[6] = v26;
      v51 = sub_1000071D0();
      sub_10001E72C(v51, v52, &qword_1001BB050, &qword_10016F6E0);
      sub_10000C6C0(v44, 1, v34);
      sub_100053114();

      v53 = v18[20];
      if (v43 == 1)
      {
        v54 = sub_100008004();
        sub_10000ED84(v54, v55);
      }

      else
      {
        TaskPriority.rawValue.getter();
        sub_1000076C8();
        v57 = *(v56 + 8);
        v58 = sub_100001F70();
        v59(v58);
      }

      if (*a14)
      {
        v60 = v50[3];
        v61 = *a14;
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100004CA4();
        v62 = dispatch thunk of Actor.unownedExecutor.getter();
        v64 = v63;
        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      v19 = v84;
      v65 = *v18[16];

      if (v64 | v62)
      {
        v66 = v18 + 7;
        *v82 = 0;
        v18[8] = 0;
        v18[9] = v62;
        v18[10] = v64;
      }

      else
      {
        v66 = 0;
      }

      v25 = v83;
      v26 = v18[21];
      v18[11] = 1;
      v18[12] = v66;
      v18[13] = v65;
      swift_task_create();

      v67 = sub_100008004();
      result = sub_10000ED84(v67, v68);
      v27 = v36;
      v28 = v86;
      v34 = v85;
      if ((v84 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_13:
      v42 = __CocoaSet.Iterator.next()();
      if (v42)
      {
        v18[15] = v42;
        type metadata accessor for InferenceProviderAsset(0);
        sub_1000358A4();
        swift_dynamicCast();
        v26 = v18[14];
        v36 = v27;
        v39 = v28;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      v28 = 0;
      goto LABEL_27;
    }

    ++v35;
    if (*(v25 + 8 * v36))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C0504()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  sub_100001F00();

  return v7();
}

uint64_t sub_1000C0624(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1000C071C;

  return v10(v6 + 16);
}

uint64_t sub_1000C071C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v8 + 32) = v0;

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C0814()
{
  sub_100001F00();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_1000C0838(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_1000C08D8, v4, v6);
}

uint64_t sub_1000C08D8()
{
  sub_100002BAC();
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    sub_100002F54();

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    sub_100065020(&qword_1001BB400, &qword_100171D88);
    sub_1000060CC();
    *v4 = v5;
    v6 = sub_1000035B8();

    return ThrowingTaskGroup.next(isolation:)(v6);
  }
}

uint64_t sub_1000C09D8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_1000C0BD8;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_1000C0ADC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000C0ADC()
{
  sub_100001ED0();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v2)
      {
        swift_willThrow();
      }

      sub_100001F00();

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  sub_100065020(&qword_1001BB400, &qword_100171D88);
  sub_1000060CC();
  *v7 = v8;
  v9 = sub_1000035B8();

  return ThrowingTaskGroup.next(isolation:)(v9);
}

uint64_t sub_1000C0BD8()
{
  sub_100001ED0();
  v1 = v0[11];
  if (v0[9])
  {
    v2 = v0[11];

    v1 = v0[9];
  }

  v3 = v0[7];
  v4 = v0[8];
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    sub_100001F00();

    return v5();
  }

  else
  {
    v0[9] = v1;
    v7 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    sub_100065020(&qword_1001BB400, &qword_100171D88);
    sub_1000060CC();
    *v8 = v9;
    v10 = sub_1000035B8();

    return ThrowingTaskGroup.next(isolation:)(v10);
  }
}

uint64_t sub_1000C0CE0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB110);
  sub_10000641C(v0, qword_1001BB110);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000C0D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1000C10D4(uint64_t a1, unsigned int *a2)
{
  sub_100005B00();
  State = type metadata accessor for LoadState();
  v6 = sub_100002BDC(State);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002B8C();
  sub_1000281B0();
  (*(v8 + 104))(v3, *a2, State);
  LOBYTE(a2) = sub_100116D68(v2, v3);
  v11 = *(v8 + 8);
  v12 = sub_1000DB0E0();
  v13(v12);
  return a2 & 1;
}

BOOL sub_1000C11B0()
{
  sub_10002A104();
  State = type metadata accessor for LoadState();
  v2 = sub_100002BDC(State);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  v10 = sub_1000DB320();
  v11(v10);
  v12 = sub_1000060A4();
  if (sub_100116D68(v12, v13))
  {
    v14 = *(v4 + 8);
    v15 = sub_10000D01C();
    v16(v15);
    return *(*(v0 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)) + 16) == 0;
  }

  v17 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v18 = sub_100116D68(v0 + *(v17 + 20), v9);
  v19 = *(v4 + 8);
  v20 = sub_10000D01C();
  v21(v20);
  if (v18)
  {
    return *(*(v0 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)) + 16) == 0;
  }

  return 0;
}

uint64_t sub_1000C12DC()
{
  v0 = sub_100005B00();
  v1 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(v0) + 32);
  return static Date.< infix(_:_:)() & 1;
}

uint64_t sub_1000C1318()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  v2 = *&v1[v0];

  v3 = sub_100001F70();
  sub_1000B55EC(v3, v4);
  sub_100003170();

  return v0;
}

BOOL sub_1000C16DC(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(State);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for LoadState.loaded(_:), State);
  v7 = sub_100116D68(a1, v6);
  (*(v3 + 8))(v6, State);
  if ((v7 & 1) != 0 && (v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), !*(*(a1 + *(v8 + 44)) + 16)))
  {
    return *(*(a1 + *(v8 + 48)) + 16) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_1000C1814()
{
  sub_1000055B0();
  v20 = v1;
  sub_1000494E8();
  v2 = type metadata accessor for Date();
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v9 = v0 + *(v8 + 36);
  v10 = v0 + *(v8 + 32);
  sub_10002B0EC();
  dispatch thunk of static Comparable.>= infix(_:_:)();
  v11 = *(v5 + 16);
  v12 = sub_1000DB374();
  v13 = v11(v12);
  __chkstk_darwin(v13);
  v14 = v20 + *(v8 + 36);
  v15 = v20 + *(v8 + 32);
  sub_100003754();
  dispatch thunk of static Comparable.>= infix(_:_:)();
  v16 = sub_1000DB380();
  v11(v16);
  static Date.< infix(_:_:)();
  v17 = *(v5 + 8);
  v18 = sub_1000DB38C();
  v17(v18);
  v19 = sub_1000062B0();
  v17(v19);
  sub_100002EEC();
}

uint64_t sub_1000C19A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100004B70(sub_1000C19C0, v2);
}

uint64_t sub_1000C19C0()
{
  sub_10000636C();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BB110);
  sub_100001F0C();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    sub_10000A05C();
    v7 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_100003DF0();
    *v7 = 136315138;
    v8 = sub_10000CF04();
    *(v7 + 4) = sub_100004A3C(v8, v9, v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "Enqueuing request to purge %s from all relavent assets", v7, 0xCu);
    sub_100002C88();
    sub_1000039CC();
  }

  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[2];
  v14 = swift_allocObject();
  v0[5] = v14;
  v14[2] = v11;
  v14[3] = v13;
  v14[4] = v12;
  v15 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v16 = swift_task_alloc();
  v0[6] = v16;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  *v16 = v0;
  v16[1] = sub_1000C1BF8;
  v17 = v0[4];
  sub_100003770();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v18, v19, v20);
}

uint64_t sub_1000C1BF8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v11 = *(v3 + 32);
    v10 = *(v3 + 40);

    v12 = sub_100002C10();

    return _swift_task_switch(v12, v13, v14);
  }

  return result;
}

uint64_t sub_1000C1CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  return _swift_task_switch(sub_1000C1D10, a2, 0);
}

uint64_t sub_1000C1D10()
{
  sub_1000033DC();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  v5 = *(v4 + v3);

  sub_10000D154();
  v9 = sub_1000D600C(v6, v7, v8);
  sub_100002D24();
  swift_beginAccess();
  sub_1000D9DB4(v9);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002FD0(v10, qword_1001BB110);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (sub_100003A34(v12))
  {
    sub_100002F10();
    v13 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v13 = 134218242;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *(v9 + 16);
    }

    *(v13 + 4) = v14;

    *(v13 + 12) = 2080;
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000056C4();
    sub_100011B14(v15, v16);
    Set.description.getter();
    sub_1000DB3D0();

    v17 = sub_100007B78();
    v20 = sub_100004A3C(v17, v18, v19);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Purging %ld assets %s", v13, 0x16u);
    sub_100003324(v4);
    sub_1000039CC();

    sub_100002BD0();
  }

  else
  {
    sub_1000DAF00();
  }

  sub_100002F54();

  return v21();
}

uint64_t sub_1000C1F40()
{
  sub_100001ED0();
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];

  sub_100001F00();

  return v5();
}

uint64_t sub_1000C1FB8()
{
  sub_100001ED0();
  sub_100003324(v0 + 7);
  sub_10000ED84((v0 + 2), &unk_1001B9CB0);
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];

  sub_100001F00();

  return v5();
}

uint64_t sub_1000C2050()
{
  sub_100002BAC();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 360) = v3;
  *(v1 + 136) = v4;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 160) = v5;
  sub_100002F44(v5);
  *(v1 + 168) = v6;
  v8 = *(v7 + 64);
  *(v1 + 176) = sub_100002C58();
  v9 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  *(v1 + 184) = sub_10000F0C0();
  *(v1 + 192) = swift_task_alloc();
  v12 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v12);
  v14 = *(v13 + 64);
  *(v1 + 200) = sub_100002C58();
  v15 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v15);
  v17 = *(v16 + 64);
  *(v1 + 208) = sub_100002C58();
  v18 = sub_100002C10();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000C218C()
{
  sub_100002BAC();
  sub_1000DAF50(v0[19]);
  swift_task_alloc();
  sub_100004B34();
  v0[27] = v1;
  *v1 = v2;
  v1[1] = sub_1000C2228;
  v3 = v0[18];
  v4 = sub_10004AE38();

  return sub_1000253E8(v4, v5);
}

uint64_t sub_1000C2228()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 216);
  *v4 = *v2;
  *(v3 + 224) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 152);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v25;
  a22 = v26;
  sub_100003284();
  a20 = v22;
  sub_100024640(v27, v28, &qword_1001B9CB0, &qword_100171E70);
  if (v22[15])
  {
    sub_1000DB4A4();
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v29 = v22[17];
    v30 = type metadata accessor for Logger();
    v22[29] = sub_10000641C(v30, qword_1001BB110);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = sub_100002F80(v32);
    v34 = v22[17];
    if (v33)
    {
      sub_100002F10();
      v35 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v35 = 134218242;
      *(v35 + 4) = *(v34 + 16);

      *(v35 + 12) = 2080;
      if (*(v34 + 16) == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = 115;
      }

      if (*(v34 + 16) == 1)
      {
        v37 = 0xE000000000000000;
      }

      else
      {
        v37 = 0xE100000000000000;
      }

      v38 = sub_100004A3C(v36, v37, &a10);

      *(v35 + 14) = v38;
      sub_100003DD0();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      sub_100003324(v24);
      sub_1000039CC();

      sub_100002BD0();
    }

    else
    {
      v69 = v22[17];
    }

    type metadata accessor for CustomAssetConfiguration();
    v22[30] = Dictionary.init(dictionaryLiteral:)();
    v70 = swift_task_alloc();
    v22[31] = v70;
    *v70 = v22;
    v70[1] = sub_1000C282C;
    v71 = v22[19];
    sub_1000031B8(v22[17]);
    sub_100003540();

    return sub_100023A48(v72, v73, v74);
  }

  else
  {
    sub_10000ED84((v22 + 12), &qword_1001B9CB0);
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v45 = v22[21];
    v44 = v22[22];
    v46 = v22[20];
    v47 = v22[18];
    v48 = type metadata accessor for Logger();
    sub_10000641C(v48, qword_1001BB110);
    v49 = sub_100008440();
    v50(v49);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = sub_1000038BC(v52);
    v55 = v22[21];
    v54 = v22[22];
    v56 = v22[20];
    if (v53)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_1000265BC();
      *v23 = 136315138;
      sub_10000950C();
      sub_100011B14(v57, v58);
      sub_100042FBC();
      sub_100045E40();
      v59 = sub_1000194A4();
      v60(v59);
      v61 = sub_10000CD1C();
      sub_100004A3C(v61, v62, v63);
      sub_100005974();

      *(v23 + 4) = v54;
      sub_1000033FC();
      _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
      sub_100003324(v45);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v77 = sub_1000194A4();
      v78(v77);
    }

    v79 = v22[18];
    v80 = type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v81, v82);
    sub_100007894();
    swift_allocError();
    v84 = v83;
    *v83 = InferenceProviderDescriptor.description.getter();
    v84[1] = v85;
    sub_100006098(v80);
    (*(v86 + 104))(v84);
    swift_willThrow();
    sub_10000ED84((v22 + 2), &qword_1001B9CB0);
    v88 = v22[25];
    v87 = v22[26];
    v90 = v22[23];
    v89 = v22[24];
    v91 = v22[22];

    sub_1000DABBC();
    sub_100003540();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000C27AC()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 224);
  sub_1000DB180();

  sub_100001F00();
  sub_100003D20();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000C282C()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v0 + 248);
  v6 = *v2;
  sub_100003744();
  *v7 = v6;
  *(v9 + 256) = v8;
  *(v9 + 264) = v1;

  sub_10000CC7C();
  v11 = *(v10 + 240);
  v12 = *(v0 + 152);

  sub_100007088();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000C2958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046544();
  sub_10000636C();
  v12 = v11[32];
  v13 = v11[19];
  sub_10002B524();
  v11[34] = v14;
  v15 = sub_10000E8DC(v14);
  v11[35] = v15;
  if (v15)
  {
    v16 = v11[34] & 0xC000000000000001;
    sub_100022A7C(0);
    if (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v11[34] + 32);
    }

    v11[36] = v17;
    v11[37] = 1;
    v19 = v11[25];
    v18 = v11[26];
    v20 = v11[24];
    v21 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_100018DEC(v21);
    sub_100065020(&qword_1001B94F0, &unk_100172060);
    v22 = sub_10000BF00();
    sub_100009BFC(v22, v23, v24, v25);
    v11[38] = type metadata accessor for AuditToken();
    sub_100003978();
    sub_100009BFC(v26, v27, v28, v29);
    v30 = swift_task_alloc();
    v31 = sub_100053C2C(v30);
    *v31 = v32;
    sub_100005A30(v31);
    sub_100023A30();

    return sub_100047A80();
  }

  else
  {
    v35 = v11[29];
    v36 = v11[34];

    Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (sub_10002BA24(v37))
    {
      v38 = sub_100007648();
      sub_10000A240(v38);
      sub_100053BD8(&_mh_execute_header, v39, v40, "Successfully acquired assets");
      sub_100002BD0();
    }

    sub_10005C1C0();
    sub_100043D74();
    sub_1000286AC(v10);

    sub_100003324(v11 + 7);
    sub_10000ED84((v11 + 2), &qword_1001B9CB0);

    sub_100002F54();
    sub_100023A30();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
  }
}

uint64_t sub_1000C2B58()
{
  sub_10000639C();
  sub_100003884();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = v0[39];
  *v4 = *v2;
  *(v3 + 320) = v1;

  sub_10000CC7C();
  v7 = *(v6 + 208);
  v8 = v0[25];
  v9 = v0[24];
  v10 = v0[19];
  sub_10000ED84(v9, &qword_1001BB3F8);
  sub_10000ED84(v8, &qword_1001BB408);
  sub_10000ED84(v7, &qword_1001BB410);
  sub_100007088();
  sub_100003D20();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000C2CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046544();
  sub_10000636C();
  if (*(v10 + 360))
  {
    v11 = swift_task_alloc();
    v12 = sub_1000530C4(v11);
    *v12 = v13;
    v12[1] = sub_1000C2F70;
    v14 = *(v10 + 152);
    sub_1000031B8(*(v10 + 288));
    sub_100023A30();

    return sub_1000486EC();
  }

  else
  {
    v17 = *(v10 + 288);

    v18 = *(v10 + 296);
    if (v18 == *(v10 + 280))
    {
      v19 = *(v10 + 232);
      v20 = *(v10 + 272);

      Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (sub_10002BA24(v21))
      {
        v22 = sub_100007648();
        sub_10000A240(v22);
        sub_100053BD8(&_mh_execute_header, v23, v24, "Successfully acquired assets");
        sub_100002BD0();
      }

      sub_10005C1C0();
      sub_100043D74();
      sub_1000286AC(v18);

      sub_100003324((v10 + 56));
      sub_10000ED84(v10 + 16, &qword_1001B9CB0);

      sub_100002F54();
      sub_100023A30();

      return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
    }

    else
    {
      v33 = *(v10 + 272) & 0xC000000000000001;
      sub_100022A7C(*(v10 + 296));
      if (v33)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v34 = result;
      }

      else
      {
        v34 = *(*(v10 + 272) + 8 * v18 + 32);
      }

      *(v10 + 288) = v34;
      *(v10 + 296) = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
      }

      else
      {
        v36 = *(v10 + 200);
        v35 = *(v10 + 208);
        v37 = *(v10 + 192);
        v38 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
        sub_100018DEC(v38);
        sub_100065020(&qword_1001B94F0, &unk_100172060);
        v39 = sub_10000BF00();
        sub_100009BFC(v39, v40, v41, v42);
        *(v10 + 304) = type metadata accessor for AuditToken();
        sub_100003978();
        sub_100009BFC(v43, v44, v45, v46);
        v47 = swift_task_alloc();
        v48 = sub_100053C2C(v47);
        *v48 = v49;
        sub_100005A30();
        sub_100023A30();

        return sub_100047A80();
      }
    }
  }

  return result;
}

uint64_t sub_1000C2F70()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 328);
  *v4 = *v2;
  *(v3 + 336) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 152);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C3084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046544();
  sub_10000636C();
  v11 = v10[36];

  v12 = v10[37];
  if (v12 == v10[35])
  {
    v13 = v10[29];
    v14 = v10[34];

    Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (sub_10002BA24(v15))
    {
      v16 = sub_100007648();
      sub_10000A240(v16);
      sub_100053BD8(&_mh_execute_header, v17, v18, "Successfully acquired assets");
      sub_100002BD0();
    }

    sub_10005C1C0();
    sub_100043D74();
    sub_1000286AC(v12);

    sub_100003324(v10 + 7);
    sub_10000ED84((v10 + 2), &qword_1001B9CB0);

    sub_100002F54();
    sub_100023A30();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    v28 = v10[34] & 0xC000000000000001;
    sub_100022A7C(v10[37]);
    if (v28)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v29 = result;
    }

    else
    {
      v29 = *(v10[34] + 8 * v12 + 32);
    }

    v10[36] = v29;
    v10[37] = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      v31 = v10[25];
      v30 = v10[26];
      v32 = v10[24];
      v33 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      sub_100018DEC(v33);
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      v34 = sub_10000BF00();
      sub_100009BFC(v34, v35, v36, v37);
      v10[38] = type metadata accessor for AuditToken();
      sub_100003978();
      sub_100009BFC(v38, v39, v40, v41);
      v42 = swift_task_alloc();
      v43 = sub_100053C2C(v42);
      *v43 = v44;
      sub_100005A30();
      sub_100023A30();

      return sub_100047A80();
    }
  }

  return result;
}

uint64_t sub_1000C3288()
{
  sub_10000639C();
  sub_100003884();
  sub_100003324((v0 + 56));
  sub_10000ED84(v0 + 16, &qword_1001B9CB0);
  v1 = *(v0 + 264);
  sub_1000DB180();

  sub_100001F00();
  sub_100003D20();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000C3328()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[44];
  v3 = v1[34];
  v4 = v1[23];
  v5 = v1[19];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_10000ED84(v4, &qword_1001BB3F8);

  return _swift_task_switch(sub_1000C3478, v5, 0);
}

uint64_t sub_1000C3478()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[43];
  v2 = v0[32];
  swift_willThrow();
  sub_1000286AC(v2);

  sub_100003324(v0 + 7);
  sub_10000ED84((v0 + 2), &qword_1001B9CB0);
  v3 = v0[43];
  sub_1000DB180();

  sub_100001F00();
  sub_100003D20();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000C3534()
{
  sub_10000639C();
  sub_100003884();
  v0[43] = v0[40];
  v2 = v0[36];
  v3 = v0[29];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_10000A098())
  {
    sub_10000A05C();
    swift_slowAlloc();
    v5 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v6;
    *v5 = v6;
    sub_1000031C4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_10000ED84(v5, &qword_1001B8F68);
    sub_1000039CC();

    sub_10000BFCC();
  }

  v12 = v0[38];
  v13 = v0[23];

  v14 = sub_10000BF00();
  sub_100009BFC(v14, v15, v16, v12);
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_1000C3328;
  v18 = v0[23];
  v19 = v0[19];
  sub_1000031B8(v0[34]);
  sub_100003D20();

  return sub_1000D5B74(v20, v21);
}

uint64_t sub_1000C369C()
{
  sub_10000639C();
  sub_100003884();
  v0[43] = v0[42];
  v2 = v0[36];
  v3 = v0[29];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_10000A098())
  {
    sub_10000A05C();
    swift_slowAlloc();
    v5 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v6;
    *v5 = v6;
    sub_1000031C4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_10000ED84(v5, &qword_1001B8F68);
    sub_1000039CC();

    sub_10000BFCC();
  }

  v12 = v0[38];
  v13 = v0[23];

  v14 = sub_10000BF00();
  sub_100009BFC(v14, v15, v16, v12);
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_1000C3328;
  v18 = v0[23];
  v19 = v0[19];
  sub_1000031B8(v0[34]);
  sub_100003D20();

  return sub_1000D5B74(v20, v21);
}

uint64_t sub_1000C3804()
{
  sub_100001ED0();
  v1 = v0[44];
  v2 = swift_task_alloc();
  v0[45] = v2;
  sub_1000DB098(v2);
  v3 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_1000C38E4;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000C38E4()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 376) = v0;

  if (!v0)
  {
    v9 = *(v3 + 360);
  }

  sub_1000059F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C39E4()
{
  sub_100002BAC();
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[19];

  v4 = sub_10000C634();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C4258()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];

  v4 = v0[47];
  sub_100015660();

  sub_100001F00();
  sub_100007BB8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000C4B10()
{
  sub_10001881C();
  sub_100003884();
  v1 = *(v0 + 384);

  v2 = *(v0 + 400);
  sub_100015660();

  sub_100001F00();
  sub_100007BB8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000C4BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 82) = v11;
  *(v8 + 81) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 80) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 64) = *a1;
  return _swift_task_switch(sub_1000C4BE8, 0, 0);
}

uint64_t sub_1000C4D98()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100001F00();

  return v5();
}

uint64_t sub_1000C4E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v13 = *(v12 + 352);
  sub_10001E5B8();

  sub_100001F00();
  sub_1000062BC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1000C4F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_10000ED84(v12 + 16, &qword_1001B9CB0);
  sub_100003324((v12 + 56));
  v13 = *(v12 + 408);
  sub_10001E5B8();

  sub_100001F00();
  sub_1000062BC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1000C4FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v27;
  a24 = v28;
  sub_100005EA4();
  a22 = v24;
  v29 = v24[54];
  v30 = sub_1000DB02C();
  v31(v30);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAEE8();

  v33 = sub_1000264AC();
  v34 = v24[48];
  v36 = v24[38];
  v35 = v24[39];
  v37 = v24[37];
  if (v33)
  {
    sub_100002F10();
    swift_slowAlloc();
    a10 = sub_1000039DC();
    sub_1000033D0();
    v64 = swift_slowAlloc();
    a13 = v64;
    *v32 = 136315394;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    sub_1000494F4();
    sub_1000530B8();
    v38 = sub_100004CB0();
    v34(v38);
    sub_100004A3C(v26, v25, &a13);
    sub_100019498();

    sub_100003760();
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v39;
    *a10 = v39;
    sub_10000C720();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    sub_10000ED84(a10, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v64);
    sub_100002BD0();

    sub_10000BFCC();
  }

  else
  {

    v45 = sub_100004CB0();
    v34(v45);
  }

  v46 = v24[10];
  v47 = v24[11];
  sub_100010BB8(v24 + 7);
  v63 = sub_1000DB334();
  sub_100004B94();
  v65 = v48 + *v48;
  v50 = *(v49 + 4);
  v51 = swift_task_alloc();
  v52 = sub_100050FE4(v51);
  *v52 = v53;
  sub_1000185FC(v52);
  sub_100003D04();

  return v57(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, v63, v65, a13, a14, a15, a16);
}

uint64_t sub_1000C5244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v27;
  a24 = v28;
  sub_100005EA4();
  a22 = v24;
  v29 = v24[56];

  v30 = v24[59];
  v31 = sub_1000DB02C();
  v32(v31);
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAEE8();

  v34 = sub_1000264AC();
  v35 = v24[48];
  v37 = v24[38];
  v36 = v24[39];
  v38 = v24[37];
  if (v34)
  {
    sub_100002F10();
    swift_slowAlloc();
    a10 = sub_1000039DC();
    sub_1000033D0();
    v65 = swift_slowAlloc();
    a13 = v65;
    *v33 = 136315394;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    sub_1000494F4();
    sub_1000530B8();
    v39 = sub_100004CB0();
    v35(v39);
    sub_100004A3C(v26, v25, &a13);
    sub_100019498();

    sub_100003760();
    swift_errorRetain();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v40;
    *a10 = v40;
    sub_10000C720();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    sub_10000ED84(a10, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v65);
    sub_100002BD0();

    sub_10000BFCC();
  }

  else
  {

    v46 = sub_100004CB0();
    v35(v46);
  }

  v47 = v24[10];
  v48 = v24[11];
  sub_100010BB8(v24 + 7);
  v64 = sub_1000DB334();
  sub_100004B94();
  v66 = v49 + *v49;
  v51 = *(v50 + 4);
  v52 = swift_task_alloc();
  v53 = sub_100050FE4(v52);
  *v53 = v54;
  sub_1000185FC(v53);
  sub_100003D04();

  return v58(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, v64, v66, a13, a14, a15, a16);
}

uint64_t sub_1000C54A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_1000286AC(v12[50]);

  sub_10000ED84((v12 + 2), &qword_1001B9CB0);
  sub_100003324(v12 + 7);
  v13 = v12[61];
  sub_10001E5B8();

  sub_100001F00();
  sub_1000062BC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1000C5580()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 312);
  *v4 = *v2;
  *(v3 + 320) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 192);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C5694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  v14 = *(v12 + 320);
  sub_10005732C();
  v15 = *(v12 + 128);
  sub_100003370((v12 + 96), *(v12 + 120));
  v16 = *(v15 + 32);
  v17 = sub_10000D0E8();
  v18(v17, v15);

  sub_100003324((v12 + 96));
  sub_1000DADE8();
  AssetCost.onDeviceMemory.getter();
  v19 = sub_10003638C();
  v20(v19);
  if (sub_10003EC04() >= v13)
  {
    v25 = *(v12 + 288);
    Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v26))
    {
LABEL_6:
      sub_1000133B8();

      sub_100002F54();
      goto LABEL_7;
    }

LABEL_5:
    v27 = sub_100007648();
    sub_10000BF10(v27);
    sub_1000195D4(&_mh_execute_header);
    sub_10000BFCC();

    goto LABEL_6;
  }

  v21 = *(v12 + 184);
  v22 = *(v12 + 192);
  sub_10004FAAC();
  v24 = sub_10002B164(v23);
  if (v14)
  {
    sub_1000DAC40();

    sub_100001F00();
LABEL_7:
    sub_100016688();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  v37 = v24;
  if (!v24)
  {
    v43 = *(v12 + 288);
    Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v44))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v38 = *(v12 + 240);
  *(v12 + 304) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_1000DB1C0();
  v39 = *(v12 + 48);
  sub_100003370((v12 + 16), *(v12 + 40));
  v40 = sub_100009E94();
  v41(v40);
  v42 = *(v12 + 288);
  sub_100003324((v12 + 16));

  v45 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAEE8();

  if (sub_100042D00())
  {
    sub_10000A05C();
    v46 = swift_slowAlloc();
    sub_1000033D0();
    v78 = swift_slowAlloc();
    sub_1000DB48C(4.8149e-34);
    sub_100027434();
    sub_1000DAF38();

    v47 = sub_100004CB0();
    sub_100004A3C(v47, v48, v49);
    sub_100005974();

    *(v46 + 4) = v37;
    sub_10000A39C(&_mh_execute_header, v50, v51, "unloadIfNeededToMakeRoom unloading %s");
    sub_100003324(v78);
    sub_100005864();

    sub_100002BD0();
  }

  if (*(v37 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
  {
    v52 = *(v12 + 344);
    v53 = *(v12 + 256);
    v54 = *(v12 + 232);
    v55 = *(v12 + 208);
    v56 = *(v12 + 216);
    sub_100005C78();
    v57 = sub_10000CF04();
    sub_1000192DC(v57, v58);
    v59 = sub_100057838();
    v60(v59);
    v61 = sub_1000125D0();
    v63 = sub_100116D68(v61, v62);
    v64 = *(v12 + 256);
    if (v63)
    {
      v65 = sub_1000440CC();
      v66(v65);
      sub_100008654();
      sub_100019338();
LABEL_20:
      v69 = swift_task_alloc();
      v70 = sub_100053C2C(v69);
      *v70 = v71;
      sub_10000A24C();
      sub_100005F60();
      sub_100016688();

      return sub_1000486EC();
    }

    sub_10002B334();
    sub_1000DB080();
    v67 = sub_100003754();
    v68(v67);
    sub_100008654();
    sub_100019338();
    if (v54)
    {
      goto LABEL_20;
    }
  }

  v73 = sub_1000DB26C();
  sub_100007098(v73);
  v74 = swift_task_alloc();
  v75 = sub_1000530C4(v74);
  *v75 = v76;
  sub_100009C64();
  sub_100005F60();
  sub_100016688();

  return sub_10002BA5C();
}

uint64_t sub_1000C5B5C()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v0 + 328);
  *v4 = *v2;
  *(v3 + 336) = v1;

  sub_10000CC7C();
  v7 = *(v0 + 192);
  sub_10000ED84(*(v6 + 200), &qword_1001BB3F8);
  sub_100007088();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C5C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  v14 = *(v12 + 336);
  sub_10005732C();
  v15 = *(v12 + 128);
  sub_100003370((v12 + 96), *(v12 + 120));
  v16 = *(v15 + 32);
  v17 = sub_10000D0E8();
  v18(v17, v15);

  sub_100003324((v12 + 96));
  sub_1000DADE8();
  AssetCost.onDeviceMemory.getter();
  v19 = sub_10003638C();
  v20(v19);
  if (sub_10003EC04() >= v13)
  {
    v25 = *(v12 + 288);
    Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v26))
    {
LABEL_6:
      sub_1000133B8();

      sub_100002F54();
      goto LABEL_7;
    }

LABEL_5:
    v27 = sub_100007648();
    sub_10000BF10(v27);
    sub_1000195D4(&_mh_execute_header);
    sub_10000BFCC();

    goto LABEL_6;
  }

  v21 = *(v12 + 184);
  v22 = *(v12 + 192);
  sub_10004FAAC();
  v24 = sub_10002B164(v23);
  if (v14)
  {
    sub_1000DAC40();

    sub_100001F00();
LABEL_7:
    sub_100016688();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  v37 = v24;
  if (!v24)
  {
    v43 = *(v12 + 288);
    Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v44))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v38 = *(v12 + 240);
  *(v12 + 304) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_1000DB1C0();
  v39 = *(v12 + 48);
  sub_100003370((v12 + 16), *(v12 + 40));
  v40 = sub_100009E94();
  v41(v40);
  v42 = *(v12 + 288);
  sub_100003324((v12 + 16));

  v45 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAEE8();

  if (sub_100042D00())
  {
    sub_10000A05C();
    v46 = swift_slowAlloc();
    sub_1000033D0();
    v78 = swift_slowAlloc();
    sub_1000DB48C(4.8149e-34);
    sub_100027434();
    sub_1000DAF38();

    v47 = sub_100004CB0();
    sub_100004A3C(v47, v48, v49);
    sub_100005974();

    *(v46 + 4) = v37;
    sub_10000A39C(&_mh_execute_header, v50, v51, "unloadIfNeededToMakeRoom unloading %s");
    sub_100003324(v78);
    sub_100005864();

    sub_100002BD0();
  }

  if (*(v37 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
  {
    v52 = *(v12 + 344);
    v53 = *(v12 + 256);
    v54 = *(v12 + 232);
    v55 = *(v12 + 208);
    v56 = *(v12 + 216);
    sub_100005C78();
    v57 = sub_10000CF04();
    sub_1000192DC(v57, v58);
    v59 = sub_100057838();
    v60(v59);
    v61 = sub_1000125D0();
    v63 = sub_100116D68(v61, v62);
    v64 = *(v12 + 256);
    if (v63)
    {
      v65 = sub_1000440CC();
      v66(v65);
      sub_100008654();
      sub_100019338();
LABEL_20:
      v69 = swift_task_alloc();
      v70 = sub_100053C2C(v69);
      *v70 = v71;
      sub_10000A24C(v70);
      sub_100005F60();
      sub_100016688();

      return sub_1000486EC();
    }

    sub_10002B334();
    sub_1000DB080();
    v67 = sub_100003754();
    v68(v67);
    sub_100008654();
    sub_100019338();
    if (v54)
    {
      goto LABEL_20;
    }
  }

  v73 = sub_1000DB26C();
  sub_100007098(v73);
  v74 = swift_task_alloc();
  v75 = sub_1000530C4(v74);
  *v75 = v76;
  sub_100009C64();
  sub_100005F60();
  sub_100016688();

  return sub_10002BA5C();
}

uint64_t sub_1000C6160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v19 = *(v16 + 320);
  sub_1000363BC();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100001F70();
  v20 = &loc_10016F000;
  if (swift_dynamicCast())
  {
    if (!*(v16 + 168))
    {
      v50 = *(v16 + 288);
      v51 = *(v16 + 296);

      v27 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v52))
      {
        v53 = *(v16 + 296);
        sub_10000A05C();
        v54 = swift_slowAlloc();
        sub_1000033D0();
        swift_slowAlloc();
        sub_100003DF0();
        *v54 = 136315138;

        sub_100027434();
        sub_100045E40();

        v55 = sub_10000CD1C();
        sub_100004A3C(v55, v56, v57);
        sub_100005974();

        *(v54 + 4) = v53;
        sub_100013710(&_mh_execute_header, v58, v59, "unloadIfNeededToMakeRoom hit InferenceProviderAssetManagerInternalError.assetInUse for %s - continuing");
        sub_100002C88();
        sub_1000039CC();
      }

      v60 = *v14;
      goto LABEL_15;
    }
  }

  sub_1000DAFF8();
  sub_100005C78();
  sub_1000192DC(&loc_10016F000 + v18, v15);
  v21 = sub_10004AE44();
  v22(v21);
  v23 = sub_100003754();
  v25 = sub_100116D68(v23, v24);
  v26 = *(v16 + 248);
  if ((v25 & 1) == 0)
  {
    (*(*(v16 + 216) + 8))(*(v16 + 224), *(v16 + 208));
    sub_100008654();
    sub_100019338();
    goto LABEL_9;
  }

  v28 = *(v16 + 216);
  v27 = *(v16 + 224);
  v29 = *(v16 + 208);
  v30 = sub_1000DAE98(*(v16 + 240));
  v17 = sub_100116D68(v30, v27);
  v31 = *(v28 + 8);
  v20 = (v28 + 8);
  v32 = sub_100003754();
  v33(v32);
  sub_100008654();
  sub_100019338();
  if ((v17 & 1) == 0)
  {
LABEL_9:
    sub_1000DB19C();
    sub_100007130(v17 + *(v26 + 60), v14);
    v43 = *(v16 + 80);
    v44 = *(v16 + 88);
    v45 = sub_1000060A4();
    sub_100003370(v45, v46);
    v47 = *(v44 + 32);
    v48 = sub_100001F0C();
    v49(v48, v44);

    sub_100003324(v14);
LABEL_10:
    sub_1000DAC40();

    sub_100001F00();
LABEL_25:
    sub_100003540();

    return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
  }

  v34 = *(v16 + 288);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10002B14C();

  if (sub_10000A098())
  {
    sub_10000A05C();
    swift_slowAlloc();
    v36 = sub_1000039DC();
    *v29 = 138412290;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v37;
    *v36 = v37;
    sub_1000031C4();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_10000ED84(v36, &qword_1001B8F68);
    sub_100002BD0();

    sub_10000BFCC();

    goto LABEL_16;
  }

LABEL_15:

LABEL_16:
  sub_1000DAF0C();
  v61 = *(v16 + 120);
  v62 = *(v16 + 128);
  v63 = sub_1000125D0();
  sub_100003370(v63, v64);
  v65 = *(v62 + 32);
  v66 = sub_10000E86C();
  v67(v66, v62);

  sub_100003324(v27);
  sub_1000DB15C();
  v68 = AssetCost.onDeviceMemory.getter();
  v69 = v20[1];
  v70 = sub_100003754();
  v71(v70);
  if (sub_10003EC04() >= v68)
  {
    v101 = *(v16 + 288);
    Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v102))
    {
LABEL_24:
      sub_1000133B8();

      sub_100002F54();
      goto LABEL_25;
    }

LABEL_23:
    v103 = sub_100007648();
    sub_10000BF10(v103);
    sub_1000195D4(&_mh_execute_header);
    sub_10000BFCC();

    goto LABEL_24;
  }

  v72 = *(v16 + 184);
  v73 = *(v16 + 192);
  sub_10004FAAC();
  v75 = sub_10002B164(v74);
  v76 = v75;
  if (!v75)
  {
    v113 = *(v16 + 288);
    Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v114))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v77 = v14 - 20;
  v78 = *(v16 + 240);
  v79 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  *(v16 + 304) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v80 = &v79[v75];
  sub_100004CBC();
  swift_beginAccess();
  sub_100007130(&v80[*(v78 + 60)], v77);
  v81 = *(v16 + 40);
  v82 = *(v16 + 48);
  v83 = sub_100007B78();
  sub_100003370(v83, v84);
  sub_1000DAFA0();
  v85 = sub_10000CD1C();
  v86(v85);
  v87 = *(v16 + 288);
  if (v61)
  {

    sub_100003324(v77);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.fault.getter();
    if (sub_100002F80(v89))
    {
      v90 = sub_100007648();
      sub_10000A240(v90);
      sub_100003DD0();
      _os_log_impl(v91, v92, v93, v94, v95, 2u);
      sub_100002BD0();
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v96, v97);
    v98 = sub_10000C700();
    sub_100027998(v98, v99);
    sub_1000080BC();
    (*(v100 + 104))();
    swift_willThrow();

    goto LABEL_10;
  }

  sub_100003324(v77);

  v115 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10000AC18();

  if (sub_100042D00())
  {
    sub_10000A05C();
    v116 = swift_slowAlloc();
    sub_1000033D0();
    v152 = swift_slowAlloc();
    *v116 = 136315138;

    sub_100027434();
    sub_1000DAF38();

    v117 = sub_100004CB0();
    sub_100004A3C(v117, v118, v119);
    sub_100005974();

    *(v116 + 4) = v76;
    sub_10000A39C(&_mh_execute_header, v120, v121, "unloadIfNeededToMakeRoom unloading %s");
    sub_100003324(v152);
    sub_100005864();

    sub_100002BD0();
  }

  if (*(v76 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
  {
    v122 = *(v16 + 344);
    v123 = *(v16 + 256);
    v124 = *(v16 + 232);
    v125 = *(v16 + 208);
    v126 = *(v16 + 216);
    sub_100005C78();
    v127 = sub_1000060A4();
    sub_1000192DC(v127, v128);
    v129 = sub_100057838();
    v130(v129);
    v131 = sub_1000125D0();
    v133 = sub_100116D68(v131, v132);
    v134 = *(v16 + 256);
    if (v133)
    {
      v135 = sub_1000440CC();
      v136(v135);
      sub_100008654();
      sub_100019338();
LABEL_36:
      v143 = swift_task_alloc();
      v144 = sub_100053C2C(v143);
      *v144 = v145;
      sub_10000A24C();
      sub_1000DAD60();
      sub_100003540();

      return sub_1000486EC();
    }

    v137 = *(v16 + 232);
    v138 = *(v16 + 208);
    v139 = *(v16 + 216);
    v140 = sub_1000DAE98(*(v16 + 240));
    sub_100116D68(v140, v137);
    sub_1000DB080();
    v141 = sub_1000060A4();
    v142(v141);
    sub_100008654();
    sub_100019338();
    if (v124)
    {
      goto LABEL_36;
    }
  }

  v147 = sub_1000DB26C();
  sub_100007098(v147);
  v148 = swift_task_alloc();
  v149 = sub_1000530C4(v148);
  *v149 = v150;
  sub_100009C64();
  sub_1000DAD60();
  sub_100003540();

  return sub_10002BA5C();
}

uint64_t sub_1000C6908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v19 = *(v16 + 336);
  sub_1000363BC();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100001F70();
  v20 = &loc_10016F000;
  if (swift_dynamicCast())
  {
    if (!*(v16 + 168))
    {
      v50 = *(v16 + 288);
      v51 = *(v16 + 296);

      v27 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v52))
      {
        v53 = *(v16 + 296);
        sub_10000A05C();
        v54 = swift_slowAlloc();
        sub_1000033D0();
        swift_slowAlloc();
        sub_100003DF0();
        *v54 = 136315138;

        sub_100027434();
        sub_100045E40();

        v55 = sub_10000CD1C();
        sub_100004A3C(v55, v56, v57);
        sub_100005974();

        *(v54 + 4) = v53;
        sub_100013710(&_mh_execute_header, v58, v59, "unloadIfNeededToMakeRoom hit InferenceProviderAssetManagerInternalError.assetInUse for %s - continuing");
        sub_100002C88();
        sub_1000039CC();
      }

      v60 = *v14;
      goto LABEL_15;
    }
  }

  sub_1000DAFF8();
  sub_100005C78();
  sub_1000192DC(&loc_10016F000 + v18, v15);
  v21 = sub_10004AE44();
  v22(v21);
  v23 = sub_100003754();
  v25 = sub_100116D68(v23, v24);
  v26 = *(v16 + 248);
  if ((v25 & 1) == 0)
  {
    (*(*(v16 + 216) + 8))(*(v16 + 224), *(v16 + 208));
    sub_100008654();
    sub_100019338();
    goto LABEL_9;
  }

  v28 = *(v16 + 216);
  v27 = *(v16 + 224);
  v29 = *(v16 + 208);
  v30 = sub_1000DAE98(*(v16 + 240));
  v17 = sub_100116D68(v30, v27);
  v31 = *(v28 + 8);
  v20 = (v28 + 8);
  v32 = sub_100003754();
  v33(v32);
  sub_100008654();
  sub_100019338();
  if ((v17 & 1) == 0)
  {
LABEL_9:
    sub_1000DB19C();
    sub_100007130(v17 + *(v26 + 60), v14);
    v43 = *(v16 + 80);
    v44 = *(v16 + 88);
    v45 = sub_1000060A4();
    sub_100003370(v45, v46);
    v47 = *(v44 + 32);
    v48 = sub_100001F0C();
    v49(v48, v44);

    sub_100003324(v14);
LABEL_10:
    sub_1000DAC40();

    sub_100001F00();
LABEL_25:
    sub_100003540();

    return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
  }

  v34 = *(v16 + 288);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10002B14C();

  if (sub_10000A098())
  {
    sub_10000A05C();
    swift_slowAlloc();
    v36 = sub_1000039DC();
    *v29 = 138412290;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v37;
    *v36 = v37;
    sub_1000031C4();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_10000ED84(v36, &qword_1001B8F68);
    sub_100002BD0();

    sub_10000BFCC();

    goto LABEL_16;
  }

LABEL_15:

LABEL_16:
  sub_1000DAF0C();
  v61 = *(v16 + 120);
  v62 = *(v16 + 128);
  v63 = sub_1000125D0();
  sub_100003370(v63, v64);
  v65 = *(v62 + 32);
  v66 = sub_10000E86C();
  v67(v66, v62);

  sub_100003324(v27);
  sub_1000DB15C();
  v68 = AssetCost.onDeviceMemory.getter();
  v69 = v20[1];
  v70 = sub_100003754();
  v71(v70);
  if (sub_10003EC04() >= v68)
  {
    v101 = *(v16 + 288);
    Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v102))
    {
LABEL_24:
      sub_1000133B8();

      sub_100002F54();
      goto LABEL_25;
    }

LABEL_23:
    v103 = sub_100007648();
    sub_10000BF10(v103);
    sub_1000195D4(&_mh_execute_header);
    sub_10000BFCC();

    goto LABEL_24;
  }

  v72 = *(v16 + 184);
  v73 = *(v16 + 192);
  sub_10004FAAC();
  v75 = sub_10002B164(v74);
  v76 = v75;
  if (!v75)
  {
    v113 = *(v16 + 288);
    Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v114))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v77 = v14 - 20;
  v78 = *(v16 + 240);
  v79 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  *(v16 + 304) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v80 = &v79[v75];
  sub_100004CBC();
  swift_beginAccess();
  sub_100007130(&v80[*(v78 + 60)], v77);
  v81 = *(v16 + 40);
  v82 = *(v16 + 48);
  v83 = sub_100007B78();
  sub_100003370(v83, v84);
  sub_1000DAFA0();
  v85 = sub_10000CD1C();
  v86(v85);
  v87 = *(v16 + 288);
  if (v61)
  {

    sub_100003324(v77);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.fault.getter();
    if (sub_100002F80(v89))
    {
      v90 = sub_100007648();
      sub_10000A240(v90);
      sub_100003DD0();
      _os_log_impl(v91, v92, v93, v94, v95, 2u);
      sub_100002BD0();
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v96, v97);
    v98 = sub_10000C700();
    sub_100027998(v98, v99);
    sub_1000080BC();
    (*(v100 + 104))();
    swift_willThrow();

    goto LABEL_10;
  }

  sub_100003324(v77);

  v115 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10000AC18();

  if (sub_100042D00())
  {
    sub_10000A05C();
    v116 = swift_slowAlloc();
    sub_1000033D0();
    v152 = swift_slowAlloc();
    *v116 = 136315138;

    sub_100027434();
    sub_1000DAF38();

    v117 = sub_100004CB0();
    sub_100004A3C(v117, v118, v119);
    sub_100005974();

    *(v116 + 4) = v76;
    sub_10000A39C(&_mh_execute_header, v120, v121, "unloadIfNeededToMakeRoom unloading %s");
    sub_100003324(v152);
    sub_100005864();

    sub_100002BD0();
  }

  if (*(v76 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
  {
    v122 = *(v16 + 344);
    v123 = *(v16 + 256);
    v124 = *(v16 + 232);
    v125 = *(v16 + 208);
    v126 = *(v16 + 216);
    sub_100005C78();
    v127 = sub_1000060A4();
    sub_1000192DC(v127, v128);
    v129 = sub_100057838();
    v130(v129);
    v131 = sub_1000125D0();
    v133 = sub_100116D68(v131, v132);
    v134 = *(v16 + 256);
    if (v133)
    {
      v135 = sub_1000440CC();
      v136(v135);
      sub_100008654();
      sub_100019338();
LABEL_36:
      v143 = swift_task_alloc();
      v144 = sub_100053C2C(v143);
      *v144 = v145;
      sub_10000A24C(v144);
      sub_1000DAD60();
      sub_100003540();

      return sub_1000486EC();
    }

    v137 = *(v16 + 232);
    v138 = *(v16 + 208);
    v139 = *(v16 + 216);
    v140 = sub_1000DAE98(*(v16 + 240));
    sub_100116D68(v140, v137);
    sub_1000DB080();
    v141 = sub_1000060A4();
    v142(v141);
    sub_100008654();
    sub_100019338();
    if (v124)
    {
      goto LABEL_36;
    }
  }

  v147 = sub_1000DB26C();
  sub_100007098(v147);
  v148 = swift_task_alloc();
  v149 = sub_1000530C4(v148);
  *v149 = v150;
  sub_100009C64();
  sub_1000DAD60();
  sub_100003540();

  return sub_10002BA5C();
}

uint64_t sub_1000C70B0()
{
  sub_10000639C();
  sub_100003884();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  v1[7] = sub_100002C58();
  v9 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  v1[8] = sub_100002C58();
  v12 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[9] = v12;
  sub_100002F44(v12);
  v1[10] = v13;
  v15 = *(v14 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v16 = swift_task_alloc();
  v1[15] = v16;
  *v16 = v1;
  v16[1] = sub_1000C723C;
  sub_10000CF04();
  sub_100003D20();

  return sub_100023A48(v17, v18, v19);
}

uint64_t sub_1000C723C()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v0;

  if (v0)
  {
    v9 = v3[13];
    v8 = v3[14];
    v11 = v3[11];
    v10 = v3[12];
    v14 = v3 + 7;
    v12 = v3[7];
    v13 = v14[1];

    sub_100001F00();
    sub_100007BB8();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v24 = v3[6];
    sub_100007BB8();

    return _swift_task_switch(v25, v26, v27);
  }
}

uint64_t sub_1000C73A0()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[6];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_100032338();
  sub_100028248(v6, v7, v8);

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1000C7474;
  v10 = v0[6];
  sub_1000031B8(v0[16]);
  sub_100003D20();

  return sub_10003A608();
}

uint64_t sub_1000C7474()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 48);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C7C64()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = v0[24];
  *v4 = *v2;
  *(v3 + 200) = v1;

  sub_10000CC7C();
  v7 = *(v6 + 64);
  v8 = v0[7];
  v9 = v0[6];
  sub_10000ED84(v8, &qword_1001BB408);
  sub_10000ED84(v7, &qword_1001BB410);
  sub_100007088();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C8744()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[27];
  v3 = v1[20];
  v4 = v1[6];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v7 = sub_10000C634();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1000C8858()
{
  sub_10000636C();
  v1 = v0[26];
  v2 = v0[16];
  swift_willThrow();
  sub_1000286AC(v2);

  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[7];
  v7 = v0[8];

  sub_100001F00();
  sub_100003770();

  __asm { BRAA            X1, X16 }
}

void sub_1000C8B3C(uint64_t *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v43 = a3;
  v4 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - v10;
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_1000192DC(v20 + v19, v18);
  v39 = v5[2];
  v39(v11, v43, v4);
  v21 = *(v15 + 56);
  sub_10007F3D4();
  v22 = v5[1];
  v41 = v5 + 1;
  v22(v13, v4);
  swift_beginAccess();
  sub_10003DA78(v18, v20 + v19);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000641C(v23, qword_1001BB110);
  v24 = v40;
  v39(v40, v43, v4);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43 = v22;
    v28 = v27;
    v42[0] = swift_slowAlloc();
    *v28 = 136315394;

    v29 = v24;
    v30 = v4;
    v31 = sub_100027434();
    v33 = v32;

    v34 = sub_100004A3C(v31, v33, v42);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    sub_1000281BC(&qword_1001BB468, &qword_1001B94D0, &unk_100171E80);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v43(v29, v30);
    v38 = sub_100004A3C(v35, v37, v42);

    *(v28 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "Marked asset %s in use by execution group %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v22(v24, v4);
  }
}

void sub_1000C8F6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_1000192DC(v15 + v14, v13);
  sub_100045518();
  swift_beginAccess();
  sub_10003DA78(v13, v15 + v14);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000641C(v16, qword_1001BB110);
  (*(v6 + 16))(v9, a3, v5);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v19 = 136315394;

    v20 = sub_100027434();
    v22 = v21;

    v23 = sub_100004A3C(v20, v22, v30);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v6 + 8))(v9, v5);
    v27 = sub_100004A3C(v24, v26, v30);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Marked asset %s as no longer associated with foreground session %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1000C92F8()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = _s6PolicyVMa_0();
  v1[7] = v3;
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[8] = sub_10000F0C0();
  v1[9] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C9380()
{
  sub_10005D918();
  sub_1000033DC();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_10000641C(v3, qword_1001BB110);
  v4 = sub_1000062B0();
  sub_1000192DC(v4, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = sub_100002F80(v7);
  v9 = v0[9];
  if (v8)
  {
    v11 = v0[7];
    v10 = v0[8];
    sub_10000A05C();
    v12 = swift_slowAlloc();
    sub_1000033D0();
    v28 = swift_slowAlloc();
    *v12 = 136315138;
    sub_1000192DC(v9, v10);
    sub_100007B78();
    String.init<A>(describing:)();
    sub_1000DB3D0();
    sub_100019338();
    v13 = sub_100007B78();
    v16 = sub_100004A3C(v13, v14, v15);

    *(v12 + 4) = v16;
    sub_100003DD0();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    sub_100003324(v28);
    sub_10000BFCC();

    sub_100002BD0();
  }

  else
  {

    sub_1000DACDC();
    sub_100019338();
  }

  v23 = v0[5];
  v22 = v0[6];
  v24 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100002D24();
  swift_beginAccess();
  sub_1000DA6C4(v23, v22 + v24);
  swift_endAccess();
  v25 = swift_task_alloc();
  v0[11] = v25;
  *v25 = v0;
  sub_1000DAFC0(v25);
  sub_100016688();

  return sub_10011CAD8();
}

uint64_t sub_1000C9590()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = v0[11];
  v4 = *v1;
  *v2 = *v1;

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v4;
  v5[1] = sub_1000C96C0;
  v6 = v0[6];

  return sub_10011861C();
}

uint64_t sub_1000C96C0()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = v0[12];
  v4 = *v1;
  *v2 = *v1;

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v4;
  v5[1] = sub_1000C97F4;
  v6 = v0[6];

  return sub_100042FEC();
}

uint64_t sub_1000C97F4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 104);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C98EC()
{
  sub_100001ED0();
  v1 = v0[10];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v11 = v0[8];
  v10 = v0[9];

  sub_100001F00();

  return v12();
}

uint64_t sub_1000C99A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  v8 = *&v7[v3];
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;

  sub_1000241C8(sub_1000DAB80, v13, v8);
  sub_100009540();

  if (a3)
  {
    v10 = *(a3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_neuralEngine);
    v11 = *(a3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path);
    v12 = *(a3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path + 8);
    sub_1001231E0();
  }

  return result;
}

uint64_t sub_1000C9A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return sub_100004B70(sub_1000C9A90, v3);
}

uint64_t sub_1000C9A90()
{
  sub_100002BAC();
  sub_1000DAF50(v0[20]);
  swift_task_alloc();
  sub_100004B34();
  v0[21] = v1;
  *v1 = v2;
  v1[1] = sub_1000C9B2C;
  v3 = v0[19];
  v4 = sub_10004AE38();

  return sub_1000253E8(v4, v5);
}

uint64_t sub_1000C9B2C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 168);
  *v4 = *v2;
  *(v3 + 176) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 160);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C9C40()
{
  sub_10000636C();
  sub_100024640(v1, v2, &qword_1001B9CB0, &qword_100171E70);
  if (!v0[15])
  {
    v11 = v0[19];
    sub_1000DACD0();
    sub_10000ED84(v12, v13);
    v14 = type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v15, v16);
    sub_100007894();
    swift_allocError();
    v18 = v17;
    *v17 = InferenceProviderDescriptor.description.getter();
    v18[1] = v19;
    sub_100006098(v14);
    (*(v20 + 104))(v18);
    swift_willThrow();
    sub_1000DACD0();
    sub_10000ED84(v21, v22);
    sub_100001F00();
    sub_100003770();

    __asm { BRAA            X1, X16 }
  }

  sub_1000DB4A4();
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1000C9E18;
  v4 = v0[20];
  v5 = v0[18];
  sub_1000031B8(v0[17]);
  sub_100003770();

  return sub_100023A48(v6, v7, v8);
}

uint64_t sub_1000C9DF4()
{
  v1 = *(v0 + 176);
  sub_100001F00();
  return v2();
}

uint64_t sub_1000C9E18()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v7 = *(v4 + 184);
  *v6 = *v1;
  *(v5 + 192) = v0;

  v8 = *(v4 + 160);
  if (!v0)
  {
    *(v5 + 200) = v3;
  }

  sub_10000E700();
  sub_100003D20();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C9F3C()
{
  sub_100001ED0();
  v1 = v0[24];
  sub_1000BFCE0(v0[25]);
  sub_100077AD4();
  v2 = sub_100009540();
  sub_1000286AC(v2);

  sub_100003324(v0 + 7);
  sub_10000ED84((v0 + 2), &qword_1001B9CB0);
  v3 = sub_10000EEAC();

  return v4(v3);
}

uint64_t sub_1000C9FD4()
{
  sub_100002BAC();
  sub_100003324((v0 + 56));
  sub_10000ED84(v0 + 16, &qword_1001B9CB0);
  v1 = *(v0 + 192);
  sub_100001F00();

  return v2();
}

uint64_t sub_1000CA048()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 960);
  v5 = *(v3 + 720);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 1004) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000CA420()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 968);
  v5 = *(v3 + 720);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 1005) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000CA708()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 976);
  *v4 = *v2;
  *(v3 + 984) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 720);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000CA81C()
{
  sub_100003884();
  v2 = *(v1 + 904);
  v3 = *(*(v1 + 888) + 24);
  *(v1 + 1000) = v3;
  sub_100019C80((v2 + v3));
  v4 = *(v0 + 40);
  sub_100004B94();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v1 + 992) = v8;
  *v8 = v1;
  v9 = sub_1000071DC(v8);

  return v11(v9);
}

uint64_t sub_1000CA930()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 992);
  v5 = *(v3 + 720);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 1006) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000CAA28()
{
  v149 = v0;
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v0 + 856);
  v4 = *(v0 + 832);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = type metadata accessor for Logger();
  sub_10000641C(v7, qword_1001BB110);
  sub_100007E28();
  sub_1000192DC(v6, v3);
  v8 = sub_100001F70();
  sub_1000192DC(v8, v9);
  v10 = sub_100004CA4();
  sub_10001E72C(v10, v11, v12, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 896);
  v18 = *(v0 + 856);
  v19 = *(v0 + 832);
  if (v16)
  {
    v20 = *(v0 + 824);
    sub_1000033D0();
    v21 = swift_slowAlloc();
    v148[0] = swift_slowAlloc();
    *v21 = 136315650;
    v23 = *v18;
    v22 = v18[1];

    sub_100019A7C();
    sub_100019338();
    v24 = sub_100004A3C(v23, v22, v148);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = *v17;
    v26 = v17[1];

    sub_100011DC0();
    sub_100019338();
    v27 = sub_100004A3C(v25, v26, v148);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    sub_10001E72C(v19, v20, &qword_1001B9D00, &qword_100171E00);
    v28 = type metadata accessor for CustomAssetConfiguration();
    sub_1000DB308();
    v32 = sub_10000C6C0(v29, v30, v31);
    v33 = *(v0 + 824);
    if (v32 == 1)
    {
      sub_10000ED84(*(v0 + 824), &qword_1001B9D00);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v36 = *(v0 + 824);
      v35 = CustomAssetConfiguration.description.getter();
      v34 = v37;
      sub_100006098(v28);
      v39 = *(v38 + 8);
      v40 = sub_100019678();
      v41(v40);
    }

    sub_10000ED84(*(v0 + 832), &qword_1001B9D00);
    v42 = sub_100004A3C(v35, v34, v148);

    *(v21 + 24) = v42;
    sub_10001368C();
    _os_log_impl(v43, v44, v45, v46, v47, 0x20u);
    swift_arrayDestroy();
    sub_100061AD8();

    sub_100002BD0();
  }

  else
  {

    sub_10000ED84(v19, &qword_1001B9D00);
    sub_100011DC0();
    sub_100019338();
    sub_100019A7C();
    sub_100019338();
  }

  v48 = *(v0 + 1000);
  v49 = *(v0 + 904);
  v50 = *(v0 + 888);
  v51 = *(v0 + 848);
  v52 = *(v0 + 816);
  v53 = *(v0 + 720);
  v54 = *(v0 + 712);
  v55 = *(v0 + 704);
  v56 = *(v0 + 696);
  sub_100007E28();
  sub_1000192DC(v57, v51);
  v58 = sub_10000D01C();
  sub_10001E72C(v58, v59, v60, v61);
  v63 = *v49;
  v62 = v49[1];
  v64 = *(v50 + 20);

  v65 = FilePath.string.getter();
  v136 = v66;
  v137 = v65;
  sub_100007130(v49 + v48, v0 + 16);
  sub_100007130(v54, v0 + 56);
  sub_100007130(v53 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager, v0 + 96);
  sub_100007130(v53 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_telemetryManager, v0 + 136);
  v67 = *(v53 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_neuralEngine);
  v68 = *(v0 + 120);
  v69 = sub_100016494(v0 + 96, v68);
  sub_100004F60();
  v71 = v70;
  v73 = *(v72 + 64);
  v74 = sub_100002C58();
  (*(v71 + 16))(v74, v69, v68);
  v75 = *v74;
  v76 = type metadata accessor for InferenceProviderManager(0);
  *(v0 + 200) = v76;
  *(v0 + 208) = &off_1001B0F48;
  *(v0 + 176) = v75;
  v130 = v76;
  v131 = *v51;
  v135 = v67;
  v126 = v51[1];
  if (!v63 && v62 == 0xE000000000000000 || (sub_10000CF04(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {
  }

  v133 = *(v0 + 1006);
  v138 = *(v0 + 928);
  v116 = *(v0 + 912);
  v139 = *(v0 + 904);
  v113 = *(v0 + 848);
  v77 = *(v0 + 840);
  v78 = *(v0 + 800);
  v79 = *(v0 + 784);
  v115 = v78;
  v80 = *(v0 + 776);
  v81 = *(v0 + 768);
  v123 = v81;
  v124 = *(v0 + 792);
  v82 = *(v0 + 760);
  v83 = *(v0 + 752);
  v121 = *(v0 + 816);
  v122 = v83;
  v142 = *(v0 + 736);
  v144 = *(v0 + 728);
  v146 = *(v0 + 744);
  v134 = *(v0 + 720);
  sub_10001E72C(v121, *(v0 + 808), &qword_1001B9D00, &qword_100171E00);
  InferenceProviderAssetDescriptor.init(identifier:version:customAssetConfiguration:)();
  v84 = *(v79 + 16);
  v85 = sub_1000037BC();
  v86 = v80;
  v87(v85);
  sub_100007130(v0 + 16, v0 + 216);
  (*(v82 + 16))(v81, v113 + v77[8], v83);
  v120 = *(v113 + v77[9]);
  v125 = *(v113 + v77[11]);
  v127 = *(v113 + v77[12]);
  sub_100007130(v0 + 56, v0 + 256);
  v119 = *(v113 + v77[10]);
  v132 = *(v113 + v77[15]);
  sub_100007130(v0 + 176, v0 + 296);
  sub_100007130(v0 + 136, v0 + 336);
  v142[13](v146, enum case for LoadState.unloaded(_:), v144);
  v128 = type metadata accessor for Date();
  sub_100002BDC(v128);
  v89 = v88;
  v91 = *(v90 + 64) + 15;
  v118 = swift_task_alloc();
  static Date.now.getter();
  v117 = swift_task_alloc();
  static Date.now.getter();
  sub_100016494(v0 + 296, *(v0 + 320));
  sub_100004F60();
  v93 = v92;
  v95 = *(v94 + 64);
  v129 = sub_100002C58();
  (*(v93 + 16))();
  v96 = *v129;
  *(v0 + 400) = v130;
  *(v0 + 408) = &off_1001B0F48;
  *(v0 + 376) = v96;
  v97 = type metadata accessor for InferenceProviderAsset(0);
  v98 = *(v97 + 48);
  v99 = *(v97 + 52);
  v100 = swift_allocObject();
  sub_100016494(v0 + 376, v130);
  sub_100004F60();
  v102 = v101;
  v104 = *(v103 + 64);
  v114 = sub_100002C58();
  (*(v102 + 16))();
  v105 = *v114;

  UUID.init()();
  (*(v79 + 8))(v115, v86);
  sub_100003324((v0 + 136));
  sub_100003324((v0 + 56));
  sub_100003324((v0 + 16));
  sub_10000ED84(v121, &qword_1001B9D00);
  sub_100019A7C();
  sub_100019338();
  sub_100003324((v0 + 176));
  (*(v79 + 32))(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor, v124, v86);
  v106 = (v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path);
  *v106 = v137;
  v106[1] = v136;
  (*(v82 + 32))(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost, v123, v122);
  *(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable) = v120;
  *(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_shouldAvoidUnload) = v119;
  *(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) = v125;
  *(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_useEnergyEfficientMode) = v127;
  sub_100004A04((v0 + 256), v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
  v107 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v100;
  (v142)[2](OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v100, v146, v144);
  (v142)[4](&v107[v116[5]], v146, v144);
  v107[v116[6]] = 0;
  *&v107[v116[7]] = 0;
  v108 = *(v89 + 32);
  v108(&v107[v116[8]], v118, v128);
  v108(&v107[v116[9]], v117, v128);
  *&v107[v116[10]] = &_swiftEmptySetSingleton;
  *&v107[v116[11]] = &_swiftEmptySetSingleton;
  *&v107[v116[12]] = &_swiftEmptySetSingleton;
  v107[v116[13]] = 0;
  v107[v116[14]] = v133;
  sub_100004A04((v0 + 216), &v107[v116[15]]);
  v107[v116[16]] = v119;
  v107[v116[17]] = v132;
  sub_100004A04((v0 + 336), v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager);
  *(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_neuralEngine) = v135;
  swift_weakInit();
  *(v100 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_preferUnload) = v132;
  sub_100003324((v0 + 376));

  sub_100003324((v0 + 296));

  sub_100003324((v0 + 96));

  sub_100002D24();
  swift_beginAccess();

  sub_10001A264(v148, v100);
  swift_endAccess();

  sub_100011DC0();
  sub_100019338();
  sub_1000DAE78();
  v109 = *(v0 + 824);
  v110 = *(v0 + 816);
  v140 = *(v0 + 808);
  v141 = *(v0 + 800);
  v143 = *(v0 + 792);
  v145 = *(v0 + 768);
  v147 = *(v0 + 744);

  v111 = *(v0 + 8);

  return v111(v100);
}

uint64_t sub_1000CB5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  sub_1000DAE78();
  v17 = v16[103];
  v18 = v16[102];
  v19 = v16[101];
  v30 = v16[100];
  v31 = v16[99];
  v32 = v16[96];
  v33 = v16[93];

  sub_100001F00();
  v20 = v16[123];
  sub_100003D04();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, a14, a15, a16);
}

uint64_t sub_1000CB6DC()
{
  v1 = *(v0 + 64);
  sub_100001F00();
  return v2();
}

uint64_t sub_1000CB700()
{
  sub_100003884();
  sub_100019C80(*(v1 + 144));
  v2 = *(v0 + 72);
  sub_100004B94();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 208) = v6;
  *v6 = v1;
  v7 = sub_1000071DC(v6);

  return v9(v7);
}

uint64_t sub_1000CB804()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 208);
  v5 = *(v3 + 152);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 240) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000CB8FC()
{
  sub_100001ED0();
  if (*(v1 + 240) == 1)
  {
    v2 = swift_task_alloc();
    v3 = sub_1000DB0A4(v2);
    *v3 = v4;
    v3[1] = sub_1000CBA4C;
    v5 = *(v1 + 152);

    return sub_100025A00();
  }

  else
  {
    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v7, v8);
    v9 = sub_10000C700();
    sub_100011D90(v9, v10);
    sub_1000080BC();
    (*(v11 + 104))();
    swift_willThrow();
    v12 = *(v1 + 200);
    **(v1 + 184) = v0;

    sub_100001F00();

    return v13();
  }
}

uint64_t sub_1000CBA4C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 216);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000CBB44()
{
  sub_10000636C();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  *(v0 + 128) = _swiftEmptyArrayStorage;
  sub_100065020(&qword_1001BB440, &unk_1001742C0);
  sub_10001E600();
  sub_100011B14(v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  v5[1] = vextq_s8(*(v0 + 152), *(v0 + 152), 8uLL);
  v5[2].i64[0] = v1;
  v5[2].i64[1] = v2;
  v5[3].i64[0] = v0 + 128;
  v6 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_1000CBCA0;
  sub_100003770();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000CBCA0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[29];
  v3 = v1[28];
  v4 = v1[19];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v7 = sub_10000C634();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1000CBDB4()
{
  v67 = v0;
  v1 = 0;
  v2 = v0[22];
  v3 = v0[16];
  v63 = v0[24];
  v60 = v0 + 2;
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v61 = v3;
  v58 = v4;
  v59 = v2;
  v57 = v3 + 32;
  while (1)
  {
LABEL_2:
    if (v1 == v4)
    {
      v45 = *(v65 + 200);
      v46 = *(v65 + 136);

      *v46 = &_swiftEmptySetSingleton;

      sub_100002F54();
      goto LABEL_28;
    }

    if (v1 >= *(v3 + 16))
    {
      goto LABEL_32;
    }

    v6 = v5 + 16 * v1;
    v7 = *v6;
    if (*(v6 + 8) == 1)
    {
      break;
    }

    ++v1;
    v8 = sub_10004A780();
    sub_1000266B8(v8, v9);
    v10 = sub_10004A780();
    sub_1000266B8(v10, v11);

    sub_10001A264(&v66, v7);

    v12 = InferenceProviderAssetDescriptor.identifier.getter();
    if (*(v2 + 16))
    {
      v14 = *(v65 + 176);
      v15 = sub_1000236F4(v12, v13);
      v17 = v16;

      if (v17)
      {
        v62 = v1;
        v18 = *(*(v2 + 56) + 8 * v15);
        v19 = v18 + 56;
        v20 = -1 << *(v18 + 32);
        if (-v20 < 64)
        {
          v21 = ~(-1 << -v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v18 + 56);
        v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v64 = v18;
        swift_bridgeObjectRetain_n();
        sub_100004CBC();
        swift_beginAccess();
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (v22)
        {
          v26 = v24;
LABEL_16:
          v27 = *(v65 + 200);
          v28 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v29 = (*(v64 + 48) + ((v26 << 10) | (16 * v28)));
          v30 = *v29;
          v31 = v29[1];
          sub_100005C78();
          sub_1000192DC(v23 + v7, v27);
          v32 = *(v63 + 40);

          sub_10007CC90();

          sub_100002D24();
          swift_beginAccess();
          sub_10003DA78(v27, v23 + v7);
          swift_endAccess();
        }

        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v26 >= v25)
          {

            v41 = sub_10004A780();
            sub_10003DA6C(v41, v42);
            v43 = sub_10004A780();
            sub_10003DA6C(v43, v44);

            v3 = v61;
            v1 = v62;
            v4 = v58;
            v2 = v59;
            v5 = v57;
            goto LABEL_2;
          }

          v22 = *(v19 + 8 * v26);
          ++v24;
          if (v22)
          {
            v24 = v26;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v37 = sub_10004A780();
      sub_10003DA6C(v37, v38);
      v39 = sub_10004A780();
      sub_10003DA6C(v39, v40);
    }

    else
    {
      v33 = sub_10004A780();
      sub_10003DA6C(v33, v34);
      v35 = sub_10004A780();
      sub_10003DA6C(v35, v36);
    }
  }

  swift_errorRetain();

  v48 = *(v3 + 16);
  swift_errorRetain();
  if (v48)
  {
    v49 = *(v65 + 192);
    v50 = (v61 + 40);
    do
    {
      if ((*v50 & 1) == 0)
      {
        v51 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(v50 - 1);
        sub_100004CBC();
        swift_beginAccess();
        sub_100007130(&v51[*(v49 + 60)], v60);
        v52 = *(v65 + 48);
        sub_100003370(v60, *(v65 + 40));
        v53 = *(v52 + 32);
        v54 = sub_100007B78();
        v55(v54);
        sub_100003324(v60);
      }

      v50 += 16;
      --v48;
    }

    while (v48);
  }

  swift_willThrow();
  sub_10003DA6C(v7, 1);

  v56 = *(v65 + 200);
  **(v65 + 184) = v7;

  sub_100001F00();
LABEL_28:

  v47();
}

uint64_t sub_1000CC1DC()
{
  sub_100002BAC();
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[2];
  *v3 = v1;
  *(v3 + 8) = v1 != 0;

  sub_100001F00();

  return v4();
}

uint64_t sub_1000CC24C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v16 = *a1;
  v15 = a1[1];
  sub_1000264C4(*a1, v15, a3, &v36 - v13);
  v17 = type metadata accessor for CustomAssetConfiguration();
  if (sub_10000C6C0(v14, 1, v17) == 1)
  {
    sub_10000ED84(v14, &qword_1001B9D00);
  }

  else
  {
    v16 = CustomAssetConfiguration.identifier.getter();
    v15 = v18;
    (*(*(v17 - 8) + 8))(v14, v17);
  }

  v19 = *a4;
  sub_1000264C4(*a4, a4[1], a3, v12);
  if (sub_10000C6C0(v12, 1, v17) == 1)
  {
    v37 = v19;
    sub_10000ED84(v12, &qword_1001B9D00);
  }

  else
  {
    v37 = CustomAssetConfiguration.identifier.getter();
    (*(*(v17 - 8) + 8))(v12, v17);
  }

  v20 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *a2;
  v22 = v38;
  *a2 = 0x8000000000000000;
  v23 = sub_1000236F4(v16, v15);
  v25 = *(v22 + 16);
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_16;
  }

  v28 = v23;
  v29 = v24;
  sub_100065020(&qword_1001BB428, &qword_100171DF8);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27))
  {
    v30 = sub_1000236F4(v16, v15);
    if ((v29 & 1) == (v31 & 1))
    {
      v28 = v30;
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v32 = *a2;
  *a2 = v38;

  v33 = *a2;
  if (v29)
  {
  }

  else
  {
    sub_1001185E0(v28, v16, v15, &_swiftEmptySetSingleton, *a2);
  }

  v34 = *(v33 + 56) + 8 * v28;
  sub_10007CC90();
}

uint64_t sub_1000CC554()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask;
  if (*(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v0))
  {
    v2 = *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v0);

    Task.cancel()();
  }

  v3 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask;
  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask))
  {
    v4 = *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask);

    Task.cancel()();
  }

  v5 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask;
  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask);

    Task.cancel()();
  }

  v7 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_workQueue;
  v8 = sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_100002C00(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v0);

  sub_1000DACDC();
  sub_100019338();
  v11 = *&v1[v0];

  v12 = *(v0 + v3);

  v13 = *(v0 + v5);

  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog));
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager));
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_telemetryManager));
  v14 = *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_neuralEngine);

  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_sysctl));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000CC70C()
{
  sub_1000CC554();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for InferenceProviderAssetManager()
{
  result = qword_1001BB150;
  if (!qword_1001BB150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CC78C()
{
  sub_1000D5ED4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = _s6PolicyVMa_0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000CC8B4()
{
  sub_100001ED0();
  v1 = sub_100003370((*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24));
  *(v0 + 24) = v1;
  v2 = *v1;

  sub_10000CC50();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CC940()
{
  sub_100002BAC();
  v1 = **(v0 + 24);
  sub_10010F63C(&unk_100171DD8, *(v0 + 16));

  v2 = sub_10000C634();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000CC9C0()
{
  sub_100001ED0();
  v1 = *sub_100003370((*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager), *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager + 24));

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000CCA90;
  v3 = *(v0 + 16);

  return sub_1000B84E4(&unk_100171DE8, v3);
}

uint64_t sub_1000CCA90()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100001F00();

  return v6();
}

uint64_t sub_1000CCB8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1000E47B0();
}

uint64_t sub_1000CCC34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006F558;

  return sub_1000C19A0(a1, a2);
}

uint64_t sub_1000CCCDC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 112);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000CCDD4()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = v0[17];
  v4 = v0[16];
  v5 = *v1;
  *v2 = *v1;

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v5;
  v6[1] = sub_1000CCF34;
  v7 = v0[15];
  v8 = v0[7];
  sub_1000031B8(v7);

  return sub_1000D2474();
}

uint64_t sub_1000CCF34()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[18];
  v3 = v1[15];
  v4 = v1[7];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v7 = sub_10000C634();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CD048()
{
  sub_100002BAC();
  v1 = *(v0 + 56);
  sub_100043D74();
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  sub_1000DAC80(v2);

  return sub_1000440E8();
}

uint64_t sub_1000CD0BC()
{
  sub_100002BAC();
  *(v1 + 40) = v0;
  v2 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  *(v1 + 48) = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

void sub_1000CD140()
{
  sub_100001ED0();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000641C(v1, qword_1001BB110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = v0[5];

  v11 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  v12 = *&v11[v10];

  sub_1000DAF44();
  v17 = sub_100038E28(v13, v14, v15, v16);
  sub_10002B524();
  v19 = v18;
  v0[8] = v18;

  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
LABEL_7:
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      v0[9] = v22;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        v23 = v0[8];
        if ((v23 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
          v0[10] = v17;
          v27 = v0[6];
          v28 = type metadata accessor for AuditToken();
          sub_100018DEC(v28);
          v29 = swift_task_alloc();
          v0[11] = v29;
          *v29 = v0;
          sub_100009F00(v29);

          sub_10002BA5C();
          return;
        }

        if ((v22 & 0x8000000000000000) == 0)
        {
          sub_100007900(v22, v23);
          if (!v26)
          {
            sub_100011174(v24, v25);
            goto LABEL_13;
          }

LABEL_24:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }
  }

  v31 = v0[7];
  v30 = v0[8];

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (sub_100002F80(v33))
  {
    v34 = sub_100007648();
    sub_10000A240(v34);
    sub_100003DD0();
    _os_log_impl(v35, v36, v37, v38, v39, 2u);
    sub_100002BD0();
  }

  v40 = v0[6];

  sub_100001F00();

  v41();
}

uint64_t sub_1000CD3B0()
{
  sub_100001ED0();
  sub_100018E0C();
  v3 = *(v0 + 88);
  v4 = *v2;
  sub_100002B9C();
  *v5 = v4;

  sub_10000CC7C();
  v7 = *(v6 + 48);
  v8 = *(v0 + 40);
  if (v1)
  {
  }

  sub_10000ED84(v7, &qword_1001BB3F8);
  sub_10000CC50();

  return _swift_task_switch(v9, v10, v11);
}

void sub_1000CD514()
{
  sub_100001ED0();
  v3 = v1[9];
  v2 = v1[10];

  if (v3)
  {
    v4 = v1[9];
    v5 = v4 - 1;
    v1[9] = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = v1[8];
      if ((v6 & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v1[10] = v0;
        v10 = v1[6];
        v11 = type metadata accessor for AuditToken();
        sub_100018DEC(v11);
        v12 = swift_task_alloc();
        v1[11] = v12;
        *v12 = v1;
        sub_100009F00();

        sub_10002BA5C();
        return;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        sub_100007900(v5, v6);
        if (!v9)
        {
          sub_100011174(v7, v8);
          goto LABEL_8;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v14 = v1[7];
  v13 = v1[8];

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (sub_100002F80(v16))
  {
    v17 = sub_100007648();
    sub_10000A240(v17);
    sub_100003DD0();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    sub_100002BD0();
  }

  v23 = v1[6];

  sub_100001F00();

  v24();
}

BOOL sub_1000CD678(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(State);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for LoadState.unloaded(_:), State);
  sub_100011B14(&qword_1001BA468, &type metadata accessor for LoadState);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v6, State);
  return (v7 & 1) == 0 && *(*(a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)) + 16) == 0;
}

uint64_t sub_1000CD7D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100004B70(sub_1000CD7F4, v1);
}

uint64_t sub_1000CD7F4()
{
  sub_100001ED0();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10000641C(v1, qword_1001BB110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = v0[2];

  result = sub_10000E8DC(v10);
  v0[5] = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[2];
      v0[6] = 0;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v12 + 32);
      }

      v0[7] = v13;
      v24 = swift_task_alloc();
      v0[8] = v24;
      *v24 = v0;
      v24[1] = sub_1000CD9E8;
      v25 = v0[3];
      sub_10001E4B4();

      return sub_1000486EC();
    }
  }

  else
  {
    v14 = v0[4];
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (sub_100002F80(v16))
    {
      v17 = sub_100007648();
      sub_10000A240(v17);
      sub_100003DD0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      sub_100002BD0();
    }

    sub_100001F00();

    return v23();
  }

  return result;
}

uint64_t sub_1000CD9E8()
{
  sub_100001ED0();
  sub_100018E0C();
  v3 = *(v0 + 64);
  v4 = *v2;
  sub_100002B9C();
  *v5 = v4;

  sub_10000CC7C();
  v7 = *(v6 + 24);
  if (v1)
  {
  }

  sub_100007088();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000CDB04()
{
  sub_100001ED0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  if (v2 + 1 == v3)
  {
    v4 = v0[4];
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (sub_100002F80(v6))
    {
      v7 = sub_100007648();
      sub_10000A240(v7);
      sub_100003DD0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100002BD0();
    }

    sub_100001F00();

    return v13();
  }

  else
  {
    v15 = v0[6] + 1;
    v0[6] = v15;
    v16 = v0[2];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      sub_1000DB11C(v15, v16);
    }

    v0[7] = v3;
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_1000CD9E8;
    v18 = v0[3];
    sub_10001E4B4();

    return sub_1000486EC();
  }
}

uint64_t sub_1000CDC64()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v0 + 376);
  *v4 = *v2;
  *(v3 + 384) = v1;

  sub_10000CC7C();
  v7 = *(v6 + 256);
  if (v1)
  {
  }

  sub_100007088();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000CE8CC()
{
  sub_100001ED0();
  v1 = v0[50];
  v2 = swift_task_alloc();
  v0[51] = v2;
  sub_1000DB098(v2);
  v3 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_1000CE9AC;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000CE9AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 424) = v0;

  if (!v0)
  {
    v9 = *(v3 + 408);
  }

  sub_1000059F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000CEAAC()
{
  sub_100002BAC();
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[32];

  v4 = sub_10000C634();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000CEB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v21 = 0;
  v22 = *(v17 + 424);
  while (1)
  {
    sub_10000C9B4();

    sub_10001928C();
    sub_100032848();
    sub_10001A5D0(v23);
    if (v35)
    {
      if (v19[2])
      {
LABEL_24:
        sub_10003028C();
        v47 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_100019920();

        if (sub_10000A384())
        {
          v48 = *(v17 + 240);
          sub_10000A05C();
          swift_slowAlloc();
          sub_10000A45C();
          swift_slowAlloc();
          sub_100026F60();
          *v18 = 136315138;
          v49 = sub_100027434();
          sub_1000359D4(v49, v50, v51, v52, v53);
          sub_100012918();
          *(v18 + 4) = v21;
          sub_1000033FC();
          _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
          sub_100002C88();
          sub_10000BFCC();
        }

        sub_1000DAC70();
        v59 = sub_1000530FC();
        sub_100005844(v59);
        goto LABEL_50;
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }

    sub_100053C1C();
    if (v21)
    {
      v60 = *(v17 + 344);
      v61 = *(v17 + 304);
      v62 = *(v17 + 312);
      v63 = *(v17 + 288);
      v64 = *(v17 + 296);
      a10 = *(v17 + 248);
      a11 = *(v17 + 256);
      v65 = *(v17 + 524);
      v66 = *(v17 + 240);
      sub_100004CBC();
      swift_beginAccess();
      (*(v64 + 16))(v62, v66 + v60, v63);
      (*(v64 + 104))(v61, enum case for LoadState.loaded(_:), v63);
      v67 = sub_1000DAEF4();
      *(v17 + 526) = sub_100116D68(v67, v68) & 1;
      v69 = *(v64 + 8);
      v70 = sub_1000071D0();
      v69(v70);
      v71 = sub_1000DADC8();
      v69(v71);
      v72 = sub_10004D164(a11, a10, v65 & 1);
      *(v17 + 472) = v72;
      if (!v22)
      {
        if (!v72)
        {
          sub_1000DAEDC();
          if (v35)
          {
            v200 = *(v17 + 344);
            v202 = *(v17 + 264);
            v201 = *(v17 + 272);
            v203 = *(v17 + 240);
            sub_100005C78();
            sub_10002ED80();
            sub_100036730();
            sub_1000DB104();
            swift_endAccess();
          }

          sub_10002EAC4();
          v204 = Logger.logObject.getter();
          static os_log_type_t.default.getter();
          sub_100053114();

          v205 = sub_1000DAF70();
          v206 = *(v17 + 472);
          if (v205)
          {
            v207 = *(v17 + 240);
            sub_10000A05C();
            v208 = swift_slowAlloc();
            sub_1000033D0();
            swift_slowAlloc();
            sub_100026F60();
            *v208 = 136315138;
            v209 = type metadata accessor for InferenceProviderAssetDescriptor();
            sub_100008428();
            sub_100011B14(v210, v211);
            v212 = sub_1000DAE0C();
            sub_1000359D4(v212, v213, v214, v215, v216);
            sub_100012918();
            *(v208 + 4) = v209;
            sub_1000DABF0(&_mh_execute_header, v217, v218, "Moved asset %s to dynamic mode");
            sub_100002C88();
            sub_1000039CC();
          }

          goto LABEL_46;
        }

        v176 = async function pointer to Task.value.getter[1];

        v177 = swift_task_alloc();
        sub_1000DB0C8(v177);
        sub_100065020(&qword_1001B8F60, &unk_100171260);
        sub_1000060CC();
        *v176 = v178;
        sub_100003A14();
        sub_1000DAC60();
        goto LABEL_55;
      }

      sub_10005B648();
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      if (sub_100060B04())
      {
        if (!*(v17 + 208))
        {
          sub_1000DB20C();
          sub_1000DA26C();
          sub_100007894();
          v219 = swift_allocError();
          sub_1000DAE5C(v219, v220);
          v221 = *(v17 + 232);

          goto LABEL_64;
        }
      }

      sub_1000DB254();
      if (v66 == 1)
      {
        sub_100019C80((*(v17 + 240) + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
        sub_10000302C();
        v222 = v73 + *v73;
        v75 = *(v74 + 4);
        v76 = swift_task_alloc();
        v77 = sub_100035D54(v76);
        *v77 = v78;
        sub_10000A5FC(v77);
        sub_100003D04();

        return v83(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, v222, a12, a13, a14, a15, a16);
      }

      sub_10003028C();
      swift_errorRetain();
      v179 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_10000AC18();

      if (sub_100042D00())
      {
        v180 = *(v17 + 240);
        sub_100002F10();
        swift_slowAlloc();
        v181 = sub_1000039DC();
        sub_1000033D0();
        swift_slowAlloc();
        sub_100026F60();
        *v61 = 136315394;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100008428();
        sub_100011B14(v182, v183);
        v184 = sub_100014A18();
        sub_1000359D4(v184, v185, v186, v187, v188);
        sub_1000188B4();
        sub_1000191B8();
        swift_errorRetain();
        v189 = _swift_stdlib_bridgeErrorToNSError();
        sub_10003DDBC(v189);
        sub_10001852C(&_mh_execute_header, v190, v191, "Failed to move asset %s to dynamic mode: %@");
        sub_10000ED84(v181, &qword_1001B8F68);
        sub_100005864();

        sub_100002C88();
        sub_10000BFCC();
      }

LABEL_63:
      swift_willThrow();
LABEL_64:
      sub_1000358B0();

      sub_1000DABBC();
      goto LABEL_65;
    }

    sub_1000DB2E4();
    if (v35)
    {
      sub_1000530E4();
      v88 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_100028210();
      if (sub_10000A384())
      {
        v89 = *(v17 + 240);
        sub_10000A05C();
        swift_slowAlloc();
        sub_10000A45C();
        swift_slowAlloc();
        sub_100006030();
        *v18 = 136315138;
        v90 = sub_100027434();
        sub_1000359D4(v90, v91, v92, v93, v94);
        sub_100007BA0();
        *(v18 + 4) = v20;
        sub_1000033FC();
        _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
        sub_100003324(v19);
        sub_1000039CC();

        sub_10000BFCC();
      }

      type metadata accessor for ModelManagerError();
      sub_1000113B0();
      sub_100011B14(v100, v101);
      v102 = sub_10000C700();
      sub_100011D90(v102, v103);
      sub_1000080BC();
      (*(v104 + 104))();
      goto LABEL_63;
    }

    v24 = *(v17 + 264);
    v25 = sub_1000DADD4(*(v17 + 344));
    if (v19)
    {
      v105 = sub_10001B234(v25);
      v106(v105);

      v107 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100028210();
      sub_10000A384();
      sub_100013BC8();
      if (v108)
      {
        v16 = *(v17 + 240);
        sub_100002F10();
        v109 = swift_slowAlloc();
        sub_100011828();
        a11 = swift_slowAlloc();
        a12 = a11;
        *v109 = 136315394;
        v110 = sub_100027434();
        sub_1000359D4(v110, v111, v112, v113, v114);
        sub_1000DAEC4();
        sub_100006534();
        sub_100002D0C();
        sub_100011B14(v115, v116);
        sub_100060720();
        v117 = sub_10002AB48();
        v118(v117);
        v119 = sub_1000037BC();
        sub_100004A3C(v119, v120, v121);
        sub_10000A08C();

        *(v109 + 14) = v16;
        sub_1000033FC();
        _os_log_impl(v122, v123, v124, v125, v126, 0x16u);
        sub_1000089D0();
        sub_100061AD8();

        sub_10000BFCC();
      }

      else
      {

        v163 = sub_100009B5C();
        v164(v163);
      }

      v165 = async function pointer to Task.value.getter[1];
      v166 = swift_task_alloc();
      sub_1000DAD8C(v166);
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      sub_10001E520();
      *v16 = v167;
      sub_100007A3C();
      sub_100035D2C();
LABEL_55:
      sub_100003D04();

      return Task.value.getter(v168, v169, v170, v171, v172, v173, v174, v175, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v26 = *(v17 + 520);
    v20 = *(v17 + 320);
    v28 = *(v17 + 288);
    v27 = *(v17 + 296);
    v29 = *(v17 + 280);
    sub_100005C78();
    sub_1000192DC(v30, v29);
    v31 = *(v27 + 104);
    v18 = v27 + 104;
    v32 = sub_10004C4A4();
    v33(v32);
    sub_100002D0C();
    sub_100011B14(&dword_1001BA628, v34);
    sub_10001246C();
    sub_10000D048();
    dispatch thunk of RawRepresentable.rawValue.getter();
    sub_10000D048();
    dispatch thunk of RawRepresentable.rawValue.getter();
    sub_1000DAC10();
    v35 = v35;
    if (v35)
    {
      break;
    }

    sub_1000DAE40();
    sub_1000DB1F4();

    if (v28)
    {
      goto LABEL_41;
    }

    sub_10000CF50();
    sub_10000D048();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v16 = *(v17 + 176);
    v19 = *(v17 + 192);
    v21 = *(v17 + 320);
    v36 = *(v17 + 288);
    v20 = *(v17 + 280);
    v18 = *(v17 + 296) + 8;
    if (*(v17 + 168) == *(v17 + 184) && v16 == v19)
    {
      v129 = *v18;
      v130 = sub_10000CD1C();
      v131(v130);
      sub_100008654();
      sub_100019338();

      goto LABEL_43;
    }

    v38 = sub_100036E00();
    v39 = *v18;
    v40 = sub_10000CD1C();
    v41(v40);
    sub_100008654();
    sub_100019338();

    if (v38)
    {
      goto LABEL_43;
    }

    sub_10000C9B4();

    sub_10001928C();
    v45 = sub_10004C4B4(v42, v43, v44);
    sub_10003327C(v45);
    if (v35)
    {
      if (!v19[2])
      {
        goto LABEL_23;
      }

LABEL_47:
      sub_10003028C();
      v146 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100019920();

      if (sub_10000A384())
      {
        v147 = *(v17 + 240);
        sub_10000A05C();
        swift_slowAlloc();
        sub_10000A45C();
        swift_slowAlloc();
        sub_100026F60();
        *v18 = 136315138;
        v148 = sub_100027434();
        sub_1000359D4(v148, v149, v150, v151, v152);
        sub_100012918();
        *(v18 + 4) = v21;
        sub_1000033FC();
        _os_log_impl(v153, v154, v155, v156, v157, 0xCu);
        sub_100002C88();
        sub_10000BFCC();
      }

      sub_1000135F8();
      v158 = sub_1000DB23C();
      sub_100006508(v158);
LABEL_50:

      sub_1000059F8();
      sub_100003D04();

      return _swift_task_switch(v159, v160, v161);
    }

    if (__CocoaSet.count.getter())
    {
      goto LABEL_47;
    }

LABEL_23:

    v46 = *(v17 + 368);
    sub_100053B5C();
  }

LABEL_41:
  v127 = sub_100005ED4();
  v128(v127);
  sub_100008654();
  sub_100019338();
LABEL_43:
  sub_10003028C();
  v132 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v133 = *(v17 + 240);
    sub_10000A05C();
    swift_slowAlloc();
    sub_10000A45C();
    swift_slowAlloc();
    sub_100006030();
    *v18 = 136315138;
    v134 = sub_100027434();
    sub_1000359D4(v134, v135, v136, v137, v138);
    sub_100007BA0();
    *(v18 + 4) = v20;
    sub_1000033FC();
    _os_log_impl(v139, v140, v141, v142, v143, 0xCu);
    sub_100003324(v19);
    sub_1000039CC();

    sub_10000BFCC();
  }

LABEL_46:
  sub_100025014();
  v145 = *(v17 + 272);
  v144 = *(v17 + 280);

  sub_100002F54();
LABEL_65:
  sub_100003D04();

  return v193(v192, v193, v194, v195, v196, v197, v198, v199, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000CF6D4()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];

  v4 = v0[53];
  sub_100059A5C();
  v6 = v0[34];
  v5 = v0[35];

  sub_100001F00();
  sub_100007BB8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000CF780()
{
  sub_100001ED0();
  v1 = v0[55];
  v2 = swift_task_alloc();
  v0[56] = v2;
  sub_1000DB098(v2);
  v3 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_1000CF860;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000CF860()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 456);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 464) = v0;

  if (!v0)
  {
    v9 = *(v3 + 448);
  }

  sub_1000059F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000CF960()
{
  sub_100002BAC();
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[32];

  v4 = sub_10000C634();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D0518()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];

  v4 = v0[58];
  sub_100059A5C();
  v6 = v0[34];
  v5 = v0[35];

  sub_100001F00();
  sub_100007BB8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}