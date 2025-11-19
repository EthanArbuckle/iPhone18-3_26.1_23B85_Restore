uint64_t sub_100511F90(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1005102C0(*a1);
  v5 = v4;
  if (v3 == sub_1005102C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100512018()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005102C0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10051207C()
{
  sub_1005102C0(*v0);
  String.hash(into:)();
}

Swift::Int sub_1005120D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005102C0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100512130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100513988();
  *a2 = result;
  return result;
}

uint64_t sub_100512160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005102C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10051218C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100513988();
  *a1 = result;
  return result;
}

uint64_t sub_1005121CC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1AF8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_10051222C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1AF8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_1005122A0()
{
  result = sub_1005122C0();
  qword_100974F30 = result;
  return result;
}

unint64_t sub_1005122C0()
{
  v1 = 0;
  v2 = 0x617461646174656DLL;
  while (1)
  {
    v6 = *(&off_1008DD640 + v1 + 32);
    if (v6 > 0x15)
    {
      goto LABEL_12;
    }

    if (((1 << v6) & 0x3F7FF8) == 0)
    {
      if (v6 == 2)
      {
        v8 = 0xD000000000000017;
        v7 = 0x80000001007E8C60;
        v9 = 0x80000001007E8C60;
        v10 = 0xD000000000000017;
        goto LABEL_41;
      }

      v7 = 0xEB0000000073746ELL;
      v10 = 0x656D686361747461;
      if (v6 == 15)
      {
LABEL_11:
        v8 = 0x656D686361747461;
        v9 = 0xEB0000000073746ELL;
        goto LABEL_41;
      }

LABEL_12:
      if (*(&off_1008DD640 + v1 + 32))
      {
        v8 = 0xD000000000000010;
      }

      else
      {
        v8 = 0x44497463656A626FLL;
      }

      if (*(&off_1008DD640 + v1 + 32))
      {
        v9 = 0x80000001007EA4D0;
      }

      else
      {
        v9 = 0xE800000000000000;
      }

      if (*(&off_1008DD640 + v1 + 32))
      {
        v10 = 0xD00000000000001DLL;
      }

      else
      {
        v10 = 0x44497463656A626FLL;
      }

      if (*(&off_1008DD640 + v1 + 32))
      {
        v7 = 0x80000001007E9100;
      }

      else
      {
        v7 = 0xE800000000000000;
      }

      goto LABEL_41;
    }

    v7 = 0xE800000000000000;
    v8 = 0x636F44656C746974;
    v9 = 0xED0000746E656D75;
    v10 = 0x617461646174656DLL;
    switch(*(&off_1008DD640 + v1 + 32))
    {
      case 4:
        break;
      case 5:
        v9 = 0xE800000000000000;
        v8 = 0x797469726F697270;
        goto LABEL_40;
      case 6:
        v9 = 0xE700000000000000;
        v8 = 0x64656767616C66;
        goto LABEL_40;
      case 7:
        v8 = 0x6E6F697461657263;
        v9 = 0xEC00000065746144;
        goto LABEL_40;
      case 8:
        v8 = 0x6E65727275636572;
        v9 = 0xEF73656C75526563;
        goto LABEL_40;
      case 9:
        v8 = 0xD000000000000013;
        v9 = 0x80000001007EA5A0;
        goto LABEL_40;
      case 0xA:
        v8 = 0xD000000000000011;
        v9 = 0x80000001007EA5C0;
        goto LABEL_40;
      case 0xB:
        v9 = 0xE800000000000000;
        v8 = 0x656E6F5A656D6974;
        goto LABEL_40;
      case 0xC:
        v9 = 0xE600000000000000;
        v8 = 0x7961446C6C61;
        goto LABEL_40;
      case 0xD:
        v8 = 0xD000000000000011;
        v9 = 0x80000001007EA5E0;
        goto LABEL_40;
      case 0xE:
        v8 = 0x636F447365746F6ELL;
        goto LABEL_40;
      case 0xF:
        goto LABEL_11;
      case 0x10:
        v9 = 0xE600000000000000;
        v8 = 0x736D72616C61;
        goto LABEL_40;
      case 0x11:
        v8 = 0xD000000000000016;
        v9 = 0x80000001007E8FD0;
        goto LABEL_40;
      case 0x12:
        v8 = 0xD00000000000001ALL;
        v9 = 0x80000001007EA610;
        goto LABEL_40;
      case 0x13:
        v8 = 0xD000000000000024;
        v9 = 0x80000001007EA630;
        goto LABEL_40;
      case 0x14:
        v9 = 0xE800000000000000;
        v8 = 0x7367617468736168;
        goto LABEL_40;
      case 0x15:
        v8 = 0x48746361746E6F63;
        v9 = 0xEE0073656C646E61;
        goto LABEL_40;
      default:
        v8 = 0xD000000000000011;
        v9 = 0x80000001007EA570;
LABEL_40:
        v10 = 0x617461646174656DLL;
        break;
    }

LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100005F4C(v8, v9);
    v14 = _swiftEmptyDictionarySingleton[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v0 = v13;
    if (_swiftEmptyDictionarySingleton[3] < v17)
    {
      sub_10036A8F0(v17, isUniquelyReferenced_nonNull_native);
      result = sub_100005F4C(v8, v9);
      if ((v0 & 1) != (v18 & 1))
      {
        goto LABEL_66;
      }

LABEL_46:
      if ((v0 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_46;
    }

    isUniquelyReferenced_nonNull_native = result;
    sub_100373664();
    result = isUniquelyReferenced_nonNull_native;
    if ((v0 & 1) == 0)
    {
LABEL_47:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v19 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v19 = v8;
      v19[1] = v9;
      v20 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v20 = v10;
      v20[1] = v7;
      v21 = _swiftEmptyDictionarySingleton[2];
      v16 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v16)
      {
        goto LABEL_59;
      }

      _swiftEmptyDictionarySingleton[2] = v22;
      goto LABEL_3;
    }

LABEL_2:
    v3 = result;

    v4 = (_swiftEmptyDictionarySingleton[7] + 16 * v3);
    v5 = v4[1];
    *v4 = v10;
    v4[1] = v7;

LABEL_3:
    if (++v1 == 22)
    {
      v8 = 0xE900000000000044;
      v9 = 0x49746E756F636361;
      v10 = 0xE700000000000000;
      v7 = 0x746E756F636361;
      isUniquelyReferenced_nonNull_native = 0x49746E756F636361;
      v0 = 0xE900000000000044;
      v2 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
      v24 = _swiftEmptyDictionarySingleton[2];
      v25 = (v23 & 1) == 0;
      v16 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (!v16)
      {
        v1 = v23;
        if (_swiftEmptyDictionarySingleton[3] >= v26)
        {
          if ((v2 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_10036A8F0(v26, v2);
          result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
          if ((v1 & 1) != (v27 & 1))
          {
LABEL_66:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_67:
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_68;
            }

LABEL_71:
            v44 = result;
            sub_100373664();
            result = v44;
            if (v0)
            {
              goto LABEL_69;
            }

            goto LABEL_72;
          }
        }

        if ((v1 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_57:
        v28 = result;

        v29 = (_swiftEmptyDictionarySingleton[7] + 16 * v28);
        v30 = v29[1];
        *v29 = v7;
        v29[1] = v10;

        goto LABEL_63;
      }

      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v31 = result;
  sub_100373664();
  result = v31;
  if (v1)
  {
    goto LABEL_57;
  }

LABEL_61:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v32 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v32 = isUniquelyReferenced_nonNull_native;
  v32[1] = v0;
  v33 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v33 = v7;
  v33[1] = v10;
  v34 = _swiftEmptyDictionarySingleton[2];
  v16 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v16)
  {
    goto LABEL_75;
  }

  _swiftEmptyDictionarySingleton[2] = v35;
LABEL_63:
  v1 = 0xE800000000000000;
  v2 = 0x6574616C706D6574;
  v8 = 0xE600000000000000;
  v9 = 0x44497473696CLL;
  LOBYTE(isUniquelyReferenced_nonNull_native) = swift_isUniquelyReferenced_nonNull_native();
  result = sub_100005F4C(0x44497473696CLL, 0xE600000000000000);
  v37 = _swiftEmptyDictionarySingleton[2];
  v38 = (v36 & 1) == 0;
  v16 = __OFADD__(v37, v38);
  v39 = v37 + v38;
  if (v16)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  LOBYTE(v0) = v36;
  if (_swiftEmptyDictionarySingleton[3] >= v39)
  {
    goto LABEL_67;
  }

  sub_10036A8F0(v39, isUniquelyReferenced_nonNull_native);
  result = sub_100005F4C(0x44497473696CLL, 0xE600000000000000);
  if ((v0 & 1) != (v40 & 1))
  {
    goto LABEL_66;
  }

LABEL_68:
  if (v0)
  {
LABEL_69:
    v41 = result;

    v42 = (_swiftEmptyDictionarySingleton[7] + 16 * v41);
    v43 = v42[1];
    *v42 = v2;
    v42[1] = v1;

    return _swiftEmptyDictionarySingleton;
  }

LABEL_72:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v45 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v45 = v9;
  v45[1] = v8;
  v46 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v46 = v2;
  v46[1] = v1;
  v47 = _swiftEmptyDictionarySingleton[2];
  v16 = __OFADD__(v47, 1);
  v48 = v47 + 1;
  if (!v16)
  {
    _swiftEmptyDictionarySingleton[2] = v48;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_75:
  __break(1u);
  return result;
}

id sub_100512A88@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v10[3] = sub_1000060C8(0, &qword_10093DD58, off_1008D4118);
  v10[4] = &off_1008F2C88;
  v10[0] = a2;
  v7 = v6;
  v8 = a2;
  result = sub_1004755B4(v7, v10);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_100512B10(void *a1, void *a2)
{
  v65 = *v2;
  v4 = [a1 attachments];
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for REMSavedAttachmentCDIngestor();
    v7 = swift_allocObject();
    sub_1005F8E88(v6, v7);

    v76 = v6;
    sub_1000F5104(&qword_100940928, &unk_1007A0240);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CB48(&qword_100940930, &qword_100940928, &unk_1007A0240);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v8 = Sequence.mapToSet<A>(_:)();
  }

  else
  {
    v8 = _swiftEmptySetSingleton;
  }

  v9 = [a2 attachments];
  if (!v9)
  {
LABEL_45:

    return;
  }

  v10 = v9;
  v61 = 0;
  type metadata accessor for REMCDSavedAttachment();
  sub_10051459C(&unk_10093F780, type metadata accessor for REMCDSavedAttachment);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v11 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v76;
    v12 = v77;
    v13 = v78;
    v14 = v79;
    v15 = v80;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v11 + 56);
  }

  v19 = (v13 + 64) >> 6;
  v70 = v8 & 0xC000000000000001;
  v74 = v8 + 56;
  v66 = v8;
  v67 = v11;
  v68 = v19;
  v69 = v12;
  while (1)
  {
    if (v11 < 0)
    {
      v25 = __CocoaSet.Iterator.next()();
      if (!v25 || (v75 = v25, swift_dynamicCast(), v24 = v81, v22 = v14, v23 = v15, !v81))
      {
LABEL_44:
        sub_10001B860();
        goto LABEL_45;
      }

      goto LABEL_22;
    }

    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      break;
    }

LABEL_18:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      goto LABEL_44;
    }

LABEL_22:
    v26 = [v24 remObjectID];
    if (v26)
    {
      v27 = v26;
      if (v70)
      {
        v28 = v26;
        v29 = __CocoaSet.contains(_:)();

        if ((v29 & 1) == 0)
        {
          v72 = v23;
          goto LABEL_35;
        }

        v14 = v22;
        v15 = v23;
      }

      else
      {
        v72 = v23;
        if (*(v8 + 16) && (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), v42 = NSObject._rawHashValue(seed:)(*(v8 + 40)), v43 = -1 << *(v8 + 32), v44 = v42 & ~v43, ((*(v74 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0))
        {
          v45 = ~v43;
          while (1)
          {
            v46 = *(*(v8 + 48) + 8 * v44);
            v47 = static NSObject.== infix(_:_:)();

            if (v47)
            {
              break;
            }

            v44 = (v44 + 1) & v45;
            if (((*(v74 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v14 = v22;
          v15 = v72;
          v19 = v68;
          v12 = v69;
        }

        else
        {
LABEL_35:
          if (qword_100936380 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          sub_100006654(v48, qword_10094B580);
          v49 = v27;
          v50 = a1;
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v75 = v64;
            *v53 = 136446722;
            v81 = v65;
            swift_getMetatypeMetadata();
            v55 = String.init<A>(describing:)();
            log = v51;
            v57 = v49;
            v58 = sub_10000668C(v55, v56, &v75);
            v8 = v66;

            *(v53 + 4) = v58;
            *(v53 + 12) = 2112;
            v59 = [v50 objectID];
            *(v53 + 14) = v59;
            *(v53 + 22) = 2112;
            v49 = v57;
            *(v53 + 24) = v57;
            *v54 = v59;
            v54[1] = v27;
            v60 = v57;
            _os_log_impl(&_mh_execute_header, log, v52, "%{public}s: Removing saved attachment from saved reminder {cdSavedReminder.remObjectID: %@, cdSavedAttachment.objectID: %@}", v53, 0x20u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            sub_10000607C(v64);
          }

          else
          {
          }

          v11 = v67;
          v19 = v68;
          v12 = v69;
          v15 = v72;
          [v24 setReminder:0];

          v14 = v22;
        }
      }
    }

    else
    {
      v73 = v23;
      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_10094B580);
      v31 = a1;
      v32 = v24;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v75 = v63;
        *v35 = 136446722;
        v81 = v65;
        swift_getMetatypeMetadata();
        v37 = String.init<A>(describing:)();
        v39 = sub_10000668C(v37, v38, &v75);

        *(v35 + 4) = v39;
        v11 = v67;
        *(v35 + 12) = 2112;
        v40 = [v31 objectID];
        *(v35 + 14) = v40;
        *v36 = v40;
        *(v35 + 22) = 2112;
        v41 = [v32 objectID];
        *(v35 + 24) = v41;
        v36[1] = v41;
        _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Can't merge saved attachment for saved reminder because cdSavedAttachment.remObjectID is nil {cdSavedReminder.remObjectID: %@, cdSavedAttachment.objectID: %@}", v35, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        sub_10000607C(v63);
        v19 = v68;
        v12 = v69;
      }

      else
      {
      }

      v14 = v22;
      v15 = v73;
      v8 = v66;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_44;
    }

    v21 = *(v12 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

id sub_1005133CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

void sub_100513458(void *a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 fetchedDueDateDeltaAlerts];
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = [a1 dueDateDeltaAlertsData];
    if (v10)
    {
      v11 = v10;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      type metadata accessor for RDDueDateDeltaAlerts();
      sub_10051459C(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts);
      static REMJSONRepresentable.fromJSONData(_:)();
      if (v1)
      {
        sub_10001BBA0(v12, v14);
        objc_autoreleasePoolPop(v3);
        return;
      }

      sub_10001BBA0(v12, v14);
      v6 = *&v33[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects];
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }
  }

  objc_autoreleasePoolPop(v3);
  v7 = [a1 dueDateDeltaAlertsToUpsert];
  if (v7)
  {
    v8 = v7;
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v15 = [a1 dueDateDeltaAlertIdentifiersToDelete];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for UUID();
    sub_10051459C(&qword_10093B410, &type metadata accessor for UUID);
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1002B203C(v9, v17, v6);

  if (v1)
  {
  }

  else
  {

    if (v18)
    {
      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_10094B580);
      v20 = a1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        v25 = [v20 remObjectID];
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "REMSavedReminderStorageCDIngestor.updateDueDateDeltaAlerts: Applied early alert changes and setFetchedDueDateDeltaAlerts() {savedReminderID: %{public}@}", v23, 0xCu);
        sub_1000050A4(v24, &unk_100938E70, &unk_100797230);
      }

      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      v26.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 setFetchedDueDateDeltaAlerts:v26.super.isa];
    }

    else
    {

      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_10094B580);
      v28 = a1;
      v26.super.isa = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v26.super.isa, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138543362;
        v32 = [v28 remObjectID];
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&_mh_execute_header, v26.super.isa, v29, "REMSavedReminderStorageCDIngestor.updateDueDateDeltaAlerts: Noop {savedReminderID: %{public}@}", v30, 0xCu);
        sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
      }
    }
  }
}

uint64_t sub_100513988()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

void *sub_1005139DC(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 listID];
    v8 = v2;
    v3 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v4 = v2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = _swiftEmptyArrayStorage;
    }

    sub_1000050A4(&v8, &unk_10093AF40, &unk_100795790);
  }

  else
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_1007953F0;
    v3[4] = [a1 accountID];
  }

  return v3;
}

void sub_100513B08(void *a1, void *a2, char a3, uint64_t a4)
{
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  *&v11 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v13 = &v97 - v12;
  if (a3)
  {
    v14 = [a2 createResolutionTokenMapIfNecessary];
    v15 = [a1 resolutionTokenMap];
    if (v15)
    {
      v16 = v15;
      v103 = v13;
      sub_1000F5104(&unk_100943650, &qword_1007A3F70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = 1;
      v18 = v16;
      v19 = sub_100696610(v16, inited);
      swift_setDeallocating();
      sub_100694810(1);
      v20 = String._bridgeToObjectiveC()();

      v21 = [v14 mergeWithMap:v19 forKey:v20];

      if (v21)
      {
        v101 = v14;
        v102 = v18;
        v22 = [a1 listID];
        if (v22)
        {
          v23 = v22;
          sub_10068B324(1, v23, a4);
          if (v4)
          {

            return;
          }

          v52 = v24;
        }

        else
        {
          v52 = 0;
        }

        v53 = v19;
        v54 = v103;
        if (qword_100936380 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100006654(v55, qword_10094B580);
        v56 = v52;
        v57 = a2;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.info.getter();
        v99 = v56;

        v60 = os_log_type_enabled(v58, v59);
        v100 = v52;
        if (v60)
        {
          v98 = v58;
          v61 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v104 = v97;
          *v61 = 136446466;
          v62 = &selRef_persistentStoreForIdentifier_;
          v63 = [v57 remObjectID];
          if (v63)
          {
            v64 = v63;
            v65 = v59;
            v66 = [v63 description];

            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;

            v59 = v65;
            v62 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v69 = 0xE300000000000000;
            v67 = 7104878;
          }

          v78 = sub_10000668C(v67, v69, &v104);

          *(v61 + 4) = v78;
          *(v61 + 12) = 2082;
          if (v100)
          {
            v79 = [v99 v62[106]];
            v80 = 7104878;
            if (v79)
            {
              v81 = v79;
              v82 = v59;
              v83 = [v79 description];

              v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v85 = v84;

              v59 = v82;
            }

            else
            {
              v85 = 0xE300000000000000;
            }
          }

          else
          {
            v85 = 0xE300000000000000;
            v80 = 7104878;
          }

          v86 = sub_10000668C(v80, v85, &v104);

          *(v61 + 14) = v86;
          v87 = v98;
          _os_log_impl(&_mh_execute_header, v98, v59, "Updating cdSavedReminder.template {cdSavedReminder: %{public}s, cdTemplate: %{public}s}", v61, 0x16u);
          swift_arrayDestroy();

          v53 = v19;
        }

        else
        {
        }

        v88 = [v57 template];
        v89 = v99;
        [v57 setTemplate:v99];
        v90 = v102;
        if (v88)
        {
          v91 = v88;
          static Date.now.getter();
          v92 = type metadata accessor for Date();
          (*(*(v92 - 8) + 56))(v54, 0, 1, v92);
          KeyPath = swift_getKeyPath();
          sub_10013206C(KeyPath, v54);

          sub_1000050A4(v54, &unk_100938850, qword_100795AE0);
        }

        if (v100)
        {
          v94 = v89;
          static Date.now.getter();
          v95 = type metadata accessor for Date();
          (*(*(v95 - 8) + 56))(v54, 0, 1, v95);
          v96 = swift_getKeyPath();
          sub_10013206C(v96, v54);

          sub_1000050A4(v54, &unk_100938850, qword_100795AE0);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_10094B580);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v14;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v104 = v34;
        *v31 = 138543618;
        v35 = [v28 objectID];
        *(v31 + 4) = v35;
        *v33 = v35;
        *(v31 + 12) = 2082;
        *(v31 + 14) = sub_10000668C(0x44497473696CLL, 0xE600000000000000, &v104);
        _os_log_impl(&_mh_execute_header, v29, v30, "REMSavedReminderStorageCDIngestor:establishRelationship(onStorage:into cdSavedReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v31, 0x16u);
        sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
        v14 = v32;

        sub_10000607C(v34);
      }

      v36 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = String._bridgeToObjectiveC()();
      [v36 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v38];

      swift_willThrow();
    }
  }

  else
  {
    v25 = [a1 accountID];
    sub_10068B2F4(0, v25, a4);
    if (v4)
    {
    }

    else
    {
      v39 = v26;

      if (qword_100936380 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006654(v40, qword_10094B580);
      v41 = v39;
      v42 = a2;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v104 = v103;
        *v45 = 136446466;
        v46 = [v42 remObjectID];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 description];

          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
        }

        else
        {
          v51 = 0xE300000000000000;
          v49 = 7104878;
        }

        v70 = sub_10000668C(v49, v51, &v104);

        *(v45 + 4) = v70;
        *(v45 + 12) = 2082;
        v71 = [v41 remObjectID];
        if (v71)
        {
          v72 = v71;
          v73 = [v71 description];

          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;
        }

        else
        {
          v76 = 0xE300000000000000;
          v74 = 7104878;
        }

        v77 = sub_10000668C(v74, v76, &v104);

        *(v45 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v43, v44, "Updating cdSavedReminder.account {cdSavedReminder: %{public}s, cdAccount: %{public}s}", v45, 0x16u);
        swift_arrayDestroy();
      }

      [v42 setAccount:v41];
    }
  }
}

uint64_t sub_10051459C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100514674()
{
  result = qword_10094B780;
  if (!qword_10094B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B780);
  }

  return result;
}

unint64_t sub_100514710()
{
  result = qword_10094B798;
  if (!qword_10094B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B798);
  }

  return result;
}

id sub_1005147A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDXPCBarebonesDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100514808()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B7C8);
  v1 = sub_100006654(v0, qword_10094B7C8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005148D0(void *a1)
{
  v117 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v116 = *(v117 - 8);
  v4 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v114 - v5;
  v123 = type metadata accessor for REMManualOrdering.Predefined();
  v122 = *(v123 - 1);
  v6 = v122[8];
  __chkstk_darwin(v123);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v120 = *(v121 - 8);
  v9 = *(v120 + 64);
  *&v10 = __chkstk_darwin(v121).n128_u64[0];
  v125 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v1;
  v12 = [v1 accountObjectID];
  type metadata accessor for REMCDTemplate();
  v13 = sub_10034B870();
  v14 = sub_10034A794(v12, 64);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  [v15 setPredicate:v14];

  sub_10003450C(v13);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPropertiesToFetch:isa];

  [v15 setRelationshipKeyPathsForPrefetching:0];
  if (qword_100935F08 != -1)
  {
    swift_once();
  }

  v18 = sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v19 = Array._bridgeToObjectiveC()().super.isa;
  [v15 setSortDescriptors:v19];

  v20 = NSManagedObjectContext.fetch<A>(_:)();

  if (v2)
  {
    return v20;
  }

  v126 = v20;
  v21 = v122;
  v22 = v123;
  (v122[13])(v8, enum case for REMManualOrdering.Predefined.templates(_:), v123);
  REMManualOrdering.Predefined.manualOrderingID.getter();
  (v21[1])(v8, v22);
  v122 = type metadata accessor for REMCDManualSortHint();
  v23 = REMManualOrdering.ManualOrderingID.listType.getter();
  v24 = REMManualOrdering.ManualOrderingID.listID.getter();
  v123 = v25;
  v26 = [v124 accountObjectID];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v27 = qword_1009752F0;
  v124 = v26;
  v114 = qword_1009752F0;
  v118 = v23;
  v119 = a1;
  if (v23 == 1)
  {
    v28 = v123;

    v29._countAndFlagsBits = v24;
    v29._object = v28;
    v30 = REMSmartListType.init(stringValue:)(v29);
    if (v30)
    {
      v31 = v30;
      v32 = sub_100139BE4(v30, v26, v27);
      if (v32)
      {
        v33 = v32;
        v137 = 0;
        v34 = [v119 existingObjectWithID:v32 error:{&v137, v114}];
        if (v34)
        {
          v35 = v34;
          v36 = v137;

          v37 = swift_dynamicCastClass();
          if (v37)
          {
            v38 = v37;

            v39 = v124;
            v40 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            goto LABEL_34;
          }
        }

        else
        {
          v41 = v137;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v26 = v124;
      }

      else
      {
      }
    }
  }

  v42 = v26;
  v43 = [v119 persistentStoreOfAccountWithAccountID:v42];
  if (v43)
  {
    v44 = v43;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1007953F0;
    *(v45 + 32) = v44;
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_1000398EC(v118, v24, v123, v26);
  v47 = [objc_allocWithZone(NSFetchRequest) init];
  v48 = [swift_getObjCClassFromMetadata() entity];
  [v47 setEntity:v48];

  if (v45)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v49.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v49.super.isa = 0;
  }

  [v47 setAffectedStores:{v49.super.isa, v114}];

  [v47 setPredicate:v46];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1007953F0;
  if (qword_100935AA8 != -1)
  {
    swift_once();
  }

  v51 = qword_100974C08;
  *(v50 + 32) = qword_100974C08;
  v52 = v51;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v47 setSortDescriptors:v53];

  v54 = NSManagedObjectContext.fetch<A>(_:)();
  v40 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v55 = v118;
  if (v54 >> 62)
  {
    v98 = v54;
    v99 = _CocoaArrayWrapper.endIndex.getter();
    v54 = v98;
    if (v99)
    {
      goto LABEL_26;
    }

LABEL_46:

    (*(v120 + 8))(v125, v121);
    goto LABEL_47;
  }

  if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

LABEL_26:
  if ((v54 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_66:
      v88 = swift_once();
      goto LABEL_42;
    }

    v56 = *(v54 + 32);
  }

  v38 = v56;

  if (v55 == 1 && (v57 = [v38 remObjectID]) != 0)
  {
    v58 = v57;
    v59 = [v38 objectID];
    v60 = type metadata accessor for RDPredefinedObjectKey();
    v61 = objc_allocWithZone(v60);
    *&v61[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v42;
    *&v61[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v58;
    v127.receiver = v61;
    v127.super_class = v60;
    v119 = v42;
    v118 = v58;
    v62 = objc_msgSendSuper2(&v127, "init");
    v63 = v116;
    v64 = v115;
    (*(v116 + 104))(v115, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v117);
    v65 = swift_allocObject();
    *(v65 + 16) = v59;
    *(v65 + 24) = v62;
    v66 = v59;
    v122 = v38;
    v67 = v66;
    v68 = v62;
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

    v38 = v122;

    (*(v63 + 8))(v64, v117);
  }

  else
  {
  }

  v39 = v124;
LABEL_34:
  v69 = [objc_opt_self() v40[107]];
  v70 = [v69 manualSortHintLastAccessedUpdatePolicy];

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74._countAndFlagsBits = v71;
  v74._object = v73;
  v75 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v74);

  if (v75 >= 3)
  {
    LOBYTE(v75) = 2;
  }

  v76 = [v38 remObjectID];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 description];

    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;
  }

  else
  {
    v81 = 0xE300000000000000;
    v79 = 7104878;
  }

  v82 = swift_allocObject();
  *(v82 + 16) = v79;
  *(v82 + 24) = v81;
  sub_1002D74D4(1, v75, sub_10013AF94, v82);

  sub_100226C14(v138);
  v49.super.isa = v138[0];
  if (!v138[0])
  {
    (*(v120 + 8))(v125, v121);

    goto LABEL_47;
  }

  v47 = v138[1];
  v83 = v138[2];
  v85 = v138[3];
  v84 = v138[4];
  v86 = [v38 account];
  if (!v86)
  {
    (*(v120 + 8))(v125, v121);
    v128 = v49.super.isa;
    sub_1000050A4(&v128, &unk_10093B300, &unk_100797780);
    v129 = v47;
    sub_1000050A4(&v129, &qword_100939A08, &unk_100796A80);
    v130 = v83;
    sub_1000050A4(&v130, &unk_100945230, &qword_1007A2590);
    v131 = v85;
    sub_1000050A4(&v131, &qword_10093E9C0, qword_100794F90);
    v132 = v84;
    sub_1000050A4(&v132, &unk_100945240, &qword_1007A0A70);

    goto LABEL_47;
  }

  v119 = v83;
  v123 = v85;
  v124 = v84;
  v122 = v38;
  v42 = v86;
  sub_1006B038C();
  v55 = v87;
  v88 = type metadata accessor for RDManualSortIDCache();
  v18 = v88;
  if (qword_100936508 != -1)
  {
    goto LABEL_66;
  }

LABEL_42:
  v89 = qword_10094C220;
  __chkstk_darwin(v88);
  *(&v114 - 4) = v18;
  *(&v114 - 3) = v55;
  *(&v114 - 2) = v89;
  OS_dispatch_queue.sync<A>(execute:)();
  v90 = v137;
  type metadata accessor for RDManualSortIDAdapter();
  swift_allocObject();
  sub_100214ECC(v90, v55, 0);

  v91 = v126;

  v93 = sub_1001A57AC(v92);

  sub_10039509C(v93);
  v95 = v94;

  v96 = sub_1002173A0(v95);

  v97 = sub_10026A748(v49.super.isa, v96, v91);

  v133 = v47;
  sub_1000050A4(&v133, &qword_100939A08, &unk_100796A80);
  v134 = v119;
  sub_1000050A4(&v134, &unk_100945230, &qword_1007A2590);
  v135 = v123;
  sub_1000050A4(&v135, &qword_10093E9C0, qword_100794F90);
  v136 = v124;
  sub_1000050A4(&v136, &unk_100945240, &qword_1007A0A70);

  (*(v120 + 8))(v125, v121);
  v126 = v97;
  v40 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_47:
  v100 = [objc_opt_self() v40[107]];
  [v100 templatePublicLinkTTL];

  v137 = _swiftEmptyArrayStorage;
  v101 = v126;
  if (v126 >> 62)
  {
    goto LABEL_61;
  }

  v102 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v102)
  {
    do
    {
      v103 = 0;
      v104 = v101 & 0xC000000000000001;
      v105 = v101 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v104)
        {
          v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v103 >= *(v105 + 16))
          {
            goto LABEL_60;
          }

          v106 = *(v101 + 8 * v103 + 32);
        }

        v107 = v106;
        v108 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          break;
        }

        sub_1001D9968(v106);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v109 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v103;
        v101 = v126;
        if (v108 == v102)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v110 = _CocoaArrayWrapper.endIndex.getter();
      v101 = v126;
      v102 = v110;
    }

    while (v110);
  }

LABEL_62:

  v111 = objc_allocWithZone(REMTemplatesDataViewInvocationResult);
  sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
  v112 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v111 initWithTemplateStorages:v112];

  return v20;
}

void sub_100515BE0()
{
  v2 = [v0 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100277EBC(v3);

  type metadata accessor for REMCDTemplate();
  v5 = sub_10034B870();
  v6 = sub_10034A794(v4, 1);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  sub_10003450C(v5);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPropertiesToFetch:isa];

  [v7 setRelationshipKeyPathsForPrefetching:0];
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    v11 = [objc_opt_self() sharedConfiguration];
    [v11 templatePublicLinkTTL];

    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v13 = 0;
      v22 = v10 & 0xC000000000000001;
      v14 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          v15 = v10;
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v14 + 16))
          {
            goto LABEL_16;
          }

          v15 = v10;
          v16 = *(v10 + 8 * v13 + 32);
        }

        v17 = v16;
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_1001D9968(v16);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v13;
        v18 = v10 == i;
        v10 = v15;
        if (v18)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v20 = objc_allocWithZone(REMTemplatesDataViewInvocationResult);
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v20 initWithTemplateStorages:v21];
  }
}

id sub_100515FC4(void *a1)
{
  v4 = v1;
  v6 = [v4 smartListType];
  v7 = [v4 objectID];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v8 = sub_100717244(v6, v7, a1, qword_1009752F0);
  if (!v2)
  {
    v9 = v8;

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007953F0;
    *(v10 + 32) = v9;
    v11 = v9;
    v3 = sub_100516DE8();

    return v3;
  }

  if (![v4 createIfNeeded])
  {
    swift_willThrow();
    return v3;
  }

  v12 = [v4 smartListType];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v17;
  if (v13 == v16 && v15 == v17)
  {

LABEL_12:
    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();
    [v19 invalidParameterErrorWithDescription:v20];

LABEL_13:
    swift_willThrow();

    return v3;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_12;
  }

  v22 = sub_10003A1B8();
  if (!v22)
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v4 smartListType];
  v25 = sub_10022F65C(v24, v23);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007953F0;
  *(v26 + 32) = v25;
  v27 = objc_allocWithZone(REMSmartListsDataViewInvocationResult);
  sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
  v28 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v30 = [v27 initWithSmartListStorages:isa];

  return v30;
}

void *sub_100516380(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
    if (!(v12 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
LABEL_3:
      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v14 = a1;
  v15 = a2;
  v16 = _CocoaArrayWrapper.endIndex.getter();
  a2 = v15;
  v4 = v16;
  a1 = v14;
LABEL_4:
  if (v4 < v3)
  {
    v3 = v4;
  }

  if (v3)
  {
    v5 = a1;
    v6 = a2;
    sub_1000F5104(&qword_100943AE0, &unk_10079B290);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    a2 = v6;
    v8 = v7;
    a1 = v5;
  }

  else
  {
    v8 = &_swiftEmptyDictionarySingleton;
  }

  v17 = v8;
  sub_1005169AC(a1, a2, 1, &v17);
  v9 = v17;
  if (v2)
  {
  }

  return v9;
}

uint64_t sub_1005164C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B7E0);
  v1 = sub_100006654(v0, qword_10094B7E0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005165AC(uint64_t a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa_3();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_100717C9C(v7, a1, 0);
  if (v1)
  {
    sub_10003AF64(v7);
  }

  else
  {
    v2 = sub_100516DE8();
    sub_10003AF64(v7);
  }

  return v2;
}

id *sub_10051668C(uint64_t a1)
{
  v4 = _s10PredicatesOMa_3();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = [*v1 accountObjectID];
  swift_storeEnumTagMultiPayload();
  sub_100717C9C(v8, a1, 0);
  if (v2)
  {
    sub_10003AF64(v8);
  }

  else
  {
    v1 = sub_100516DE8();
    sub_10003AF64(v8);
  }

  return v1;
}

id *sub_100516794(uint64_t a1)
{
  v4 = _s10PredicatesOMa_3();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = [*v1 groupObjectID];
  v8[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_100717C9C(v8, a1, 0);
  if (v2)
  {
    sub_10003AF64(v8);
  }

  else
  {
    v1 = sub_100516DE8();
    sub_10003AF64(v8);
  }

  return v1;
}

uint64_t sub_1005168A4(void **a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(119);
  v3._object = 0x80000001007FBB90;
  v3._countAndFlagsBits = 0xD000000000000075;
  String.append(_:)(v3);
  v4 = [v1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  [v2 invalidParameterErrorWithDescription:v9];

  return swift_willThrow();
}

uint64_t sub_1005169AC(unint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v45 = a1 & 0xFFFFFFFFFFFFFF8;
  v42 = a1 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v40 = a2 & 0xC000000000000001;

  v9 = 4;
  v43 = v7 >> 62;
  v41 = v6 >> 62;
  v38 = v8;
  for (i = v7; ; v7 = i)
  {
    if (v43)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *(v45 + 16);
    }

    v15 = v9 - 4;
    if (v9 - 4 == v14)
    {

      goto LABEL_35;
    }

    if (v42)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v45 + 16))
      {
        goto LABEL_39;
      }

      v16 = *(v7 + 8 * v9);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v41)
    {
      if (v15 != _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_15;
      }

LABEL_34:

LABEL_35:
    }

    if (v15 == *(v8 + 16))
    {
      goto LABEL_34;
    }

LABEL_15:
    if (v40)
    {
      v18 = v6;
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v8 + 16))
      {
        goto LABEL_41;
      }

      v18 = v6;
      v19 = *(v6 + 8 * v9);
    }

    v20 = v19;
    v47[3] = v17;
    v21 = *a4;
    v23 = sub_10002B924(v17);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_40;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if (a3)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_1003731AC();
        if ((v27 & 1) == 0)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      sub_10002BD4C(v26, a3 & 1);
      v28 = *a4;
      v29 = sub_10002B924(v17);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_43;
      }

      v23 = v29;
      if ((v27 & 1) == 0)
      {
LABEL_2:
        v10 = *a4;
        *(*a4 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        *(v10[6] + 8 * v23) = v17;
        *(v10[7] + 8 * v23) = v20;
        v11 = v10[2];
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          goto LABEL_42;
        }

        v10[2] = v13;
        goto LABEL_4;
      }
    }

    v31 = *a4;
    v47[0] = *(*(*a4 + 56) + 8 * v23);
    v32 = v47[0];
    sub_1005168A4(v47);
    if (v44)
    {

      v47[0] = v44;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      if (swift_dynamicCast())
      {
        goto LABEL_44;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v33 = v31[7];
    v34 = *(v33 + 8 * v23);
    *(v33 + 8 * v23) = v46;

LABEL_4:
    ++v9;
    a3 = 1;
    v6 = v18;
    v8 = v38;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_44:
  _StringGuts.grow(_:)(30);
  v36._object = 0x80000001007F8340;
  v36._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v36);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  _print_unlocked<A, B>(_:_:)();
  v37._countAndFlagsBits = 39;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100516DE8()
{
  v1 = v0;
  sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
  v2 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB90(&qword_1009405B8, &qword_1009405B0, &unk_1007B4EC0);
  v3 = sub_10018BA8C();
  v4 = Sequence.unique<A>(by:)();
  if (v0)
  {
    return v1;
  }

  v6 = (v4 >> 62);
  v39 = v4;
  if (v4 >> 62)
  {
    goto LABEL_51;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_52:

    v33 = objc_allocWithZone(REMSmartListsDataViewInvocationResult);
    sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v1 = [v33 initWithSmartListStorages:isa];

    return v1;
  }

LABEL_5:
  v36 = v2;
  v37 = v6;
  v35 = v3;
  v8 = 0;
  v3 = v39 & 0xC000000000000001;
  v2 = &selRef_attachmentRepresentationAndReturnError_;
  while (v7 != v8)
  {
    if (v3)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v9 = *(v39 + 8 * v8 + 32);
    }

    v6 = v9;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
        goto LABEL_52;
      }

      goto LABEL_5;
    }

    v11 = [v9 account];

    ++v8;
    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v10;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v39;
  if (v37)
  {
    if (v6 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_20;
    }
  }

  else if (v6 != *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    v1 = objc_opt_self();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v1 internalErrorWithDebugDescription:{v12, v35, v36}];
LABEL_21:
    v13;

    swift_willThrow();
    return v1;
  }

  v14 = 0;
  do
  {
    if (v3)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v15 = v2[v14 + 4];
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_49;
    }

    v6 = sub_10022EB6C(v15);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v39;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v14;
  }

  while (v17 != v7);
  if (qword_1009363A0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100006654(v19, qword_10094B7E0);
  __chkstk_darwin(v20);
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  v21 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
  v38 = v21;
  v22 = Sequence.map<A>(skippingError:_:)();

  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_37:
      if (v23 == *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

LABEL_56:

      v1 = objc_opt_self();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v1 internalErrorWithDebugDescription:{v12, v35, v36, v21}];
      goto LABEL_21;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_37;
    }
  }

  if (v23 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_56;
  }

LABEL_38:
  if (!v23)
  {
LABEL_46:
    sub_100516380(_swiftEmptyArrayStorage, v22);
    sub_100717764(v2);

    v29 = objc_allocWithZone(REMSmartListsDataViewInvocationResult);
    sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v32 = Dictionary._bridgeToObjectiveC()().super.isa;

    v1 = [v29 initWithSmartListStorages:v30 accountStorages:v31 parentListStorages:v32];

    return v1;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = _swiftEmptyArrayStorage[v24 + 4];
      }

      v26 = v25;
      ++v24;
      v27 = [v25 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v23 != v24);
    v2 = v39;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005175F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B800);
  v1 = sub_100006654(v0, qword_10094B800);
  if (qword_100936490 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005176BC(uint64_t a1)
{
  v2 = v1;
  v59 = type metadata accessor for URL();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v59);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_10094B8B8, &qword_1007AFC58);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v69 = &v54 - v9;
  v70 = type metadata accessor for REMWidgetRefresh.WidgetKind();
  v10 = *(v70 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v70);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  if (qword_1009363A8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_10094B800);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "os_transaction INIT {name: com.apple.remindd.intentsRelevantShortcutsHandler}", v21, 2u);
  }

  v55 = os_transaction_create();
  v22 = *(v2 + 16);
  v23 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  v68 = *(v22 + 16);
  if (v68)
  {
    v54 = v18;
    v24 = 0;
    v2 = 0;
    v66 = v10 + 88;
    v67 = v10 + 16;
    v65 = enum case for REMWidgetRefresh.WidgetKind.widgetForAnyList(_:);
    v62 = enum case for REMWidgetRefresh.WidgetKind.widgetForTodayList(_:);
    v61 = REMSmartListTypeToday;
    v56 = (v4 + 8);
    v64 = (v10 + 8);
    v60 = xmmword_100791300;
    v57 = v10;
    v63 = v22;
    while (1)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v28 = *(v10 + 16);
      v29 = v70;
      v28(v16, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v70);
      v28(v13, v16, v29);
      v30 = (*(v10 + 88))(v13, v29);
      if (v30 == v65)
      {

        v26 = sub_100518B50(v25);
      }

      else
      {
        if (v30 != v62)
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

        v31 = v16;
        v32 = v13;
        v33 = a1;
        sub_1000F5104(&qword_10094B8C0, &qword_1007AFC60);
        inited = swift_initStackObject();
        *(inited + 16) = v60;
        v35 = v61;
        v36 = v69;
        REMNavigationSpecifier.init(_:)();
        v37 = type metadata accessor for REMNavigationSpecifier();
        v38 = *(v37 - 8);
        if ((*(v38 + 48))(v36, 1, v37) == 1)
        {
          sub_1000050A4(v69, &qword_10094B8B8, &qword_1007AFC58);
          v39 = 0x20474E495353494DLL;
          v40 = 0xED00005941444F54;
        }

        else
        {
          v41 = v69;
          v42 = v58;
          REMNavigationSpecifier.url.getter();
          (*(v38 + 8))(v41, v37);
          v39 = URL.absoluteString.getter();
          v40 = v43;
          v44 = v42;
          v10 = v57;
          (*v56)(v44, v59);
        }

        *(inited + 32) = v39;
        *(inited + 40) = v40;
        a1 = v33;
        *(inited + 48) = v33;

        v26 = sub_100390860(inited);
        swift_setDeallocating();
        v27 = sub_1000050A4(inited + 32, &qword_10094B8C8, &unk_1007AFC68);
        v13 = v32;
        v16 = v31;
        v22 = v63;
      }

      ++v24;
      __chkstk_darwin(v27);
      *(&v54 - 2) = v16;
      v4 = sub_10031EF28(_swiftEmptyArrayStorage, sub_100518B34, (&v54 - 4), v26);

      sub_100272914(v4);
      (*v64)(v16, v70);
      if (v68 == v24)
      {
        v23 = aBlock[0];
        break;
      }
    }
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v45, v46, "RelevantShortcutsHandler setting %ld shortcuts", v47, 0xCu);
  }

  else
  {
  }

  v48 = [objc_opt_self() defaultStore];
  sub_1000060C8(0, &unk_10094B8D0, INRelevantShortcut_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v50 = REMAppBundleIdentifier;
  v51 = swift_allocObject();
  *(v51 + 16) = v55;
  *(v51 + 24) = v23;
  aBlock[4] = sub_100518F30;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008F5990;
  v52 = _Block_copy(aBlock);
  v53 = v50;
  swift_unknownObjectRetain();

  [v48 setRelevantShortcuts:isa forBundleIdentifier:v53 completionHandler:v52];
  _Block_release(v52);
  swift_unknownObjectRelease();
}

void sub_100517EBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009363A8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094B800);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.rem_errorDescription.getter();
      v10 = sub_10000668C(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "RelevantShortcutsHandler unable to set shortcuts because %s", v6, 0xCu);
      sub_10000607C(v7);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1009363A8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094B800);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      if (a3 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v15 + 4) = v16;

      _os_log_impl(&_mh_execute_header, v13, v14, "RelevantShortcutsHandler set %ld shortcuts", v15, 0xCu);
    }

    else
    {
    }
  }

  sub_100518F38();
}

uint64_t sub_100518160(void *a1, uint64_t *a2, uint64_t a3)
{
  v76 = a1;
  v75 = a3;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v86 = &v72 - v6;
  v7 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v72 - v9;
  v11 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v84 = *(v11 - 8);
  v12 = *(v84 + 64);
  __chkstk_darwin(v11);
  v88 = &v72 - v13;
  v85 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v14 = *(v85 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v85);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F5104(&qword_10094B8E8, &qword_1007AFC78);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v87 = &v72 - v20;
  v21 = type metadata accessor for INShortcut();
  v80 = *(v21 - 8);
  v81 = v21;
  v22 = *(v80 + 64);
  __chkstk_darwin(v21);
  v79 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2[1];
  v77 = *a2;
  v78 = v24;
  v25 = a2[2];
  v26 = [objc_allocWithZone(type metadata accessor for ConfigurationIntent()) init];
  v27 = *(v25 + 16);
  v73 = v25;
  v74 = v14;
  if (v27)
  {
    v28 = v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v29 = *(v28 + 8);
    v30 = *(v28 + 16);
  }

  type metadata accessor for ConfigurationList();
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v31 initWithIdentifier:v32 displayString:v33];

  [v26 setList:v34];
  v35 = v26;
  v36 = v87;
  INShortcut.init(intent:)();
  v38 = v80;
  v37 = v81;
  if ((*(v80 + 48))(v36, 1, v81) == 1)
  {

    return sub_1000050A4(v36, &qword_10094B8E8, &qword_1007AFC78);
  }

  v72 = v35;
  (*(v38 + 32))(v79, v36, v37);
  v89 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v40 = *(v85 + 24);
    v41 = v73 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v42 = (v84 + 48);
    v87 = *(v74 + 72);
    v82 = v40;
    v83 = v10;
    v84 += 48;
    while (1)
    {
      sub_10051906C(v41, v17);
      sub_1005190D0(&v17[v40], v10);
      if ((*v42)(v10, 1, v11) != 1)
      {
        break;
      }

      sub_1000050A4(v10, &qword_1009410B8, &qword_1007A0A38);
      v43 = *&v17[*(v85 + 28)];
      if (v43)
      {
        [objc_allocWithZone(INLocationRelevanceProvider) initWithRegion:v43];
LABEL_15:
        sub_100519140(v17);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v53 = v40;
          v54 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v40 = v53;
          v42 = v84;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_8;
      }

      sub_100519140(v17);
LABEL_8:
      v41 += v87;
      if (!--v27)
      {
        goto LABEL_18;
      }
    }

    v44 = v88;
    sub_100226AD8(v10, v88);
    v45 = v11;
    v46 = *(v11 + 36);
    v47 = type metadata accessor for Date();
    v48 = *(v47 - 8);
    v49 = v86;
    (*(v48 + 16))(v86, v44 + v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50.super.isa = Date._bridgeToObjectiveC()().super.isa;
    isa = 0;
    if ((*(v48 + 48))(v49, 1, v47) != 1)
    {
      v52 = v86;
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v48 + 8))(v52, v47);
    }

    [objc_allocWithZone(INDateRelevanceProvider) initWithStartDate:v50.super.isa endDate:isa];

    sub_1000050A4(v88, &qword_10094B8E0, &unk_1007AABD0);
    v40 = v82;
    v10 = v83;
    v11 = v45;
    v42 = v84;
    goto LABEL_15;
  }

LABEL_18:
  v55 = objc_allocWithZone(INRelevantShortcut);
  v56 = INShortcut._bridgeToObjectiveC()().super.isa;
  v57 = [v55 initWithShortcut:v56];

  [v57 setShortcutRole:1];
  REMWidgetRefresh.WidgetKind.widgetKindIdentifier.getter();
  v58 = String._bridgeToObjectiveC()();

  [v57 setWidgetKind:v58];

  sub_1000060C8(0, &qword_10094B8F0, INRelevanceProvider_ptr);
  v59 = Array._bridgeToObjectiveC()().super.isa;
  [v57 setRelevanceProviders:v59];

  v60 = v57;
  v61 = v76;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v71 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v62 = v78;
  if (qword_1009363A8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100006654(v63, qword_10094B800);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v66 = 136446466;
    *(v66 + 4) = sub_10000668C(v77, v62, &v89);
    *(v66 + 12) = 2080;
    v67 = Array.description.getter();
    v69 = v68;

    v70 = sub_10000668C(v67, v69, &v89);

    *(v66 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v64, v65, "RDIntentsRelevantShortcutsHandler: adding relevant shortcut {identifier: %{public}s, relevanceProviders: %s}", v66, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v80 + 8))(v79, v81);
}

uint64_t sub_100518AD8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100518B50(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = (&v45 - v11);
  v12 = _swiftEmptyDictionarySingleton;
  v55 = _swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v47 = *(v10 + 80);
  v14 = *(v10 + 72);
  v15 = a1 + ((v47 + 32) & ~v47);
  v50 = (v47 + 32) & ~v47;
  v51 = (v3 + 8);
  v46 = xmmword_100791300;
  v48 = v2;
  v49 = v14;
  while (1)
  {
    v18 = v54;
    sub_10051906C(v15, v54);
    v19 = [*v18 urlRepresentation];
    v20 = v53;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = URL.absoluteString.getter();
    v23 = v22;
    v24 = v2;
    (*v51)(v20, v2);
    v26 = sub_100005F4C(v21, v23);
    v27 = v12[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v12[3] < v29)
    {
      sub_100370B90(v29, 1);
      v12 = v55;
      v31 = sub_100005F4C(v21, v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_19;
      }

      v26 = v31;
    }

    if (v30)
    {

      v33 = v12[7];
      sub_1002D61DC(v54, v52);
      v34 = *(v33 + 8 * v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 8 * v26) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_100367980(0, v34[2] + 1, 1, v34);
        *(v33 + 8 * v26) = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_100367980(v36 > 1, v37 + 1, 1, v34);
        *(v33 + 8 * v26) = v34;
      }

      v34[2] = v37 + 1;
      v16 = v34 + v50 + v37 * v49;
      v17 = v49;
      sub_1002D61DC(v52, v16);
      v2 = v48;
    }

    else
    {
      sub_1000F5104(&qword_10093EE90, &qword_1007A48A0);
      v38 = v50;
      v39 = swift_allocObject();
      *(v39 + 16) = v46;
      sub_1002D61DC(v54, v39 + v38);
      v12[(v26 >> 6) + 8] |= 1 << v26;
      v40 = (v12[6] + 16 * v26);
      *v40 = v21;
      v40[1] = v23;
      *(v12[7] + 8 * v26) = v39;
      v41 = v12[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v12[2] = v43;
      v17 = v49;
      v2 = v24;
    }

    v15 += v17;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100518F38()
{
  if (qword_1009363A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094B800);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.intentsRelevantShortcutsHandler}", v2, 2u);
  }
}

uint64_t type metadata accessor for RDIntentsRelevantShortcutsHandlerItem()
{
  result = qword_10094B950;
  if (!qword_10094B950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10051906C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005190D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100519140(uint64_t a1)
{
  v2 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10051919C(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
  }

  else
  {
    v8 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v8;
    v9 = *(a3 + 24);
    v10 = &a1[v9];
    v11 = a2 + v9;
    v12 = v5;

    v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13))
    {
      v15 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      v16 = type metadata accessor for Date();
      v17 = *(*(v16 - 8) + 16);
      v17(v10, v11, v16);
      v17(&v10[*(v13 + 36)], &v11[*(v13 + 36)], v16);
      (*(v14 + 56))(v10, 0, 1, v13);
    }

    v18 = *(a3 + 28);
    v19 = *(a2 + v18);
    *&a1[v18] = v19;
    v20 = v19;
  }

  return a1;
}

void sub_10051937C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);

  v5 = a1 + *(a2 + 24);
  v6 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v8(v5 + *(v6 + 36), v7);
  }

  v9 = *(a1 + *(a2 + 28));
}

void *sub_10051948C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v7;
  a1[2] = *(a2 + 16);
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = v6;

  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12))
  {
    v14 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 16);
    v16(v9, v10, v15);
    v16(&v9[*(v12 + 36)], &v10[*(v12 + 36)], v15);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v17 = *(a3 + 28);
  v18 = *(a2 + v17);
  *(a1 + v17) = v18;
  v19 = v18;
  return a1;
}

uint64_t sub_100519628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v10 = *(a3 + 24);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v17 = v15(v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      v26 = type metadata accessor for Date();
      v27 = *(*(v26 - 8) + 24);
      v27(v11, v12, v26);
      v27(&v11[*(v13 + 36)], &v12[*(v13 + 36)], v26);
      goto LABEL_7;
    }

    sub_1000050A4(v11, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    v20 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v11, v12, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 16);
  v19(v11, v12, v18);
  v19(&v11[*(v13 + 36)], &v12[*(v13 + 36)], v18);
  (*(v14 + 56))(v11, 0, 1, v13);
LABEL_7:
  v21 = *(a3 + 28);
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  *(a1 + v21) = v23;
  v24 = v23;

  return a1;
}

uint64_t sub_100519880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 32);
    v13(v7, v8, v12);
    v13(&v7[*(v9 + 36)], &v8[*(v9 + 36)], v12);
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t sub_100519A0C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[2];
  v8 = *(a1 + 16);
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v7;

  v9 = *(a3 + 24);
  v10 = (a1 + v9);
  v11 = a2 + v9;
  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      v23 = type metadata accessor for Date();
      v24 = *(*(v23 - 8) + 40);
      v24(v10, v11, v23);
      v24(&v10[*(v12 + 36)], &v11[*(v12 + 36)], v23);
      goto LABEL_7;
    }

    sub_1000050A4(v10, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v19 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    memcpy(v10, v11, *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 32);
  v18(v10, v11, v17);
  v18(&v10[*(v12 + 36)], &v11[*(v12 + 36)], v17);
  (*(v13 + 56))(v10, 0, 1, v12);
LABEL_7:
  v20 = *(a3 + 28);
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);

  return a1;
}

void sub_100519C74()
{
  sub_100519D20();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_100519D20()
{
  if (!qword_10094B960)
  {
    sub_1000F514C(&qword_10094B8E0, &unk_1007AABD0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10094B960);
    }
  }
}

double sub_100519D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100363F20(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100376A4C();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_10027DC60((*(v11 + 56) + 40 * v8), a2);
    sub_100333BC4(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100519E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100363F20(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100376CD4();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1003338A4(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_100519F30()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094B9A0);
  v1 = sub_100006654(v0, qword_10094B9A0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10051A110(uint64_t a1)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v7 = *(v1 + OBJC_IVAR___RDAccountPropertiesNotifier_lock);
    __chkstk_darwin(ObjectType);
    type metadata accessor for UnfairLock();
    swift_unknownObjectRetain();

    Lock.sync<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094B9A0);
    v6 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v6, v4, "Trying to add observer to RDAccountPropertiesNotifier but input observer is nil", v5, 2u);
    }
  }
}

uint64_t sub_10051A2D4(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v61 = type metadata accessor for UUID();
  v64 = *(v61 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v61);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for NSNotificationCenter.Publisher();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100947258, &unk_1007AA0A0);
  v17 = *(v16 - 8);
  v57 = v16;
  v58 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v21 = sub_1000F5104(&qword_10094B9F8, &qword_1007AFD08);
  v22 = *(v21 - 8);
  v59 = v21;
  v60 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v57 - v24;
  v26 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a3;
  sub_10051BD00(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
  swift_unknownObjectRetain();
  Publisher.filter(_:)();

  (*(v12 + 8))(v15, v11);
  v28 = [a1 callbackQueue];
  v66[0] = v28;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_100947288, &qword_100947258, &unk_1007AA0A0);
  sub_100006CA4();
  v30 = v57;
  Publisher.receive<A>(on:options:)();
  v31 = v10;
  v32 = v61;
  sub_1000050A4(v31, &qword_100939980, &unk_10079ADA0);

  (*(v58 + 8))(v20, v30);
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a3;
  sub_10000CB48(&qword_10094BA00, &qword_10094B9F8, &qword_1007AFD08);
  swift_unknownObjectRetain();
  v34 = v59;
  v35 = Publisher<>.sink(receiveValue:)();

  (*(v60 + 8))(v25, v34);
  v36 = [a1 uuid];
  v37 = v62;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = OBJC_IVAR___RDAccountPropertiesNotifier_l_observers;
  v39 = v63;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v40 = *(v39 + v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v39 + v38);
  *(v39 + v38) = 0x8000000000000000;
  sub_1002CA3B8(a1, v37, isUniquelyReferenced_nonNull_native);
  v42 = *(v64 + 8);
  v64 += 8;
  v42(v37, v32);
  *(v39 + v38) = v65;
  swift_endAccess();
  v43 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v66[3] = type metadata accessor for AnyCancellable();
  v66[4] = &protocol witness table for AnyCancellable;
  v66[0] = v35;
  swift_beginAccess();

  v44 = v37;
  sub_10031E474(v66, v37);
  swift_endAccess();
  if (qword_1009363B0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006654(v45, qword_10094B9A0);
  swift_unknownObjectRetain();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v66[0] = v49;
    *v48 = 136315138;
    v50 = [a1 uuid];
    v51 = v44;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = UUID.uuidString.getter();
    v54 = v53;
    v42(v51, v32);
    v55 = sub_10000668C(v52, v54, v66);

    *(v48 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "RDAccountPropertiesNotifier added observer {uuid: %s}", v48, 0xCu);
    sub_10000607C(v49);
  }
}

uint64_t sub_10051AAA4(uint64_t a1, void *a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    strcpy(v18, "propertyValue");
    HIWORD(v18[0]) = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10001B0D8(v16), (v6 & 1) != 0))
    {
      sub_100005EF0(*(v4 + 56) + 32 * v5, v18);
      sub_10001B2CC(v16);
    }

    else
    {

      sub_10001B2CC(v16);
      memset(v18, 0, sizeof(v18));
    }

    sub_10014F5CC(v18, v16);
    v7 = v17;
    if (v17)
    {
      v8 = sub_10000F61C(v16, v17);
      v9 = *(v7 - 8);
      v10 = *(v9 + 64);
      v11 = __chkstk_darwin(v8);
      v13 = &v16[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v13, v11);
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v13, v7);
      sub_10000607C(v16);
    }

    else
    {
      v14 = 0;
    }

    [a2 notify:v14];
    swift_unknownObjectRelease();
    return sub_1000050A4(v18, &qword_100939ED0, &qword_100791B10);
  }

  return result;
}

void sub_10051ACB4(uint64_t a1)
{
  if (a1)
  {
    v6 = *(v1 + OBJC_IVAR___RDAccountPropertiesNotifier_lock);
    __chkstk_darwin(a1);
    type metadata accessor for UnfairLock();
    swift_unknownObjectRetain();

    Lock.sync<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_10094B9A0);
    v5 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v5, v3, "Trying to remove observer to RDAccountPropertiesNotifier but input observer is nil", v4, 2u);
    }
  }
}

void sub_10051AE6C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v10 = sub_100519D84(v8, &v36);
  v11 = *(v4 + 8);
  v11(v8, v3, v10);
  swift_endAccess();
  if (v37)
  {
    sub_10027DC60(&v36, v38);
    sub_10000F61C(v38, v38[3]);
    dispatch thunk of Cancellable.cancel()();
    v12 = [a2 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_100519E68(v8);
    (v11)(v8, v3);
    swift_endAccess();
    swift_unknownObjectRelease();
    v13 = [a2 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v14 = sub_100519D84(v8, &v36);
    v11(v8, v3, v14);
    sub_1000050A4(&v36, &qword_100940AC8, &qword_1007A0510);
    swift_endAccess();
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094B9A0);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v36 = v19;
      *v18 = 136315138;
      v20 = [a2 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = UUID.uuidString.getter();
      v23 = v22;
      (v11)(v8, v3);
      v24 = sub_10000668C(v21, v23, &v36);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDAccountPropertiesNotifier removed observer {uuid: %s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    sub_10000607C(v38);
  }

  else
  {
    sub_1000050A4(&v36, &qword_100940AC8, &qword_1007A0510);
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094B9A0);
    swift_unknownObjectRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136315138;
      v30 = [a2 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = UUID.uuidString.getter();
      v33 = v32;
      (v11)(v8, v3);
      v34 = sub_10000668C(v31, v33, v38);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "RDAccountPropertiesNotifier cannot unobserve as the observer is not found {uuid: %s}", v28, 0xCu);
      sub_10000607C(v29);
    }
  }
}

void sub_10051B3D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id sub_10051B5E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDAccountPropertiesNotifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10051B6B8(uint64_t a1, void *a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10094B9A0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_26;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no userInfo";
    goto LABEL_25;
  }

  v4 = v3;
  v34[0] = 0x4F746E756F636361;
  v34[1] = 0xEF44497463656A62;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10001B0D8(v35), (v6 & 1) == 0))
  {

    sub_10001B2CC(v35);
LABEL_17:
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10094B9A0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_26;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no account REMObjectID in the userInfo";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 2u);

LABEL_26:

LABEL_27:
    v20 = 0;
    return v20 & 1;
  }

  sub_100005EF0(*(v4 + 56) + 32 * v5, v36);
  sub_10001B2CC(v35);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v7 = v34[0];
  strcpy(v34, "accountType");
  HIDWORD(v34[1]) = -352321536;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v8 = sub_10001B0D8(v35), (v9 & 1) == 0))
  {

    sub_10001B2CC(v35);
LABEL_31:
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094B9A0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_36;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no account type in the userInfo";
    goto LABEL_35;
  }

  sub_100005EF0(*(v4 + 56) + 32 * v8, v36);
  sub_10001B2CC(v35);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  v10 = v34[0];
  strcpy(v34, "propertyName");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v11 = sub_10001B0D8(v35), (v12 & 1) == 0))
  {

    sub_10001B2CC(v35);
    goto LABEL_39;
  }

  sub_100005EF0(*(v4 + 56) + 32 * v11, v36);
  sub_10001B2CC(v35);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    if (qword_1009363B0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_10094B9A0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_36;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Received RDStoreControllerREMAccountPropertiesDidUpdate has no property name in the userInfo";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);

LABEL_36:

    goto LABEL_27;
  }

  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v13 = [objc_msgSend(a2 "account")];
  swift_unknownObjectRelease();
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0 || (v15 = [objc_msgSend(a2 "account")], swift_unknownObjectRelease(), v15 != v10))
  {

    goto LABEL_27;
  }

  v16 = [a2 propertyName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == v34[0] && v19 == v34[1])
  {

    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

uint64_t sub_10051BD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10051BD50()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BA08);
  v1 = sub_100006654(v0, qword_10094BA08);
  if (qword_1009364C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975188);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10051BE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Date();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for REMUrgentReminder();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_10051BF74, 0, 0);
}

uint64_t sub_10051BF74()
{
  v84 = v0;
  if (qword_1009363B8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];
  v9 = type metadata accessor for Logger();
  v0[22] = sub_100006654(v9, qword_10094BA08);
  v10 = *(v3 + 16);
  v0[23] = v10;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v80 = v10;
  (v10)(v1, v8, v2);
  v11 = *(v6 + 16);
  v0[25] = v11;
  v0[26] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v78 = v11;
  v11(v4, v7, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[21];
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v20 = v0[11];
  v19 = v0[12];
  if (v14)
  {
    v74 = v13;
    v21 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v83[0] = v75;
    *v21 = 138543618;
    v22 = REMUrgentReminder.reminderID.getter();
    log = v12;
    v23 = *(v17 + 8);
    v23(v15, v16);
    *(v21 + 4) = v22;
    *v72 = v22;
    *(v21 + 12) = 2082;
    sub_10051D374(&qword_100937010, &type metadata accessor for Date);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v19 + 8);
    v27(v18, v20);
    v28 = sub_10000668C(v24, v26, v83);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, log, v74, "RDUrgentAlarmSchedulingService: Attempting to schedule alarm {reminderID: %{public}@, now: %{public}s}", v21, 0x16u);
    sub_100039860(v72);

    sub_10000607C(v75);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v18, v20);
    v23 = *(v17 + 8);
    v23(v15, v16);
  }

  v0[27] = v23;
  v0[28] = v27;
  v29 = v0[8];
  v30 = v0[9];
  if (static Date.> infix(_:_:)())
  {
    v31 = v0[10];
    v32 = v31[5];
    v33 = v31[6];
    sub_10000F61C(v31 + 2, v32);
    v34 = async function pointer to dispatch thunk of REMAlarmKitSchedulingManagerType.scheduleAlarm(for:fireDate:)[1];
    v35 = swift_task_alloc();
    v0[29] = v35;
    *v35 = v0;
    v35[1] = sub_10051C67C;
    v36 = v0[7];
    v37 = v0[8];

    return dispatch thunk of REMAlarmKitSchedulingManagerType.scheduleAlarm(for:fireDate:)(v0 + 2, v36, v37, v32, v33);
  }

  else
  {
    v76 = v23;
    v38 = v0[13];
    v39 = v0[14];
    v40 = v0[11];
    v42 = v0[8];
    v41 = v0[9];
    (v80)(v0[19], v0[7], v0[17]);
    v78(v39, v42, v40);
    v78(v38, v41, v40);
    v43 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v43, v82);
    v45 = v0[18];
    v46 = v0[19];
    v47 = v0[17];
    v48 = v0[13];
    v49 = v0[14];
    v51 = v0[11];
    v50 = v0[12];
    if (v44)
    {
      v81 = v43;
      v52 = swift_slowAlloc();
      v79 = v48;
      v53 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v52 = 138543874;
      v77 = v27;
      v54 = REMUrgentReminder.reminderID.getter();
      v76(v46, v47);
      *(v52 + 4) = v54;
      *v53 = v54;
      *(v52 + 12) = 2082;
      sub_10051D374(&qword_100937010, &type metadata accessor for Date);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v77(v49, v51);
      v58 = sub_10000668C(v55, v57, v83);

      *(v52 + 14) = v58;
      *(v52 + 22) = 2082;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v77(v79, v51);
      v62 = sub_10000668C(v59, v61, v83);

      *(v52 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v81, v82, "RDUrgentAlarmSchedulingService: Attempted to schedule alarm with past fire date {reminderID: %{public}@, fireDate: %{public}s, now: %{public}s}", v52, 0x20u);
      sub_100039860(v53);

      swift_arrayDestroy();
    }

    else
    {

      v27(v48, v51);
      v27(v49, v51);
      v76(v46, v47);
    }

    sub_10051D320();
    swift_allocError();
    swift_willThrow();
    v64 = v0[20];
    v63 = v0[21];
    v65 = v0[19];
    v67 = v0[15];
    v66 = v0[16];
    v69 = v0[13];
    v68 = v0[14];

    v70 = v0[1];

    return v70();
  }
}

uint64_t sub_10051C67C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v6 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_10051CA7C;
  }

  else
  {
    sub_10000607C((v2 + 16));
    v4 = sub_10051C798;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10051C798()
{
  v39 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 56), *(v0 + 136));
  v2(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 216);
  v37 = *(v0 + 224);
  v12 = *(v0 + 160);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 120);
  v17 = *(v0 + 88);
  v16 = *(v0 + 96);
  if (v10)
  {
    log = v8;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 138543618;
    v34 = v9;
    v20 = REMUrgentReminder.reminderID.getter();
    v11(v12, v14);
    *(v18 + 4) = v20;
    *v19 = v20;
    *(v18 + 12) = 2082;
    sub_10051D374(&qword_100937010, &type metadata accessor for Date);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v37(v15, v17);
    v24 = sub_10000668C(v21, v23, &v38);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, log, v34, "RDUrgentAlarmSchedulingService: Scheduled alarm {reminderID: %{public}@, fireDate: %{public}s}", v18, 0x16u);
    sub_100039860(v19);

    sub_10000607C(v35);
  }

  else
  {

    v37(v15, v17);
    v11(v12, v14);
  }

  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  v29 = *(v0 + 120);
  v28 = *(v0 + 128);
  v31 = *(v0 + 104);
  v30 = *(v0 + 112);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10051CA7C()
{
  v1 = v0[30];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

void sub_10051CB34(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  if (qword_1009363B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100006654(v10, qword_10094BA08);
  v40 = v3[2];
  v40(v9, a1, v2);
  v41 = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v42 = v3;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v38 = a1;
    v16 = v15;
    v37 = swift_slowAlloc();
    v45 = v37;
    *v16 = 136446210;
    sub_10051D374(&qword_10093F2A0, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v6;
    v18 = v2;
    v20 = v19;
    v21 = v9;
    v22 = v3[1];
    v22(v21, v18);
    v23 = sub_10000668C(v17, v20, &v45);
    v2 = v18;
    v6 = v39;

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDUrgentAlarmSchedulingService: Attempting to cancel alarm {alarmUUID: %{public}s}", v16, 0xCu);
    sub_10000607C(v37);

    a1 = v38;
  }

  else
  {

    v24 = v9;
    v22 = v3[1];
    v22(v24, v2);
  }

  v25 = v43[6];
  sub_10000F61C(v43 + 2, v43[5]);
  v26 = v44;
  dispatch thunk of REMAlarmKitSchedulingManagerType.cancelAlarm(uuid:)();
  if (!v26)
  {
    v40(v6, a1, v2);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136446210;
      sub_10051D374(&qword_10093F2A0, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v6;
      v35 = v34;
      v22(v33, v27);
      v36 = sub_10000668C(v32, v35, &v45);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "RDUrgentAlarmSchedulingService: Cancelled alarm {alarmUUID: %{public}s}", v30, 0xCu);
      sub_10000607C(v31);
    }

    else
    {

      v22(v6, v27);
    }
  }
}

void *sub_10051CF9C()
{
  v2 = v1;
  v3 = v0;
  v25 = type metadata accessor for UUID();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v25);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009363B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_100006654(v8, qword_10094BA08);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDUrgentAlarmSchedulingService: Attempting to fetch alarm IDs", v12, 2u);
  }

  v13 = v3[6];
  sub_10000F61C(v3 + 2, v3[5]);
  v14 = dispatch thunk of REMAlarmKitSchedulingManagerType.fetchAlarms()();
  if (!v1)
  {
    v24[3] = 0;
    v15 = *(v14 + 16);
    if (v15)
    {
      v24[1] = v9;
      v27 = _swiftEmptyArrayStorage;
      v16 = v14;
      sub_100253258(0, v15, 0);
      v2 = v27;
      v24[2] = v16;
      v17 = v16 + 32;
      do
      {
        sub_10000A87C(v17, v26);
        sub_10000F61C(v26, v26[3]);
        dispatch thunk of REMAlarmKitAlarmType.uuid.getter();
        sub_10000607C(v26);
        v27 = v2;
        v19 = v2[2];
        v18 = v2[3];
        if (v19 >= v18 >> 1)
        {
          sub_100253258(v18 > 1, v19 + 1, 1);
          v2 = v27;
        }

        v2[2] = v19 + 1;
        (*(v4 + 32))(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v7, v25);
        v17 += 40;
        --v15;
      }

      while (v15);
    }

    else
    {

      v2 = _swiftEmptyArrayStorage;
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = v2[2];

      _os_log_impl(&_mh_execute_header, v20, v21, "RDUrgentAlarmSchedulingService: Successfully fetched alarm IDs {count: %{public}ld}", v22, 0xCu);
    }

    else
    {
    }
  }

  return v2;
}

unint64_t sub_10051D320()
{
  result = qword_10094BAC0;
  if (!qword_10094BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BAC0);
  }

  return result;
}

uint64_t sub_10051D374(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10051D3D0()
{
  result = qword_10094BAC8;
  if (!qword_10094BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BAC8);
  }

  return result;
}

id sub_10051D484()
{
  v2 = v1;
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = [v0 listID];
  swift_storeEnumTagMultiPayload();
  v8 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];

  [v9 setFetchLimit:1];
  v11 = NSManagedObjectContext.count<A>(for:)();
  if (v1)
  {
    sub_10051E86C(v7, _s10PredicatesOMa);
  }

  else
  {
    v12 = v11;
    v2 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v13 = [objc_allocWithZone(NSNumber) initWithInteger:v12];
    [v2 storeProperty:v13 forKey:CompletedRemindersCountInList];

    sub_10051E86C(v7, _s10PredicatesOMa);
  }

  return v2;
}

char *sub_10051D714()
{
  v1 = _s10PredicatesOMa_1();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v5 = sub_100013674(qword_1009752E8);
  if (!v5)
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
    return v4;
  }

  v6 = objc_opt_self();
  v7 = [v6 daemonUserDefaults];
  v8 = [v7 tipKitCachedCountOfLists];

  if (v8)
  {
    v9 = [v8 integerValue];

    if (v9 > 3)
    {
LABEL_10:
      v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
      v16 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
      [v4 storeProperty:v16 forKey:ListsCount];

      return v4;
    }
  }

  swift_storeEnumTagMultiPayload();
  v10 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  [v11 setFetchLimit:4];
  v13 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v9 = v13;
    v14 = [v6 daemonUserDefaults];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
    [v14 setTipKitCachedCountOfLists:v15];

    sub_10051E86C(v4, _s10PredicatesOMa_1);
    goto LABEL_10;
  }

  sub_10051E86C(v4, _s10PredicatesOMa_1);

  return v4;
}

char *sub_10051DA74()
{
  v1 = _s10PredicatesOMa_1();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 daemonUserDefaults];
  v7 = [v6 tipKitCachedCountOfListsWithCustomBadge];

  if (v7)
  {
    v8 = [v7 integerValue];

    if (v8 > 0)
    {
      goto LABEL_6;
    }
  }

  swift_storeEnumTagMultiPayload();
  v9 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  [v10 setFetchLimit:1];
  v12 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v8 = v12;
    v13 = [v5 daemonUserDefaults];
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v13 setTipKitCachedCountOfListsWithCustomBadge:v14];

    sub_10051E86C(v4, _s10PredicatesOMa_1);
LABEL_6:
    v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v4 storeProperty:v15 forKey:ListsWithCustomBadgeCount];

    return v4;
  }

  sub_10051E86C(v4, _s10PredicatesOMa_1);

  return v4;
}

char *sub_10051DD5C()
{
  v1 = _s10PredicatesOMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v5 = sub_100013674(qword_1009752E8);
  if (!v5)
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
    return v4;
  }

  v6 = objc_opt_self();
  v7 = [v6 daemonUserDefaults];
  v8 = [v7 tipKitCachedCountOfUncompletedReminders];

  if (v8)
  {
    v9 = [v8 integerValue];

    if (v9 > 5)
    {
LABEL_10:
      v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
      v16 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
      [v4 storeProperty:v16 forKey:UncompletedRemindersCount];

      return v4;
    }
  }

  swift_storeEnumTagMultiPayload();
  v10 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  [v11 setFetchLimit:6];
  v13 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v9 = v13;
    v14 = [v6 daemonUserDefaults];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
    [v14 setTipKitCachedCountOfUncompletedReminders:v15];

    sub_10051E86C(v4, _s10PredicatesOMa);
    goto LABEL_10;
  }

  sub_10051E86C(v4, _s10PredicatesOMa);

  return v4;
}

id sub_10051E0BC()
{
  v1 = v0;
  v2 = _s10PredicatesOMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  [v7 setFetchLimit:1];
  v9 = NSManagedObjectContext.count<A>(for:)();
  if (v0)
  {
    sub_10051E86C(v5, _s10PredicatesOMa);
  }

  else
  {
    v10 = v9;
    v1 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v11 = [objc_allocWithZone(NSNumber) initWithInteger:v10];
    [v1 storeProperty:v11 forKey:CompletedRemindersCount];

    sub_10051E86C(v5, _s10PredicatesOMa);
  }

  return v1;
}

char *sub_10051E2D8()
{
  v1 = _s10PredicatesOMa_3();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 daemonUserDefaults];
  v7 = [v6 tipKitCachedCountOfCustomSmartLists];

  if (v7)
  {
    v8 = [v7 integerValue];

    if (v8 > 0)
    {
      goto LABEL_6;
    }
  }

  swift_storeEnumTagMultiPayload();
  v9 = sub_10002DDAC();
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  [v10 setFetchLimit:1];
  v12 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v8 = v12;
    v13 = [v5 daemonUserDefaults];
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v13 setTipKitCachedCountOfCustomSmartLists:v14];

    sub_10051E86C(v4, _s10PredicatesOMa_3);
LABEL_6:
    v4 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v4 storeProperty:v15 forKey:CustomSmartListsCount];

    return v4;
  }

  sub_10051E86C(v4, _s10PredicatesOMa_3);

  return v4;
}

id sub_10051E5C0()
{
  v1 = objc_opt_self();
  v2 = [v1 daemonUserDefaults];
  v3 = [v2 tipKitCachedCountOfHashtags];

  if (v3)
  {
    v4 = [v3 integerValue];

    if (v4 > 0)
    {
      goto LABEL_7;
    }
  }

  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v12 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = sub_10000C2B0(_swiftEmptyArrayStorage);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  [v6 setFetchLimit:1];
  v8 = NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    v4 = v8;
    v9 = [v1 daemonUserDefaults];
    v10 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
    [v9 setTipKitCachedCountOfHashtags:v10];

LABEL_7:
    v1 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
    [v1 storeProperty:v6 forKey:HashtagsCount];
  }

  return v1;
}

uint64_t sub_10051E86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10051E8CC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v10);
  v5 = v11;
  v6 = v12;
  sub_10000F61C(v10, v11);
  v9[3] = a1;
  v9[4] = a2;
  v7 = sub_1000103CC(v9);
  (*(*(a1 - 8) + 16))(v7, v2, a1);
  (*(v6 + 8))(v9, v5, v6);
  sub_10000607C(v9);
  return sub_10000607C(v10);
}

uint64_t sub_10051E9B4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v35 = &v30 - v3;
  v34 = type metadata accessor for TimeZone();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v11);
  (*(v7 + 104))(v27, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v33);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t sub_10051EDB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BAD0);
  v1 = sub_100006654(v0, qword_10094BAD0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10051EE80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date.ISO8601FormatStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v66 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v57 - v19;
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  v24 = &v57 - v23;
  if (*(v2 + 56) <= 0.0)
  {

    return static Date.distantPast.getter();
  }

  else
  {
    v63 = v4;
    v64 = a1;
    v25 = *(v2 + 40);
    v26 = *(v2 + 48);
    v67 = v22;
    sub_10000F61C((v2 + 16), v25);
    v27 = v26;
    v28 = v67;
    sub_10051E8CC(v25, v27);
    Optional<A>.orDistantPast.getter();
    sub_1001AAD5C(v11);
    Date.addingTimeInterval(_:)();
    if (qword_1009363C0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10094BAD0);
    v65 = v13;
    v30 = *(v13 + 16);
    v30(v20, v24, v12);
    v30(v17, v28, v12);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68 = v62;
      *v33 = 136446722;
      v61 = v31;
      v34 = *(v2 + 40);
      v35 = *(v2 + 48);
      sub_10000F61C((v2 + 16), v34);
      v36 = *(v35 + 16);
      v60 = v32;
      v37 = v36(v34, v35);
      v39 = sub_10000668C(v37, v38, &v68);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2082;
      v58 = v17;
      v40 = v66;
      sub_10051E9B4(v66);
      v41 = Date.ISO8601Format(_:)();
      v43 = v42;
      v57 = *(v5 + 8);
      v44 = v63;
      v57(v40, v63);
      v59 = v24;
      v45 = *(v65 + 8);
      v45(v20, v12);
      v46 = sub_10000668C(v41, v43, &v68);

      *(v33 + 14) = v46;
      *(v33 + 22) = 2082;
      sub_10051E9B4(v40);
      v47 = v58;
      v48 = Date.ISO8601Format(_:)();
      v50 = v49;
      v57(v40, v44);
      v45(v47, v12);
      v51 = sub_10000668C(v48, v50, &v68);

      *(v33 + 24) = v51;
      v52 = v61;
      _os_log_impl(&_mh_execute_header, v61, v60, "RDExecutionIntervalThrottlingPolicy: Calculating reset date {identifier: %{public}s, lastExecuted: %{public}s, result: %{public}s}", v33, 0x20u);
      swift_arrayDestroy();

      v28 = v67;

      v45(v59, v12);
      v53 = v65;
    }

    else
    {

      v55 = v65;
      v56 = *(v65 + 8);
      v56(v17, v12);
      v56(v20, v12);
      v56(v24, v12);
      v53 = v55;
    }

    return (*(v53 + 32))(v64, v28, v12);
  }
}

uint64_t sub_10051F440()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  static Date.now.getter();
  v10 = v0[5];
  v11 = v0[6];
  sub_10000F61C(v0 + 2, v10);
  (*(v11 + 24))(v41, v10, v11);
  v12 = v42;
  v13 = v43;
  sub_10000F61C(v41, v42);
  (*(v13 + 16))(v0 + 2, v9, v12, v13);
  sub_10000607C(v41);
  v14 = [objc_allocWithZone(NSDateFormatter) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setDateFormat:v15];

  if (qword_1009363C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10094BAD0);
  (*(v3 + 16))(v6, v9, v2);

  v17 = v14;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v2;
    v21 = v20;
    v40 = swift_slowAlloc();
    v41[0] = v40;
    *v21 = 136446466;
    v39 = v19;
    v22 = v1[5];
    v23 = v1[6];
    sub_10000F61C(v1 + 2, v22);
    v24 = (*(v23 + 16))(v22, v23);
    v26 = sub_10000668C(v24, v25, v41);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v28 = [v17 stringFromDate:isa];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = *(v3 + 8);
    v33 = v6;
    v34 = v38;
    v32(v33, v38);
    v35 = sub_10000668C(v29, v31, v41);

    *(v21 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v18, v39, "RDExecutionIntervalThrottlingPolicy: Updated last executed date {identifier: %{public}s, date: %{public}s}", v21, 0x16u);
    swift_arrayDestroy();

    return (v32)(v9, v34);
  }

  else
  {

    v37 = *(v3 + 8);
    v37(v6, v2);
    return (v37)(v9, v2);
  }
}

uint64_t sub_10051F858()
{
  sub_10000607C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10051F8B4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v8 = sub_1000103CC(&v11);
  (*(*(a4 - 8) + 32))(v8, a1, a4);
  v9 = swift_allocObject();
  sub_100054B6C(&v11, v9 + 16);
  *(v9 + 56) = a2;
  return v9;
}

uint64_t sub_10051F95C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BB90);
  v1 = sub_100006654(v0, qword_10094BB90);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10051FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDManualSortHint();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_10051FBA4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v13 setAccount:a2];
      [v13 mergeDataFromRecord:a1 accountID:v12];

      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_1009363C8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10094BB90);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v4;
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v21 = sub_10000668C(v19, v20, &v30);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = [v15 remObjectID];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 description];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v28 = sub_10000668C(v25, v27, &v30);

        *(v18 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v18, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

void sub_10051FFB8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v139 = *(v4 - 8);
  v140 = v4;
  v5 = *(v139 + 64);
  __chkstk_darwin(v4);
  v133 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = &v126 - v8;
  v130 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v9 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v136 = &v126 - v10;
  v127 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v11 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v132 = &v126 - v15;
  __chkstk_darwin(v16);
  v18 = &v126 - v17;
  __chkstk_darwin(v19);
  v21 = &v126 - v20;
  __chkstk_darwin(v22);
  v137 = &v126 - v23;
  __chkstk_darwin(v24);
  v135 = &v126 - v25;
  __chkstk_darwin(v26);
  v129 = &v126 - v27;
  __chkstk_darwin(v28);
  v138 = &v126 - v29;
  v30 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v126 - v32;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v143 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = String._bridgeToObjectiveC()();
  v39 = type metadata accessor for REMCDManualSortHint();
  v146.receiver = v2;
  v146.super_class = v39;
  objc_msgSendSuper2(&v146, "mergeDataFromRecord:accountID:", a1, v38);

  v40 = [a1 recordID];
  v41 = [v40 recordName];

  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  v134 = v21;
  v131 = v18;
  v42 = [v2 ckIdentifierFromRecordName:{v41, v13}];

  if (!v42)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = String._bridgeToObjectiveC()();
  }

  [v2 setCkIdentifier:v42];

  v43 = 0;
  v44 = (v35 + 56);
  v141 = v35 + 8;
  v142 = (v35 + 32);
  do
  {
    v46 = *(&off_1008E3B48 + v43 + 32);
    if (v46 <= 4)
    {
      goto LABEL_8;
    }

    if (*(&off_1008E3B48 + v43 + 32) > 6u)
    {
      if (v46 == 7)
      {
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v145))
        {
          v54 = 0;
        }

        else
        {
          v54 = v145;
        }

        [v2 setListTypeRawValue:v54];
      }
    }

    else if (v46 == 5)
    {
      v47 = CKRecord.subscript.getter();
      if (!v47)
      {
        (*v44)(v33, 1, 1, v34);
LABEL_27:
        sub_1000050A4(v33, &unk_100938850, qword_100795AE0);
        goto LABEL_8;
      }

      *&v145 = v47;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      v48 = swift_dynamicCast();
      (*v44)(v33, v48 ^ 1u, 1, v34);
      if ((*(v35 + 48))(v33, 1, v34) == 1)
      {
        goto LABEL_27;
      }

      v49 = v143;
      (*v142)(v143, v33, v34);
      Date.timeIntervalSinceReferenceDate.getter();
      v51 = Int32.init(timeIntervalSinceReferenceDate:)(v50);
      v52 = [v2 lastAccessedSinceReferenceDate];
      if (v51 <= v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = v51;
      }

      [v2 setLastAccessedSinceReferenceDate:v53];
      (*v141)(v49, v34);
    }

    else
    {
      v55 = CKRecord.subscript.getter();
      if (v55 && (v144 = v55, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v45 = String._bridgeToObjectiveC()();
      }

      else
      {
        v45 = 0;
      }

      [v2 setListID:v45];
    }

LABEL_8:
    ++v43;
  }

  while (v43 != 9);
  v56 = CKRecord.subscript.getter();
  v57 = v140;
  if (!v56 || (*&v145 = v56, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0) || ((v58 = v144, v59 = [v2 serializationVersion], v58 <= v59) ? (v60 = v59) : (v60 = v58), v60 != 1))
  {
    if (qword_1009363C8 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100006654(v77, qword_10094BB90);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Unable to support REMCDManualSortHint serialization version introduced in a subsequent release", v80, 2u);
    }

    return;
  }

  v61 = v138;
  v62 = (v139 + 56);
  v143 = *(v139 + 56);
  (v143)(v138, 1, 1, v57);
  v63 = CKRecord.subscript.getter();
  v64 = v61;
  if (v63)
  {
    v144 = v63;
    if (swift_dynamicCast())
    {
      v65 = v129;
      UUID.init(uuidString:)();

      sub_1000050A4(v64, &unk_100939D90, "8\n\r");
      sub_100100FB4(v65, v64);
    }
  }

  v66 = v135;
  sub_10018E470(v64, v135);
  v67 = *(v139 + 48);
  v68 = v67(v66, 1, v57);
  sub_1000050A4(v66, &unk_100939D90, "8\n\r");
  if (v68 == 1)
  {
    goto LABEL_52;
  }

  v69 = v62;
  v70 = v67;
  v71 = v137;
  sub_10018E470(v64, v137);
  v72 = [v2 eTag];
  if (v72)
  {
    v73 = v134;
    v74 = v72;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = v136;
    v71 = v137;
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v75 = v136;
    v73 = v134;
  }

  v142 = v69;
  (v143)(v73, v76, 1, v57);
  v81 = *(v130 + 48);
  sub_10018E470(v71, v75);
  sub_10018E470(v73, v75 + v81);
  if (v70(v75, 1, v57) == 1)
  {
    sub_1000050A4(v73, &unk_100939D90, "8\n\r");
    v82 = v71;
    v83 = v136;
    sub_1000050A4(v82, &unk_100939D90, "8\n\r");
    v67 = v70;
    if (v70(v83 + v81, 1, v57) == 1)
    {
      sub_1000050A4(v83, &unk_100939D90, "8\n\r");
      goto LABEL_68;
    }

LABEL_51:
    sub_1000050A4(v83, &unk_10093A3D0, &qword_100795770);
    v64 = v138;
    goto LABEL_52;
  }

  sub_10018E470(v75, v131);
  v67 = v70;
  if (v70(v75 + v81, 1, v57) == 1)
  {
    sub_1000050A4(v134, &unk_100939D90, "8\n\r");
    v83 = v136;
    sub_1000050A4(v137, &unk_100939D90, "8\n\r");
    (*(v139 + 8))(v131, v57);
    goto LABEL_51;
  }

  v103 = v139;
  v104 = v75 + v81;
  v105 = v128;
  (*(v139 + 32))(v128, v104, v57);
  sub_10018E4E0();
  v106 = v131;
  LODWORD(v141) = dispatch thunk of static Equatable.== infix(_:_:)();
  v107 = *(v103 + 8);
  v107(v105, v140);
  sub_1000050A4(v134, &unk_100939D90, "8\n\r");
  sub_1000050A4(v137, &unk_100939D90, "8\n\r");
  v107(v106, v140);
  v57 = v140;
  sub_1000050A4(v136, &unk_100939D90, "8\n\r");
  v64 = v138;
  if ((v141 & 1) == 0)
  {
LABEL_52:
    sub_1004DD52C(a1, 0xD00000000000002FLL, 1, &v145);
    v84 = *(&v145 + 1);
    if (*(&v145 + 1) >> 60 == 15)
    {
      sub_1004DD52C(a1, 0xD000000000000035, 1, &v145);
      v84 = *(&v145 + 1);
      if (*(&v145 + 1) >> 60 == 15)
      {
        sub_1000050A4(v64, &unk_100939D90, "8\n\r");
        return;
      }
    }

    v85 = v145;
    v86 = v64;
    v87 = v132;
    sub_10018E470(v86, v132);
    v88 = v67(v87, 1, v57);
    v89 = v133;
    if (v88 == 1)
    {
      UUID.init()();
      if (v67(v87, 1, v57) != 1)
      {
        sub_1000050A4(v87, &unk_100939D90, "8\n\r");
      }
    }

    else
    {
      (*(v139 + 32))(v133, v87, v57);
    }

    sub_100522A90(v85, v84, v89);
    (*(v139 + 8))(v89, v57);
    [v2 listTypeRawValue];
    v90 = REMManualOrderingListType.init(intValue:)();
    if ((v90 & 0x10000) == 0)
    {
      v91 = v90;
      v92 = v138;
      if (v91 != 4)
      {
        goto LABEL_82;
      }

      if (qword_1009363C8 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_100006654(v93, qword_10094BB90);
      v94 = v2;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v95, v96))
      {
        LODWORD(v142) = v96;
        v97 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v144 = v141;
        *v97 = 136446466;
        v98 = [v94 ckIdentifier];
        if (v98)
        {
          v99 = v98;
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;
        }

        else
        {
          v100 = 0;
          v102 = 0;
        }

        *&v145 = v100;
        *(&v145 + 1) = v102;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v112 = Optional.descriptionOrNil.getter();
        v114 = v113;

        v115 = sub_10000668C(v112, v114, &v144);

        *(v97 + 4) = v115;
        *(v97 + 12) = 2082;
        v116 = [v94 eTag];
        if (v116)
        {
          v117 = v126;
          v118 = v116;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v119 = 0;
        }

        else
        {
          v119 = 1;
          v117 = v126;
        }

        (v143)(v117, v119, 1, v57);
        v120 = Optional.descriptionOrNil.getter();
        v122 = v121;
        sub_1000050A4(v117, &unk_100939D90, "8\n\r");
        v123 = sub_10000668C(v120, v122, &v144);

        *(v97 + 14) = v123;
        _os_log_impl(&_mh_execute_header, v95, v142, "REMCDManualSortHint.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' {ckIdentifier: %{public}s, eTag: %{public}s}", v97, 0x16u);
        swift_arrayDestroy();
      }

      v124 = [v94 storeControllerManagedObjectContext];
      if (v124)
      {
        v125 = v124;
        [v124 setPendingPostSaveActions:{objc_msgSend(v124, "pendingPostSaveActions") | 2}];
        sub_10001BBA0(v85, v84);

        goto LABEL_80;
      }
    }

    v92 = v138;
LABEL_82:
    sub_1000050A4(v92, &unk_100939D90, "8\n\r");
    sub_10001BBA0(v85, v84);
    return;
  }

LABEL_68:
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  sub_100006654(v108, qword_10094BB90);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&_mh_execute_header, v109, v110, "Skip merging for different in eTag", v111, 2u);
  }

LABEL_80:
  sub_1000050A4(v138, &unk_100939D90, "8\n\r");
}

char *sub_10052118C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  __chkstk_darwin(v2);
  v118 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v107 - v11;
  v13 = type metadata accessor for REMCDManualSortHint();
  v138.receiver = v1;
  v138.super_class = v13;
  v14 = objc_msgSendSuper2(&v138, "newlyCreatedRecord");
  if (!v14)
  {
    return v14;
  }

  v119 = v9;
  v129 = v2;
  v15 = 0;
  sub_100226C14(&v139);
  v16 = &qword_100936000;
  v131 = v1;
  v128 = v12;
  v120 = v3;
  if (!v139)
  {
    v27 = 0;
    v100 = 0;
    v28 = 0xF000000000000000;
    v102 = 0xF000000000000000;
LABEL_17:
    v15 = v119;
    goto LABEL_18;
  }

  v150 = v139;
  v151 = v140;
  v152 = v141;
  sub_100451CD4(v142);
  v153 = v150;
  sub_1000050A4(&v153, &unk_10093B300, &unk_100797780);
  v154 = v151;
  sub_1000050A4(&v154, &qword_100939A08, &unk_100796A80);
  v155 = *(&v151 + 1);
  sub_1000050A4(&v155, &unk_100945230, &qword_1007A2590);
  v156 = v152;
  sub_1000050A4(&v156, &qword_10093E9C0, qword_100794F90);
  v157 = *(&v152 + 1);
  sub_1000050A4(&v157, &unk_100945240, &qword_1007A0A70);
  sub_10045312C(v143);
  v177[0] = v142[0];
  sub_1000050A4(v177, &unk_10093B300, &unk_100797780);
  v176 = v142[1];
  sub_1000050A4(&v176, &qword_100939A08, &unk_100796A80);
  v175 = v142[2];
  sub_1000050A4(&v175, &unk_100945230, &qword_1007A2590);
  v174 = v142[3];
  sub_1000050A4(&v174, &qword_10093E9C0, qword_100794F90);
  v173 = v142[4];
  sub_1000050A4(&v173, &unk_100945240, &qword_1007A0A70);
  v100 = sub_10015D850();
  v102 = v101;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v103 = swift_allocObject();
  v27 = v103;
  *(v103 + 16) = xmmword_100791300;
  if (qword_1009363E8 != -1)
  {
LABEL_99:
    swift_once();
  }

  v104 = *algn_100974F48;
  *(v27 + 4) = qword_100974F40;
  *(v27 + 5) = v104;

  v105 = sub_1001A5660(v27);
  swift_setDeallocating();
  sub_100034610((v27 + 32));
  swift_deallocClassInstance();
  sub_10045226C(v105, &v144);

  v172 = v143[0];
  sub_1000050A4(&v172, &unk_10093B300, &unk_100797780);
  v171 = v143[1];
  sub_1000050A4(&v171, &qword_100939A08, &unk_100796A80);
  v170 = v143[2];
  sub_1000050A4(&v170, &unk_100945230, &qword_1007A2590);
  v169 = v143[3];
  sub_1000050A4(&v169, &qword_10093E9C0, qword_100794F90);
  v168 = v143[4];
  sub_1000050A4(&v168, &unk_100945240, &qword_1007A0A70);
  sub_10045312C(v149);
  if (!v15)
  {
    v167 = v144;
    sub_1000050A4(&v167, &unk_10093B300, &unk_100797780);
    v166 = v145;
    sub_1000050A4(&v166, &qword_100939A08, &unk_100796A80);
    v165 = v146;
    sub_1000050A4(&v165, &unk_100945230, &qword_1007A2590);
    v164 = v147;
    sub_1000050A4(&v164, &qword_10093E9C0, qword_100794F90);
    v163 = v148;
    sub_1000050A4(&v163, &unk_100945240, &qword_1007A0A70);
    v27 = sub_10015D850();
    v28 = v106;
    v162 = v149[0];
    sub_1000050A4(&v162, &unk_10093B300, &unk_100797780);
    v161 = v149[1];
    sub_1000050A4(&v161, &qword_100939A08, &unk_100796A80);
    v160 = v149[2];
    sub_1000050A4(&v160, &unk_100945230, &qword_1007A2590);
    v159 = v149[3];
    sub_1000050A4(&v159, &qword_10093E9C0, qword_100794F90);
    v158 = v149[4];
    sub_1000050A4(&v158, &unk_100945240, &qword_1007A0A70);
    goto LABEL_17;
  }

  v132 = v15;
  v167 = v144;
  sub_1000050A4(&v167, &unk_10093B300, &unk_100797780);
  v166 = v145;
  sub_1000050A4(&v166, &qword_100939A08, &unk_100796A80);
  v165 = v146;
  sub_1000050A4(&v165, &unk_100945230, &qword_1007A2590);
  v164 = v147;
  sub_1000050A4(&v164, &qword_10093E9C0, qword_100794F90);
  v163 = v148;
  sub_1000050A4(&v163, &unk_100945240, &qword_1007A0A70);
  v15 = v119;
  if (v16[121] != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094BB90);
  v18 = v1;
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    LODWORD(v130) = v20;
    v133 = v102;
    v21 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v134 = v127;
    *v21 = 136446978;
    v22 = [v18 ckIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    *&v135 = v24;
    *(&v135 + 1) = v26;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v29 = String.init<A>(describing:)();
    v31 = sub_10000668C(v29, v30, &v134);

    *(v21 + 4) = v31;
    *(v21 + 12) = 2080;
    [v18 listTypeRawValue];
    v32 = REMManualOrderingListType.init(intValue:)();
    LOWORD(v135) = v32;
    BYTE2(v135) = BYTE2(v32) & 1;
    sub_1000F5104(&qword_10094BBB8, &qword_1007B0130);
    v33 = String.init<A>(describing:)();
    v35 = sub_10000668C(v33, v34, &v134);

    *(v21 + 14) = v35;
    *(v21 + 22) = 2080;
    v36 = [v18 listID];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v1 = v131;
    v102 = v133;
    *&v135 = v38;
    *(&v135 + 1) = v40;
    v41 = String.init<A>(describing:)();
    v43 = sub_10000668C(v41, v42, &v134);

    *(v21 + 24) = v43;
    *(v21 + 32) = 2082;
    swift_getErrorValue();
    v44 = Error.localizedDescription.getter();
    v46 = sub_10000668C(v44, v45, &v134);

    *(v21 + 34) = v46;
    _os_log_impl(&_mh_execute_header, v19, v130, "newlyCreatedRecord: Failed to serialize/deserialize hintData in REMCDManualSortHint {ckIdentifier: %{public}s, list type: %s, listID: %s, error: %{public}s}", v21, 0x2Au);
    swift_arrayDestroy();

    v27 = 0;
    v28 = 0xF000000000000000;
    goto LABEL_17;
  }

  v27 = 0;
  v28 = 0xF000000000000000;
LABEL_18:
  v47 = 0;
  v127 = "yyyy-MM-dd hh:mm:ss";
  v123 = "aryAccountOnlyAsBytes";
  v124 = "SerializationVersion";
  v48 = __OFSUB__(HIDWORD(v27), v27);
  v111 = v48;
  v110 = HIDWORD(v27) - v27;
  v132 = v28;
  v133 = v102;
  v121 = "gRemindersInLocalAccountAsBytes";
  v122 = "aryAccountOnlyAsAsset";
  v116 = v102 >> 62;
  v117 = v28 >> 62;
  v130 = v100;
  v49 = __OFSUB__(HIDWORD(v100), v100);
  v109 = v49;
  v108 = HIDWORD(v100) - v100;
  v112 = BYTE6(v102);
  v113 = BYTE6(v28);
  v125 = (v120 + 48);
  v126 = (v120 + 56);
  v114 = (v120 + 8);
  v115 = (v120 + 16);
  v100 = &off_1008E3B48;
  v102 = v27;
  v120 = v27;
  do
  {
    v50 = *(&off_1008E3B48 + v47 + 32);
    if (v50 <= 3)
    {
      if (*(&off_1008E3B48 + v47 + 32) > 1u)
      {
        if (v50 == 2)
        {
          goto LABEL_27;
        }

        v16 = (v132 >> 60);
        if (v132 >> 60 != 15)
        {
          if (v117 > 1)
          {
            if (v117 == 2)
            {
              v71 = *(v102 + 16);
              v70 = *(v102 + 24);
              v1 = v70 - v71;
              if (__OFSUB__(v70, v71))
              {
                goto LABEL_96;
              }
            }

            else
            {
              v1 = 0;
            }
          }

          else
          {
            v1 = v113;
            if (v117)
            {
              v1 = v110;
              if (v111)
              {
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
                goto LABEL_99;
              }
            }
          }

          v74 = [objc_opt_self() sharedConfiguration];
          v75 = [v74 maxInlineAssetSizeBytes];

          if (v1 >= 1 && v75 >> 1 < v1)
          {
LABEL_81:
            v78 = objc_opt_self();
            isa = Data._bridgeToObjectiveC()().super.isa;
            v80 = [v78 assetForData:isa];

            v27 = v14;
            CKRecord.subscript.setter();
            CKRecord.subscript.setter();
            v1 = v131;
            goto LABEL_27;
          }
        }

        CKRecord.subscript.setter();
        v27 = [v14 encryptedValues];
        if (v16 <= 0xE)
        {
          *(&v136 + 1) = &type metadata for Data;
          v137 = &protocol witness table for Data;
          v1 = v131;
          v55 = v132;
          *&v135 = v102;
          *(&v135 + 1) = v132;
        }

        else
        {
          v137 = 0;
          v135 = 0u;
          v136 = 0u;
          v1 = v131;
          v55 = v132;
        }

        swift_getObjectType();
        sub_1001CB4B8(v102, v55);
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*(&off_1008E3B48 + v47 + 32))
        {
          v52 = [v1 eTag];
          if (v52)
          {
            v53 = v52;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v54 = 0;
          }

          else
          {
            v54 = 1;
          }

          v63 = v129;
          (*v126)(v15, v54, 1, v129);
          v64 = v128;
          sub_100100FB4(v15, v128);
          if ((*v125)(v64, 1, v63))
          {
            sub_1000050A4(v64, &unk_100939D90, "8\n\r");
            v135 = 0u;
            v136 = 0u;
            v137 = 0;
          }

          else
          {
            v65 = v118;
            (*v115)(v118, v64, v63);
            sub_1000050A4(v64, &unk_100939D90, "8\n\r");
            v66 = UUID.uuidString.getter();
            v68 = v67;
            v69 = v65;
            v15 = v119;
            (*v114)(v69, v63);
            *(&v136 + 1) = &type metadata for String;
            v137 = &protocol witness table for String;
            *&v135 = v66;
            *(&v135 + 1) = v68;
          }

          goto LABEL_33;
        }

        v16 = (v133 >> 60);
        if (v133 >> 60 != 15)
        {
          if (v116 > 1)
          {
            if (v116 == 2)
            {
              v73 = v130[2];
              v72 = v130[3];
              v1 = v72 - v73;
              if (__OFSUB__(v72, v73))
              {
                goto LABEL_98;
              }
            }

            else
            {
              v1 = 0;
            }
          }

          else
          {
            v1 = v112;
            if (v116)
            {
              v1 = v108;
              if (v109)
              {
                goto LABEL_97;
              }
            }
          }

          v76 = [objc_opt_self() sharedConfiguration];
          v77 = [v76 maxInlineAssetSizeBytes];

          if (v1 >= 1 && v77 >> 1 < v1)
          {
            goto LABEL_81;
          }
        }

        CKRecord.subscript.setter();
        v27 = [v14 encryptedValues];
        if (v16 <= 0xE)
        {
          *(&v136 + 1) = &type metadata for Data;
          v137 = &protocol witness table for Data;
          v61 = v130;
          v1 = v131;
          v62 = v133;
          *&v135 = v130;
          *(&v135 + 1) = v133;
        }

        else
        {
          v137 = 0;
          v135 = 0u;
          v136 = 0u;
          v61 = v130;
          v1 = v131;
          v62 = v133;
        }

        swift_getObjectType();
        sub_1001CB4B8(v61, v62);
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
        v102 = v120;
      }
    }

    else
    {
      if (*(&off_1008E3B48 + v47 + 32) > 5u)
      {
        if (v50 == 6)
        {
          v56 = [v1 listID];
          if (v56)
          {
            v57 = v56;
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            *(&v136 + 1) = &type metadata for String;
            v137 = &protocol witness table for String;
            *&v135 = v58;
            *(&v135 + 1) = v60;
          }

          else
          {
            v137 = 0;
            v135 = 0u;
            v136 = 0u;
          }
        }

        else if (v50 == 7)
        {
          v51 = [v1 listTypeRawValue];
          *(&v136 + 1) = &type metadata for Int16;
          v137 = &protocol witness table for Int16;
          LOWORD(v135) = v51;
        }

        else
        {
          *(&v136 + 1) = &type metadata for Int16;
          v137 = &protocol witness table for Int16;
          LOWORD(v135) = 1;
        }

LABEL_33:
        sub_10018E134();
LABEL_26:
        v27 = v14;
        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_27;
      }

      if (v50 != 4)
      {
        *(&v136 + 1) = type metadata accessor for Date();
        v137 = &protocol witness table for Date;
        sub_1000103CC(&v135);
        [v1 lastAccessedSinceReferenceDate];
        Date.init(timeIntervalSinceReferenceDate:)();
        sub_10018E134();
        goto LABEL_26;
      }
    }

LABEL_27:
    ++v47;
  }

  while (v47 != 9);
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_100006654(v81, qword_10094BB90);
  v82 = v1;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v133;
  if (v85)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v134 = v88;
    *v87 = 136446466;
    v89 = [v82 ckIdentifier];
    if (v89)
    {
      v90 = v89;
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
    }

    else
    {
      v91 = 0;
      v93 = 0;
    }

    *&v135 = v91;
    *(&v135 + 1) = v93;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v95 = Optional.descriptionOrNil.getter();
    v97 = v96;

    v98 = sub_10000668C(v95, v97, &v134);

    *(v87 + 4) = v98;
    *(v87 + 12) = 514;
    LOWORD(v98) = [v82 listTypeRawValue];

    *(v87 + 14) = v98;
    _os_log_impl(&_mh_execute_header, v83, v84, "REMCDManualSortHint+CloudKit: newlyCreatedRecord(): {ckIdentifier: %{public}s, listTypeRawValue: %{public}hd}", v87, 0x10u);
    sub_10000607C(v88);

    sub_100031A14(v130, v133);
    v94 = v120;
  }

  else
  {

    sub_100031A14(v130, v86);
    v94 = v102;
  }

  sub_100031A14(v94, v132);

  return v14;
}

void sub_1005228A4()
{
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094BB90);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10094BBA8, &qword_1007B0128);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

void sub_100522A90(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029344(a1, a2);
  sub_10015E2E4(a1, a2, &v134);
  v129 = v11;
  v130 = v7;
  v131 = a3;
  v23 = v134;
  v22 = v135;
  v25 = v136;
  v24 = v137;
  v132 = v138;
  v133 = v3;
  sub_100226C14(&v178);
  v127 = v25;
  v128 = v23;
  if (!v178)
  {
    v168 = v128;
    sub_1000050A4(&v168, &unk_10093B300, &unk_100797780);
    v181 = v22;
    sub_1000050A4(&v181, &qword_100939A08, &unk_100796A80);
    v145 = v127;
    sub_1000050A4(&v145, &unk_100945230, &qword_1007A2590);
    *&v141 = v24;
    sub_1000050A4(&v141, &qword_10093E9C0, qword_100794F90);
    v140[0] = v132;
    sub_1000050A4(v140, &unk_100945240, &qword_1007A0A70);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v27 = v133;
    [v133 setETag:isa];

    v28 = Data._bridgeToObjectiveC()().super.isa;
    [v27 setHintData:v28];

    [v27 setSerializationVersion:1];
    return;
  }

  v181 = v178;
  v182 = v179;
  v183 = v180;
  sub_100451CD4(v139);
  v124 = v8;
  v115 = v22;
  v116 = v24;
  v121 = v139[2];
  v125 = v139[3];
  v126 = v139[0];
  v120 = v139[1];
  v123 = v139[4];
  sub_1004AB2C4(&v134, 0, v140);
  v150 = v181;
  sub_1000050A4(&v150, &unk_10093B300, &unk_100797780);
  v151 = v182;
  sub_1000050A4(&v151, &qword_100939A08, &unk_100796A80);
  v152 = *(&v182 + 1);
  sub_1000050A4(&v152, &unk_100945230, &qword_1007A2590);
  v153 = v183;
  sub_1000050A4(&v153, &qword_10093E9C0, qword_100794F90);
  v154 = *(&v183 + 1);
  sub_1000050A4(&v154, &unk_100945240, &qword_1007A0A70);
  v50 = [objc_opt_self() sharedConfiguration];
  [v50 manualSortHintClientSideExpiration];

  sub_100452DF0(&v141);
  v167 = v140[0];
  sub_1000050A4(&v167, &unk_10093B300, &unk_100797780);
  v166 = v140[1];
  sub_1000050A4(&v166, &qword_100939A08, &unk_100796A80);
  v165 = v140[2];
  sub_1000050A4(&v165, &unk_100945230, &qword_1007A2590);
  v164 = v140[3];
  sub_1000050A4(&v164, &qword_10093E9C0, qword_100794F90);
  v163 = v140[4];
  sub_1000050A4(&v163, &unk_100945240, &qword_1007A0A70);
  sub_100451CD4(&v145);
  v53 = v145;
  v54 = v146;
  v55 = v126;
  if (!v126)
  {
    if (!v145)
    {
      v168 = v134;
      sub_1000050A4(&v168, &unk_10093B300, &unk_100797780);
      v162 = v135;
      sub_1000050A4(&v162, &qword_100939A08, &unk_100796A80);
      v161 = v136;
      sub_1000050A4(&v161, &unk_100945230, &qword_1007A2590);
      v160 = v137;
      sub_1000050A4(&v160, &qword_10093E9C0, qword_100794F90);
      v159 = v138;
      sub_1000050A4(&v159, &unk_100945240, &qword_1007A0A70);
      v158 = v141;
      sub_1000050A4(&v158, &unk_10093B300, &unk_100797780);
      *(&v157 + 1) = *(&v141 + 1);
      sub_1000050A4(&v157 + 8, &qword_100939A08, &unk_100796A80);
      *&v157 = v142;
      sub_1000050A4(&v157, &unk_100945230, &qword_1007A2590);
      v156 = v143;
      sub_1000050A4(&v156, &qword_10093E9C0, qword_100794F90);
      v155 = v144;
      sub_1000050A4(&v155, &unk_100945240, &qword_1007A0A70);
      return;
    }

    goto LABEL_16;
  }

  if (!v145)
  {
LABEL_16:
    v168 = v126;
    v169 = v120;
    v170 = v121;
    v51 = v124;
    v171 = v125;
    v172 = v123;
    v173 = v145;
    v174 = v146;
    v175 = v147;
    v176 = v148;
    v177 = v149;
    v117 = v147;
    v118 = v149;
    v119 = v148;
    sub_10052482C(v145);
    sub_1000050A4(&v168, &qword_10094BBC8, &qword_1007B0138);
    goto LABEL_17;
  }

  v56 = v147;
  v57 = v146;
  v58 = v148;
  v59 = v145;
  v60 = v149;
  v61 = sub_1003AD2E8(v126, v145);
  v114 = v59;
  v122 = v57;
  sub_10052482C(v59);
  v126 = v55;
  v63 = v120;
  v62 = v121;
  v64 = v125;
  sub_10052482C(v55);
  v117 = v56;
  v118 = v60;
  v119 = v58;
  if ((v61 & 1) == 0)
  {

    v54 = v122;

    v53 = v114;

    v86 = v126;
LABEL_41:
    sub_100524898(v86);

LABEL_42:

    v51 = v124;
    goto LABEL_17;
  }

  v125 = v64;
  v65 = v114;
  v54 = v122;
  if ((sub_1004ADA04(v63, v122) & 1) == 0)
  {

    v53 = v65;

    v86 = v126;
    goto LABEL_41;
  }

  v53 = v65;
  if ((sub_1004ADBAC(v62, v117) & 1) == 0 || (sub_1004ADD50(v125, v119) & 1) == 0)
  {

    sub_100524898(v126);

    goto LABEL_42;
  }

  v66 = sub_1005A544C(v123, v118);

  sub_100524898(v126);

  if (v66)
  {
    v168 = v134;
    sub_1000050A4(&v168, &unk_10093B300, &unk_100797780);
    v162 = v135;
    sub_1000050A4(&v162, &qword_100939A08, &unk_100796A80);
    v161 = v136;
    sub_1000050A4(&v161, &unk_100945230, &qword_1007A2590);
    v160 = v137;
    sub_1000050A4(&v160, &qword_10093E9C0, qword_100794F90);
    v159 = v138;
    sub_1000050A4(&v159, &unk_100945240, &qword_1007A0A70);
    v158 = v141;
    sub_1000050A4(&v158, &unk_10093B300, &unk_100797780);
    *(&v157 + 1) = *(&v141 + 1);
    sub_1000050A4(&v157 + 8, &qword_100939A08, &unk_100796A80);
    *&v157 = v142;
    sub_1000050A4(&v157, &unk_100945230, &qword_1007A2590);
    v156 = v143;
    sub_1000050A4(&v156, &qword_10093E9C0, qword_100794F90);
    v155 = v144;
    sub_1000050A4(&v155, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v65);
    return;
  }

  v51 = v124;
  v54 = v122;
LABEL_17:
  v122 = v54;
  v52 = sub_10015D850();
  v126 = 0;
  v67 = v128;
  v69 = v115;
  v68 = v116;
  v70 = v133;
  v71 = v52;
  v73 = v72;
  v74 = v53;
  v75 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BBA0(v71, v73);
  [v70 setHintData:v75];

  v76 = v74;
  [v70 setSerializationVersion:1];
  if (!v74)
  {
    v168 = 0;
    v169 = v122;
    v170 = v117;
    v171 = v119;
    v172 = v118;
    v173 = v67;
    v174 = v69;
    v175 = v127;
    v176 = v68;
    v177 = v132;
    sub_1000050A4(&v168, &qword_10094BBC8, &qword_1007B0138);
LABEL_37:
    v85 = v129;
    v84 = v130;
    v81 = v70;
    goto LABEL_46;
  }

  v77 = sub_1003AD2E8(v74, v134);
  v78 = v122;
  if ((v77 & 1) == 0)
  {

    v168 = v135;
    sub_1000050A4(&v168, &qword_100939A08, &unk_100796A80);
    v162 = v136;
    sub_1000050A4(&v162, &unk_100945230, &qword_1007A2590);
    v161 = v137;
    sub_1000050A4(&v161, &qword_10093E9C0, qword_100794F90);
    v160 = v138;
    sub_1000050A4(&v160, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v74);

    goto LABEL_37;
  }

  v79 = v135;

  v80 = v117;

  v81 = v70;
  if ((sub_1004ADA04(v78, v79) & 1) == 0)
  {

    v168 = v136;
    sub_1000050A4(&v168, &unk_100945230, &qword_1007A2590);
    v162 = v137;
    sub_1000050A4(&v162, &qword_10093E9C0, qword_100794F90);
    v161 = v138;
    sub_1000050A4(&v161, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v76);

LABEL_44:

    v51 = v124;
LABEL_45:
    v85 = v129;
    v84 = v130;
    goto LABEL_46;
  }

  v114 = v76;
  if ((sub_1004ADBAC(v80, v136) & 1) == 0)
  {

    v168 = v137;
    sub_1000050A4(&v168, &qword_10093E9C0, qword_100794F90);
    v162 = v138;
    sub_1000050A4(&v162, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v114);

    goto LABEL_44;
  }

  v82 = sub_1004ADD50(v119, v137);
  v51 = v124;
  if ((v82 & 1) == 0)
  {

    v168 = v138;
    sub_1000050A4(&v168, &unk_100945240, &qword_1007A0A70);
    sub_100524898(v114);

    goto LABEL_45;
  }

  v83 = sub_1005A544C(v118, v138);
  v51 = v124;

  sub_100524898(v114);

  v85 = v129;
  v84 = v130;
  if (v83)
  {
    (*(v51 + 16))(v129, v131, v130);
    goto LABEL_47;
  }

LABEL_46:
  UUID.init()();
LABEL_47:
  v87 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v51 + 8))(v85, v84);
  [v81 setETag:v87];

  v88 = v144;
  v159 = v144;
  v89 = *(v144 + 32);
  v90 = v89 & 0x3F;
  v131 = ((1 << v89) + 63) >> 6;
  v91 = 8 * v131;

  if (v90 <= 0xD)
  {
    goto LABEL_48;
  }

  v110 = v131;

  if (swift_stdlib_isStackAllocationSafe())
  {
    v92 = sub_1000050A4(&v159, &unk_100945240, &qword_1007A0A70);
LABEL_48:
    v130 = &v113;
    __chkstk_darwin(v92);
    v93 = &v113 - ((v91 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v93, v91);
    v132 = 0;
    v94 = 0;
    v95 = 1 << *(v88 + 32);
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v97 = v96 & *(v88 + 56);
    v98 = (v95 + 63) >> 6;
    while (v97)
    {
      v99 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
LABEL_58:
      v102 = v99 | (v94 << 6);
      v103 = (*(v88 + 48) + 16 * v102);
      v104 = *v103;
      v105 = v103[1];

      v106._countAndFlagsBits = 0x7C6C61636F6CLL;
      v106._object = 0xE600000000000000;
      LOBYTE(v104) = String.hasPrefix(_:)(v106);

      if (v104)
      {
        *&v93[(v102 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v102;
        if (__OFADD__(v132++, 1))
        {
          __break(1u);
LABEL_62:
          v108 = sub_1001A0BCC(v93, v131, v132, v88);
          goto LABEL_63;
        }
      }
    }

    v100 = v94;
    while (1)
    {
      v94 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        break;
      }

      if (v94 >= v98)
      {
        goto LABEL_62;
      }

      v101 = *(v88 + 56 + 8 * v94);
      ++v100;
      if (v101)
      {
        v99 = __clz(__rbit64(v101));
        v97 = (v101 - 1) & v101;
        goto LABEL_58;
      }
    }

    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094BB90);
    v13 = v88;
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v181 = v133;
      *v16 = 136447234;
      v17 = [v13 ckIdentifier];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v168 = v19;
      v169 = v21;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v29 = String.init<A>(describing:)();
      v31 = sub_10000668C(v29, v30, &v181);

      *(v16 + 4) = v31;
      *(v16 + 12) = 2080;
      [v13 listTypeRawValue];
      v32 = REMManualOrderingListType.init(intValue:)();
      LOWORD(v168) = v32;
      BYTE2(v168) = BYTE2(v32) & 1;
      sub_1000F5104(&qword_10094BBB8, &qword_1007B0130);
      v33 = String.init<A>(describing:)();
      v35 = sub_10000668C(v33, v34, &v181);

      *(v16 + 14) = v35;
      *(v16 + 22) = 2080;
      v36 = [v13 listID];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v168 = v38;
      v169 = v40;
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, &v181);

      *(v16 + 24) = v43;
      *(v16 + 32) = 2080;
      LOWORD(v168) = 1;
      sub_1005247D8();
      v44 = BinaryInteger.description.getter();
      v46 = sub_10000668C(v44, v45, &v181);

      *(v16 + 34) = v46;
      *(v16 + 42) = 2082;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = sub_10000668C(v47, v48, &v181);

      *(v16 + 44) = v49;
      _os_log_impl(&_mh_execute_header, v14, v15, "mergeData: Invalid remoteHintData for REMCDManualSortHint {ckIdentifier: %{public}s, list type: %s, listID: %s, dataSerializationVersion: %s, error: %{public}s}", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v111 = swift_slowAlloc();
  v112 = sub_1004ADE8C(v111, v110, v88, sub_1004FD8D0);
  sub_1000050A4(&v159, &unk_100945240, &qword_1007A0A70);

  v108 = v112;
LABEL_63:
  sub_1002D6764(v108);
  v158 = v142;
  v157 = v141;
  v109 = sub_1004FE558(1, v141, *(&v141 + 1), v142);
  sub_1000050A4(&v157, &unk_10093B300, &unk_100797780);
  sub_1000050A4(&v157 + 8, &qword_100939A08, &unk_100796A80);
  sub_1000050A4(&v158, &unk_100945230, &qword_1007A2590);
  v156 = v143;
  sub_1000050A4(&v156, &qword_10093E9C0, qword_100794F90);
  sub_1000050A4(&v159, &unk_100945240, &qword_1007A0A70);
  sub_1002D6778(v109);
}

uint64_t sub_1005244E8()
{
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094BB90);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10094BBA8, &qword_1007B0128);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_100524660()
{
  if (qword_1009363C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094BB90);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10094BBA8, &qword_1007B0128);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

unint64_t sub_1005247D8()
{
  result = qword_10094BBC0;
  if (!qword_10094BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BBC0);
  }

  return result;
}

uint64_t sub_10052482C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100524898(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100524910()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BBD0);
  v1 = sub_100006654(v0, qword_10094BBD0);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100524AC4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter);
    [v8 setDelegate:v0];
    [v8 setWantsNotificationResponsesDelivered];
    v9 = sub_1002DC288();
    sub_1001A571C(v9);

    sub_1000060C8(0, &unk_100943A40, UNNotificationCategory_ptr);
    sub_10052DB40();
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v8 setNotificationCategories:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100524C70(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = sub_10052DCC4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6188;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v23[1] = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_100524F34(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a1 authorizationStatus];
  if ((v11 - 2) < 3)
  {
    v12 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
    *v10 = v12;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v13 = v12;
    LOBYTE(v12) = _dispatchPreconditionTest(_:)();
    v14 = *(v7 + 8);
    v7 += 8;
    v14(v10, v6);
    if (v12)
    {
      v15 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter);
      return a3(v15);
    }

    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_13;
  }

  v16 = &qword_100936000;
  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_17;
    }

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10094BBD0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "User denied notification access", v20, 2u);
    }

    v21 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
    *v10 = v21;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v23 = *(v7 + 8);
    v7 += 8;
    v23(v10, v6);
    if (v21)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  if (v16[122] != -1)
  {
    goto LABEL_25;
  }

LABEL_13:
  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_10094BBD0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "User hasn't been prompted for notification access", v27, 2u);
  }

  v28 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v10 = v28;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v30 = *(v7 + 8);
  v7 += 8;
  v30(v10, v6);
  if (v28)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_17:
  if (v16[122] != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_10094BBD0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unknown notification authorization status", v34, 2u);
  }

  v35 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v10 = v35;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v35)
  {
LABEL_22:
    v15 = 0;
    return a3(v15);
  }

  __break(1u);
  return result;
}

id RDUserNotificationCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDUserNotificationCenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10052554C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = *&v5[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = sub_100342BC4;
  v13[4] = v11;
  v18[4] = sub_10052DDE4;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1004CB24C;
  v18[3] = &unk_1008F6098;
  v14 = _Block_copy(v18);
  v15 = v5;
  sub_10014D92C(a4);

  v16 = a3;

  [v12 getNotificationSettingsWithCompletionHandler:v14];
  _Block_release(v14);
}

void sub_1005256BC(void *a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v19 = a1;
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() requestWithIdentifier:v20 content:a7 trigger:0];

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10094BBD0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = v21;
      v26 = a4;
      v27 = v19;
      v28 = v25;
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10000668C(a5, a6, aBlock);
      _os_log_impl(&_mh_execute_header, v23, v24, "Issuing: showNotification notificationCenter.add(request) {identifier: %{public}s}", v28, 0xCu);
      sub_10000607C(v29);

      v19 = v27;
      a4 = v26;
      v21 = v36;
    }

    v30 = swift_allocObject();
    v30[2] = a2;
    v30[3] = a3;
    v30[4] = a4;
    aBlock[4] = sub_10052DC08;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008F60E8;
    v31 = _Block_copy(aBlock);
    v32 = a2;
    sub_10014D92C(a3);

    [v19 addNotificationRequest:v21 withCompletionHandler:v31];
    _Block_release(v31);
  }

  else
  {
    v33 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    *v18 = v33;
    (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
    v34 = v33;
    LOBYTE(v33) = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v18, v14);
    if (v33)
    {
      if (a3)
      {
        a3(0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100525A4C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v13 = *&v2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = a2;
    aBlock[4] = sub_10052DBA8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F5FD0;
    v15 = _Block_copy(aBlock);
    v16 = v2;

    [v13 getDeliveredNotificationsWithCompletionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100525C30(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  aBlock[4] = sub_10052DBB4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6020;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  v22[1] = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_100525EF8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v12 = v13;
  (*(v8 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v7, v10);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    return a2(a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_10052602C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1000060C8(0, &qword_10094BCC0, UNNotification_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1005260B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v14 = v15;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v9);
  if (v15)
  {
    v17 = *&v4[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v18 = swift_allocObject();
    v18[2] = v4;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = a1;
    v18[6] = a2;
    aBlock[4] = sub_10052D96C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F5C60;
    v19 = _Block_copy(aBlock);
    v20 = v4;

    [v17 getDeliveredNotificationsWithCompletionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005262B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v25);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a1;
  v20[6] = a5;
  v20[7] = a6;
  aBlock[4] = sub_10052D984;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F5CB0;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);
}

uint64_t sub_100526590(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if ((v18 & 1) == 0)
  {
    goto LABEL_32;
  }

  v40 = a3;
  v48 = _swiftEmptyArrayStorage;
  if (a4 >> 62)
  {
LABEL_33:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v20 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_4:
      v39 = a2;
      a2 = 0;
      v43 = a4 & 0xFFFFFFFFFFFFFF8;
      v44 = a4 & 0xC000000000000001;
      v38[1] = a4;
      v41 = a4 + 32;
      v42 = 0x80000001007FC090;
      while (1)
      {
        if (v44)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v43 + 16))
          {
            goto LABEL_31;
          }

          v21 = *(v41 + 8 * a2);
        }

        v22 = v21;
        if (__OFADD__(a2++, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v24 = [v21 request];
        a4 = [v24 content];

        v25 = [a4 userInfo];
        v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v47[0] = 0xD000000000000025;
        v47[1] = v42;
        AnyHashable.init<A>(_:)();
        if (*(v26 + 16) && (v27 = sub_10001B0D8(v46), (v28 & 1) != 0))
        {
          sub_100005EF0(*(v26 + 56) + 32 * v27, v47);
          sub_10001B2CC(v46);

          sub_1000F5104(&unk_10093B300, &unk_100797780);
          if (swift_dynamicCast())
          {
            v29 = v45;
            goto LABEL_16;
          }
        }

        else
        {

          sub_10001B2CC(v46);
        }

        v29 = _swiftEmptyArrayStorage;
LABEL_16:
        v30 = sub_1001A5660(v29);

        if (*(v30 + 16) && (v31 = *(v30 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v32 = Hasher._finalize()(), v33 = -1 << *(v30 + 32), a4 = v32 & ~v33, ((*(v30 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0))
        {
          v34 = ~v33;
          while (1)
          {
            v35 = (*(v30 + 48) + 16 * a4);
            v36 = *v35 == a5 && v35[1] == a6;
            if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            a4 = (a4 + 1) & v34;
            if (((*(v30 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          a4 = v48[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (a2 == v20)
          {
LABEL_29:
            v39(v48);
          }
        }

        else
        {
LABEL_5:

          if (a2 == v20)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  (a2)(_swiftEmptyArrayStorage);
}

uint64_t sub_1005269F4()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_10001B0D8(v8), (v4 & 1) == 0))
  {

    sub_10001B2CC(v8);
    goto LABEL_6;
  }

  sub_100005EF0(*(v2 + 56) + 32 * v3, v9);
  sub_10001B2CC(v8);

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v5 = 0xD000000000000025;
LABEL_7:
  v6 = sub_1001A5660(v5);

  return v6;
}

uint64_t sub_100526B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v31 = a6;
  v32 = a4;
  v33 = a5;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v8[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v19, v14);
  if (v20)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v8;
    *(v23 + 24) = a7;
    *(v23 + 32) = a8;
    *(v23 + 40) = a1;
    *(v23 + 48) = a2;
    *(v23 + 56) = a3;
    v24 = v33;
    *(v23 + 64) = v32;
    *(v23 + 72) = v24;
    *(v23 + 80) = v31 & 1;
    v25 = *&v8[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v26 = swift_allocObject();
    v26[2] = v8;
    v26[3] = sub_10052D9AC;
    v26[4] = v23;
    aBlock[4] = sub_10052DDE4;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004CB24C;
    aBlock[3] = &unk_1008F5DA0;
    v27 = _Block_copy(aBlock);
    v28 = v8;
    sub_10014D92C(a7);

    v29 = v24;

    [v25 getNotificationSettingsWithCompletionHandler:v27];
    _Block_release(v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100526DB4(void *a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  v32 = a7;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = (&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a5;
    *(v23 + 32) = a6;
    *(v23 + 40) = a3;
    v24 = v32;
    *(v23 + 48) = a4;
    *(v23 + 56) = v24;
    *(v23 + 64) = a8;
    *(v23 + 72) = a9;
    *(v23 + 80) = a1;
    *(v23 + 88) = a10 & 1;
    aBlock[4] = sub_10052D9E8;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F5DF0;
    v25 = _Block_copy(aBlock);
    v26 = a1;
    v27 = a2;

    sub_10014D92C(a3);

    v28 = a9;

    [v26 getDeliveredNotificationsWithCompletionHandler:v25];
    _Block_release(v25);
  }

  else
  {
    v29 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    *v22 = v29;
    (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v17, v20);
    v30 = v29;
    LOBYTE(v29) = _dispatchPreconditionTest(_:)();
    (*(v18 + 8))(v22, v17);
    if (v29)
    {
      if (a3)
      {
        a3(0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100527020(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, unsigned __int8 a11)
{
  v35 = a7;
  v36 = a8;
  v34 = a11;
  v33 = a9;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v38 - 8);
  v17 = *(v42 + 64);
  __chkstk_darwin(v38);
  v37 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v19 = *(v39 + 64);
  __chkstk_darwin(v41);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = a1;
  *(v22 + 40) = a5;
  v23 = v35;
  v24 = v36;
  *(v22 + 48) = a6;
  *(v22 + 56) = v23;
  v25 = v33;
  *(v22 + 64) = v24;
  *(v22 + 72) = v25;
  *(v22 + 80) = a2;
  *(v22 + 88) = a10;
  *(v22 + 96) = v34;
  aBlock[4] = sub_10052DA28;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F5E40;
  v26 = _Block_copy(aBlock);

  sub_10014D92C(a5);

  v27 = v25;
  v28 = a2;
  v29 = a10;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v31 = v37;
  v30 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v42 + 8))(v31, v30);
  (*(v39 + 8))(v21, v41);
}

void sub_10052734C(uint64_t a1, unint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, Swift::Int a6, uint64_t a7, uint64_t a8, char *a9, void *a10, char a11)
{
  v249 = a7;
  v248 = a6;
  v251 = a5;
  v252 = a4;
  v255 = a1;
  v236 = type metadata accessor for DispatchPredicate();
  v235 = *(v236 - 8);
  v14 = *(v235 + 64);
  __chkstk_darwin(v236);
  v234 = (&v229 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Date();
  v245 = *(v16 - 8);
  v17 = *(v245 + 64);
  __chkstk_darwin(v16);
  v232 = &v229 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v238 = &v229 - v20;
  __chkstk_darwin(v21);
  v231 = &v229 - v22;
  v239 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v23 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v242 = &v229 - v24;
  v25 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v237 = &v229 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v240 = &v229 - v29;
  __chkstk_darwin(v30);
  v233 = &v229 - v31;
  __chkstk_darwin(v32);
  v241 = &v229 - v33;
  __chkstk_darwin(v34);
  v244 = &v229 - v35;
  if (qword_1009363D0 != -1)
  {
LABEL_98:
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_100006654(v36, qword_10094BBD0);

  v253 = v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v41 = (a3 >> 62);
  v254 = a2;
  v250 = a8;
  v243 = v16;
  v42 = a3;
  if (v40)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_10000668C(v255, a2, &aBlock);
    *(v43 + 12) = 2080;
    if (v41)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v45 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v45)
    {
      v263 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v45 & ~(v45 >> 63), 0);
      if (v45 < 0)
      {
        __break(1u);
        goto LABEL_114;
      }

      v229 = v44;
      v230 = v43;
      LODWORD(v246) = v39;
      v247 = (a3 >> 62);
      v256 = v38;
      v46 = 0;
      v47 = v263;
      v48 = a3 & 0xC000000000000001;
      do
      {
        if (v48)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v49 = *(a3 + 8 * v46 + 32);
        }

        v50 = v49;
        v51 = [v49 request];
        v52 = [v51 identifier];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v263 = v47;
        v57 = v47[2];
        v56 = v47[3];
        if (v57 >= v56 >> 1)
        {
          sub_100026EF4((v56 > 1), v57 + 1, 1);
          v47 = v263;
        }

        ++v46;
        v47[2] = v57 + 1;
        v58 = &v47[2 * v57];
        v58[4] = v53;
        v58[5] = v55;
        a3 = v42;
      }

      while (v45 != v46);
      v38 = v256;
      v41 = v247;
      LOBYTE(v39) = v246;
      v43 = v230;
    }

    v16 = Array.description.getter();
    v60 = v59;

    v61 = sub_10000668C(v16, v60, &aBlock);

    *(v43 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v38, v39, "Determine useReplaceInsteadOfAdd {identifier: %s, deliveredNotifications: %s}", v43, 0x16u);
    swift_arrayDestroy();

    a2 = v254;
  }

  else
  {
  }

  v247 = a9;
  v246 = a10;
  if (v41)
  {
    a8 = _CocoaArrayWrapper.endIndex.getter();
    if (a8)
    {
      goto LABEL_19;
    }

LABEL_100:

    v204 = Logger.logObject.getter();
    v205 = static os_log_type_t.default.getter();

    v206 = os_log_type_enabled(v204, v205);
    v81 = v250;
    if (v206)
    {
      v207 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      aBlock = v208;
      *v207 = 136446210;
      *(v207 + 4) = sub_10000668C(v255, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v204, v205, "Strategy: no existing notification {identifier: %{public}s, useReplaceInsteadOfAdd: false}", v207, 0xCu);
      sub_10000607C(v208);
    }

    v263 = sub_1005269F4();
    v209 = v249;

    sub_100378434(&aBlock, v248, v209);

    sub_100528F7C(v263);

    v165 = a11;
    if ((a11 & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_103;
  }

  a8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a8)
  {
    goto LABEL_100;
  }

LABEL_19:
  v62 = 0;
  v63 = a3 & 0xC000000000000001;
  v64 = a3 & 0xFFFFFFFFFFFFFF8;
  while (v63)
  {
    v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v66 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_32;
    }

LABEL_23:
    v256 = v65;
    v67 = [v65 request];
    v68 = [v67 identifier];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v70;

    v71 = v69;
    a2 = v254;
    if (v71 == v255 && v16 == v254)
    {
      goto LABEL_33;
    }

    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v73)
    {
      goto LABEL_34;
    }

    ++v62;
    a3 = v42;
    if (v66 == a8)
    {
      goto LABEL_100;
    }
  }

  if (v62 >= *(v64 + 16))
  {
    __break(1u);
    goto LABEL_98;
  }

  v65 = *(a3 + 8 * v62 + 32);
  v66 = v62 + 1;
  if (!__OFADD__(v62, 1))
  {
    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
LABEL_33:

LABEL_34:
  v74 = v256;
  v75 = [v256 request];
  v76 = [v75 content];

  [v76 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000060C8(0, &qword_10094BCC8, UNMutableNotificationContent_ptr);
  if (!swift_dynamicCast())
  {
    v96 = v74;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138412290;
      v101 = [v96 request];
      v102 = [v101 content];

      *(v99 + 4) = v102;
      *v100 = v102;
      _os_log_impl(&_mh_execute_header, v97, v98, "Unable to get UNMutableNotificationContent from UNNotificationContent {notification: %@}", v99, 0xCu);
      sub_1000050A4(v100, &unk_100938E70, &unk_100797230);
    }

    if (v252)
    {
      v252(0);
    }

    goto LABEL_111;
  }

  v77 = v263;
  v78 = sub_1005269F4();
  v79 = v248;
  v80 = v249;
  LODWORD(v230) = sub_100240BDC(v248, v249, v78);
  v81 = v250;
  v82 = sub_1005269F4();
  v83 = sub_1007255AC(v78, v82);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v79;
  *(inited + 40) = v80;

  v85 = sub_1001A5660(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v86 = sub_1007255AC(v85, v83);
  v87 = [v81 title];
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = [v77 title];
  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;

  v229 = v77;
  if (v88 != v92 || v90 != v94)
  {
    v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v254;
    v95 = v243;
    if (v103)
    {
      goto LABEL_43;
    }

    goto LABEL_62;
  }

  v95 = v243;
LABEL_43:
  v104 = [v81 subtitle];
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;

  v108 = [v77 subtitle];
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  if (v105 != v109 || v107 != v111)
  {
    v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v254;
    if (v112)
    {
      goto LABEL_47;
    }

    goto LABEL_62;
  }

LABEL_47:
  v113 = [v81 body];
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v115;

  v117 = [v77 body];
  v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v119;

  if (v114 == v118 && v116 == v120)
  {

    goto LABEL_51;
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a2 = v254;
  if ((v121 & 1) == 0)
  {
LABEL_62:
    if (v230)
    {
      v140 = 1;
      goto LABEL_64;
    }

    goto LABEL_85;
  }

LABEL_51:
  v122 = [v81 date];
  if (v122)
  {
    v123 = v244;
    v124 = v122;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v125 = v123;
    v126 = 0;
    v127 = v245;
  }

  else
  {
    v126 = 1;
    v127 = v245;
    v125 = v244;
  }

  v128 = *(v127 + 56);
  v129 = 1;
  v128(v125, v126, 1, v95);
  v130 = [v77 date];
  v249 = v86;
  v131 = v241;
  if (v130)
  {
    v132 = v130;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v129 = 0;
  }

  v128(v131, v129, 1, v95);
  v133 = *(v239 + 48);
  v134 = v244;
  v135 = v242;
  sub_10012F78C(v244, v242);
  sub_10012F78C(v131, v135 + v133);
  v136 = *(v127 + 48);
  if (v136(v135, 1, v95) != 1)
  {
    v139 = v233;
    sub_10012F78C(v135, v233);
    if (v136(v135 + v133, 1, v95) == 1)
    {
      sub_1000050A4(v241, &unk_100938850, qword_100795AE0);
      v137 = v242;
      sub_1000050A4(v244, &unk_100938850, qword_100795AE0);
      (*(v245 + 8))(v139, v95);
      a2 = v254;
      v77 = v229;
      goto LABEL_61;
    }

    v172 = v245;
    v173 = v135 + v133;
    v174 = v231;
    (*(v245 + 32))(v231, v173, v95);
    sub_100054724(&qword_100938DB0, &type metadata accessor for Date);
    v175 = v135;
    v176 = dispatch thunk of static Equatable.== infix(_:_:)();
    v177 = *(v172 + 8);
    v177(v174, v95);
    sub_1000050A4(v241, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v244, &unk_100938850, qword_100795AE0);
    v177(v139, v95);
    sub_1000050A4(v175, &unk_100938850, qword_100795AE0);
    a2 = v254;
    v86 = v249;
    v77 = v229;
    if (v176)
    {
      goto LABEL_79;
    }

    goto LABEL_62;
  }

  sub_1000050A4(v131, &unk_100938850, qword_100795AE0);
  v137 = v242;
  sub_1000050A4(v134, &unk_100938850, qword_100795AE0);
  v138 = v136(v137 + v133, 1, v95);
  a2 = v254;
  v77 = v229;
  if (v138 != 1)
  {
LABEL_61:
    sub_1000050A4(v137, &qword_100938C18, &qword_1007957A0);
    v86 = v249;
    goto LABEL_62;
  }

  sub_1000050A4(v137, &unk_100938850, qword_100795AE0);
  v86 = v249;
LABEL_79:
  v178 = [v81 categoryIdentifier];
  v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v181 = v180;

  v182 = [v77 categoryIdentifier];
  v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v185 = v184;

  if (v179 != v183 || v181 != v185)
  {
    v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v254;
    if ((v230 & 1) == 0)
    {
      goto LABEL_85;
    }

    v140 = v186 ^ 1;
LABEL_64:
    v141 = v240;
    UNNotificationContent.lastRecurringFireDate.getter();

    v142 = v245;
    v143 = *(v245 + 48);
    if (v143(v141, 1, v95) == 1)
    {
      sub_1000050A4(v141, &unk_100938850, qword_100795AE0);
      v96 = v229;
      if (v140)
      {
LABEL_66:

        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          aBlock = v147;
          *v146 = 136446210;
          *(v146 + 4) = sub_10000668C(v255, a2, &aBlock);
          _os_log_impl(&_mh_execute_header, v144, v145, "Strategy: alreadyRetained && contentChanged {identifier: %{public}s, useReplaceInsteadOfAdd: true}", v146, 0xCu);
          sub_10000607C(v147);
        }

        v148 = v256;
        sub_100528F7C(v86);

        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          aBlock = v152;
          *v151 = 136446210;
          *(v151 + 4) = sub_10000668C(v255, a2, &aBlock);
          _os_log_impl(&_mh_execute_header, v149, v150, "Issuing: replaceContentForRequest() {identifier: %{public}s}", v151, 0xCu);
          sub_10000607C(v152);
        }

        v96 = String._bridgeToObjectiveC()();
        v166 = swift_allocObject();
        v167 = v247;
        v168 = v251;
        v169 = v252;
        v166[2] = v247;
        v166[3] = v169;
        v166[4] = v168;
        v261 = sub_10052DAAC;
        v262 = v166;
        aBlock = _NSConcreteStackBlock;
        v258 = 1107296256;
        v259 = sub_100042968;
        v260 = &unk_1008F5EE0;
        v170 = _Block_copy(&aBlock);
        v171 = v167;
        sub_10014D92C(v169);

        [v246 replaceContentForRequestWithIdentifier:v96 replacementContent:v81 completionHandler:v170];
        goto LABEL_110;
      }
    }

    else
    {
      LODWORD(v248) = v140;
      v249 = v86;
      v153 = v238;
      v154 = *(v142 + 32);
      v154(v238, v141, v95);
      v155 = v237;
      UNNotificationContent.lastRecurringFireDate.getter();
      if (v143(v155, 1, v95) == 1)
      {
        (*(v142 + 8))(v153, v95);
        sub_1000050A4(v155, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v156 = v232;
        v154(v232, v155, v95);
        if (static Date.> infix(_:_:)())
        {
          a2 = v254;

          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.default.getter();

          v159 = os_log_type_enabled(v157, v158);
          v160 = v249;
          v161 = v229;
          if (v159)
          {
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            aBlock = v163;
            *v162 = 136446210;
            *(v162 + 4) = sub_10000668C(v255, a2, &aBlock);
            _os_log_impl(&_mh_execute_header, v157, v158, "Strategy: alreadyRetained && recurring reminder {identifier: %{public}s, useReplaceInsteadOfAdd: false}", v162, 0xCu);
            sub_10000607C(v163);

            v156 = v232;
          }

          sub_100528F7C(v160);

          v164 = *(v245 + 8);
          v164(v156, v95);
          v164(v238, v95);
          v165 = a11;
          if ((a11 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_103;
        }

        v193 = *(v245 + 8);
        v193(v156, v95);
        v193(v153, v95);
      }

      a2 = v254;
      v86 = v249;
      v96 = v229;
      if (v248)
      {
        goto LABEL_66;
      }
    }

    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      aBlock = v197;
      *v196 = 136446210;
      *(v196 + 4) = sub_10000668C(v255, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v194, v195, "Strategy: alreadyRetained && !contentChanged, nothing to do {identifier: %{public}s}", v196, 0xCu);
      sub_10000607C(v197);
    }

    v198 = *&v247[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    v199 = v234;
    *v234 = v198;
    v200 = v235;
    v201 = v236;
    (*(v235 + 104))(v199, enum case for DispatchPredicate.onQueue(_:), v236);
    v202 = v198;
    LOBYTE(v198) = _dispatchPreconditionTest(_:)();
    (*(v200 + 8))(v199, v201);
    if (v198)
    {
      v203 = v256;
      if (v252)
      {
        v252(0);
      }

      goto LABEL_111;
    }

LABEL_114:
    __break(1u);
    return;
  }

  a2 = v254;
  if (v230)
  {
    v140 = 0;
    goto LABEL_64;
  }

LABEL_85:

  v187 = Logger.logObject.getter();
  v188 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    aBlock = v190;
    *v189 = 136446210;
    *(v189 + 4) = sub_10000668C(v255, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v187, v188, "Strategy: !alreadyRetained {identifier: %{public}s, useReplaceInsteadOfAdd: false}", v189, 0xCu);
    sub_10000607C(v190);
  }

  v191 = v256;
  sub_100528F7C(v86);

  v165 = a11;
  if ((a11 & 1) == 0)
  {
LABEL_88:
    v192 = 15;
    goto LABEL_104;
  }

LABEL_103:
  [v81 setSound:{0, v229}];
  v192 = 6;
LABEL_104:
  v210 = v255;
  v211 = String._bridgeToObjectiveC()();
  v96 = [objc_opt_self() requestWithIdentifier:v211 content:v81 trigger:0 destinations:v192];

  v212 = v81;
  v213 = Logger.logObject.getter();
  v214 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v213, v214))
  {
    v215 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v215 = 136446722;
    *(v215 + 4) = sub_10000668C(v210, a2, &aBlock);
    *(v215 + 12) = 2082;
    if (v165)
    {
      v216 = 89;
    }

    else
    {
      v216 = 78;
    }

    v217 = sub_10000668C(v216, 0xE100000000000000, &aBlock);

    *(v215 + 14) = v217;
    *(v215 + 22) = 2080;
    v218 = [v212 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v219 = Dictionary.description.getter();
    v221 = v220;

    v222 = sub_10000668C(v219, v221, &aBlock);

    *(v215 + 24) = v222;
    _os_log_impl(&_mh_execute_header, v213, v214, "Issuing: notificationCenter.add(request) {identifier: %{public}s, skipBanner: %{public}s, userInfo: %s}", v215, 0x20u);
    swift_arrayDestroy();
  }

  v223 = v246;
  v224 = swift_allocObject();
  v225 = v247;
  v226 = v251;
  v227 = v252;
  v224[2] = v247;
  v224[3] = v227;
  v224[4] = v226;
  v261 = sub_10052DA68;
  v262 = v224;
  aBlock = _NSConcreteStackBlock;
  v258 = 1107296256;
  v259 = sub_100042968;
  v260 = &unk_1008F5E90;
  v170 = _Block_copy(&aBlock);
  v228 = v225;
  sub_10014D92C(v227);

  [v223 addNotificationRequest:v96 withCompletionHandler:v170];
LABEL_110:
  _Block_release(v170);
LABEL_111:
}

void sub_100528F7C(uint64_t a1)
{
  v2 = v1;
  *&v14 = 0xD000000000000025;
  *(&v14 + 1) = 0x80000001007FC090;
  AnyHashable.init<A>(_:)();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1003689CC(*(a1 + 16), 0);
    v6 = sub_1002791DC(&v14, v5 + 4, v4, a1);

    sub_10001B860();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v7 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  v15 = v7;
  *&v14 = v5;
  v8 = [v2 userInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = v9;
  if (v7)
  {
    sub_100005EE0(&v14, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C7E48(v12, v16, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_1000050A4(&v14, &qword_100939ED0, &qword_100791B10);
    sub_1003690E0(v16, v12);
    sub_1000050A4(v12, &qword_100939ED0, &qword_100791B10);
  }

  sub_10001B2CC(v16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 setUserInfo:isa];
}

uint64_t sub_1005291A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v27);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);
  swift_errorRetain();
  v22 = a2;
  sub_10014D92C(a3);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v15, v12);
  (*(v16 + 8))(v19, v27);
}

uint64_t sub_100529468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, const char *a5)
{
  v30 = a5;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094BBD0);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v27 = a2;
    v29 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    v28 = a4;
    if (a1)
    {
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v22 = sub_10000668C(v19, v21, &v31);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, v30, v17, 0xCu);
    sub_10000607C(v18);

    a3 = v29;
    a2 = v27;
  }

  else
  {
  }

  v23 = *(a2 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v13 = v23;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v23)
  {
    if (a3)
    {
      return a3(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RDUserNotificationCenter.releaseNotification(identifier:reference:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v6[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v21 = swift_allocObject();
    v21[2] = v6;
    v21[3] = a5;
    v21[4] = a6;
    v21[5] = a1;
    v21[6] = a2;
    v21[7] = a3;
    v21[8] = v27;
    v22 = *&v6[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter];
    v23 = swift_allocObject();
    v23[2] = v6;
    v23[3] = sub_100529CE4;
    v23[4] = v21;
    aBlock[4] = sub_100342BD4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004CB24C;
    aBlock[3] = &unk_1008F5B98;
    v24 = _Block_copy(aBlock);
    v25 = v6;
    sub_10014D92C(a5);

    [v22 getNotificationSettingsWithCompletionHandler:v24];
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100529A98(void *a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a5;
    v21[4] = a6;
    v21[5] = a3;
    v21[6] = a4;
    v21[7] = a7;
    v21[8] = v28;
    v21[9] = a1;
    aBlock[4] = sub_10052DCD0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052602C;
    aBlock[3] = &unk_1008F61D8;
    v22 = _Block_copy(aBlock);
    v23 = a1;
    v24 = a2;

    sub_10014D92C(a3);

    [v23 getDeliveredNotificationsWithCompletionHandler:v22];
    _Block_release(v22);
  }

  else
  {
    v25 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    *v20 = v25;
    (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
    v26 = v25;
    LOBYTE(v25) = _dispatchPreconditionTest(_:)();
    (*(v16 + 8))(v20, v15);
    if (v25)
    {
      if (a3)
      {
        a3(0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100529CF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v28 = a7;
  v29 = a8;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v30 - 8);
  v15 = *(v34 + 64);
  __chkstk_darwin(v30);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  v18 = *(v31 + 64);
  __chkstk_darwin(v33);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a2;
  v21[6] = a5;
  v21[7] = a6;
  v22 = v29;
  v21[8] = v28;
  v21[9] = v22;
  v21[10] = a9;
  aBlock[4] = sub_10052DD04;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6228;
  v23 = _Block_copy(aBlock);

  v24 = a2;
  sub_10014D92C(a5);

  v25 = a9;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v26 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v34 + 8))(v17, v26);
  (*(v31 + 8))(v20, v33);
}

void sub_10052A008(unint64_t a1, uint64_t a2, void *a3, char *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v83 = a7;
  v85 = a6;
  v90 = a4;
  v92 = a2;
  v15 = type metadata accessor for DispatchPredicate();
  v87 = *(v15 - 8);
  v88 = v15;
  v16 = *(v87 + 64);
  v17 = __chkstk_darwin(v15);
  v86 = (&v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = a5;
  v84 = a8;
  if (a1 >> 62)
  {
LABEL_43:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_44:
    v78 = *&v90[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    v9 = v86;
    v79 = v87;
    *v86 = v78;
    v80 = v88;
    (*(v79 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v88, v17);
    v81 = v78;
    v32 = _dispatchPreconditionTest(_:)();
    (*(v79 + 8))(v9, v80);
    if (v32)
    {
      if (v89)
      {
        v89(0);
      }

      return;
    }

    __break(1u);
LABEL_49:
    swift_once();
LABEL_20:
    v33 = type metadata accessor for Logger();
    v34 = sub_100006654(v33, qword_10094BBD0);
    v35 = v32;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock[0] = v83;
      *v38 = 136446466;
      *(v38 + 4) = sub_10000668C(v92, v10, aBlock);
      *(v38 + 12) = 2080;
      v39 = [v35 userInfo];
      v91 = v35;
      v84 = v34;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = Dictionary.description.getter();
      v42 = v41;

      v43 = v40;
      a3 = v9;
      v44 = sub_10000668C(v43, v42, aBlock);
      v35 = v91;

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "releaseNotification: {identifier: %{public}s, userInfo = %s}", v38, 0x16u);
      swift_arrayDestroy();
    }

    v45 = sub_1005269F4();
    v46 = *(v45 + 16);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    if (v46)
    {
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v50 = 136446210;
        v52 = v92;
        *(v50 + 4) = sub_10000668C(v92, v10, aBlock);
        _os_log_impl(&_mh_execute_header, v47, v48, "Issuing: replaceContentForRequest {identifier: %{public}s}", v50, 0xCu);
        sub_10000607C(v51);
      }

      else
      {

        v52 = v92;
      }

      v65 = String._bridgeToObjectiveC()();
      v66 = swift_allocObject();
      v67 = v90;
      v66[2] = v90;
      v66[3] = v52;
      v68 = v89;
      v66[4] = v10;
      v66[5] = v68;
      v66[6] = v85;
      aBlock[4] = sub_10052DD3C;
      aBlock[5] = v66;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008F6278;
      v69 = _Block_copy(aBlock);

      v70 = v67;
      sub_10014D92C(v68);

      [v82 replaceContentForRequestWithIdentifier:v65 replacementContent:v35 completionHandler:v69];
      _Block_release(v69);

      return;
    }

    if (v49)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136446210;
      v64 = v92;
      *(v62 + 4) = sub_10000668C(v92, v10, aBlock);
      _os_log_impl(&_mh_execute_header, v47, v48, "Issuing: removeDeliveredNotifications since retain count is zero {identifier: %{public}s}", v62, 0xCu);
      sub_10000607C(v63);
    }

    else
    {

      v64 = v92;
    }

    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_100791300;
    *(v71 + 32) = v64;
    *(v71 + 40) = v10;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v82 removeDeliveredNotificationsWithIdentifiers:isa];

    v73 = *&v90[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
    v75 = v86;
    v74 = v87;
    *v86 = v73;
    v76 = v88;
    (*(v74 + 104))(v75, enum case for DispatchPredicate.onQueue(_:), v88);
    v77 = v73;
    LOBYTE(v73) = _dispatchPreconditionTest(_:)();
    (*(v74 + 8))(v75, v76);
    if (v73)
    {
      if (v89)
      {
        v89(0);
      }

      return;
    }

LABEL_51:
    __break(1u);
    return;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_44;
  }

LABEL_3:
  v20 = 0;
  v82 = a9;
  v91 = a1 & 0xC000000000000001;
  while (v91)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v9 = v21;
    v23 = [v21 request];
    v10 = a3;
    v24 = [v23 identifier];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == v92 && v27 == v10)
    {
      goto LABEL_17;
    }

    a3 = v10;
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_18;
    }

    ++v20;
    if (v22 == v19)
    {
      goto LABEL_44;
    }
  }

  if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_43;
  }

  v21 = *(a1 + 8 * v20 + 32);
  v22 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  a3 = v9;
  v30 = [v9 request];
  v31 = [v30 content];

  [v31 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000060C8(0, &qword_10094BCC8, UNMutableNotificationContent_ptr);
  if (swift_dynamicCast())
  {
    v32 = aBlock[6];
    aBlock[0] = sub_1005269F4();
    sub_10019EC58(v83, v84);

    sub_100528F7C(aBlock[0]);

    if (qword_1009363D0 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_20;
  }

  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100006654(v53, qword_10094BBD0);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Unable to create UNMutableNotificationContent from UNNotificationContent", v56, 2u);
  }

  v57 = *&v90[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v59 = v86;
  v58 = v87;
  *v86 = v57;
  v60 = v88;
  (*(v58 + 104))(v59, enum case for DispatchPredicate.onQueue(_:), v88);
  v61 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  (*(v58 + 8))(v59, v60);
  if ((v57 & 1) == 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v89)
  {
    v89(0);
  }
}

uint64_t sub_10052AA54(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v25);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&a2[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue];
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a5;
  v20[7] = a6;
  aBlock[4] = sub_10052DD6C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F62C8;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  v22 = a2;
  sub_10014D92C(a5);
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);
}

uint64_t sub_10052AD38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v29 = a1;
  v30 = a6;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094BBD0);

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v27 = a4;
    v28 = a5;
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_10000668C(v29, a2, &v31);
    *(v18 + 12) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v22 = sub_10000668C(v19, v21, &v31);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "releaseNotification: replaced content {identifier: %{public}s, error: %s}", v18, 0x16u);
    swift_arrayDestroy();

    a4 = v27;
    a5 = v28;
  }

  else
  {
  }

  v23 = *(a4 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue);
  *v14 = v23;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v23)
  {
    if (a5)
    {
      return a5(a3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}