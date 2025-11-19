uint64_t sub_100A570E4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 16) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v34 = v0;
  v35 = *(v0 + 16);

  v9 = 0;
  v10 = _swiftEmptyDictionarySingleton;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v8)
    {

      sub_1000BC4D4(&qword_1016B34B0, &qword_1013D4498);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      v31 = *(v34 + 32);
      *(inited + 32) = *(v34 + 24);
      *(inited + 40) = v31;
      *(inited + 48) = v10;

      v32 = sub_100908A14(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_1016B34B8, &unk_1013D44A0);
      return v32;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v36 = *(*(v35 + 56) + v13);
    v37 = *(*(v35 + 48) + v13);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v10;
    v18 = sub_100771D58(v14, v16);
    v20 = v10[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v10[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_101006344();
        v18 = v29;
      }
    }

    else
    {
      sub_100FE8BB4(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100771D58(v14, v16);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v24)
    {
      v11 = v18;

      v10 = v38;
      *(v38[7] + 8 * v11) = v36;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = v38;
      v38[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v38[6] + 16 * v18);
      *v26 = v14;
      v26[1] = v16;
      *(v38[7] + 8 * v18) = v36;
      v27 = v38[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v38[2] = v28;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A573A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100A57408()
{
  type metadata accessor for FirmwareUpdateAlertCoordinator();
  v0 = swift_allocObject();
  result = sub_100A57444();
  qword_10177B9C8 = v0;
  return result;
}

uint64_t sub_100A57444()
{
  v1 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v68 - v3;
  v80 = type metadata accessor for UUID();
  *&v78 = *(v80 - 8);
  v5 = *(v78 + 64);
  v6 = __chkstk_darwin(v80);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v68 - v9;
  v0[2] = 0xD00000000000001BLL;
  v0[3] = 0x80000001013699E0;
  sub_1000BC4D4(&qword_10169D100, &unk_1013D44B0);
  inited = swift_initStackObject();
  v79 = xmmword_10138BBE0;
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  sub_1000BC4D4(&qword_10169D108, &qword_10139AAA8);
  v12 = swift_allocObject();
  *(v12 + 16) = v79;
  *(v12 + 32) = xmmword_1013D4400;
  *(inited + 48) = v12;
  strcpy((inited + 56), "FirmwareUpdate");
  *(inited + 71) = -18;
  *(inited + 72) = &off_1016086A8;
  v13 = sub_1009089DC(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_10169D110, &unk_1013D44C0);
  swift_arrayDestroy();
  v0[5] = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138B360;
  *(v16 + 32) = xmmword_10139AA20;
  *(v16 + 48) = 3;
  *(v14 + 48) = v16;
  v17 = sub_1009089DC(v14);
  swift_setDeallocating();
  sub_10000B3A8(v14 + 32, &qword_10169D110, &unk_1013D44C0);
  v0[6] = v17;
  v18 = sub_1009089F0(_swiftEmptyArrayStorage);
  v86 = v18;
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = v0[2];
  v21 = v0[3];

  v22 = String._bridgeToObjectiveC()();

  v23 = [v19 objectForKey:v22];

  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v83 = 0u;
  }

  v85[1] = v84;
  v85[0] = v83;
  if (!*(&v84 + 1))
  {
    sub_10000B3A8(v85, &unk_1016A0B10, &qword_10139BF40);
    goto LABEL_46;
  }

  sub_1000BC4D4(&qword_1016B34C0, &qword_1013D44D0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_46:
    v0[4] = v18;
    return v0;
  }

  v25 = v82;
  if (!*(v82 + 16))
  {

    goto LABEL_46;
  }

  v75 = v8;
  v68 = v0;
  v26 = 0;
  v27 = v82 + 64;
  v28 = 1 << *(v82 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v82 + 64);
  v31 = (v28 + 63) >> 6;
  v77 = (v78 + 48);
  v74 = (v78 + 32);
  v69 = (v78 + 16);
  v76 = (v78 + 8);
  v78 = xmmword_10138C320;
  v32 = v80;
  v73 = v4;
  v72 = v82;
  v71 = v82 + 64;
  v70 = v31;
  if (v30)
  {
    goto LABEL_13;
  }

LABEL_14:
  while (2)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_48;
    }

    if (v33 >= v31)
    {

      v18 = v86;
      v0 = v68;
      goto LABEL_46;
    }

    v30 = *(v27 + 8 * v33);
    ++v26;
    if (!v30)
    {
      continue;
    }

    break;
  }

  while (1)
  {
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v35 = v34 | (v33 << 6);
    v36 = (*(v25 + 48) + 16 * v35);
    v37 = *v36;
    v38 = v36[1];
    v39 = *(*(v25 + 56) + 8 * v35);

    UUID.init(uuidString:)();

    if ((*v77)(v4, 1, v32) == 1)
    {

      result = sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
      v26 = v33;
      if (!v30)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    result = (*v74)(v81, v4, v32);
    v40 = 0;
    v41 = v39 + 64;
    v42 = 1 << *(v39 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(v39 + 64);
    v45 = (v42 + 63) >> 6;
    for (*&v79 = v39; v44; v39 = v79)
    {
LABEL_26:
      v47 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v48 = v47 | (v40 << 6);
      v49 = (*(v39 + 48) + 16 * v48);
      v50 = *v49;
      v51 = v49[1];
      v52 = *(*(v39 + 56) + 8 * v48);
      type metadata accessor for Failure();
      v53 = swift_allocObject();

      sub_100A56BEC(v50, v51, v52);
      v54 = v86;
      if (*(v86 + 16))
      {
        v55 = sub_1000210EC(v81);
        if (v56)
        {
          v57 = *(*(v54 + 56) + 8 * v55);
          if (v57 >> 62)
          {
            if (v57 < 0)
            {
              v64 = *(*(v54 + 56) + 8 * v55);
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_30:
              v58 = v75;
              v59 = v80;
              (*v69)(v75, v81, v80);
              v60 = sub_101090394(v85);
              if (*v61)
              {
                v62 = v61;
                v63 = v60;

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v67 = *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                (v63)(v85, 0);

                result = (*v76)(v75, v80);
              }

              else
              {
                (v60)(v85, 0);

                result = (*v76)(v58, v59);
              }

              continue;
            }
          }

          else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }
        }
      }

      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      v65 = swift_allocObject();
      *(v65 + 16) = v78;
      *(v65 + 32) = v53;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v85[0] = v54;
      sub_100FFC214(v65, v81, isUniquelyReferenced_nonNull_native);

      v86 = *&v85[0];
    }

LABEL_22:
    v46 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v46 < v45)
    {
      v44 = *(v41 + 8 * v46);
      ++v40;
      if (v44)
      {
        v40 = v46;
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    v32 = v80;
    result = (*v76)(v81, v80);
    v26 = v33;
    v4 = v73;
    v25 = v72;
    v27 = v71;
    v31 = v70;
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_13:
    v33 = v26;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_100A57D50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v49 - v6;
  v7 = sub_1000BC4D4(&qword_1016B3498, "hR\t");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = sub_100908A28(_swiftEmptyArrayStorage);
  v49 = v0;
  v14 = *(v0 + 32);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v50 = (v16 + 63) >> 6;
  v51 = v2 + 16;
  v60 = (v2 + 32);
  v53 = v2;
  v54 = v14;
  v55 = (v2 + 8);

  v19 = 0;
  v57 = v12;
  v58 = v1;
  v56 = v15;
  while (v18)
  {
    v20 = v1;
    v62 = v19;
    v21 = v19;
LABEL_15:
    v61 = (v18 - 1) & v18;
    v24 = __clz(__rbit64(v18)) | (v21 << 6);
    v26 = v53;
    v25 = v54;
    v27 = v52;
    (*(v53 + 16))(v52, *(v54 + 48) + *(v53 + 72) * v24, v20);
    v28 = *(*(v25 + 56) + 8 * v24);
    v29 = sub_1000BC4D4(&qword_1016B34A0, &qword_1013D4488);
    v30 = *(v29 + 48);
    v31 = *(v26 + 32);
    v1 = v20;
    v32 = v59;
    v31(v59, v27, v1);
    *(v32 + v30) = v28;
    (*(*(v29 - 8) + 56))(v32, 0, 1, v29);

LABEL_16:
    sub_100A58668(v32, v12);
    v33 = sub_1000BC4D4(&qword_1016B34A0, &qword_1013D4488);
    if ((*(*(v33 - 8) + 48))(v12, 1, v33) == 1)
    {

      v44 = [objc_opt_self() standardUserDefaults];
      sub_1000BC4D4(&qword_1016B34A8, &qword_1013D4490);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v46 = *(v49 + 16);
      v47 = *(v49 + 24);
      v48 = String._bridgeToObjectiveC()();
      [v44 setObject:isa forKey:v48];

      return;
    }

    v34 = *&v12[*(v33 + 48)];
    (*v60)(v63, v12, v1);
    if (v34 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (!v35)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_4;
      }
    }

    if (v35 < 1)
    {
      goto LABEL_30;
    }

    v36 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v34 + 8 * v36 + 32);
      }

      ++v36;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      v40 = sub_100A570E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v13;
      sub_100FFC404(v40, v37, v39, isUniquelyReferenced_nonNull_native);

      v13 = v64;
    }

    while (v35 != v36);
LABEL_4:

    v1 = v58;
    (*v55)(v63, v58);
    v15 = v56;
    v12 = v57;
    v18 = v61;
    v19 = v62;
  }

  if (v50 <= v19 + 1)
  {
    v22 = v19 + 1;
  }

  else
  {
    v22 = v50;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v50)
    {
      v43 = sub_1000BC4D4(&qword_1016B34A0, &qword_1013D4488);
      v32 = v59;
      (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
      v61 = 0;
      v62 = v23;
      goto LABEL_16;
    }

    v18 = *(v15 + 8 * v21);
    ++v19;
    if (v18)
    {
      v20 = v1;
      v62 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_100A582C8(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    v4 = *(v1 + 32);

    v5 = sub_1000210EC(a1);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      if (v7 >> 62)
      {
        goto LABEL_39;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v9 = 0;
        v38 = v7 & 0xFFFFFFFFFFFFFF8;
        v39 = v7 & 0xC000000000000001;
        v36 = v7;
        v37 = (v7 + 32);
        v35 = i;
        while (1)
        {
          if (v39)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = __OFADD__(v9, 1);
            v12 = v9 + 1;
            if (v11)
            {
LABEL_33:
              __break(1u);
              goto LABEL_40;
            }

            goto LABEL_10;
          }

          if (v9 >= *(v38 + 16))
          {
            break;
          }

          v10 = v37[v9];

          v11 = __OFADD__(v9, 1);
          v12 = v9 + 1;
          if (v11)
          {
            goto LABEL_33;
          }

LABEL_10:
          v40 = v12;
          swift_beginAccess();
          v13 = *(v10 + 16);
          v14 = 1 << *(v13 + 32);
          if (v14 < 64)
          {
            v15 = ~(-1 << v14);
          }

          else
          {
            v15 = -1;
          }

          v16 = v15 & *(v13 + 64);
          v17 = (v14 + 63) >> 6;
          v18 = *(v10 + 16);
          swift_bridgeObjectRetain_n();
          v19 = 0;
          while (v16)
          {
LABEL_21:
            v21 = *(*(v13 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v16)))));
            swift_beginAccess();
            v22 = *(v10 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = *(v10 + 16);
            v7 = v41;
            *(v10 + 16) = 0x8000000000000000;
            v24 = sub_100771C58(v21);
            v26 = *(v7 + 16);
            v27 = (v25 & 1) == 0;
            v11 = __OFADD__(v26, v27);
            v28 = v26 + v27;
            if (v11)
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v29 = v25;
            if (*(v7 + 24) < v28)
            {
              sub_100FEAA14(v28, isUniquelyReferenced_nonNull_native);
              v7 = v41;
              v24 = sub_100771C58(v21);
              if ((v29 & 1) != (v30 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

LABEL_26:
              v31 = v41;
              if (v29)
              {
                goto LABEL_14;
              }

              goto LABEL_27;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_26;
            }

            v7 = &v41;
            v34 = v24;
            sub_1010071C0();
            v24 = v34;
            v31 = v41;
            if (v29)
            {
LABEL_14:
              *(v31[7] + 8 * v24) = 0;
              goto LABEL_15;
            }

LABEL_27:
            v31[(v24 >> 6) + 8] |= 1 << v24;
            *(v31[6] + 8 * v24) = v21;
            *(v31[7] + 8 * v24) = 0;
            v32 = v31[2];
            v11 = __OFADD__(v32, 1);
            v33 = v32 + 1;
            if (v11)
            {
              goto LABEL_37;
            }

            v31[2] = v33;
LABEL_15:
            v16 &= v16 - 1;
            *(v10 + 16) = v31;
            swift_endAccess();
          }

          while (1)
          {
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
              goto LABEL_36;
            }

            if (v20 >= v17)
            {
              break;
            }

            v16 = *(v13 + 64 + 8 * v20);
            ++v19;
            if (v16)
            {
              v19 = v20;
              goto LABEL_21;
            }
          }

          v7 = v36;
          v9 = v40;
          if (v40 == v35)
          {
            goto LABEL_40;
          }
        }

LABEL_38:
        __break(1u);
LABEL_39:
        ;
      }
    }

LABEL_40:
  }

  sub_100A57D50();
}

uint64_t sub_100A585F4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_100A58668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B3498, "hR\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A586D8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0x403E000000000000;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v0 + 24) = v10;
  v16[1] = sub_1000BC488();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = 0;
  v11 = sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 40) = CurrentValueSubject.init(_:)();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;

  v14 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();

  *(v0 + 64) = v14;
  return v0;
}

uint64_t sub_100A589B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_100A58A30()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B9D0);
  sub_1000076D4(v0, qword_10177B9D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A58AB8(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 24));
  v11 = *v9;
  v10 = v9[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;

  v12 = String.init(format:arguments:)();

  return v12;
}

uint64_t sub_100A58C60()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v5 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100A58D80(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 24));
  v11 = *v9;
  v10 = v9[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;

  v12 = String.init(format:arguments:)();

  return v12;
}

uint64_t sub_100A58F28()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v5 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100A59048(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 24));
  v11 = *v9;
  v10 = v9[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;

  v12 = String.init(format:arguments:)();

  return v12;
}

uint64_t sub_100A591F0()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v5 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100A59310(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 24));
  v11 = *v9;
  v10 = v9[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;

  v12 = String.init(format:arguments:)();

  return v12;
}

uint64_t sub_100A594B8()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v5 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_100A595D0(uint64_t a1)
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v4 = v1 + *(a1 + 20);
  v5 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v7;
}

uint64_t sub_100A59778(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100A5984C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100A59928()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100A599D8(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  v5 = a3[2];
  sub_1000BC4D4(&unk_1016A6180, &unk_101409EE0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100A5F6BC(v12, &v7);
  if (v8[24] == 255)
  {
    sub_10000B3A8(&v7, &unk_1016A6180, &unk_101409EE0);
    [*(a3[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) readValueForCharacteristic:a3[5]];
  }

  else
  {
    v10 = v7;
    v11[0] = *v8;
    *(v11 + 9) = *&v8[9];
    sub_100101AA8(&v10, &v7);
    v9 = 1;
    a1(&v7);
    sub_10000B3A8(&v7, &qword_1016B1CA8, &qword_1013D2DB8);
    sub_100101B04(&v10);
  }

  return sub_10000B3A8(v12, &unk_1016A6180, &unk_101409EE0);
}

uint64_t sub_100A59B44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1[9] || a1[13])
  {
    *a4 = a1;
    *(a4 + 40) = 6;
  }

  else
  {
    a1[9] = a2;
    a1[10] = a3;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *(a4 + 40) = -1;
  }
}

uint64_t sub_100A59B98(uint64_t a1, unint64_t a2)
{
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CEC0);
  sub_100017D5C(a1, a2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_100016590(a1, a2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = Data.description.getter();
    v11 = sub_1000136BC(v9, v10, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v13 = sub_100A5AADC(v12);
    v15 = sub_1000136BC(v13, v14, &v22);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Writing %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  v17 = sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_100017D5C(a1, a2);

  v22 = Future.init(_:)();
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330);
  v20 = Publisher.eraseToAnyPublisher()();

  return v20;
}

uint64_t sub_100A59E30(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  v5 = a3[2];
  sub_1000BC4D4(&unk_1016A6180, &unk_101409EE0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100A5F6BC(v14, &v9);
  if (v10[24] == 255)
  {
    sub_10000B3A8(&v9, &unk_1016A6180, &unk_101409EE0);
    v6 = *(a3[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v6 writeValue:isa forCharacteristic:a3[5] type:0];
  }

  else
  {
    v12 = v9;
    v13[0] = *v10;
    *(v13 + 9) = *&v10[9];
    sub_100101AA8(&v12, &v9);
    v11 = 1;
    a1(&v9);
    sub_10000B3A8(&v9, &qword_1016B1CA0, &qword_1013918C0);
    sub_100101B04(&v12);
  }

  return sub_10000B3A8(v14, &unk_1016A6180, &unk_101409EE0);
}

uint64_t sub_100A59FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 88))
  {

    v6 = 6;
  }

  else
  {
    *(a1 + 88) = a2;
    *(a1 + 96) = a3;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;

    result = 0;
    v6 = -1;
  }

  *a4 = result;
  *(a4 + 40) = v6;
  return result;
}

uint64_t sub_100A5A038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[13])
  {
    v12 = a1[13];
    sub_1000BC4D4(&qword_1016B3CC8, &qword_1013D4A48);
    sub_1000041A4(&unk_1016CDDA0, &qword_1016B3CC8, &qword_1013D4A48);
    result = Publisher.eraseToAnyPublisher()();
    *a2 = result;
  }

  else if (a1[9])
  {
    sub_100101B58();
    swift_allocError();
    *v5 = a1;
    *(v5 + 40) = 6;
    swift_willThrow();
  }

  else
  {
    v6 = sub_1000BC4D4(&qword_1016B3CC8, &qword_1013D4A48);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = PassthroughSubject.init()();
    v10 = a1[13];
    a1[13] = v9;

    [*(a1[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) setNotifyValue:1 forCharacteristic:a1[5]];
    sub_1000041A4(&unk_1016CDDA0, &qword_1016B3CC8, &qword_1013D4A48);
    v11 = Publisher.eraseToAnyPublisher()();

    *a2 = v11;
  }

  return result;
}

uint64_t sub_100A5A1F8(void *a1)
{
  [*(a1[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) setNotifyValue:0 forCharacteristic:a1[5]];
  if (a1[13])
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v6 = -1;

    PassthroughSubject.send(completion:)();

    sub_10000B3A8(v4, &unk_1016B1CB0, &qword_1013FB750);
    v2 = a1[13];
  }

  a1[13] = 0;
}

uint64_t sub_100A5A2B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1000BC4D4(&qword_1016B3DB8, &qword_1013D4B20);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v3 = v42;
  v37 = *(v43 + 8);
  if (v42)
  {
    v4 = *&v43[0];
    v5 = swift_allocObject();
    *(v5 + 16) = v42;
    *(v5 + 24) = v4;
    v6 = sub_100A5F748;
    v7 = v37;
    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(&v43[0] + 1);
    if (*(&v43[0] + 1))
    {
LABEL_3:
      *(swift_allocObject() + 16) = v37;
      v8 = sub_100A5F7A0;
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_11:
      v22 = qword_101695288;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177C730);
      sub_100101AA8(a1, &v42);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v38 = v7;
        v26 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v41 = v36;
        *v26 = 136446466;
        v34 = v25;
        v27 = sub_100A5AADC(v36);
        v29 = v6;
        v30 = sub_1000136BC(v27, v28, &v41);

        *(v26 + 4) = v30;
        v6 = v29;
        *(v26 + 12) = 2112;
        sub_100101B58();
        swift_allocError();
        sub_100101AA8(&v42, v31);
        v32 = _swift_stdlib_bridgeErrorToNSError();
        sub_100101B04(&v42);
        *(v26 + 14) = v32;
        *v35 = v32;
        _os_log_impl(&_mh_execute_header, v24, v34, "%{public}s: Sending %@ failure to readPromise", v26, 0x16u);
        sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v36);

        v7 = v38;
      }

      else
      {

        sub_100101B04(&v42);
      }

      v42 = 12;
      memset(v43, 0, sizeof(v43));
      v44 = 267;
      (v6)(&v42);
      sub_1000BB27C(v6);
      sub_10000B3A8(&v42, &qword_1016B1CA8, &qword_1013D2DB8);
      if (v7)
      {
        goto LABEL_5;
      }

      return sub_1000BB27C(v6);
    }
  }

  v8 = 0;
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (!v7)
  {
    return sub_1000BB27C(v6);
  }

LABEL_5:
  if (qword_101695288 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C730);
  sub_100101AA8(a1, &v42);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v8;
    v41 = v14;
    v15 = v14;
    *v12 = 136446466;
    v16 = sub_100A5AADC(v14);
    v18 = v6;
    v19 = sub_1000136BC(v16, v17, &v41);

    *(v12 + 4) = v19;
    v6 = v18;
    *(v12 + 12) = 2112;
    sub_100101B58();
    swift_allocError();
    sub_100101AA8(&v42, v20);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    sub_100101B04(&v42);
    *(v12 + 14) = v21;
    *v13 = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: Sending %@ failure to writePromise", v12, 0x16u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v15);
    v8 = v40;
  }

  else
  {

    sub_100101B04(&v42);
  }

  v42 = 12;
  memset(v43, 0, sizeof(v43));
  v44 = 267;
  (v8)(&v42);
  sub_1000BB27C(v8);
  sub_1000BB27C(v6);
  return sub_10000B3A8(&v42, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_100A5A888@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v4 = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v10 = v4;
  if (!v3)
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    result = 0;
    goto LABEL_6;
  }

  v9 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v9;
  v6 = sub_1007A7FA0;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = swift_allocObject();
  *(result + 16) = v10;
  v8 = sub_1007A9FB8;
LABEL_6:
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = result;
  return result;
}

uint64_t sub_100A5A96C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unownedRelease();

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);
  sub_1000BB27C(*(v0 + 56));
  v5 = *(v0 + 80);
  sub_1000BB27C(*(v0 + 72));
  v6 = *(v0 + 96);
  sub_1000BB27C(*(v0 + 88));
  v7 = *(v0 + 104);

  return v0;
}

uint64_t sub_100A5A9CC()
{
  sub_100A5A96C();

  return swift_deallocClassInstance();
}

Swift::Int sub_100A5AA00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 40);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100A5AA70()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 40);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t CBCharacteristicProperties.description.getter(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5B2CC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x616364616F72622ELL;
  *(v5 + 5) = 0xEA00000000007473;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100A5B2CC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x646165722ELL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5B2CC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000015;
    *(v11 + 5) = 0x8000000101369D10;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100A5B2CC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x65746972772ELL;
  *(v14 + 5) = 0xE600000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_31:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100A5B2CC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x796669746F6E2ELL;
  *(v17 + 5) = 0xE700000000000000;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100A5B2CC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x74616369646E692ELL;
  *(v20 + 5) = 0xE900000000000065;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100A5B2CC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD00000000000001ALL;
  *(v23 + 5) = 0x8000000101369CF0;
  if ((a1 & 0x80) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100A5B2CC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000013;
  *(v26 + 5) = 0x8000000101369CD0;
  if ((a1 & 0x100) == 0)
  {
LABEL_19:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100A5B2CC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000019;
  *(v29 + 5) = 0x8000000101369CB0;
  if ((a1 & 0x200) != 0)
  {
LABEL_56:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v31 = *(v2 + 2);
    v30 = *(v2 + 3);
    if (v31 >= v30 >> 1)
    {
      v2 = sub_100A5B2CC((v30 > 1), v31 + 1, 1, v2);
    }

    *(v2 + 2) = v31 + 1;
    v32 = &v2[16 * v31];
    *(v32 + 4) = 0xD00000000000001BLL;
    *(v32 + 5) = 0x8000000101369C90;
  }

LABEL_61:
  v33 = Array.description.getter();

  return v33;
}

char *sub_100A5B2CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for Characteristic()
{
  return objc_opt_self();
}

{
  return type metadata accessor for Characteristic();
}

char *sub_100A5B444(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3A20, &qword_1013D47C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5B550(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3A28, &qword_1013D47D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5B734(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5B880(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3D40, &qword_1013D4AA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100A5B9D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3D30, &qword_1013D4A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5BB4C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3E90, &qword_1013D4BE0);
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
    sub_1000BC4D4(&qword_1016A9F18, &qword_1013D78F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5BCF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_100A5BE68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C1F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C4F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3B68, &qword_1013D4908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 5 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100A5C600(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3F30, &unk_1013D4C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C70C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3DE0, &qword_1013D4B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C994(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3C90, &qword_1013D4A18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100A5CBA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5CCDC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_100A5CDE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3E18, &qword_1013D4B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&unk_1016AD670, &unk_1013C3FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5CF44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3DE8, &qword_1013D4B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5D114(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3D90, &qword_1013D4AF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100A5D350(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3AB0, &qword_1013D4858);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5D53C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3C20, &qword_1013D49A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3C28, &qword_1013D49B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5D670(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016A61A8, &qword_1013B3C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5D844(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000BC4D4(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100A5DA38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3E38, &qword_1013D4B88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5DB5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3E40, &qword_1013D4B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5DCA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_100A5DF68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3E58, &qword_1013D4BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E14C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3E48, &qword_1013D4B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100A5E278(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3EF0, &qword_1013D4C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E3E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3D08, &qword_1013D4A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E50C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_10169F018, &qword_10139FE00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E748(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_100A5E834(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3C80, &qword_1013D4A08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E954(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3F20, &qword_1013D4C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5EBF8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3AC8, &qword_1013D4870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3AD0, &qword_1013D4878);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5EDB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3C60, &qword_1013D49E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3C68, &qword_1013D49F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5EF44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_100A5F130(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BC4D4(a5, a6);
  v16 = *(sub_1000BC4D4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000BC4D4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100A5F3B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100A5F4E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3B98, &qword_1013D4938);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100A5F600(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Characteristic();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100A5F640(uint64_t a1)
{
  v2 = type metadata accessor for CharacteristicUUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A5F6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A6180, &unk_101409EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A5F748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100A5F770(void (*a1)(__int128 *), uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_100A59E30(a1, a2, *(v2 + 16));
}

uint64_t type metadata accessor for BeaconPayloadMetaDataV2()
{
  result = qword_1016B3F90;
  if (!qword_1016B3F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A5F818()
{
  result = type metadata accessor for Bit();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100A5F8B0(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of BinaryEncoding.container()();
  if (((v1[6] - 1) & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = *v1;
  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  v21 = result;
  if (*(result + 16) < 2uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = type metadata accessor for Bit();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v23 = v1[1];
  result = FixedWidthInteger.bits()();
  v20 = result;
  if (*(result + 16) < 2uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v1[2];
  result = FixedWidthInteger.bits()();
  if (*(result + 16) < 3uLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = FixedWidthInteger.bits()();
  if (*(result + 16) < 4uLL)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  v10 = (v7 + 32) & ~v7;
  sub_1000BC4D4(&qword_10169F070, &unk_1013D4CE0);
  v11 = *(v6 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = type metadata accessor for BeaconPayloadMetaDataV2();
  (*(v6 + 16))(v12 + v10, &v2[*(v13 + 32)], v5);
  v25 = v2[*(v13 + 36)];
  result = FixedWidthInteger.bits()();
  if (*(result + 16) < 4uLL)
  {
    goto LABEL_15;
  }

  v14 = result;

  sub_101062A04(v15, v20 + v10, 0, 5uLL);

  v16 = swift_unknownObjectRetain();
  sub_101062A04(v16, v8 + v10, 0, 7uLL);

  v17 = swift_unknownObjectRetain();
  sub_101062A04(v17, v9 + v10, 0, 9uLL);

  if (!__OFADD__(2, 1))
  {
    v26[6] = sub_100A5E6F8(0, 3, 0, _swiftEmptyArrayStorage);
    v18 = swift_unknownObjectRetain();
    sub_10039A94C(v18, v21 + v10, 0, 5uLL);
    sub_10039AF70(v12);
    swift_unknownObjectRelease();
    v19 = swift_unknownObjectRetain();
    sub_10039A94C(v19, v14 + v10, 0, 9uLL);
    sub_1002053B0();
    FixedWidthInteger.init(bits:)();
    sub_10015049C(v26, v26[3]);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

    return sub_100007BAC(v26);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100A5FCB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B9E8);
  sub_1000076D4(v0, qword_10177B9E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A5FD4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B4008);
  v1 = sub_1000076D4(v0, qword_1016B4008);
  if (qword_101694BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B9E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100A5FE14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v51 = a3;
  v53 = a1;
  v54 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v52 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[1] = sub_1000BC488();
  (*(v13 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_100A71EC8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 80) = &_swiftEmptySetSingleton;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0xF000000000000000;
  *(v3 + 136) = _swiftEmptyArrayStorage;
  *(v3 + 168) = &type metadata for AccessoryPairingSpec1_0;
  *(v3 + 176) = sub_100A71E24();
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v18 = v53;
  v17 = v54;
  *(v3 + 24) = v53;
  *(v3 + 40) = v17;
  type metadata accessor for AccessoryPairingValidator();
  v19 = swift_allocObject();
  v20 = type metadata accessor for DeviceIdentityUtility();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();

  swift_defaultActor_initialize();
  v24 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v19 + 16) = v23;
  *(v19 + 24) = 0;
  v26 = v51;
  *(v4 + 56) = v19;
  *(v4 + 64) = v26;
  type metadata accessor for AccessoryPairingErrorManager();
  swift_allocObject();

  v27 = v26;
  *(v4 + 48) = sub_100243CCC(v18);
  v28 = [*&v27[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  v29 = v52;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = *(v4 + 56);
  v31 = *(v4 + 16);
  v32 = type metadata accessor for AccessoryPairingCoordinator();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  v35 = sub_10110ABC0(v29, v30, v31);
  v36 = v35;
  if (v35)
  {
    *(v4 + 72) = v35;

    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    v37 = v55;
    if (v55)
    {

      *(v4 + 32) = v37;
      return v4;
    }

    sub_100101B58();
    swift_allocError();
    *v38 = 16;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 11;
    swift_willThrow();

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
  }

  v39 = *(v4 + 24);

  v40 = *(v4 + 40);

  v41 = *(v4 + 48);

  v42 = *(v4 + 56);

  if (v36)
  {
    v43 = *(v4 + 72);
  }

  v44 = *(v4 + 80);

  v45 = *(v4 + 88);

  v46 = *(v4 + 96);

  v47 = *(v4 + 112);
  sub_100A5F79C(*(v4 + 104));
  sub_100006654(*(v4 + 120), *(v4 + 128));
  v48 = *(v4 + 136);

  sub_100007BAC((v4 + 144));
  type metadata accessor for AccessoryPairingSession();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100A60490()
{
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();

  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);
  sub_100A5F79C(*(v0 + 104));
  sub_100006654(*(v0 + 120), *(v0 + 128));
  v10 = *(v0 + 136);

  sub_100007BAC((v0 + 144));
  return v0;
}

uint64_t sub_100A60594()
{
  sub_100A60490();

  return swift_deallocClassInstance();
}

void sub_100A605EC(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v62 = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  __chkstk_darwin(v5);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  __chkstk_darwin(v8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v63 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v63);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v61 = &v60 - v17;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  v60 = xmmword_10138BBE0;
  *(v18 + 16) = xmmword_10138BBE0;
  *&aBlock = *v3;
  sub_1000BC4D4(&qword_1016B43A0, &qword_1013D4E88);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  v70 = v3;
  *(v18 + 56) = &type metadata for String;
  v22 = sub_100008C00();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v22;
  *(v18 + 64) = v22;
  *(v18 + 72) = 0xD000000000000021;
  *(v18 + 80) = 0x800000010136A8B0;
  os_log(_:dso:log:_:_:)();

  if ([a1 isBatteryTooLow])
  {
    sub_1000BC488();
    v23 = v63;
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v63);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v23);
    v25 = swift_allocObject();
    v26 = v72;
    *(v25 + 16) = v71;
    *(v25 + 24) = v26;
    v78 = sub_100A71D08;
    v79 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v76 = sub_100006684;
    v77 = &unk_101645750;
    v27 = _Block_copy(&aBlock);

    v28 = v64;
    static DispatchQoS.unspecified.getter();
    v74 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v29 = v65;
    v30 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v68 + 8))(v29, v30);
    (*(v66 + 8))(v28, v67);

    v31 = v70[6];
    type metadata accessor for SPPairingSessionError(0);
    v74 = 15;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = aBlock;
    sub_100243F38();
  }

  else
  {
    v33 = v70;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v34 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v35 = sub_10107355C(aBlock);

    v36 = v33[3];
    v37 = sub_100AB035C();
    if (v37 >= v35)
    {
      v44 = v37;
      static os_log_type_t.error.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = v60;
      *(v45 + 56) = &type metadata for Int;
      *(v45 + 64) = &protocol witness table for Int;
      *(v45 + 32) = v35;
      *(v45 + 96) = &type metadata for Int;
      *(v45 + 104) = &protocol witness table for Int;
      *(v45 + 72) = v44;
      os_log(_:dso:log:_:_:)();

      sub_1000BC488();
      v46 = *(v11 + 104);
      v62 = v44;
      v47 = v63;
      v46(v14, enum case for DispatchQoS.QoSClass.default(_:), v63);
      v48 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 8))(v14, v47);
      v49 = swift_allocObject();
      v50 = v72;
      *(v49 + 16) = v71;
      *(v49 + 24) = v50;
      v78 = sub_100A71CD8;
      v79 = v49;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v76 = sub_100006684;
      v77 = &unk_1016456B0;
      v51 = _Block_copy(&aBlock);

      v52 = v64;
      static DispatchQoS.unspecified.getter();
      v74 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v53 = v65;
      v54 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v51);

      (*(v68 + 8))(v53, v54);
      (*(v66 + 8))(v52, v67);

      v55 = v33[6];
      type metadata accessor for SPPairingSessionError(0);
      *&aBlock = 17;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v56 = v74;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      strcpy(&aBlock, "Limit reached ");
      HIBYTE(aBlock) = -18;
      v73 = v35;
      v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v57);

      v58._object = 0x800000010136A8E0;
      v58._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v58);
      v73 = v62;
      v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v59);

      sub_100243F38();
    }

    else
    {
      v38 = swift_allocObject();
      v39 = v72;
      v38[2] = v71;
      v38[3] = v39;
      v38[4] = v33;
      v38[5] = a1;
      v38[6] = v62;
      v40 = type metadata accessor for TaskPriority();
      v41 = v61;
      (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v36;
      v42[5] = sub_100A71CF8;
      v42[6] = v38;

      v43 = a1;

      sub_10025EDD4(0, 0, v41, &unk_1013A0968, v42);
    }
  }
}

void sub_100A61174(void (*a1)())
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

void sub_100A61230(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, void), uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v39 = a3;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v21;
  if (a1)
  {
    v24 = *(a4 + 16);
    v25 = swift_allocObject();
    v26 = v37;
    v27 = v38;
    v25[2] = v38;
    v25[3] = a4;
    v25[4] = a2;
    v25[5] = v39;
    v25[6] = v26;
    v47 = sub_100A71D48;
    v48 = v25;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100006684;
    v46 = &unk_1016457F0;
    v28 = _Block_copy(&aBlock);
    v29 = v27;

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v41 + 8))(v17, v14);
    (*(v19 + 8))(v23, v40);
  }

  else
  {
    v30 = a2;
    v37 = a4;
    v38 = v19;
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000BC488();
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v13, v9);
    v32 = swift_allocObject();
    v33 = v39;
    *(v32 + 16) = v30;
    *(v32 + 24) = v33;
    v47 = sub_100A71D28;
    v48 = v32;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100006684;
    v46 = &unk_1016457A0;
    v34 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v41 + 8))(v17, v14);
    v38[1](v23, v40);

    v35 = *(v37 + 48);
    type metadata accessor for SPPairingSessionError(0);
    v42 = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = aBlock;
    sub_100243F38();
  }
}

uint64_t sub_100A618B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v102 = a4;
  v100 = a3;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v99 = v71 - v9;
  v78 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v77 = *(v78 - 1);
  v10 = *(v77 + 64);
  __chkstk_darwin(v78);
  v74 = v71 - v11;
  v80 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v79 = *(v80 - 8);
  v12 = *(v79 + 64);
  __chkstk_darwin(v80);
  v75 = v71 - v13;
  v85 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v82 = *(v85 - 8);
  v14 = *(v82 + 64);
  __chkstk_darwin(v85);
  v81 = v71 - v15;
  v91 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v88 = *(v91 - 8);
  v16 = *(v88 + 64);
  __chkstk_darwin(v91);
  v84 = v71 - v17;
  v92 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v89 = *(v92 - 8);
  v18 = *(v89 + 64);
  __chkstk_darwin(v92);
  v86 = v71 - v19;
  v90 = sub_1000BC4D4(&qword_1016A7480, &qword_1013B61D0);
  v87 = *(v90 - 8);
  v20 = *(v87 + 64);
  __chkstk_darwin(v90);
  v83 = v71 - v21;
  v22 = sub_1000BC4D4(&qword_1016B43A8, &qword_1013D4E90);
  v94 = *(v22 - 8);
  v95 = v22;
  v23 = *(v94 + 64);
  __chkstk_darwin(v22);
  v93 = v71 - v24;
  v25 = sub_1000BC4D4(&qword_1016B43B0, &qword_1013D4E98);
  v97 = *(v25 - 8);
  v98 = v25;
  v26 = *(v97 + 64);
  __chkstk_darwin(v25);
  v96 = v71 - v27;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  v34 = [a1 identifier];
  v76 = a1;
  v35 = v34;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v29 + 8))(v32, v28);
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100008C00();
  *(v33 + 32) = v36;
  *(v33 + 40) = v38;
  os_log(_:dso:log:_:_:)();

  v104 = a2;
  v39 = *(a2 + 32);
  v106 = sub_10131F050(*(a2 + 64), 0);
  v107 = *(a2 + 16);
  v40 = v107;
  v105 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v41 = *(v105 - 8);
  v73 = *(v41 + 56);
  v42 = v41 + 56;
  v43 = v99;
  v73(v99, 1, 1, v105);
  v71[6] = v42;
  v72 = v40;
  v44 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v45 = sub_1000BC488();
  v46 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  v103 = sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488);
  v47 = v74;
  v71[4] = v44;
  v71[5] = v45;
  v71[3] = v46;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v43, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v71[1] = type metadata accessor for Peripheral();
  v71[2] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
  v48 = v75;
  v49 = v78;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v77 + 8))(v47, v49);
  v50 = v72;
  v106 = v72;
  v51 = v73;
  v73(v43, 1, 1, v105);
  v78 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500);
  v52 = v81;
  v53 = v80;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v43, &unk_1016B0FE0, &unk_101391980);

  (*(v79 + 8))(v48, v53);
  swift_allocObject();
  swift_weakInit();
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40);
  v54 = v84;
  v55 = v85;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v82 + 8))(v52, v55);
  v106 = v50;
  v51(v43, 1, 1, v105);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510);
  v56 = v86;
  v57 = v91;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v43, &unk_1016B0FE0, &unk_101391980);

  (*(v88 + 8))(v54, v57);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50);
  v58 = v83;
  v59 = v92;
  Publisher.compactMap<A>(_:)();
  (*(v89 + 8))(v56, v59);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v60 = v93;
  v61 = v90;
  Publishers.CompactMap.map<A>(_:)();
  (*(v87 + 8))(v58, v61);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016B43B8, &qword_1016B43A8, &qword_1013D4E90);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v62 = v95;
  v63 = v96;
  Publisher.catch<A>(_:)();
  (*(v94 + 8))(v60, v62);
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v66 = v100;
  v65[2] = v64;
  v65[3] = v66;
  v67 = v76;
  v65[4] = v102;
  v65[5] = v67;
  v65[6] = v101;
  sub_1000041A4(&qword_1016B43C0, &qword_1016B43B0, &qword_1013D4E98);

  v68 = v67;
  v69 = v98;
  Publisher<>.sink(receiveValue:)();

  (*(v97 + 8))(v63, v69);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100A626AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = *a1;
  v34[3] = &type metadata for BAServiceIdentifier;
  v34[4] = &off_10162CAF0;
  LOBYTE(v34[0]) = 1;
  v14 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v15 = *&v13[v14];
  v31 = v34;

  v16 = sub_1012BBDB4(sub_1001DB3F8, v30, v15);

  sub_100007BAC(v34);
  if (v16)
  {
    v17 = sub_10039C428(&off_10160CFA0);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();

    v34[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v22 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = *(Strong + 48);

      type metadata accessor for SPPairingSessionError(0);
      v32 = 7;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v26 = v33;
      sub_100243F38();
    }

    v33 = v13;
    type metadata accessor for Peripheral();
    v27 = v13;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v4 + 8))(v7, v3);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v22 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v12, v8);
  }

  *v29 = v22;
  return result;
}

uint64_t sub_100A62B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v74 = a4;
  v73 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v70 = Strong;
    sub_1000D2A70(a1, &v85, &unk_1016A6150, &unk_10139DB30);
    v69 = v8;
    v68 = v11;
    if (v87)
    {
      v83 = v85;
      v84[0] = *v86;
      *(v84 + 9) = *&v86[9];
      static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_101385D80;
      v22 = sub_1013181BC();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100008C00();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      os_log(_:dso:log:_:_:)();

      sub_1000BC488();
      (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
      v25 = static OS_dispatch_queue.global(qos:)();
      (*(v16 + 8))(v19, v15);
      v26 = swift_allocObject();
      v27 = v74;
      *(v26 + 16) = v73;
      *(v26 + 24) = v27;
      v81 = sub_100A71D90;
      v82 = v26;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_100006684;
      v80 = &unk_101645868;
      v28 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v75 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v29 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v69 + 8))(v29, v7);
      (*(v72 + 8))(v14, v68);
      sub_100101B04(&v83);
    }

    v66 = v14;
    v31 = v85;
    v80 = &type metadata for BAServiceIdentifier;
    v81 = &off_10162CAF0;
    LOBYTE(aBlock) = 1;
    v32 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v33 = swift_beginAccess();
    v67 = v31;
    v34 = *&v31[v32];
    __chkstk_darwin(v33);
    *(&v64 - 2) = &aBlock;

    v35 = sub_1012BBDB4(sub_1001DB3F8, (&v64 - 4), v34);

    sub_100007BAC(&aBlock);
    if (v35)
    {
      v65 = v7;
      v80 = &type metadata for BACharacteristicIdentifier.FindMy;
      v81 = &off_10162CAD0;
      LOBYTE(aBlock) = 0;
      v36 = swift_beginAccess();
      v37 = *(v35 + 40);
      __chkstk_darwin(v36);
      *(&v64 - 2) = &aBlock;

      v38 = sub_1012BBE10(sub_10038C458, (&v64 - 4), v37);

      sub_100007BAC(&aBlock);
      if (v38)
      {
        v39 = [a5 discoveredMetadata];
        v40 = [v39 findMyVersion];

        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_10098E9DC(v41, v43);
        if ((v44 & 0x100000000) == 0)
        {
          sub_100A6396C(v44);
          v45 = v73;
          v46 = v74;
          sub_100A68E24(a5, v38, v73, v74);
          sub_100A67A7C(a5, v38, v45, v46);
        }

        v64 = v38;
        if (qword_101694BD8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_1000076D4(v55, qword_1016B4008);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        v58 = os_log_type_enabled(v56, v57);
        v7 = v65;
        v53 = v66;
        if (v58)
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Missing FindMy version number!", v59, 2u);
        }

        sub_1000BC488();
        (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
        v60 = static OS_dispatch_queue.global(qos:)();
        (*(v16 + 8))(v19, v15);
        v61 = swift_allocObject();
        v62 = v74;
        *(v61 + 16) = v73;
        *(v61 + 24) = v62;
        v81 = sub_100A71DB0;
        v82 = v61;
        aBlock = _NSConcreteStackBlock;
        v78 = 1107296256;
        v79 = sub_100006684;
        v80 = &unk_101645908;
        v63 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v76 = _swiftEmptyArrayStorage;
        sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v54 = v71;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v63);

LABEL_22:
        (*(v69 + 8))(v54, v7);
        (*(v72 + 8))(v53, v68);
      }

      v7 = v65;
    }

    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v47 = *(v70 + 48);
    type metadata accessor for SPPairingSessionError(0);
    v76 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = aBlock;
    sub_100243F38();

    sub_1000BC488();
    (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
    v49 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v19, v15);
    v50 = swift_allocObject();
    v51 = v74;
    *(v50 + 16) = v73;
    *(v50 + 24) = v51;
    v81 = sub_100A71FC4;
    v82 = v50;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_100006684;
    v80 = &unk_1016458B8;
    v52 = _Block_copy(&aBlock);

    v53 = v66;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v54 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    goto LABEL_22;
  }

  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

void sub_100A6396C(unsigned int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_101694BD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016B4008);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *&v49 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x800000010136AA70, &v49);
    *(v14 + 12) = 2082;
    v15 = sub_10098E010();
    v17 = sub_1000136BC(v15, v16, &v49);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 stringForKey:v21];

    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_10098E9DC(v23, v25);
      if ((v26 & 0x100000000) == 0)
      {
        v27 = v26;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v49 = v31;
          *v30 = 136446210;
          v32 = sub_10098E010();
          v34 = sub_1000136BC(v32, v33, &v49);

          *(v30 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "pairingSpecOverride: %{public}s", v30, 0xCu);
          sub_100007BAC(v31);
        }

        v35 = sub_10098E9DC(0x302E302E32, 0xE500000000000000);
        if ((v35 & 0x100000000) == 0)
        {
          if (v27 < v35)
          {
            goto LABEL_20;
          }

          if (v35 >= v27)
          {
            if (BYTE2(v27) < BYTE2(v35))
            {
              goto LABEL_20;
            }

            if (BYTE2(v35) >= BYTE2(v27))
            {
              v36 = v35 >> 24;
              v37 = HIBYTE(v27);
              goto LABEL_29;
            }
          }

LABEL_22:
          v50 = &type metadata for AccessoryPairingSpec2_0;
          v39 = sub_100A71DD0();
          goto LABEL_23;
        }

LABEL_34:
        __break(1u);
        return;
      }
    }
  }

  v38 = sub_10098E9DC(0x302E302E32, 0xE500000000000000);
  if ((v38 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (a1 < v38)
  {
    goto LABEL_20;
  }

  if (v38 < a1)
  {
    goto LABEL_22;
  }

  if (BYTE2(a1) < BYTE2(v38))
  {
    goto LABEL_20;
  }

  if (BYTE2(v38) < BYTE2(a1))
  {
    goto LABEL_22;
  }

  v36 = v38 >> 24;
  v37 = HIBYTE(a1);
LABEL_29:
  if (v37 >= v36)
  {
    goto LABEL_22;
  }

LABEL_20:
  v50 = &type metadata for AccessoryPairingSpec1_0;
  v39 = sub_100A71E24();
LABEL_23:
  v51 = v39;
  swift_beginAccess();
  sub_100007BAC((v2 + 144));
  sub_10000A748(&v49, v2 + 144);
  swift_endAccess();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v42 = 136446210;
    swift_beginAccess();
    sub_10001F280(v2 + 144, &v49);
    sub_1000BC4D4(&qword_1016B43D0, &unk_1013D4EA0);
    v44 = String.init<A>(describing:)();
    v46 = sub_1000136BC(v44, v45, &v48);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "Using PairingSpec: %{public}s", v42, 0xCu);
    sub_100007BAC(v43);
  }
}

uint64_t sub_100A63FA0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  v35 = a2;
  v32 = a3;
  v33 = a1;
  v31 = *v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v4;
  sub_1000BC4D4(&qword_1016B43A0, &qword_1013D4E88);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 64) = v18;
  *(v14 + 72) = 0xD00000000000002FLL;
  *(v14 + 80) = 0x800000010136A710;
  os_log(_:dso:log:_:_:)();

  v19 = v5[2];
  v20 = swift_allocObject();
  v21 = v32;
  v22 = v33;
  v20[2] = v33;
  v20[3] = v5;
  v24 = v34;
  v23 = v35;
  v20[4] = v21;
  v20[5] = v24;
  v25 = v31;
  v20[6] = v23;
  v20[7] = v25;
  aBlock[4] = sub_100A71C48;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101645520;
  v26 = _Block_copy(aBlock);
  v27 = v22;

  v28 = v23;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v38 + 8))(v9, v6);
  (*(v36 + 8))(v13, v37);
}

void sub_100A643E8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v115 = a5;
  v127 = a3;
  v128 = a4;
  v7 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v112 = v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = *(v122 + 64);
  __chkstk_darwin(v10);
  v120 = v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v124 = *(v13 - 8);
  v125 = v13;
  v14 = *(v124 + 64);
  __chkstk_darwin(v13);
  v121 = v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v118 = *(v16 - 8);
  v119 = v16;
  v17 = *(v118 + 64);
  __chkstk_darwin(v16);
  v117 = v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v19 = *(*(v113 - 8) + 64);
  v20 = __chkstk_darwin(v113);
  v114 = (v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v116 = (v109 - v22);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C410;
  v111 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  v110 = xmmword_101385D80;
  *(v29 + 16) = xmmword_101385D80;
  v126 = a1;
  v30 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = UUID.uuidString.getter();
  v33 = v32;
  (*(v24 + 8))(v27, v23);
  v34 = v28;
  *(v29 + 56) = &type metadata for String;
  v35 = sub_100008C00();
  *(v29 + 64) = v35;
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  os_log(_:dso:log:_:_:)();

  v36 = a2[9];
  v37 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();
  sub_1000D2A70(v36 + v37, &aBlock, &qword_101697380, &unk_10138BEF0);
  v38 = a2;
  if (!v142)
  {
    v48 = &qword_101697380;
    v49 = &unk_10138BEF0;
LABEL_8:
    sub_10000B3A8(&aBlock, v48, v49);
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_100A65CEC(v126, 0, 0);
    sub_1000BC488();
    v51 = v117;
    v50 = v118;
    v52 = v119;
    (*(v118 + 104))(v117, enum case for DispatchQoS.QoSClass.default(_:), v119);
    v53 = static OS_dispatch_queue.global(qos:)();
    (*(v50 + 8))(v51, v52);
    v54 = swift_allocObject();
    v55 = v128;
    *(v54 + 16) = v127;
    *(v54 + 24) = v55;
    v143 = sub_100A71C58;
    v144 = v54;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v141 = sub_100006684;
    v142 = &unk_101645570;
    v56 = _Block_copy(&aBlock);

    v57 = v121;
    static DispatchQoS.unspecified.getter();
    v130 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v58 = v120;
    v59 = v123;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);

    (*(v122 + 8))(v58, v59);
    (*(v124 + 8))(v57, v125);

    v60 = v38[6];
    type metadata accessor for SPPairingSessionError(0);
    v130 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v61 = aBlock;
    sub_100243F38();

    return;
  }

  sub_10000A748(&aBlock, v139);
  v39 = *(v36 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v40 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();
  sub_1000D2A70(v39 + v40, &aBlock, &qword_101697320, &qword_10138BE90);
  if (!v142)
  {
    sub_100007BAC(v139);
    v48 = &qword_101697320;
    v49 = &qword_10138BE90;
    goto LABEL_8;
  }

  v109[1] = v34;
  sub_10000A748(&aBlock, v136);
  swift_beginAccess();
  sub_10001F280((a2 + 18), &v130);
  v42 = v133;
  v41 = v134;
  sub_1000035D0(&v130, v133);
  v44 = v137;
  v43 = v138;
  sub_1000035D0(v136, v137);
  v45 = (*(*(*(v43 + 8) + 8) + 40))(v44);
  v47 = v46;
  (*(v41 + 10))(&aBlock, v139, v45, v46, v42, v41);
  sub_100016590(v45, v47);
  sub_100007BAC(&v130);
  v62 = a2[3];
  v63 = *(v62 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v64 = *(v130 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  v65 = a2;
  if (v130 != 1)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_100A65CEC(v126, 0, 0);
    sub_1000BC488();
    v87 = v117;
    v86 = v118;
    v88 = v119;
    (*(v118 + 104))(v117, enum case for DispatchQoS.QoSClass.default(_:), v119);
    v89 = static OS_dispatch_queue.global(qos:)();
    (*(v86 + 8))(v87, v88);
    v90 = swift_allocObject();
    v91 = v128;
    *(v90 + 16) = v127;
    *(v90 + 24) = v91;
    v134 = sub_100A71C98;
    v135 = v90;
    v130 = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_100006684;
    v133 = &unk_101645610;
    v92 = _Block_copy(&v130);

    v93 = v121;
    static DispatchQoS.unspecified.getter();
    v129 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v94 = v120;
    v95 = v123;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v92);

    (*(v122 + 8))(v94, v95);
    (*(v124 + 8))(v93, v125);

    v96 = v65[6];
    type metadata accessor for SPPairingSessionError(0);
    v129 = 10;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v97 = v130;
    sub_100243F38();
    sub_1001DA760(&aBlock);

LABEL_16:
    sub_100007BAC(v139);
    sub_100007BAC(v136);
    return;
  }

  v66 = v116;
  v67 = v126;
  sub_100A6DF58(v126, &aBlock, v115, v116);
  v68 = v114;
  sub_1000D2A70(v66, v114, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = *v68;
    sub_100A65CEC(v67, 0, 0);
    static os_log_type_t.error.getter();
    v70 = swift_allocObject();
    *(v70 + 16) = v110;
    v115 = v69;
    v130 = v69;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v71 = String.init<A>(describing:)();
    *(v70 + 56) = &type metadata for String;
    *(v70 + 64) = v35;
    *(v70 + 32) = v71;
    *(v70 + 40) = v72;
    os_log(_:dso:log:_:_:)();

    sub_1000BC488();
    v74 = v117;
    v73 = v118;
    v75 = v119;
    (*(v118 + 104))(v117, enum case for DispatchQoS.QoSClass.default(_:), v119);
    v76 = static OS_dispatch_queue.global(qos:)();
    (*(v73 + 8))(v74, v75);
    v77 = swift_allocObject();
    v78 = v128;
    *(v77 + 16) = v127;
    *(v77 + 24) = v78;
    v134 = sub_100A71CB8;
    v135 = v77;
    v130 = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_100006684;
    v133 = &unk_101645660;
    v79 = _Block_copy(&v130);

    v80 = v121;
    static DispatchQoS.unspecified.getter();
    v129 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v81 = v65;
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v82 = v120;
    v83 = v123;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v79);

    (*(v122 + 8))(v82, v83);
    (*(v124 + 8))(v80, v125);

    v84 = v81[6];
    type metadata accessor for SPPairingSessionError(0);
    v129 = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v85 = v130;
    sub_100243F38();

    sub_1001DA760(&aBlock);

LABEL_15:
    sub_10000B3A8(v116, &unk_1016B15A0, &qword_1013A0900);
    goto LABEL_16;
  }

  v98 = v112;
  sub_10002ACAC(v68, v112, type metadata accessor for OwnedBeaconRecord);
  v99 = sub_10003EB74(v98, v62);
  v100 = v65[21];
  v101 = v65[22];
  sub_1000035D0(v65 + 18, v100);
  v102 = sub_100394B3C(v100, v101);
  v103 = sub_10110BCB8(v99, v102, v127, v128);
  v104 = v65[4];
  if (*(v104 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
  {
    v105 = v65[8];
    v106 = *(v104 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
    __chkstk_darwin(v103);
    v109[-2] = v107;
    type metadata accessor for SharedPairingAgent();
    Lock.callAsFunction<A>(_:)();
    v108 = v130;
    sub_10104E044(v105);
    sub_1001DA760(&aBlock);

    sub_100A718E4(v98, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_100A65940(void (*a1)(void))
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(0);
}

uint64_t sub_100A65A00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + 16);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_100A71C1C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016454D0;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_100A65CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v4[2];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = type metadata accessor for Transaction();
    __chkstk_darwin(v17);
    *&v18[-48] = v4;
    *&v18[-40] = a1;
    *&v18[-32] = a2;
    *&v18[-24] = a3;
    *&v18[-16] = v8;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A65EBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v82 = a4;
  v66 = a3;
  v81 = a1;
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v59 - v8;
  v64 = sub_1000BC4D4(&qword_1016B4340, &qword_1013D4E50);
  v67 = *(v64 - 8);
  v10 = *(v67 + 64);
  __chkstk_darwin(v64);
  v12 = v59 - v11;
  v13 = sub_1000BC4D4(&qword_1016B4348, &qword_1013D4E58);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v59 - v16;
  v72 = sub_1000BC4D4(&qword_1016B4350, &qword_1013D4E60);
  v70 = *(v72 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v72);
  v65 = v59 - v19;
  v20 = sub_1000BC4D4(&qword_1016B4358, &qword_1013D4E68);
  v73 = *(v20 - 8);
  v74 = v20;
  v21 = *(v73 + 64);
  __chkstk_darwin(v20);
  v71 = v59 - v22;
  v23 = sub_1000BC4D4(&qword_1016B4360, &qword_1013D4E70);
  v76 = *(v23 - 8);
  v77 = v23;
  v24 = *(v76 + 64);
  __chkstk_darwin(v23);
  v75 = v59 - v25;
  v26 = sub_1000BC4D4(&qword_1016B4368, &unk_1013D4E78);
  v79 = *(v26 - 8);
  v80 = v26;
  v27 = *(v79 + 64);
  __chkstk_darwin(v26);
  v78 = v59 - v28;
  v29 = *(a2 + 72);
  v84 = sub_10110B248();
  v85 = *(a2 + 16);
  v30 = v85;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v62 = v31;
  v60 = v33;
  v59[2] = v32 + 56;
  (v33)(v9, 1, 1);
  v63 = v30;
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  v34 = sub_1000BC488();
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330);
  v35 = sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488);
  v61 = v34;
  v59[1] = v35;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

  v36 = swift_allocObject();
  v37 = v66;
  *(v36 + 16) = a2;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100A71B10;
  *(v38 + 24) = v36;

  v66 = v37;
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_1016B4370, &qword_1016B4340, &qword_1013D4E50);
  v39 = v64;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v67 + 8))(v12, v39);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_100A71B68;
  *(v40 + 24) = a2;
  v67 = a2;

  static Subscribers.Demand.unlimited.getter();
  type metadata accessor for Peripheral();
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_1000041A4(&qword_1016B4378, &qword_1016B4348, &qword_1013D4E58);
  v41 = v65;
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  v42 = v68;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v69 + 8))(v17, v42);
  if (qword_101694BD0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v43, qword_1016B3FF0);
  v44 = v63;
  v84 = v63;
  v60(v9, 1, 1, v62);
  sub_1000041A4(&qword_1016B4380, &qword_1016B4350, &qword_1013D4E60);
  v45 = v71;
  v46 = v72;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

  (*(v70 + 8))(v41, v46);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_1016B4388, &qword_1016B4358, &qword_1013D4E68);
  v47 = v74;
  v48 = v75;
  Publisher.map<A>(_:)();
  (*(v73 + 8))(v45, v47);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016B4390, &qword_1016B4360, &qword_1013D4E70);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v49 = v77;
  v50 = v78;
  Publisher.catch<A>(_:)();
  (*(v76 + 8))(v48, v49);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  v54 = v81;
  v53 = v82;
  v52[2] = v51;
  v52[3] = v54;
  v55 = v66;
  v52[4] = v66;
  v52[5] = v53;
  v52[6] = v83;
  v56 = v55;

  sub_100012908(v53);
  sub_1000041A4(&qword_1016B4398, &qword_1016B4368, &unk_1013D4E78);
  v57 = v80;
  Publisher<>.sink(receiveValue:)();

  (*(v79 + 8))(v50, v57);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_100A669DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v54 = a5;
  v53 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v7);
  v57 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v59);
  v56 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  __chkstk_darwin(v12);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    Transaction.capture()();
    sub_1000D2A70(a1, &v73, &unk_1016A6150, &unk_10139DB30);
    if ((v75 & 1) == 0)
    {
      v52 = v7;
      sub_10000B3A8(&v73, &unk_1016A6150, &unk_10139DB30);
      v51[3] = static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_101385D80;
      v34 = [v53 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = UUID.uuidString.getter();
      v37 = v36;
      (*(v18 + 8))(v21, v17);
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_100008C00();
      *(v33 + 32) = v35;
      *(v33 + 40) = v37;
      os_log(_:dso:log:_:_:)();

      sub_1000BC488();
      (*(v13 + 13))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
      v38 = static OS_dispatch_queue.global(qos:)();
      (*(v13 + 1))(v16, v12);
      v39 = swift_allocObject();
      v40 = v54;
      v41 = v55;
      *(v39 + 16) = v54;
      *(v39 + 24) = v41;
      v67 = sub_100A71BE8;
      v68 = v39;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_100006684;
      v66 = &unk_101645480;
      v42 = _Block_copy(&aBlock);
      sub_100012908(v40);
      v22 = v56;
      static DispatchQoS.unspecified.getter();
      *&v71 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v13 = v57;
      v43 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v42);

      (*(v60 + 8))(v13, v43);
      (*(v58 + 8))(v22, v59);
      goto LABEL_8;
    }

    v22 = v7;
    v71 = v73;
    v72[0] = *v74;
    *(v72 + 9) = *&v74[9];
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_101385D80;
      v24 = sub_1013181BC();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_100008C00();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      os_log(_:dso:log:_:_:)();

      sub_1000BC488();
      (*(v13 + 13))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
      v27 = static OS_dispatch_queue.global(qos:)();
      (*(v13 + 1))(v16, v12);
      sub_100101AA8(&v71, &v69);
      v28 = swift_allocObject();
      v29 = v54;
      v30 = v55;
      *(v28 + 16) = v54;
      *(v28 + 24) = v30;
      v31 = v70[0];
      *(v28 + 32) = v69;
      *(v28 + 48) = v31;
      *(v28 + 57) = *(v70 + 9);
      v67 = sub_100A71BDC;
      v68 = v28;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_100006684;
      v66 = &unk_101645430;
      v32 = _Block_copy(&aBlock);
      sub_100012908(v29);
      v12 = v56;
      static DispatchQoS.unspecified.getter();
      v62 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v13 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v60 + 8))(v13, v22);
      (*(v58 + 8))(v12, v59);
      sub_100101B04(&v71);
LABEL_8:

      v45 = *(Strong + 32);
      if (v45[OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent] == 1)
      {
        break;
      }

      __break(1u);
LABEL_12:
      swift_once();
    }

    v46 = *(Strong + 64);
    v47 = *&v45[OBJC_IVAR____TtC12searchpartyd14CentralManager_lock];
    __chkstk_darwin(v44);
    *&v51[-4] = v45;
    type metadata accessor for SharedPairingAgent();
    v48 = v45;
    v49 = v46;
    Lock.callAsFunction<A>(_:)();
    v50 = aBlock;
    sub_10104E044(v49);
  }
}

uint64_t sub_100A67430(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    sub_100101B58();
    v5 = swift_allocError();
    sub_100101AA8(a3, v6);
    v4(v5);
  }

  return result;
}

uint64_t sub_100A674B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 72);
  v14 = *(v2 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v5 + 8))(v8, v4);
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100008C00();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v41 = v16;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_10001F280(v2 + 144, v42);
  v22 = v43;
  v23 = v44;
  sub_1000035D0(v42, v43);
  v24 = v23[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45[4] = AssociatedConformanceWitness;
  v27 = sub_1000280DC(v45);
  v24(v22, v23);
  sub_100007BAC(v42);
  v28 = *(v2 + 64);
  v43 = &type metadata for BAServiceIdentifier;
  v44 = &off_10162CAF0;
  LOBYTE(v42[0]) = 1;
  v29 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v30 = swift_beginAccess();
  v31 = *(v28 + v29);
  __chkstk_darwin(v30);
  *(&v41 - 2) = v42;

  v32 = sub_1012BBDB4(sub_1001DB280, (&v41 - 4), v31);

  sub_100007BAC(v42);
  if (!v32)
  {
LABEL_7:
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v37 = sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v36 = Future.init(_:)();
    goto LABEL_8;
  }

  v43 = &type metadata for BACharacteristicIdentifier.FindMy;
  v44 = &off_10162CAD0;
  LOBYTE(v42[0]) = 1;
  v33 = swift_beginAccess();
  v34 = *(v32 + 40);
  __chkstk_darwin(v33);
  *(&v41 - 2) = v42;

  v35 = sub_1012BBE10(sub_1001DB2A0, (&v41 - 4), v34);

  sub_100007BAC(v42);
  if (!v35)
  {

    goto LABEL_7;
  }

  v36 = sub_100A70060(v27, v35, v2, AssociatedTypeWitness, AssociatedConformanceWitness);

LABEL_8:
  sub_100007BAC(v45);
  return v36;
}

uint64_t sub_100A67A18(void (*a1)(_OWORD *))
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v4 = 267;
  a1(v2);
  return sub_10000B3A8(v2, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_100A67A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v5[2];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *&v20[-48] = a1;
    *&v20[-40] = v5;
    *&v20[-32] = a2;
    *&v20[-24] = a3;
    *&v20[-16] = a4;
    *&v20[-8] = v10;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A67C50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  v77 = a5;
  v63 = a4;
  v58[0] = a2;
  v78 = a1;
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v58 - v10;
  v64 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v65 = *(v64 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v64);
  v84 = v58 - v13;
  v68 = sub_1000BC4D4(&qword_1016B4300, &qword_1013D4E30);
  v66 = *(v68 - 8);
  v14 = *(v66 + 64);
  __chkstk_darwin(v68);
  v62 = v58 - v15;
  v16 = sub_1000BC4D4(&qword_1016B4308, &qword_1013D4E38);
  v69 = *(v16 - 8);
  v70 = v16;
  v17 = *(v69 + 64);
  __chkstk_darwin(v16);
  v67 = v58 - v18;
  v19 = sub_1000BC4D4(&qword_1016B4310, &qword_1013D4E40);
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  __chkstk_darwin(v19);
  v71 = v58 - v21;
  v22 = sub_1000BC4D4(&qword_1016B4318, &qword_1013D4E48);
  v75 = *(v22 - 8);
  v76 = v22;
  v23 = *(v75 + 64);
  __chkstk_darwin(v22);
  v74 = v58 - v24;
  v25 = [a2 discoveredMetadata];
  v26 = [v25 manufacturerName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = String.lowercased()();

  v83 = v27;
  v81 = 0x6C6F6F747073;
  v82 = 0xE600000000000000;
  sub_1000DF96C();
  v28 = StringProtocol.contains<A>(_:)();

  v29 = *(a3 + 32);
  v83._countAndFlagsBits = sub_101317D88((v28 & 1), *(a3 + 64));
  v81 = *(a3 + 16);
  v30 = v81;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = *(v31 - 8);
  v59 = *(v32 + 56);
  v58[1] = v32 + 56;
  v59(v11, 1, 1, v31);
  v61 = v30;
  sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
  v33 = sub_1000BC488();
  sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
  sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488);
  v60 = v33;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  v34 = swift_allocObject();
  v35 = v58[0];
  v34[2] = a3;
  v34[3] = v35;
  v34[4] = v63;
  v80 = a3;

  v36 = v35;

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0);
  v37 = v62;
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330);
  v38 = v64;
  v39 = v84;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v65 + 8))(v39, v38);
  if (qword_101694BD0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v40, qword_1016B3FF0);
  v41 = v61;
  v83._countAndFlagsBits = v61;
  v59(v11, 1, 1, v31);
  sub_1000041A4(&qword_1016B4320, &qword_1016B4300, &qword_1013D4E30);
  v43 = v67;
  v42 = v68;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  (*(v66 + 8))(v37, v42);
  sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
  sub_1000041A4(&qword_1016B4328, &qword_1016B4308, &qword_1013D4E38);
  v44 = v70;
  v45 = v71;
  Publisher.map<A>(_:)();
  (*(v69 + 8))(v43, v44);
  sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
  sub_1000041A4(&qword_1016B4330, &qword_1016B4310, &qword_1013D4E40);
  sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0);
  v46 = v73;
  v47 = v74;
  Publisher.catch<A>(_:)();
  (*(v72 + 8))(v45, v46);
  v48 = swift_allocObject();
  v49 = v80;
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v77;
  v52 = v78;
  v50[2] = v48;
  v50[3] = v52;
  v53 = v79;
  v50[4] = v51;
  v50[5] = v53;
  sub_1000041A4(&qword_1016B4338, &qword_1016B4318, &qword_1013D4E48);

  v54 = v76;
  v55 = Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v47, v54);
  v56 = *(v49 + 96);
  *(v49 + 96) = v55;
}

uint64_t sub_100A6867C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  sub_100A6DA3C(a1, v7);
  v5 = sub_100A6D73C(v7, a2);
  result = sub_10000B3A8(v7, &qword_1016B4288, &unk_1013D4DB0);
  *a3 = v5;
  return result;
}

uint64_t sub_100A686EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v44 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, &v54, &qword_1016B1CA0, &qword_1013918C0);
    if (v56)
    {
      v41 = v10;
      v42 = v7;
      v43 = v6;
      v52 = v54;
      v53[0] = *v55;
      *(v53 + 9) = *&v55[9];
      static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_101385D80;
      v22 = sub_1013181BC();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100008C00();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      os_log(_:dso:log:_:_:)();

      v25 = v20[11];
      v20[11] = 0;

      v26 = v20[12];
      v20[12] = 0;

      v28 = v20[4];
      if (*(v28 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
      {
        v29 = v20[8];
        v30 = *(v28 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
        __chkstk_darwin(v27);
        *(&v40 - 2) = v31;
        type metadata accessor for SharedPairingAgent();
        Lock.callAsFunction<A>(_:)();
        v32 = aBlock[0];
        sub_10104E044(v29);

        sub_1000BC488();
        (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
        v33 = static OS_dispatch_queue.global(qos:)();
        (*(v15 + 8))(v18, v14);
        sub_100101AA8(&v52, &v50);
        v34 = swift_allocObject();
        v35 = v45;
        *(v34 + 16) = v44;
        *(v34 + 24) = v35;
        v36 = *v51;
        *(v34 + 32) = v50;
        *(v34 + 48) = v36;
        *(v34 + 57) = *&v51[9];
        aBlock[4] = sub_100A71AE0;
        aBlock[5] = v34;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101645340;
        v37 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v48 = _swiftEmptyArrayStorage;
        sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v38 = v47;
        v39 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v37);

        (*(v42 + 8))(v38, v39);
        (*(v46 + 8))(v13, v41);
        sub_100101B04(&v52);
      }

      __break(1u);
    }

    else
    {
      static os_log_type_t.default.getter();
      if (qword_1016950C8 == -1)
      {
LABEL_8:
        os_log(_:dso:log:_:_:)();
      }
    }

    swift_once();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100A68DAC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  a1(v5);
}

uint64_t sub_100A68E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v5[2];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *&v20[-48] = v5;
    *&v20[-40] = a2;
    *&v20[-32] = a1;
    *&v20[-24] = a3;
    *&v20[-16] = a4;
    *&v20[-8] = v10;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A68FF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v111 = a2;
  v105 = a1;
  v106 = a6;
  v104 = a5;
  v96 = a4;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v108 = v77 - v9;
  v92 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = v77 - v11;
  v12 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  __chkstk_darwin(v12);
  v93 = v77 - v14;
  v15 = sub_1000BC4D4(&qword_1016B42B0, &qword_1013D4E08);
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  __chkstk_darwin(v15);
  v97 = v77 - v17;
  v18 = sub_1000BC4D4(&qword_1016B42B8, &qword_1013D4E10);
  v100 = *(v18 - 8);
  v101 = v18;
  v19 = *(v100 + 64);
  __chkstk_darwin(v18);
  v107 = v77 - v20;
  v21 = sub_1000BC4D4(&qword_1016B42C0, &qword_1013D4E18);
  v102 = *(v21 - 8);
  v22 = *(v102 + 64);
  __chkstk_darwin(v21);
  v24 = v77 - v23;
  v25 = sub_1000BC4D4(&qword_1016B42C8, &qword_1013D4E20);
  v103 = *(v25 - 8);
  v26 = *(v103 + 64);
  __chkstk_darwin(v25);
  v28 = v77 - v27;
  v29 = sub_1000BC4D4(&qword_1016B42D0, &qword_1013D4E28);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v77 - v32;
  v34 = *(a3 + 16);
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v109 = a3;
  v35 = v110;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v35)
  {

    v36 = 0;
    v37 = v111;
  }

  else
  {
    v84 = v24;
    v85 = v21;
    v86 = v28;
    v83 = v25;
    v87 = 0;
    v88 = v33;
    v89 = v30;
    v110 = v29;
    v38 = v111;
    v112 = *(v111 + 16);
    v39 = v112;
    v40 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v41 = *(v40 - 8);
    v42 = *(v41 + 56);
    v43 = v108;
    v81 = v40;
    v80 = v42;
    v79 = v41 + 56;
    (v42)(v108, 1, 1);
    v44 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
    v45 = sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488);
    v78 = v39;
    v46 = v90;
    v82 = v44;
    v77[1] = v45;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v43, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0);
    v77[0] = &protocol conformance descriptor for Future<A, B>;
    v47 = v109;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0);
    v48 = v92;
    v49 = v93;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v91 + 8))(v46, v48);
    v50 = swift_allocObject();
    v51 = v96;
    *(v50 + 16) = v38;
    *(v50 + 24) = v51;

    v96 = v51;
    sub_1000BC4D4(&qword_1016B4288, &unk_1013D4DB0);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0);
    v52 = v97;
    v53 = v95;
    Publisher.map<A>(_:)();

    (*(v94 + 8))(v49, v53);
    v54 = swift_allocObject();
    *(v54 + 16) = v38;
    *(v54 + 24) = v47;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    sub_1000041A4(&qword_1016B42D8, &qword_1016B42B0, &qword_1013D4E08);
    sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330);
    v55 = v99;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v98 + 8))(v52, v55);
    if (qword_101694BC8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v56, qword_1016B3FD8);
    v57 = v78;
    v113 = v78;
    v58 = v108;
    v80(v108, 1, 1, v81);
    sub_1000041A4(&qword_1016B42E0, &qword_1016B42B8, &qword_1013D4E10);
    v59 = v84;
    v60 = v101;
    v61 = v107;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v58, &unk_1016B0FE0, &unk_101391980);

    (*(v100 + 8))(v61, v60);
    sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
    sub_1000041A4(&qword_1016B42E8, &qword_1016B42C0, &qword_1013D4E18);
    v62 = v86;
    v63 = v85;
    Publisher.map<A>(_:)();
    (*(v102 + 8))(v59, v63);
    sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
    sub_1000041A4(&qword_1016B42F0, &qword_1016B42C8, &qword_1013D4E20);
    sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0);
    v64 = v88;
    v65 = v83;
    Publisher.catch<A>(_:)();
    (*(v103 + 8))(v62, v65);
    v66 = swift_allocObject();
    v37 = v111;
    swift_weakInit();
    v67 = swift_allocObject();
    v68 = v104;
    v69 = v105;
    v67[2] = v66;
    v67[3] = v69;
    v70 = v96;
    v71 = v109;
    v67[4] = v96;
    v67[5] = v71;
    v72 = v106;
    v67[6] = v68;
    v67[7] = v72;
    sub_1000041A4(&qword_1016B42F8, &qword_1016B42D0, &qword_1013D4E28);
    v73 = v70;

    v74 = v110;
    v36 = Publisher<>.sink(receiveValue:)();

    (*(v89 + 8))(v64, v74);
  }

  v75 = *(v37 + 88);
  *(v37 + 88) = v36;
}

uint64_t sub_100A69D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_100A704D8(a1, a5, a6, a7);
  }

  return result;
}

uint64_t sub_100A69DA8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    static os_log_type_t.debug.getter();
    if (qword_1016950C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  result = swift_allocObject();
  *(result + 16) = xmmword_101385D80;
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
LABEL_13:
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = v14;
    os_log(_:dso:log:_:_:)();

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v20 = sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v14 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A6A058(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for BinaryDecodingError();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  __chkstk_darwin(v9);
  v86 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for BinaryDecoder();
  v78 = *(v79 - 8);
  v12 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Bit();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v72 - v20;
  __chkstk_darwin(v19);
  v82 = v72 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    LOBYTE(v95) = 11;
    v96 = 1;
    a1(&v92);
    return sub_10000B3A8(&v92, &qword_101699380, &unk_1013918F0);
  }

  v24 = Strong;
  v73 = v14;
  v81 = v9;
  v80 = a2;
  v85 = a1;
  v25 = *(Strong + 120);
  v26 = *(Strong + 128);
  if (v26 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(Strong + 120);
  }

  v28 = 0xC000000000000000;
  if (v26 >> 60 != 15)
  {
    v28 = *(Strong + 128);
  }

  v90 = v27;
  v91 = v28;
  sub_100017D5C(a4, a5);
  sub_10002E98C(v25, v26);
  sub_100ED428C(1, a4, a5, &v92);
  v29 = a5;
  v30 = v92;
  Data.append(_:)();
  sub_100016590(v30, *(&v30 + 1));
  v31 = v90;
  v32 = v91;
  v33 = v24[15];
  v34 = v24[16];
  v24[15] = v90;
  v24[16] = v32;
  sub_100017D5C(v31, v32);
  sub_100006654(v33, v34);
  static os_log_type_t.info.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C410;
  v76 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  v75 = xmmword_101385D80;
  *(v36 + 16) = xmmword_101385D80;
  v37 = Data.description.getter();
  v39 = v38;
  *(v36 + 56) = &type metadata for String;
  v74 = sub_100008C00();
  *(v36 + 64) = v74;
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  os_log(_:dso:log:_:_:)();

  v40 = sub_100017C08(a4, v29);
  v41 = v85;
  v42 = v81;
  if ((v40 & 0x100) == 0)
  {
    LOBYTE(v92) = v40;
    sub_1000198E8();
    v43 = FixedWidthInteger.bits()();
    if (*(v43 + 16))
    {
      v72[1] = v35;
      v44 = v83;
      v45 = v73;
      (*(v83 + 16))(v21, v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v73);

      v46 = v82;
      (*(v44 + 32))(v82, v21, v45);
      (*(v44 + 104))(v18, enum case for Bit.one(_:), v45);
      sub_100A71EC8(&qword_101698660, &type metadata accessor for Bit);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v48 = v44 + 8;
      v47 = *(v44 + 8);
      v47(v18, v45);
      if (v92 == LOBYTE(v87[0]))
      {
        v83 = v48;
        v49 = v77;
        BinaryDecoder.init()();
        swift_beginAccess();
        v50 = v24[22];
        sub_1000035D0(v24 + 18, v24[21]);
        v51 = sub_100394B20();
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v88 = v51;
        v89 = AssociatedConformanceWitness;
        sub_1000280DC(v87);
        v53 = *(AssociatedConformanceWitness + 8);
        BinaryDecoder.decode<A>(_:from:)();
        v65 = v24[15];
        v66 = v24[16];
        *(v24 + 15) = xmmword_10138BBF0;
        sub_100006654(v65, v66);
        v67 = v88;
        v68 = v89;
        v69 = sub_1000035D0(v87, v88);
        *(&v93 + 1) = v67;
        v94 = *(v68 + 8);
        v95 = *(v68 + 16);
        v70 = sub_1000280DC(&v92);
        (*(*(v67 - 8) + 16))(v70, v69, v67);
        v96 = 0;
        v85(&v92);

        (*(v78 + 8))(v49, v79);
        v47(v82, v73);
        sub_100016590(v90, v91);
        sub_10000B3A8(&v92, &qword_101699380, &unk_1013918F0);
        return sub_100007BAC(v87);
      }

      sub_100A71EC8(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
      v54 = swift_allocError();
      (*(v84 + 104))(v56, enum case for BinaryDecodingError.insufficientData(_:), v42);
      swift_willThrow();
      v47(v46, v45);
      sub_100016590(v90, v91);
      v41 = v85;
      goto LABEL_17;
    }
  }

  sub_100A71958();
  v54 = swift_allocError();
  *v55 = 1;
  swift_willThrow();
  sub_100016590(v90, v91);
LABEL_17:
  *&v92 = v54;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v57 = v86;
  if (swift_dynamicCast())
  {
    v58 = v84;
    if ((*(v84 + 88))(v57, v42) == enum case for BinaryDecodingError.insufficientData(_:))
    {

      static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)();
    }

    (*(v58 + 8))(v57, v42);
  }

  static os_log_type_t.error.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = v75;
  v60 = Data.description.getter();
  v61 = v74;
  *(v59 + 56) = &type metadata for String;
  *(v59 + 64) = v61;
  *(v59 + 32) = v60;
  *(v59 + 40) = v62;
  os_log(_:dso:log:_:_:)();

  v63 = v24[15];
  v64 = v24[16];
  *(v24 + 15) = xmmword_10138BBF0;
  sub_100006654(v63, v64);
  *&v92 = v54;
  LOBYTE(v95) = 10;
  v96 = 1;
  swift_errorRetain();
  v41(&v92);

  return sub_10000B3A8(&v92, &qword_101699380, &unk_1013918F0);
}

uint64_t sub_100A6AAD4(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v31 = v10;
    v32 = v9;
    v16 = *(Strong + 104);
    v17 = *(Strong + 112);
    *(Strong + 104) = a1;
    *(Strong + 112) = a2;

    sub_100A5F79C(v16);
    BinaryEncoder.init()();
    v18 = a4[4];
    sub_1000035D0(a4, a4[3]);
    v19 = *(v18 + 16);
    v20 = BinaryEncoder.encode<A>(_:)();
    v23 = v22;
    v24 = v20;
    v25 = *(*(v15 + 64) + OBJC_IVAR____TtC12searchpartyd10Peripheral_lock);
    __chkstk_darwin(v20);
    *(&v30 - 2) = v26;
    v27 = v26;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    result = *&v33[0] - 1;
    if (__OFSUB__(*&v33[0], 1))
    {
      __break(1u);
    }

    else
    {
      v28 = Data.chunked(into:)();
      v29 = sub_1001D97CC(v28);

      swift_beginAccess();
      sub_100398324(v29);
      swift_endAccess();
      sub_100A6AEB8(a5);
      sub_100016590(v24, v23);

      return (*(v31 + 8))(v13, v32);
    }
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v35 = 267;
    a1(v33);
    return sub_10000B3A8(v33, &qword_1016B1CA0, &qword_1013918C0);
  }

  return result;
}

uint64_t sub_100A6AEB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v46 = &v44 - v10;
  v11 = sub_1000BC4D4(&qword_1016A7280, &unk_1013B6080);
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v49 = &v44 - v13;
  v14 = sub_1000BC4D4(&qword_1016A7288, &qword_1013D4E00);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v14);
  v52 = &v44 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v2[2];
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  v26 = v2[17];
  if (v26[2])
  {
    v45 = v14;
    v54 = a1;
    v21 = v26[4];
    v24 = v26[5];
    sub_100017D5C(v21, v24);
    static os_log_type_t.debug.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_4:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_101385D80;
      sub_100017D5C(v21, v24);
      v28 = Data.description.getter();
      v30 = v29;
      sub_100016590(v21, v24);
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100008C00();
      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      os_log(_:dso:log:_:_:)();

      v44 = sub_100A59B98(v21, v24);
      v55[0] = v44;
      v57 = v23;
      v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
      v32 = v23;
      sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
      sub_1000BC488();
      sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
      sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488);
      v33 = v46;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v7, &unk_1016B0FE0, &unk_101391980);

      sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
      sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0);
      v34 = v48;
      v35 = v49;
      Publisher.map<A>(_:)();
      (*(v47 + 8))(v33, v34);
      sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
      sub_1000041A4(&qword_1016A7298, &qword_1016A7280, &unk_1013B6080);
      sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0);
      v36 = v51;
      v37 = v52;
      Publisher.catch<A>(_:)();
      (*(v50 + 8))(v35, v36);
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = swift_allocObject();
      v40 = v54;
      *(v39 + 16) = v38;
      *(v39 + 24) = v40;
      sub_1000041A4(&qword_1016A72A8, &qword_1016A7288, &qword_1013D4E00);

      v41 = v45;
      Publisher<>.sink(receiveValue:)();

      (*(v53 + 8))(v37, v41);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return sub_100016590(v21, v24);
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v42 = v2[13];
  if (v42)
  {
    v43 = v2[14];
    v56 = 0;

    v42(v55);
    sub_100A5F79C(v42);
    return sub_10000B3A8(v55, &qword_1016B1CA0, &qword_1013918C0);
  }

  return result;
}

uint64_t sub_100A6B6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1000D2A70(a1, &v22, &qword_1016B1CA0, &qword_1013918C0);
    if (v24)
    {
      v20 = v22;
      v21[0] = *v23;
      *(v21 + 9) = *&v23[9];
      static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_101385D80;
      v8 = sub_1013181BC();
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_100008C00();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      os_log(_:dso:log:_:_:)();

      v11 = v6[13];
      if (v11)
      {
        v12 = v6[14];
        v16 = 5;
        v17 = 0u;
        v18 = 0u;
        v19 = 267;

        v11(&v16);
        sub_100A5F79C(v11);

        sub_10000B3A8(&v16, &qword_1016B1CA0, &qword_1013918C0);
      }

      else
      {
      }

      return sub_100101B04(&v20);
    }

    else
    {
      static os_log_type_t.debug.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      result = swift_beginAccess();
      v13 = v6[17];
      if (v13[2])
      {
        v14 = v13[4];
        v15 = v13[5];
        sub_100017D5C(v14, v15);
        sub_100A077EC(0, 1);
        swift_endAccess();
        sub_100016590(v14, v15);
        sub_100A6AEB8(a3);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100A6B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_1001011C0(a1, &v67);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  sub_1000BC4D4(&qword_1016B4290, &unk_1013D4DC0);
  if (!swift_dynamicCast())
  {
    memset(v62, 0, 40);
    sub_10000B3A8(v62, &qword_1016B4298, &qword_1013D4DD0);
    static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_9:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_101385D80;
      sub_1001011C0(a1, &v67);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_100008C00();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      os_log(_:dso:log:_:_:)();

      *a2 = 7;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 267;
      return result;
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  sub_10000A748(v62, v69);
  v13 = v70;
  v14 = v71;
  sub_1000035D0(v69, v70);
  (*(v14 + 168))(v66, v13, v14);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v60 = v63[0];
    v61 = v63[1];
    v16 = v63[2];
    v15 = v64;
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v17 = v70;
    v18 = v71;
    sub_1000035D0(v69, v70);
    (*(v18 + 168))(&v67, v17, v18);
    if (swift_dynamicCast())
    {
      v58 = v16;
      v59 = v15;
      v19 = *&v62[8];
      v56 = *v62;
      v20 = *&v62[16];
      v21 = *(v3 + 72);
      *(v21 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 3;
      v22 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
      v23 = *(v21 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

      sub_100017D5C(v20, *(&v20 + 1));
      v57 = v20;
      sub_10049659C(v20, *(&v20 + 1), &v67);
      v48 = *(v23 + 56);
      v49 = *(v23 + 64);
      *(v23 + 56) = v67;
      sub_100006654(v48, v49);

      v50 = *(v21 + v22);

      v51 = v56;
      sub_100017D5C(v56, v19);
      sub_1004A4714(v51, v19, &v67);
      v52 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
      v53 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
      *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v67;
      sub_100006654(v52, v53);

      sub_100A6C350(&v67);
      if (v68[25])
      {
        *v62 = v67;
        *&v62[16] = *v68;
        *&v62[25] = *&v68[9];
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        sub_100016590(v60, v61);
        sub_100016590(v58, v59);
        sub_100016590(v51, v19);
        sub_100016590(v57, *(&v57 + 1));
        v54 = *&v62[16];
        *a2 = *v62;
        *(a2 + 16) = v54;
        *(a2 + 25) = *&v62[25];
        *(a2 + 41) = 1;
      }

      else
      {
        sub_100016590(v60, v61);
        sub_100016590(v58, v59);
        sub_100016590(v51, v19);
        sub_100016590(v57, *(&v57 + 1));
        sub_10000A748(&v67, a2);
        *(a2 + 41) = 0;
      }

      goto LABEL_22;
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_100016590(v60, v61);
    sub_100016590(v16, v15);
    v31 = 10;
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    v60 = *(&v67 + 1);
    v61 = v67;
    *&v57 = *&v68[8];
    *(&v57 + 1) = *v68;
    v29 = *&v68[16];
    v30 = *&v68[24];
    static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (!swift_dynamicCast())
  {
    v31 = 7;
LABEL_18:
    *a2 = v31;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 267;
    goto LABEL_22;
  }

  v60 = *(&v67 + 1);
  v61 = v67;
  *&v57 = *&v68[8];
  *(&v57 + 1) = *v68;
  v29 = *&v68[16];
  v30 = *&v68[24];
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_25:
    swift_once();
  }

LABEL_16:
  os_log(_:dso:log:_:_:)();
  v32 = *(v3 + 72);
  *(v32 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 5;
  v33 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v34 = *(v32 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

  sub_100017D5C(v29, v30);
  v59 = v29;
  sub_10049669C(v29, v30, v62);
  v58 = v30;
  v35 = *(v34 + 72);
  v36 = *(v34 + 80);
  *(v34 + 72) = *v62;
  sub_100006654(v35, v36);

  v37 = *(v32 + v33);
  swift_beginAccess();
  sub_10001F280(v3 + 144, v63);
  v38 = v64;
  v39 = v65;
  sub_1000035D0(v63, v64);
  (*(v39 + 72))(v62, v61, v60, v38, v39);

  sub_100007BAC(v63);
  v40 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();
  sub_10002311C(v62, v37 + v40, &qword_101697320, &qword_10138BE90);
  swift_endAccess();

  v41 = (*(v32 + v33) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v42 = *v41;
  v43 = v41[1];
  v44 = v57;
  *v41 = *(&v57 + 1);
  v41[1] = v44;

  sub_100017D5C(*(&v44 + 1), v44);
  sub_100006654(v42, v43);

  sub_10001F280(v3 + 144, v62);
  v45 = *&v62[24];
  v46 = *&v62[32];
  sub_1000035D0(v62, *&v62[24]);
  v47 = *(v46 + 56);
  *(a2 + 24) = swift_getAssociatedTypeWitness();
  *(a2 + 32) = swift_getAssociatedConformanceWitness();
  sub_1000280DC(a2);
  v47(v45, v46);
  sub_100016590(v61, v60);
  sub_100016590(*(&v44 + 1), v44);
  sub_100016590(v59, v58);
  *(a2 + 41) = 0;
  sub_100007BAC(v62);
LABEL_22:
  sub_100007BAC(v66);
  return sub_100007BAC(v69);
}

uint64_t sub_100A6C350@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v89 - v5;
  v7 = type metadata accessor for AccessoryPairingLockCheckResponse();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = sub_1000BC4D4(&qword_10169F848, &qword_1013A17B0);
  v11 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v103 = (&v89 - v12);
  v13 = type metadata accessor for HashAlgorithm();
  v105 = *(v13 - 8);
  v106 = v13;
  v14 = *(v105 + 64);
  __chkstk_darwin(v13);
  v104 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v1[2];
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = (*(v1[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v24 = v23[1];
  if (v24 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_4:
      result = os_log(_:dso:log:_:_:)();
      *a1 = 0xD00000000000001ALL;
      *(a1 + 8) = 0x800000010134B370;
      *(a1 + 40) = 265;
      return result;
    }

LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  v99 = v1[9];
  v100 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v96 = v7;
  v97 = v6;
  v98 = v10;
  v101 = a1;
  v26 = *v23;
  swift_beginAccess();
  sub_10001F280((v1 + 18), &v115);
  v27 = *(&v116 + 1);
  v28 = v117;
  sub_1000035D0(&v115, *(&v116 + 1));
  v29 = *(v28 + 64);
  sub_10002E98C(v26, v24);
  sub_100017D5C(v26, v24);
  v29(&v125, v127 + 8, v26, v24, v27, v28);
  v95 = v1;
  sub_100006654(v26, v24);
  sub_100007BAC(&v115);
  v31 = v26;
  if (*(&v126 + 1))
  {
    v94 = v24;
    sub_10000A748(&v125, v111);
    sub_10000A748((v127 + 8), v110);
    v32 = v99;
    v33 = *(v99 + v100);
    sub_10001F280(v111, &v125);
    v34 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
    swift_beginAccess();

    sub_10002311C(&v125, v33 + v34, &qword_101697378, &unk_101391940);
    swift_endAccess();

    sub_10001F280(v110, &v125);
    v35 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
    swift_beginAccess();
    sub_10002311C(&v125, v32 + v35, &qword_101697380, &unk_10138BEF0);
    swift_endAccess();
    static os_log_type_t.debug.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v36 = qword_10177C410;
    v92 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    v91 = xmmword_101385D80;
    *(v37 + 16) = xmmword_101385D80;
    v39 = v112;
    v38 = v113;
    sub_1000035D0(v111, v112);
    v40 = (*(*(*(v38 + 8) + 8) + 40))(v39);
    v42 = v41;
    v43 = Data.hexString.getter();
    v45 = v44;
    sub_100016590(v40, v42);
    *(v37 + 56) = &type metadata for String;
    v90 = sub_100008C00();
    *(v37 + 64) = v90;
    *(v37 + 32) = v43;
    *(v37 + 40) = v45;
    v93 = v36;
    os_log(_:dso:log:_:_:)();

    v47 = v112;
    v46 = v113;
    sub_1000035D0(v111, v112);
    v48 = (*(*(*(v46 + 8) + 8) + 40))(v47);
    v50 = v49;
    v52 = v104;
    v51 = v105;
    v53 = v106;
    (*(v105 + 104))(v104, enum case for HashAlgorithm.sha256(_:), v106);
    v54 = Data.hash(algorithm:)();
    v56 = v55;
    sub_100016590(v48, v50);
    (*(v51 + 8))(v52, v53);
    v57 = v100;
    v58 = *(v32 + v100);
    v59 = v95[21];
    v60 = v95[22];
    sub_1000035D0(v95 + 18, v59);

    sub_100394B3C(v59, v60);
    sub_10024DAE0(v54, v56, v114);

    v121 = v114[6];
    v122 = v114[7];
    v123 = v114[8];
    v124 = v114[9];
    v117 = v114[2];
    v118 = v114[3];
    v119 = v114[4];
    v120 = v114[5];
    v115 = v114[0];
    v116 = v114[1];
    if (sub_1000424A8(&v115) == 1)
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      sub_100016590(v54, v56);
      sub_100006654(v31, v94);
      sub_100007BAC(v110);
      v61 = v101;
      *v101 = 0xD00000000000001ALL;
      v61[1] = 0x800000010134B3C0;
      *(v61 + 20) = 265;
      return sub_100007BAC(v111);
    }

    v105 = v54;
    v106 = v56;
    v127[4] = v121;
    v127[5] = v122;
    v127[6] = v123;
    v127[7] = v124;
    v127[0] = v117;
    v127[1] = v118;
    v127[2] = v119;
    v127[3] = v120;
    v125 = v115;
    v126 = v116;
    v62 = v103;
    sub_100A6D44C(&v125, v103);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v64 = v101;
    if (EnumCaseMultiPayload == 1)
    {
      v65 = *v62;
      static os_log_type_t.error.getter();
      v66 = swift_allocObject();
      *(v66 + 16) = v91;
      *&v109[0] = v65;
      type metadata accessor for SPPairingSessionError(0);
      v67 = v65;
      v68 = String.init<A>(describing:)();
      v69 = v90;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = v69;
      *(v66 + 32) = v68;
      *(v66 + 40) = v70;
      os_log(_:dso:log:_:_:)();

      *&v109[0] = v67;
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.code.getter();
      sub_10000B3A8(v114, &qword_1016B42A0, &qword_1013D4DD8);
      sub_100016590(v105, v106);
      sub_100006654(v31, v94);
      sub_100007BAC(v110);
      if (v107 == 18)
      {

        *v64 = 9;
        *(v64 + 8) = 0u;
        *(v64 + 24) = 0u;
        v71 = 267;
      }

      else
      {
        *v64 = v67;
        v71 = 256;
      }
    }

    else
    {
      v104 = v31;
      v72 = v32;
      v73 = v98;
      sub_10002ACAC(v62, v98, type metadata accessor for AccessoryPairingLockCheckResponse);
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v74 = *(v72 + v57);
      v75 = *(v96 + 32);
      v76 = type metadata accessor for UUID();
      v77 = *(v76 - 8);
      v78 = v73 + v75;
      v79 = v97;
      (*(v77 + 16))(v97, v78, v76);
      (*(v77 + 56))(v79, 0, 1, v76);
      v80 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
      swift_beginAccess();

      sub_10002311C(v79, v74 + v80, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();

      v81 = *(v72 + v57);
      v82 = v73[7];
      v83 = *(v81 + 128);
      *(v81 + 120) = v73[6];
      *(v81 + 128) = v82;

      v85 = v112;
      v84 = v113;
      sub_1000035D0(v111, v112);
      v86 = (*(*(*(v84 + 8) + 8) + 40))(v85);
      v88 = v87;
      sub_100A6D064(v73, v86, v87, &v107);
      sub_100016590(v86, v88);
      if (v108)
      {
        sub_10000B3A8(v114, &qword_1016B42A0, &qword_1013D4DD8);
        sub_100016590(v105, v106);
        sub_100006654(v104, v94);
        sub_100A718E4(v73, type metadata accessor for AccessoryPairingLockCheckResponse);
        sub_100007BAC(v110);
        sub_10000A748(&v107, v109);
        sub_10000A748(v109, v64);
        *(v64 + 41) = 0;
        return sub_100007BAC(v111);
      }

      sub_10000B3A8(&v107, &qword_1016B4298, &qword_1013D4DD0);
      sub_10000B3A8(v114, &qword_1016B42A0, &qword_1013D4DD8);
      sub_100016590(v105, v106);
      sub_100006654(v104, v94);
      sub_100A718E4(v73, type metadata accessor for AccessoryPairingLockCheckResponse);
      sub_100007BAC(v110);
      *v64 = 0xD000000000000019;
      *(v64 + 8) = 0x800000010134B3E0;
      v71 = 265;
    }

    *(v64 + 40) = v71;
    return sub_100007BAC(v111);
  }

  sub_10000B3A8(&v125, &qword_101697370, &unk_10138BEE0);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  result = sub_100006654(v26, v24);
  v30 = v101;
  *v101 = 0xD000000000000026;
  v30[1] = 0x800000010134B390;
  *(v30 + 20) = 265;
  return result;
}

uint64_t sub_100A6D064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for AccessoryPairingLockCheckResponse() + 36));
  v16 = *v15;
  v17 = v15[1];
  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  result = (*(v11 + 8))(v14, v10);
  if (v20 >> 60 != 15)
  {
    v64 = v18;
    v65 = v20;
    v22 = a1[2];
    v23 = a1[3];
    v62 = v22;
    v63 = v23;
    v24 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v24 != 2)
      {
        v25 = 0;
        goto LABEL_15;
      }

      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (!v28)
      {
LABEL_15:
        v29 = 60 - v25;
        if (__OFSUB__(60, v25))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v56 = a2;
        v57 = a3;
        sub_100017D5C(v22, v23);
        v58 = sub_100845C88(v29);
        v59 = v30;
        sub_100776394(&v58, 0);
        v32 = v58;
        v31 = v59;
        Data.append(_:)();
        result = sub_100016590(v32, v31);
        v33 = v23 >> 62;
        if ((v23 >> 62) <= 1)
        {
          if (!v33)
          {
            v34 = BYTE6(v23);
            goto LABEL_26;
          }

LABEL_23:
          LODWORD(v34) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
LABEL_31:
            __break(1u);
            return result;
          }

          v34 = v34;
          goto LABEL_26;
        }

        if (v33 == 2)
        {
          v36 = *(v22 + 16);
          v35 = *(v22 + 24);
          v28 = __OFSUB__(v35, v36);
          v34 = v35 - v36;
          if (v28)
          {
            __break(1u);
            goto LABEL_23;
          }
        }

        else
        {
          v34 = 0;
        }

LABEL_26:
        result = 100 - v34;
        if (!__OFSUB__(100, v34))
        {
          v58 = sub_100845C88(result);
          v59 = v37;
          sub_100776394(&v58, 0);
          v38 = v58;
          v39 = v59;
          Data.append(_:)();
          sub_100016590(v38, v39);
          swift_beginAccess();
          sub_10001F280(v5 + 144, &v58);
          v40 = v60;
          v41 = v61;
          v42 = sub_1000035D0(&v58, v60);
          v43 = a1[5];
          v54 = a1[4];
          v55 = v42;
          v44 = a1[1];
          v52 = *a1;
          v53 = v43;
          v51 = v44;
          v45 = v64;
          v46 = v65;
          v47 = v62;
          v48 = v63;
          v49 = *(v41 + 48);
          *(a4 + 24) = swift_getAssociatedTypeWitness();
          *(a4 + 32) = swift_getAssociatedConformanceWitness();
          sub_1000280DC(a4);
          v49(v56, v57, v54, v53, v52, v51, v45, v46, v47, v48, v40, v41);
          sub_100007BAC(&v58);
          sub_100016590(v47, v48);
          return sub_100016590(v45, v46);
        }

        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v25 = BYTE6(v20);
      goto LABEL_15;
    }

    LODWORD(v25) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v25 = v25;
    goto LABEL_15;
  }

  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_100A6D44C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    sub_1000BC4D4(&qword_10169F848, &qword_1013A17B0);
    v14 = swift_allocBox();
    v16 = v15;
    type metadata accessor for SPPairingSessionError(0);
    v21[3] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v16 = v21[0];
    swift_storeEnumTagMultiPayload();
    v17 = dispatch_group_create();
    dispatch_group_enter(v17);
    v18 = *(v3 + 56);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v17;

    v20 = v17;
    sub_100414340(a1, sub_100A718DC, v19);

    OS_dispatch_group.wait()();

    swift_beginAccess();
    sub_1000D2A70(v16, a2, &qword_10169F848, &qword_1013A17B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A6D6C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v5, &qword_10169F848, &qword_1013A17B0);
  dispatch_group_leave(a3);
}

uint64_t sub_100A6D73C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000D2A70(a1, &v30, &qword_1016B4288, &unk_1013D4DB0);
  if ((v32 & 1) == 0)
  {
    sub_10000A748(&v30, &v28);
    static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_5:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_101385D80;
      sub_10001F280(&v28, &v26);
      sub_1000BC4D4(&qword_1016B4290, &unk_1013D4DC0);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100008C00();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      os_log(_:dso:log:_:_:)();

      v22 = *&v29[8];
      v23 = *&v29[16];
      v24 = sub_1000035D0(&v28, *&v29[8]);
      v17 = sub_100A70060(v24, a2, v2, v22, v23);
      sub_100007BAC(&v28);
      return v17;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v28 = v30;
  *v29 = *v31;
  *&v29[9] = *&v31[9];
  sub_100101AA8(&v28, &v26);
  v12 = swift_allocObject();
  v13 = v27[0];
  v12[1] = v26;
  v12[2] = v13;
  *(v12 + 41) = *(v27 + 9);
  v14 = sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = Future.init(_:)();
  sub_100101B04(&v28);
  return v17;
}

uint64_t sub_100A6DA3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(v3 + 72);
  v14 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v15 = *(v13 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

  v16 = [a1 productInformation];
  if (v16 && (v17 = v16, v18 = [v16 encryptionKeyE1], v17, v18))
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v22 = sub_10024D46C(v19, v21);
  v24 = v23;
  sub_100006654(v19, v21);

  if (v24 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_8:
      result = os_log(_:dso:log:_:_:)();
      a2[4] = 0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 20) = 267;
      return result;
    }

LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v61 = v22;
  v62 = a2;
  v26 = *(v13 + v14);

  v27 = [a1 discoveredMetadata];
  v28 = [v27 firmwareVersion];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = *(v26 + 96);
  *(v26 + 88) = v29;
  *(v26 + 96) = v31;

  v33 = [a1 discoveredMetadata];
  v34 = [v33 productData];

  v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = sub_100314594(v35, v37);
  if (v39 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    v40 = v61;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    result = sub_100006654(v40, v24);
    v41 = v62;
    *v62 = 14;
    *(v41 + 1) = 0u;
    *(v41 + 3) = 0u;
    *(v41 + 20) = 267;
  }

  else
  {
    v42 = *(v13 + v14);
    v43 = *(v42 + 104);
    v44 = *(v42 + 112);
    *(v42 + 104) = v38;
    *(v42 + 112) = v39;

    sub_100006654(v43, v44);

    v45 = *(v13 + v14);
    v46 = *(v45 + 16);
    v59 = *(v45 + 24);
    v60 = v46;
    v47 = sub_100D596CC(v46, v59, v61, v24);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    swift_beginAccess();
    sub_10001F280(v3 + 144, v63);
    v54 = v64;
    v55 = v65;
    sub_1000035D0(v63, v64);
    v56 = *(v55 + 40);
    v66[3] = swift_getAssociatedTypeWitness();
    v66[4] = swift_getAssociatedConformanceWitness();
    sub_1000280DC(v66);
    v56(v47, v49, v51, v53, v54, v55);
    sub_100017D5C(v60, v59);
    sub_100016590(v47, v49);
    sub_100016590(v51, v53);
    sub_100007BAC(v63);
    v57 = v62;
    sub_10001F280(v66, v62);
    *(v57 + 41) = 0;
    return sub_100007BAC(v66);
  }

  return result;
}

uint64_t sub_100A6DF58@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v157 = a3;
  v147 = a2;
  v171 = a1;
  v165 = a4;
  v6 = type metadata accessor for AccessoryMetadataRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v150 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v160 = &v145 - v11;
  v159 = type metadata accessor for PairingConfig();
  v12 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v161 = (&v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v158 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v168 = &v145 - v18;
  v19 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v164 = &v145 - v21;
  v169 = type metadata accessor for OwnedBeaconRecord();
  v163 = *(v169 - 8);
  v22 = *(v163 + 64);
  v23 = __chkstk_darwin(v169);
  v25 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v145 - v26;
  v152 = type metadata accessor for StableIdentifier();
  v28 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v153 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v145 - v35;
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v172 = v37;
  v173 = v38;
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v149 = &v145 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v166 = &v145 - v43;
  __chkstk_darwin(v42);
  v162 = &v145 - v44;
  v45 = type metadata accessor for DispatchPredicate();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = (&v145 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v5[2];
  *v49 = v50;
  (*(v46 + 104))(v49, enum case for DispatchPredicate.onQueue(_:), v45);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  (*(v46 + 8))(v49, v45);
  if ((v50 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v148 = v25;
  v170 = v9;
  v156 = v5[5];
  v52 = v5[9];
  v53 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v54 = *(v52 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v55 = *(v54 + 128);
  v56 = v5;
  v57 = v172;
  v167 = v27;
  if (v55)
  {
    v58 = *(v54 + 120);
    v59 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();
    sub_1000D2A70(v54 + v59, v36, &qword_1016980D0, &unk_10138F3B0);
    v60 = v173;
    if ((*(v173 + 48))(v36, 1, v57) == 1)
    {
      sub_10000B3A8(v36, &qword_1016980D0, &unk_10138F3B0);
LABEL_12:
      v27 = v167;
      goto LABEL_13;
    }

    v61 = v162;
    (*(v60 + 32))(v162, v36, v57);
    v62 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v62 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (!v62)
    {
      (*(v60 + 8))(v61, v57);
      goto LABEL_12;
    }

    v155 = v34;
    v63 = v57;
    v146 = v56;
    v64 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v65 = v153;
    v66 = &v153[v64[12]];
    v67 = v61;
    v68 = &v153[v64[16]];
    v69 = v60;
    v70 = &v153[v64[20]];
    v154 = v64[24];
    v71 = &v153[v64[28]];
    (*(v69 + 16))(v153, v67, v63);
    *v66 = 0;
    *(v66 + 1) = 0;
    *v68 = 0;
    *(v68 + 1) = 0;
    *v70 = v58;
    *(v70 + 1) = v55;
    *&v65[v154] = 256;
    *v71 = 0;
    *(v71 + 1) = 0;
    swift_storeEnumTagMultiPayload();

    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_101385D80;
    v73 = sub_1010DA578();
    v75 = v74;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 64) = sub_100008C00();
    *(v72 + 32) = v73;
    *(v72 + 40) = v75;
    os_log(_:dso:log:_:_:)();

    v76 = dispatch_group_create();
    dispatch_group_enter(v76);
    v77 = v65;
    v56 = v146;
    v78 = v146[3];
    v79 = v76;
    sub_1003FF8AC(v77, v78, v79);

    OS_dispatch_group.wait()();
    sub_100A718E4(v77, type metadata accessor for StableIdentifier);
    v57 = v172;
    (*(v173 + 8))(v162, v172);
    v27 = v167;
    v34 = v155;
  }

LABEL_13:
  v80 = v56[3];
  v81 = *(v52 + v53);

  v82 = [v171 productInformation];
  if (v82)
  {
    v83 = v82;
    v84 = v168;
    sub_101199070(v168);

    v85 = 0;
    v86 = v173;
  }

  else
  {
    v85 = 1;
    v86 = v173;
    v84 = v168;
  }

  v87 = type metadata accessor for AccessoryProductInfo();
  v88 = *(v87 - 8);
  v89 = *(v88 + 56);
  v162 = v87;
  v155 = v89;
  v154 = v88 + 56;
  (v89)(v84, v85, 1);
  v90 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1000D2A70(v81 + v90, v34, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v86 + 48))(v34, 1, v57) == 1)
  {

    sub_10000B3A8(v84, &qword_101697268, &qword_101394FE0);
    v91 = &qword_1016980D0;
    v92 = &unk_10138F3B0;
    v93 = v34;
  }

  else
  {
    v94 = v166;
    (*(v86 + 32))(v166, v34, v57);
    v95 = v81[16];
    if (v95)
    {
      v96 = v81[15];
      v97 = HIBYTE(v95) & 0xF;
      if ((v95 & 0x2000000000000000) == 0)
      {
        v97 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v97)
      {
        v98 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v99 = v153;
        v100 = &v153[v98[12]];
        v101 = &v153[v98[16]];
        v102 = v98[20];
        v146 = v56;
        v103 = v27;
        v104 = &v153[v102];
        v105 = v98[24];
        v106 = v98[28];
        v151 = v80;
        v107 = &v153[v106];
        (*(v173 + 16))(v153, v166, v172);
        *v100 = 0;
        *(v100 + 1) = 0;
        *v101 = 0;
        *(v101 + 1) = 0;
        *v104 = v96;
        *(v104 + 1) = v95;
        v27 = v103;
        v56 = v146;
        *(v99 + v105) = 256;
        *v107 = 0;
        *(v107 + 1) = 0;
        v80 = v151;
        swift_storeEnumTagMultiPayload();

        v108 = v164;
        v109 = v168;
        sub_10012B4BC(v147, v81, v168, v99, v164);

        sub_100A718E4(v99, type metadata accessor for StableIdentifier);
        (*(v173 + 8))(v166, v172);
        sub_10000B3A8(v109, &qword_101697268, &qword_101394FE0);
        v110 = v169;
        v111 = v163;
        goto LABEL_27;
      }

      (*(v86 + 8))(v166, v57);
    }

    else
    {

      (*(v86 + 8))(v94, v57);
    }

    v91 = &qword_101697268;
    v92 = &qword_101394FE0;
    v93 = v84;
  }

  sub_10000B3A8(v93, v91, v92);
  v111 = v163;
  v108 = v164;
  v110 = v169;
  (*(v163 + 56))(v164, 1, 1, v169);
LABEL_27:
  if ((*(v111 + 48))(v108, 1, v110) == 1)
  {
    sub_10000B3A8(v108, &unk_1016A9A20, &qword_10138B280);
    static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_29:
      os_log(_:dso:log:_:_:)();
      type metadata accessor for SPPairingSessionError(0);
      v175 = 11;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v165 = v174;
      return swift_storeEnumTagMultiPayload();
    }

LABEL_44:
    swift_once();
    goto LABEL_29;
  }

  sub_10002ACAC(v108, v27, type metadata accessor for OwnedBeaconRecord);
  v113 = dispatch_group_create();
  dispatch_group_enter(v113);
  v168 = swift_allocBox();
  v115 = v114;
  type metadata accessor for SPPairingSessionError(0);
  v175 = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v115 = v174;
  swift_storeEnumTagMultiPayload();
  v116 = v157;
  v117 = [v157 name];
  if (v117)
  {
    v118 = v117;
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;
  }

  else
  {
    v119 = 0;
    v121 = 0xE000000000000000;
  }

  v151 = v80;
  v122 = [v116 roleId];
  v123 = [v116 roleEmoji];
  if (v123)
  {
    v124 = v123;
    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v126;
  }

  else
  {
    v125 = 0;
    v127 = 0;
  }

  v128 = [v171 productInformation];
  if (v128)
  {
    v129 = v128;
    v130 = v158;
    sub_101199070(v158);

    v131 = v130;
    v132 = 0;
  }

  else
  {
    v132 = 1;
    v131 = v158;
  }

  (v155)(v131, v132, 1, v162);
  v133 = v161;
  *v161 = v119;
  v133[1].isa = v121;
  v134 = v133;
  v133[2].isa = v122;
  v133[3].isa = v125;
  v133[4].isa = v127;
  sub_100A7027C(v131, v133 + *(v159 + 28));
  v135 = swift_allocObject();
  v136 = v168;
  v135[2] = v113;
  v135[3] = v136;
  v135[4] = v156;
  v135[5] = v56;
  v137 = v113;

  v138 = v167;
  sub_100B093F8(v167, v134, sub_100A702EC, v135);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  v139 = v160;
  sub_1000D2A70(v115, v160, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_100A718E4(v134, type metadata accessor for PairingConfig);
    sub_100A718E4(v138, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v139, &unk_1016B15A0, &qword_1013A0900);
  }

  else
  {
    v140 = v148;
    sub_10002ACAC(v139, v148, type metadata accessor for OwnedBeaconRecord);
    v141 = v149;
    (*(v173 + 16))(v149, v140 + *(v169 + 20), v172);
    v142 = [v171 discoveredMetadata];
    v143 = [v142 rawMetadata];

    v144 = v150;
    sub_10109D1F8(v141, v143, v150);
    sub_100D76BDC(v144, sub_100A6F580, 0);

    sub_100A718E4(v144, type metadata accessor for AccessoryMetadataRecord);
    sub_100A718E4(v140, type metadata accessor for OwnedBeaconRecord);
    sub_100A718E4(v134, type metadata accessor for PairingConfig);
    sub_100A718E4(v138, type metadata accessor for OwnedBeaconRecord);
  }

  sub_1000D2A70(v115, v165, &unk_1016B15A0, &qword_1013A0900);
}